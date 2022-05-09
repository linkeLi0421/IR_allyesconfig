; ModuleID = '/llk/IR_all_yes/drivers/media/usb/em28xx/em28xx-video.c_pt.bc'
source_filename = "../drivers/media/usb/em28xx/em28xx-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.em28xx_ops = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.em28xx_board = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }
%struct.em28xx_input = type { i32, i32, i32, i32, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.em28xx_fmt = type { i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.em28xx = type { %struct.kref, ptr, ptr, %struct.em28xx_audio, ptr, i32, i32, i32, i8, i32, i32, [32 x i8], %struct.em28xx_board, i32, i32, %struct.list_head, i32, %struct.em28xx_audio_mode, i32, [2 x %struct.i2c_adapter], [2 x %struct.i2c_client], [2 x %struct.em28xx_i2c_bus], i8, i32, i32, %struct.rt_mutex, i32, i32, i32, [4 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.mutex, %struct.mutex, i32, ptr, i16, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_usb_ctl, %struct.spinlock, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i8, i32, i32, i32, i8, [80 x i8], ptr, ptr, ptr, ptr, ptr, i32, %struct.delayed_work, [5 x i8], [5 x i8], i8, i16, [30 x i8], ptr, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], ptr, i32 }
%struct.em28xx_audio = type { [50 x i8], i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.work_struct, %struct.atomic_t }
%struct.em28xx_audio_mode = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.em28xx_i2c_bus = type { ptr, i32, i32 }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.em28xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head }
%struct.em28xx_usb_ctl = type { %struct.em28xx_usb_bufs, %struct.em28xx_usb_bufs, ptr, ptr, ptr }
%struct.em28xx_usb_bufs = type { i32, i32, i32, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.em28xx_v4l2 = type { %struct.kref, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i64, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.media_pad, %struct.media_pad, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.em28xx_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32, i32, i32, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.91, i32 }
%union.anon.91 = type { i32 }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.93, %union.anon.94, i32, ptr, i32, %struct.anon.95, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { ptr }
%struct.anon.95 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_dbg_match = type { i32, %union.anon.92 }
%union.anon.92 = type { i32, [28 x i8] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_chip_info = type { %struct.v4l2_dbg_match, [32 x i8], i32, [32 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@__param_str_isoc_debug = internal constant [22 x i8] c"em28xx_v4l.isoc_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@isoc_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_isoc_debug = internal constant %struct.kernel_param { ptr @__param_str_isoc_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @isoc_debug } }, section "__param", align 4
@__UNIQUE_ID_isoc_debugtype303 = internal constant [35 x i8] c"em28xx_v4l.parmtype=isoc_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc_debug304 = internal constant [66 x i8] c"em28xx_v4l.parm=isoc_debug:enable debug messages [isoc transfers]\00", section ".modinfo", align 1
@__param_str_disable_vbi = internal constant [23 x i8] c"em28xx_v4l.disable_vbi\00", align 1
@disable_vbi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_vbi = internal constant %struct.kernel_param { ptr @__param_str_disable_vbi, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @disable_vbi } }, section "__param", align 4
@__UNIQUE_ID_disable_vbitype305 = internal constant [36 x i8] c"em28xx_v4l.parmtype=disable_vbi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_vbi306 = internal constant [48 x i8] c"em28xx_v4l.parm=disable_vbi:disable vbi support\00", section ".modinfo", align 1
@__param_str_alt = internal constant [15 x i8] c"em28xx_v4l.alt\00", align 1
@alt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_alt = internal constant %struct.kernel_param { ptr @__param_str_alt, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @alt } }, section "__param", align 4
@__UNIQUE_ID_alttype307 = internal constant [28 x i8] c"em28xx_v4l.parmtype=alt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_alt308 = internal constant [64 x i8] c"em28xx_v4l.parm=alt:alternate setting to use for video endpoint\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [182 x i8] c"em28xx_v4l.author=Ludovico Cavedon <cavedon@sssup.it>, Markus Rechberger <mrechberger@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sascha Sommer <saschasommer@freenet.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [67 x i8] c"em28xx_v4l.description=Empia em28xx device driver - v4l2 interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [52 x i8] c"em28xx_v4l.file=drivers/media/usb/em28xx/em28xx-v4l\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [26 x i8] c"em28xx_v4l.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version313 = internal constant [25 x i8] c"em28xx_v4l.version=0.2.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"em28xx_v4l\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.2.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_video_nr = internal constant [20 x i8] c"em28xx_v4l.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype314 = internal constant [42 x i8] c"em28xx_v4l.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__param_str_vbi_nr = internal constant [18 x i8] c"em28xx_v4l.vbi_nr\00", align 1
@__param_arr_vbi_nr = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @vbi_nr }, align 4
@__param_vbi_nr = internal constant %struct.kernel_param { ptr @__param_str_vbi_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vbi_nr } }, section "__param", align 4
@__UNIQUE_ID_vbi_nrtype315 = internal constant [40 x i8] c"em28xx_v4l.parmtype=vbi_nr:array of int\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [20 x i8] c"em28xx_v4l.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype316 = internal constant [42 x i8] c"em28xx_v4l.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr317 = internal constant [46 x i8] c"em28xx_v4l.parm=video_nr:video device numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_nr318 = internal constant [42 x i8] c"em28xx_v4l.parm=vbi_nr:vbi device numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr319 = internal constant [46 x i8] c"em28xx_v4l.parm=radio_nr:radio device numbers\00", section ".modinfo", align 1
@__param_str_video_debug = internal constant [23 x i8] c"em28xx_v4l.video_debug\00", align 1
@video_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_video_debug = internal constant %struct.kernel_param { ptr @__param_str_video_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @video_debug } }, section "__param", align 4
@__UNIQUE_ID_video_debugtype320 = internal constant [36 x i8] c"em28xx_v4l.parmtype=video_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_debug321 = internal constant [58 x i8] c"em28xx_v4l.parm=video_debug:enable debug messages [video]\00", section ".modinfo", align 1
@em28xx_start_analog_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1087, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"video: %s: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"em28xx_start_analog_streaming\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/em28xx/em28xx-video.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em28xx_start_analog_streaming._entry_ptr = internal global ptr @em28xx_start_analog_streaming._entry, section ".printk_index", align 4
@em28xx_stop_vbi_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.8, ptr @.str.5, i32 1189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"em28xx_stop_vbi_streaming\00", [38 x i8] zeroinitializer }, align 32
@em28xx_stop_vbi_streaming._entry_ptr = internal global ptr @em28xx_stop_vbi_streaming._entry, section ".printk_index", align 4
@v4l2_ops = internal global { %struct.em28xx_ops, [32 x i8] } { %struct.em28xx_ops { %struct.list_head zeroinitializer, ptr @.str.55, i32 64, ptr @em28xx_v4l2_init, ptr @em28xx_v4l2_fini, ptr @em28xx_v4l2_suspend, ptr @em28xx_v4l2_resume }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_em28xx_v4l__322_2935_em28xx_video_register6 = internal global ptr @em28xx_video_register, section ".initcall6.init", align 4
@__exitcall_em28xx_video_unregister = internal global ptr @em28xx_video_unregister, section ".exitcall.exit", align 4
@video_nr = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@vbi_nr = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@radio_nr = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@res_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 876, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"video: %s: res: get %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"res_get\00", [24 x i8] zeroinitializer }, align 32
@res_get._entry_ptr = internal global ptr @res_get._entry, section ".printk_index", align 4
@em28xx_set_alternate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 372, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"video: %s: alternate forced to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_set_alternate\00", [43 x i8] zeroinitializer }, align 32
@em28xx_set_alternate._entry_ptr = internal global ptr @em28xx_set_alternate._entry, section ".printk_index", align 4
@em28xx_set_alternate._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"video: %s: minimum isoc packet size: %u (alt=%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_set_alternate._entry_ptr.15 = internal global ptr @em28xx_set_alternate._entry.13, section ".printk_index", align 4
@em28xx_set_alternate._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.5, i32 419, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"video: %s: setting alternate %d with wMaxPacketSize=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@em28xx_set_alternate._entry_ptr.18 = internal global ptr @em28xx_set_alternate._entry.16, section ".printk_index", align 4
@em28xx_set_alternate._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.5, i32 424, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cannot change alternate number to %d (error=%i)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@em28xx_set_alternate._entry_ptr.22 = internal global ptr @em28xx_set_alternate._entry.19, section ".printk_index", align 4
@em28xx_boards = external dso_local local_unnamed_addr constant [0 x %struct.em28xx_board], align 4
@em28xx_urb_data_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 826, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"isoc: %s: packet bigger than packet size\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_urb_data_copy\00", [43 x i8] zeroinitializer }, align 32
@em28xx_urb_data_copy._entry_ptr = internal global ptr @em28xx_urb_data_copy._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 587, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"isoc: %s: URB status %d [%s].\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@print_err_status._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 590, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"isoc: %s: URB packet %d, status %d [%s].\0A\00", [54 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.38 = internal global ptr @print_err_status._entry.36, section ".printk_index", align 4
@finish_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 440, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"isoc: %s: [%p/%d] wakeup\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"finish_buffer\00", [18 x i8] zeroinitializer }, align 32
@finish_buffer._entry_ptr = internal global ptr @finish_buffer._entry, section ".printk_index", align 4
@get_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 603, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"isoc: %s: No active queue to serve\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_next_buf\00", [19 x i8] zeroinitializer }, align 32
@get_next_buf._entry_ptr = internal global ptr @get_next_buf._entry, section ".printk_index", align 4
@em28xx_copy_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 491, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"isoc: %s: Overflow of %zu bytes past buffer end (1)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_copy_video\00", [46 x i8] zeroinitializer }, align 32
@em28xx_copy_video._entry_ptr = internal global ptr @em28xx_copy_video._entry, section ".printk_index", align 4
@em28xx_copy_video._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 517, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"isoc: %s: Overflow of %zu bytes past buffer end(2)\0A\00", [44 x i8] zeroinitializer }, align 32
@em28xx_copy_video._entry_ptr.47 = internal global ptr @em28xx_copy_video._entry.45, section ".printk_index", align 4
@process_frame_data_em28xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 673, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"isoc: %s: VBI START HEADER !!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"process_frame_data_em28xx\00", [38 x i8] zeroinitializer }, align 32
@process_frame_data_em28xx._entry_ptr = internal global ptr @process_frame_data_em28xx._entry, section ".printk_index", align 4
@process_frame_data_em28xx._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 680, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"isoc: %s: VIDEO START HEADER !!!\0A\00", [62 x i8] zeroinitializer }, align 32
@process_frame_data_em28xx._entry_ptr.52 = internal global ptr @process_frame_data_em28xx._entry.50, section ".printk_index", align 4
@res_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 885, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"video: %s: res: put %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"res_free\00", [23 x i8] zeroinitializer }, align 32
@res_free._entry_ptr = internal global ptr @res_free._entry, section ".printk_index", align 4
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Em28xx v4l2 Extension\00", [42 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 2538, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Registering V4L2 extension\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"em28xx_v4l2_init\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr = internal global ptr @em28xx_v4l2_init._entry, section ".printk_index", align 4
@em28xx_v4l2_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.5, i32 2557, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Call to v4l2_device_register() failed!\0A\00", [56 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.61 = internal global ptr @em28xx_v4l2_init._entry.59, section ".printk_index", align 4
@em28xx_v4l2_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"em28xx_video:2562:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp3400\00", [24 x i8] zeroinitializer }, align 32
@msp3400_addrs = internal global { [3 x i16], [26 x i8] } { [3 x i16] [i16 64, i16 68, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa7115_auto\00", [19 x i8] zeroinitializer }, align 32
@saa711x_addrs = internal global { [5 x i16], [22 x i8] } { [5 x i16] [i16 37, i16 36, i16 33, i16 32, i16 -2], [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvp5150\00", [24 x i8] zeroinitializer }, align 32
@tvp5150_addrs = internal global { [3 x i16], [26 x i8] } { [3 x i16] [i16 92, i16 93, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvaudio\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.57, ptr @.str.5, i32 2643, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Error while setting audio - error [%d]!\0A\00", [51 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.70 = internal global ptr @em28xx_v4l2_init._entry.68, section ".printk_index", align 4
@em28xx_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @em28xx_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.57, ptr @.str.5, i32 2672, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: em28xx_write_reg - msp34xx(1) failed! error [%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.73 = internal global ptr @em28xx_v4l2_init._entry.71, section ".printk_index", align 4
@em28xx_v4l2_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.57, ptr @.str.5, i32 2681, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: em28xx_write_reg - msp34xx(2) failed! error [%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.76 = internal global ptr @em28xx_v4l2_init._entry.74, section ".printk_index", align 4
@format = internal global { [7 x %struct.em28xx_fmt], [44 x i8] } { [7 x %struct.em28xx_fmt] [%struct.em28xx_fmt { i32 1448695129, i32 16, i32 20 }, %struct.em28xx_fmt { i32 1346520914, i32 16, i32 4 }, %struct.em28xx_fmt { i32 1111967570, i32 8, i32 0 }, %struct.em28xx_fmt { i32 825770306, i32 8, i32 3 }, %struct.em28xx_fmt { i32 1195528775, i32 8, i32 1 }, %struct.em28xx_fmt { i32 1196573255, i32 8, i32 2 }, %struct.em28xx_fmt { i32 1345401140, i32 12, i32 24 }], [44 x i8] zeroinitializer }, align 32
@em28xx_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @em28xx_v4l_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&v4l2->vb_queue_lock\00", [43 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&v4l2->vb_vbi_queue_lock\00", [39 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.57, ptr @.str.5, i32 2796, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to register video device (error=%i).\0A\00", [51 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.83 = internal global ptr @em28xx_v4l2_init._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbi\00", [28 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.57, ptr @.str.5, i32 2830, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register vbi device\0A\00", [33 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.87 = internal global ptr @em28xx_v4l2_init._entry.85, section ".printk_index", align 4
@em28xx_radio_template = internal global { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @radio_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @radio_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.57, ptr @.str.5, i32 2843, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't register radio device\0A\00", [35 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.91 = internal global ptr @em28xx_v4l2_init._entry.89, section ".printk_index", align 4
@em28xx_v4l2_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.57, ptr @.str.5, i32 2848, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Registered radio device as %s\0A\00", [33 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.94 = internal global ptr @em28xx_v4l2_init._entry.92, section ".printk_index", align 4
@em28xx_v4l2_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.57, ptr @.str.5, i32 2858, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create media graph\0A\00", [34 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.97 = internal global ptr @em28xx_v4l2_init._entry.95, section ".printk_index", align 4
@em28xx_v4l2_init._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.57, ptr @.str.5, i32 2866, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"V4L2 video device registered as %s\0A\00", [60 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.100 = internal global ptr @em28xx_v4l2_init._entry.98, section ".printk_index", align 4
@em28xx_v4l2_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.57, ptr @.str.5, i32 2871, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"V4L2 VBI device registered as %s\0A\00", [62 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.103 = internal global ptr @em28xx_v4l2_init._entry.101, section ".printk_index", align 4
@em28xx_v4l2_init._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.57, ptr @.str.5, i32 2880, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"V4L2 extension successfully initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.106 = internal global ptr @em28xx_v4l2_init._entry.104, section ".printk_index", align 4
@em28xx_v4l2_init._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.57, ptr @.str.5, i32 2891, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"V4L2 device %s deregistered\0A\00", [35 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.109 = internal global ptr @em28xx_v4l2_init._entry.107, section ".printk_index", align 4
@em28xx_v4l2_init._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.57, ptr @.str.5, i32 2897, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.111 = internal global ptr @em28xx_v4l2_init._entry.110, section ".printk_index", align 4
@em28xx_v4l2_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.57, ptr @.str.5, i32 2903, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@em28xx_v4l2_init._entry_ptr.113 = internal global ptr @em28xx_v4l2_init._entry.112, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@em28xx_accumulator_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.5, i32 261, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"video: %s: em28xx Scale: (%d,%d)-(%d,%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"em28xx_accumulator_set\00", [41 x i8] zeroinitializer }, align 32
@em28xx_accumulator_set._entry_ptr = internal global ptr @em28xx_accumulator_set._entry, section ".printk_index", align 4
@em28xx_capture_area_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 280, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"video: %s: capture area set to (%d,%d): %dx%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"em28xx_capture_area_set\00", [40 x i8] zeroinitializer }, align 32
@em28xx_capture_area_set._entry_ptr = internal global ptr @em28xx_capture_area_set._entry, section ".printk_index", align 4
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@em28xx_v4l_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @em28xx_v4l2_open, ptr @em28xx_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr @vidioc_querystd, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enumaudio, ptr @vidioc_g_audio, ptr @vidioc_s_audio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr @vidioc_g_chip_info, ptr @vidioc_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@em28xx_v4l2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.5, i32 2158, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"video: %s: open dev=%s type=%s users=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"em28xx_v4l2_open\00", [47 x i8] zeroinitializer }, align 32
@em28xx_v4l2_open._entry_ptr = internal global ptr @em28xx_v4l2_open._entry, section ".printk_index", align 4
@v4l2_type_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@em28xx_v4l2_open._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.5, i32 2167, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: v4l2_fh_open() returned error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@em28xx_v4l2_open._entry_ptr.123 = internal global ptr @em28xx_v4l2_open._entry.121, section ".printk_index", align 4
@em28xx_v4l2_open._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.5, i32 2186, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"video: %s: video_open: setting radio device\0A\00", [51 x i8] zeroinitializer }, align 32
@em28xx_v4l2_open._entry_ptr.126 = internal global ptr @em28xx_v4l2_open._entry.124, section ".printk_index", align 4
@em28xx_v4l2_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.5, i32 2297, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"video: %s: users=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_v4l2_close\00", [46 x i8] zeroinitializer }, align 32
@em28xx_v4l2_close._entry_ptr = internal global ptr @em28xx_v4l2_close._entry, section ".printk_index", align 4
@em28xx_v4l2_close._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.5, i32 2315, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"video: %s: setting alternate 0\0A\00", [32 x i8] zeroinitializer }, align 32
@em28xx_v4l2_close._entry_ptr.131 = internal global ptr @em28xx_v4l2_close._entry.129, section ".printk_index", align 4
@em28xx_v4l2_close._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.5, i32 2320, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cannot change alternate number to 0 (error=%i)\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_v4l2_close._entry_ptr.134 = internal global ptr @em28xx_v4l2_close._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em28xx\00", [25 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.5, i32 1471, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"video: %s: Fourcc format (%08x) invalid. Using default (%08x).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@iname = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@__func__.vidioc_enumaudio = private unnamed_addr constant [17 x i8] c"vidioc_enumaudio\00", align 1
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Television alt\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Phone\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@em28xx_fill_audio_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.5, i32 1764, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"video: %s: %s: audio input index %d is '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"em28xx_fill_audio_input\00", [40 x i8] zeroinitializer }, align 32
@em28xx_fill_audio_input._entry_ptr = internal global ptr @em28xx_fill_audio_input._entry, section ".printk_index", align 4
@__func__.vidioc_g_audio = private unnamed_addr constant [15 x i8] c"vidioc_g_audio\00", align 1
@vidioc_s_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.5, i32 1827, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"video: %s: %s: set audio input to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_audio\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_audio._entry_ptr = internal global ptr @vidioc_s_audio._entry, section ".printk_index", align 4
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Tuner\00", [26 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@vidioc_enum_framesizes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.5, i32 2022, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"video: %s: Fourcc format (%08x) invalid.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_enum_framesizes\00", [41 x i8] zeroinitializer }, align 32
@vidioc_enum_framesizes._entry_ptr = internal global ptr @vidioc_enum_framesizes._entry, section ".printk_index", align 4
@radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr null, ptr @video_ioctl2, ptr null, ptr null, ptr @em28xx_v4l2_open, ptr @em28xx_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@radio_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radio_g_tuner, ptr @radio_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr @vidioc_g_chip_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@em28xx_v4l2_create_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.5, i32 982, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to initialize video media entity!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"em28xx_v4l2_create_entities\00", [36 x i8] zeroinitializer }, align 32
@em28xx_v4l2_create_entities._entry_ptr = internal global ptr @em28xx_v4l2_create_entities._entry, section ".printk_index", align 4
@em28xx_v4l2_create_entities._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.5, i32 990, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to initialize vbi media entity!\0A\00", [56 x i8] zeroinitializer }, align 32
@em28xx_v4l2_create_entities._entry_ptr.162 = internal global ptr @em28xx_v4l2_create_entities._entry.160, section ".printk_index", align 4
@em28xx_v4l2_create_entities._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.159, ptr @.str.5, i32 1024, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to initialize input pad[%d]!\0A\00", [59 x i8] zeroinitializer }, align 32
@em28xx_v4l2_create_entities._entry_ptr.165 = internal global ptr @em28xx_v4l2_create_entities._entry.163, section ".printk_index", align 4
@em28xx_v4l2_create_entities._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.159, ptr @.str.5, i32 1029, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input entity %d!\0A\00", [59 x i8] zeroinitializer }, align 32
@em28xx_v4l2_create_entities._entry_ptr.168 = internal global ptr @em28xx_v4l2_create_entities._entry.166, section ".printk_index", align 4
@em28xx_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @em28xx_start_analog_streaming, ptr @em28xx_stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@em28xx_vbi_qops = external dso_local constant %struct.vb2_ops, align 4
@em28xx_enable_analog_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.5, i32 952, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Couldn't change link %s->%s to %s. Error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"em28xx_enable_analog_tuner\00", [37 x i8] zeroinitializer }, align 32
@em28xx_enable_analog_tuner._entry_ptr = internal global ptr @em28xx_enable_analog_tuner._entry, section ".printk_index", align 4
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@em28xx_enable_analog_tuner._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.170, ptr @.str.5, i32 958, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"video: %s: link %s->%s was %s\0A\00", [33 x i8] zeroinitializer }, align 32
@em28xx_enable_analog_tuner._entry_ptr.175 = internal global ptr @em28xx_enable_analog_tuner._entry.173, section ".printk_index", align 4
@.str.176 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.5, i32 1065, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"video: %s: %s, field=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@buffer_prepare._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.5, i32 1071, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"video: %s: %s data will not fit into plane (%lu < %lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr.181 = internal global ptr @buffer_prepare._entry.179, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.182 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@em28xx_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.183, ptr @.str.5, i32 1154, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em28xx_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@em28xx_stop_streaming._entry_ptr = internal global ptr @em28xx_stop_streaming._entry, section ".printk_index", align 4
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.184, ptr @.str.5, i32 1227, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@em28xx_v4l2_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.5, i32 2221, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Closing video extension\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"em28xx_v4l2_fini\00", [47 x i8] zeroinitializer }, align 32
@em28xx_v4l2_fini._entry_ptr = internal global ptr @em28xx_v4l2_fini._entry, section ".printk_index", align 4
@em28xx_v4l2_fini._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.186, ptr @.str.5, i32 2233, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@em28xx_v4l2_fini._entry_ptr.188 = internal global ptr @em28xx_v4l2_fini._entry.187, section ".printk_index", align 4
@em28xx_v4l2_fini._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.186, ptr @.str.5, i32 2238, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@em28xx_v4l2_fini._entry_ptr.190 = internal global ptr @em28xx_v4l2_fini._entry.189, section ".printk_index", align 4
@em28xx_v4l2_fini._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.186, ptr @.str.5, i32 2243, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@em28xx_v4l2_fini._entry_ptr.192 = internal global ptr @em28xx_v4l2_fini._entry.191, section ".printk_index", align 4
@em28xx_v4l2_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.5, i32 2267, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Suspending video extension\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"em28xx_v4l2_suspend\00", [44 x i8] zeroinitializer }, align 32
@em28xx_v4l2_suspend._entry_ptr = internal global ptr @em28xx_v4l2_suspend._entry, section ".printk_index", align 4
@em28xx_v4l2_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.5, i32 2280, ptr @.str.58, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Resuming video extension\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"em28xx_v4l2_resume\00", [45 x i8] zeroinitializer }, align 32
@em28xx_v4l2_resume._entry_ptr = internal global ptr @em28xx_v4l2_resume._entry, section ".printk_index", align 4
@switch.table.em28xx_v4l2_open = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 4, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.vidioc_enumaudio = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], [32 x i8] zeroinitializer }, align 32
@switch.table.vidioc_g_audio = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.197 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.198 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 8, i64 34, i64 51, i64 136]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 9963781, i64 9963785]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.205 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963781, i64 9963785, i64 9963790, i64 9963791, i64 9963803]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 32, i64 48, i64 50, i64 64]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 32, i64 48, i64 50, i64 64]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"isoc_debug\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 50, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant [12 x i8] c"disable_vbi\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 54, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 58, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 77, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant [12 x i8] c"video_debug\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 98, i32 21 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1087, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1189, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [9 x i8] c"v4l2_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2916, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 87, i32 21 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"vbi_nr\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 88, i32 21 }
@___asan_gen_.269 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 89, i32 21 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 876, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 372, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 412, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 418, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 422, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 826, i32 5 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 558, i32 17 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 562, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 565, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 568, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 571, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 574, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 577, i32 12 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 580, i32 12 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 583, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 587, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 589, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 440, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 603, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 489, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 515, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 673, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 680, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 885, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2918, i32 10 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2538, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2556, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2562, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2580, i32 9 }
@___asan_gen_.449 = private unnamed_addr constant [14 x i8] c"msp3400_addrs\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2434, i32 23 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2585, i32 9 }
@___asan_gen_.455 = private unnamed_addr constant [14 x i8] c"saa711x_addrs\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2423, i32 23 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2590, i32 9 }
@___asan_gen_.461 = private unnamed_addr constant [14 x i8] c"tvp5150_addrs\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2428, i32 23 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2595, i32 9 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2606, i32 10 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2641, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [16 x i8] c"em28xx_ctrl_ops\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1381, i32 35 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2670, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2679, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 103, i32 26 }
@___asan_gen_.494 = private unnamed_addr constant [22 x i8] c"em28xx_video_template\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2387, i32 34 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2759, i32 61 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2760, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2761, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2795, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2803, i32 6 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2829, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant [22 x i8] c"em28xx_radio_template\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2416, i32 28 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2837, i32 6 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2842, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2846, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2857, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2864, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2869, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2879, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2889, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2895, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2901, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 260, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 277, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2453, i32 41 }
@___asan_gen_.602 = private unnamed_addr constant [16 x i8] c"em28xx_v4l_fops\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2333, i32 42 }
@___asan_gen_.605 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2343, i32 36 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2156, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2165, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2186, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2297, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2315, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2318, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1983, i32 23 }
@___asan_gen_.654 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 912, i32 31 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1470, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant [6 x i8] c"iname\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 964, i32 27 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 965, i32 29 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 966, i32 29 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 967, i32 29 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 968, i32 29 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1736, i32 20 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1739, i32 20 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1742, i32 20 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1745, i32 20 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1748, i32 20 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1751, i32 20 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1754, i32 20 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1763, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1826, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1840, i32 19 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1897, i32 23 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2021, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant [11 x i8] c"radio_fops\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2394, i32 42 }
@___asan_gen_.737 = private unnamed_addr constant [16 x i8] c"radio_ioctl_ops\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2401, i32 36 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 981, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 989, i32 4 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1023, i32 4 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1028, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant [18 x i8] c"em28xx_video_qops\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1236, i32 29 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 948, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 956, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1065, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1070, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1163, i32 7 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1154, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1227, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2221, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2232, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2237, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2242, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2267, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.858 = private constant [43 x i8] c"../drivers/media/usb/em28xx/em28xx-video.c\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2280, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant [30 x i8] c"switch.table.em28xx_v4l2_open\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [30 x i8] c"switch.table.vidioc_enumaudio\00", align 1
@___asan_gen_.862 = private unnamed_addr constant [28 x i8] c"switch.table.vidioc_g_audio\00", align 1
@llvm.compiler.used = appending global [309 x ptr] [ptr @__UNIQUE_ID_alt308, ptr @__UNIQUE_ID_alttype307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_disable_vbi306, ptr @__UNIQUE_ID_disable_vbitype305, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_isoc_debug304, ptr @__UNIQUE_ID_isoc_debugtype303, ptr @__UNIQUE_ID_license312, ptr @__UNIQUE_ID_radio_nr319, ptr @__UNIQUE_ID_radio_nrtype316, ptr @__UNIQUE_ID_vbi_nr318, ptr @__UNIQUE_ID_vbi_nrtype315, ptr @__UNIQUE_ID_version313, ptr @__UNIQUE_ID_video_debug321, ptr @__UNIQUE_ID_video_debugtype320, ptr @__UNIQUE_ID_video_nr317, ptr @__UNIQUE_ID_video_nrtype314, ptr @__exitcall_em28xx_video_unregister, ptr @__initcall__kmod_em28xx_v4l__322_2935_em28xx_video_register6, ptr @__modver_attr, ptr @__param_alt, ptr @__param_disable_vbi, ptr @__param_isoc_debug, ptr @__param_radio_nr, ptr @__param_vbi_nr, ptr @__param_video_debug, ptr @__param_video_nr, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry.179, ptr @buffer_prepare._entry_ptr, ptr @buffer_prepare._entry_ptr.181, ptr @buffer_queue._entry, ptr @buffer_queue._entry_ptr, ptr @em28xx_accumulator_set._entry, ptr @em28xx_accumulator_set._entry_ptr, ptr @em28xx_capture_area_set._entry, ptr @em28xx_capture_area_set._entry_ptr, ptr @em28xx_copy_video._entry, ptr @em28xx_copy_video._entry.45, ptr @em28xx_copy_video._entry_ptr, ptr @em28xx_copy_video._entry_ptr.47, ptr @em28xx_enable_analog_tuner._entry, ptr @em28xx_enable_analog_tuner._entry.173, ptr @em28xx_enable_analog_tuner._entry_ptr, ptr @em28xx_enable_analog_tuner._entry_ptr.175, ptr @em28xx_fill_audio_input._entry, ptr @em28xx_fill_audio_input._entry_ptr, ptr @em28xx_set_alternate._entry, ptr @em28xx_set_alternate._entry.13, ptr @em28xx_set_alternate._entry.16, ptr @em28xx_set_alternate._entry.19, ptr @em28xx_set_alternate._entry_ptr, ptr @em28xx_set_alternate._entry_ptr.15, ptr @em28xx_set_alternate._entry_ptr.18, ptr @em28xx_set_alternate._entry_ptr.22, ptr @em28xx_start_analog_streaming._entry, ptr @em28xx_start_analog_streaming._entry_ptr, ptr @em28xx_stop_streaming._entry, ptr @em28xx_stop_streaming._entry_ptr, ptr @em28xx_stop_vbi_streaming._entry, ptr @em28xx_stop_vbi_streaming._entry_ptr, ptr @em28xx_urb_data_copy._entry, ptr @em28xx_urb_data_copy._entry_ptr, ptr @em28xx_v4l2_close._entry, ptr @em28xx_v4l2_close._entry.129, ptr @em28xx_v4l2_close._entry.132, ptr @em28xx_v4l2_close._entry_ptr, ptr @em28xx_v4l2_close._entry_ptr.131, ptr @em28xx_v4l2_close._entry_ptr.134, ptr @em28xx_v4l2_create_entities._entry, ptr @em28xx_v4l2_create_entities._entry.160, ptr @em28xx_v4l2_create_entities._entry.163, ptr @em28xx_v4l2_create_entities._entry.166, ptr @em28xx_v4l2_create_entities._entry_ptr, ptr @em28xx_v4l2_create_entities._entry_ptr.162, ptr @em28xx_v4l2_create_entities._entry_ptr.165, ptr @em28xx_v4l2_create_entities._entry_ptr.168, ptr @em28xx_v4l2_fini._entry, ptr @em28xx_v4l2_fini._entry.187, ptr @em28xx_v4l2_fini._entry.189, ptr @em28xx_v4l2_fini._entry.191, ptr @em28xx_v4l2_fini._entry_ptr, ptr @em28xx_v4l2_fini._entry_ptr.188, ptr @em28xx_v4l2_fini._entry_ptr.190, ptr @em28xx_v4l2_fini._entry_ptr.192, ptr @em28xx_v4l2_init._entry, ptr @em28xx_v4l2_init._entry.101, ptr @em28xx_v4l2_init._entry.104, ptr @em28xx_v4l2_init._entry.107, ptr @em28xx_v4l2_init._entry.110, ptr @em28xx_v4l2_init._entry.112, ptr @em28xx_v4l2_init._entry.59, ptr @em28xx_v4l2_init._entry.68, ptr @em28xx_v4l2_init._entry.71, ptr @em28xx_v4l2_init._entry.74, ptr @em28xx_v4l2_init._entry.81, ptr @em28xx_v4l2_init._entry.85, ptr @em28xx_v4l2_init._entry.89, ptr @em28xx_v4l2_init._entry.92, ptr @em28xx_v4l2_init._entry.95, ptr @em28xx_v4l2_init._entry.98, ptr @em28xx_v4l2_init._entry_ptr, ptr @em28xx_v4l2_init._entry_ptr.100, ptr @em28xx_v4l2_init._entry_ptr.103, ptr @em28xx_v4l2_init._entry_ptr.106, ptr @em28xx_v4l2_init._entry_ptr.109, ptr @em28xx_v4l2_init._entry_ptr.111, ptr @em28xx_v4l2_init._entry_ptr.113, ptr @em28xx_v4l2_init._entry_ptr.61, ptr @em28xx_v4l2_init._entry_ptr.70, ptr @em28xx_v4l2_init._entry_ptr.73, ptr @em28xx_v4l2_init._entry_ptr.76, ptr @em28xx_v4l2_init._entry_ptr.83, ptr @em28xx_v4l2_init._entry_ptr.87, ptr @em28xx_v4l2_init._entry_ptr.91, ptr @em28xx_v4l2_init._entry_ptr.94, ptr @em28xx_v4l2_init._entry_ptr.97, ptr @em28xx_v4l2_open._entry, ptr @em28xx_v4l2_open._entry.121, ptr @em28xx_v4l2_open._entry.124, ptr @em28xx_v4l2_open._entry_ptr, ptr @em28xx_v4l2_open._entry_ptr.123, ptr @em28xx_v4l2_open._entry_ptr.126, ptr @em28xx_v4l2_resume._entry, ptr @em28xx_v4l2_resume._entry_ptr, ptr @em28xx_v4l2_suspend._entry, ptr @em28xx_v4l2_suspend._entry_ptr, ptr @em28xx_video_unregister, ptr @finish_buffer._entry, ptr @finish_buffer._entry_ptr, ptr @get_next_buf._entry, ptr @get_next_buf._entry_ptr, ptr @print_err_status._entry, ptr @print_err_status._entry.36, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.38, ptr @process_frame_data_em28xx._entry, ptr @process_frame_data_em28xx._entry.50, ptr @process_frame_data_em28xx._entry_ptr, ptr @process_frame_data_em28xx._entry_ptr.52, ptr @res_free._entry, ptr @res_free._entry_ptr, ptr @res_get._entry, ptr @res_get._entry_ptr, ptr @vidioc_enum_framesizes._entry, ptr @vidioc_enum_framesizes._entry_ptr, ptr @vidioc_s_audio._entry, ptr @vidioc_s_audio._entry_ptr, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @isoc_debug, ptr @disable_vbi, ptr @alt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @video_debug, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @v4l2_ops, ptr @video_nr, ptr @vbi_nr, ptr @radio_nr, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @em28xx_v4l2_init._key, ptr @.str.62, ptr @.str.63, ptr @msp3400_addrs, ptr @.str.64, ptr @saa711x_addrs, ptr @.str.65, ptr @tvp5150_addrs, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @em28xx_ctrl_ops, ptr @.str.72, ptr @.str.75, ptr @format, ptr @em28xx_video_template, ptr @.str.77, ptr @em28xx_v4l2_init.__key, ptr @.str.78, ptr @em28xx_v4l2_init.__key.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @em28xx_radio_template, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @em28xx_v4l_fops, ptr @video_ioctl_ops, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @iname, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @radio_fops, ptr @radio_ioctl_ops, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @em28xx_video_qops, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @switch.table.em28xx_v4l2_open, ptr @switch.table.vidioc_enumaudio, ptr @switch.table.vidioc_g_audio], section "llvm.metadata"
@0 = internal global [218 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isoc_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_vbi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_start_analog_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_stop_vbi_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_nr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_set_alternate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_set_alternate._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_set_alternate._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_set_alternate._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_urb_data_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @finish_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_copy_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_copy_video._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_frame_data_em28xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_frame_data_em28xx._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400_addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_addrs to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvp5150_addrs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_radio_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_accumulator_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_capture_area_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_open._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_open._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_close._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_close._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_fill_audio_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_framesizes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_create_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_create_entities._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_create_entities._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_create_entities._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_enable_analog_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_enable_analog_tuner._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_fini._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_fini._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_fini._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_v4l2_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.em28xx_v4l2_open to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_enumaudio to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_g_audio to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @em28xx_start_analog_streaming(ptr nocapture noundef readonly %vq, i32 %count) #1 align 64 {
entry:
  %f = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f) #12
  %4 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %7 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l21, align 4
  %field_count = getelementptr inbounds %struct.em28xx_v4l2, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %field_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %field_count, align 4
  %10 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vq, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end.i.i [
    i32 1, label %do.end5.get_resource.exit.i_crit_edge
    i32 4, label %sw.bb1.i.i
  ]

do.end5.get_resource.exit.i_crit_edge:            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_resource.exit.i

sw.bb1.i.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_resource.exit.i

do.end.i.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 858, i32 noundef 9, ptr noundef null) #12
  br label %get_resource.exit.i

get_resource.exit.i:                              ; preds = %do.end.i.i, %sw.bb1.i.i, %do.end5.get_resource.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %do.end.i.i ], [ 2, %sw.bb1.i.i ], [ %11, %do.end5.get_resource.exit.i_crit_edge ]
  %resources.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 37
  %13 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resources.i, align 8
  %and.i = and i32 %14, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %get_resource.exit.i.cleanup_crit_edge

get_resource.exit.i.cleanup_crit_edge:            ; preds = %get_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %get_resource.exit.i
  %or.i = or i32 %14, %retval.0.i.i
  %15 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %resources.i, align 8
  %16 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp eq i32 %16, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10_crit_edge, label %do.end.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf.i, align 4
  %dev5.i = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev5.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.i) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end.i, %if.end.i.if.end10_crit_edge
  %streaming_users = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 17
  %19 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %streaming_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then11, label %if.end10.if.end89_crit_edge

if.end10.if.end89_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then11:                                        ; preds = %if.end10
  %21 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v4l21, align 4
  %intf.i133 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %23 = ptrtoint ptr %intf.i133 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf.i133, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 -128
  %width.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %22, i32 0, i32 23
  %27 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width.i, align 8
  %mul.i = shl i32 %28, 1
  %add.i = add i32 %mul.i, 4
  %alt.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 52
  %29 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %alt.i, align 8
  %30 = load i32, ptr @alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp sgt i32 %30, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then11.if.end11.i_crit_edge

if.then11.if.end11.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then11
  %num_alt.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 55
  %31 = ptrtoint ptr %num_alt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_alt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp2.i = icmp slt i32 %30, %32
  br i1 %cmp2.i, label %do.body.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %33 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i134 = icmp eq i32 %33, 0
  br i1 %tobool.not.i134, label %do.body.i.do.end9.i_crit_edge, label %do.end.i135

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

do.end.i135:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev6.i = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev6.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 0) #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i135, %do.body.i.do.end9.i_crit_edge
  %34 = load i32, ptr @alt, align 4
  br label %set_alt.sink.split.i

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.then11.if.end11.i_crit_edge
  %analog_xfer_bulk.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 57
  %35 = ptrtoint ptr %analog_xfer_bulk.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %analog_xfer_bulk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool12.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end11.i.set_alt.i_crit_edge

if.end11.i.set_alt.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_alt.i

if.end14.i:                                       ; preds = %if.end11.i
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width.i, align 8
  %mul16.i = shl i32 %37, 1
  %height.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %22, i32 0, i32 24
  %38 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i, align 4
  %mul17.i = mul i32 %mul16.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 345600, i32 %mul17.i)
  %cmp18.i = icmp sgt i32 %mul17.i, 345600
  %mul20.i = zext i1 %cmp18.i to i32
  %spec.select.i = shl i32 %add.i, %mul20.i
  %num_alt22.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 55
  %40 = ptrtoint ptr %num_alt22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_alt22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp232.i = icmp sgt i32 %41, 0
  br i1 %cmp232.i, label %for.body.lr.ph.i, label %if.end14.i.set_alt.i_crit_edge

if.end14.i.set_alt.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_alt.i

for.body.lr.ph.i:                                 ; preds = %if.end14.i
  %alt_max_pkt_size_isoc.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 56
  %42 = ptrtoint ptr %alt_max_pkt_size_isoc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %alt_max_pkt_size_isoc.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %43, i32 %i.03.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %spec.select.i)
  %cmp24.not.i = icmp ult i32 %45, %spec.select.i
  br i1 %cmp24.not.i, label %if.else.i, label %for.body.i.set_alt.sink.split.i_crit_edge

for.body.i.set_alt.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_alt.sink.split.i

if.else.i:                                        ; preds = %for.body.i
  %46 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %alt.i, align 8
  %arrayidx31.i = getelementptr i32, ptr %43, i32 %47
  %48 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %49)
  %cmp32.i = icmp ugt i32 %45, %49
  br i1 %cmp32.i, label %if.then33.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.03.i, ptr %alt.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then33.i, %if.else.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %41
  br i1 %exitcond.not.i, label %for.inc.i.set_alt.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.set_alt.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_alt.i

set_alt.sink.split.i:                             ; preds = %for.body.i.set_alt.sink.split.i_crit_edge, %do.end9.i
  %i.03.lcssa.sink.i = phi i32 [ %34, %do.end9.i ], [ %i.03.i, %for.body.i.set_alt.sink.split.i_crit_edge ]
  %min_pkt_size.1.ph.i = phi i32 [ %add.i, %do.end9.i ], [ %spec.select.i, %for.body.i.set_alt.sink.split.i_crit_edge ]
  %51 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %i.03.lcssa.sink.i, ptr %alt.i, align 8
  br label %set_alt.i

set_alt.i:                                        ; preds = %set_alt.sink.split.i, %for.inc.i.set_alt.i_crit_edge, %if.end14.i.set_alt.i_crit_edge, %if.end11.i.set_alt.i_crit_edge
  %min_pkt_size.1.i = phi i32 [ %add.i, %if.end11.i.set_alt.i_crit_edge ], [ %spec.select.i, %if.end14.i.set_alt.i_crit_edge ], [ %min_pkt_size.1.ph.i, %set_alt.sink.split.i ], [ %spec.select.i, %for.inc.i.set_alt.i_crit_edge ]
  %analog_xfer_bulk37.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 57
  %52 = ptrtoint ptr %analog_xfer_bulk37.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load38.i = load i8, ptr %analog_xfer_bulk37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load38.i)
  %tobool41.not.i = icmp sgt i8 %bf.load38.i, -1
  br i1 %tobool41.not.i, label %do.body44.i, label %set_alt.i.do.body62.i_crit_edge

set_alt.i.do.body62.i_crit_edge:                  ; preds = %set_alt.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62.i

do.body44.i:                                      ; preds = %set_alt.i
  %53 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool45.not.i = icmp eq i32 %53, 0
  br i1 %tobool45.not.i, label %do.body44.i.do.end55.i_crit_edge, label %do.end49.i

do.body44.i.do.end55.i_crit_edge:                 ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55.i

do.end49.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %intf.i133 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %intf.i133, align 4
  %dev51.i = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %alt.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev51.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %min_pkt_size.1.i, i32 noundef %57) #15
  br label %do.end55.i

do.end55.i:                                       ; preds = %do.end49.i, %do.body44.i.do.end55.i_crit_edge
  %alt_max_pkt_size_isoc56.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 56
  %58 = ptrtoint ptr %alt_max_pkt_size_isoc56.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %alt_max_pkt_size_isoc56.i, align 8
  %60 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %alt.i, align 8
  %arrayidx58.i = getelementptr i32, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx58.i, align 4
  br label %do.body62.i

do.body62.i:                                      ; preds = %do.end55.i, %set_alt.i.do.body62.i_crit_edge
  %.sink7.i = phi i32 [ %63, %do.end55.i ], [ 512, %set_alt.i.do.body62.i_crit_edge ]
  %.sink.i = phi i32 [ 64, %do.end55.i ], [ 384, %set_alt.i.do.body62.i_crit_edge ]
  %max_pkt_size.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 53
  %64 = ptrtoint ptr %max_pkt_size.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink7.i, ptr %max_pkt_size.i, align 4
  %packet_multiplier.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 54
  %65 = ptrtoint ptr %packet_multiplier.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink.i, ptr %packet_multiplier.i, align 8
  %66 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool63.not.i = icmp eq i32 %66, 0
  br i1 %tobool63.not.i, label %do.body62.i.do.end74.i_crit_edge, label %do.end67.i

do.body62.i.do.end74.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74.i

do.end67.i:                                       ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %intf.i133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %intf.i133, align 4
  %dev69.i = getelementptr inbounds %struct.usb_interface, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %alt.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev69.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef %70, i32 noundef %.sink7.i) #15
  br label %do.end74.i

do.end74.i:                                       ; preds = %do.end67.i, %do.body62.i.do.end74.i_crit_edge
  %ifnum.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 45
  %71 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ifnum.i, align 8
  %conv.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %alt.i, align 8
  %call76.i = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i.i, i32 noundef %conv.i, i32 noundef %74) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %do.end82.i, label %do.end74.i.em28xx_set_alternate.exit_crit_edge

do.end74.i.em28xx_set_alternate.exit_crit_edge:   ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_set_alternate.exit

do.end82.i:                                       ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %intf.i133 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %intf.i133, align 4
  %dev84.i = getelementptr inbounds %struct.usb_interface, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %alt.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %alt.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84.i, ptr noundef nonnull @.str.20, i32 noundef %78, i32 noundef %call76.i) #15
  br label %em28xx_set_alternate.exit

em28xx_set_alternate.exit:                        ; preds = %do.end82.i, %do.end74.i.em28xx_set_alternate.exit_crit_edge
  %79 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %v4l21, align 4
  %subdevs.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %80, i32 0, i32 2, i32 2
  %81 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn74.i = load ptr, ptr %subdevs.i, align 4
  %cmp.not76.i = icmp eq ptr %.pn74.i, %subdevs.i
  br i1 %cmp.not76.i, label %em28xx_set_alternate.exit.for.cond25.preheader.i_crit_edge, label %em28xx_set_alternate.exit.for.body.i137_crit_edge

em28xx_set_alternate.exit.for.body.i137_crit_edge: ; preds = %em28xx_set_alternate.exit
  br label %for.body.i137

em28xx_set_alternate.exit.for.cond25.preheader.i_crit_edge: ; preds = %em28xx_set_alternate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader.i

for.cond25.preheader.i:                           ; preds = %for.inc.i139.for.cond25.preheader.i_crit_edge, %em28xx_set_alternate.exit.for.cond25.preheader.i_crit_edge
  %82 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn7379.i = load ptr, ptr %subdevs.i, align 4
  %cmp28.not81.i = icmp eq ptr %.pn7379.i, %subdevs.i
  br i1 %cmp28.not81.i, label %for.cond25.preheader.i.em28xx_wake_i2c.exit_crit_edge, label %for.body30.lr.ph.i

for.cond25.preheader.i.em28xx_wake_i2c.exit_crit_edge: ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_wake_i2c.exit

for.body30.lr.ph.i:                               ; preds = %for.cond25.preheader.i
  %model.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 5
  %ctl_input.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 26
  br label %for.body30.i

for.body.i137:                                    ; preds = %for.inc.i139.for.body.i137_crit_edge, %em28xx_set_alternate.exit.for.body.i137_crit_edge
  %.pn77.i = phi ptr [ %.pn.i, %for.inc.i139.for.body.i137_crit_edge ], [ %.pn74.i, %em28xx_set_alternate.exit.for.body.i137_crit_edge ]
  %__sd.078.i = getelementptr i8, ptr %.pn77.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn77.i, i32 24
  %83 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %tobool.not.i136 = icmp eq ptr %86, null
  br i1 %tobool.not.i136, label %for.body.i137.for.inc.i139_crit_edge, label %land.lhs.true.i138

for.body.i137.for.inc.i139_crit_edge:             ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i139

land.lhs.true.i138:                               ; preds = %for.body.i137
  %reset.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reset.i, align 4
  %tobool6.not.i = icmp eq ptr %88, null
  br i1 %tobool6.not.i, label %land.lhs.true.i138.for.inc.i139_crit_edge, label %if.then.i

land.lhs.true.i138.for.inc.i139_crit_edge:        ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i139

if.then.i:                                        ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %88(ptr noundef %__sd.078.i, i32 noundef 0) #12
  br label %for.inc.i139

for.inc.i139:                                     ; preds = %if.then.i, %land.lhs.true.i138.for.inc.i139_crit_edge, %for.body.i137.for.inc.i139_crit_edge
  %89 = ptrtoint ptr %.pn77.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn.i = load ptr, ptr %.pn77.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp.not.i, label %for.inc.i139.for.cond25.preheader.i_crit_edge, label %for.inc.i139.for.body.i137_crit_edge

for.inc.i139.for.body.i137_crit_edge:             ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i137

for.inc.i139.for.cond25.preheader.i_crit_edge:    ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader.i

for.body30.i:                                     ; preds = %for.inc44.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %.pn7382.i = phi ptr [ %.pn7379.i, %for.body30.lr.ph.i ], [ %.pn73.i, %for.inc44.i.for.body30.i_crit_edge ]
  %__sd18.083.i = getelementptr i8, ptr %.pn7382.i, i32 -80
  %ops31.i = getelementptr i8, ptr %.pn7382.i, i32 24
  %90 = ptrtoint ptr %ops31.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops31.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %video.i, align 4
  %tobool32.not.i = icmp eq ptr %93, null
  br i1 %tobool32.not.i, label %for.body30.i.for.inc44.i_crit_edge, label %land.lhs.true33.i

for.body30.i.for.inc44.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i

land.lhs.true33.i:                                ; preds = %for.body30.i
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %tobool36.not.i = icmp eq ptr %95, null
  br i1 %tobool36.not.i, label %land.lhs.true33.i.for.inc44.i_crit_edge, label %if.then37.i

land.lhs.true33.i.for.inc44.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i

if.then37.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %model.i, align 8
  %98 = ptrtoint ptr %ctl_input.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ctl_input.i, align 8
  %vmux.i = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %97, i32 17, i32 %99, i32 1
  %100 = ptrtoint ptr %vmux.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vmux.i, align 4
  %call42.i = tail call i32 %95(ptr noundef %__sd18.083.i, i32 noundef %101, i32 noundef 0, i32 noundef 0) #12
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.then37.i, %land.lhs.true33.i.for.inc44.i_crit_edge, %for.body30.i.for.inc44.i_crit_edge
  %102 = ptrtoint ptr %.pn7382.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn73.i = load ptr, ptr %.pn7382.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn73.i, %subdevs.i
  br i1 %cmp28.not.i, label %for.inc44.i.em28xx_wake_i2c.exit_crit_edge, label %for.inc44.i.for.body30.i_crit_edge

for.inc44.i.for.body30.i_crit_edge:               ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30.i

for.inc44.i.em28xx_wake_i2c.exit_crit_edge:       ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_wake_i2c.exit

em28xx_wake_i2c.exit:                             ; preds = %for.inc44.i.em28xx_wake_i2c.exit_crit_edge, %for.cond25.preheader.i.em28xx_wake_i2c.exit_crit_edge
  %capture_type = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 29
  %103 = ptrtoint ptr %capture_type to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %capture_type, align 8
  %104 = ptrtoint ptr %analog_xfer_bulk37.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load = load i8, ptr %analog_xfer_bulk37.i, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %105 = ptrtoint ptr %max_pkt_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_pkt_size.i, align 4
  %107 = ptrtoint ptr %packet_multiplier.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %packet_multiplier.i, align 8
  %call13 = tail call i32 @em28xx_init_usb_xfer(ptr noundef %1, i32 noundef 1, i32 noundef %bf.cast, i32 noundef 5, i32 noundef %106, i32 noundef %108, ptr noundef nonnull @em28xx_urb_data_copy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %em28xx_wake_i2c.exit.cleanup_crit_edge, label %if.end16

em28xx_wake_i2c.exit.cleanup_crit_edge:           ; preds = %em28xx_wake_i2c.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %em28xx_wake_i2c.exit
  %109 = call ptr @memset(ptr %f, i32 0, i32 44)
  %frequency = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 18
  %110 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %frequency, align 8
  %frequency17 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %112 = ptrtoint ptr %frequency17 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %frequency17, align 4
  %owner18 = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 6
  %113 = ptrtoint ptr %owner18 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %owner18, align 4
  %tobool19.not = icmp eq ptr %114, null
  br i1 %tobool19.not, label %if.end16.if.else_crit_edge, label %land.lhs.true

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end16
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vdev, align 4
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp20 = icmp eq i32 %118, 2
  br i1 %cmp20, label %land.lhs.true.do.body25_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.do.body25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end16.if.else_crit_edge
  br label %do.body25

do.body25:                                        ; preds = %if.else, %land.lhs.true.do.body25_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ 1, %land.lhs.true.do.body25_crit_edge ]
  %type22 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %119 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink, ptr %type22, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2, i32 2
  %120 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn143 = load ptr, ptr %subdevs, align 4
  %cmp29.not145 = icmp eq ptr %.pn143, %subdevs
  br i1 %cmp29.not145, label %do.body25.for.cond59.preheader_crit_edge, label %do.body25.for.body_crit_edge

do.body25.for.body_crit_edge:                     ; preds = %do.body25
  br label %for.body

do.body25.for.cond59.preheader_crit_edge:         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.inc.for.cond59.preheader_crit_edge, %do.body25.for.cond59.preheader_crit_edge
  %121 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pn132148 = load ptr, ptr %subdevs, align 4
  %cmp63.not150 = icmp eq ptr %.pn132148, %subdevs
  br i1 %cmp63.not150, label %for.cond59.preheader.if.end89_crit_edge, label %for.cond59.preheader.for.body65_crit_edge

for.cond59.preheader.for.body65_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body65

for.cond59.preheader.if.end89_crit_edge:          ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body25.for.body_crit_edge
  %.pn146 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn143, %do.body25.for.body_crit_edge ]
  %__sd.0147 = getelementptr i8, ptr %.pn146, i32 -80
  %ops = getelementptr i8, ptr %.pn146, i32 24
  %122 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tuner, align 4
  %tobool30.not = icmp eq ptr %125, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %land.lhs.true31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true31:                                  ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %s_frequency, align 4
  %tobool34.not = icmp eq ptr %127, null
  br i1 %tobool34.not, label %land.lhs.true31.for.inc_crit_edge, label %if.then35

land.lhs.true31.for.inc_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then35:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call i32 %127(ptr noundef %__sd.0147, ptr noundef nonnull %f) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %land.lhs.true31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %128 = ptrtoint ptr %.pn146 to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pn = load ptr, ptr %.pn146, align 4
  %cmp29.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp29.not, label %for.inc.for.cond59.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.cond59.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond59.preheader

for.body65:                                       ; preds = %for.inc78.for.body65_crit_edge, %for.cond59.preheader.for.body65_crit_edge
  %.pn132151 = phi ptr [ %.pn132, %for.inc78.for.body65_crit_edge ], [ %.pn132148, %for.cond59.preheader.for.body65_crit_edge ]
  %__sd51.0152 = getelementptr i8, ptr %.pn132151, i32 -80
  %ops66 = getelementptr i8, ptr %.pn132151, i32 24
  %129 = ptrtoint ptr %ops66 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops66, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %video, align 4
  %tobool67.not = icmp eq ptr %132, null
  br i1 %tobool67.not, label %for.body65.for.inc78_crit_edge, label %land.lhs.true68

for.body65.for.inc78_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

land.lhs.true68:                                  ; preds = %for.body65
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %132, i32 0, i32 10
  %133 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_stream, align 4
  %tobool71.not = icmp eq ptr %134, null
  br i1 %tobool71.not, label %land.lhs.true68.for.inc78_crit_edge, label %if.then72

land.lhs.true68.for.inc78_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

if.then72:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  %call76 = call i32 %134(ptr noundef %__sd51.0152, i32 noundef 1) #12
  br label %for.inc78

for.inc78:                                        ; preds = %if.then72, %land.lhs.true68.for.inc78_crit_edge, %for.body65.for.inc78_crit_edge
  %135 = ptrtoint ptr %.pn132151 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn132 = load ptr, ptr %.pn132151, align 4
  %cmp63.not = icmp eq ptr %.pn132, %subdevs
  br i1 %cmp63.not, label %for.inc78.if.end89_crit_edge, label %for.inc78.for.body65_crit_edge

for.inc78.for.body65_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body65

for.inc78.if.end89_crit_edge:                     ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.end89:                                         ; preds = %for.inc78.if.end89_crit_edge, %for.cond59.preheader.if.end89_crit_edge, %if.end10.if.end89_crit_edge
  %rc.0 = phi i32 [ 0, %if.end10.if.end89_crit_edge ], [ %call13, %for.cond59.preheader.if.end89_crit_edge ], [ %call13, %for.inc78.if.end89_crit_edge ]
  %136 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %streaming_users, align 4
  %inc = add i32 %137, 1
  store i32 %inc, ptr %streaming_users, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %em28xx_wake_i2c.exit.cleanup_crit_edge, %get_resource.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end89 ], [ %call13, %em28xx_wake_i2c.exit.cleanup_crit_edge ], [ -16, %get_resource.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_init_usb_xfer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_urb_data_copy(ptr noundef %dev, ptr nocapture noundef readonly %urb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %disconnected, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end3
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %3, label %if.then4.sw.epilog.i_crit_edge [
    i32 -2, label %sw.bb.i
    i32 -104, label %sw.bb1.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
  ]

if.then4.sw.epilog.i_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then4.sw.epilog.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.25, %if.then4.sw.epilog.i_crit_edge ], [ @.str.33, %sw.bb7.i ], [ @.str.32, %sw.bb6.i ], [ @.str.31, %sw.bb5.i ], [ @.str.30, %sw.bb4.i ], [ @.str.29, %sw.bb3.i ], [ @.str.28, %sw.bb2.i ], [ @.str.27, %sw.bb1.i ], [ @.str.26, %sw.bb.i ]
  %5 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end6_crit_edge, label %do.end.i

sw.epilog.i.if.end6_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %6 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf.i, align 4
  %dev10.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev10.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %3, ptr noundef nonnull %errmsg.0.i) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end.i, %sw.epilog.i.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %9)
  %cmp7 = icmp ugt i32 %9, -1073741825
  br i1 %cmp7, label %if.end6.for.body.lr.ph_crit_edge, label %if.end10

if.end6.for.body.lr.ph_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end10:                                         ; preds = %if.end6
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %10 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11131 = icmp sgt i32 %11, 0
  br i1 %cmp11131, label %if.end10.for.body.lr.ph_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.for.body.lr.ph_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end10.for.body.lr.ph_crit_edge, %if.end6.for.body.lr.ph_crit_edge
  %num_packets.0139 = phi i32 [ %11, %if.end10.for.body.lr.ph_crit_edge ], [ 1, %if.end6.for.body.lr.ph_crit_edge ]
  %intf19.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %max_pkt_size = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 53
  %transfer_buffer45 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %vid_buf.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 42, i32 2
  %vidq.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 40
  %v4l21.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %analog_xfer_bulk.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 57
  %vbi_buf3.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 42, i32 3
  %vbiq.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp7, label %if.then14, label %if.else15

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %14 = ptrtoint ptr %transfer_buffer45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer45, align 4
  br label %if.end48

if.else15:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0132
  %status16 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0132, i32 3
  %16 = ptrtoint ptr %status16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17 = icmp slt i32 %17, 0
  br i1 %cmp17, label %if.then19, label %if.else15.if.end30_crit_edge

if.else15.if.end30_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then19:                                        ; preds = %if.else15
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %17, label %if.then19.do.body13.i_crit_edge [
    i32 -2, label %sw.bb.i97
    i32 -104, label %sw.bb1.i98
    i32 -63, label %sw.bb2.i99
    i32 -32, label %sw.bb3.i100
    i32 -75, label %sw.bb4.i101
    i32 -71, label %sw.bb5.i102
    i32 -84, label %sw.bb6.i103
    i32 -62, label %sw.bb7.i104
  ]

if.then19.do.body13.i_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb.i97:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb1.i98:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb2.i99:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb3.i100:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb4.i101:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb5.i102:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb6.i103:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

sw.bb7.i104:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

do.body13.i:                                      ; preds = %sw.bb7.i104, %sw.bb6.i103, %sw.bb5.i102, %sw.bb4.i101, %sw.bb3.i100, %sw.bb2.i99, %sw.bb1.i98, %sw.bb.i97, %if.then19.do.body13.i_crit_edge
  %errmsg.0.i105 = phi ptr [ @.str.25, %if.then19.do.body13.i_crit_edge ], [ @.str.33, %sw.bb7.i104 ], [ @.str.32, %sw.bb6.i103 ], [ @.str.31, %sw.bb5.i102 ], [ @.str.30, %sw.bb4.i101 ], [ @.str.29, %sw.bb3.i100 ], [ @.str.28, %sw.bb2.i99 ], [ @.str.27, %sw.bb1.i98 ], [ @.str.26, %sw.bb.i97 ]
  %19 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i106 = icmp eq i32 %19, 0
  br i1 %tobool.not.i106, label %do.body13.i.print_err_status.exit111_crit_edge, label %do.end18.i

do.body13.i.print_err_status.exit111_crit_edge:   ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %print_err_status.exit111

do.end18.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %intf19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf19.i, align 4
  %dev20.i = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev20.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %i.0132, i32 noundef %17, ptr noundef nonnull %errmsg.0.i105) #15
  br label %print_err_status.exit111

print_err_status.exit111:                         ; preds = %do.end18.i, %do.body13.i.print_err_status.exit111_crit_edge
  %22 = ptrtoint ptr %status16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %23)
  %cmp26.not = icmp eq i32 %23, -71
  br i1 %cmp26.not, label %print_err_status.exit111.if.end30_crit_edge, label %print_err_status.exit111.for.inc_crit_edge

print_err_status.exit111.for.inc_crit_edge:       ; preds = %print_err_status.exit111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

print_err_status.exit111.if.end30_crit_edge:      ; preds = %print_err_status.exit111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end30:                                         ; preds = %print_err_status.exit111.if.end30_crit_edge, %if.else15.if.end30_crit_edge
  %actual_length33 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0132, i32 2
  %24 = ptrtoint ptr %actual_length33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_length33, align 4
  %26 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_pkt_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp34 = icmp ugt i32 %25, %27
  br i1 %cmp34, label %do.body, label %if.end44

do.body:                                          ; preds = %if.end30
  %28 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool37.not = icmp eq i32 %28, 0
  br i1 %tobool37.not, label %do.body.for.inc_crit_edge, label %do.end

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %intf19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf19.i, align 4
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev40, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #15
  br label %for.inc

if.end44:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %transfer_buffer45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transfer_buffer45, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %34
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.then14
  %usb_data_pkt.0 = phi ptr [ %15, %if.then14 ], [ %add.ptr, %if.end44 ]
  %usb_data_len.0 = phi i32 [ %13, %if.then14 ], [ %25, %if.end44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usb_data_len.0)
  %cmp49 = icmp eq i32 %usb_data_len.0, 0
  br i1 %cmp49, label %if.end48.for.inc_crit_edge, label %if.end52

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end52:                                         ; preds = %if.end48
  %35 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load53 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load53)
  %tobool56.not = icmp sgt i8 %bf.load53, -1
  br i1 %tobool56.not, label %if.else58, label %if.then57

if.then57:                                        ; preds = %if.end52
  %36 = ptrtoint ptr %vid_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vid_buf.i, align 4
  %38 = ptrtoint ptr %v4l21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %v4l21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %usb_data_len.0)
  %cmp.i112 = icmp ugt i32 %usb_data_len.0, 1
  br i1 %cmp.i112, label %if.then.i, label %if.then57.if.end25.i_crit_edge

if.then57.if.end25.i_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then.i:                                        ; preds = %if.then57
  %40 = ptrtoint ptr %usb_data_pkt.0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %usb_data_pkt.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp2.i = icmp eq i8 %41, 2
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %arrayidx4.i = getelementptr i8, ptr %usb_data_pkt.0, i32 1
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.i, align 1
  %44 = and i8 %43, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp6.i = icmp eq i8 %44, 0
  br i1 %cmp6.i, label %if.then8.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %and11.i = and i8 %43, 1
  %top_field.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %39, i32 0, i32 30
  %45 = xor i8 %and11.i, 1
  %46 = ptrtoint ptr %top_field.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %top_field.i, align 4
  %47 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4.i, align 1
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool15.i = icmp ne i8 %49, 0
  %add.ptr.i = getelementptr i8, ptr %usb_data_pkt.0, i32 2
  %sub.i = add i32 %usb_data_len.0, -2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %data_pkt.addr.0.i = phi ptr [ %add.ptr.i, %if.then8.i ], [ %usb_data_pkt.0, %land.lhs.true.i.if.end.i_crit_edge ], [ %usb_data_pkt.0, %if.then.i.if.end.i_crit_edge ]
  %data_len.addr.0.i = phi i32 [ %sub.i, %if.then8.i ], [ %usb_data_len.0, %land.lhs.true.i.if.end.i_crit_edge ], [ %usb_data_len.0, %if.then.i.if.end.i_crit_edge ]
  %frame_end.0.i = phi i1 [ %tobool15.i, %if.then8.i ], [ false, %land.lhs.true.i.if.end.i_crit_edge ], [ false, %if.then.i.if.end.i_crit_edge ]
  %50 = ptrtoint ptr %analog_xfer_bulk.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %analog_xfer_bulk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool17.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool17.not.i, label %if.end.i.if.end25.i_crit_edge, label %land.lhs.true18.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

land.lhs.true18.i:                                ; preds = %if.end.i
  br i1 %frame_end.0.i, label %if.then21.i, label %land.lhs.true18.i.if.end25.i_crit_edge

land.lhs.true18.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then21.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc ptr @finish_field_prepare_next(ptr noundef nonnull %dev, ptr noundef %37, ptr noundef %vidq.i) #12
  %51 = ptrtoint ptr %vid_buf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %vid_buf.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %land.lhs.true18.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge, %if.then57.if.end25.i_crit_edge
  %data_pkt.addr.1.i = phi ptr [ %data_pkt.addr.0.i, %if.then21.i ], [ %data_pkt.addr.0.i, %land.lhs.true18.i.if.end25.i_crit_edge ], [ %data_pkt.addr.0.i, %if.end.i.if.end25.i_crit_edge ], [ %usb_data_pkt.0, %if.then57.if.end25.i_crit_edge ]
  %data_len.addr.1.i = phi i32 [ %data_len.addr.0.i, %if.then21.i ], [ %data_len.addr.0.i, %land.lhs.true18.i.if.end25.i_crit_edge ], [ %data_len.addr.0.i, %if.end.i.if.end25.i_crit_edge ], [ 1, %if.then57.if.end25.i_crit_edge ]
  %buf.0.i = phi ptr [ %call.i, %if.then21.i ], [ %37, %land.lhs.true18.i.if.end25.i_crit_edge ], [ %37, %if.end.i.if.end25.i_crit_edge ], [ %37, %if.then57.if.end25.i_crit_edge ]
  %frame_end.1.off0.i = phi i1 [ true, %if.then21.i ], [ false, %land.lhs.true18.i.if.end25.i_crit_edge ], [ %frame_end.0.i, %if.end.i.if.end25.i_crit_edge ], [ false, %if.then57.if.end25.i_crit_edge ]
  %tobool26.not.i = icmp eq ptr %buf.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.addr.1.i)
  %cmp28.not.i = icmp eq i32 %data_len.addr.1.i, 0
  %or.cond.i = or i1 %cmp28.not.i, %tobool26.not.i
  br i1 %or.cond.i, label %if.end25.i.if.end31.i_crit_edge, label %if.then30.i

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @em28xx_copy_video(ptr noundef nonnull %dev, ptr noundef nonnull %buf.0.i, ptr noundef %data_pkt.addr.1.i, i32 noundef %data_len.addr.1.i) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.end25.i.if.end31.i_crit_edge
  %52 = ptrtoint ptr %analog_xfer_bulk.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load33.i = load i8, ptr %analog_xfer_bulk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load33.i)
  %tobool36.not.i = icmp slt i8 %bf.load33.i, 0
  %frame_end.1.off0.not.i = xor i1 %frame_end.1.off0.i, true
  %brmerge.i = select i1 %tobool36.not.i, i1 true, i1 %frame_end.1.off0.not.i
  br i1 %brmerge.i, label %if.end31.i.for.inc_crit_edge, label %if.then40.i

if.end31.i.for.inc_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then40.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %call41.i = tail call fastcc ptr @finish_field_prepare_next(ptr noundef nonnull %dev, ptr noundef %buf.0.i, ptr noundef %vidq.i) #12
  %53 = ptrtoint ptr %vid_buf.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call41.i, ptr %vid_buf.i, align 4
  br label %for.inc

if.else58:                                        ; preds = %if.end52
  %54 = ptrtoint ptr %v4l21.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %v4l21.i, align 4
  %56 = ptrtoint ptr %vid_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vid_buf.i, align 4
  %58 = ptrtoint ptr %vbi_buf3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vbi_buf3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %usb_data_len.0)
  %cmp.i116 = icmp ugt i32 %usb_data_len.0, 3
  br i1 %cmp.i116, label %if.then.i117, label %if.else58.if.end76.i_crit_edge

if.else58.if.end76.i_crit_edge:                   ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.then.i117:                                     ; preds = %if.else58
  %60 = ptrtoint ptr %usb_data_pkt.0 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %usb_data_pkt.0, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %61, label %if.then.i117.if.end76.i_crit_edge [
    i8 -120, label %land.lhs.true.i118
    i8 51, label %land.lhs.true25.i
    i8 34, label %land.lhs.true46.i
  ]

if.then.i117.if.end76.i_crit_edge:                ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

land.lhs.true.i118:                               ; preds = %if.then.i117
  %arrayidx6.i = getelementptr i8, ptr %usb_data_pkt.0, i32 1
  %63 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %64)
  %cmp8.i = icmp eq i8 %64, -120
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i118.if.end76.i_crit_edge

land.lhs.true.i118.if.end76.i_crit_edge:          ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i118
  %arrayidx11.i = getelementptr i8, ptr %usb_data_pkt.0, i32 2
  %65 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %66)
  %cmp13.i = icmp eq i8 %66, -120
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true10.i.if.end76.i_crit_edge

land.lhs.true10.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

land.lhs.true15.i:                                ; preds = %land.lhs.true10.i
  %arrayidx16.i = getelementptr i8, ptr %usb_data_pkt.0, i32 3
  %67 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %68)
  %cmp18.i = icmp eq i8 %68, -120
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true15.i.if.end76.i_crit_edge

land.lhs.true15.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.then20.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i119 = getelementptr i8, ptr %usb_data_pkt.0, i32 4
  %sub.i120 = add i32 %usb_data_len.0, -4
  br label %if.end76.i

land.lhs.true25.i:                                ; preds = %if.then.i117
  %arrayidx26.i = getelementptr i8, ptr %usb_data_pkt.0, i32 1
  %69 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %70)
  %cmp28.i = icmp eq i8 %70, -107
  br i1 %cmp28.i, label %if.then30.i122, label %land.lhs.true25.i.if.end76.i_crit_edge

land.lhs.true25.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.then30.i122:                                   ; preds = %land.lhs.true25.i
  %capture_type.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 29
  %71 = ptrtoint ptr %capture_type.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %capture_type.i, align 8
  %vbi_read.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 31
  %72 = ptrtoint ptr %vbi_read.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %vbi_read.i, align 8
  %73 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i121 = icmp eq i32 %73, 0
  br i1 %tobool.not.i121, label %if.then30.i122.do.end35.i_crit_edge, label %do.end.i124

if.then30.i122.do.end35.i_crit_edge:              ; preds = %if.then30.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35.i

do.end.i124:                                      ; preds = %if.then30.i122
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %intf19.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %intf19.i, align 4
  %dev33.i = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev33.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #15
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end.i124, %if.then30.i122.do.end35.i_crit_edge
  %arrayidx36.i = getelementptr i8, ptr %usb_data_pkt.0, i32 2
  %76 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx36.i, align 1
  %78 = and i8 %77, 1
  %top_field.i125 = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 30
  %79 = xor i8 %78, 1
  %80 = ptrtoint ptr %top_field.i125 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %top_field.i125, align 4
  %add.ptr39.i = getelementptr i8, ptr %usb_data_pkt.0, i32 4
  %sub40.i = add i32 %usb_data_len.0, -4
  br label %if.end76.i

land.lhs.true46.i:                                ; preds = %if.then.i117
  %arrayidx47.i = getelementptr i8, ptr %usb_data_pkt.0, i32 1
  %81 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %82)
  %cmp49.i = icmp eq i8 %82, 90
  br i1 %cmp49.i, label %if.then51.i, label %land.lhs.true46.i.if.end76.i_crit_edge

land.lhs.true46.i.if.end76.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.then51.i:                                      ; preds = %land.lhs.true46.i
  %capture_type52.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 29
  %83 = ptrtoint ptr %capture_type52.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %capture_type52.i, align 8
  %84 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool54.not.i = icmp eq i32 %84, 0
  br i1 %tobool54.not.i, label %if.then51.i.do.end63.i_crit_edge, label %do.end58.i

if.then51.i.do.end63.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63.i

do.end58.i:                                       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %intf19.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %intf19.i, align 4
  %dev60.i = getelementptr inbounds %struct.usb_interface, ptr %86, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev60.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49) #15
  br label %do.end63.i

do.end63.i:                                       ; preds = %do.end58.i, %if.then51.i.do.end63.i_crit_edge
  %arrayidx64.i = getelementptr i8, ptr %usb_data_pkt.0, i32 2
  %87 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx64.i, align 1
  %89 = and i8 %88, 1
  %top_field69.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 30
  %90 = xor i8 %89, 1
  %91 = ptrtoint ptr %top_field69.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %top_field69.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %usb_data_pkt.0, i32 4
  %sub72.i = add i32 %usb_data_len.0, -4
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end63.i, %land.lhs.true46.i.if.end76.i_crit_edge, %do.end35.i, %land.lhs.true25.i.if.end76.i_crit_edge, %if.then20.i, %land.lhs.true15.i.if.end76.i_crit_edge, %land.lhs.true10.i.if.end76.i_crit_edge, %land.lhs.true.i118.if.end76.i_crit_edge, %if.then.i117.if.end76.i_crit_edge, %if.else58.if.end76.i_crit_edge
  %data_pkt.addr.0.i126 = phi ptr [ %add.ptr.i119, %if.then20.i ], [ %add.ptr39.i, %do.end35.i ], [ %add.ptr71.i, %do.end63.i ], [ %usb_data_pkt.0, %land.lhs.true46.i.if.end76.i_crit_edge ], [ %usb_data_pkt.0, %if.else58.if.end76.i_crit_edge ], [ %usb_data_pkt.0, %land.lhs.true25.i.if.end76.i_crit_edge ], [ %usb_data_pkt.0, %land.lhs.true15.i.if.end76.i_crit_edge ], [ %usb_data_pkt.0, %land.lhs.true10.i.if.end76.i_crit_edge ], [ %usb_data_pkt.0, %land.lhs.true.i118.if.end76.i_crit_edge ], [ %usb_data_pkt.0, %if.then.i117.if.end76.i_crit_edge ]
  %data_len.addr.0.i127 = phi i32 [ %sub.i120, %if.then20.i ], [ %sub40.i, %do.end35.i ], [ %sub72.i, %do.end63.i ], [ %usb_data_len.0, %land.lhs.true46.i.if.end76.i_crit_edge ], [ %usb_data_len.0, %if.else58.if.end76.i_crit_edge ], [ %usb_data_len.0, %land.lhs.true25.i.if.end76.i_crit_edge ], [ %usb_data_len.0, %land.lhs.true15.i.if.end76.i_crit_edge ], [ %usb_data_len.0, %land.lhs.true10.i.if.end76.i_crit_edge ], [ %usb_data_len.0, %land.lhs.true.i118.if.end76.i_crit_edge ], [ %usb_data_len.0, %if.then.i117.if.end76.i_crit_edge ]
  %capture_type77.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 29
  %92 = ptrtoint ptr %capture_type77.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %capture_type77.i, align 8
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %93, label %if.end76.i.if.end106.i_crit_edge [
    i32 0, label %if.end84.thread.i
    i32 1, label %if.end76.i.if.then88.i_crit_edge
  ]

if.end76.i.if.then88.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then88.i

if.end76.i.if.end106.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

if.end84.thread.i:                                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i128 = tail call fastcc ptr @finish_field_prepare_next(ptr noundef nonnull %dev, ptr noundef %59, ptr noundef %vbiq.i) #12
  %95 = ptrtoint ptr %vbi_buf3.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i128, ptr %vbi_buf3.i, align 4
  %96 = ptrtoint ptr %capture_type77.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %capture_type77.i, align 8
  br label %if.then88.i

if.then88.i:                                      ; preds = %if.end84.thread.i, %if.end76.i.if.then88.i_crit_edge
  %vbi_buf.0194.i = phi ptr [ %call.i128, %if.end84.thread.i ], [ %59, %if.end76.i.if.then88.i_crit_edge ]
  %vbi_width.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 27
  %97 = ptrtoint ptr %vbi_width.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vbi_width.i, align 8
  %vbi_height.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 28
  %99 = ptrtoint ptr %vbi_height.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vbi_height.i, align 4
  %mul.i = mul i32 %100, %98
  %vbi_read89.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %55, i32 0, i32 31
  %101 = ptrtoint ptr %vbi_read89.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vbi_read89.i, align 8
  %add.i = add i32 %102, %data_len.addr.0.i127
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %mul.i)
  %cmp90.i = icmp ugt i32 %add.i, %mul.i
  %sub93.i = sub i32 %mul.i, %102
  %cond.i = select i1 %cmp90.i, i32 %sub93.i, i32 %data_len.addr.0.i127
  %tobool94.not.i = icmp eq ptr %vbi_buf.0194.i, null
  br i1 %tobool94.not.i, label %if.then88.i.if.end96.i_crit_edge, label %if.then95.i

if.then88.i.if.end96.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.i

if.then95.i:                                      ; preds = %if.then88.i
  %pos.i.i = getelementptr inbounds %struct.em28xx_buffer, ptr %vbi_buf.0194.i, i32 0, i32 5
  %103 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pos.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.em28xx_buffer, ptr %vbi_buf.0194.i, i32 0, i32 3
  %105 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length.i.i, align 4
  %top_field.i.i = getelementptr inbounds %struct.em28xx_buffer, ptr %vbi_buf.0194.i, i32 0, i32 4
  %107 = ptrtoint ptr %top_field.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %top_field.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp4.i.i = icmp eq i32 %108, 0
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.then95.i.em28xx_copy_vbi.exit.i_crit_edge

if.then95.i.em28xx_copy_vbi.exit.i_crit_edge:     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_copy_vbi.exit.i

if.then5.i.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %v4l21.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %v4l21.i, align 4
  %vbi_width.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %vbi_width.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vbi_width.i.i, align 8
  %vbi_height.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %110, i32 0, i32 28
  %113 = ptrtoint ptr %vbi_height.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vbi_height.i.i, align 4
  %mul.i.i = mul i32 %114, %112
  %add7.i.i = add i32 %mul.i.i, %104
  br label %em28xx_copy_vbi.exit.i

em28xx_copy_vbi.exit.i:                           ; preds = %if.then5.i.i, %if.then95.i.em28xx_copy_vbi.exit.i_crit_edge
  %offset.0.i.i = phi i32 [ %add7.i.i, %if.then5.i.i ], [ %104, %if.then95.i.em28xx_copy_vbi.exit.i_crit_edge ]
  %add.i.i = add i32 %104, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %106)
  %cmp.i.i = icmp ugt i32 %add.i.i, %106
  %sub.i.i = sub i32 %106, %104
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %cond.i
  %vb_buf.i.i = getelementptr inbounds %struct.em28xx_buffer, ptr %vbi_buf.0194.i, i32 0, i32 6
  %115 = ptrtoint ptr %vb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vb_buf.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %116, i32 %offset.0.i.i
  %117 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %data_pkt.addr.0.i126, i32 %spec.select.i.i)
  %118 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pos.i.i, align 4
  %add10.i.i = add i32 %119, %spec.select.i.i
  store i32 %add10.i.i, ptr %pos.i.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %em28xx_copy_vbi.exit.i, %if.then88.i.if.end96.i_crit_edge
  %120 = ptrtoint ptr %vbi_read89.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vbi_read89.i, align 8
  %add98.i = add i32 %121, %cond.i
  store i32 %add98.i, ptr %vbi_read89.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.addr.0.i127, i32 %cond.i)
  %cmp99.i = icmp ugt i32 %data_len.addr.0.i127, %cond.i
  br i1 %cmp99.i, label %if.end106.thread.i, label %if.end106thread-pre-split.i

if.end106.thread.i:                               ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %capture_type77.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %capture_type77.i, align 8
  %add.ptr103.i = getelementptr i8, ptr %data_pkt.addr.0.i126, i32 %cond.i
  %sub104.i = sub i32 %data_len.addr.0.i127, %cond.i
  br label %if.then110.i

if.end106thread-pre-split.i:                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %capture_type77.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr.pr.i = load i32, ptr %capture_type77.i, align 8
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.end106thread-pre-split.i, %if.end76.i.if.end106.i_crit_edge
  %.pr.i = phi i32 [ %.pr.pr.i, %if.end106thread-pre-split.i ], [ %93, %if.end76.i.if.end106.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp108.i = icmp eq i32 %.pr.i, 2
  br i1 %cmp108.i, label %if.end106.i.if.then110.i_crit_edge, label %if.end106.i.if.end115.i_crit_edge

if.end106.i.if.end115.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

if.end106.i.if.then110.i_crit_edge:               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then110.i

if.then110.i:                                     ; preds = %if.end106.i.if.then110.i_crit_edge, %if.end106.thread.i
  %data_len.addr.2201.i = phi i32 [ %sub104.i, %if.end106.thread.i ], [ %data_len.addr.0.i127, %if.end106.i.if.then110.i_crit_edge ]
  %data_pkt.addr.2199.i = phi ptr [ %add.ptr103.i, %if.end106.thread.i ], [ %data_pkt.addr.0.i126, %if.end106.i.if.then110.i_crit_edge ]
  %call111.i = tail call fastcc ptr @finish_field_prepare_next(ptr noundef nonnull %dev, ptr noundef %57, ptr noundef %vidq.i) #12
  %124 = ptrtoint ptr %vid_buf.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call111.i, ptr %vid_buf.i, align 4
  %125 = ptrtoint ptr %capture_type77.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 3, ptr %capture_type77.i, align 8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then110.i, %if.end106.i.if.end115.i_crit_edge
  %data_len.addr.2200.i = phi i32 [ %data_len.addr.2201.i, %if.then110.i ], [ %data_len.addr.0.i127, %if.end106.i.if.end115.i_crit_edge ]
  %data_pkt.addr.2198.i = phi ptr [ %data_pkt.addr.2199.i, %if.then110.i ], [ %data_pkt.addr.0.i126, %if.end106.i.if.end115.i_crit_edge ]
  %buf.0.i129 = phi ptr [ %call111.i, %if.then110.i ], [ %57, %if.end106.i.if.end115.i_crit_edge ]
  %126 = ptrtoint ptr %capture_type77.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %capture_type77.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %127)
  %cmp117.i = icmp ne i32 %127, 3
  %tobool120.not.i = icmp eq ptr %buf.0.i129, null
  %or.cond.i130 = select i1 %cmp117.i, i1 true, i1 %tobool120.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.addr.2200.i)
  %cmp122.not.i = icmp eq i32 %data_len.addr.2200.i, 0
  %or.cond189.i = select i1 %or.cond.i130, i1 true, i1 %cmp122.not.i
  br i1 %or.cond189.i, label %if.end115.i.for.inc_crit_edge, label %if.then124.i

if.end115.i.for.inc_crit_edge:                    ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then124.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @em28xx_copy_video(ptr noundef nonnull %dev, ptr noundef nonnull %buf.0.i129, ptr noundef %data_pkt.addr.2198.i, i32 noundef %data_len.addr.2200.i) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then124.i, %if.end115.i.for.inc_crit_edge, %if.then40.i, %if.end31.i.for.inc_crit_edge, %if.end48.for.inc_crit_edge, %do.end, %do.body.for.inc_crit_edge, %print_err_status.exit111.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %num_packets.0139
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @em28xx_stop_vbi_streaming(ptr nocapture noundef readonly %vq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %vbiq2 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 41
  %4 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.8) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %7 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vq, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %8, label %do.end.i.i [
    i32 1, label %do.end6.get_resource.exit.i_crit_edge
    i32 4, label %sw.bb1.i.i
  ]

do.end6.get_resource.exit.i_crit_edge:            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_resource.exit.i

sw.bb1.i.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_resource.exit.i

do.end.i.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 858, i32 noundef 9, ptr noundef null) #12
  br label %get_resource.exit.i

get_resource.exit.i:                              ; preds = %do.end.i.i, %sw.bb1.i.i, %do.end6.get_resource.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %do.end.i.i ], [ 2, %sw.bb1.i.i ], [ %8, %do.end6.get_resource.exit.i_crit_edge ]
  %neg.i = xor i32 %retval.0.i.i, -1
  %resources.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 37
  %10 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resources.i, align 8
  %and.i = and i32 %11, %neg.i
  store i32 %and.i, ptr %resources.i, align 8
  %12 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %get_resource.exit.i.res_free.exit_crit_edge, label %do.end.i

get_resource.exit.i.res_free.exit_crit_edge:      ; preds = %get_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %res_free.exit

do.end.i:                                         ; preds = %get_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev2.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i.i) #15
  br label %res_free.exit

res_free.exit:                                    ; preds = %do.end.i, %get_resource.exit.i.res_free.exit_crit_edge
  %streaming_users = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %streaming_users, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %streaming_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %do.body8, label %res_free.exit.do.body34_crit_edge

res_free.exit.do.body34_crit_edge:                ; preds = %res_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.body8:                                         ; preds = %res_free.exit
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn83 = load ptr, ptr %subdevs, align 4
  %cmp12.not85 = icmp eq ptr %.pn83, %subdevs
  br i1 %cmp12.not85, label %do.body8.do.end29_crit_edge, label %do.body8.for.body_crit_edge

do.body8.for.body_crit_edge:                      ; preds = %do.body8
  br label %for.body

do.body8.do.end29_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body8.for.body_crit_edge
  %.pn86 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn83, %do.body8.for.body_crit_edge ]
  %__sd.087 = getelementptr i8, ptr %.pn86, i32 -80
  %ops = getelementptr i8, ptr %.pn86, i32 24
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %video, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_stream, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 %23(ptr noundef %__sd.087, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn86, align 4
  %cmp12.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp12.not, label %for.inc.do.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end29:                                         ; preds = %for.inc.do.end29_crit_edge, %do.body8.do.end29_crit_edge
  tail call void @em28xx_uninit_usb_xfer(ptr noundef %1, i32 noundef 1) #12
  br label %do.body34

do.body34:                                        ; preds = %do.end29, %res_free.exit.do.body34_crit_edge
  %slock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 43
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #12
  %vbi_buf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 42, i32 3
  %25 = ptrtoint ptr %vbi_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vbi_buf, align 4
  %tobool43.not = icmp eq ptr %26, null
  br i1 %tobool43.not, label %do.body34.if.end49_crit_edge, label %if.then44

do.body34.if.end49_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %26, i32 noundef 6) #12
  %27 = ptrtoint ptr %vbi_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %vbi_buf, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %do.body34.if.end49_crit_edge
  %28 = ptrtoint ptr %vbiq2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %vbiq2, align 4
  %cmp.i.not88 = icmp eq ptr %29, %vbiq2
  br i1 %cmp.i.not88, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end49.while.body_crit_edge
  %30 = phi ptr [ %40, %list_del.exit.while.body_crit_edge ], [ %29, %if.end49.while.body_crit_edge ]
  %add.ptr57 = getelementptr i8, ptr %30, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr57, i32 noundef 6) #12
  %39 = ptrtoint ptr %vbiq2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %vbiq2, align 4
  %cmp.i.not = icmp eq ptr %40, %vbiq2
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end49.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call38) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_uninit_usb_xfer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_video_unregister() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @em28xx_unregister_extension(ptr noundef nonnull @v4l2_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_unregister_extension(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_video_register() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_register_extension(ptr noundef nonnull @v4l2_ops) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @finish_field_prepare_next(ptr nocapture noundef readonly %dev, ptr noundef %buf, ptr noundef %dma_q) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %progressive = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %progressive to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %progressive, align 8, !range !469
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %top_field = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %top_field to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %top_field, align 4, !range !469
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tobool3.not = icmp eq ptr %buf, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then
  %6 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then4.finish_buffer.exit_crit_edge, label %do.end.i

if.then4.finish_buffer.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %finish_buffer.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %7 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  %top_field.i = getelementptr inbounds %struct.em28xx_buffer, ptr %buf, i32 0, i32 4
  %9 = ptrtoint ptr %top_field.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top_field.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev2.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull %buf, i32 noundef %10) #15
  br label %finish_buffer.exit

finish_buffer.exit:                               ; preds = %do.end.i, %if.then4.finish_buffer.exit_crit_edge
  %11 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l21, align 4
  %field_count.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %field_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field_count.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %field_count.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %15 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sequence.i, align 8
  %16 = load ptr, ptr %v4l21, align 4
  %progressive.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %progressive.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %progressive.i, align 8, !range !469
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool5.not.i = icmp eq i8 %18, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 4, i32 1
  %19 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select.i, ptr %19, align 4
  %call.i.i = tail call i64 @ktime_get() #12
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 5
  %21 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %buf, i32 noundef 5) #12
  br label %if.end

if.end:                                           ; preds = %finish_buffer.exit, %if.then.if.end_crit_edge
  %22 = ptrtoint ptr %dma_q to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %dma_q, align 4
  %cmp.i.not.i = icmp eq ptr %23, %dma_q
  br i1 %cmp.i.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end
  %24 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.not.i = icmp eq i32 %24, 0
  br i1 %tobool1.not.i, label %do.body.i.if.end11_crit_edge, label %do.end.i22

do.body.i.if.end11_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.end.i22:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %25 = ptrtoint ptr %intf.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf.i21, align 4
  %dev4.i = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev4.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #15
  br label %if.end11

if.end7.i:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %23, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.list_del.exit.i_crit_edge

if.end7.i.list_del.exit.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end7.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pos.i = getelementptr i8, ptr %23, i32 20
  %35 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %pos.i, align 4
  %mem.i = getelementptr i8, ptr %23, i32 8
  %36 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem.i, align 8
  %vb_buf.i = getelementptr i8, ptr %23, i32 24
  %38 = ptrtoint ptr %vb_buf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %vb_buf.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %list_del.exit.i, %lor.lhs.false.if.end5_crit_edge
  %buf.addr.0 = phi ptr [ %buf, %lor.lhs.false.if.end5_crit_edge ], [ %add.ptr.i, %list_del.exit.i ]
  %tobool6.not = icmp eq ptr %buf.addr.0, null
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %top_field8 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 30
  %39 = ptrtoint ptr %top_field8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %top_field8, align 4, !range !469
  %41 = zext i8 %40 to i32
  %top_field10 = getelementptr inbounds %struct.em28xx_buffer, ptr %buf.addr.0, i32 0, i32 4
  %42 = ptrtoint ptr %top_field10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %top_field10, align 8
  %pos = getelementptr inbounds %struct.em28xx_buffer, ptr %buf.addr.0, i32 0, i32 5
  %43 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pos, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge, %do.end.i22, %do.body.i.if.end11_crit_edge
  %buf.addr.025 = phi ptr [ %buf.addr.0, %if.then7 ], [ null, %if.end5.if.end11_crit_edge ], [ null, %do.end.i22 ], [ null, %do.body.i.if.end11_crit_edge ]
  ret ptr %buf.addr.025
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_copy_video(ptr nocapture noundef readonly %dev, ptr nocapture noundef %buf, ptr nocapture noundef readonly %usb_buf, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %width = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %shl = shl i32 %3, 1
  %pos = getelementptr inbounds %struct.em28xx_buffer, ptr %buf, i32 0, i32 5
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  %add = add i32 %5, %len
  %length = getelementptr inbounds %struct.em28xx_buffer, ptr %buf, i32 0, i32 3
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp = icmp ugt i32 %add, %7
  %sub = sub i32 %7, %5
  %spec.select = select i1 %cmp, i32 %sub, i32 %len
  %progressive = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %progressive to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %progressive, align 8, !range !469
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then5_crit_edge

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false:                                    ; preds = %entry
  %top_field = getelementptr inbounds %struct.em28xx_buffer, ptr %buf, i32 0, i32 4
  %10 = ptrtoint ptr %top_field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top_field, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.else, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %entry.if.then5_crit_edge
  %vb_buf = getelementptr inbounds %struct.em28xx_buffer, ptr %buf, i32 0, i32 6
  %12 = ptrtoint ptr %vb_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vb_buf, align 8
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %vb_buf6 = getelementptr inbounds %struct.em28xx_buffer, ptr %buf, i32 0, i32 6
  %14 = ptrtoint ptr %vb_buf6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vb_buf6, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 %shl
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %fieldstart.0 = phi ptr [ %13, %if.then5 ], [ %add.ptr, %if.else ]
  %rem = urem i32 %5, %shl
  %mul = sub i32 %5, %rem
  %16 = xor i8 %9, 1
  %17 = zext i8 %16 to i32
  %mul.pn = shl i32 %mul, %17
  %offset.0 = add i32 %mul.pn, %rem
  %add.ptr19 = getelementptr i8, ptr %fieldstart.0, i32 %offset.0
  %sub20 = sub i32 %shl, %rem
  %18 = tail call i32 @llvm.smin.i32(i32 %sub20, i32 %spec.select)
  %add.ptr22 = getelementptr i8, ptr %add.ptr19, i32 %18
  %vb_buf23 = getelementptr inbounds %struct.em28xx_buffer, ptr %buf, i32 0, i32 6
  %19 = ptrtoint ptr %vb_buf23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vb_buf23, align 8
  %add.ptr25 = getelementptr i8, ptr %20, i32 %7
  %cmp26 = icmp ugt ptr %add.ptr22, %add.ptr25
  br i1 %cmp26, label %do.body, label %if.end7.if.end45_crit_edge

if.end7.if.end45_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.body:                                          ; preds = %if.end7
  %21 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  br i1 %tobool28.not, label %do.body.do.end38_crit_edge, label %do.end

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %22 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf, align 4
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr22 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev31, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %sub.ptr.sub) #15
  br label %do.end38

do.end38:                                         ; preds = %do.end, %do.body.do.end38_crit_edge
  %24 = ptrtoint ptr %vb_buf23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vb_buf23, align 8
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %add.ptr41 = getelementptr i8, ptr %25, i32 %27
  %sub.ptr.lhs.cast42 = ptrtoint ptr %add.ptr41 to i32
  %sub.ptr.rhs.cast43 = ptrtoint ptr %add.ptr19 to i32
  %sub.ptr.sub44 = sub i32 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  br label %if.end45

if.end45:                                         ; preds = %do.end38, %if.end7.if.end45_crit_edge
  %lencopy.0 = phi i32 [ %sub.ptr.sub44, %do.end38 ], [ %18, %if.end7.if.end45_crit_edge ]
  %remain.0 = phi i32 [ %sub.ptr.sub44, %do.end38 ], [ %spec.select, %if.end7.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lencopy.0)
  %cmp46 = icmp slt i32 %lencopy.0, 1
  br i1 %cmp46, label %if.end45.cleanup_crit_edge, label %if.end48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  %28 = call ptr @memcpy(ptr %add.ptr19, ptr %usb_buf, i32 %lencopy.0)
  %sub49 = sub i32 %remain.0, %lencopy.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub49)
  %cmp50182 = icmp sgt i32 %sub49, 0
  br i1 %cmp50182, label %while.body.lr.ph, label %if.end48.while.end_crit_edge

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end48
  %intf76 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  br label %while.body

while.body:                                       ; preds = %if.end97.while.body_crit_edge, %while.body.lr.ph
  %remain.1186 = phi i32 [ %sub49, %while.body.lr.ph ], [ %sub98, %if.end97.while.body_crit_edge ]
  %lencopy.1185 = phi i32 [ %lencopy.0, %while.body.lr.ph ], [ %lencopy.3, %if.end97.while.body_crit_edge ]
  %startread.0184 = phi ptr [ %usb_buf, %while.body.lr.ph ], [ %add.ptr59, %if.end97.while.body_crit_edge ]
  %startwrite.0183 = phi ptr [ %add.ptr19, %while.body.lr.ph ], [ %startwrite.1, %if.end97.while.body_crit_edge ]
  %29 = ptrtoint ptr %progressive to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %progressive, align 8, !range !469
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool52.not = icmp eq i8 %30, 0
  %add56 = select i1 %tobool52.not, i32 %shl, i32 0
  %lencopy.1.pn = add i32 %add56, %lencopy.1185
  %startwrite.1 = getelementptr i8, ptr %startwrite.0183, i32 %lencopy.1.pn
  %add.ptr59 = getelementptr i8, ptr %startread.0184, i32 %lencopy.1185
  %31 = tail call i32 @llvm.smin.i32(i32 %shl, i32 %remain.1186)
  %add.ptr64 = getelementptr i8, ptr %startwrite.1, i32 %31
  %32 = ptrtoint ptr %vb_buf23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vb_buf23, align 8
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  %add.ptr67 = getelementptr i8, ptr %33, i32 %35
  %cmp68 = icmp ugt ptr %add.ptr64, %add.ptr67
  br i1 %cmp68, label %do.body70, label %while.body.if.end94_crit_edge

while.body.if.end94_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

do.body70:                                        ; preds = %while.body
  %36 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool71.not = icmp eq i32 %36, 0
  br i1 %tobool71.not, label %do.body70.do.end87_crit_edge, label %do.end75

do.body70.do.end87_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87

do.end75:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %intf76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf76, align 4
  %dev77 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  %sub.ptr.lhs.cast82 = ptrtoint ptr %add.ptr64 to i32
  %sub.ptr.rhs.cast83 = ptrtoint ptr %add.ptr67 to i32
  %sub.ptr.sub84 = sub i32 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev77, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %sub.ptr.sub84) #15
  br label %do.end87

do.end87:                                         ; preds = %do.end75, %do.body70.do.end87_crit_edge
  %39 = ptrtoint ptr %vb_buf23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vb_buf23, align 8
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length, align 4
  %add.ptr90 = getelementptr i8, ptr %40, i32 %42
  %sub.ptr.lhs.cast91 = ptrtoint ptr %add.ptr90 to i32
  %sub.ptr.rhs.cast92 = ptrtoint ptr %startwrite.1 to i32
  %sub.ptr.sub93 = sub i32 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  br label %if.end94

if.end94:                                         ; preds = %do.end87, %while.body.if.end94_crit_edge
  %lencopy.3 = phi i32 [ %sub.ptr.sub93, %do.end87 ], [ %31, %while.body.if.end94_crit_edge ]
  %remain.2 = phi i32 [ %sub.ptr.sub93, %do.end87 ], [ %remain.1186, %while.body.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lencopy.3)
  %cmp95 = icmp slt i32 %lencopy.3, 1
  br i1 %cmp95, label %if.end94.while.end_crit_edge, label %if.end97

if.end94.while.end_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end97:                                         ; preds = %if.end94
  %43 = call ptr @memcpy(ptr %startwrite.1, ptr %add.ptr59, i32 %lencopy.3)
  %sub98 = sub i32 %remain.2, %lencopy.3
  %cmp50 = icmp sgt i32 %sub98, 0
  br i1 %cmp50, label %if.end97.while.body_crit_edge, label %if.end97.while.end_crit_edge

if.end97.while.end_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end97.while.body_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end97.while.end_crit_edge, %if.end94.while.end_crit_edge, %if.end48.while.end_crit_edge
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pos, align 4
  %add100 = add i32 %45, %spec.select
  store i32 %add100, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end45.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_v4l2_init(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %.not = icmp eq i8 %1, 32
  br i1 %.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.56) #15
  %lock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 5744) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end.cleanup.sink.split_crit_edge, label %if.end12

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end12:                                         ; preds = %do.end
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %call7.i.i, align 8
  %dev13 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev13, align 4
  %v4l214 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %v4l214 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %v4l214, align 4
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %8 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %media_dev, align 4
  %v4l2_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 2
  %mdev = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mdev, align 4
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %call18 = tail call i32 @v4l2_device_register(ptr noundef %dev16, ptr noundef %v4l2_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf, align 4
  %dev24 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.60) #15
  br label %err

if.end25:                                         ; preds = %if.end12
  %ctrl_handler = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 3
  %call26 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 8, ptr noundef nonnull @em28xx_v4l2_init._key, ptr noundef nonnull @.str.62) #12
  %ctrl_handler28 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %ctrl_handler28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrl_handler, ptr %ctrl_handler28, align 4
  %16 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load29 = load i8, ptr %is_audio_only, align 4
  %17 = and i8 %bf.load29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %if.end25.if.end35_crit_edge, label %if.then34

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %progressive = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 21
  %18 = ptrtoint ptr %progressive to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %progressive, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end25.if.end35_crit_edge
  %vinmode = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %vinmode to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %vinmode, align 8
  %vinctl = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %vinctl to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %vinctl, align 1
  %21 = and i8 %bf.load29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool40.not = icmp eq i8 %21, 0
  br i1 %tobool40.not, label %if.end35.if.end44_crit_edge, label %if.then41

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %22 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %23
  %call43 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx, ptr noundef nonnull @.str.63, i8 noundef zeroext 0, ptr noundef nonnull @msp3400_addrs) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end35.if.end44_crit_edge
  %decoder = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 15
  %24 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %decoder, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp45 = icmp eq i32 %25, 2
  br i1 %cmp45, label %if.then46, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %def_i2c_bus49 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %26 = ptrtoint ptr %def_i2c_bus49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %def_i2c_bus49, align 4
  %arrayidx50 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %27
  %call51 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx50, ptr noundef nonnull @.str.64, i8 noundef zeroext 0, ptr noundef nonnull @saa711x_addrs) #12
  %28 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %decoder, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end44.if.end52_crit_edge
  %29 = phi i32 [ %.pr, %if.then46 ], [ %25, %if.end44.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp55 = icmp eq i32 %29, 1
  br i1 %cmp55, label %if.then56, label %if.end52.if.end62_crit_edge

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %def_i2c_bus59 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %30 = ptrtoint ptr %def_i2c_bus59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %def_i2c_bus59, align 4
  %arrayidx60 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %31
  %call61 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx60, ptr noundef nonnull @.str.65, i8 noundef zeroext 0, ptr noundef nonnull @tvp5150_addrs) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end52.if.end62_crit_edge
  %adecoder = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 16
  %32 = ptrtoint ptr %adecoder to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %adecoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp64 = icmp eq i32 %33, 1
  br i1 %cmp64, label %if.then65, label %if.end62.if.end72_crit_edge

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %def_i2c_bus68 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %34 = ptrtoint ptr %def_i2c_bus68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %def_i2c_bus68, align 4
  %arrayidx69 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %35
  %tvaudio_addr = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 14
  %36 = ptrtoint ptr %tvaudio_addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tvaudio_addr, align 2
  %conv = trunc i16 %37 to i8
  %call71 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx69, ptr noundef nonnull @.str.66, i8 noundef zeroext %conv, ptr noundef null) #12
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %if.end62.if.end72_crit_edge
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 2
  %38 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp74.not = icmp eq i32 %39, 4
  br i1 %cmp74.not, label %if.end72.if.end123_crit_edge, label %if.then76

if.end72.if.end123_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

if.then76:                                        ; preds = %if.end72
  %tuner_addr78 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 3
  %40 = ptrtoint ptr %tuner_addr78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tuner_addr78, align 4
  %conv79 = trunc i32 %41 to i16
  %tda9887_conf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 5
  %42 = ptrtoint ptr %tda9887_conf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tda9887_conf, align 4
  %and = and i32 %43, 1
  %radio = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 18
  %44 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool82.not = icmp eq i32 %45, 0
  br i1 %tobool82.not, label %if.then76.if.end90_crit_edge, label %if.then83

if.then76.if.end90_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then83:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %def_i2c_bus86 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %46 = ptrtoint ptr %def_i2c_bus86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %def_i2c_bus86, align 4
  %arrayidx87 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %47
  %radio_addr = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 13
  %48 = ptrtoint ptr %radio_addr to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %radio_addr, align 4
  %call89 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx87, ptr noundef nonnull @.str.67, i8 noundef zeroext %49, ptr noundef null) #12
  br label %if.end90

if.end90:                                         ; preds = %if.then83, %if.then76.if.end90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %if.end90.if.end99_crit_edge, label %if.then92

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %def_i2c_bus95 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %50 = ptrtoint ptr %def_i2c_bus95 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %def_i2c_bus95, align 4
  %arrayidx96 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %51
  %call97 = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef 1) #12
  %call98 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx96, ptr noundef nonnull @.str.67, i8 noundef zeroext 0, ptr noundef %call97) #12
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %if.end90.if.end99_crit_edge
  %conv100 = and i32 %41, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv100)
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %if.then103, label %if.else

if.then103:                                       ; preds = %if.end99
  %52 = or i32 %and, 2
  %def_i2c_bus108 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %53 = ptrtoint ptr %def_i2c_bus108 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %def_i2c_bus108, align 4
  %arrayidx109 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %54
  %call110 = tail call ptr @v4l2_i2c_tuner_addrs(i32 noundef %52) #12
  %call111 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx109, ptr noundef nonnull @.str.67, i8 noundef zeroext 0, ptr noundef %call110) #12
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.then103.if.end122_crit_edge, label %if.then113

if.then103.if.end122_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.then113:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %call114 = tail call zeroext i16 @v4l2_i2c_subdev_addr(ptr noundef nonnull %call111) #12
  br label %if.end122

if.else:                                          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %def_i2c_bus118 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %55 = ptrtoint ptr %def_i2c_bus118 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %def_i2c_bus118, align 4
  %arrayidx119 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %56
  %conv120 = trunc i32 %41 to i8
  %call121 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx119, ptr noundef nonnull @.str.67, i8 noundef zeroext %conv120, ptr noundef null) #12
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.then113, %if.then103.if.end122_crit_edge
  %tuner_addr.1 = phi i16 [ %conv79, %if.else ], [ %call114, %if.then113 ], [ %conv79, %if.then103.if.end122_crit_edge ]
  tail call fastcc void @em28xx_tuner_setup(ptr noundef %dev, i16 noundef zeroext %tuner_addr.1)
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end72.if.end123_crit_edge
  %em28xx_sensor = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 13
  %57 = ptrtoint ptr %em28xx_sensor to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %em28xx_sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp124.not = icmp eq i32 %58, 0
  br i1 %cmp124.not, label %if.end123.if.end128_crit_edge, label %if.then126

if.end123.if.end128_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  %call127 = tail call i32 @em28xx_init_camera(ptr noundef %dev) #12
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end123.if.end128_crit_edge
  %call129 = tail call i32 @em28xx_audio_setup(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end135, label %if.end138

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %intf, align 4
  %dev137 = getelementptr inbounds %struct.usb_interface, ptr %60, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev137, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.57, i32 noundef %call129) #15
  br label %unregister_dev

if.end138:                                        ; preds = %if.end128
  %audio_mode = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 17
  %61 = ptrtoint ptr %audio_mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %audio_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp139.not = icmp eq i32 %62, 0
  br i1 %cmp139.not, label %if.else144, label %if.then141

if.then141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  %call142 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #12
  %call143 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 31) #12
  br label %if.end147

if.else144:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  %call145 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963785) #12
  tail call void @v4l2_ctrl_notify(ptr noundef %call145, ptr noundef nonnull @em28xx_ctrl_notify, ptr noundef %dev) #12
  %call146 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963781) #12
  tail call void @v4l2_ctrl_notify(ptr noundef %call146, ptr noundef nonnull @em28xx_ctrl_notify, ptr noundef %dev) #12
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %if.then141
  %63 = ptrtoint ptr %v4l214 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %v4l214, align 4
  %subdevs.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %64, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn74.i = load ptr, ptr %subdevs.i, align 4
  %cmp.not76.i = icmp eq ptr %.pn74.i, %subdevs.i
  br i1 %cmp.not76.i, label %if.end147.for.cond25.preheader.i_crit_edge, label %if.end147.for.body.i_crit_edge

if.end147.for.body.i_crit_edge:                   ; preds = %if.end147
  br label %for.body.i

if.end147.for.cond25.preheader.i_crit_edge:       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader.i

for.cond25.preheader.i:                           ; preds = %for.inc.i.for.cond25.preheader.i_crit_edge, %if.end147.for.cond25.preheader.i_crit_edge
  %66 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn7379.i = load ptr, ptr %subdevs.i, align 4
  %cmp28.not81.i = icmp eq ptr %.pn7379.i, %subdevs.i
  br i1 %cmp28.not81.i, label %for.cond25.preheader.i.em28xx_wake_i2c.exit_crit_edge, label %for.body30.lr.ph.i

for.cond25.preheader.i.em28xx_wake_i2c.exit_crit_edge: ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_wake_i2c.exit

for.body30.lr.ph.i:                               ; preds = %for.cond25.preheader.i
  %model.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %ctl_input.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 26
  br label %for.body30.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end147.for.body.i_crit_edge
  %.pn77.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn74.i, %if.end147.for.body.i_crit_edge ]
  %__sd.078.i = getelementptr i8, ptr %.pn77.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn77.i, i32 24
  %67 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %reset.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reset.i, align 4
  %tobool6.not.i = icmp eq ptr %72, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %72(ptr noundef %__sd.078.i, i32 noundef 0) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %73 = ptrtoint ptr %.pn77.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn.i = load ptr, ptr %.pn77.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp.not.i, label %for.inc.i.for.cond25.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.cond25.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader.i

for.body30.i:                                     ; preds = %for.inc44.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %.pn7382.i = phi ptr [ %.pn7379.i, %for.body30.lr.ph.i ], [ %.pn73.i, %for.inc44.i.for.body30.i_crit_edge ]
  %__sd18.083.i = getelementptr i8, ptr %.pn7382.i, i32 -80
  %ops31.i = getelementptr i8, ptr %.pn7382.i, i32 24
  %74 = ptrtoint ptr %ops31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops31.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %video.i, align 4
  %tobool32.not.i = icmp eq ptr %77, null
  br i1 %tobool32.not.i, label %for.body30.i.for.inc44.i_crit_edge, label %land.lhs.true33.i

for.body30.i.for.inc44.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i

land.lhs.true33.i:                                ; preds = %for.body30.i
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %tobool36.not.i = icmp eq ptr %79, null
  br i1 %tobool36.not.i, label %land.lhs.true33.i.for.inc44.i_crit_edge, label %if.then37.i

land.lhs.true33.i.for.inc44.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i

if.then37.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %model.i, align 8
  %82 = ptrtoint ptr %ctl_input.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ctl_input.i, align 8
  %vmux.i = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %81, i32 17, i32 %83, i32 1
  %84 = ptrtoint ptr %vmux.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vmux.i, align 4
  %call42.i = tail call i32 %79(ptr noundef %__sd18.083.i, i32 noundef %85, i32 noundef 0, i32 noundef 0) #12
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.then37.i, %land.lhs.true33.i.for.inc44.i_crit_edge, %for.body30.i.for.inc44.i_crit_edge
  %86 = ptrtoint ptr %.pn7382.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn73.i = load ptr, ptr %.pn7382.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn73.i, %subdevs.i
  br i1 %cmp28.not.i, label %for.inc44.i.em28xx_wake_i2c.exit_crit_edge, label %for.inc44.i.for.body30.i_crit_edge

for.inc44.i.for.body30.i_crit_edge:               ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30.i

for.inc44.i.em28xx_wake_i2c.exit_crit_edge:       ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_wake_i2c.exit

em28xx_wake_i2c.exit:                             ; preds = %for.inc44.i.em28xx_wake_i2c.exit_crit_edge, %for.cond25.preheader.i.em28xx_wake_i2c.exit_crit_edge
  %vidq = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 40
  %87 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %vidq, ptr %vidq, align 4
  %prev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 40, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %vidq, ptr %prev.i, align 4
  %vbiq = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 41
  %89 = ptrtoint ptr %vbiq to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %vbiq, ptr %vbiq, align 4
  %prev.i762 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 41, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i762 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %vbiq, ptr %prev.i762, align 4
  %91 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load150 = load i8, ptr %is_audio_only, align 4
  %92 = and i8 %bf.load150, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool154.not = icmp eq i8 %92, 0
  br i1 %tobool154.not, label %em28xx_wake_i2c.exit.if.end176_crit_edge, label %if.then155

em28xx_wake_i2c.exit.if.end176_crit_edge:         ; preds = %em28xx_wake_i2c.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then155:                                       ; preds = %em28xx_wake_i2c.exit
  %call156 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %do.end162, label %if.end165

do.end162:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %intf, align 4
  %dev164 = getelementptr inbounds %struct.usb_interface, ptr %94, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev164, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.57, i32 noundef %call156) #15
  br label %unregister_dev

if.end165:                                        ; preds = %if.then155
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #12
  %call166 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %do.end172, label %if.end175

do.end172:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf, align 4
  %dev174 = getelementptr inbounds %struct.usb_interface, ptr %96, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev174, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.57, i32 noundef %call166) #15
  br label %unregister_dev

if.end175:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #12
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %em28xx_wake_i2c.exit.if.end176_crit_edge
  %norm = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 20
  %97 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 255, ptr %norm, align 8
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn879 = load ptr, ptr %subdevs, align 8
  %cmp183.not881 = icmp eq ptr %.pn879, %subdevs
  br i1 %cmp183.not881, label %if.end176.do.end202_crit_edge, label %if.end176.for.body_crit_edge

if.end176.for.body_crit_edge:                     ; preds = %if.end176
  br label %for.body

if.end176.do.end202_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end202

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end176.for.body_crit_edge
  %.pn882 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn879, %if.end176.for.body_crit_edge ]
  %__sd.0883 = getelementptr i8, ptr %.pn882, i32 -80
  %ops = getelementptr i8, ptr %.pn882, i32 24
  %99 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %video, align 4
  %tobool185.not = icmp eq ptr %102, null
  br i1 %tobool185.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_std, align 4
  %tobool188.not = icmp eq ptr %104, null
  br i1 %tobool188.not, label %land.lhs.true.for.inc_crit_edge, label %if.then189

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then189:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %norm, align 8
  %call194 = tail call i32 %104(ptr noundef %__sd.0883, i64 noundef %106) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then189, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %107 = ptrtoint ptr %.pn882 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn = load ptr, ptr %.pn882, align 4
  %cmp183.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp183.not, label %for.inc.do.end202_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end202_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end202

do.end202:                                        ; preds = %for.inc.do.end202_crit_edge, %if.end176.do.end202_crit_edge
  %interlaced_fieldmode = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 22
  %108 = ptrtoint ptr %interlaced_fieldmode to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %interlaced_fieldmode, align 4
  %format = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 19
  %109 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @format, ptr %format, align 4
  %110 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i = load i8, ptr %is_audio_only, align 4
  %111 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i763 = icmp eq i8 %111, 0
  br i1 %tobool.not.i763, label %if.end.i, label %if.then.i764

if.then.i764:                                     ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %v4l214 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %v4l214, align 4
  %sensor_xres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %sensor_xres.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sensor_xres.i, align 4
  br label %norm_maxw.exit

if.end.i:                                         ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #14
  %max_range_640_480.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %116 = ptrtoint ptr %max_range_640_480.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load2.i = load i16, ptr %max_range_640_480.i, align 8
  %117 = and i16 %bf.load2.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool6.not.i765 = icmp eq i16 %117, 0
  %..i = select i1 %tobool6.not.i765, i32 720, i32 640
  br label %norm_maxw.exit

norm_maxw.exit:                                   ; preds = %if.end.i, %if.then.i764
  %retval.0.i = phi i32 [ %115, %if.then.i764 ], [ %..i, %if.end.i ]
  %is_em2800 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %118 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load207 = load i16, ptr %is_em2800, align 8
  %bf.load207.lobit = lshr i16 %bf.load207, 15
  %119 = zext i16 %bf.load207.lobit to i32
  %spec.select = lshr i32 %retval.0.i, %119
  %120 = load i32, ptr @format, align 4
  %121 = ptrtoint ptr %v4l214 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %v4l214, align 4
  br i1 %tobool.not.i763, label %if.end.i774, label %if.then.i770

if.then.i770:                                     ; preds = %norm_maxw.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sensor_yres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %122, i32 0, i32 14
  %123 = ptrtoint ptr %sensor_yres.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sensor_yres.i, align 8
  br label %norm_maxh.exit

if.end.i774:                                      ; preds = %norm_maxw.exit
  %125 = and i16 %bf.load207, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool6.not.i773 = icmp eq i16 %125, 0
  br i1 %tobool6.not.i773, label %if.end8.i, label %if.end.i774.norm_maxh.exit_crit_edge

if.end.i774.norm_maxh.exit_crit_edge:             ; preds = %if.end.i774
  call void @__sanitizer_cov_trace_pc() #14
  br label %norm_maxh.exit

if.end8.i:                                        ; preds = %if.end.i774
  call void @__sanitizer_cov_trace_pc() #14
  %norm.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %122, i32 0, i32 20
  %126 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %127, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool9.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool9.not.i, i32 480, i32 576
  br label %norm_maxh.exit

norm_maxh.exit:                                   ; preds = %if.end8.i, %if.end.i774.norm_maxh.exit_crit_edge, %if.then.i770
  %retval.0.i775 = phi i32 [ %124, %if.then.i770 ], [ %cond.i, %if.end8.i ], [ 480, %if.end.i774.norm_maxh.exit_crit_edge ]
  %call214 = tail call fastcc i32 @em28xx_set_video_format(ptr noundef %dev, i32 noundef %120, i32 noundef %spec.select, i32 noundef %retval.0.i775)
  tail call fastcc void @video_mux(ptr noundef %dev, i32 noundef 0)
  %mute = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 30
  %128 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %mute, align 4
  %volume = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 31
  %129 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 31, ptr %volume, align 8
  %call215 = tail call i32 @em28xx_read_reg(ptr noundef %dev, i16 noundef zeroext 15) #12
  %130 = trunc i32 %call215 to i8
  %conv218 = or i8 %130, -128
  %call219 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext %conv218) #12
  tail call fastcc void @em28xx_set_outfmt(ptr noundef %dev)
  %call221 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963777) #12
  %tobool222.not = icmp eq ptr %call221, null
  br i1 %tobool222.not, label %if.then223, label %norm_maxh.exit.if.end225_crit_edge

norm_maxh.exit.if.end225_crit_edge:               ; preds = %norm_maxh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

if.then223:                                       ; preds = %norm_maxh.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call224 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 16) #12
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %norm_maxh.exit.if.end225_crit_edge
  %call226 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963776) #12
  %tobool227.not = icmp eq ptr %call226, null
  br i1 %tobool227.not, label %if.then228, label %if.end225.if.end230_crit_edge

if.end225.if.end230_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end230

if.then228:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  %call229 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #12
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.end225.if.end230_crit_edge
  %call231 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963778) #12
  %tobool232.not = icmp eq ptr %call231, null
  br i1 %tobool232.not, label %if.then233, label %if.end230.if.end235_crit_edge

if.end230.if.end235_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235

if.then233:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  %call234 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 16) #12
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %if.end230.if.end235_crit_edge
  %call236 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963791) #12
  %tobool237.not = icmp eq ptr %call236, null
  br i1 %tobool237.not, label %if.then238, label %if.end235.if.end240_crit_edge

if.end235.if.end240_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end240

if.then238:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  %call239 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963791, i64 noundef -48, i64 noundef 48, i64 noundef 1, i64 noundef 0) #12
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.end235.if.end240_crit_edge
  %call241 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963790) #12
  %tobool242.not = icmp eq ptr %call241, null
  br i1 %tobool242.not, label %if.then243, label %if.end240.if.end245_crit_edge

if.end240.if.end245_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.then243:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  %call244 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963790, i64 noundef -48, i64 noundef 48, i64 noundef 1, i64 noundef 0) #12
  br label %if.end245

if.end245:                                        ; preds = %if.then243, %if.end240.if.end245_crit_edge
  %call246 = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 9963803) #12
  %tobool247.not = icmp eq ptr %call246, null
  br i1 %tobool247.not, label %if.then248, label %if.end245.if.end250_crit_edge

if.end245.if.end250_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

if.then248:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  %call249 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @em28xx_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 0) #12
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.end245.if.end250_crit_edge
  %call.i776 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 32, i8 noundef zeroext 16) #12
  %call1.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 33, i8 noundef zeroext 0) #12
  %call2.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 34, i8 noundef zeroext 16) #12
  %call3.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 35, i8 noundef zeroext 0) #12
  %call4.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 36, i8 noundef zeroext 0) #12
  %call5.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 37, i8 noundef zeroext 0) #12
  %call6.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 20, i8 noundef zeroext 32) #12
  %call7.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 21, i8 noundef zeroext 32) #12
  %call8.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 22, i8 noundef zeroext 32) #12
  %call9.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 23, i8 noundef zeroext 32) #12
  %call10.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 24, i8 noundef zeroext 0) #12
  %call11.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 25, i8 noundef zeroext 0) #12
  %call12.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 26, i8 noundef zeroext 0) #12
  %call252 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #12
  %error = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 3, i32 9
  %131 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool253.not = icmp eq i32 %132, 0
  br i1 %tobool253.not, label %if.end255, label %if.end250.unregister_dev_crit_edge

if.end250.unregister_dev_crit_edge:               ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister_dev

if.end255:                                        ; preds = %if.end250
  %vdev = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4
  tail call fastcc void @em28xx_vdev_init(ptr noundef %dev, ptr noundef %vdev, ptr noundef nonnull @em28xx_video_template, ptr noundef nonnull @.str.77)
  %vb_queue_lock = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.78, ptr noundef nonnull @em28xx_v4l2_init.__key) #12
  %vb_vbi_queue_lock = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %vb_vbi_queue_lock, ptr noundef nonnull @.str.80, ptr noundef nonnull @em28xx_v4l2_init.__key.79) #12
  %vb_vidq = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 7
  %queue = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 10
  %133 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %vb_vidq, ptr %queue, align 8
  %lock266 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 7, i32 5
  %134 = ptrtoint ptr %lock266 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %vb_queue_lock, ptr %lock266, align 4
  %device_caps = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 4
  %int_audio_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 9
  %135 = ptrtoint ptr %int_audio_type to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %int_audio_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp268.not = icmp eq i32 %136, 0
  %spec.store.select = select i1 %cmp268.not, i32 83886081, i32 84017153
  %137 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %spec.store.select, ptr %device_caps, align 8
  %tuner_type275 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 18
  %138 = ptrtoint ptr %tuner_type275 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tuner_type275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %cmp276.not = icmp eq i32 %139, 4
  br i1 %cmp276.not, label %if.end255.if.end282_crit_edge, label %if.then278

if.end255.if.end282_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.then278:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  %or281 = or i32 %spec.store.select, 65536
  %140 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or281, ptr %device_caps, align 8
  br label %if.end282

if.end282:                                        ; preds = %if.then278, %if.end255.if.end282_crit_edge
  %141 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load284 = load i8, ptr %is_audio_only, align 4
  %142 = and i8 %bf.load284, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool288.not = icmp eq i8 %142, 0
  %valid_ioctls.i785 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 25
  br i1 %tobool288.not, label %if.end282.if.end295_crit_edge, label %if.then289

if.end282.if.end295_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

if.then289:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 63, ptr noundef %valid_ioctls.i785) #12
  tail call void @_set_bit(i32 noundef 23, ptr noundef %valid_ioctls.i785) #12
  br label %if.end295

if.end295:                                        ; preds = %if.then289, %if.end282.if.end295_crit_edge
  %.sink = phi i32 [ 24, %if.then289 ], [ 22, %if.end282.if.end295_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %valid_ioctls.i785) #12
  %143 = ptrtoint ptr %tuner_type275 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tuner_type275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %144)
  %cmp297 = icmp eq i32 %144, 4
  br i1 %cmp297, label %if.then299, label %if.end295.if.end304_crit_edge

if.end295.if.end304_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end304

if.then299:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #14
  %valid_ioctls.i788 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 25
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i788) #12
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i788) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i788) #12
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i788) #12
  br label %if.end304

if.end304:                                        ; preds = %if.then299, %if.end295.if.end304_crit_edge
  %145 = ptrtoint ptr %int_audio_type to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %int_audio_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp306 = icmp eq i32 %146, 0
  br i1 %cmp306, label %if.then308, label %if.end304.if.end311_crit_edge

if.end304.if.end311_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end311

if.then308:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #14
  %valid_ioctls.i800 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 25
  tail call void @_set_bit(i32 noundef 33, ptr noundef %valid_ioctls.i800) #12
  tail call void @_set_bit(i32 noundef 34, ptr noundef %valid_ioctls.i800) #12
  br label %if.end311

if.end311:                                        ; preds = %if.then308, %if.end304.if.end311_crit_edge
  %devno = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 6
  %147 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %devno, align 4
  %arrayidx313 = getelementptr [16 x i32], ptr @video_nr, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx313, align 4
  %fops.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 3
  %151 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fops.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %call.i806 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef %150, i32 noundef 1, ptr noundef %154) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i806)
  %tobool315.not = icmp eq i32 %call.i806, 0
  br i1 %tobool315.not, label %if.end322, label %do.end319

do.end319:                                        ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %intf, align 4
  %dev321 = getelementptr inbounds %struct.usb_interface, ptr %156, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev321, ptr noundef nonnull @.str.82, i32 noundef %call.i806) #15
  br label %unregister_dev

if.end322:                                        ; preds = %if.end311
  %157 = load i32, ptr @disable_vbi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %157)
  %cmp.i = icmp eq i32 %157, 1
  br i1 %cmp.i, label %if.end322.if.end373_crit_edge, label %if.end.i810

if.end322.if.end373_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end373

if.end.i810:                                      ; preds = %if.end322
  %158 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load.i808 = load i8, ptr %is_audio_only, align 4
  %159 = and i8 %bf.load.i808, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i809 = icmp eq i8 %159, 0
  br i1 %tobool.not.i809, label %em28xx_vbi_supported.exit, label %if.end.i810.if.end373_crit_edge

if.end.i810.if.end373_crit_edge:                  ; preds = %if.end.i810
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end373

em28xx_vbi_supported.exit:                        ; preds = %if.end.i810
  %chip_id.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %160 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %chip_id.i, align 8
  %162 = add i32 %161, -34
  %switch.and.i = and i32 %162, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.then326, label %em28xx_vbi_supported.exit.if.end373_crit_edge

em28xx_vbi_supported.exit.if.end373_crit_edge:    ; preds = %em28xx_vbi_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end373

if.then326:                                       ; preds = %em28xx_vbi_supported.exit
  %vbi_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5
  tail call fastcc void @em28xx_vdev_init(ptr noundef %dev, ptr noundef %vbi_dev, ptr noundef nonnull @em28xx_video_template, ptr noundef nonnull @.str.84)
  %vb_vbiq = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 8
  %queue328 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 10
  %163 = ptrtoint ptr %queue328 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %vb_vbiq, ptr %queue328, align 8
  %lock332 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 8, i32 5
  %164 = ptrtoint ptr %lock332 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %vb_vbi_queue_lock, ptr %lock332, align 4
  %device_caps334 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 4
  %165 = ptrtoint ptr %tuner_type275 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tuner_type275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %166)
  %cmp336.not = icmp eq i32 %166, 4
  %spec.store.select761 = select i1 %cmp336.not, i32 83886096, i32 83951632
  %167 = ptrtoint ptr %device_caps334 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %spec.store.select761, ptr %device_caps334, align 8
  %valid_ioctls.i812 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 25
  tail call void @_set_bit(i32 noundef 22, ptr noundef %valid_ioctls.i812) #12
  %168 = ptrtoint ptr %tuner_type275 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tuner_type275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %169)
  %cmp345 = icmp eq i32 %169, 4
  br i1 %cmp345, label %if.then347, label %if.then326.if.end352_crit_edge

if.then326.if.end352_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end352

if.then347:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i812) #12
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i812) #12
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i812) #12
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i812) #12
  br label %if.end352

if.end352:                                        ; preds = %if.then347, %if.then326.if.end352_crit_edge
  %170 = ptrtoint ptr %int_audio_type to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %int_audio_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp354 = icmp eq i32 %171, 0
  br i1 %cmp354, label %if.then356, label %if.end352.if.end359_crit_edge

if.end352.if.end359_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end359

if.then356:                                       ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 33, ptr noundef %valid_ioctls.i812) #12
  tail call void @_set_bit(i32 noundef 34, ptr noundef %valid_ioctls.i812) #12
  br label %if.end359

if.end359:                                        ; preds = %if.then356, %if.end352.if.end359_crit_edge
  %172 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %devno, align 4
  %arrayidx362 = getelementptr [16 x i32], ptr @vbi_nr, i32 0, i32 %173
  %174 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx362, align 4
  %fops.i833 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 3
  %176 = ptrtoint ptr %fops.i833 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %fops.i833, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %call.i834 = tail call i32 @__video_register_device(ptr noundef %vbi_dev, i32 noundef 1, i32 noundef %175, i32 noundef 1, ptr noundef %179) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i834)
  %cmp364 = icmp slt i32 %call.i834, 0
  br i1 %cmp364, label %do.end369, label %if.end359.if.end373_crit_edge

if.end359.if.end373_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end373

do.end369:                                        ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %intf, align 4
  %dev371 = getelementptr inbounds %struct.usb_interface, ptr %181, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev371, ptr noundef nonnull @.str.86) #15
  br label %unregister_dev

if.end373:                                        ; preds = %if.end359.if.end373_crit_edge, %em28xx_vbi_supported.exit.if.end373_crit_edge, %if.end.i810.if.end373_crit_edge, %if.end322.if.end373_crit_edge
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %182 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %model, align 8
  %radio375 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %183, i32 18
  %184 = ptrtoint ptr %radio375 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %radio375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %185)
  %cmp377 = icmp eq i32 %185, 4
  br i1 %cmp377, label %if.then379, label %if.end373.if.end402_crit_edge

if.end373.if.end402_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end402

if.then379:                                       ; preds = %if.end373
  %radio_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6
  tail call fastcc void @em28xx_vdev_init(ptr noundef %dev, ptr noundef %radio_dev, ptr noundef nonnull @em28xx_radio_template, ptr noundef nonnull @.str.88)
  %device_caps381 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6, i32 4
  %186 = ptrtoint ptr %device_caps381 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 327680, ptr %device_caps381, align 8
  %187 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %devno, align 4
  %arrayidx384 = getelementptr [16 x i32], ptr @radio_nr, i32 0, i32 %188
  %189 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx384, align 4
  %fops.i835 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6, i32 3
  %191 = ptrtoint ptr %fops.i835 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %fops.i835, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %call.i836 = tail call i32 @__video_register_device(ptr noundef %radio_dev, i32 noundef 2, i32 noundef %190, i32 noundef 1, ptr noundef %194) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i836)
  %cmp386 = icmp slt i32 %call.i836, 0
  %195 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %intf, align 4
  %dev393 = getelementptr inbounds %struct.usb_interface, ptr %196, i32 0, i32 7
  br i1 %cmp386, label %do.end391, label %do.end397

do.end391:                                        ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev393, ptr noundef nonnull @.str.90) #15
  br label %unregister_dev

do.end397:                                        ; preds = %if.then379
  %init_name.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6, i32 5, i32 3
  %197 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %198, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end397.video_device_node_name.exit_crit_edge

do.end397.video_device_node_name.exit_crit_edge:  ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6, i32 5
  %199 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end397.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %200, %if.end.i.i ], [ %198, %do.end397.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev393, ptr noundef nonnull @.str.93, ptr noundef %retval.0.i.i) #15
  br label %if.end402

if.end402:                                        ; preds = %video_device_node_name.exit, %if.end373.if.end402_crit_edge
  tail call fastcc void @em28xx_v4l2_create_entities(ptr noundef %dev)
  %201 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %media_dev, align 4
  %call404 = tail call i32 @v4l2_mc_create_media_graph(ptr noundef %202) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  %203 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %intf, align 4
  %dev417 = getelementptr inbounds %struct.usb_interface, ptr %204, i32 0, i32 7
  br i1 %tobool405.not, label %do.end415, label %do.end409

do.end409:                                        ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev417, ptr noundef nonnull @.str.96) #15
  tail call fastcc void @em28xx_v4l2_media_release(ptr noundef %dev)
  br label %unregister_dev

do.end415:                                        ; preds = %if.end402
  %init_name.i.i837 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 3
  %205 = ptrtoint ptr %init_name.i.i837 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %init_name.i.i837, align 8
  %tobool.not.i.i838 = icmp eq ptr %206, null
  br i1 %tobool.not.i.i838, label %if.end.i.i840, label %do.end415.video_device_node_name.exit842_crit_edge

do.end415.video_device_node_name.exit842_crit_edge: ; preds = %do.end415
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit842

if.end.i.i840:                                    ; preds = %do.end415
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i839 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 5
  %207 = ptrtoint ptr %dev.i839 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i839, align 8
  br label %video_device_node_name.exit842

video_device_node_name.exit842:                   ; preds = %if.end.i.i840, %do.end415.video_device_node_name.exit842_crit_edge
  %retval.0.i.i841 = phi ptr [ %208, %if.end.i.i840 ], [ %206, %do.end415.video_device_node_name.exit842_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev417, ptr noundef nonnull @.str.99, ptr noundef %retval.0.i.i841) #15
  %flags.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 17
  %209 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %flags.i, align 8
  %and1.i.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool422.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool422.not, label %video_device_node_name.exit842.do.body432_crit_edge, label %do.end426

video_device_node_name.exit842.do.body432_crit_edge: ; preds = %video_device_node_name.exit842
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body432

do.end426:                                        ; preds = %video_device_node_name.exit842
  %211 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %intf, align 4
  %dev428 = getelementptr inbounds %struct.usb_interface, ptr %212, i32 0, i32 7
  %init_name.i.i843 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 3
  %213 = ptrtoint ptr %init_name.i.i843 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %init_name.i.i843, align 8
  %tobool.not.i.i844 = icmp eq ptr %214, null
  br i1 %tobool.not.i.i844, label %if.end.i.i846, label %do.end426.video_device_node_name.exit848_crit_edge

do.end426.video_device_node_name.exit848_crit_edge: ; preds = %do.end426
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit848

if.end.i.i846:                                    ; preds = %do.end426
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i845 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 5
  %215 = ptrtoint ptr %dev.i845 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i845, align 8
  br label %video_device_node_name.exit848

video_device_node_name.exit848:                   ; preds = %if.end.i.i846, %do.end426.video_device_node_name.exit848_crit_edge
  %retval.0.i.i847 = phi ptr [ %216, %if.end.i.i846 ], [ %214, %do.end426.video_device_node_name.exit848_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev428, ptr noundef nonnull @.str.102, ptr noundef %retval.0.i.i847) #15
  br label %do.body432

do.body432:                                       ; preds = %video_device_node_name.exit848, %video_device_node_name.exit842.do.body432_crit_edge
  %217 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %217)
  %.pn759884 = load ptr, ptr %subdevs, align 8
  %cmp445.not886 = icmp eq ptr %.pn759884, %subdevs
  br i1 %cmp445.not886, label %do.body432.do.end469_crit_edge, label %do.body432.for.body448_crit_edge

do.body432.for.body448_crit_edge:                 ; preds = %do.body432
  br label %for.body448

do.body432.do.end469_crit_edge:                   ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end469

for.body448:                                      ; preds = %for.inc461.for.body448_crit_edge, %do.body432.for.body448_crit_edge
  %.pn759887 = phi ptr [ %.pn759, %for.inc461.for.body448_crit_edge ], [ %.pn759884, %do.body432.for.body448_crit_edge ]
  %__sd433.0888 = getelementptr i8, ptr %.pn759887, i32 -80
  %ops449 = getelementptr i8, ptr %.pn759887, i32 24
  %218 = ptrtoint ptr %ops449 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ops449, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tuner, align 4
  %tobool450.not = icmp eq ptr %221, null
  br i1 %tobool450.not, label %for.body448.for.inc461_crit_edge, label %land.lhs.true451

for.body448.for.inc461_crit_edge:                 ; preds = %for.body448
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc461

land.lhs.true451:                                 ; preds = %for.body448
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %tobool454.not = icmp eq ptr %223, null
  br i1 %tobool454.not, label %land.lhs.true451.for.inc461_crit_edge, label %if.then455

land.lhs.true451.for.inc461_crit_edge:            ; preds = %land.lhs.true451
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc461

if.then455:                                       ; preds = %land.lhs.true451
  call void @__sanitizer_cov_trace_pc() #14
  %call459 = tail call i32 %223(ptr noundef %__sd433.0888) #12
  br label %for.inc461

for.inc461:                                       ; preds = %if.then455, %land.lhs.true451.for.inc461_crit_edge, %for.body448.for.inc461_crit_edge
  %224 = ptrtoint ptr %.pn759887 to i32
  call void @__asan_load4_noabort(i32 %224)
  %.pn759 = load ptr, ptr %.pn759887, align 4
  %cmp445.not = icmp eq ptr %.pn759, %subdevs
  br i1 %cmp445.not, label %for.inc461.do.end469_crit_edge, label %for.inc461.for.body448_crit_edge

for.inc461.for.body448_crit_edge:                 ; preds = %for.inc461
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body448

for.inc461.do.end469_crit_edge:                   ; preds = %for.inc461
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end469

do.end469:                                        ; preds = %for.inc461.do.end469_crit_edge, %do.body432.do.end469_crit_edge
  tail call fastcc void @em28xx_vb2_setup(ptr noundef %dev)
  %225 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %intf, align 4
  %dev477 = getelementptr inbounds %struct.usb_interface, ptr %226, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev477, ptr noundef nonnull @.str.105) #15
  tail call fastcc void @kref_get(ptr noundef %dev)
  br label %cleanup.sink.split

unregister_dev:                                   ; preds = %do.end409, %do.end391, %do.end369, %do.end319, %if.end250.unregister_dev_crit_edge, %do.end172, %do.end162, %do.end135
  %ret.0 = phi i32 [ %call129, %do.end135 ], [ %call156, %do.end162 ], [ %call166, %do.end172 ], [ %132, %if.end250.unregister_dev_crit_edge ], [ %call.i806, %do.end319 ], [ %call.i834, %do.end369 ], [ %call.i836, %do.end391 ], [ %call404, %do.end409 ]
  %radio_dev480 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6
  %flags.i849 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6, i32 17
  %227 = ptrtoint ptr %flags.i849 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %flags.i849, align 8
  %and1.i.i850 = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i850)
  %tobool482.not = icmp eq i32 %and1.i.i850, 0
  br i1 %tobool482.not, label %unregister_dev.if.end492_crit_edge, label %do.end486

unregister_dev.if.end492_crit_edge:               ; preds = %unregister_dev
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end492

do.end486:                                        ; preds = %unregister_dev
  %229 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %intf, align 4
  %dev488 = getelementptr inbounds %struct.usb_interface, ptr %230, i32 0, i32 7
  %init_name.i.i851 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6, i32 5, i32 3
  %231 = ptrtoint ptr %init_name.i.i851 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %init_name.i.i851, align 8
  %tobool.not.i.i852 = icmp eq ptr %232, null
  br i1 %tobool.not.i.i852, label %if.end.i.i854, label %do.end486.video_device_node_name.exit856_crit_edge

do.end486.video_device_node_name.exit856_crit_edge: ; preds = %do.end486
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit856

if.end.i.i854:                                    ; preds = %do.end486
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i853 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 6, i32 5
  %233 = ptrtoint ptr %dev.i853 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i853, align 8
  br label %video_device_node_name.exit856

video_device_node_name.exit856:                   ; preds = %if.end.i.i854, %do.end486.video_device_node_name.exit856_crit_edge
  %retval.0.i.i855 = phi ptr [ %234, %if.end.i.i854 ], [ %232, %do.end486.video_device_node_name.exit856_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev488, ptr noundef nonnull @.str.108, ptr noundef %retval.0.i.i855) #15
  tail call void @video_unregister_device(ptr noundef %radio_dev480) #12
  br label %if.end492

if.end492:                                        ; preds = %video_device_node_name.exit856, %unregister_dev.if.end492_crit_edge
  %vbi_dev493 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5
  %flags.i857 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 17
  %235 = ptrtoint ptr %flags.i857 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %flags.i857, align 8
  %and1.i.i858 = and i32 %236, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i858)
  %tobool495.not = icmp eq i32 %and1.i.i858, 0
  br i1 %tobool495.not, label %if.end492.if.end505_crit_edge, label %do.end499

if.end492.if.end505_crit_edge:                    ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end505

do.end499:                                        ; preds = %if.end492
  %237 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %intf, align 4
  %dev501 = getelementptr inbounds %struct.usb_interface, ptr %238, i32 0, i32 7
  %init_name.i.i859 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 3
  %239 = ptrtoint ptr %init_name.i.i859 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %init_name.i.i859, align 8
  %tobool.not.i.i860 = icmp eq ptr %240, null
  br i1 %tobool.not.i.i860, label %if.end.i.i862, label %do.end499.video_device_node_name.exit864_crit_edge

do.end499.video_device_node_name.exit864_crit_edge: ; preds = %do.end499
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit864

if.end.i.i862:                                    ; preds = %do.end499
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i861 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 5, i32 5
  %241 = ptrtoint ptr %dev.i861 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev.i861, align 8
  br label %video_device_node_name.exit864

video_device_node_name.exit864:                   ; preds = %if.end.i.i862, %do.end499.video_device_node_name.exit864_crit_edge
  %retval.0.i.i863 = phi ptr [ %242, %if.end.i.i862 ], [ %240, %do.end499.video_device_node_name.exit864_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev501, ptr noundef nonnull @.str.108, ptr noundef %retval.0.i.i863) #15
  tail call void @video_unregister_device(ptr noundef %vbi_dev493) #12
  br label %if.end505

if.end505:                                        ; preds = %video_device_node_name.exit864, %if.end492.if.end505_crit_edge
  %vdev506 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4
  %flags.i865 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 17
  %243 = ptrtoint ptr %flags.i865 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile i32, ptr %flags.i865, align 8
  %and1.i.i866 = and i32 %244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i866)
  %tobool508.not = icmp eq i32 %and1.i.i866, 0
  br i1 %tobool508.not, label %if.end505.if.end518_crit_edge, label %do.end512

if.end505.if.end518_crit_edge:                    ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end518

do.end512:                                        ; preds = %if.end505
  %245 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %intf, align 4
  %dev514 = getelementptr inbounds %struct.usb_interface, ptr %246, i32 0, i32 7
  %init_name.i.i867 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 3
  %247 = ptrtoint ptr %init_name.i.i867 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %init_name.i.i867, align 8
  %tobool.not.i.i868 = icmp eq ptr %248, null
  br i1 %tobool.not.i.i868, label %if.end.i.i870, label %do.end512.video_device_node_name.exit872_crit_edge

do.end512.video_device_node_name.exit872_crit_edge: ; preds = %do.end512
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit872

if.end.i.i870:                                    ; preds = %do.end512
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i869 = getelementptr inbounds %struct.em28xx_v4l2, ptr %call7.i.i, i32 0, i32 4, i32 5
  %249 = ptrtoint ptr %dev.i869 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i869, align 8
  br label %video_device_node_name.exit872

video_device_node_name.exit872:                   ; preds = %if.end.i.i870, %do.end512.video_device_node_name.exit872_crit_edge
  %retval.0.i.i871 = phi ptr [ %250, %if.end.i.i870 ], [ %248, %do.end512.video_device_node_name.exit872_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev514, ptr noundef nonnull @.str.108, ptr noundef %retval.0.i.i871) #15
  tail call void @video_unregister_device(ptr noundef %vdev506) #12
  br label %if.end518

if.end518:                                        ; preds = %video_device_node_name.exit872, %if.end505.if.end518_crit_edge
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  br label %err

err:                                              ; preds = %if.end518, %do.end22
  %ret.1 = phi i32 [ %call18, %do.end22 ], [ %ret.0, %if.end518 ]
  %251 = ptrtoint ptr %v4l214 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %v4l214, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @llvm.prefetch.p0(ptr %call7.i.i, i32 1, i32 3, i32 1) #12
  %252 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call7.i.i, ptr %call7.i.i, i32 1, ptr elementtype(i32) %call7.i.i) #12, !srcloc !471
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %252, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i873, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup.sink.split_crit_edge, label %if.then10.i.i.i.i, !prof !472

if.end5.i.i.i.i.cleanup.sink.split_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %call7.i.i, i32 noundef 3) #12
  br label %cleanup.sink.split

if.then.i873:                                     ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !473
  %253 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev13, align 4
  %v4l21.i875 = getelementptr inbounds %struct.em28xx, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %v4l21.i875 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr null, ptr %v4l21.i875, align 4
  tail call void @kfree(ptr noundef %call7.i.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i873, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup.sink.split_crit_edge, %do.end469, %do.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.end469 ], [ -12, %do.end.cleanup.sink.split_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.cleanup.sink.split_crit_edge ], [ %ret.1, %if.then10.i.i.i.i ], [ %ret.1, %if.then.i873 ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_v4l2_fini(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %3 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %4 = icmp ne i8 %3, 32
  %tobool9.not = icmp eq ptr %1, null
  %or.cond77 = select i1 %4, i1 true, i1 %tobool9.not
  br i1 %or.cond77, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.185) #15
  %lock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %v4l2_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 2
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #12
  tail call void @em28xx_uninit_usb_xfer(ptr noundef %dev, i32 noundef 1) #12
  %model.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %model.i, align 8
  %arrayidx1.i = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %8, i32 17, i32 0
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end.em28xx_v4l2_media_release.exit_crit_edge, label %if.end.i

do.end.em28xx_v4l2_media_release.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_v4l2_media_release.exit

if.end.i:                                         ; preds = %do.end
  %arrayidx2.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 0
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.i) #12
  %11 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %model.i, align 8
  %arrayidx1.1.i = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %12, i32 17, i32 1
  %13 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i, label %if.end.i.em28xx_v4l2_media_release.exit_crit_edge, label %if.end.1.i

if.end.i.em28xx_v4l2_media_release.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_v4l2_media_release.exit

if.end.1.i:                                       ; preds = %if.end.i
  %arrayidx2.1.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.1.i) #12
  %15 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %model.i, align 8
  %arrayidx1.2.i = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %16, i32 17, i32 2
  %17 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.2.i = icmp eq i32 %18, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.em28xx_v4l2_media_release.exit_crit_edge, label %if.end.2.i

if.end.1.i.em28xx_v4l2_media_release.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_v4l2_media_release.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  %arrayidx2.2.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 2
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.2.i) #12
  %19 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %model.i, align 8
  %arrayidx1.3.i = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %20, i32 17, i32 3
  %21 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.3.i = icmp eq i32 %22, 0
  br i1 %tobool.not.3.i, label %if.end.2.i.em28xx_v4l2_media_release.exit_crit_edge, label %if.end.3.i

if.end.2.i.em28xx_v4l2_media_release.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_v4l2_media_release.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx2.3.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 3
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.3.i) #12
  br label %em28xx_v4l2_media_release.exit

em28xx_v4l2_media_release.exit:                   ; preds = %if.end.3.i, %if.end.2.i.em28xx_v4l2_media_release.exit_crit_edge, %if.end.1.i.em28xx_v4l2_media_release.exit_crit_edge, %if.end.i.em28xx_v4l2_media_release.exit_crit_edge, %do.end.em28xx_v4l2_media_release.exit_crit_edge
  %radio_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 6
  %flags.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 6, i32 17
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool13.not, label %em28xx_v4l2_media_release.exit.if.end23_crit_edge, label %do.end17

em28xx_v4l2_media_release.exit.if.end23_crit_edge: ; preds = %em28xx_v4l2_media_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.end17:                                         ; preds = %em28xx_v4l2_media_release.exit
  %25 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf, align 4
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  %init_name.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 6, i32 5, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end17.video_device_node_name.exit_crit_edge

do.end17.video_device_node_name.exit_crit_edge:   ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end17.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %do.end17.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.108, ptr noundef %retval.0.i.i) #15
  tail call void @video_unregister_device(ptr noundef %radio_dev) #12
  br label %if.end23

if.end23:                                         ; preds = %video_device_node_name.exit, %em28xx_v4l2_media_release.exit.if.end23_crit_edge
  %vbi_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 5
  %flags.i78 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 5, i32 17
  %31 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i78, align 4
  %and1.i.i79 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i79)
  %tobool25.not = icmp eq i32 %and1.i.i79, 0
  br i1 %tobool25.not, label %if.end23.if.end35_crit_edge, label %do.end29

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end29:                                         ; preds = %if.end23
  %33 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf, align 4
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  %init_name.i.i80 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 5, i32 5, i32 3
  %35 = ptrtoint ptr %init_name.i.i80 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i80, align 8
  %tobool.not.i.i81 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i81, label %if.end.i.i83, label %do.end29.video_device_node_name.exit85_crit_edge

do.end29.video_device_node_name.exit85_crit_edge: ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit85

if.end.i.i83:                                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i82 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 5, i32 5
  %37 = ptrtoint ptr %dev.i82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i82, align 4
  br label %video_device_node_name.exit85

video_device_node_name.exit85:                    ; preds = %if.end.i.i83, %do.end29.video_device_node_name.exit85_crit_edge
  %retval.0.i.i84 = phi ptr [ %38, %if.end.i.i83 ], [ %36, %do.end29.video_device_node_name.exit85_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.108, ptr noundef %retval.0.i.i84) #15
  tail call void @video_unregister_device(ptr noundef %vbi_dev) #12
  br label %if.end35

if.end35:                                         ; preds = %video_device_node_name.exit85, %if.end23.if.end35_crit_edge
  %vdev = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 4
  %flags.i86 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 4, i32 17
  %39 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i86, align 4
  %and1.i.i87 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i87)
  %tobool37.not = icmp eq i32 %and1.i.i87, 0
  br i1 %tobool37.not, label %if.end35.if.end47_crit_edge, label %do.end41

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end41:                                         ; preds = %if.end35
  %41 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intf, align 4
  %dev43 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7
  %init_name.i.i88 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 4, i32 5, i32 3
  %43 = ptrtoint ptr %init_name.i.i88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i88, align 8
  %tobool.not.i.i89 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i89, label %if.end.i.i91, label %do.end41.video_device_node_name.exit93_crit_edge

do.end41.video_device_node_name.exit93_crit_edge: ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit93

if.end.i.i91:                                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i90 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 4, i32 5
  %45 = ptrtoint ptr %dev.i90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i90, align 4
  br label %video_device_node_name.exit93

video_device_node_name.exit93:                    ; preds = %if.end.i.i91, %do.end41.video_device_node_name.exit93_crit_edge
  %retval.0.i.i92 = phi ptr [ %46, %if.end.i.i91 ], [ %44, %do.end41.video_device_node_name.exit93_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.108, ptr noundef %retval.0.i.i92) #15
  tail call void @video_unregister_device(ptr noundef %vdev) #12
  br label %if.end47

if.end47:                                         ; preds = %video_device_node_name.exit93, %if.end35.if.end47_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 3
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #12
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #12, !srcloc !471
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !472

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !473
  %dev.i102 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i102, align 4
  %v4l21.i = getelementptr inbounds %struct.em28xx, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %v4l21.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %v4l21.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %call.i.i.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @llvm.prefetch.p0(ptr %dev, i32 1, i32 3, i32 1) #12
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev, ptr %dev, i32 1, ptr elementtype(i32) %dev) #12, !srcloc !471
  %asmresult.i.i.i.i.i.i.i95 = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i95)
  %cmp.i.i.i.i96 = icmp eq i32 %asmresult.i.i.i.i.i.i.i95, 1
  br i1 %cmp.i.i.i.i96, label %if.then.i100, label %if.end5.i.i.i.i98

if.end5.i.i.i.i98:                                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i95)
  %.not.i.i.i.i97 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i95, 0
  br i1 %.not.i.i.i.i97, label %if.end5.i.i.i.i98.cleanup_crit_edge, label %if.then10.i.i.i.i99, !prof !472

if.end5.i.i.i.i98.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i99:                              ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %dev, i32 noundef 3) #12
  br label %cleanup

if.then.i100:                                     ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @em28xx_free_device(ptr noundef %dev) #12, !callees !474
  br label %cleanup

cleanup:                                          ; preds = %if.then.i100, %if.then10.i.i.i.i99, %if.end5.i.i.i.i98.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_v4l2_suspend(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %.not = icmp eq i8 %1, 32
  br i1 %.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.193) #15
  tail call void @em28xx_stop_urbs(ptr noundef %dev) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_v4l2_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %.not = icmp eq i8 %1, 32
  br i1 %.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.195) #15
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_tuner_addrs(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @v4l2_i2c_subdev_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_tuner_setup(ptr noundef %dev, i16 noundef zeroext %tuner_addr) unnamed_addr #1 align 64 {
entry:
  %tun_setup = alloca %struct.tuner_setup, align 4
  %f = alloca %struct.v4l2_frequency, align 4
  %tda9887_cfg = alloca %struct.v4l2_priv_tun_config, align 4
  %xc2028_cfg = alloca %struct.v4l2_priv_tun_config, align 8
  %ctl = alloca %struct.xc2028_ctrl, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup) #12
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f) #12
  %2 = call ptr @memset(ptr %f, i32 255, i32 44)
  %3 = call ptr @memset(ptr %tun_setup, i32 0, i32 16)
  %mode_mask = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %4 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %mode_mask, align 4
  %tuner_callback = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_callback to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @em28xx_tuner_callback, ptr %tuner_callback, align 4
  %radio = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then:                                          ; preds = %entry
  %type6 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %8 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %type6, align 4
  %radio_addr = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 13
  %9 = ptrtoint ptr %radio_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %radio_addr, align 4
  %conv = zext i8 %10 to i16
  %11 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %tun_setup, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn272273 = load ptr, ptr %subdevs, align 4
  %cmp.not275 = icmp eq ptr %.pn272273, %subdevs
  br i1 %cmp.not275, label %if.then.if.end26_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn272276 = phi ptr [ %.pn272, %for.inc.for.body_crit_edge ], [ %.pn272273, %if.then.for.body_crit_edge ]
  %__sd.0277 = getelementptr i8, ptr %.pn272276, i32 -80
  %ops = getelementptr i8, ptr %.pn272276, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tuner, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_type_addr = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %s_type_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_type_addr, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true.for.inc_crit_edge, label %if.then15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = call i32 %18(ptr noundef %__sd.0277, ptr noundef nonnull %tun_setup) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn272276 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn272 = load ptr, ptr %.pn272276, align 4
  %cmp.not = icmp eq ptr %.pn272, %subdevs
  br i1 %cmp.not, label %for.inc.if.end26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end26_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %for.inc.if.end26_crit_edge, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 18
  %20 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tuner_type, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %21, label %if.then32 [
    i32 4, label %if.end26.if.end76_crit_edge
    i32 0, label %if.end26.if.end76_crit_edge298
  ]

if.end26.if.end76_crit_edge298:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end26.if.end76_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then32:                                        ; preds = %if.end26
  %type34 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %23 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %type34, align 4
  %24 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %tuner_addr, ptr %tun_setup, align 4
  %subdevs40 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %subdevs40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn271278 = load ptr, ptr %subdevs40, align 4
  %cmp47.not280 = icmp eq ptr %.pn271278, %subdevs40
  br i1 %cmp47.not280, label %if.then32.if.end76_crit_edge, label %if.then32.for.body50_crit_edge

if.then32.for.body50_crit_edge:                   ; preds = %if.then32
  br label %for.body50

if.then32.if.end76_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

for.body50:                                       ; preds = %for.inc65.for.body50_crit_edge, %if.then32.for.body50_crit_edge
  %.pn271281 = phi ptr [ %.pn271, %for.inc65.for.body50_crit_edge ], [ %.pn271278, %if.then32.for.body50_crit_edge ]
  %__sd37.0282 = getelementptr i8, ptr %.pn271281, i32 -80
  %ops51 = getelementptr i8, ptr %.pn271281, i32 24
  %26 = ptrtoint ptr %ops51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops51, align 4
  %tuner52 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %tuner52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner52, align 4
  %tobool53.not = icmp eq ptr %29, null
  br i1 %tobool53.not, label %for.body50.for.inc65_crit_edge, label %land.lhs.true54

for.body50.for.inc65_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc65

land.lhs.true54:                                  ; preds = %for.body50
  %s_type_addr57 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %s_type_addr57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_type_addr57, align 4
  %tobool58.not = icmp eq ptr %31, null
  br i1 %tobool58.not, label %land.lhs.true54.for.inc65_crit_edge, label %if.then59

land.lhs.true54.for.inc65_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc65

if.then59:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  %call63 = call i32 %31(ptr noundef %__sd37.0282, ptr noundef nonnull %tun_setup) #12
  br label %for.inc65

for.inc65:                                        ; preds = %if.then59, %land.lhs.true54.for.inc65_crit_edge, %for.body50.for.inc65_crit_edge
  %32 = ptrtoint ptr %.pn271281 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn271 = load ptr, ptr %.pn271281, align 4
  %cmp47.not = icmp eq ptr %.pn271, %subdevs40
  br i1 %cmp47.not, label %for.inc65.if.end76_crit_edge, label %for.inc65.for.body50_crit_edge

for.inc65.for.body50_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body50

for.inc65.if.end76_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.end76:                                         ; preds = %for.inc65.if.end76_crit_edge, %if.then32.if.end76_crit_edge, %if.end26.if.end76_crit_edge, %if.end26.if.end76_crit_edge298
  %tda9887_conf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 5
  %33 = ptrtoint ptr %tda9887_conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tda9887_conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool78.not = icmp eq i32 %34, 0
  br i1 %tobool78.not, label %if.end76.if.end122_crit_edge, label %if.then79

if.end76.if.end122_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122

if.then79:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tda9887_cfg) #12
  %35 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %tda9887_cfg, i32 0, i32 1
  %36 = ptrtoint ptr %tda9887_cfg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 74, ptr %tda9887_cfg, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tda9887_conf, ptr %35, align 4
  %subdevs87 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %subdevs87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn270283 = load ptr, ptr %subdevs87, align 4
  %cmp94.not285 = icmp eq ptr %.pn270283, %subdevs87
  br i1 %cmp94.not285, label %if.then79.do.end119_crit_edge, label %if.then79.for.body97_crit_edge

if.then79.for.body97_crit_edge:                   ; preds = %if.then79
  br label %for.body97

if.then79.do.end119_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119

for.body97:                                       ; preds = %for.inc111.for.body97_crit_edge, %if.then79.for.body97_crit_edge
  %.pn270286 = phi ptr [ %.pn270, %for.inc111.for.body97_crit_edge ], [ %.pn270283, %if.then79.for.body97_crit_edge ]
  %__sd84.0287 = getelementptr i8, ptr %.pn270286, i32 -80
  %ops98 = getelementptr i8, ptr %.pn270286, i32 24
  %39 = ptrtoint ptr %ops98 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops98, align 4
  %tuner99 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %tuner99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tuner99, align 4
  %tobool100.not = icmp eq ptr %42, null
  br i1 %tobool100.not, label %for.body97.for.inc111_crit_edge, label %land.lhs.true101

for.body97.for.inc111_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc111

land.lhs.true101:                                 ; preds = %for.body97
  %s_config = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %s_config to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_config, align 4
  %tobool104.not = icmp eq ptr %44, null
  br i1 %tobool104.not, label %land.lhs.true101.for.inc111_crit_edge, label %if.then105

land.lhs.true101.for.inc111_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc111

if.then105:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  %call109 = call i32 %44(ptr noundef %__sd84.0287, ptr noundef nonnull %tda9887_cfg) #12
  br label %for.inc111

for.inc111:                                       ; preds = %if.then105, %land.lhs.true101.for.inc111_crit_edge, %for.body97.for.inc111_crit_edge
  %45 = ptrtoint ptr %.pn270286 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn270 = load ptr, ptr %.pn270286, align 4
  %cmp94.not = icmp eq ptr %.pn270, %subdevs87
  br i1 %cmp94.not, label %for.inc111.do.end119_crit_edge, label %for.inc111.for.body97_crit_edge

for.inc111.for.body97_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body97

for.inc111.do.end119_crit_edge:                   ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119

do.end119:                                        ; preds = %for.inc111.do.end119_crit_edge, %if.then79.do.end119_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tda9887_cfg) #12
  br label %if.end122

if.end122:                                        ; preds = %do.end119, %if.end76.if.end122_crit_edge
  %46 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %47)
  %cmp124 = icmp eq i32 %47, 71
  br i1 %cmp124, label %if.then126, label %if.end122.if.end169_crit_edge

if.end122.if.end169_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169

if.then126:                                       ; preds = %if.end122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xc2028_cfg) #12
  %48 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %xc2028_cfg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctl) #12
  %49 = ptrtoint ptr %xc2028_cfg to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 304942678016, ptr %xc2028_cfg, align 8
  %50 = call ptr @memset(ptr %ctl, i32 0, i32 28)
  call void @em28xx_setup_xc3028(ptr noundef %dev, ptr noundef nonnull %ctl) #12
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ctl, ptr %48, align 4
  %subdevs133 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %subdevs133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn269288 = load ptr, ptr %subdevs133, align 4
  %cmp140.not290 = icmp eq ptr %.pn269288, %subdevs133
  br i1 %cmp140.not290, label %if.then126.do.end166_crit_edge, label %if.then126.for.body143_crit_edge

if.then126.for.body143_crit_edge:                 ; preds = %if.then126
  br label %for.body143

if.then126.do.end166_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166

for.body143:                                      ; preds = %for.inc158.for.body143_crit_edge, %if.then126.for.body143_crit_edge
  %.pn269291 = phi ptr [ %.pn269, %for.inc158.for.body143_crit_edge ], [ %.pn269288, %if.then126.for.body143_crit_edge ]
  %__sd130.0292 = getelementptr i8, ptr %.pn269291, i32 -80
  %ops144 = getelementptr i8, ptr %.pn269291, i32 24
  %53 = ptrtoint ptr %ops144 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops144, align 4
  %tuner145 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %tuner145 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tuner145, align 4
  %tobool146.not = icmp eq ptr %56, null
  br i1 %tobool146.not, label %for.body143.for.inc158_crit_edge, label %land.lhs.true147

for.body143.for.inc158_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc158

land.lhs.true147:                                 ; preds = %for.body143
  %s_config150 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %s_config150 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_config150, align 4
  %tobool151.not = icmp eq ptr %58, null
  br i1 %tobool151.not, label %land.lhs.true147.for.inc158_crit_edge, label %if.then152

land.lhs.true147.for.inc158_crit_edge:            ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc158

if.then152:                                       ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #14
  %call156 = call i32 %58(ptr noundef %__sd130.0292, ptr noundef nonnull %xc2028_cfg) #12
  br label %for.inc158

for.inc158:                                       ; preds = %if.then152, %land.lhs.true147.for.inc158_crit_edge, %for.body143.for.inc158_crit_edge
  %59 = ptrtoint ptr %.pn269291 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn269 = load ptr, ptr %.pn269291, align 4
  %cmp140.not = icmp eq ptr %.pn269, %subdevs133
  br i1 %cmp140.not, label %for.inc158.do.end166_crit_edge, label %for.inc158.for.body143_crit_edge

for.inc158.for.body143_crit_edge:                 ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body143

for.inc158.do.end166_crit_edge:                   ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end166

do.end166:                                        ; preds = %for.inc158.do.end166_crit_edge, %if.then126.do.end166_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctl) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xc2028_cfg) #12
  br label %if.end169

if.end169:                                        ; preds = %do.end166, %if.end122.if.end169_crit_edge
  %60 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %f, align 4
  %type171 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %61 = ptrtoint ptr %type171 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %type171, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %62 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 9076, ptr %frequency, align 4
  %frequency173 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 18
  %63 = ptrtoint ptr %frequency173 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9076, ptr %frequency173, align 8
  %subdevs178 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 2, i32 2
  %64 = ptrtoint ptr %subdevs178 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn293 = load ptr, ptr %subdevs178, align 4
  %cmp185.not295 = icmp eq ptr %.pn293, %subdevs178
  br i1 %cmp185.not295, label %if.end169.do.end210_crit_edge, label %if.end169.for.body188_crit_edge

if.end169.for.body188_crit_edge:                  ; preds = %if.end169
  br label %for.body188

if.end169.do.end210_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end210

for.body188:                                      ; preds = %for.inc202.for.body188_crit_edge, %if.end169.for.body188_crit_edge
  %.pn296 = phi ptr [ %.pn, %for.inc202.for.body188_crit_edge ], [ %.pn293, %if.end169.for.body188_crit_edge ]
  %__sd175.0297 = getelementptr i8, ptr %.pn296, i32 -80
  %ops189 = getelementptr i8, ptr %.pn296, i32 24
  %65 = ptrtoint ptr %ops189 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops189, align 4
  %tuner190 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %tuner190 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tuner190, align 4
  %tobool191.not = icmp eq ptr %68, null
  br i1 %tobool191.not, label %for.body188.for.inc202_crit_edge, label %land.lhs.true192

for.body188.for.inc202_crit_edge:                 ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc202

land.lhs.true192:                                 ; preds = %for.body188
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_frequency, align 4
  %tobool195.not = icmp eq ptr %70, null
  br i1 %tobool195.not, label %land.lhs.true192.for.inc202_crit_edge, label %if.then196

land.lhs.true192.for.inc202_crit_edge:            ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc202

if.then196:                                       ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #14
  %call200 = call i32 %70(ptr noundef %__sd175.0297, ptr noundef nonnull %f) #12
  br label %for.inc202

for.inc202:                                       ; preds = %if.then196, %land.lhs.true192.for.inc202_crit_edge, %for.body188.for.inc202_crit_edge
  %71 = ptrtoint ptr %.pn296 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn = load ptr, ptr %.pn296, align 4
  %cmp185.not = icmp eq ptr %.pn, %subdevs178
  br i1 %cmp185.not, label %for.inc202.do.end210_crit_edge, label %for.inc202.for.body188_crit_edge

for.inc202.for.body188_crit_edge:                 ; preds = %for.inc202
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body188

for.inc202.do.end210_crit_edge:                   ; preds = %for.inc202
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end210

do.end210:                                        ; preds = %for.inc202.do.end210_crit_edge, %if.end169.do.end210_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_init_camera(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_audio_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_ctrl_notify(ptr nocapture noundef readonly %ctrl, ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 9963785, label %sw.bb
    i32 9963781, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %mute = getelementptr inbounds %struct.em28xx, ptr %priv, i32 0, i32 30
  %5 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mute, align 4
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val2, align 4
  %volume = getelementptr inbounds %struct.em28xx, ptr %priv, i32 0, i32 31
  %8 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %volume, align 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %call3 = tail call i32 @em28xx_audio_analog_set(ptr noundef %priv) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_set_video_format(ptr noundef %dev, i32 noundef %fourcc, i32 noundef %width, i32 noundef %height) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %2 = load i32, ptr @format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %fourcc)
  %cmp2.i = icmp eq i32 %2, %fourcc
  br i1 %cmp2.i, label %entry.if.end_crit_edge, label %for.cond.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.i:                                       ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %fourcc)
  %cmp2.1.i = icmp eq i32 %3, %fourcc
  br i1 %cmp2.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.1.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %4 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %fourcc)
  %cmp2.2.i = icmp eq i32 %4, %fourcc
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %5 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %fourcc)
  %cmp2.3.i = icmp eq i32 %5, %fourcc
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %6 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %fourcc)
  %cmp2.4.i = icmp eq i32 %6, %fourcc
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %7 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fourcc)
  %cmp2.5.i = icmp eq i32 %7, %fourcc
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end_crit_edge:                    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %8 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %fourcc)
  %cmp2.6.i = icmp eq i32 %8, %fourcc
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end_crit_edge, label %for.cond.5.i.cleanup_crit_edge

for.cond.5.i.cleanup_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.5.i.if.end_crit_edge:                    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.cond.5.i.if.end_crit_edge, %for.cond.4.i.if.end_crit_edge, %for.cond.3.i.if.end_crit_edge, %for.cond.2.i.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 5), %for.cond.4.i.if.end_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 4), %for.cond.3.i.if.end_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 3), %for.cond.2.i.if.end_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 2), %for.cond.1.i.if.end_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 1), %for.cond.i.if.end_crit_edge ], [ @format, %entry.if.end_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 6), %for.cond.5.i.if.end_crit_edge ]
  %format = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.ph, ptr %format, align 4
  %width2 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %width, ptr %width2, align 8
  %height3 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %height, ptr %height3, align 4
  %hscale = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 25
  %vscale = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 26
  %is_webcam.i.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %is_webcam.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %is_webcam.i.i, align 4
  %13 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i22.i, label %if.then.i18.i

if.then.i18.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l21, align 4
  %sensor_xres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %sensor_xres.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sensor_xres.i.i, align 4
  %sensor_yres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %15, i32 0, i32 14
  %18 = ptrtoint ptr %sensor_yres.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sensor_yres.i.i, align 8
  %phi.bo.i = shl i32 %17, 12
  br label %size_to_scale.exit

if.end.i22.i:                                     ; preds = %if.end
  %max_range_640_480.i.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %20 = ptrtoint ptr %max_range_640_480.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load2.i.i = load i16, ptr %max_range_640_480.i.i, align 8
  %21 = and i16 %bf.load2.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool6.not.i.i = icmp eq i16 %21, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i22.i.size_to_scale.exit_crit_edge

if.end.i22.i.size_to_scale.exit_crit_edge:        ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %size_to_scale.exit

if.end8.i.i:                                      ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v4l21, align 4
  %norm.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %norm.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %norm.i.i, align 8
  %and.i.i = and i64 %25, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool9.not.i.i = icmp eq i64 %and.i.i, 0
  %cond.i.i = select i1 %tobool9.not.i.i, i32 480, i32 576
  br label %size_to_scale.exit

size_to_scale.exit:                               ; preds = %if.end8.i.i, %if.end.i22.i.size_to_scale.exit_crit_edge, %if.then.i18.i
  %retval.0.i26.i = phi i32 [ %phi.bo.i, %if.then.i18.i ], [ 2949120, %if.end8.i.i ], [ 2621440, %if.end.i22.i.size_to_scale.exit_crit_edge ]
  %retval.0.i23.i = phi i32 [ %19, %if.then.i18.i ], [ %cond.i.i, %if.end8.i.i ], [ 480, %if.end.i22.i.size_to_scale.exit_crit_edge ]
  %div.i = udiv i32 %retval.0.i26.i, %width
  %sub.i = add i32 %div.i, -4096
  %26 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 16383) #12
  %27 = ptrtoint ptr %hscale to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %hscale, align 4
  %shl2.i = shl i32 %retval.0.i23.i, 12
  %div3.i = udiv i32 %shl2.i, %height
  %sub4.i = add i32 %div3.i, -4096
  %28 = tail call i32 @llvm.umin.i32(i32 %sub4.i, i32 16383) #12
  %29 = ptrtoint ptr %vscale to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %vscale, align 4
  tail call fastcc void @em28xx_resolution_set(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %size_to_scale.exit, %for.cond.5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %size_to_scale.exit ], [ -22, %for.cond.5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @video_mux(ptr noundef %dev, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2, align 4
  %ctl_input = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 26
  %2 = ptrtoint ptr %ctl_input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %index, ptr %ctl_input, align 8
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %model, align 8
  %amux = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %4, i32 17, i32 %index, i32 2
  %5 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %amux, align 4
  %ctl_ainput = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ctl_ainput, align 4
  %aout = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %4, i32 17, i32 %index, i32 3
  %8 = ptrtoint ptr %aout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aout, align 4
  %ctl_aoutput = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %9
  %10 = ptrtoint ptr %ctl_aoutput to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %ctl_aoutput, align 8
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn216 = load ptr, ptr %subdevs, align 4
  %cmp.not218 = icmp eq ptr %.pn216, %subdevs
  br i1 %cmp.not218, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn219 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn216, %entry.for.body_crit_edge ]
  %__sd.0220 = getelementptr i8, ptr %.pn219, i32 -80
  %ops = getelementptr i8, ptr %.pn219, i32 24
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %land.lhs.true.for.inc_crit_edge, label %if.then15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %model, align 8
  %vmux = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %19, i32 17, i32 %index, i32 1
  %20 = ptrtoint ptr %vmux to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vmux, align 4
  %call = tail call i32 %17(ptr noundef %__sd.0220, i32 noundef %21, i32 noundef 0, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn219 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn219, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %has_msp34xx = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %23 = ptrtoint ptr %has_msp34xx to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %has_msp34xx, align 4
  %24 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool31.not = icmp eq i8 %24, 0
  br i1 %tobool31.not, label %do.end.if.end114_crit_edge, label %if.then32

do.end.if.end114_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then32:                                        ; preds = %do.end
  %i2s_speed = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 16
  %25 = ptrtoint ptr %i2s_speed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2s_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool33.not = icmp eq i32 %26, 0
  br i1 %tobool33.not, label %if.then32.do.body74_crit_edge, label %for.cond43.preheader

if.then32.do.body74_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74

for.cond43.preheader:                             ; preds = %if.then32
  %27 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn215221 = load ptr, ptr %subdevs, align 4
  %cmp46.not223 = icmp eq ptr %.pn215221, %subdevs
  br i1 %cmp46.not223, label %for.cond43.preheader.do.body74_crit_edge, label %for.cond43.preheader.for.body48_crit_edge

for.cond43.preheader.for.body48_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body48

for.cond43.preheader.do.body74_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74

for.body48:                                       ; preds = %for.inc62.for.body48_crit_edge, %for.cond43.preheader.for.body48_crit_edge
  %.pn215224 = phi ptr [ %.pn215, %for.inc62.for.body48_crit_edge ], [ %.pn215221, %for.cond43.preheader.for.body48_crit_edge ]
  %__sd36.0225 = getelementptr i8, ptr %.pn215224, i32 -80
  %ops49 = getelementptr i8, ptr %.pn215224, i32 24
  %28 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops49, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %audio, align 4
  %tobool50.not = icmp eq ptr %31, null
  br i1 %tobool50.not, label %for.body48.for.inc62_crit_edge, label %land.lhs.true51

for.body48.for.inc62_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc62

land.lhs.true51:                                  ; preds = %for.body48
  %s_i2s_clock_freq = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %s_i2s_clock_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_i2s_clock_freq, align 4
  %tobool54.not = icmp eq ptr %33, null
  br i1 %tobool54.not, label %land.lhs.true51.for.inc62_crit_edge, label %if.then55

land.lhs.true51.for.inc62_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc62

if.then55:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %i2s_speed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i2s_speed, align 8
  %call60 = tail call i32 %33(ptr noundef %__sd36.0225, i32 noundef %35) #12
  br label %for.inc62

for.inc62:                                        ; preds = %if.then55, %land.lhs.true51.for.inc62_crit_edge, %for.body48.for.inc62_crit_edge
  %36 = ptrtoint ptr %.pn215224 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn215 = load ptr, ptr %.pn215224, align 4
  %cmp46.not = icmp eq ptr %.pn215, %subdevs
  br i1 %cmp46.not, label %for.inc62.do.body74_crit_edge, label %for.inc62.for.body48_crit_edge

for.inc62.for.body48_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body48

for.inc62.do.body74_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74

do.body74:                                        ; preds = %for.inc62.do.body74_crit_edge, %for.cond43.preheader.do.body74_crit_edge, %if.then32.do.body74_crit_edge
  %37 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn214226 = load ptr, ptr %subdevs, align 4
  %cmp85.not228 = icmp eq ptr %.pn214226, %subdevs
  br i1 %cmp85.not228, label %do.body74.if.end114_crit_edge, label %do.body74.for.body87_crit_edge

do.body74.for.body87_crit_edge:                   ; preds = %do.body74
  br label %for.body87

do.body74.if.end114_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

for.body87:                                       ; preds = %for.inc103.for.body87_crit_edge, %do.body74.for.body87_crit_edge
  %.pn214229 = phi ptr [ %.pn214, %for.inc103.for.body87_crit_edge ], [ %.pn214226, %do.body74.for.body87_crit_edge ]
  %__sd75.0230 = getelementptr i8, ptr %.pn214229, i32 -80
  %ops88 = getelementptr i8, ptr %.pn214229, i32 24
  %38 = ptrtoint ptr %ops88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops88, align 4
  %audio89 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %audio89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %audio89, align 4
  %tobool90.not = icmp eq ptr %41, null
  br i1 %tobool90.not, label %for.body87.for.inc103_crit_edge, label %land.lhs.true91

for.body87.for.inc103_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

land.lhs.true91:                                  ; preds = %for.body87
  %s_routing94 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %s_routing94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_routing94, align 4
  %tobool95.not = icmp eq ptr %43, null
  br i1 %tobool95.not, label %land.lhs.true91.for.inc103_crit_edge, label %if.then96

land.lhs.true91.for.inc103_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

if.then96:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctl_ainput, align 4
  %call101 = tail call i32 %43(ptr noundef %__sd75.0230, i32 noundef %45, i32 noundef 68, i32 noundef 0) #12
  br label %for.inc103

for.inc103:                                       ; preds = %if.then96, %land.lhs.true91.for.inc103_crit_edge, %for.body87.for.inc103_crit_edge
  %46 = ptrtoint ptr %.pn214229 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn214 = load ptr, ptr %.pn214229, align 4
  %cmp85.not = icmp eq ptr %.pn214, %subdevs
  br i1 %cmp85.not, label %for.inc103.if.end114_crit_edge, label %for.inc103.for.body87_crit_edge

for.inc103.for.body87_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body87

for.inc103.if.end114_crit_edge:                   ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.end114:                                        ; preds = %for.inc103.if.end114_crit_edge, %do.body74.if.end114_crit_edge, %do.end.if.end114_crit_edge
  %adecoder = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 16
  %47 = ptrtoint ptr %adecoder to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %adecoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp115.not = icmp eq i32 %48, 0
  br i1 %cmp115.not, label %if.end114.if.end158_crit_edge, label %for.cond125.preheader

if.end114.if.end158_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

for.cond125.preheader:                            ; preds = %if.end114
  %49 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn213231 = load ptr, ptr %subdevs, align 4
  %cmp128.not233 = icmp eq ptr %.pn213231, %subdevs
  br i1 %cmp128.not233, label %for.cond125.preheader.if.end158_crit_edge, label %for.cond125.preheader.for.body130_crit_edge

for.cond125.preheader.for.body130_crit_edge:      ; preds = %for.cond125.preheader
  br label %for.body130

for.cond125.preheader.if.end158_crit_edge:        ; preds = %for.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

for.body130:                                      ; preds = %for.inc147.for.body130_crit_edge, %for.cond125.preheader.for.body130_crit_edge
  %.pn213234 = phi ptr [ %.pn213, %for.inc147.for.body130_crit_edge ], [ %.pn213231, %for.cond125.preheader.for.body130_crit_edge ]
  %__sd118.0235 = getelementptr i8, ptr %.pn213234, i32 -80
  %ops131 = getelementptr i8, ptr %.pn213234, i32 24
  %50 = ptrtoint ptr %ops131 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops131, align 4
  %audio132 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %audio132 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %audio132, align 4
  %tobool133.not = icmp eq ptr %53, null
  br i1 %tobool133.not, label %for.body130.for.inc147_crit_edge, label %land.lhs.true134

for.body130.for.inc147_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc147

land.lhs.true134:                                 ; preds = %for.body130
  %s_routing137 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %s_routing137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_routing137, align 4
  %tobool138.not = icmp eq ptr %55, null
  br i1 %tobool138.not, label %land.lhs.true134.for.inc147_crit_edge, label %if.then139

land.lhs.true134.for.inc147_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc147

if.then139:                                       ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctl_ainput, align 4
  %58 = ptrtoint ptr %ctl_aoutput to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctl_aoutput, align 8
  %call145 = tail call i32 %55(ptr noundef %__sd118.0235, i32 noundef %57, i32 noundef %59, i32 noundef 0) #12
  br label %for.inc147

for.inc147:                                       ; preds = %if.then139, %land.lhs.true134.for.inc147_crit_edge, %for.body130.for.inc147_crit_edge
  %60 = ptrtoint ptr %.pn213234 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn213 = load ptr, ptr %.pn213234, align 4
  %cmp128.not = icmp eq ptr %.pn213, %subdevs
  br i1 %cmp128.not, label %for.inc147.if.end158_crit_edge, label %for.inc147.for.body130_crit_edge

for.inc147.for.body130_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body130

for.inc147.if.end158_crit_edge:                   ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.end158:                                        ; preds = %for.inc147.if.end158_crit_edge, %for.cond125.preheader.if.end158_crit_edge, %if.end114.if.end158_crit_edge
  %call159 = tail call i32 @em28xx_audio_analog_set(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_reg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_set_outfmt(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %format = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 4
  %reg = getelementptr inbounds %struct.em28xx_fmt, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %conv = trunc i32 %5 to i8
  %is_em25xx = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %is_em25xx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_em25xx, align 4
  %conv3 = or i8 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not4 = icmp slt i8 %bf.load, 0
  %fmt.0 = select i1 %tobool.not4, i8 %conv, i8 %conv3
  %call = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 39, i8 noundef zeroext %fmt.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %vinmode = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %vinmode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vinmode, align 8
  %call7 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 16, i8 noundef zeroext %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %vinctl = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %vinctl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vinctl, align 1
  %11 = load i32, ptr @disable_vbi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.end11.if.end34_crit_edge, label %if.end.i

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end.i:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %is_em25xx to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %is_em25xx, align 4
  %13 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %em28xx_vbi_supported.exit, label %if.end.i.if.end34_crit_edge

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

em28xx_vbi_supported.exit:                        ; preds = %if.end.i
  %chip_id.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip_id.i, align 8
  %16 = add i32 %15, -34
  %switch.and.i = and i32 %16, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.then15, label %em28xx_vbi_supported.exit.if.end34_crit_edge

em28xx_vbi_supported.exit.if.end34_crit_edge:     ; preds = %em28xx_vbi_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then15:                                        ; preds = %em28xx_vbi_supported.exit
  %17 = or i8 %10, 64
  %call19 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 52, i8 noundef zeroext 0) #12
  %vbi_width = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %vbi_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vbi_width, align 8
  %div1 = lshr i32 %19, 2
  %conv20 = trunc i32 %div1 to i8
  %call21 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 54, i8 noundef zeroext %conv20) #12
  %vbi_height = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 28
  %20 = ptrtoint ptr %vbi_height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vbi_height, align 4
  %conv22 = trunc i32 %21 to i8
  %call23 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 55, i8 noundef zeroext %conv22) #12
  %norm = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %norm, align 8
  %and = and i64 %23, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool24.not = icmp eq i64 %and, 0
  br i1 %tobool24.not, label %if.else, label %if.then15.if.end34.sink.split_crit_edge

if.then15.if.end34.sink.split_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.then15
  %and28 = and i64 %23, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.else.if.end34_crit_edge, label %if.else.if.end34.sink.split_crit_edge

if.else.if.end34.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.sink.split

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end34.sink.split:                              ; preds = %if.else.if.end34.sink.split_crit_edge, %if.then15.if.end34.sink.split_crit_edge
  %.sink = phi i8 [ 9, %if.then15.if.end34.sink.split_crit_edge ], [ 7, %if.else.if.end34.sink.split_crit_edge ]
  %call26 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 53, i8 noundef zeroext %.sink) #12
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else.if.end34_crit_edge, %em28xx_vbi_supported.exit.if.end34_crit_edge, %if.end.i.if.end34_crit_edge, %if.end11.if.end34_crit_edge
  %vinctrl.0 = phi i8 [ %17, %if.else.if.end34_crit_edge ], [ %10, %em28xx_vbi_supported.exit.if.end34_crit_edge ], [ %10, %if.end11.if.end34_crit_edge ], [ %10, %if.end.i.if.end34_crit_edge ], [ %17, %if.end34.sink.split ]
  %call35 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 17, i8 noundef zeroext %vinctrl.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_vdev_init(ptr noundef %dev, ptr nocapture noundef writeonly %vfd, ptr nocapture noundef readonly %template, ptr noundef %type_name) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %vfd, ptr %template, i32 1352)
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v4l2, align 4
  %v4l2_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %2, i32 0, i32 2
  %v4l2_dev1 = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 7
  %3 = ptrtoint ptr %v4l2_dev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %v4l2_dev, ptr %v4l2_dev1, align 4
  %lock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 35
  %lock2 = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 26
  %4 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock2, align 8
  %is_webcam = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %is_webcam to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %is_webcam, align 4
  %6 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 22
  %7 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %tvnorms, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  %init_name.i = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 12
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.118, ptr noundef %retval.0.i, ptr noundef %type_name)
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_v4l2_create_entities(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %video_pad = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 33
  %flags = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %flags, align 4
  %vdev = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 4
  %call = tail call i32 @media_entity_pads_init(ptr noundef %vdev, i16 noundef zeroext 1, ptr noundef %video_pad) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.158) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = load i32, ptr @disable_vbi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.end.if.end18_crit_edge, label %if.end.i

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end.i:                                         ; preds = %if.end
  %is_webcam.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %is_webcam.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_webcam.i, align 4
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %em28xx_vbi_supported.exit, label %if.end.i.if.end18_crit_edge

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

em28xx_vbi_supported.exit:                        ; preds = %if.end.i
  %chip_id.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %8 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_id.i, align 8
  %10 = add i32 %9, -34
  %switch.and.i = and i32 %10, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i.not = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i.not, label %if.then5, label %em28xx_vbi_supported.exit.if.end18_crit_edge

em28xx_vbi_supported.exit.if.end18_crit_edge:     ; preds = %em28xx_vbi_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then5:                                         ; preds = %em28xx_vbi_supported.exit
  %vbi_pad = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 34
  %flags6 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 34, i32 4
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %flags6, align 4
  %vbi_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 5
  %call9 = tail call i32 @media_entity_pads_init(ptr noundef %vbi_dev, i16 noundef zeroext 1, ptr noundef %vbi_pad) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.then5.if.end18_crit_edge

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end14:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %intf15 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %12 = ptrtoint ptr %intf15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf15, align 4
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.161) #15
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.then5.if.end18_crit_edge, %em28xx_vbi_supported.exit.if.end18_crit_edge, %if.end.i.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %is_webcam = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %is_webcam to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %is_webcam, align 4
  %15 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %for.cond.preheader, label %if.end18.cleanup68_crit_edge

if.end18.cleanup68_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

for.cond.preheader:                               ; preds = %if.end18
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 18
  %intf56 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0114 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 %i.0114
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %model, align 8
  %arrayidx24 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %17, i32 17, i32 %i.0114
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %for.body.cleanup68_crit_edge, label %if.end27

for.body.cleanup68_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.end27:                                         ; preds = %for.body
  %arrayidx33 = getelementptr [5 x ptr], ptr @iname, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx33, align 4
  %name = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 %i.0114, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %name, align 4
  %flags34 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 %i.0114, i32 4
  %23 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %flags34, align 4
  %arrayidx35 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 78, i32 %i.0114
  %flags36 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 78, i32 %i.0114, i32 4
  %24 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %flags36, align 4
  %25 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %model, align 8
  %arrayidx40 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %26, i32 17, i32 %i.0114
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx40, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %28, label %sw.default [
    i32 1, label %if.end27.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb42
  ]

if.end27.sw.epilog.sink.split_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb42:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.end27
  %30 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp44.not = icmp eq i32 %31, 4
  br i1 %cmp44.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %sw.bb42, %if.end27.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 196610, %sw.bb42 ], [ 196611, %if.end27.sw.epilog.sink.split_crit_edge ], [ 196609, %sw.default.sw.epilog.sink.split_crit_edge ]
  %function46 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 %i.0114, i32 3
  %32 = ptrtoint ptr %function46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %function46, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge
  %call50 = tail call i32 @media_entity_pads_init(ptr noundef %arrayidx, i16 noundef zeroext 1, ptr noundef %arrayidx35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %sw.epilog.if.end58_crit_edge

sw.epilog.if.end58_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

do.end55:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %intf56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf56, align 4
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.164, i32 noundef %i.0114) #15
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %sw.epilog.if.end58_crit_edge
  %35 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %media_dev, align 4
  %call59 = tail call i32 @media_device_register_entity(ptr noundef %36, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end58.for.inc_crit_edge

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %intf56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf56, align 4
  %dev66 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.167, i32 noundef %i.0114) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end64, %if.end58.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup68_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup68_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

cleanup68:                                        ; preds = %for.inc.cleanup68_crit_edge, %for.body.cleanup68_crit_edge, %if.end18.cleanup68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_mc_create_media_graph(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_v4l2_media_release(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 8
  %arrayidx1 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %1, i32 17, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 0
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2) #12
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 8
  %arrayidx1.1 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %5, i32 17, i32 1
  %6 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %arrayidx2.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.1) #12
  %8 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %model, align 8
  %arrayidx1.2 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %9, i32 17, i32 2
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %arrayidx2.2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 2
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.2) #12
  %12 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %model, align 8
  %arrayidx1.3 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %13, i32 17, i32 3
  %14 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3 = icmp eq i32 %15, 0
  br i1 %tobool.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx2.3 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 77, i32 3
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_vb2_setup(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %vb_vidq = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vb_vidq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vb_vidq, align 4
  %io_modes = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 23, ptr %io_modes, align 4
  %timestamp_flags = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 7, i32 13
  %4 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8192, ptr %timestamp_flags, align 4
  %drv_priv = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 7, i32 10
  %5 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 7, i32 12
  %6 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 768, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 7, i32 7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @em28xx_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 7, i32 8
  %8 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %vb_vidq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vb_vbiq = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %vb_vbiq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %vb_vbiq, align 4
  %io_modes3 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %io_modes3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %io_modes3, align 4
  %timestamp_flags4 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 8, i32 13
  %11 = ptrtoint ptr %timestamp_flags4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8192, ptr %timestamp_flags4, align 4
  %drv_priv5 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 8, i32 10
  %12 = ptrtoint ptr %drv_priv5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %drv_priv5, align 4
  %buf_struct_size6 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 8, i32 12
  %13 = ptrtoint ptr %buf_struct_size6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 768, ptr %buf_struct_size6, align 4
  %ops7 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @em28xx_vbi_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 8, i32 8
  %15 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops8, align 4
  %call9 = tail call i32 @vb2_queue_init(ptr noundef %vb_vbiq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !475
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !476

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !472

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #12
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_tuner_callback(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_setup_xc3028(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_s_ctrl(ptr nocapture noundef readonly %ctrl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev1 = getelementptr i8, ptr %1, i32 -132
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %5, label %entry.sw.epilog.thread_crit_edge [
    i32 9963785, label %sw.bb
    i32 9963781, label %sw.bb2
    i32 9963777, label %sw.bb5
    i32 9963776, label %sw.bb8
    i32 9963778, label %sw.bb12
    i32 9963791, label %sw.bb16
    i32 9963790, label %sw.bb20
    i32 9963803, label %sw.bb24
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %mute = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 30
  %9 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mute, align 4
  %call = tail call i32 @em28xx_audio_analog_set(ptr noundef %3) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3, align 4
  %volume = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 31
  %12 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %volume, align 8
  %call4 = tail call i32 @em28xx_audio_analog_set(ptr noundef %3) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val6, align 4
  %conv = trunc i32 %14 to i8
  %call7 = tail call i32 @em28xx_write_reg(ptr noundef %3, i16 noundef zeroext 32, i8 noundef zeroext %conv) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val9, align 4
  %conv10 = trunc i32 %16 to i8
  %call11 = tail call i32 @em28xx_write_reg(ptr noundef %3, i16 noundef zeroext 33, i8 noundef zeroext %conv10) #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val13, align 4
  %conv14 = trunc i32 %18 to i8
  %call15 = tail call i32 @em28xx_write_reg(ptr noundef %3, i16 noundef zeroext 34, i8 noundef zeroext %conv14) #12
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val17, align 4
  %conv18 = trunc i32 %20 to i8
  %call19 = tail call i32 @em28xx_write_reg(ptr noundef %3, i16 noundef zeroext 35, i8 noundef zeroext %conv18) #12
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val21, align 4
  %conv22 = trunc i32 %22 to i8
  %call23 = tail call i32 @em28xx_write_reg(ptr noundef %3, i16 noundef zeroext 36, i8 noundef zeroext %conv22) #12
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val25, align 4
  %conv26 = trunc i32 %24 to i8
  %call27 = tail call i32 @em28xx_write_reg(ptr noundef %3, i16 noundef zeroext 37, i8 noundef zeroext %conv26) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %ret.0 = phi i32 [ %call27, %sw.bb24 ], [ %call23, %sw.bb20 ], [ %call19, %sw.bb16 ], [ %call15, %sw.bb12 ], [ %call11, %sw.bb8 ], [ %call7, %sw.bb5 ], [ %call4, %sw.bb2 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog._crit_edge

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %25

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  %ret.050 = phi i32 [ %ret.0, %sw.epilog.sw.epilog.thread_crit_edge ], [ -22, %entry.sw.epilog.thread_crit_edge ]
  br label %25

25:                                               ; preds = %sw.epilog.thread, %sw.epilog._crit_edge
  %26 = phi i32 [ %ret.050, %sw.epilog.thread ], [ 0, %sw.epilog._crit_edge ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_audio_analog_set(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_resolution_set(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %xmin.addr.i = alloca i8, align 1
  %xmax.addr.i = alloca i8, align 1
  %ymin.addr.i = alloca i8, align 1
  %ymax.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l21, align 4
  %is_webcam.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %is_webcam.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %is_webcam.i, align 4
  %3 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i9, label %if.then.i5

if.then.i5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sensor_xres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %sensor_xres.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_xres.i, align 4
  %sensor_yres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %sensor_yres.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_yres.i, align 8
  br label %norm_maxh.exit

if.end.i9:                                        ; preds = %entry
  %max_range_640_480.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %8 = ptrtoint ptr %max_range_640_480.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load2.i = load i16, ptr %max_range_640_480.i, align 8
  %9 = and i16 %bf.load2.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not.i = icmp eq i16 %9, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i9.norm_maxh.exit_crit_edge

if.end.i9.norm_maxh.exit_crit_edge:               ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %norm_maxh.exit

if.end8.i:                                        ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #14
  %norm.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %11, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool9.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool9.not.i, i32 480, i32 576
  br label %norm_maxh.exit

norm_maxh.exit:                                   ; preds = %if.end8.i, %if.end.i9.norm_maxh.exit_crit_edge, %if.then.i5
  %retval.0.i24 = phi i32 [ %5, %if.then.i5 ], [ 720, %if.end8.i ], [ 640, %if.end.i9.norm_maxh.exit_crit_edge ]
  %retval.0.i10 = phi i32 [ %7, %if.then.i5 ], [ %cond.i, %if.end8.i ], [ 480, %if.end.i9.norm_maxh.exit_crit_edge ]
  %vbi_width = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %vbi_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 720, ptr %vbi_width, align 8
  %norm = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %norm, align 8
  %and = and i64 %14, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 18, i32 12
  %15 = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 28
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  tail call fastcc void @em28xx_set_outfmt(ptr noundef %dev)
  %sub = add i32 %retval.0.i24, 1020
  %17 = lshr i32 %sub, 2
  %conv = trunc i32 %17 to i8
  %sub5 = add i32 %retval.0.i10, 1020
  %18 = lshr i32 %sub5, 2
  %conv7 = trunc i32 %18 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xmin.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xmax.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ymin.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ymax.addr.i)
  %19 = ptrtoint ptr %xmin.addr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %xmin.addr.i, align 1
  %20 = ptrtoint ptr %xmax.addr.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %xmax.addr.i, align 1
  %21 = ptrtoint ptr %ymin.addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %ymin.addr.i, align 1
  %22 = ptrtoint ptr %ymax.addr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7, ptr %ymax.addr.i, align 1
  %23 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i11 = icmp eq i32 %23, 0
  br i1 %tobool.not.i11, label %norm_maxh.exit.em28xx_accumulator_set.exit_crit_edge, label %do.end.i

norm_maxh.exit.em28xx_accumulator_set.exit_crit_edge: ; preds = %norm_maxh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_accumulator_set.exit

do.end.i:                                         ; preds = %norm_maxh.exit
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %24 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intf.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  %conv4.i = and i32 %17, 255
  %conv5.i = and i32 %18, 255
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev2.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef 1, i32 noundef 1, i32 noundef %conv4.i, i32 noundef %conv5.i) #15
  br label %em28xx_accumulator_set.exit

em28xx_accumulator_set.exit:                      ; preds = %do.end.i, %norm_maxh.exit.em28xx_accumulator_set.exit_crit_edge
  %call.i = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 40, ptr noundef nonnull %xmin.addr.i, i32 noundef 1) #12
  %call7.i = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 41, ptr noundef nonnull %xmax.addr.i, i32 noundef 1) #12
  %call8.i = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 42, ptr noundef nonnull %ymin.addr.i, i32 noundef 1) #12
  %call9.i = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 43, ptr noundef nonnull %ymax.addr.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xmin.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xmax.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ymin.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ymax.addr.i)
  %26 = load i32, ptr @disable_vbi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp eq i32 %26, 1
  br i1 %cmp.i, label %em28xx_accumulator_set.exit.if.else14_crit_edge, label %if.end.i15

em28xx_accumulator_set.exit.if.else14_crit_edge:  ; preds = %em28xx_accumulator_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14

if.end.i15:                                       ; preds = %em28xx_accumulator_set.exit
  %27 = ptrtoint ptr %is_webcam.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i13 = load i8, ptr %is_webcam.i, align 4
  %28 = and i8 %bf.load.i13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i14 = icmp eq i8 %28, 0
  br i1 %tobool.not.i14, label %em28xx_vbi_supported.exit, label %if.end.i15.if.else14_crit_edge

if.end.i15.if.else14_crit_edge:                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14

em28xx_vbi_supported.exit:                        ; preds = %if.end.i15
  %chip_id.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %29 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_id.i, align 8
  %31 = add i32 %30, -34
  %switch.and.i = and i32 %31, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %em28xx_vbi_supported.exit.if.end17_crit_edge, label %em28xx_vbi_supported.exit.if.else14_crit_edge

em28xx_vbi_supported.exit.if.else14_crit_edge:    ; preds = %em28xx_vbi_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14

em28xx_vbi_supported.exit.if.end17_crit_edge:     ; preds = %em28xx_vbi_supported.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else14:                                        ; preds = %em28xx_vbi_supported.exit.if.else14_crit_edge, %if.end.i15.if.else14_crit_edge, %em28xx_accumulator_set.exit.if.else14_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %em28xx_vbi_supported.exit.if.end17_crit_edge
  %.sink = phi i8 [ 0, %if.else14 ], [ 2, %em28xx_vbi_supported.exit.if.end17_crit_edge ]
  %conv15 = trunc i32 %retval.0.i24 to i16
  %conv16 = trunc i32 %retval.0.i10 to i16
  call fastcc void @em28xx_capture_area_set(ptr noundef %dev, i8 noundef zeroext %.sink, i16 noundef zeroext %conv15, i16 noundef zeroext %conv16)
  %hscale = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 25
  %32 = ptrtoint ptr %hscale to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hscale, align 8
  %vscale = getelementptr inbounds %struct.em28xx_v4l2, ptr %1, i32 0, i32 26
  %34 = ptrtoint ptr %vscale to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vscale, align 4
  %is_em2800.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %36 = ptrtoint ptr %is_em2800.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i17 = load i16, ptr %is_em2800.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i17)
  %tobool.not.i18 = icmp sgt i16 %bf.load.i17, -1
  br i1 %tobool.not.i18, label %if.else.i, label %if.then.i20

if.then.i20:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %conv18 = trunc i32 %33 to i16
  %conv19 = trunc i32 %35 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv19)
  %tobool1.not.i = icmp eq i16 %conv19, 0
  %cond.i19 = select i1 %tobool1.not.i, i8 0, i8 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18)
  %tobool3.not.i = icmp eq i16 %conv18, 0
  %cond4.i = select i1 %tobool3.not.i, i8 0, i8 16
  %or.i = or i8 %cond.i19, %cond4.i
  br label %em28xx_scaler_set.exit

if.else.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #12
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv6.i = trunc i32 %33 to i8
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv6.i, ptr %buf.i, align 1
  %39 = lshr i32 %33, 8
  %conv8.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv8.i, ptr %37, align 1
  %call.i21 = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 48, ptr noundef nonnull %buf.i, i32 noundef 2) #12
  %conv10.i = trunc i32 %35 to i8
  %41 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv10.i, ptr %buf.i, align 1
  %42 = lshr i32 %35, 8
  %conv14.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv14.i, ptr %37, align 1
  %call17.i = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 50, ptr noundef nonnull %buf.i, i32 noundef 2) #12
  %44 = or i32 %35, %33
  %45 = trunc i32 %44 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %46 = icmp eq i16 %45, 0
  %47 = select i1 %46, i8 0, i8 48
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #12
  br label %em28xx_scaler_set.exit

em28xx_scaler_set.exit:                           ; preds = %if.else.i, %if.then.i20
  %mode.0.i = phi i8 [ %or.i, %if.then.i20 ], [ %47, %if.else.i ]
  %call24.i = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 38, i8 noundef zeroext %mode.0.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_capture_area_set(ptr noundef %dev, i8 noundef zeroext %vstart, i16 noundef zeroext %width, i16 noundef zeroext %height) unnamed_addr #1 align 64 {
entry:
  %hstart.addr = alloca i8, align 1
  %vstart.addr = alloca i8, align 1
  %cwidth = alloca i8, align 1
  %cheight = alloca i8, align 1
  %overflow = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hstart.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hstart.addr, align 1
  %1 = ptrtoint ptr %vstart.addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %vstart, ptr %vstart.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cwidth) #12
  %2 = lshr i16 %width, 2
  %conv1 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %cwidth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %cwidth, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cheight) #12
  %4 = lshr i16 %height, 2
  %conv4 = trunc i16 %4 to i8
  %5 = ptrtoint ptr %cheight to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %cheight, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %overflow) #12
  %6 = lshr i16 %height, 9
  %and = and i16 %6, 2
  %7 = lshr i16 %width, 10
  %and9 = and i16 %7, 1
  %or = or i16 %and, %and9
  %conv10 = trunc i16 %or to i8
  %8 = ptrtoint ptr %overflow to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10, ptr %overflow, align 1
  %9 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.do.end27_crit_edge, label %do.end

entry.do.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  %conv14 = zext i8 %vstart to i32
  %conv15 = zext i16 %or to i32
  %and16 = shl nuw nsw i32 %conv15, 9
  %shl = and i32 %and16, 1024
  %12 = and i16 %width, 1020
  %shl18 = zext i16 %12 to i32
  %or19 = or i32 %shl, %shl18
  %and21 = shl nuw nsw i32 %conv15, 10
  %shl22 = and i32 %and21, 1024
  %13 = and i16 %height, 1020
  %shl24 = zext i16 %13 to i32
  %or25 = or i32 %shl22, %shl24
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev12, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef 0, i32 noundef %conv14, i32 noundef %or19, i32 noundef %or25) #15
  br label %do.end27

do.end27:                                         ; preds = %do.end, %entry.do.end27_crit_edge
  %call = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 28, ptr noundef nonnull %hstart.addr, i32 noundef 1) #12
  %call28 = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 29, ptr noundef nonnull %vstart.addr, i32 noundef 1) #12
  %call29 = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 30, ptr noundef nonnull %cwidth, i32 noundef 1) #12
  %call30 = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 31, ptr noundef nonnull %cheight, i32 noundef 1) #12
  %call31 = call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 27, ptr noundef nonnull %overflow, i32 noundef 1) #12
  %is_em25xx = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %is_em25xx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %is_em25xx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool32.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool32.not, label %do.end27.if.end42_crit_edge, label %if.then33

do.end27.if.end42_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then33:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %15 = lshr i16 %width, 4
  %conv36 = trunc i16 %15 to i8
  %call37 = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 52, i8 noundef zeroext %conv36) #12
  %16 = lshr i16 %height, 4
  %conv40 = trunc i16 %16 to i8
  %call41 = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 53, i8 noundef zeroext %conv40) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then33, %do.end27.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %overflow) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cheight) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cwidth) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_regs(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_v4l2_open(ptr noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %filp) #12
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l22 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l22, align 4
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.em28xx_v4l2_open, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %8 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %switch.lookup.do.end8_crit_edge, label %do.end

switch.lookup.do.end8_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %switch.lookup
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %do.end.video_device_node_name.exit_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_type_names, i32 0, i32 %switch.load
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %users = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %users, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev5, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, ptr noundef %retval.0.i.i, ptr noundef %16, i32 noundef %18) #15
  br label %do.end8

do.end8:                                          ; preds = %video_device_node_name.exit, %switch.lookup.do.end8_crit_edge
  %lock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  %call9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %call13 = tail call i32 @v4l2_fh_open(ptr noundef %filp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %intf19 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %19 = ptrtoint ptr %intf19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf19, align 4
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120, i32 noundef %call13) #15
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end12
  %users23 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %users23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %users23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.then24, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then24:                                        ; preds = %if.end22
  %call25 = tail call i32 @em28xx_set_mode(ptr noundef %1, i32 noundef 1) #12
  %23 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp27.not = icmp eq i32 %24, 2
  br i1 %cmp27.not, label %if.then24.if.end30_crit_edge, label %if.then28

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @em28xx_resolution_set(ptr noundef %1)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then24.if.end30_crit_edge
  %25 = ptrtoint ptr %v4l22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %v4l22, align 4
  %subdevs.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %26, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn74.i = load ptr, ptr %subdevs.i, align 4
  %cmp.not76.i = icmp eq ptr %.pn74.i, %subdevs.i
  br i1 %cmp.not76.i, label %if.end30.for.cond25.preheader.i_crit_edge, label %if.end30.for.body.i_crit_edge

if.end30.for.body.i_crit_edge:                    ; preds = %if.end30
  br label %for.body.i

if.end30.for.cond25.preheader.i_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader.i

for.cond25.preheader.i:                           ; preds = %for.inc.i.for.cond25.preheader.i_crit_edge, %if.end30.for.cond25.preheader.i_crit_edge
  %28 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn7379.i = load ptr, ptr %subdevs.i, align 4
  %cmp28.not81.i = icmp eq ptr %.pn7379.i, %subdevs.i
  br i1 %cmp28.not81.i, label %for.cond25.preheader.i.if.end31_crit_edge, label %for.body30.lr.ph.i

for.cond25.preheader.i.if.end31_crit_edge:        ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

for.body30.lr.ph.i:                               ; preds = %for.cond25.preheader.i
  %model.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 5
  %ctl_input.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 26
  br label %for.body30.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end30.for.body.i_crit_edge
  %.pn77.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn74.i, %if.end30.for.body.i_crit_edge ]
  %__sd.078.i = getelementptr i8, ptr %.pn77.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn77.i, i32 24
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %reset.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reset.i, align 4
  %tobool6.not.i = icmp eq ptr %34, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i106 = tail call i32 %34(ptr noundef %__sd.078.i, i32 noundef 0) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %.pn77.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn77.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp.not.i, label %for.inc.i.for.cond25.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.cond25.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond25.preheader.i

for.body30.i:                                     ; preds = %for.inc44.i.for.body30.i_crit_edge, %for.body30.lr.ph.i
  %.pn7382.i = phi ptr [ %.pn7379.i, %for.body30.lr.ph.i ], [ %.pn73.i, %for.inc44.i.for.body30.i_crit_edge ]
  %__sd18.083.i = getelementptr i8, ptr %.pn7382.i, i32 -80
  %ops31.i = getelementptr i8, ptr %.pn7382.i, i32 24
  %36 = ptrtoint ptr %ops31.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops31.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %video.i, align 4
  %tobool32.not.i = icmp eq ptr %39, null
  br i1 %tobool32.not.i, label %for.body30.i.for.inc44.i_crit_edge, label %land.lhs.true33.i

for.body30.i.for.inc44.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i

land.lhs.true33.i:                                ; preds = %for.body30.i
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool36.not.i = icmp eq ptr %41, null
  br i1 %tobool36.not.i, label %land.lhs.true33.i.for.inc44.i_crit_edge, label %if.then37.i

land.lhs.true33.i.for.inc44.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i

if.then37.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %model.i, align 8
  %44 = ptrtoint ptr %ctl_input.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctl_input.i, align 8
  %vmux.i = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %43, i32 17, i32 %45, i32 1
  %46 = ptrtoint ptr %vmux.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vmux.i, align 4
  %call42.i = tail call i32 %41(ptr noundef %__sd18.083.i, i32 noundef %47, i32 noundef 0, i32 noundef 0) #12
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.then37.i, %land.lhs.true33.i.for.inc44.i_crit_edge, %for.body30.i.for.inc44.i_crit_edge
  %48 = ptrtoint ptr %.pn7382.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn73.i = load ptr, ptr %.pn7382.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn73.i, %subdevs.i
  br i1 %cmp28.not.i, label %for.inc44.i.if.end31_crit_edge, label %for.inc44.i.for.body30.i_crit_edge

for.inc44.i.for.body30.i_crit_edge:               ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30.i

for.inc44.i.if.end31_crit_edge:                   ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %for.inc44.i.if.end31_crit_edge, %for.cond25.preheader.i.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %49 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp33 = icmp eq i32 %50, 2
  br i1 %cmp33, label %do.body35, label %if.end31.if.end70_crit_edge

if.end31.if.end70_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.body35:                                        ; preds = %if.end31
  %51 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool36.not = icmp eq i32 %51, 0
  br i1 %tobool36.not, label %do.body35.do.body46_crit_edge, label %do.end40

do.body35.do.body46_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46

do.end40:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %intf41 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %52 = ptrtoint ptr %intf41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %intf41, align 4
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev42, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.120) #15
  br label %do.body46

do.body46:                                        ; preds = %do.end40, %do.body35.do.body46_crit_edge
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn116 = load ptr, ptr %subdevs, align 4
  %cmp50.not118 = icmp eq ptr %.pn116, %subdevs
  br i1 %cmp50.not118, label %do.body46.if.end70_crit_edge, label %do.body46.for.body_crit_edge

do.body46.for.body_crit_edge:                     ; preds = %do.body46
  br label %for.body

do.body46.if.end70_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body46.for.body_crit_edge
  %.pn119 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn116, %do.body46.for.body_crit_edge ]
  %__sd.0120 = getelementptr i8, ptr %.pn119, i32 -80
  %ops = getelementptr i8, ptr %.pn119, i32 24
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tuner, align 4
  %tobool51.not = icmp eq ptr %58, null
  br i1 %tobool51.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_radio = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %s_radio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_radio, align 4
  %tobool54.not = icmp eq ptr %60, null
  br i1 %tobool54.not, label %land.lhs.true.for.inc_crit_edge, label %if.then55

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call59 = tail call i32 %60(ptr noundef %__sd.0120) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %61 = ptrtoint ptr %.pn119 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load ptr, ptr %.pn119, align 4
  %cmp50.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp50.not, label %for.inc.if.end70_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end70_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end70:                                         ; preds = %for.inc.if.end70_crit_edge, %do.body46.if.end70_crit_edge, %if.end31.if.end70_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #12
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #12, !srcloc !475
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end70.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !476

if.end70.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end70
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %63 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !472

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end70.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end70.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i.i.i.i.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #12
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #12, !srcloc !475
  %asmresult.i.i.i.i.i.i108 = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i108)
  %tobool1.not.i.i.i.i109 = icmp eq i32 %asmresult.i.i.i.i.i.i108, 0
  br i1 %tobool1.not.i.i.i.i109, label %kref_get.exit.if.end15.sink.split.i.i.i.i114_crit_edge, label %if.else.i.i.i.i112, !prof !476

kref_get.exit.if.end15.sink.split.i.i.i.i114_crit_edge: ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i114

if.else.i.i.i.i112:                               ; preds = %kref_get.exit
  %add.i.i.i.i110 = add i32 %asmresult.i.i.i.i.i.i108, 1
  %65 = or i32 %add.i.i.i.i110, %asmresult.i.i.i.i.i.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %.not.i.i.i.i111 = icmp sgt i32 %65, -1
  br i1 %.not.i.i.i.i111, label %if.else.i.i.i.i112.kref_get.exit115_crit_edge, label %if.else.i.i.i.i112.if.end15.sink.split.i.i.i.i114_crit_edge, !prof !472

if.else.i.i.i.i112.if.end15.sink.split.i.i.i.i114_crit_edge: ; preds = %if.else.i.i.i.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i114

if.else.i.i.i.i112.kref_get.exit115_crit_edge:    ; preds = %if.else.i.i.i.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit115

if.end15.sink.split.i.i.i.i114:                   ; preds = %if.else.i.i.i.i112.if.end15.sink.split.i.i.i.i114_crit_edge, %kref_get.exit.if.end15.sink.split.i.i.i.i114_crit_edge
  %.sink.i.i.i.i113 = phi i32 [ 2, %kref_get.exit.if.end15.sink.split.i.i.i.i114_crit_edge ], [ 1, %if.else.i.i.i.i112.if.end15.sink.split.i.i.i.i114_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i113) #12
  br label %kref_get.exit115

kref_get.exit115:                                 ; preds = %if.end15.sink.split.i.i.i.i114, %if.else.i.i.i.i112.kref_get.exit115_crit_edge
  %66 = ptrtoint ptr %users23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %users23, align 8
  %inc = add i32 %67, 1
  store i32 %inc, ptr %users23, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %kref_get.exit115, %do.end18
  %retval.0.ph = phi i32 [ 0, %kref_get.exit115 ], [ %call13, %do.end18 ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -512, %do.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_v4l2_close(ptr noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %8 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %users = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %users, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev5, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, i32 noundef %10) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call8 = tail call i32 @vb2_fop_release(ptr noundef %filp) #12
  %lock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %users9 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %users9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %users9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then10, label %do.end7.exit_crit_edge

do.end7.exit_crit_edge:                           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then10:                                        ; preds = %do.end7
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %disconnected, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %do.body14, label %if.then10.exit_crit_edge

if.then10.exit_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.body14:                                        ; preds = %if.then10
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn96 = load ptr, ptr %subdevs, align 4
  %cmp18.not98 = icmp eq ptr %.pn96, %subdevs
  br i1 %cmp18.not98, label %do.body14.do.end35_crit_edge, label %do.body14.for.body_crit_edge

do.body14.for.body_crit_edge:                     ; preds = %do.body14
  br label %for.body

do.body14.do.end35_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body14.for.body_crit_edge
  %.pn99 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn96, %do.body14.for.body_crit_edge ]
  %__sd.0100 = getelementptr i8, ptr %.pn99, i32 -80
  %ops = getelementptr i8, ptr %.pn99, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %land.lhs.true.for.inc_crit_edge, label %if.then23

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 %21(ptr noundef %__sd.0100) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp18.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp18.not, label %for.inc.do.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %do.body14.do.end35_crit_edge
  %call38 = tail call i32 @em28xx_set_mode(ptr noundef %1, i32 noundef 0) #12
  %alt = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 52
  %23 = ptrtoint ptr %alt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %alt, align 8
  %24 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %do.end35.do.end49_crit_edge, label %do.end44

do.end35.do.end49_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49

do.end44:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf, align 4
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev46, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.128) #15
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.end35.do.end49_crit_edge
  %call50 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %do.end49.exit_crit_edge

do.end49.exit_crit_edge:                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.end55:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %intf, align 4
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %28, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.133, i32 noundef %call50) #15
  br label %exit

exit:                                             ; preds = %do.end55, %do.end49.exit_crit_edge, %if.then10.exit_crit_edge, %do.end7.exit_crit_edge
  %29 = ptrtoint ptr %users9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %users9, align 8
  %dec = add i32 %30, -1
  store i32 %dec, ptr %users9, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #12, !srcloc !471
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !472

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !473
  %dev.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %v4l21.i = getelementptr inbounds %struct.em28xx, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %v4l21.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %v4l21.i, align 4
  tail call void @kfree(ptr noundef %3) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %call.i.i.i.i.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #12
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #12, !srcloc !471
  %asmresult.i.i.i.i.i.i.i89 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i89)
  %cmp.i.i.i.i90 = icmp eq i32 %asmresult.i.i.i.i.i.i.i89, 1
  br i1 %cmp.i.i.i.i90, label %if.then.i94, label %if.end5.i.i.i.i92

if.end5.i.i.i.i92:                                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i89)
  %.not.i.i.i.i91 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i89, 0
  br i1 %.not.i.i.i.i91, label %if.end5.i.i.i.i92.kref_put.exit95_crit_edge, label %if.then10.i.i.i.i93, !prof !472

if.end5.i.i.i.i92.kref_put.exit95_crit_edge:      ; preds = %if.end5.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit95

if.then10.i.i.i.i93:                              ; preds = %if.end5.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #12
  br label %kref_put.exit95

if.then.i94:                                      ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @em28xx_free_device(ptr noundef %1) #12, !callees !474
  br label %kref_put.exit95

kref_put.exit95:                                  ; preds = %if.then.i94, %if.then10.i.i.i.i93, %if.end5.i.i.i.i92.kref_put.exit95_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_free_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %call3 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.135, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %model = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %model, align 8
  %arrayidx = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %11, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr i8, ptr %7, i32 -64
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %7, i32 -124
  %call.i37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.136, ptr noundef %15, ptr noundef %devpath.i) #12
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %16 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2063597567, ptr %capabilities, align 4
  %int_audio_type = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %int_audio_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_audio_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  %spec.store.select = select i1 %cmp.not, i32 -2063597567, i32 -2063466495
  %19 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %capabilities, align 4
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp9.not = icmp eq i32 %21, 4
  br i1 %cmp9.not, label %entry.if.end13_crit_edge, label %if.then10

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or12 = or i32 %spec.store.select, 65536
  %22 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or12, ptr %capabilities, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %entry.if.end13_crit_edge
  %flags.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 5, i32 17
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities, align 4
  %or17 = or i32 %26, 16
  store i32 %or17, ptr %capabilities, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %flags.i38 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 6, i32 17
  %27 = ptrtoint ptr %flags.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i38, align 4
  %and1.i.i39 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i39)
  %tobool20.not = icmp eq i32 %and1.i.i39, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %capabilities, align 4
  %or23 = or i32 %30, 262144
  store i32 %or23, ptr %capabilities, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !476

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %width = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height4, align 4
  %format = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixelformat, align 4
  %15 = load i32, ptr %width, align 8
  %16 = load ptr, ptr %format, align 4
  %depth = getelementptr inbounds %struct.em28xx_fmt, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %depth, align 4
  %mul = mul i32 %18, %15
  %add = add i32 %mul, 7
  %shr = ashr i32 %add, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %bytesperline, align 4
  %20 = load i32, ptr %height, align 4
  %mul12 = mul i32 %shr, %20
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul12, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %colorspace, align 4
  %progressive = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 21
  %23 = ptrtoint ptr %progressive to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %progressive, align 8, !range !469
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %interlaced_fieldmode = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 22
  %25 = ptrtoint ptr %interlaced_fieldmode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interlaced_fieldmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  %cond = select i1 %tobool16.not, i32 2, i32 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ %cond, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %format) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %vbi_width = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %vbi_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vbi_width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags, align 4
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 13500000, ptr %fmt, align 4
  %vbi_height = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 28
  %11 = ptrtoint ptr %vbi_height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vbi_height, align 4
  %count = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %count, align 4
  %14 = load i32, ptr %vbi_height, align 4
  %arrayidx10 = getelementptr %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx10, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %reserved, align 4
  %norm = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %norm, align 8
  %and = and i64 %18, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end27.sink.split_crit_edge

entry.if.end27.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.sink.split

if.else:                                          ; preds = %entry
  %and18 = and i64 %18, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.else.if.end27_crit_edge, label %if.else.if.end27.sink.split_crit_edge

if.else.if.end27.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.sink.split

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27.sink.split:                              ; preds = %if.else.if.end27.sink.split_crit_edge, %entry.if.end27.sink.split_crit_edge
  %.sink43 = phi i32 [ 10, %entry.if.end27.sink.split_crit_edge ], [ 6, %if.else.if.end27.sink.split_crit_edge ]
  %.sink = phi i32 [ 273, %entry.if.end27.sink.split_crit_edge ], [ 318, %if.else.if.end27.sink.split_crit_edge ]
  %start22 = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %start22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink43, ptr %start22, align 4
  %arrayidx26 = getelementptr %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %num_buffers.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 7, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %call6 = tail call fastcc i32 @em28xx_set_video_format(ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width) #12
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %6 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %width, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %height) #12
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height4, align 4
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height, align 4
  %is_webcam.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %is_webcam.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %is_webcam.i, align 4
  %11 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i108, label %if.then.i104

if.then.i104:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sensor_xres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %sensor_xres.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensor_xres.i, align 4
  %sensor_yres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %sensor_yres.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sensor_yres.i, align 8
  br label %norm_maxh.exit

if.end.i108:                                      ; preds = %entry
  %max_range_640_480.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 12, i32 10
  %16 = ptrtoint ptr %max_range_640_480.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load2.i = load i16, ptr %max_range_640_480.i, align 8
  %17 = and i16 %bf.load2.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool6.not.i = icmp eq i16 %17, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i108.norm_maxh.exit_crit_edge

if.end.i108.norm_maxh.exit_crit_edge:             ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %norm_maxh.exit

if.end8.i:                                        ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #14
  %norm.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %19, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool9.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool9.not.i, i32 480, i32 576
  br label %norm_maxh.exit

norm_maxh.exit:                                   ; preds = %if.end8.i, %if.end.i108.norm_maxh.exit_crit_edge, %if.then.i104
  %retval.0.i131 = phi i32 [ %13, %if.then.i104 ], [ 720, %if.end8.i ], [ 640, %if.end.i108.norm_maxh.exit_crit_edge ]
  %retval.0.i109 = phi i32 [ %15, %if.then.i104 ], [ %cond.i, %if.end8.i ], [ 480, %if.end.i108.norm_maxh.exit_crit_edge ]
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat, align 4
  %22 = load i32, ptr @format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %21)
  %cmp2.i = icmp eq i32 %22, %21
  br i1 %cmp2.i, label %norm_maxh.exit.if.end18_crit_edge, label %for.cond.i

norm_maxh.exit.if.end18_crit_edge:                ; preds = %norm_maxh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.cond.i:                                       ; preds = %norm_maxh.exit
  %23 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp2.1.i = icmp eq i32 %23, %21
  br i1 %cmp2.1.i, label %for.cond.i.if.end18_crit_edge, label %for.cond.1.i

for.cond.i.if.end18_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.cond.1.i:                                     ; preds = %for.cond.i
  %24 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %21)
  %cmp2.2.i = icmp eq i32 %24, %21
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end18_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end18_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %25 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %21)
  %cmp2.3.i = icmp eq i32 %25, %21
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end18_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end18_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %26 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %21)
  %cmp2.4.i = icmp eq i32 %26, %21
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end18_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end18_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %27 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp2.5.i = icmp eq i32 %27, %21
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end18_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end18_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %28 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %21)
  %cmp2.6.i = icmp eq i32 %28, %21
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end18_crit_edge, label %if.then

for.cond.5.i.if.end18_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %for.cond.5.i
  %29 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool10.not = icmp eq i32 %29, 0
  br i1 %tobool10.not, label %if.then.if.end18_crit_edge, label %do.end

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %30 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev13, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, i32 noundef %21, i32 noundef %22) #15
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then.if.end18_crit_edge, %for.cond.5.i.if.end18_crit_edge, %for.cond.4.i.if.end18_crit_edge, %for.cond.3.i.if.end18_crit_edge, %for.cond.2.i.if.end18_crit_edge, %for.cond.1.i.if.end18_crit_edge, %for.cond.i.if.end18_crit_edge, %norm_maxh.exit.if.end18_crit_edge
  %fmt7.0 = phi ptr [ @format, %do.end ], [ @format, %if.then.if.end18_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 5), %for.cond.4.i.if.end18_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 4), %for.cond.3.i.if.end18_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 3), %for.cond.2.i.if.end18_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 2), %for.cond.1.i.if.end18_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 1), %for.cond.i.if.end18_crit_edge ], [ @format, %norm_maxh.exit.if.end18_crit_edge ], [ getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 6), %for.cond.5.i.if.end18_crit_edge ]
  %is_em2800 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 12, i32 10
  %32 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %is_em2800, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool19.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %mul = mul i32 %retval.0.i109, 3
  %div95 = lshr i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %div95)
  %cmp = icmp ule i32 %34, %div95
  %div2196 = zext i1 %cmp to i32
  %cond = lshr i32 %retval.0.i109, %div2196
  %35 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %height, align 4
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  %mul22 = mul i32 %retval.0.i131, 3
  %div2397 = lshr i32 %mul22, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %div2397)
  %cmp24 = icmp ule i32 %37, %div2397
  %div2798 = zext i1 %cmp24 to i32
  %cond29 = lshr i32 %retval.0.i131, %div2798
  %38 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond29, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29, i32 %retval.0.i131)
  %cmp30 = icmp eq i32 %cond29, %retval.0.i131
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %retval.0.i109)
  %cmp31 = icmp eq i32 %cond, %retval.0.i109
  %or.cond = select i1 %cmp30, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then32, label %if.then20.if.end35_crit_edge

if.then20.if.end35_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then32:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %div3399 = lshr i32 %retval.0.i131, 1
  %39 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div3399, ptr %width, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @v4l_bound_align_image(ptr noundef nonnull %width, i32 noundef 48, i32 noundef %retval.0.i131, i32 noundef 1, ptr noundef nonnull %height, i32 noundef 32, i32 noundef %retval.0.i109, i32 noundef 1, i32 noundef 0) #12
  %40 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %width, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32, %if.then20.if.end35_crit_edge
  %41 = phi i32 [ %cond29, %if.then20.if.end35_crit_edge ], [ %div3399, %if.then32 ], [ %.pr, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp36 = icmp eq i32 %41, 0
  br i1 %cmp36, label %if.then37, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %width, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp39 = icmp eq i32 %44, 0
  br i1 %cmp39, label %if.then40, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %height, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %46 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width, align 4
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %50 = ptrtoint ptr %is_webcam.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i.i = load i8, ptr %is_webcam.i, align 4
  %51 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i, label %if.end.i22.i, label %if.then.i18.i

if.then.i18.i:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %v4l21, align 4
  %sensor_xres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %sensor_xres.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sensor_xres.i.i, align 4
  %sensor_yres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %53, i32 0, i32 14
  %56 = ptrtoint ptr %sensor_yres.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sensor_yres.i.i, align 8
  %phi.bo.i = shl i32 %55, 12
  br label %size_to_scale.exit

if.end.i22.i:                                     ; preds = %if.end41
  %58 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load2.i.i = load i16, ptr %is_em2800, align 8
  %59 = and i16 %bf.load2.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool6.not.i.i = icmp eq i16 %59, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i22.i.size_to_scale.exit_crit_edge

if.end.i22.i.size_to_scale.exit_crit_edge:        ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %size_to_scale.exit

if.end8.i.i:                                      ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %v4l21, align 4
  %norm.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %norm.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %norm.i.i, align 8
  %and.i.i = and i64 %63, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool9.not.i.i = icmp eq i64 %and.i.i, 0
  %cond.i.i = select i1 %tobool9.not.i.i, i32 480, i32 576
  br label %size_to_scale.exit

size_to_scale.exit:                               ; preds = %if.end8.i.i, %if.end.i22.i.size_to_scale.exit_crit_edge, %if.then.i18.i
  %retval.0.i26.i = phi i32 [ %phi.bo.i, %if.then.i18.i ], [ 2949120, %if.end8.i.i ], [ 2621440, %if.end.i22.i.size_to_scale.exit_crit_edge ]
  %retval.0.i23.i = phi i32 [ %57, %if.then.i18.i ], [ %cond.i.i, %if.end8.i.i ], [ 480, %if.end.i22.i.size_to_scale.exit_crit_edge ]
  %div.i = udiv i32 %retval.0.i26.i, %47
  %sub.i = add i32 %div.i, -4096
  %64 = call i32 @llvm.umin.i32(i32 %sub.i, i32 16383) #12
  %shl2.i = shl i32 %retval.0.i23.i, 12
  %div3.i = udiv i32 %shl2.i, %49
  %sub4.i = add i32 %div3.i, -4096
  %65 = call i32 @llvm.umin.i32(i32 %sub4.i, i32 16383) #12
  br i1 %tobool.not.i.i, label %if.end.i21.i, label %if.then.i17.i

if.then.i17.i:                                    ; preds = %size_to_scale.exit
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %v4l21, align 4
  %sensor_xres.i.i115 = getelementptr inbounds %struct.em28xx_v4l2, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %sensor_xres.i.i115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sensor_xres.i.i115, align 4
  %sensor_yres.i.i116 = getelementptr inbounds %struct.em28xx_v4l2, ptr %67, i32 0, i32 14
  %70 = ptrtoint ptr %sensor_yres.i.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sensor_yres.i.i116, align 8
  %phi.bo.i117 = shl i32 %69, 12
  br label %norm_maxh.exit.i

if.end.i21.i:                                     ; preds = %size_to_scale.exit
  %72 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load2.i.i119 = load i16, ptr %is_em2800, align 8
  %73 = and i16 %bf.load2.i.i119, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool6.not.i.i120 = icmp eq i16 %73, 0
  br i1 %tobool6.not.i.i120, label %if.end8.i.i125, label %if.end.i21.i.norm_maxh.exit.i_crit_edge

if.end.i21.i.norm_maxh.exit.i_crit_edge:          ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %norm_maxh.exit.i

if.end8.i.i125:                                   ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %v4l21, align 4
  %norm.i.i121 = getelementptr inbounds %struct.em28xx_v4l2, ptr %75, i32 0, i32 20
  %76 = ptrtoint ptr %norm.i.i121 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %norm.i.i121, align 8
  %and.i.i122 = and i64 %77, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i122)
  %tobool9.not.i.i123 = icmp eq i64 %and.i.i122, 0
  %cond.i.i124 = select i1 %tobool9.not.i.i123, i32 480, i32 576
  br label %norm_maxh.exit.i

norm_maxh.exit.i:                                 ; preds = %if.end8.i.i125, %if.end.i21.i.norm_maxh.exit.i_crit_edge, %if.then.i17.i
  %retval.0.i25.i = phi i32 [ %phi.bo.i117, %if.then.i17.i ], [ 2949120, %if.end8.i.i125 ], [ 2621440, %if.end.i21.i.norm_maxh.exit.i_crit_edge ]
  %retval.0.i22.i = phi i32 [ %71, %if.then.i17.i ], [ %cond.i.i124, %if.end8.i.i125 ], [ 480, %if.end.i21.i.norm_maxh.exit.i_crit_edge ]
  %add.i = add nuw nsw i32 %64, 4096
  %div.i126 = udiv i32 %retval.0.i25.i, %add.i
  %78 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div.i126, ptr %width, align 4
  %shl2.i127 = shl i32 %retval.0.i22.i, 12
  %add3.i = add nuw nsw i32 %65, 4096
  %div4.i = udiv i32 %shl2.i127, %add3.i
  %79 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div4.i, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i25.i)
  %cmp.i = icmp ugt i32 %add.i, %retval.0.i25.i
  br i1 %cmp.i, label %if.then.i128, label %norm_maxh.exit.i.if.end.i129_crit_edge

norm_maxh.exit.i.if.end.i129_crit_edge:           ; preds = %norm_maxh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i129

if.then.i128:                                     ; preds = %norm_maxh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %width, align 4
  br label %if.end.i129

if.end.i129:                                      ; preds = %if.then.i128, %norm_maxh.exit.i.if.end.i129_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %shl2.i127)
  %cmp5.i = icmp ugt i32 %add3.i, %shl2.i127
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i129.scale_to_size.exit_crit_edge

if.end.i129.scale_to_size.exit_crit_edge:         ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %scale_to_size.exit

if.then6.i:                                       ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %height, align 4
  br label %scale_to_size.exit

scale_to_size.exit:                               ; preds = %if.then6.i, %if.end.i129.scale_to_size.exit_crit_edge
  %82 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %width, align 4
  %84 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %fmt, align 4
  %85 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %height, align 4
  %87 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %height4, align 4
  %88 = ptrtoint ptr %fmt7.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fmt7.0, align 4
  %90 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %pixelformat, align 4
  %depth = getelementptr inbounds %struct.em28xx_fmt, ptr %fmt7.0, i32 0, i32 1
  %91 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %depth, align 4
  %mul49 = mul i32 %92, %83
  %add = add i32 %mul49, 7
  %shr = lshr i32 %add, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %93 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shr, ptr %bytesperline, align 4
  %mul53 = mul i32 %shr, %86
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %94 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul53, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %95 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %colorspace, align 4
  %progressive = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 21
  %96 = ptrtoint ptr %progressive to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %progressive, align 8, !range !469
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool56.not = icmp eq i8 %97, 0
  br i1 %tobool56.not, label %if.else59, label %scale_to_size.exit.if.end64_crit_edge

scale_to_size.exit.if.end64_crit_edge:            ; preds = %scale_to_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.else59:                                        ; preds = %scale_to_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %interlaced_fieldmode = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 22
  %98 = ptrtoint ptr %interlaced_fieldmode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %interlaced_fieldmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool60.not = icmp eq i32 %99, 0
  %cond61 = select i1 %tobool60.not, i32 2, i32 4
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %scale_to_size.exit.if.end64_crit_edge
  %.sink = phi i32 [ %cond61, %if.else59 ], [ 1, %scale_to_size.exit.if.end64_crit_edge ]
  %100 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink, ptr %100, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %height) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %norm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2, align 4
  %norm1 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %norm1, align 8
  %6 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %norm) #1 align 64 {
entry:
  %f = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %f) #12
  %4 = call ptr @memset(ptr %f, i32 255, i32 204)
  %norm2 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %norm2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %norm2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %norm)
  %cmp = icmp eq i64 %6, %norm
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming_users = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 17
  %7 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %streaming_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %norm2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %norm, ptr %norm2, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 720, ptr %fmt, align 4
  %and = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 576, i32 480
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %height, align 4
  %call8 = call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef nonnull %f)
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  %width11 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 23
  %14 = ptrtoint ptr %width11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width11, align 8
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %height14 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height14, align 4
  %hscale = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 25
  %vscale = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 26
  %is_webcam.i.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %is_webcam.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %is_webcam.i.i, align 4
  %19 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i22.i, label %if.then.i18.i

if.then.i18.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v4l21, align 4
  %sensor_xres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sensor_xres.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sensor_xres.i.i, align 4
  %sensor_yres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %21, i32 0, i32 14
  %24 = ptrtoint ptr %sensor_yres.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sensor_yres.i.i, align 8
  %phi.bo.i = shl i32 %23, 12
  br label %size_to_scale.exit

if.end.i22.i:                                     ; preds = %if.end5
  %max_range_640_480.i.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 12, i32 10
  %26 = ptrtoint ptr %max_range_640_480.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load2.i.i = load i16, ptr %max_range_640_480.i.i, align 8
  %27 = and i16 %bf.load2.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool6.not.i.i = icmp eq i16 %27, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i22.i.size_to_scale.exit_crit_edge

if.end.i22.i.size_to_scale.exit_crit_edge:        ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %size_to_scale.exit

if.end8.i.i:                                      ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v4l21, align 4
  %norm.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %norm.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %norm.i.i, align 8
  %and.i.i = and i64 %31, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool9.not.i.i = icmp eq i64 %and.i.i, 0
  %cond.i.i = select i1 %tobool9.not.i.i, i32 480, i32 576
  br label %size_to_scale.exit

size_to_scale.exit:                               ; preds = %if.end8.i.i, %if.end.i22.i.size_to_scale.exit_crit_edge, %if.then.i18.i
  %retval.0.i26.i = phi i32 [ %phi.bo.i, %if.then.i18.i ], [ 2949120, %if.end8.i.i ], [ 2621440, %if.end.i22.i.size_to_scale.exit_crit_edge ]
  %retval.0.i23.i = phi i32 [ %25, %if.then.i18.i ], [ %cond.i.i, %if.end8.i.i ], [ 480, %if.end.i22.i.size_to_scale.exit_crit_edge ]
  %div.i = udiv i32 %retval.0.i26.i, %13
  %sub.i = add i32 %div.i, -4096
  %32 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 16383) #12
  %33 = ptrtoint ptr %hscale to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hscale, align 4
  %shl2.i = shl i32 %retval.0.i23.i, 12
  %div3.i = udiv i32 %shl2.i, %16
  %sub4.i = add i32 %div3.i, -4096
  %34 = tail call i32 @llvm.umin.i32(i32 %sub4.i, i32 16383) #12
  %35 = ptrtoint ptr %vscale to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %vscale, align 4
  tail call fastcc void @em28xx_resolution_set(ptr noundef %1)
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn64 = load ptr, ptr %subdevs, align 4
  %cmp21.not66 = icmp eq ptr %.pn64, %subdevs
  br i1 %cmp21.not66, label %size_to_scale.exit.cleanup_crit_edge, label %size_to_scale.exit.for.body_crit_edge

size_to_scale.exit.for.body_crit_edge:            ; preds = %size_to_scale.exit
  br label %for.body

size_to_scale.exit.cleanup_crit_edge:             ; preds = %size_to_scale.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %size_to_scale.exit.for.body_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn64, %size_to_scale.exit.for.body_crit_edge ]
  %__sd.068 = getelementptr i8, ptr %.pn67, i32 -80
  %ops = getelementptr i8, ptr %.pn67, i32 24
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video, align 4
  %tobool22.not = icmp eq ptr %40, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_std, align 4
  %tobool25.not = icmp eq ptr %42, null
  br i1 %tobool25.not, label %land.lhs.true.for.inc_crit_edge, label %if.then26

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %norm2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %norm2, align 8
  %call31 = tail call i32 %42(ptr noundef %__sd.068, i64 noundef %44) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %45 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp21.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp21.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %size_to_scale.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %size_to_scale.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %norm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn26 = load ptr, ptr %subdevs, align 4
  %cmp.not29 = icmp eq ptr %.pn26, %subdevs
  br i1 %cmp.not29, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn26, %entry.for.body_crit_edge ]
  %__sd.031 = getelementptr i8, ptr %.pn30, i32 -80
  %ops = getelementptr i8, ptr %.pn30, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %querystd, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 %10(ptr noundef %__sd.031, ptr noundef %norm) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn30, align 4
  %12 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2, align 4
  %subdevs4 = getelementptr inbounds %struct.em28xx_v4l2, ptr %13, i32 0, i32 2, i32 2
  %cmp.not = icmp eq ptr %.pn, %subdevs4
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %model = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 8
  %arrayidx1 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %5, i32 17, i32 %3
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type4 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %8 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %type4, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %9 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %model, align 8
  %arrayidx8 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %10, i32 17, i32 %3
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [5 x ptr], ptr @iname, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %14, i32 noundef 32) #12
  %15 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %model, align 8
  %arrayidx15 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %16, i32 17, i32 %3
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp17 = icmp eq i32 %18, 3
  br i1 %cmp17, label %if.then18, label %if.end3.if.end20_crit_edge

if.end3.if.end20_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type4, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end3.if.end20_crit_edge
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v4l2, align 4
  %tvnorms = getelementptr inbounds %struct.em28xx_v4l2, ptr %21, i32 0, i32 4, i32 22
  %22 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %24 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %std, align 8
  %is_webcam = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %is_webcam to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %is_webcam, align 4
  %26 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not = icmp eq i8 %26, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 7
  %27 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %capabilities, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  %audioset = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 3
  %28 = ptrtoint ptr %audioset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %audioset, align 8
  %arrayidx25 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 0
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp26.not = icmp eq i32 %30, -1
  br i1 %cmp26.not, label %if.end23.for.inc_crit_edge, label %if.then27

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %audioset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %audioset, align 8
  %or = or i32 %32, 1
  store i32 %or, ptr %audioset, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %if.end23.for.inc_crit_edge
  %arrayidx25.1 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 1
  %33 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx25.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp26.not.1 = icmp eq i32 %34, -1
  br i1 %cmp26.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then27.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then27.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %audioset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %audioset, align 8
  %or.1 = or i32 %36, 2
  store i32 %or.1, ptr %audioset, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then27.1, %for.inc.for.inc.1_crit_edge
  %arrayidx25.2 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 2
  %37 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx25.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp26.not.2 = icmp eq i32 %38, -1
  br i1 %cmp26.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then27.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then27.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %audioset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %audioset, align 8
  %or.2 = or i32 %40, 4
  store i32 %or.2, ptr %audioset, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then27.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx25.3 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 3
  %41 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx25.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp26.not.3 = icmp eq i32 %42, -1
  br i1 %cmp26.not.3, label %for.inc.2.cleanup_crit_edge, label %if.then27.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %audioset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %audioset, align 8
  %or.3 = or i32 %44, 8
  store i32 %or.3, ptr %audioset, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then27.3, %for.inc.2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then27.3 ], [ 0, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctl_input = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %ctl_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctl_input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i)
  %cmp = icmp ugt i32 %i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %model = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 8
  %arrayidx1 = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %3, i32 17, i32 %i
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @video_mux(ptr noundef %1, i32 noundef %i)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enumaudio(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %has_msp34xx.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %has_msp34xx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %has_msp34xx.i, align 4
  %7 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, -1
  %spec.store.select.i = select i1 %cmp.not.i, i32 -1, i32 1
  %idx.0.i = select i1 %tobool.not.i, i32 %5, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idx.0.i)
  %8 = icmp ult i32 %idx.0.i, 8
  br i1 %8, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.vidioc_enumaudio, i32 0, i32 %idx.0.i
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %name26.i = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 1
  %call28.i = tail call i32 @strscpy(ptr noundef %name26.i, ptr noundef nonnull %switch.load, i32 noundef 32) #12
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %a, align 4
  %capability.i = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 2
  %11 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %capability.i, align 4
  %12 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not.i = icmp eq i32 %12, 0
  br i1 %tobool31.not.i, label %switch.lookup.cleanup_crit_edge, label %do.end.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  %dev34.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev34.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.vidioc_enumaudio, i32 noundef %3, ptr noundef %name26.i) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_audio(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ctl_ainput = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctl_ainput, align 4
  %arrayidx = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1 = icmp eq i32 %3, %5
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ]
  %has_msp34xx.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %has_msp34xx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %has_msp34xx.i, align 4
  %7 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not.i = icmp eq i32 %3, -1
  %spec.store.select.i = select i1 %cmp.not.i, i32 -1, i32 1
  %idx.0.i = select i1 %tobool.not.i, i32 %3, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idx.0.i)
  %8 = icmp ult i32 %idx.0.i, 8
  br i1 %8, label %switch.lookup, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.then
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.vidioc_g_audio, i32 0, i32 %idx.0.i
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %name26.i = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 1
  %call28.i = tail call i32 @strscpy(ptr noundef %name26.i, ptr noundef nonnull %switch.load, i32 noundef 32) #12
  %10 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.010.lcssa, ptr %a, align 4
  %capability.i = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 2
  %11 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %capability.i, align 4
  %12 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not.i = icmp eq i32 %12, 0
  br i1 %tobool31.not.i, label %switch.lookup.cleanup_crit_edge, label %do.end.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  %dev34.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev34.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.vidioc_g_audio, i32 noundef %i.010.lcssa, ptr noundef %name26.i) #15
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %16)
  %cmp1.1 = icmp eq i32 %3, %16
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %18)
  %cmp1.2 = icmp eq i32 %3, %18
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %20)
  %cmp1.3 = icmp eq i32 %3, %20
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cleanup:                                          ; preds = %for.inc.2.cleanup_crit_edge, %do.end.i, %switch.lookup.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_audio(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp2 = icmp eq i32 %5, -1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ctl_ainput = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %ctl_ainput to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ctl_ainput, align 4
  %arrayidx7 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 0
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp8 = icmp eq i32 %5, %8
  br i1 %cmp8, label %if.end4.if.end13_crit_edge, label %for.inc

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %if.end4
  %arrayidx7.1 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 1
  %9 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %10)
  %cmp8.1 = icmp eq i32 %5, %10
  br i1 %cmp8.1, label %for.inc.if.end13_crit_edge, label %for.inc.1

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %for.inc
  %arrayidx7.2 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 2
  %11 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %12)
  %cmp8.2 = icmp eq i32 %5, %12
  br i1 %cmp8.2, label %for.inc.1.if.end13_crit_edge, label %for.inc.2

for.inc.1.if.end13_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx7.3 = getelementptr %struct.em28xx, ptr %1, i32 0, i32 29, i32 3
  %13 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp8.3 = icmp eq i32 %5, %14
  br i1 %cmp8.3, label %for.inc.2.if.end13_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.2.if.end13_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %for.inc.2.if.end13_crit_edge, %for.inc.1.if.end13_crit_edge, %for.inc.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %i.049.lcssa = phi i32 [ 0, %if.end4.if.end13_crit_edge ], [ 1, %for.inc.if.end13_crit_edge ], [ 2, %for.inc.1.if.end13_crit_edge ], [ 3, %for.inc.2.if.end13_crit_edge ]
  %model = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %model, align 8
  %aout = getelementptr [0 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %16, i32 17, i32 %i.049.lcssa, i32 3
  %17 = ptrtoint ptr %aout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aout, align 4
  %ctl_aoutput = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %18
  %19 = ptrtoint ptr %ctl_aoutput to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %ctl_aoutput, align 8
  %20 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %21 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf, align 4
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev23, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.153, i32 noundef %5) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end13.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %p) #1 align 64 {
entry:
  %ival = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ival) #12
  %0 = call ptr @memset(ptr %ival, i32 0, i32 48)
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v4l21, align 4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 9, label %entry.if.end_crit_edge78
  ]

entry.if.end_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge78
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %readbuffers, align 4
  %9 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %parm, align 4
  %is_webcam = getelementptr inbounds %struct.em28xx, ptr %2, i32 0, i32 8
  %10 = ptrtoint ptr %is_webcam to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %is_webcam, align 4
  %11 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %4, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn62 = load ptr, ptr %subdevs, align 4
  %cmp9.not64 = icmp eq ptr %.pn62, %subdevs
  br i1 %cmp9.not64, label %if.then5.if.then34_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

if.then5.if.then34_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then5.for.body_crit_edge
  %.pn66 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn62, %if.then5.for.body_crit_edge ]
  %__err.065 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.then5.for.body_crit_edge ]
  %__sd.067 = getelementptr i8, ptr %.pn66, i32 -80
  %ops = getelementptr i8, ptr %.pn66, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %for.body.if.end20_crit_edge, label %land.lhs.true11

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true11:                                  ; preds = %for.body
  %g_frame_interval = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %g_frame_interval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %g_frame_interval, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true11.if.end20_crit_edge, label %if.then15

land.lhs.true11.if.end20_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = call i32 %18(ptr noundef %__sd.067, ptr noundef nonnull %ival) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %land.lhs.true11.if.end20_crit_edge, %for.body.if.end20_crit_edge
  %__err.1 = phi i32 [ %call19, %if.then15 ], [ %__err.065, %land.lhs.true11.if.end20_crit_edge ], [ %__err.065, %for.body.if.end20_crit_edge ]
  %19 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %__err.1, label %if.end20.cleanup_crit_edge [
    i32 0, label %if.end20.for.inc_crit_edge
    i32 -515, label %if.end20.for.inc_crit_edge79
  ]

if.end20.for.inc_crit_edge79:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %if.end20.for.inc_crit_edge79
  %20 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn66, align 4
  %cmp9.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp9.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %21 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %__err.1, label %for.end.cleanup_crit_edge [
    i32 -515, label %for.end.if.then34_crit_edge
    i32 0, label %for.end.if.then34_crit_edge80
  ]

for.end.if.then34_crit_edge80:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

for.end.if.then34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %for.end.if.then34_crit_edge, %for.end.if.then34_crit_edge80, %if.then5.if.then34_crit_edge
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %22 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %interval, align 4
  %24 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %timeperframe, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %norm = getelementptr inbounds %struct.em28xx_v4l2, ptr %4, i32 0, i32 20
  %25 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %norm, align 8
  %conv = trunc i64 %26 to i32
  %timeperframe38 = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2
  tail call void @v4l2_video_std_frame_period(i32 noundef %conv, ptr noundef %timeperframe38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then34, %for.end.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.else ], [ %__err.1, %for.end.cleanup_crit_edge ], [ %__err.1, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ival) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %p) #1 align 64 {
entry:
  %ival = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ival) #12
  %2 = call ptr @memset(ptr %ival, i32 0, i32 48)
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %ival, i32 0, i32 1
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %timeperframe to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %timeperframe, align 4
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %interval, align 4
  %is_webcam = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %is_webcam to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_webcam, align 4
  %7 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end4_crit_edge
    i32 9, label %if.end.if.end4_crit_edge80
  ]

if.end.if.end4_crit_edge80:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge80
  %11 = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 196)
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %p, i32 0, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %readbuffers, align 4
  %14 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %parm, align 4
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %16, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn63 = load ptr, ptr %subdevs, align 4
  %cmp12.not66 = icmp eq ptr %.pn63, %subdevs
  br i1 %cmp12.not66, label %if.end4.if.then37_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.if.then37_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn63, %if.end4.for.body_crit_edge ]
  %__err.067 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %__sd.069 = getelementptr i8, ptr %.pn68, i32 -80
  %ops = getelementptr i8, ptr %.pn68, i32 24
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %video, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %for.body.if.end23_crit_edge, label %land.lhs.true14

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true14:                                  ; preds = %for.body
  %s_frame_interval = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %s_frame_interval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_frame_interval, align 4
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %land.lhs.true14.if.end23_crit_edge, label %if.then18

land.lhs.true14.if.end23_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 %23(ptr noundef %__sd.069, ptr noundef nonnull %ival) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %land.lhs.true14.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %__err.1 = phi i32 [ %call22, %if.then18 ], [ %__err.067, %land.lhs.true14.if.end23_crit_edge ], [ %__err.067, %for.body.if.end23_crit_edge ]
  %24 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %__err.1, label %if.end23.cleanup_crit_edge [
    i32 0, label %if.end23.for.inc_crit_edge
    i32 -515, label %if.end23.for.inc_crit_edge81
  ]

if.end23.for.inc_crit_edge81:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %if.end23.for.inc_crit_edge81
  %25 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn68, align 4
  %26 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v4l2, align 4
  %subdevs11 = getelementptr inbounds %struct.em28xx_v4l2, ptr %27, i32 0, i32 2, i32 2
  %cmp12.not = icmp eq ptr %.pn, %subdevs11
  br i1 %cmp12.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %28 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %__err.1, label %for.end.cleanup_crit_edge [
    i32 -515, label %for.end.if.then37_crit_edge
    i32 0, label %for.end.if.then37_crit_edge82
  ]

for.end.if.then37_crit_edge82:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

for.end.if.then37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37:                                        ; preds = %for.end.if.then37_crit_edge, %for.end.if.then37_crit_edge82, %if.end4.if.then37_crit_edge
  %29 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %interval, align 4
  %31 = ptrtoint ptr %timeperframe to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %timeperframe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %for.end.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then37 ], [ %__err.1, %for.end.cleanup_crit_edge ], [ %__err.1, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ival) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.154, i32 noundef 32) #12
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn32 = load ptr, ptr %subdevs, align 4
  %cmp6.not35 = icmp eq ptr %.pn32, %subdevs
  br i1 %cmp6.not35, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn32, %if.end.for.body_crit_edge ]
  %__sd.037 = getelementptr i8, ptr %.pn36, i32 -80
  %ops = getelementptr i8, ptr %.pn36, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_tuner, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 %12(ptr noundef %__sd.037, ptr noundef %t) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn36, align 4
  %14 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2, align 4
  %subdevs5 = getelementptr inbounds %struct.em28xx_v4l2, ptr %15, i32 0, i32 2, i32 2
  %cmp6.not = icmp eq ptr %.pn, %subdevs5
  br i1 %cmp6.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn30 = load ptr, ptr %subdevs, align 4
  %cmp5.not33 = icmp eq ptr %.pn30, %subdevs
  br i1 %cmp5.not33, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn30, %do.body.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_tuner, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 %12(ptr noundef %__sd.035, ptr noundef %t) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn34, align 4
  %14 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2, align 4
  %subdevs4 = getelementptr inbounds %struct.em28xx_v4l2, ptr %15, i32 0, i32 2, i32 2
  %cmp5.not = icmp eq ptr %.pn, %subdevs4
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l21, align 4
  %frequency = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 8
  %frequency2 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %frequency2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #1 align 64 {
entry:
  %new_freq = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %new_freq) #12
  %0 = call ptr @memcpy(ptr %new_freq, ptr %f, i32 44)
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v4l21, align 4
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %4, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn86 = load ptr, ptr %subdevs, align 4
  %cmp5.not88 = icmp eq ptr %.pn86, %subdevs
  br i1 %cmp5.not88, label %do.body.for.cond32.preheader_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.cond32.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.inc.for.cond32.preheader_crit_edge, %do.body.for.cond32.preheader_crit_edge
  %8 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn8591 = load ptr, ptr %subdevs, align 4
  %cmp36.not93 = icmp eq ptr %.pn8591, %subdevs
  br i1 %cmp36.not93, label %for.cond32.preheader.do.end60_crit_edge, label %for.cond32.preheader.for.body38_crit_edge

for.cond32.preheader.for.body38_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body38

for.cond32.preheader.do.end60_crit_edge:          ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn89 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn86, %do.body.for.body_crit_edge ]
  %__sd.090 = getelementptr i8, ptr %.pn89, i32 -80
  %ops = getelementptr i8, ptr %.pn89, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tuner6 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %tuner6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner6, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_frequency, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 %14(ptr noundef %__sd.090, ptr noundef %f) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn89 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn89, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.for.cond32.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.cond32.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond32.preheader

for.body38:                                       ; preds = %for.inc52.for.body38_crit_edge, %for.cond32.preheader.for.body38_crit_edge
  %.pn8594 = phi ptr [ %.pn85, %for.inc52.for.body38_crit_edge ], [ %.pn8591, %for.cond32.preheader.for.body38_crit_edge ]
  %__sd24.095 = getelementptr i8, ptr %.pn8594, i32 -80
  %ops39 = getelementptr i8, ptr %.pn8594, i32 24
  %16 = ptrtoint ptr %ops39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops39, align 4
  %tuner40 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tuner40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner40, align 4
  %tobool41.not = icmp eq ptr %19, null
  br i1 %tobool41.not, label %for.body38.for.inc52_crit_edge, label %land.lhs.true42

for.body38.for.inc52_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc52

land.lhs.true42:                                  ; preds = %for.body38
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %g_frequency, align 4
  %tobool45.not = icmp eq ptr %21, null
  br i1 %tobool45.not, label %land.lhs.true42.for.inc52_crit_edge, label %if.then46

land.lhs.true42.for.inc52_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc52

if.then46:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = call i32 %21(ptr noundef %__sd24.095, ptr noundef nonnull %new_freq) #12
  br label %for.inc52

for.inc52:                                        ; preds = %if.then46, %land.lhs.true42.for.inc52_crit_edge, %for.body38.for.inc52_crit_edge
  %22 = ptrtoint ptr %.pn8594 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn85 = load ptr, ptr %.pn8594, align 4
  %cmp36.not = icmp eq ptr %.pn85, %subdevs
  br i1 %cmp36.not, label %for.inc52.do.end60_crit_edge, label %for.inc52.for.body38_crit_edge

for.inc52.for.body38_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38

for.inc52.do.end60_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

do.end60:                                         ; preds = %for.inc52.do.end60_crit_edge, %for.cond32.preheader.do.end60_crit_edge
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %new_freq, i32 0, i32 2
  %23 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frequency, align 4
  %frequency63 = getelementptr inbounds %struct.em28xx_v4l2, ptr %4, i32 0, i32 18
  %25 = ptrtoint ptr %frequency63 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %frequency63, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %new_freq) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %reg) #1 align 64 {
entry:
  %val28 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %reg11 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %5 = ptrtoint ptr %reg11 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %reg11, align 1
  br i1 %tobool.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv = trunc i64 %6 to i8
  %call4 = tail call i32 @em28xx_read_ac97(ptr noundef %1, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then2.cleanup39_crit_edge, label %if.end8

if.then2.cleanup39_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %conv966 = zext i32 %call4 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %conv966, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1, ptr %size, align 1
  br label %cleanup39

if.end10:                                         ; preds = %if.end
  %conv12 = trunc i64 %6 to i32
  %9 = zext i32 %conv12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %conv12, label %if.then18 [
    i32 64, label %if.end10.if.else_crit_edge
    i32 48, label %if.end10.if.else_crit_edge67
    i32 50, label %if.end10.if.else_crit_edge68
  ]

if.end10.if.else_crit_edge68:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end10.if.else_crit_edge67:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then18:                                        ; preds = %if.end10
  %size1463 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %10 = ptrtoint ptr %size1463 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1, ptr %size1463, align 1
  %conv20 = trunc i64 %6 to i16
  %call21 = tail call i32 @em28xx_read_reg(ptr noundef %1, i16 noundef zeroext %conv20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then18.cleanup39_crit_edge, label %if.end25

if.then18.cleanup39_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup39

if.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %conv2665 = zext i32 %call21 to i64
  %val27 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %11 = ptrtoint ptr %val27 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %conv2665, ptr %val27, align 1
  br label %cleanup39

if.else:                                          ; preds = %if.end10.if.else_crit_edge, %if.end10.if.else_crit_edge67, %if.end10.if.else_crit_edge68
  %size14 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %12 = ptrtoint ptr %size14 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 2, ptr %size14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val28) #12
  %13 = ptrtoint ptr %val28 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %val28, align 2
  %em28xx_read_reg_req_len = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 65
  %14 = ptrtoint ptr %em28xx_read_reg_req_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %em28xx_read_reg_req_len, align 8
  %conv30 = trunc i64 %6 to i16
  %call31 = call i32 %15(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv30, ptr noundef nonnull %val28, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %cleanup39.critedge, label %if.end35

if.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %val28 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %val28, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %conv36 = zext i16 %18 to i64
  %val37 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %19 = ptrtoint ptr %val37 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %conv36, ptr %val37, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val28) #12
  br label %cleanup39

cleanup39.critedge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val28) #12
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup39.critedge, %if.end35, %if.end25, %if.then18.cleanup39_crit_edge, %if.end8, %if.then2.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.1 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup39_crit_edge ], [ %call4, %if.then2.cleanup39_crit_edge ], [ %call21, %if.then18.cleanup39_crit_edge ], [ %call31, %cleanup39.critedge ], [ 0, %if.end35 ], [ 0, %if.end25 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %reg) #1 align 64 {
entry:
  %buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #12
  %2 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %reg3 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %5 = ptrtoint ptr %reg3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %reg3, align 1
  %conv = trunc i64 %6 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %val, align 1
  %conv4 = trunc i64 %8 to i16
  %call5 = tail call i32 @em28xx_write_ac97(ptr noundef %1, i8 noundef zeroext %conv, i16 noundef zeroext %conv4) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %val7 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %val7 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %val7, align 1
  %conv8 = trunc i64 %10 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %buf, align 2
  %reg9 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %13 = ptrtoint ptr %reg9 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %reg9, align 1
  %conv10 = trunc i64 %14 to i16
  %conv12 = trunc i64 %14 to i32
  %15 = zext i32 %conv12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %conv12, label %sw.default.i [
    i32 64, label %if.end6.em28xx_reg_len.exit_crit_edge
    i32 48, label %if.end6.em28xx_reg_len.exit_crit_edge23
    i32 50, label %if.end6.em28xx_reg_len.exit_crit_edge24
  ]

if.end6.em28xx_reg_len.exit_crit_edge24:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_reg_len.exit

if.end6.em28xx_reg_len.exit_crit_edge23:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_reg_len.exit

if.end6.em28xx_reg_len.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_reg_len.exit

sw.default.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %em28xx_reg_len.exit

em28xx_reg_len.exit:                              ; preds = %sw.default.i, %if.end6.em28xx_reg_len.exit_crit_edge, %if.end6.em28xx_reg_len.exit_crit_edge23, %if.end6.em28xx_reg_len.exit_crit_edge24
  %retval.0.i = phi i32 [ 1, %sw.default.i ], [ 2, %if.end6.em28xx_reg_len.exit_crit_edge ], [ 2, %if.end6.em28xx_reg_len.exit_crit_edge23 ], [ 2, %if.end6.em28xx_reg_len.exit_crit_edge24 ]
  %call14 = call i32 @em28xx_write_regs(ptr noundef %1, i16 noundef zeroext %conv10, ptr noundef nonnull %buf, i32 noundef %retval.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %em28xx_reg_len.exit, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then2 ], [ %call14, %em28xx_reg_len.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_chip_info(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp eq i32 %4, 1
  %name = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.155, i32 noundef 32) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v4l2, align 4
  %name7 = getelementptr inbounds %struct.em28xx_v4l2, ptr %6, i32 0, i32 2, i32 4
  %call9 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name7, i32 noundef 32) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %is_webcam.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_webcam.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %is_webcam.i, align 4
  %3 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i72, label %if.then.i68

if.then.i68:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %v4l21.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %v4l21.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l21.i, align 4
  %sensor_xres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sensor_xres.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_xres.i, align 4
  %sensor_yres.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %sensor_yres.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sensor_yres.i, align 8
  br label %norm_maxh.exit

if.end.i72:                                       ; preds = %entry
  %max_range_640_480.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 12, i32 10
  %10 = ptrtoint ptr %max_range_640_480.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load2.i = load i16, ptr %max_range_640_480.i, align 8
  %11 = and i16 %bf.load2.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool6.not.i = icmp eq i16 %11, 0
  %v4l21.i6478 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i72.norm_maxh.exit_crit_edge

if.end.i72.norm_maxh.exit_crit_edge:              ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %norm_maxh.exit

if.end8.i:                                        ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %v4l21.i6478 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l21.i6478, align 4
  %norm.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %15, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool9.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool9.not.i, i32 480, i32 576
  br label %norm_maxh.exit

norm_maxh.exit:                                   ; preds = %if.end8.i, %if.end.i72.norm_maxh.exit_crit_edge, %if.then.i68
  %v4l21.i6481 = phi ptr [ %v4l21.i, %if.then.i68 ], [ %v4l21.i6478, %if.end8.i ], [ %v4l21.i6478, %if.end.i72.norm_maxh.exit_crit_edge ]
  %retval.0.i79 = phi i32 [ %7, %if.then.i68 ], [ 720, %if.end8.i ], [ 640, %if.end.i72.norm_maxh.exit_crit_edge ]
  %retval.0.i73 = phi i32 [ %9, %if.then.i68 ], [ %cond.i, %if.end8.i ], [ 480, %if.end.i72.norm_maxh.exit_crit_edge ]
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %16 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixel_format, align 4
  %18 = load i32, ptr @format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp2.i = icmp eq i32 %18, %17
  br i1 %cmp2.i, label %norm_maxh.exit.if.end11_crit_edge, label %for.cond.i

norm_maxh.exit.if.end11_crit_edge:                ; preds = %norm_maxh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.cond.i:                                       ; preds = %norm_maxh.exit
  %19 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp2.1.i = icmp eq i32 %19, %17
  br i1 %cmp2.1.i, label %for.cond.i.if.end11_crit_edge, label %for.cond.1.i

for.cond.i.if.end11_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.cond.1.i:                                     ; preds = %for.cond.i
  %20 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %17)
  %cmp2.2.i = icmp eq i32 %20, %17
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end11_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end11_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %21 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %17)
  %cmp2.3.i = icmp eq i32 %21, %17
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end11_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end11_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %22 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %17)
  %cmp2.4.i = icmp eq i32 %22, %17
  br i1 %cmp2.4.i, label %for.cond.3.i.if.end11_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end11_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %23 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %17)
  %cmp2.5.i = icmp eq i32 %23, %17
  br i1 %cmp2.5.i, label %for.cond.4.i.if.end11_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end11_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %24 = load i32, ptr getelementptr inbounds ([7 x %struct.em28xx_fmt], ptr @format, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %17)
  %cmp2.6.i = icmp eq i32 %24, %17
  br i1 %cmp2.6.i, label %for.cond.5.i.if.end11_crit_edge, label %do.body

for.cond.5.i.if.end11_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.body:                                          ; preds = %for.cond.5.i
  %25 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not = icmp eq i32 %25, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %26 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev7, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157, i32 noundef %17) #15
  br label %cleanup

if.end11:                                         ; preds = %for.cond.5.i.if.end11_crit_edge, %for.cond.4.i.if.end11_crit_edge, %for.cond.3.i.if.end11_crit_edge, %for.cond.2.i.if.end11_crit_edge, %for.cond.1.i.if.end11_crit_edge, %for.cond.i.if.end11_crit_edge, %norm_maxh.exit.if.end11_crit_edge
  %is_em2800 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 12, i32 10
  %28 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %is_em2800, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool12.not = icmp sgt i16 %bf.load, -1
  %29 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fsize, align 4
  br i1 %tobool12.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp = icmp ugt i32 %30, 1
  br i1 %cmp, label %if.then13.cleanup_crit_edge, label %if.end15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type, align 4
  %add = add nuw nsw i32 %30, 1
  %div = udiv i32 %retval.0.i79, %add
  %32 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %32, align 4
  %div19 = udiv i32 %retval.0.i73, %add
  %height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %34 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div19, ptr %height, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp22.not = icmp eq i32 %30, 0
  br i1 %cmp22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %type25 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %35 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %type25, align 4
  %36 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %37 = ptrtoint ptr %is_webcam.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i = load i8, ptr %is_webcam.i, align 4
  %38 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %if.end.i21.i, label %norm_maxh.exit.i

if.end.i21.i:                                     ; preds = %if.end24
  %39 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load2.i.i = load i16, ptr %is_em2800, align 8
  %40 = and i16 %bf.load2.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool6.not.i.i = icmp eq i16 %40, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i21.i.if.end30.thread_crit_edge

if.end.i21.i.if.end30.thread_crit_edge:           ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.thread

if.end8.i.i:                                      ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %v4l21.i6481 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %v4l21.i6481, align 4
  %norm.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %norm.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %norm.i.i, align 8
  %and.i.i = and i64 %44, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool9.not.i.i = icmp eq i64 %and.i.i, 0
  %phi.bo = select i1 %tobool9.not.i.i, i32 96, i32 115
  br label %if.end30.thread

if.end30.thread:                                  ; preds = %if.end8.i.i, %if.end.i21.i.if.end30.thread_crit_edge
  %retval.0.i25.i.ph = phi i32 [ 128, %if.end.i21.i.if.end30.thread_crit_edge ], [ 144, %if.end8.i.i ]
  %retval.0.i22.i.ph = phi i32 [ 96, %if.end.i21.i.if.end30.thread_crit_edge ], [ %phi.bo, %if.end8.i.i ]
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i25.i.ph, ptr %36, align 4
  br label %if.end35.sink.split

norm_maxh.exit.i:                                 ; preds = %if.end24
  %46 = ptrtoint ptr %v4l21.i6481 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %v4l21.i6481, align 4
  %sensor_xres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %sensor_xres.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sensor_xres.i.i, align 4
  %sensor_yres.i.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %47, i32 0, i32 14
  %50 = ptrtoint ptr %sensor_yres.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sensor_yres.i.i, align 8
  %phi.bo.i = shl i32 %49, 12
  %div.i = udiv i32 %phi.bo.i, 20479
  %52 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div.i, ptr %36, align 4
  %shl2.i = shl i32 %51, 12
  %div4.i = udiv i32 %shl2.i, 20479
  %53 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div4.i, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %phi.bo.i)
  %54 = icmp ult i32 %phi.bo.i, 20479
  br i1 %54, label %if.then.i75, label %norm_maxh.exit.i.if.end.i76_crit_edge

norm_maxh.exit.i.if.end.i76_crit_edge:            ; preds = %norm_maxh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i76

if.then.i75:                                      ; preds = %norm_maxh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %36, align 4
  br label %if.end.i76

if.end.i76:                                       ; preds = %if.then.i75, %norm_maxh.exit.i.if.end.i76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %shl2.i)
  %56 = icmp ult i32 %shl2.i, 20479
  br i1 %56, label %if.then6.i, label %if.end.i76.scale_to_size.exit_crit_edge

if.end.i76.scale_to_size.exit_crit_edge:          ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %scale_to_size.exit

if.then6.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %min_height, align 4
  br label %scale_to_size.exit

scale_to_size.exit:                               ; preds = %if.then6.i, %if.end.i76.scale_to_size.exit_crit_edge
  %58 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %.pr)
  %cmp27 = icmp ult i32 %.pr, 48
  br i1 %cmp27, label %if.then28, label %scale_to_size.exit.if.end30_crit_edge

scale_to_size.exit.if.end30_crit_edge:            ; preds = %scale_to_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %scale_to_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 48, ptr %36, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %scale_to_size.exit.if.end30_crit_edge
  %60 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr95 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %.pr95)
  %cmp32 = icmp ult i32 %.pr95, 38
  br i1 %cmp32, label %if.end30.if.end35.sink.split_crit_edge, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end30.if.end35.sink.split_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.end30.if.end35.sink.split_crit_edge, %if.end30.thread
  %retval.0.i22.i.ph.sink = phi i32 [ %retval.0.i22.i.ph, %if.end30.thread ], [ 38, %if.end30.if.end35.sink.split_crit_edge ]
  %61 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i22.i.ph.sink, ptr %min_height, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.end30.if.end35_crit_edge
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i79, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %63 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i73, ptr %max_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %64 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %65 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end20.cleanup_crit_edge, %if.end15, %if.then13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %if.end35 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_video_std_frame_period(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_ac97(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_ac97(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !472

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.142, i32 noundef 32) #12
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn36 = load ptr, ptr %subdevs, align 4
  %cmp7.not39 = icmp eq ptr %.pn36, %subdevs
  br i1 %cmp7.not39, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %if.end.for.body_crit_edge ]
  %__sd.041 = getelementptr i8, ptr %.pn40, i32 -80
  %ops = getelementptr i8, ptr %.pn40, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_tuner, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 %12(ptr noundef %__sd.041, ptr noundef %t) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn40, align 4
  %14 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2, align 4
  %subdevs6 = getelementptr inbounds %struct.em28xx_v4l2, ptr %15, i32 0, i32 2, i32 2
  %cmp7.not = icmp eq ptr %.pn, %subdevs6
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radio_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2, align 4
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn30 = load ptr, ptr %subdevs, align 4
  %cmp5.not33 = icmp eq ptr %.pn30, %subdevs
  br i1 %cmp5.not33, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn30, %do.body.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_tuner, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 %12(ptr noundef %__sd.035, ptr noundef %t) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn34, align 4
  %14 = ptrtoint ptr %v4l2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2, align 4
  %subdevs4 = getelementptr inbounds %struct.em28xx_v4l2, ptr %15, i32 0, i32 2, i32 2
  %cmp5.not = icmp eq ptr %.pn, %subdevs4
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %width = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %mul = mul i32 %7, %5
  %format = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 4
  %depth = getelementptr inbounds %struct.em28xx_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %mul2 = mul i32 %mul, %11
  %add = add i32 %mul2, 7
  %shr = ashr i32 %add, 3
  %12 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %shr)
  %cmp = icmp ult i32 %15, %shr
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nplanes, align 4
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %sizes, align 4
  %media_dev.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 76
  %18 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %media_dev.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %20 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v4l21, align 4
  %decoder.i = getelementptr inbounds %struct.em28xx_v4l2, ptr %21, i32 0, i32 35
  %22 = ptrtoint ptr %decoder.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %decoder.i, align 8
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %links.i = getelementptr inbounds %struct.media_entity, ptr %23, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %links.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %24 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %links.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %25 = getelementptr i8, ptr %.pn.i, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entity.i, align 4
  %cmp7.i = icmp eq ptr %29, %23
  br i1 %cmp7.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %link.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %flags.i = getelementptr i8, ptr %.pn.i, i32 20
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp ne i32 %and.i, 0
  %tobool20.not.i = icmp eq ptr %link.0.le.i, null
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %tobool20.not.i
  br i1 %or.cond.i, label %for.end.i.cleanup_crit_edge, label %if.end22.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22.i:                                       ; preds = %for.end.i
  %32 = getelementptr i8, ptr %.pn.i, i32 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %entity23.i = getelementptr inbounds %struct.media_pad, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %entity23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entity23.i, align 4
  %links25.i = getelementptr inbounds %struct.media_entity, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %links25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn111.i = load ptr, ptr %links25.i, align 4
  %cmp32.not12.i = icmp eq ptr %.pn111.i, %links25.i
  br i1 %cmp32.not12.i, label %if.end22.i.cleanup_crit_edge, label %for.body34.lr.ph.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body34.lr.ph.i:                               ; preds = %if.end22.i
  %intf53.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %name55.i = getelementptr inbounds %struct.media_entity, ptr %36, i32 0, i32 1
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.inc63.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %.pn113.i = phi ptr [ %.pn111.i, %for.body34.lr.ph.i ], [ %.pn1.i, %for.inc63.i.for.body34.i_crit_edge ]
  %link.1.i = getelementptr i8, ptr %.pn113.i, i32 -16
  %38 = getelementptr i8, ptr %.pn113.i, i32 12
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %entity36.i = getelementptr inbounds %struct.media_pad, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %entity36.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %entity36.i, align 4
  %43 = ptrtoint ptr %decoder.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %decoder.i, align 8
  %cmp38.i = icmp eq ptr %42, %44
  %spec.select2.i = zext i1 %cmp38.i to i32
  %call.i = tail call i32 @media_entity_setup_link(ptr noundef %link.1.i, i32 noundef %spec.select2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool41.not.i, label %do.body47.i, label %do.end.i

do.end.i:                                         ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %intf53.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %intf53.i, align 4
  %dev43.i = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %name55.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name55.i, align 4
  %name44.i = getelementptr inbounds %struct.media_entity, ptr %42, i32 0, i32 1
  %49 = ptrtoint ptr %name44.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name44.i, align 4
  %cond.i = select i1 %cmp38.i, ptr @.str.171, ptr @.str.172
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.169, ptr noundef %48, ptr noundef %50, ptr noundef nonnull %cond.i, i32 noundef %call.i) #15
  br label %cleanup

do.body47.i:                                      ; preds = %for.body34.i
  %51 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool48.not.i = icmp eq i32 %51, 0
  br i1 %tobool48.not.i, label %do.body47.i.for.inc63.i_crit_edge, label %do.end52.i

do.body47.i.for.inc63.i_crit_edge:                ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63.i

do.end52.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %intf53.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %intf53.i, align 4
  %dev54.i = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %name55.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name55.i, align 4
  %name56.i = getelementptr inbounds %struct.media_entity, ptr %42, i32 0, i32 1
  %56 = ptrtoint ptr %name56.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name56.i, align 4
  %cond58.i = select i1 %cmp38.i, ptr @.str.176, ptr @.str.172
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev54.i, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.170, ptr noundef %55, ptr noundef %57, ptr noundef nonnull %cond58.i) #15
  br label %for.inc63.i

for.inc63.i:                                      ; preds = %do.end52.i, %do.body47.i.for.inc63.i_crit_edge
  %58 = ptrtoint ptr %.pn113.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn1.i = load ptr, ptr %.pn113.i, align 4
  %cmp32.not.i = icmp eq ptr %.pn1.i, %links25.i
  br i1 %cmp32.not.i, label %for.inc63.i.cleanup_crit_edge, label %for.inc63.i.for.body34.i_crit_edge

for.inc63.i.for.body34.i_crit_edge:               ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.i

for.inc63.i.cleanup_crit_edge:                    ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc63.i.cleanup_crit_edge, %do.end.i, %if.end22.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %if.end22.i.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %for.inc63.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l21, align 4
  %6 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %9 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev3, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.178, i32 noundef %10) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %width = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 23
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 24
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %mul = mul i32 %14, %12
  %format = getelementptr inbounds %struct.em28xx_v4l2, ptr %5, i32 0, i32 19
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format, align 4
  %depth = getelementptr inbounds %struct.em28xx_fmt, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %depth, align 4
  %mul6 = mul i32 %mul, %18
  %add = add i32 %mul6, 7
  %shr = ashr i32 %add, 3
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %19 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp.not = icmp ult i32 %add, 8
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %do.body9

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %do.end5
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %shr)
  %cmp46 = icmp ult i32 %22, %shr
  br i1 %cmp46, label %do.body9.thread, label %if.then.i44

do.body9:                                         ; preds = %vb2_plane_size.exit
  %23 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not = icmp eq i32 %23, 0
  br i1 %tobool10.not, label %do.body9.cleanup_crit_edge, label %do.body9.vb2_plane_size.exit40_crit_edge

do.body9.vb2_plane_size.exit40_crit_edge:         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit40

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body9.thread:                                  ; preds = %vb2_plane_size.exit.thread
  %24 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not47 = icmp eq i32 %24, 0
  br i1 %tobool10.not47, label %do.body9.thread.cleanup_crit_edge, label %if.then.i38

do.body9.thread.cleanup_crit_edge:                ; preds = %do.body9.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i38:                                      ; preds = %do.body9.thread
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit40

vb2_plane_size.exit40:                            ; preds = %if.then.i38, %do.body9.vb2_plane_size.exit40_crit_edge
  %retval.0.i39 = phi i32 [ %26, %if.then.i38 ], [ 0, %do.body9.vb2_plane_size.exit40_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 44
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn.in, align 4
  %dev1651 = getelementptr inbounds %struct.usb_interface, ptr %.pn, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev1651, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.178, i32 noundef %retval.0.i39, i32 noundef %shr) #15
  br label %cleanup

if.then.i44:                                      ; preds = %vb2_plane_size.exit.thread
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %shr)
  %cmp1.i = icmp ult i32 %29, %shr
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i44.if.end42.i_crit_edge

if.then.i44.if.end42.i_crit_edge:                 ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i44
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !472

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.182, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i44.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %31, %if.then38.i ], [ %shr, %if.then.i44.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %32 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit40, %do.body9.thread.cleanup_crit_edge, %do.body9.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit40 ], [ -22, %do.body9.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ], [ -22, %do.body9.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_stop_streaming(ptr nocapture noundef readonly %vq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %v4l21 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v4l21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l21, align 4
  %vidq2 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 40
  %4 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.183) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %7 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vq, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %8, label %do.end.i.i [
    i32 1, label %do.end6.get_resource.exit.i_crit_edge
    i32 4, label %sw.bb1.i.i
  ]

do.end6.get_resource.exit.i_crit_edge:            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_resource.exit.i

sw.bb1.i.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_resource.exit.i

do.end.i.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 858, i32 noundef 9, ptr noundef null) #12
  br label %get_resource.exit.i

get_resource.exit.i:                              ; preds = %do.end.i.i, %sw.bb1.i.i, %do.end6.get_resource.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -1, %do.end.i.i ], [ 2, %sw.bb1.i.i ], [ %8, %do.end6.get_resource.exit.i_crit_edge ]
  %neg.i = xor i32 %retval.0.i.i, -1
  %resources.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 37
  %10 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resources.i, align 8
  %and.i = and i32 %11, %neg.i
  store i32 %and.i, ptr %resources.i, align 8
  %12 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %get_resource.exit.i.res_free.exit_crit_edge, label %do.end.i

get_resource.exit.i.res_free.exit_crit_edge:      ; preds = %get_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %res_free.exit

do.end.i:                                         ; preds = %get_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev2.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i.i) #15
  br label %res_free.exit

res_free.exit:                                    ; preds = %do.end.i, %get_resource.exit.i.res_free.exit_crit_edge
  %streaming_users = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %streaming_users, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %streaming_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %do.body8, label %res_free.exit.do.body34_crit_edge

res_free.exit.do.body34_crit_edge:                ; preds = %res_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.body8:                                         ; preds = %res_free.exit
  %subdevs = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn83 = load ptr, ptr %subdevs, align 4
  %cmp12.not85 = icmp eq ptr %.pn83, %subdevs
  br i1 %cmp12.not85, label %do.body8.do.end29_crit_edge, label %do.body8.for.body_crit_edge

do.body8.for.body_crit_edge:                      ; preds = %do.body8
  br label %for.body

do.body8.do.end29_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body8.for.body_crit_edge
  %.pn86 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn83, %do.body8.for.body_crit_edge ]
  %__sd.087 = getelementptr i8, ptr %.pn86, i32 -80
  %ops = getelementptr i8, ptr %.pn86, i32 24
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %video, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_stream, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 %23(ptr noundef %__sd.087, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn86, align 4
  %cmp12.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp12.not, label %for.inc.do.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end29:                                         ; preds = %for.inc.do.end29_crit_edge, %do.body8.do.end29_crit_edge
  tail call void @em28xx_uninit_usb_xfer(ptr noundef %1, i32 noundef 1) #12
  br label %do.body34

do.body34:                                        ; preds = %do.end29, %res_free.exit.do.body34_crit_edge
  %slock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 43
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #12
  %vid_buf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 42, i32 2
  %25 = ptrtoint ptr %vid_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vid_buf, align 4
  %tobool43.not = icmp eq ptr %26, null
  br i1 %tobool43.not, label %do.body34.if.end49_crit_edge, label %if.then44

do.body34.if.end49_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %26, i32 noundef 6) #12
  %27 = ptrtoint ptr %vid_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %vid_buf, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %do.body34.if.end49_crit_edge
  %28 = ptrtoint ptr %vidq2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %vidq2, align 4
  %cmp.i.not88 = icmp eq ptr %29, %vidq2
  br i1 %cmp.i.not88, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end49.while.body_crit_edge
  %30 = phi ptr [ %40, %list_del.exit.while.body_crit_edge ], [ %29, %if.end49.while.body_crit_edge ]
  %add.ptr57 = getelementptr i8, ptr %30, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr57, i32 noundef 6) #12
  %39 = ptrtoint ptr %vidq2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %vidq2, align 4
  %cmp.i.not = icmp eq ptr %40, %vidq2
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end49.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call38) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = load i32, ptr @video_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %intf = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 44
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %dev6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.184) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %vidq4 = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 40
  %call9 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #12
  %mem = getelementptr inbounds %struct.em28xx_buffer, ptr %vb, i32 0, i32 2
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %mem, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %do.end8.vb2_plane_size.exit_crit_edge, label %if.then.i

do.end8.vb2_plane_size.exit_crit_edge:            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %do.end8.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ 0, %do.end8.vb2_plane_size.exit_crit_edge ]
  %length = getelementptr inbounds %struct.em28xx_buffer, ptr %vb, i32 0, i32 3
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %length, align 4
  %slock = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 43
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #12
  %list = getelementptr inbounds %struct.em28xx_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 40, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %vidq4) #12
  br i1 %call.i.i, label %if.end.i.i, label %vb2_plane_size.exit.list_add_tail.exit_crit_edge

vb2_plane_size.exit.list_add_tail.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vidq4, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.em28xx_buffer, ptr %vb, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %vb2_plane_size.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call15) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_setup_link(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_stop_urbs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_register_extension(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !46, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !180, !182, !183, !184, !185, !186, !188, !189, !190, !192, !193, !195, !197, !199, !201, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !219, !220, !222, !223, !225, !226, !227, !229, !231, !232, !233, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !271, !273, !275, !277, !279, !281, !282, !283, !284, !286, !287, !288, !289, !291, !293, !295, !297, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !325, !327, !329, !330, !331, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !361, !362, !363, !365, !367, !368, !369, !370, !372, !374, !376, !377, !378, !379, !381, !383, !385, !387, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !406, !407, !408, !409, !410, !411, !413, !414, !415, !416, !418, !419, !420, !421, !423, !424, !425, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !441, !443, !444, !446, !447, !449, !450, !452, !453, !454, !455, !457, !458, !459}
!llvm.module.flags = !{!460, !461, !462, !463, !464, !465, !466, !467}
!llvm.ident = !{!468}

!0 = !{ptr @__param_isoc_debug, !1, !"__param_isoc_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_isoc_debugtype303, !1, !"__UNIQUE_ID_isoc_debugtype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_isoc_debug304, !4, !"__UNIQUE_ID_isoc_debug304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 52, i32 1}
!5 = !{ptr @__param_disable_vbi, !6, !"__param_disable_vbi", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 55, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_vbitype305, !6, !"__UNIQUE_ID_disable_vbitype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_vbi306, !9, !"__UNIQUE_ID_disable_vbi306", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 56, i32 1}
!10 = !{ptr @__param_alt, !11, !"__param_alt", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 59, i32 1}
!12 = !{ptr @__UNIQUE_ID_alttype307, !11, !"__UNIQUE_ID_alttype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alt308, !14, !"__UNIQUE_ID_alt308", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 60, i32 1}
!15 = !{ptr @__UNIQUE_ID_author309, !16, !"__UNIQUE_ID_author309", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 74, i32 1}
!17 = !{ptr @__UNIQUE_ID_description310, !18, !"__UNIQUE_ID_description310", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 75, i32 1}
!19 = !{ptr @__UNIQUE_ID_file311, !20, !"__UNIQUE_ID_file311", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 76, i32 1}
!21 = !{ptr @__UNIQUE_ID_license312, !20, !"__UNIQUE_ID_license312", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_version313, !23, !"__UNIQUE_ID_version313", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 77, i32 1}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__modver_attr, !23, !"__modver_attr", i1 false, i1 false}
!28 = !{ptr @__param_video_nr, !29, !"__param_video_nr", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 91, i32 1}
!30 = !{ptr @__UNIQUE_ID_video_nrtype314, !29, !"__UNIQUE_ID_video_nrtype314", i1 false, i1 false}
!31 = !{ptr @__param_vbi_nr, !32, !"__param_vbi_nr", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 92, i32 1}
!33 = !{ptr @__UNIQUE_ID_vbi_nrtype315, !32, !"__UNIQUE_ID_vbi_nrtype315", i1 false, i1 false}
!34 = !{ptr @__param_radio_nr, !35, !"__param_radio_nr", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 93, i32 1}
!36 = !{ptr @__UNIQUE_ID_radio_nrtype316, !35, !"__UNIQUE_ID_radio_nrtype316", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_video_nr317, !38, !"__UNIQUE_ID_video_nr317", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 94, i32 1}
!39 = !{ptr @__UNIQUE_ID_vbi_nr318, !40, !"__UNIQUE_ID_vbi_nr318", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 95, i32 1}
!41 = !{ptr @__UNIQUE_ID_radio_nr319, !42, !"__UNIQUE_ID_radio_nr319", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 96, i32 1}
!43 = !{ptr @__param_video_debug, !44, !"__param_video_debug", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 99, i32 1}
!45 = !{ptr @__UNIQUE_ID_video_debugtype320, !44, !"__UNIQUE_ID_video_debugtype320", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_video_debug321, !47, !"__UNIQUE_ID_video_debug321", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 100, i32 1}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1087, i32 2}
!50 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @em28xx_start_analog_streaming._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @em28xx_start_analog_streaming._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1189, i32 2}
!58 = !{ptr @em28xx_stop_vbi_streaming._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @em28xx_stop_vbi_streaming._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__initcall__kmod_em28xx_v4l__322_2935_em28xx_video_register6, !61, !"__initcall__kmod_em28xx_v4l__322_2935_em28xx_video_register6", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2935, i32 1}
!62 = !{ptr @__exitcall_em28xx_video_unregister, !63, !"__exitcall_em28xx_video_unregister", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2936, i32 1}
!64 = !{ptr @isoc_debug, !65, !"isoc_debug", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 50, i32 21}
!66 = !{ptr @disable_vbi, !67, !"disable_vbi", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 54, i32 21}
!68 = !{ptr @alt, !69, !"alt", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 58, i32 12}
!70 = !{ptr @video_debug, !71, !"video_debug", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 98, i32 21}
!72 = !{ptr @__param_str_isoc_debug, !1, !"__param_str_isoc_debug", i1 false, i1 false}
!73 = !{ptr @__param_str_disable_vbi, !6, !"__param_str_disable_vbi", i1 false, i1 false}
!74 = !{ptr @__param_str_alt, !11, !"__param_str_alt", i1 false, i1 false}
!75 = !{ptr @__param_str_video_nr, !29, !"__param_str_video_nr", i1 false, i1 false}
!76 = !{ptr @__param_arr_video_nr, !29, !"__param_arr_video_nr", i1 false, i1 false}
!77 = !{ptr @video_nr, !78, !"video_nr", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 87, i32 21}
!79 = !{ptr @__param_str_vbi_nr, !32, !"__param_str_vbi_nr", i1 false, i1 false}
!80 = !{ptr @__param_arr_vbi_nr, !32, !"__param_arr_vbi_nr", i1 false, i1 false}
!81 = !{ptr @vbi_nr, !82, !"vbi_nr", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 88, i32 21}
!83 = !{ptr @__param_str_radio_nr, !35, !"__param_str_radio_nr", i1 false, i1 false}
!84 = !{ptr @__param_arr_radio_nr, !35, !"__param_arr_radio_nr", i1 false, i1 false}
!85 = !{ptr @radio_nr, !86, !"radio_nr", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 89, i32 21}
!87 = !{ptr @__param_str_video_debug, !44, !"__param_str_video_debug", i1 false, i1 false}
!88 = !{ptr @.str.9, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 876, i32 2}
!90 = !{ptr @.str.10, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @res_get._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @res_get._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.11, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 372, i32 3}
!95 = !{ptr @.str.12, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @em28xx_set_alternate._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @em28xx_set_alternate._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.14, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 412, i32 3}
!100 = !{ptr @em28xx_set_alternate._entry.13, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @em28xx_set_alternate._entry_ptr.15, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.17, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 418, i32 2}
!104 = !{ptr @em28xx_set_alternate._entry.16, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @em28xx_set_alternate._entry_ptr.18, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.20, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 422, i32 3}
!108 = !{ptr @.str.21, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @em28xx_set_alternate._entry.19, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @em28xx_set_alternate._entry_ptr.22, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.23, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 826, i32 5}
!113 = !{ptr @.str.24, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @em28xx_urb_data_copy._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @em28xx_urb_data_copy._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.25, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 558, i32 17}
!118 = !{ptr @.str.26, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 562, i32 12}
!120 = !{ptr @.str.27, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 565, i32 12}
!122 = !{ptr @.str.28, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 568, i32 12}
!124 = !{ptr @.str.29, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 571, i32 12}
!126 = !{ptr @.str.30, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 574, i32 12}
!128 = !{ptr @.str.31, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 577, i32 12}
!130 = !{ptr @.str.32, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 580, i32 12}
!132 = !{ptr @.str.33, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 583, i32 12}
!134 = !{ptr @.str.34, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 587, i32 3}
!136 = !{ptr @.str.35, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @print_err_status._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @print_err_status._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.37, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 589, i32 3}
!141 = !{ptr @print_err_status._entry.36, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @print_err_status._entry_ptr.38, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 440, i32 2}
!145 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @finish_buffer._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @finish_buffer._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.41, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 603, i32 3}
!150 = !{ptr @.str.42, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @get_next_buf._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @get_next_buf._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 489, i32 3}
!155 = !{ptr @.str.44, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @em28xx_copy_video._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @em28xx_copy_video._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.46, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 515, i32 4}
!160 = !{ptr @em28xx_copy_video._entry.45, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @em28xx_copy_video._entry_ptr.47, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.48, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 673, i32 4}
!164 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @process_frame_data_em28xx._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @process_frame_data_em28xx._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 680, i32 4}
!169 = !{ptr @process_frame_data_em28xx._entry.50, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @process_frame_data_em28xx._entry_ptr.52, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.53, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 885, i32 2}
!173 = !{ptr @.str.54, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @res_free._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @res_free._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.55, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2918, i32 10}
!178 = !{ptr @v4l2_ops, !179, !"v4l2_ops", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2916, i32 26}
!180 = !{ptr @.str.56, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2538, i32 2}
!182 = !{ptr @.str.57, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.58, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @em28xx_v4l2_init._entry, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @em28xx_v4l2_init._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.60, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2556, i32 3}
!188 = !{ptr @em28xx_v4l2_init._entry.59, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @em28xx_v4l2_init._entry_ptr.61, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @em28xx_v4l2_init._key, !191, !"_key", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2562, i32 2}
!192 = !{ptr @.str.62, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.63, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2580, i32 9}
!195 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2585, i32 9}
!197 = !{ptr @.str.65, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2590, i32 9}
!199 = !{ptr @.str.66, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2595, i32 9}
!201 = !{ptr @.str.67, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2606, i32 10}
!203 = !{ptr @.str.69, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2641, i32 3}
!205 = !{ptr @em28xx_v4l2_init._entry.68, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @em28xx_v4l2_init._entry_ptr.70, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.72, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2670, i32 4}
!209 = !{ptr @em28xx_v4l2_init._entry.71, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @em28xx_v4l2_init._entry_ptr.73, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.75, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2679, i32 4}
!213 = !{ptr @em28xx_v4l2_init._entry.74, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @em28xx_v4l2_init._entry_ptr.76, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.77, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2759, i32 61}
!217 = !{ptr @em28xx_v4l2_init.__key, !218, !"__key", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2760, i32 2}
!219 = !{ptr @.str.78, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @em28xx_v4l2_init.__key.79, !221, !"__key", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2761, i32 2}
!222 = !{ptr @.str.80, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.82, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2795, i32 3}
!225 = !{ptr @em28xx_v4l2_init._entry.81, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @em28xx_v4l2_init._entry_ptr.83, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.84, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2803, i32 6}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2829, i32 4}
!231 = !{ptr @em28xx_v4l2_init._entry.85, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @em28xx_v4l2_init._entry_ptr.87, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2837, i32 6}
!235 = !{ptr @.str.90, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2842, i32 4}
!237 = !{ptr @em28xx_v4l2_init._entry.89, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @em28xx_v4l2_init._entry_ptr.91, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.93, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2846, i32 3}
!241 = !{ptr @em28xx_v4l2_init._entry.92, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @em28xx_v4l2_init._entry_ptr.94, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.96, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2857, i32 3}
!245 = !{ptr @em28xx_v4l2_init._entry.95, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @em28xx_v4l2_init._entry_ptr.97, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.99, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2864, i32 2}
!249 = !{ptr @em28xx_v4l2_init._entry.98, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @em28xx_v4l2_init._entry_ptr.100, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.102, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2869, i32 3}
!253 = !{ptr @em28xx_v4l2_init._entry.101, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @em28xx_v4l2_init._entry_ptr.103, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.105, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2879, i32 2}
!257 = !{ptr @em28xx_v4l2_init._entry.104, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @em28xx_v4l2_init._entry_ptr.106, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.108, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2889, i32 3}
!261 = !{ptr @em28xx_v4l2_init._entry.107, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @em28xx_v4l2_init._entry_ptr.109, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @em28xx_v4l2_init._entry.110, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2895, i32 3}
!265 = !{ptr @em28xx_v4l2_init._entry_ptr.111, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @em28xx_v4l2_init._entry.112, !267, !"_entry", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2901, i32 3}
!268 = !{ptr @em28xx_v4l2_init._entry_ptr.113, !267, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @msp3400_addrs, !270, !"msp3400_addrs", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2434, i32 23}
!271 = !{ptr @saa711x_addrs, !272, !"saa711x_addrs", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2423, i32 23}
!273 = !{ptr @tvp5150_addrs, !274, !"tvp5150_addrs", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2428, i32 23}
!275 = !{ptr @em28xx_ctrl_ops, !276, !"em28xx_ctrl_ops", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1381, i32 35}
!277 = !{ptr @format, !278, !"format", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 103, i32 26}
!279 = !{ptr @.str.114, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 260, i32 2}
!281 = !{ptr @.str.115, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @em28xx_accumulator_set._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @em28xx_accumulator_set._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.116, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 277, i32 2}
!286 = !{ptr @.str.117, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @em28xx_capture_area_set._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @em28xx_capture_area_set._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.118, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2453, i32 41}
!291 = !{ptr @em28xx_video_template, !292, !"em28xx_video_template", i1 false, i1 false}
!292 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2387, i32 34}
!293 = !{ptr @em28xx_v4l_fops, !294, !"em28xx_v4l_fops", i1 false, i1 false}
!294 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2333, i32 42}
!295 = !{ptr @.str.119, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2156, i32 2}
!297 = !{ptr @.str.120, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @em28xx_v4l2_open._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @em28xx_v4l2_open._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.122, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2165, i32 3}
!302 = !{ptr @em28xx_v4l2_open._entry.121, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @em28xx_v4l2_open._entry_ptr.123, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.125, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2186, i32 3}
!306 = !{ptr @em28xx_v4l2_open._entry.124, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @em28xx_v4l2_open._entry_ptr.126, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.127, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2297, i32 2}
!310 = !{ptr @.str.128, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @em28xx_v4l2_close._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @em28xx_v4l2_close._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.130, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2315, i32 3}
!315 = !{ptr @em28xx_v4l2_close._entry.129, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @em28xx_v4l2_close._entry_ptr.131, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.133, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2318, i32 4}
!319 = !{ptr @em28xx_v4l2_close._entry.132, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @em28xx_v4l2_close._entry_ptr.134, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @video_ioctl_ops, !322, !"video_ioctl_ops", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2343, i32 36}
!323 = !{ptr @.str.135, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1983, i32 23}
!325 = !{ptr @.str.136, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../include/linux/usb.h", i32 912, i32 31}
!327 = !{ptr @.str.137, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1470, i32 3}
!329 = !{ptr @.str.138, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @vidioc_try_fmt_vid_cap._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.139, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 965, i32 29}
!334 = !{ptr @.str.140, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 966, i32 29}
!336 = !{ptr @.str.141, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 967, i32 29}
!338 = !{ptr @.str.142, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 968, i32 29}
!340 = !{ptr @iname, !341, !"iname", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 964, i32 27}
!342 = !{ptr @__func__.vidioc_enumaudio, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1776, i32 38}
!344 = !{ptr @.str.143, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1736, i32 20}
!346 = !{ptr @.str.144, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1739, i32 20}
!348 = !{ptr @.str.145, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1742, i32 20}
!350 = !{ptr @.str.146, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1745, i32 20}
!352 = !{ptr @.str.147, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1748, i32 20}
!354 = !{ptr @.str.148, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1751, i32 20}
!356 = !{ptr @.str.149, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1754, i32 20}
!358 = !{ptr @.str.150, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1763, i32 2}
!360 = !{ptr @.str.151, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @em28xx_fill_audio_input._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @em28xx_fill_audio_input._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @__func__.vidioc_g_audio, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1786, i32 40}
!365 = !{ptr @.str.152, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1826, i32 2}
!367 = !{ptr @.str.153, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @vidioc_s_audio._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @vidioc_s_audio._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.154, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1840, i32 19}
!372 = !{ptr @.str.155, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1897, i32 23}
!374 = !{ptr @.str.156, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2021, i32 3}
!376 = !{ptr @.str.157, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @vidioc_enum_framesizes._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @vidioc_enum_framesizes._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @em28xx_radio_template, !380, !"em28xx_radio_template", i1 false, i1 false}
!380 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2416, i32 28}
!381 = !{ptr @radio_fops, !382, !"radio_fops", i1 false, i1 false}
!382 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2394, i32 42}
!383 = !{ptr @radio_ioctl_ops, !384, !"radio_ioctl_ops", i1 false, i1 false}
!384 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2401, i32 36}
!385 = !{ptr @.str.158, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 981, i32 3}
!387 = !{ptr @.str.159, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @em28xx_v4l2_create_entities._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @em28xx_v4l2_create_entities._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.161, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 989, i32 4}
!392 = !{ptr @em28xx_v4l2_create_entities._entry.160, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @em28xx_v4l2_create_entities._entry_ptr.162, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.164, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1023, i32 4}
!396 = !{ptr @em28xx_v4l2_create_entities._entry.163, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @em28xx_v4l2_create_entities._entry_ptr.165, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.167, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1028, i32 4}
!400 = !{ptr @em28xx_v4l2_create_entities._entry.166, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @em28xx_v4l2_create_entities._entry_ptr.168, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @em28xx_video_qops, !403, !"em28xx_video_qops", i1 false, i1 false}
!403 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1236, i32 29}
!404 = !{ptr @.str.169, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 948, i32 4}
!406 = !{ptr @.str.170, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @em28xx_enable_analog_tuner._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @em28xx_enable_analog_tuner._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.171, !405, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.172, !405, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.174, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 956, i32 3}
!413 = !{ptr @em28xx_enable_analog_tuner._entry.173, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @em28xx_enable_analog_tuner._entry_ptr.175, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.176, !412, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.177, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1065, i32 2}
!418 = !{ptr @.str.178, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @buffer_prepare._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @buffer_prepare._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.180, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1070, i32 3}
!423 = !{ptr @buffer_prepare._entry.179, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @buffer_prepare._entry_ptr.181, !422, !"_entry_ptr", i1 false, i1 false}
!425 = distinct !{null, !426, !"__already_done", i1 false, i1 false}
!426 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!427 = !{ptr @.str.182, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.183, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1154, i32 2}
!430 = !{ptr @em28xx_stop_streaming._entry, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @em28xx_stop_streaming._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.184, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 1227, i32 2}
!434 = !{ptr @buffer_queue._entry, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @buffer_queue._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.185, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2221, i32 2}
!438 = !{ptr @.str.186, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @em28xx_v4l2_fini._entry, !437, !"_entry", i1 false, i1 false}
!440 = !{ptr @em28xx_v4l2_fini._entry_ptr, !437, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @em28xx_v4l2_fini._entry.187, !442, !"_entry", i1 false, i1 false}
!442 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2232, i32 3}
!443 = !{ptr @em28xx_v4l2_fini._entry_ptr.188, !442, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @em28xx_v4l2_fini._entry.189, !445, !"_entry", i1 false, i1 false}
!445 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2237, i32 3}
!446 = !{ptr @em28xx_v4l2_fini._entry_ptr.190, !445, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @em28xx_v4l2_fini._entry.191, !448, !"_entry", i1 false, i1 false}
!448 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2242, i32 3}
!449 = !{ptr @em28xx_v4l2_fini._entry_ptr.192, !448, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.193, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2267, i32 2}
!452 = !{ptr @.str.194, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @em28xx_v4l2_suspend._entry, !451, !"_entry", i1 false, i1 false}
!454 = !{ptr @em28xx_v4l2_suspend._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.195, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/media/usb/em28xx/em28xx-video.c", i32 2280, i32 2}
!457 = !{ptr @.str.196, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @em28xx_v4l2_resume._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @em28xx_v4l2_resume._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{i32 1, !"wchar_size", i32 2}
!461 = !{i32 1, !"min_enum_size", i32 4}
!462 = !{i32 8, !"branch-target-enforcement", i32 0}
!463 = !{i32 8, !"sign-return-address", i32 0}
!464 = !{i32 8, !"sign-return-address-all", i32 0}
!465 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!466 = !{i32 7, !"uwtable", i32 1}
!467 = !{i32 7, !"frame-pointer", i32 2}
!468 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!469 = !{i8 0, i8 2}
!470 = !{i64 2148594644}
!471 = !{i64 2148505023, i64 2148505055, i64 2148505084, i64 2148505118, i64 2148505149, i64 2148505172}
!472 = !{!"branch_weights", i32 2000, i32 1}
!473 = !{i64 2150377055}
!474 = distinct !{ptr @em28xx_free_device, null}
!475 = !{i64 2148502558, i64 2148502590, i64 2148502619, i64 2148502653, i64 2148502684, i64 2148502707}
!476 = !{!"branch_weights", i32 1, i32 2000}
