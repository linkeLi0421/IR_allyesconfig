; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-av-core.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-av-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.118, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.118 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.109 }
%union.anon.109 = type { i32, [28 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.110, %union.anon.111, i32, ptr, i32, %struct.anon.112, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { ptr }
%struct.anon.112 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.137, i16, i16, i16, [10 x i16] }
%union.anon.137 = type { i16 }

@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_av_std_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s:  info: PLL regs = int: %u, frac: %u, post: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx18_av_std_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cx18/cx18-av-core.c\00", [58 x i8] zeroinitializer }, align 32
@cx18_av_std_setup._entry_ptr = internal global ptr @cx18_av_std_setup._entry, section ".printk_index", align 4
@cx18_av_std_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:  info: Video PLL = %d.%06d MHz\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_av_std_setup._entry_ptr.5 = internal global ptr @cx18_av_std_setup._entry.3, section ".printk_index", align 4
@cx18_av_std_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:  info: Pixel rate = %d.%06d Mpixel/sec\0A\00", [50 x i8] zeroinitializer }, align 32
@cx18_av_std_setup._entry_ptr.8 = internal global ptr @cx18_av_std_setup._entry.6, section ".printk_index", align 4
@cx18_av_std_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s:  info: ADC XTAL/pixel clock decimation ratio = %d.%03d\0A\00", [34 x i8] zeroinitializer }, align 32
@cx18_av_std_setup._entry_ptr.11 = internal global ptr @cx18_av_std_setup._entry.9, section ".printk_index", align 4
@cx18_av_std_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s:  info: Chroma sub-carrier initial freq = %d.%06d MHz\0A\00", [36 x i8] zeroinitializer }, align 32
@cx18_av_std_setup._entry_ptr.14 = internal global ptr @cx18_av_std_setup._entry.12, section ".printk_index", align 4
@cx18_av_std_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [147 x i8], [45 x i8] } { [147 x i8] c"\016%s:  info: hblank %i, hactive %i, vblank %i, vactive %i, vblank656 %i, src_dec %i, burst 0x%02x, luma_lpf %i, uv_lpf %i, comb 0x%02x, sc 0x%06x\0A\00", [45 x i8] zeroinitializer }, align 32
@cx18_av_std_setup._entry_ptr.17 = internal global ptr @cx18_av_std_setup._entry.15, section ".printk_index", align 4
@cx18_av_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @cx18_av_general_ops, ptr @cx18_av_tuner_ops, ptr @cx18_av_audio_ops, ptr @cx18_av_video_ops, ptr @cx18_av_vbi_ops, ptr null, ptr null, ptr @cx18_av_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %03x\00", [24 x i8] zeroinitializer }, align 32
@cx18_av_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cx18_av_core:1320:(&state->hdl)->_lock\00", [57 x i8] zeroinitializer }, align 32
@cx18_av_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cx18_av_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@cx18_av_audio_ctrl_ops = external dso_local constant %struct.v4l2_ctrl_ops, align 4
@cx18_av_general_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @cx18_av_log_status, ptr null, ptr null, ptr @cx18_av_load_fw, ptr @cx18_av_reset, ptr null, ptr null, ptr null, ptr @cx18_av_g_register, ptr @cx18_av_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_av_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr @cx18_av_s_radio, ptr @cx18_av_s_frequency, ptr null, ptr null, ptr @cx18_av_g_tuner, ptr @cx18_av_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@cx18_av_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr @cx18_av_s_clock_freq, ptr null, ptr @cx18_av_s_audio_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@cx18_av_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @cx18_av_s_video_routing, ptr null, ptr null, ptr @cx18_av_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_av_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@cx18_av_vbi_ops = internal constant { %struct.v4l2_subdev_vbi_ops, [36 x i8] } { %struct.v4l2_subdev_vbi_ops { ptr @cx18_av_decode_vbi_line, ptr null, ptr null, ptr null, ptr @cx18_av_s_raw_fmt, ptr @cx18_av_g_sliced_fmt, ptr @cx18_av_s_sliced_fmt }, [36 x i8] zeroinitializer }, align 32
@cx18_av_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_av_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@log_video_status.fmt_strs = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x0\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-J\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NTSC-4.43\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PAL-BDGHI\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-N\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-Nc\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-60\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0x9\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0xA\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0xB\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0xD\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0xE\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0xF\00", [28 x i8] zeroinitializer }, align 32
@log_video_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: Video signal:              %spresent\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"log_video_status\00", [47 x i8] zeroinitializer }, align 32
@log_video_status._entry_ptr = internal global ptr @log_video_status._entry, section ".printk_index", align 4
@.str.38 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@log_video_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Detected format:           %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_video_status._entry_ptr.42 = internal global ptr @log_video_status._entry.40, section ".printk_index", align 4
@log_video_status._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Specified standard:        %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_video_status._entry_ptr.45 = internal global ptr @log_video_status._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"automatic detection\00", [44 x i8] zeroinitializer }, align 32
@log_video_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: Specified video input:     Composite %d\0A\00", [49 x i8] zeroinitializer }, align 32
@log_video_status._entry_ptr.49 = internal global ptr @log_video_status._entry.47, section ".printk_index", align 4
@log_video_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s: Specified video input:     S-Video (Luma In%d, Chroma In%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@log_video_status._entry_ptr.52 = internal global ptr @log_video_status._entry.50, section ".printk_index", align 4
@log_video_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.37, ptr @.str.2, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: Specified audioclock freq: %d Hz\0A\00", [56 x i8] zeroinitializer }, align 32
@log_video_status._entry_ptr.55 = internal global ptr @log_video_status._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mono\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tri\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mono with SAP\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stereo with SAP\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dual with SAP\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tri with SAP\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"forced mode\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not defined\00", [20 x i8] zeroinitializer }, align 32
@log_audio_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Detected audio mode:       %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"log_audio_status\00", [47 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr = internal global ptr @log_audio_status._entry, section ".printk_index", align 4
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EIAJ\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A2-M\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A2-BG\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A2-DK1\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A2-DK2\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A2-DK3\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"A1 (6.0 MHz FM Mono)\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AM-L\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NICAM-BG\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NICAM-DK\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NICAM-I\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NICAM-L\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BTSC/EIAJ/A2-M Mono (4.5 MHz FMMono)\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IF FM Radio\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"detected chrominance\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown audio standard\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"forced audio standard\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no detected audio standard\00", [37 x i8] zeroinitializer }, align 32
@log_audio_status._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.67, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Detected audio standard:   %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.89 = internal global ptr @log_audio_status._entry.87, section ".printk_index", align 4
@log_audio_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.67, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Audio muted:               %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.92 = internal global ptr @log_audio_status._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@log_audio_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.67, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Audio microcontroller:     %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.97 = internal global ptr @log_audio_status._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FM radio\00", [23 x i8] zeroinitializer }, align 32
@log_audio_status._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.67, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Configured audio standard: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.104 = internal global ptr @log_audio_status._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"MONO1 (LANGUAGE A/Mono L+R channel for BTSC, EIAJ, A2)\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MONO2 (LANGUAGE B)\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MONO3 (STEREO forced MONO)\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"MONO4 (NICAM ANALOG-Language C/Analog Fallback)\00", [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STEREO\00", [25 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DUAL1 (AC)\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DUAL2 (BC)\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DUAL3 (AB)\00", [21 x i8] zeroinitializer }, align 32
@log_audio_status._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.67, ptr @.str.2, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Configured audio mode:     %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.115 = internal global ptr @log_audio_status._entry.113, section ".printk_index", align 4
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BG\00", [29 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DK1\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DK2\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DK3\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FM Radio (4.5 MHz)\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FM Radio (5.5 MHz)\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"automatic standard and mode detection\00", [58 x i8] zeroinitializer }, align 32
@log_audio_status._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.67, ptr @.str.2, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Configured audio system:   %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.128 = internal global ptr @log_audio_status._entry.126, section ".printk_index", align 4
@log_audio_status._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.67, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: Specified audio input:     Tuner (In%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.131 = internal global ptr @log_audio_status._entry.129, section ".printk_index", align 4
@log_audio_status._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.67, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Specified audio input:     External\0A\00", [53 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.134 = internal global ptr @log_audio_status._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mono/language A\00", [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"language B\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"language C\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"analog fallback\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"language AC\00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"language BC\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"language AB\00", [20 x i8] zeroinitializer }, align 32
@log_audio_status._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.67, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Preferred audio mode:      %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.144 = internal global ptr @log_audio_status._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"system DK\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"system L\00", [23 x i8] zeroinitializer }, align 32
@log_audio_status._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.67, ptr @.str.2, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Selected 65 MHz format:    %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.149 = internal global ptr @log_audio_status._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Chroma\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autodetect\00", [21 x i8] zeroinitializer }, align 32
@log_audio_status._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.67, ptr @.str.2, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Selected 45 MHz format:    %s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_audio_status._entry_ptr.154 = internal global ptr @log_audio_status._entry.152, section ".printk_index", align 4
@set_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s:  info: decoder set video input %d, audio input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_input\00", [22 x i8] zeroinitializer }, align 32
@set_input._entry_ptr = internal global ptr @set_input._entry, section ".printk_index", align 4
@set_input._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: 0x%06x is not a valid video input!\0A\00", [54 x i8] zeroinitializer }, align 32
@set_input._entry_ptr.159 = internal global ptr @set_input._entry.157, section ".printk_index", align 4
@set_input._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_input._entry_ptr.161 = internal global ptr @set_input._entry.160, section ".printk_index", align 4
@set_input._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.156, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: 0x%04x is not a valid audio input!\0A\00", [54 x i8] zeroinitializer }, align 32
@set_input._entry_ptr.164 = internal global ptr @set_input._entry.162, section ".printk_index", align 4
@cx18_av_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: changing video std to fmt %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx18_av_s_std\00", [18 x i8] zeroinitializer }, align 32
@cx18_av_s_std._entry_ptr = internal global ptr @cx18_av_s_std._entry, section ".printk_index", align 4
@cx18_av_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s:  info: %s output\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_av_s_stream\00", [47 x i8] zeroinitializer }, align 32
@cx18_av_s_stream._entry_ptr = internal global ptr @cx18_av_s_stream._entry, section ".printk_index", align 4
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@cx18_av_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: %dx%d is not a valid size!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx18_av_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@cx18_av_set_fmt._entry_ptr = internal global ptr @cx18_av_set_fmt._entry, section ".printk_index", align 4
@cx18_av_set_fmt._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s:  info: decoder set size %dx%d -> scale  %ux%u\0A\00", [43 x i8] zeroinitializer }, align 32
@cx18_av_set_fmt._entry_ptr.175 = internal global ptr @cx18_av_set_fmt._entry.173, section ".printk_index", align 4
@switch.table.cx18_av_log_status = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], [48 x i8] zeroinitializer }, align 32
@switch.table.cx18_av_log_status.176 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], [32 x i8] zeroinitializer }, align 32
@switch.table.cx18_av_log_status.177 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.82, ptr @.str.68, ptr @.str.69, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.100, ptr @.str.100, ptr @.str.100, ptr @.str.125], [32 x i8] zeroinitializer }, align 32
@switch.table.cx18_av_log_status.178 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.57, ptr @.str.139, ptr @.str.140, ptr @.str.141], [32 x i8] zeroinitializer }, align 32
@switch.table.cx18_av_log_status.179 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.150, ptr @.str.82, ptr @.str.68, ptr @.str.69, ptr @.str.151], [44 x i8] zeroinitializer }, align 32
@switch.table.set_input = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8192, i32 8192, i32 1024, i32 1152], [16 x i8] zeroinitializer }, align 32
@switch.table.set_input.180 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8192, i32 8192, i32 2048, i32 2304], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 256, i64 2048]
@__sancov_gen_cov_switch_values.181 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 4, i64 16, i64 17, i64 18, i64 20, i64 254]
@__sancov_gen_cov_switch_values.182 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.184 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 64, i64 8192, i64 32768]
@__sancov_gen_cov_switch_values.186 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.187 = internal global [8 x i64] [i64 6, i64 64, i64 256, i64 512, i64 1024, i64 2048, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.188 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 443, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 452, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 454, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 457, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 464, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 468, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [12 x i8] c"cx18_av_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1290, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1318, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1320, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"cx18_av_ctrl_ops\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1247, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"cx18_av_general_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1251, i32 42 }
@___asan_gen_.249 = private unnamed_addr constant [18 x i8] c"cx18_av_tuner_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1261, i32 43 }
@___asan_gen_.252 = private unnamed_addr constant [18 x i8] c"cx18_av_audio_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1268, i32 43 }
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"cx18_av_video_ops\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1273, i32 43 }
@___asan_gen_.258 = private unnamed_addr constant [16 x i8] c"cx18_av_vbi_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1279, i32 41 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"cx18_av_pad_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1286, i32 41 }
@___asan_gen_.264 = private unnamed_addr constant [9 x i8] c"fmt_strs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1026, i32 27 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1027, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1028, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1028, i32 13 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1028, i32 23 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1029, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1029, i32 16 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1029, i32 25 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1029, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1029, i32 44 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1030, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1030, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1030, i32 17 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1031, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1032, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1032, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1032, i32 17 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1042, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1044, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1047, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1053, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1056, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1061, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1080, i32 17 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1081, i32 17 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1082, i32 17 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1083, i32 17 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1084, i32 17 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1085, i32 17 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1086, i32 17 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1087, i32 17 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1088, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1089, i32 15 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1091, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1095, i32 17 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1096, i32 17 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1097, i32 17 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1098, i32 17 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1099, i32 17 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1100, i32 17 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1101, i32 17 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1102, i32 17 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1103, i32 17 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1104, i32 17 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1105, i32 17 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1106, i32 17 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1107, i32 17 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1108, i32 17 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1109, i32 17 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1110, i32 17 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1111, i32 17 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1112, i32 17 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1113, i32 17 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1116, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1117, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1119, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1123, i32 17 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1137, i32 17 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1141, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1145, i32 18 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1146, i32 18 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1147, i32 18 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1148, i32 18 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1149, i32 18 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1150, i32 18 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1151, i32 18 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1152, i32 18 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1155, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1158, i32 18 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1159, i32 18 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1160, i32 18 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1161, i32 18 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1162, i32 18 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1163, i32 18 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1167, i32 18 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1168, i32 18 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1169, i32 18 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1170, i32 18 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1173, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1177, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1180, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1183, i32 14 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1184, i32 14 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1185, i32 14 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1186, i32 14 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1188, i32 14 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1189, i32 14 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1190, i32 14 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1193, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1197, i32 15 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1198, i32 15 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1200, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1203, i32 15 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1207, i32 15 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1210, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 585, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 605, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 625, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 670, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 878, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 1013, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 972, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.691 = private constant [41 x i8] c"../drivers/media/pci/cx18/cx18-av-core.c\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.691, i32 993, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant [32 x i8] c"switch.table.cx18_av_log_status\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [36 x i8] c"switch.table.cx18_av_log_status.176\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [36 x i8] c"switch.table.cx18_av_log_status.177\00", align 1
@___asan_gen_.696 = private unnamed_addr constant [36 x i8] c"switch.table.cx18_av_log_status.178\00", align 1
@___asan_gen_.697 = private unnamed_addr constant [36 x i8] c"switch.table.cx18_av_log_status.179\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [23 x i8] c"switch.table.set_input\00", align 1
@___asan_gen_.699 = private unnamed_addr constant [27 x i8] c"switch.table.set_input.180\00", align 1
@llvm.compiler.used = appending global [207 x ptr] [ptr @cx18_av_s_std._entry, ptr @cx18_av_s_std._entry_ptr, ptr @cx18_av_s_stream._entry, ptr @cx18_av_s_stream._entry_ptr, ptr @cx18_av_set_fmt._entry, ptr @cx18_av_set_fmt._entry.173, ptr @cx18_av_set_fmt._entry_ptr, ptr @cx18_av_set_fmt._entry_ptr.175, ptr @cx18_av_std_setup._entry, ptr @cx18_av_std_setup._entry.12, ptr @cx18_av_std_setup._entry.15, ptr @cx18_av_std_setup._entry.3, ptr @cx18_av_std_setup._entry.6, ptr @cx18_av_std_setup._entry.9, ptr @cx18_av_std_setup._entry_ptr, ptr @cx18_av_std_setup._entry_ptr.11, ptr @cx18_av_std_setup._entry_ptr.14, ptr @cx18_av_std_setup._entry_ptr.17, ptr @cx18_av_std_setup._entry_ptr.5, ptr @cx18_av_std_setup._entry_ptr.8, ptr @log_audio_status._entry, ptr @log_audio_status._entry.102, ptr @log_audio_status._entry.113, ptr @log_audio_status._entry.126, ptr @log_audio_status._entry.129, ptr @log_audio_status._entry.132, ptr @log_audio_status._entry.142, ptr @log_audio_status._entry.147, ptr @log_audio_status._entry.152, ptr @log_audio_status._entry.87, ptr @log_audio_status._entry.90, ptr @log_audio_status._entry.95, ptr @log_audio_status._entry_ptr, ptr @log_audio_status._entry_ptr.104, ptr @log_audio_status._entry_ptr.115, ptr @log_audio_status._entry_ptr.128, ptr @log_audio_status._entry_ptr.131, ptr @log_audio_status._entry_ptr.134, ptr @log_audio_status._entry_ptr.144, ptr @log_audio_status._entry_ptr.149, ptr @log_audio_status._entry_ptr.154, ptr @log_audio_status._entry_ptr.89, ptr @log_audio_status._entry_ptr.92, ptr @log_audio_status._entry_ptr.97, ptr @log_video_status._entry, ptr @log_video_status._entry.40, ptr @log_video_status._entry.43, ptr @log_video_status._entry.47, ptr @log_video_status._entry.50, ptr @log_video_status._entry.53, ptr @log_video_status._entry_ptr, ptr @log_video_status._entry_ptr.42, ptr @log_video_status._entry_ptr.45, ptr @log_video_status._entry_ptr.49, ptr @log_video_status._entry_ptr.52, ptr @log_video_status._entry_ptr.55, ptr @set_input._entry, ptr @set_input._entry.157, ptr @set_input._entry.160, ptr @set_input._entry.162, ptr @set_input._entry_ptr, ptr @set_input._entry_ptr.159, ptr @set_input._entry_ptr.161, ptr @set_input._entry_ptr.164, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @cx18_av_ops, ptr @.str.18, ptr @cx18_av_probe._key, ptr @.str.19, ptr @cx18_av_ctrl_ops, ptr @cx18_av_general_ops, ptr @cx18_av_tuner_ops, ptr @cx18_av_audio_ops, ptr @cx18_av_video_ops, ptr @cx18_av_vbi_ops, ptr @cx18_av_pad_ops, ptr @log_video_status.fmt_strs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @switch.table.cx18_av_log_status, ptr @switch.table.cx18_av_log_status.176, ptr @switch.table.cx18_av_log_status.177, ptr @switch.table.cx18_av_log_status.178, ptr @switch.table.cx18_av_log_status.179, ptr @switch.table.set_input, ptr @switch.table.set_input.180], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_std_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_std_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_std_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_std_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_std_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_std_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_general_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_vbi_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_video_status.fmt_strs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_video_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_video_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_video_status._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_video_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_video_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_video_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_audio_status._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_input._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_input._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_input._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_set_fmt._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx18_av_log_status to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx18_av_log_status.176 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx18_av_log_status.177 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx18_av_log_status.178 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx18_av_log_status.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.set_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.set_input.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_write(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %and = and i32 %conv, 65532
  %add = or i32 %and, 12845056
  %and2 = shl nuw nsw i32 %conv, 3
  %mul = and i32 %and2, 24
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !328
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %shl = shl nuw i32 255, %mul
  %neg = xor i32 %shl, -1
  %and3 = and i32 %3, %neg
  %conv4 = zext i8 %value to i32
  %shl5 = shl nuw i32 %conv4, %mul
  %or = or i32 %and3, %shl5
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or, i32 noundef %add)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_write_reg(ptr nocapture noundef readonly %cx, i32 noundef %val, i32 noundef %reg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %reg_mem = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.i = icmp eq i32 %4, %val
  br i1 %cmp1.i, label %entry.cx18_writel.exit_crit_edge, label %for.cond.i

entry.cx18_writel.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.i:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.1.i = icmp eq i32 %6, %val
  br i1 %cmp1.1.i, label %for.cond.i.cx18_writel.exit_crit_edge, label %for.cond.1.i

for.cond.i.cx18_writel.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.2.i = icmp eq i32 %8, %val
  br i1 %cmp1.2.i, label %for.cond.1.i.cx18_writel.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.3.i = icmp eq i32 %10, %val
  br i1 %cmp1.3.i, label %for.cond.2.i.cx18_writel.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.4.i = icmp eq i32 %12, %val
  br i1 %cmp1.4.i, label %for.cond.3.i.cx18_writel.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.5.i = icmp eq i32 %14, %val
  br i1 %cmp1.5.i, label %for.cond.4.i.cx18_writel.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.6.i = icmp eq i32 %16, %val
  br i1 %cmp1.6.i, label %for.cond.5.i.cx18_writel.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.7.i = icmp eq i32 %18, %val
  br i1 %cmp1.7.i, label %for.cond.6.i.cx18_writel.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val)
  %cmp1.8.i = icmp eq i32 %20, %val
  br i1 %cmp1.8.i, label %for.cond.7.i.cx18_writel.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx18_writel.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !331
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  br label %cx18_writel.exit

cx18_writel.exit:                                 ; preds = %for.cond.8.i, %for.cond.7.i.cx18_writel.exit_crit_edge, %for.cond.6.i.cx18_writel.exit_crit_edge, %for.cond.5.i.cx18_writel.exit_crit_edge, %for.cond.4.i.cx18_writel.exit_crit_edge, %for.cond.3.i.cx18_writel.exit_crit_edge, %for.cond.2.i.cx18_writel.exit_crit_edge, %for.cond.1.i.cx18_writel.exit_crit_edge, %for.cond.i.cx18_writel.exit_crit_edge, %entry.cx18_writel.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_write_expect(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr, i8 noundef zeroext %value, i8 noundef zeroext %eval, i8 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %and = and i32 %conv, 65532
  %add = or i32 %and, 12845056
  %and2 = shl nuw nsw i32 %conv, 3
  %mul = and i32 %and2, 24
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !328
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %shl = shl nuw i32 255, %mul
  %neg = xor i32 %shl, -1
  %and3 = and i32 %3, %neg
  %conv4 = zext i8 %value to i32
  %shl5 = shl nuw i32 %conv4, %mul
  %or = or i32 %and3, %shl5
  %conv6 = zext i8 %eval to i32
  %shl7 = shl nuw i32 %conv6, %mul
  %conv8 = zext i8 %mask to i32
  %shl9 = shl nuw i32 %conv8, %mul
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.02.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %6) #7, !srcloc !331
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #7, !srcloc !328
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1.i.i = icmp ne i32 %7, -1
  %9 = xor i32 %8, %shl7
  %10 = and i32 %9, %shl9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.i.i = icmp eq i32 %10, 0
  %or.cond1.i.i = and i1 %cmp1.i.i, %cmp4.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  %or.cond3.i.i = select i1 %or.cond1.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond3.i.i, label %cx18_write_reg_expect.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_write4(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %add = or i32 %conv, 12845056
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %value, i32 noundef %add)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_write4_expect(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr, i32 noundef %value, i32 noundef %eval, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %add = or i32 %conv, 12845056
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %and.i.i = and i32 %mask, %eval
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and.i.i)
  %cmp2.not.i.i = icmp eq i32 %and.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.02.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !331
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !328
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.i.i = icmp ne i32 %3, -1
  %or.cond.i.i = or i1 %cmp2.not.i.i, %cmp1.i.i
  %and3.i.i = and i32 %4, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and.i.i, %and3.i.i
  %or.cond1.i.i = and i1 %or.cond.i.i, %cmp4.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  %or.cond3.i.i = select i1 %or.cond1.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond3.i.i, label %cx18_write_reg_expect.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_write4_noretry(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %add = or i32 %conv, 12845056
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !331
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @cx18_av_read(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %and = and i32 %conv, 65532
  %add = or i32 %and, 12845056
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !328
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %and2 = shl nuw nsw i32 %conv, 3
  %mul = and i32 %and2, 24
  %shr = lshr i32 %3, %mul
  %conv4 = trunc i32 %shr to i8
  ret i8 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_read4(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %add = or i32 %conv, 12845056
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !328
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_and_or(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr, i32 noundef %and_mask, i8 noundef zeroext %or_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %addr to i32
  %and.i = and i32 %conv.i, 65532
  %add.i = or i32 %and.i, 12845056
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %and2.i = shl nuw nsw i32 %conv.i, 3
  %mul.i = and i32 %and2.i, 24
  %shr.i = lshr i32 %3, %mul.i
  %4 = and i32 %shr.i, %and_mask
  %5 = trunc i32 %4 to i8
  %conv2 = or i8 %5, %or_value
  %6 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i12 = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #7, !srcloc !328
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %shl.i = shl nuw i32 255, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %9, %neg.i
  %conv4.i13 = zext i8 %conv2 to i32
  %shl5.i = shl nuw i32 %conv4.i13, %mul.i
  %or.i = or i32 %shl5.i, %and3.i
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i, i32 noundef %add.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_and_or4(ptr nocapture noundef readonly %cx, i16 noundef zeroext %addr, i32 noundef %and_mask, i32 noundef %or_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %addr to i32
  %add.i = or i32 %conv.i, 12845056
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %add.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %and = and i32 %3, %and_mask
  %or = or i32 %and, %or_value
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or, i32 noundef %add.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_av_std_setup(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %std2 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 4
  %0 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std2, align 8
  %and = and i64 %1, -45057
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %reg_mem.i.i532 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %2 = ptrtoint ptr %reg_mem.i.i532 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_mem.i.i532, align 8
  %add.ptr.i.i533 = getelementptr i8, ptr %3, i32 12846236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i533) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %5 = and i32 %4, -256
  %.631 = select i1 %tobool.not, i32 20, i32 17
  %6 = or i32 %5, %.631
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %7, i32 noundef 12846236) #7
  %and4 = and i64 %1, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else15, label %if.then6

if.then6:                                         ; preds = %entry
  %and7 = and i64 %1, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.then6.if.end24_crit_edge

if.then6.if.end24_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %1)
  %cmp = icmp eq i64 %1, 1024
  %. = select i1 %cmp, i32 556422, i32 672314
  %.530 = zext i1 %cmp to i32
  %.531 = select i1 %cmp, i32 32, i32 0
  br label %if.end24

if.else15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i64 %1, label %if.else21 [
    i64 2048, label %if.else15.if.end24_crit_edge
    i64 256, label %if.then20
  ]

if.else15.if.end24_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else21:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then20, %if.else15.if.end24_crit_edge, %if.else10, %if.then6.if.end24_crit_edge
  %sc.0 = phi i32 [ 555421, %if.then20 ], [ 556032, %if.else21 ], [ 688700, %if.then6.if.end24_crit_edge ], [ %., %if.else10 ], [ 688700, %if.else15.if.end24_crit_edge ]
  %vblank656.0 = phi i32 [ 38, %if.then20 ], [ 38, %if.else21 ], [ 48, %if.then6.if.end24_crit_edge ], [ 48, %if.else10 ], [ 38, %if.else15.if.end24_crit_edge ]
  %luma_lpf.0 = phi i32 [ 1, %if.then20 ], [ 1, %if.else21 ], [ 2, %if.then6.if.end24_crit_edge ], [ 2, %if.else10 ], [ 2, %if.else15.if.end24_crit_edge ]
  %uv_lpf.0 = phi i32 [ 1, %if.then20 ], [ 1, %if.else21 ], [ 1, %if.then6.if.end24_crit_edge ], [ %.530, %if.else10 ], [ 1, %if.else15.if.end24_crit_edge ]
  %comb.0 = phi i32 [ 32, %if.then20 ], [ 102, %if.else21 ], [ 32, %if.then6.if.end24_crit_edge ], [ %.531, %if.else10 ], [ 32, %if.else15.if.end24_crit_edge ]
  %vactive.0 = phi i32 [ 481, %if.then20 ], [ 481, %if.else21 ], [ 579, %if.then6.if.end24_crit_edge ], [ 579, %if.else10 ], [ 481, %if.else15.if.end24_crit_edge ]
  %vblank.0 = phi i32 [ 26, %if.then20 ], [ 26, %if.else21 ], [ 38, %if.then6.if.end24_crit_edge ], [ 38, %if.else10 ], [ 26, %if.else15.if.end24_crit_edge ]
  %burst.0 = phi i32 [ 97, %if.then20 ], [ 90, %if.else21 ], [ 93, %if.then6.if.end24_crit_edge ], [ 93, %if.else10 ], [ 90, %if.else15.if.end24_crit_edge ]
  %hblank.0 = phi i32 [ 122, %if.then20 ], [ 122, %if.else21 ], [ 132, %if.then6.if.end24_crit_edge ], [ 132, %if.else10 ], [ 122, %if.else15.if.end24_crit_edge ]
  %reg_mem.i.i536 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %8 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i537 = getelementptr i8, ptr %9, i32 12845320
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i537) #7, !srcloc !328
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %12 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i539 = getelementptr i8, ptr %13, i32 12845324
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i539) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %15 = and i32 %14, -255
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i541 = getelementptr i8, ptr %18, i32 12845320
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i541) #7, !srcloc !328
  %20 = lshr i32 %19, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv4.i542 = trunc i32 %20 to i8
  %conv29 = and i32 %20, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %21 = load i32, ptr @cx18_debug, align 4
  %and30 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end24.do.end37_crit_edge, label %do.end

if.end24.do.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %11, i32 noundef %16, i32 noundef %conv29) #10
  br label %do.end37

do.end37:                                         ; preds = %do.end, %if.end24.do.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4.i542)
  %tobool38.not = icmp eq i8 %conv4.i542, 0
  br i1 %tobool38.not, label %do.end37.if.end319_crit_edge, label %if.then39

do.end37.if.end319_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end319

if.then39:                                        ; preds = %do.end37
  %conv41 = zext i32 %11 to i64
  %shl = shl nuw nsw i64 %conv41, 25
  %conv42 = zext i32 %16 to i64
  %add = or i64 %shl, %conv42
  %mul = mul nuw nsw i64 %add, 28636360
  %shr = lshr i64 %mul, 25
  %conv43 = trunc i64 %shr to i32
  %div = udiv i32 %conv43, %conv29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %22 = load i32, ptr @cx18_debug, align 4
  %and45 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then39.do.body59_crit_edge, label %do.end50

if.then39.do.body59_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

do.end50:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %name52 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %div.frozen = freeze i32 %div
  %div54 = sdiv i32 %div.frozen, 1000000
  %23 = mul i32 %div54, 1000000
  %rem.decomposed = sub i32 %div.frozen, %23
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name52, i32 noundef %div54, i32 noundef %rem.decomposed) #10
  br label %do.body59

do.body59:                                        ; preds = %do.end50, %if.then39.do.body59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %24 = load i32, ptr @cx18_debug, align 4
  %and60 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.body76_crit_edge, label %do.end65

do.body59.do.body76_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body76

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  %name67 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %div69 = sdiv i32 %div, 8000000
  %div70 = sdiv i32 %div, 8
  %rem71 = srem i32 %div70, 1000000
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name67, i32 noundef %div69, i32 noundef %rem71) #10
  br label %do.body76

do.body76:                                        ; preds = %do.end65, %do.body59.do.body76_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %25 = load i32, ptr @cx18_debug, align 4
  %and77 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.do.end89_crit_edge, label %do.end82

do.body76.do.end89_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %name84 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name84, i32 noundef 2, i32 noundef 121) #10
  br label %do.end89

do.end89:                                         ; preds = %do.end82, %do.body76.do.end89_crit_edge
  %26 = zext i32 %sc.0 to i64
  %mul91 = mul nuw nsw i64 %26, 28636360
  %27 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1053129035515646593, i64 %mul91) #11, !srcloc !332
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1053129035515646593, i64 %mul91, i64 %27, i32 0) #11, !srcloc !333
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %29 = load i32, ptr @cx18_debug, align 4
  %and290 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  br i1 %tobool291.not, label %do.end89.do.body305_crit_edge, label %do.end295

do.end89.do.body305_crit_edge:                    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body305

do.end295:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  %asmresult10.i = extractvalue { i64, i32 } %28, 0
  %div265529 = lshr i64 %asmresult10.i, 22
  %conv288 = trunc i64 %div265529 to i32
  %name297 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %conv288.frozen = freeze i32 %conv288
  %div299 = sdiv i32 %conv288.frozen, 1000000
  %30 = mul i32 %div299, 1000000
  %rem300.decomposed = sub i32 %conv288.frozen, %30
  %call301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name297, i32 noundef %div299, i32 noundef %rem300.decomposed) #10
  br label %do.body305

do.body305:                                       ; preds = %do.end295, %do.end89.do.body305_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %31 = load i32, ptr @cx18_debug, align 4
  %and306 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %do.body305.if.end319_crit_edge, label %do.end311

do.body305.if.end319_crit_edge:                   ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end319

do.end311:                                        ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #9
  %name313 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name313, i32 noundef %hblank.0, i32 noundef 720, i32 noundef %vblank.0, i32 noundef %vactive.0, i32 noundef %vblank656.0, i32 noundef 543, i32 noundef %burst.0, i32 noundef %luma_lpf.0, i32 noundef %uv_lpf.0, i32 noundef %comb.0, i32 noundef %sc.0) #10
  br label %if.end319

if.end319:                                        ; preds = %do.end311, %do.body305.if.end319_crit_edge, %do.end37.if.end319_crit_edge
  %32 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i544 = getelementptr i8, ptr %33, i32 12846192
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i544) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %35 = and i32 %34, 16777215
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %or.i547 = or i32 %36, %hblank.0
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i547, i32 noundef 12846192) #7
  %37 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i549 = getelementptr i8, ptr %38, i32 12846192
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i549) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %40 = and i32 %39, -16711681
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %41, i32 noundef 12846192) #7
  %42 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i552 = getelementptr i8, ptr %43, i32 12846192
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i552) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %45 = and i32 %44, -65281
  %46 = or i32 %45, 11520
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %47, i32 noundef 12846192) #7
  %48 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i556 = getelementptr i8, ptr %49, i32 12846192
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i556) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %51 = and i32 %50, -256
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %shl5.i = shl nuw nsw i32 %burst.0, 24
  %or.i559 = or i32 %52, %shl5.i
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i559, i32 noundef 12846192) #7
  %53 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i561 = getelementptr i8, ptr %54, i32 12846196
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i561) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %56 = and i32 %55, 16777215
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %or.i564 = or i32 %57, %vblank.0
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i564, i32 noundef 12846196) #7
  %conv341 = shl nuw nsw i32 %vactive.0, 12
  %58 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i566 = getelementptr i8, ptr %59, i32 12846196
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i566) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %61 = and i32 %60, -16711681
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %conv4.i568 = and i32 %conv341, 12288
  %or.i570 = or i32 %62, %conv4.i568
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i570, i32 noundef 12846196) #7
  %63 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i572 = getelementptr i8, ptr %64, i32 12846196
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i572) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %66 = and i32 %65, -65281
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %shl5.i575 = and i32 %conv341, 4063232
  %or.i576 = or i32 %67, %shl5.i575
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i576, i32 noundef 12846196) #7
  %68 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i578 = getelementptr i8, ptr %69, i32 12846196
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i578) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %71 = and i32 %70, -256
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %shl5.i581 = shl nuw nsw i32 %vblank656.0, 24
  %or.i582 = or i32 %72, %shl5.i581
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i582, i32 noundef 12846196) #7
  %73 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i584 = getelementptr i8, ptr %74, i32 12846200
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i584) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %76 = and i32 %75, 16777215
  %77 = or i32 %76, 520093696
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %78, i32 noundef 12846200) #7
  %79 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i588 = getelementptr i8, ptr %80, i32 12846200
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i588) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %82 = and i32 %81, -16711681
  %83 = or i32 %82, 131072
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %84, i32 noundef 12846200) #7
  %shl350 = shl nuw nsw i32 %luma_lpf.0, 22
  %shl351 = shl nuw nsw i32 %uv_lpf.0, 20
  %or353 = or i32 %shl351, %shl350
  %85 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i592 = getelementptr i8, ptr %86, i32 12846200
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i592) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %88 = and i32 %87, -65281
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %or.i596 = or i32 %89, %or353
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i596, i32 noundef 12846200) #7
  %90 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i598 = getelementptr i8, ptr %91, i32 12846200
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i598) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %93 = and i32 %92, -256
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %shl5.i601 = shl nuw nsw i32 %comb.0, 24
  %or.i602 = or i32 %94, %shl5.i601
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i602, i32 noundef 12846200) #7
  %95 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i604 = getelementptr i8, ptr %96, i32 12846204
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i604) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %98 = and i32 %97, 16777215
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %conv4.i606 = and i32 %sc.0, 191
  %or.i607 = or i32 %99, %conv4.i606
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i607, i32 noundef 12846204) #7
  %100 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i609 = getelementptr i8, ptr %101, i32 12846204
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i609) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %103 = and i32 %102, -16711681
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %conv4.i611 = and i32 %sc.0, 65280
  %or.i613 = or i32 %104, %conv4.i611
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i613, i32 noundef 12846204) #7
  %105 = and i32 %sc.0, 655360
  %106 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i615 = getelementptr i8, ptr %107, i32 12846204
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i615) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %109 = and i32 %108, -65281
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %or.i619 = or i32 %110, %105
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i619, i32 noundef 12846204) #7
  %not.tobool5.not = xor i1 %tobool5.not, true
  %spec.select = zext i1 %not.tobool5.not to i32
  %spec.select630 = select i1 %tobool5.not, i32 8, i32 5
  %111 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 11
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.select, ptr %111, align 8
  %113 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 12
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.select630, ptr %113, align 4
  %115 = ptrtoint ptr %reg_mem.i.i536 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_mem.i.i536, align 8
  %add.ptr.i.i621 = getelementptr i8, ptr %116, i32 12846204
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i621) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %118 = and i32 %117, -256
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %conv4.i623 = select i1 %tobool5.not, i32 0, i32 16777216
  %or.i625 = or i32 %119, %conv4.i623
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i625, i32 noundef 12846204) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_probe(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %av_state = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 12845312
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %rev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 9
  %5 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rev, align 8
  %vid_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %vid_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %vid_input, align 8
  %aud_input = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 6
  %7 = ptrtoint ptr %aud_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %aud_input, align 4
  %audclk_freq = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 7
  %8 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 48000, ptr %audclk_freq, align 8
  %audmode = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 8
  %9 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %audmode, align 4
  %slicer_line_delay = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 11
  %10 = ptrtoint ptr %slicer_line_delay to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %slicer_line_delay, align 8
  %slicer_line_offset = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 12
  %11 = ptrtoint ptr %slicer_line_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %slicer_line_offset, align 4
  tail call void @v4l2_subdev_init(ptr noundef %av_state, ptr noundef nonnull @cx18_av_ops) #7
  %dev_priv.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cx, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %name3 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rev, align 8
  %shr = lshr i32 %14, 4
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %name3, i32 noundef %shr)
  %grp_id = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 10
  %15 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %grp_id, align 4
  %hdl = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 1
  %call7 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 9, ptr noundef nonnull @cx18_av_probe._key, ptr noundef nonnull @.str.19) #7
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #7
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #7
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #7
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_audio_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 0) #7
  %volume = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %volume to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %volume, align 4
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_audio_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_audio_ctrl_ops, i32 noundef 9963782, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #7
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_audio_ctrl_ops, i32 noundef 9963783, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #7
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @cx18_av_audio_ctrl_ops, i32 noundef 9963784, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #7
  %ctrl_handler = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 8
  %17 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 1, i32 9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2
  %call33 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %av_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 370017295, i32 noundef 12845320) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 2876158, i32 noundef 12845324) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 5384109, i32 noundef 12845328) #7
  %20 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 12845348
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %23 = and i32 %22, -256
  %24 = or i32 %23, 86
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %25, i32 noundef 12845348) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ 0, %if.else ], [ %call33, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_log_status(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg_mem.i.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 12846080
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !328
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv4.i.i = trunc i32 %5 to i8
  %6 = and i8 %conv4.i.i, 15
  %7 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i72.i = getelementptr i8, ptr %8, i32 12846092
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.i) #7, !srcloc !328
  %10 = lshr i32 %9, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %11 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i75.i = getelementptr i8, ptr %12, i32 12846092
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %vid_input5.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 5
  %14 = ptrtoint ptr %vid_input5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vid_input5.i, align 8
  %name.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 0, i32 9
  %16 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.39, ptr @.str.38
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i, ptr noundef nonnull %cond.i) #10
  %17 = and i32 %10, 15
  %arrayidx.i = getelementptr [16 x ptr], ptr @log_video_status.fmt_strs, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name.i, ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool25.not.i = icmp eq i8 %6, 0
  br i1 %tobool25.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv24.i = zext i8 %6 to i32
  %arrayidx26.i = getelementptr [16 x ptr], ptr @log_video_status.fmt_strs, i32 0, i32 %conv24.i
  %20 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx26.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond27.i = phi ptr [ %21, %cond.true.i ], [ @.str.46, %entry.cond.end.i_crit_edge ]
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i, ptr noundef %cond27.i) #10
  %22 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %do.end34.i, label %do.end41.i

do.end34.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name.i, i32 noundef %15) #10
  br label %log_video_status.exit

do.end41.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and45.i = lshr i32 %15, 4
  %24 = and i32 %and45.i, 15
  %and46.i = lshr i32 %15, 8
  %25 = and i32 %and46.i, 15
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name.i, i32 noundef %24, i32 noundef %25) #10
  br label %log_video_status.exit

log_video_status.exit:                            ; preds = %do.end41.i, %do.end34.i
  %audclk_freq.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 7
  %26 = ptrtoint ptr %audclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %audclk_freq.i, align 8
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name.i, i32 noundef %27) #10
  %28 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i.i3 = getelementptr i8, ptr %29, i32 12847104
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i3) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %31 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i245.i = getelementptr i8, ptr %32, i32 12847108
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i245.i) #7, !srcloc !328
  %34 = lshr i32 %33, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv4.i246.i = trunc i32 %34 to i8
  %35 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i248.i = getelementptr i8, ptr %36, i32 12847108
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i248.i) #7, !srcloc !328
  %38 = lshr i32 %37, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv4.i250.i = trunc i32 %38 to i8
  %39 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i252.i = getelementptr i8, ptr %40, i32 12847112
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i252.i) #7, !srcloc !328
  %42 = lshr i32 %41, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %43 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i255.i = getelementptr i8, ptr %44, i32 12847112
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i255.i) #7, !srcloc !328
  %46 = lshr i32 %45, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %47 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i259.i = getelementptr i8, ptr %48, i32 12847112
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i259.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %50 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i263.i = getelementptr i8, ptr %51, i32 12847312
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i263.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %aud_input8.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 6
  %53 = ptrtoint ptr %aud_input8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aud_input8.i, align 4
  %55 = zext i8 %conv4.i246.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %conv4.i246.i, label %sw.default.i [
    i8 0, label %log_video_status.exit.do.end.i_crit_edge
    i8 1, label %sw.bb9.i
    i8 2, label %sw.bb10.i
    i8 4, label %sw.bb11.i
    i8 16, label %sw.bb12.i
    i8 17, label %sw.bb13.i
    i8 18, label %sw.bb14.i
    i8 20, label %sw.bb15.i
    i8 -2, label %sw.bb16.i
  ]

log_video_status.exit.do.end.i_crit_edge:         ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb9.i:                                         ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb10.i:                                        ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb11.i:                                        ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb12.i:                                        ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb13.i:                                        ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb14.i:                                        ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb15.i:                                        ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb16.i:                                        ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.default.i:                                     ; preds = %log_video_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %sw.default.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %log_video_status.exit.do.end.i_crit_edge
  %p.0.i = phi ptr [ @.str.65, %sw.default.i ], [ @.str.64, %sw.bb16.i ], [ @.str.63, %sw.bb15.i ], [ @.str.62, %sw.bb14.i ], [ @.str.61, %sw.bb13.i ], [ @.str.60, %sw.bb12.i ], [ @.str.59, %sw.bb11.i ], [ @.str.58, %sw.bb10.i ], [ @.str.57, %sw.bb9.i ], [ @.str.56, %log_video_status.exit.do.end.i_crit_edge ]
  %call17.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name.i, ptr noundef nonnull %p.0.i) #10
  %switch.tableidx = add i8 %conv4.i250.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %switch.tableidx)
  %56 = icmp ult i8 %switch.tableidx, 20
  br i1 %56, label %switch.lookup, label %do.end.i.do.end43.i_crit_edge

do.end.i.do.end43.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [20 x ptr], ptr @switch.table.cx18_av_log_status, i32 0, i32 %57
  %58 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end43.i

do.end43.i:                                       ; preds = %switch.lookup, %do.end.i.do.end43.i_crit_edge
  %p.1.i = phi ptr [ @.str.65, %do.end.i.do.end43.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name.i, ptr noundef nonnull %p.1.i) #10
  %59 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i6 = icmp eq i32 %59, 0
  %cond.i7 = select i1 %tobool.not.i6, ptr @.str.94, ptr @.str.93
  %call55.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name.i, ptr noundef nonnull %cond.i7) #10
  %60 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool64.not.i = icmp eq i32 %60, 0
  %cond65.i = select i1 %tobool64.not.i, ptr @.str.99, ptr @.str.98
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, ptr noundef nonnull %cond65.i) #10
  %61 = lshr i32 %41, 28
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %61, label %do.end43.unreachabledefault.i [
    i32 0, label %do.end43.i.if.then.i_crit_edge
    i32 1, label %sw.bb69.i
    i32 2, label %sw.bb70.i
    i32 3, label %sw.bb71.i
    i32 4, label %sw.bb72.i
    i32 5, label %sw.bb73.i
    i32 6, label %sw.bb74.i
    i32 7, label %sw.bb75.i
    i32 8, label %sw.bb76.i
    i32 9, label %sw.bb77.i
    i32 10, label %sw.bb78.i
    i32 11, label %sw.bb79.i
    i32 12, label %sw.bb80.i
    i32 13, label %sw.bb81.i
    i32 14, label %sw.bb82.i
    i32 15, label %if.else.i
  ]

do.end43.i.if.then.i_crit_edge:                   ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb69.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb70.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb71.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb72.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb73.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb74.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb75.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb76.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb77.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb78.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb79.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb80.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb81.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

sw.bb82.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

do.end43.unreachabledefault.i:                    ; preds = %do.end43.i
  unreachable

if.then.i:                                        ; preds = %sw.bb82.i, %sw.bb81.i, %sw.bb80.i, %sw.bb79.i, %sw.bb78.i, %sw.bb77.i, %sw.bb76.i, %sw.bb75.i, %sw.bb74.i, %sw.bb73.i, %sw.bb72.i, %sw.bb71.i, %sw.bb70.i, %sw.bb69.i, %do.end43.i.if.then.i_crit_edge
  %p.2.ph.i = phi ptr [ @.str.100, %do.end43.i.if.then.i_crit_edge ], [ @.str.82, %sw.bb69.i ], [ @.str.68, %sw.bb70.i ], [ @.str.69, %sw.bb71.i ], [ @.str.70, %sw.bb72.i ], [ @.str.71, %sw.bb73.i ], [ @.str.72, %sw.bb74.i ], [ @.str.73, %sw.bb75.i ], [ @.str.74, %sw.bb76.i ], [ @.str.75, %sw.bb77.i ], [ @.str.76, %sw.bb78.i ], [ @.str.77, %sw.bb79.i ], [ @.str.78, %sw.bb80.i ], [ @.str.79, %sw.bb81.i ], [ @.str.101, %sw.bb82.i ]
  %call92267.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name.i, ptr noundef nonnull %p.2.ph.i) #10
  %and97.i = and i32 %42, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and97.i)
  %63 = icmp ult i32 %and97.i, 8
  br i1 %63, label %switch.lookup9, label %if.then.i.do.end110.i_crit_edge

if.then.i.do.end110.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110.i

switch.lookup9:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep10 = getelementptr inbounds [8 x ptr], ptr @switch.table.cx18_av_log_status.176, i32 0, i32 %and97.i
  %64 = ptrtoint ptr %switch.gep10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load11 = load ptr, ptr %switch.gep10, align 4
  br label %do.end110.i

do.end110.i:                                      ; preds = %switch.lookup9, %if.then.i.do.end110.i_crit_edge
  %p.3.i = phi ptr [ %switch.load11, %switch.lookup9 ], [ @.str.100, %if.then.i.do.end110.i_crit_edge ]
  %call114.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name.i, ptr noundef nonnull %p.3.i) #10
  br label %if.end.i

if.else.i:                                        ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name.i, ptr noundef nonnull @.str.46) #10
  %and116.i = and i32 %42, 15
  %switch.gep13 = getelementptr inbounds [16 x ptr], ptr @switch.table.cx18_av_log_status.177, i32 0, i32 %and116.i
  %65 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load14 = load ptr, ptr %switch.gep13, align 4
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name.i, ptr noundef nonnull %switch.load14) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool139.not.i = icmp eq i32 %54, 0
  br i1 %tobool139.not.i, label %do.end151.i, label %do.end143.i

do.end143.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %name.i, i32 noundef %54) #10
  br label %if.end156.i

do.end151.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call155.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name.i) #10
  br label %if.end156.i

if.end156.i:                                      ; preds = %do.end151.i, %do.end143.i
  %66 = and i32 %46, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %66)
  %67 = icmp ult i32 %66, 8
  br i1 %67, label %switch.lookup15, label %if.end156.i.do.end171.i_crit_edge

if.end156.i.do.end171.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end171.i

switch.lookup15:                                  ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep16 = getelementptr inbounds [8 x ptr], ptr @switch.table.cx18_av_log_status.178, i32 0, i32 %66
  %68 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load17 = load ptr, ptr %switch.gep16, align 4
  br label %do.end171.i

do.end171.i:                                      ; preds = %switch.lookup15, %if.end156.i.do.end171.i_crit_edge
  %p.5.i = phi ptr [ %switch.load17, %switch.lookup15 ], [ @.str.100, %if.end156.i.do.end171.i_crit_edge ]
  %call175.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %name.i, ptr noundef nonnull %p.5.i) #10
  %69 = and i32 %41, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %69)
  %cmp178.i = icmp eq i32 %69, 251658240
  br i1 %cmp178.i, label %if.then180.i, label %do.end171.i.log_audio_status.exit_crit_edge

do.end171.i.log_audio_status.exit_crit_edge:      ; preds = %do.end171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %log_audio_status.exit

if.then180.i:                                     ; preds = %do.end171.i
  %70 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %trunc.not.i = icmp eq i32 %70, 0
  %.str.145..str.146.i = select i1 %trunc.not.i, ptr @.str.145, ptr @.str.146
  %call193.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name.i, ptr noundef nonnull %.str.145..str.146.i) #10
  %and195.i = and i32 %49, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and195.i)
  %71 = icmp ult i32 %and195.i, 5
  br i1 %71, label %switch.lookup18, label %if.then180.i.do.end205.i_crit_edge

if.then180.i.do.end205.i_crit_edge:               ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end205.i

switch.lookup18:                                  ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep19 = getelementptr inbounds [5 x ptr], ptr @switch.table.cx18_av_log_status.179, i32 0, i32 %and195.i
  %72 = ptrtoint ptr %switch.gep19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %switch.load20 = load ptr, ptr %switch.gep19, align 4
  br label %do.end205.i

do.end205.i:                                      ; preds = %switch.lookup18, %if.then180.i.do.end205.i_crit_edge
  %p.7.i = phi ptr [ %switch.load20, %switch.lookup18 ], [ @.str.100, %if.then180.i.do.end205.i_crit_edge ]
  %call209.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %name.i, ptr noundef nonnull %p.7.i) #10
  br label %log_audio_status.exit

log_audio_status.exit:                            ; preds = %do.end205.i, %do.end171.i.log_audio_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_load_fw(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_initialized = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 10
  %0 = ptrtoint ptr %is_initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %is_initialized to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %is_initialized, align 4
  tail call fastcc void @cx18_av_initialize(ptr noundef %sd)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_reset(ptr noundef %sd, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cx18_av_initialize(ptr noundef %sd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %and = and i64 %1, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 4, ptr %size, align 1
  %5 = trunc i64 %1 to i32
  %conv = and i32 %5, 4092
  %add.i = or i32 %conv, 12845056
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv5 = zext i32 %9 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %conv5, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %and = and i64 %1, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %4 = trunc i64 %1 to i32
  %conv = and i32 %4, 4092
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %val, align 1
  %conv4 = trunc i64 %6 to i32
  %add.i = or i32 %conv, 12845056
  tail call fastcc void @cx18_write_reg(ptr noundef %3, i32 noundef %conv4, i32 noundef %add.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_av_initialize(ptr noundef %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call2 = tail call i32 @cx18_av_loadfw(ptr noundef %1) #7
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 12847104
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %entry
  %i.02.i.i.i = phi i32 [ 0, %entry ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 3) #7, !srcloc !331
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp1.i.i.i = icmp ne i32 %4, -1
  %5 = and i32 %4, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp4.i.i.i = icmp eq i32 %5, 3
  %or.cond1.i.i.i = and i1 %cmp1.i.i.i, %cmp4.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  %or.cond3.i.i.i = select i1 %or.cond1.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond3.i.i.i, label %cx18_av_write4_expect.exit, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

cx18_av_write4_expect.exit:                       ; preds = %for.body.i.i.i
  %6 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i95 = getelementptr i8, ptr %7, i32 12845056
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #7, !srcloc !328
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %or = or i32 %9, 1
  %10 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i97 = getelementptr i8, ptr %11, i32 12845056
  %and.i.i.i = and i32 %9, 65534
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  br label %for.body.i.i.i106

for.body.i.i.i106:                                ; preds = %for.body.i.i.i106.for.body.i.i.i106_crit_edge, %cx18_av_write4_expect.exit
  %i.02.i.i.i98 = phi i32 [ 0, %cx18_av_write4_expect.exit ], [ %inc.i.i.i103, %for.body.i.i.i106.for.body.i.i.i106_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i97, i32 %12) #7, !srcloc !331
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp1.i.i.i99 = icmp ne i32 %13, -1
  %14 = and i32 %13, -16842752
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %15)
  %cmp4.i.i.i101 = icmp eq i32 %and.i.i.i, %15
  %or.cond1.i.i.i102 = and i1 %cmp1.i.i.i99, %cmp4.i.i.i101
  %inc.i.i.i103 = add nuw nsw i32 %i.02.i.i.i98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i103)
  %exitcond.not.i.i.i104 = icmp eq i32 %inc.i.i.i103, 10
  %or.cond3.i.i.i105 = select i1 %or.cond1.i.i.i102, i1 true, i1 %exitcond.not.i.i.i104
  br i1 %or.cond3.i.i.i105, label %cx18_av_write4_expect.exit107, label %for.body.i.i.i106.for.body.i.i.i106_crit_edge

for.body.i.i.i106.for.body.i.i.i106_crit_edge:    ; preds = %for.body.i.i.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i106

cx18_av_write4_expect.exit107:                    ; preds = %for.body.i.i.i106
  %16 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i109 = getelementptr i8, ptr %17, i32 12845056
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #7
  br label %for.body.i.i.i118

for.body.i.i.i118:                                ; preds = %for.body.i.i.i118.for.body.i.i.i118_crit_edge, %cx18_av_write4_expect.exit107
  %i.02.i.i.i110 = phi i32 [ 0, %cx18_av_write4_expect.exit107 ], [ %inc.i.i.i115, %for.body.i.i.i118.for.body.i.i.i118_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109, i32 %18) #7, !srcloc !331
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i109) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp1.i.i.i111 = icmp ne i32 %19, -1
  %20 = and i32 %19, -65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %21)
  %cmp4.i.i.i113 = icmp eq i32 %and.i.i.i, %21
  %or.cond1.i.i.i114 = and i1 %cmp1.i.i.i111, %cmp4.i.i.i113
  %inc.i.i.i115 = add nuw nsw i32 %i.02.i.i.i110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i115)
  %exitcond.not.i.i.i116 = icmp eq i32 %inc.i.i.i115, 10
  %or.cond3.i.i.i117 = select i1 %or.cond1.i.i.i114, i1 true, i1 %exitcond.not.i.i.i116
  br i1 %or.cond3.i.i.i117, label %cx18_av_write4_expect.exit119, label %for.body.i.i.i118.for.body.i.i.i118_crit_edge

for.body.i.i.i118.for.body.i.i.i118_crit_edge:    ; preds = %for.body.i.i.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i118

cx18_av_write4_expect.exit119:                    ; preds = %for.body.i.i.i118
  %22 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i121 = getelementptr i8, ptr %23, i32 12845400
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %25 = and i32 %24, -65567
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %26, i32 noundef 12845400) #7
  %or11 = or i32 %26, 268435712
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or11, i32 noundef 12845400) #7
  %27 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i123 = getelementptr i8, ptr %28, i32 12845404
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i123) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %30 = and i32 %29, -65567
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %31, i32 noundef 12845404) #7
  %or16 = or i32 %31, 100663552
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or16, i32 noundef 12845404) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 661506, i32 noundef 12845364) #7
  %32 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i125 = getelementptr i8, ptr %33, i32 12845372
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i125) #7, !srcloc !328
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %or20 = or i32 %35, 1
  %36 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i127 = getelementptr i8, ptr %37, i32 12845372
  %and.i.i.i128 = and i32 %or20, 50372367
  %38 = tail call i32 @llvm.bswap.i32(i32 %or20) #7
  br label %for.body.i.i.i137

for.body.i.i.i137:                                ; preds = %for.body.i.i.i137.for.body.i.i.i137_crit_edge, %cx18_av_write4_expect.exit119
  %i.02.i.i.i129 = phi i32 [ 0, %cx18_av_write4_expect.exit119 ], [ %inc.i.i.i134, %for.body.i.i.i137.for.body.i.i.i137_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i127, i32 %38) #7, !srcloc !331
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp1.i.i.i130 = icmp ne i32 %39, -1
  %40 = and i32 %39, 262078467
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i128, i32 %41)
  %cmp4.i.i.i132 = icmp eq i32 %and.i.i.i128, %41
  %or.cond1.i.i.i133 = and i1 %cmp1.i.i.i130, %cmp4.i.i.i132
  %inc.i.i.i134 = add nuw nsw i32 %i.02.i.i.i129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i134)
  %exitcond.not.i.i.i135 = icmp eq i32 %inc.i.i.i134, 10
  %or.cond3.i.i.i136 = select i1 %or.cond1.i.i.i133, i1 true, i1 %exitcond.not.i.i.i135
  br i1 %or.cond3.i.i.i136, label %cx18_av_write4_expect.exit138, label %for.body.i.i.i137.for.body.i.i.i137_crit_edge

for.body.i.i.i137.for.body.i.i.i137_crit_edge:    ; preds = %for.body.i.i.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i137

cx18_av_write4_expect.exit138:                    ; preds = %for.body.i.i.i137
  %and22 = and i32 %35, -2
  %42 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i140 = getelementptr i8, ptr %43, i32 12845372
  %and.i.i.i141 = and i32 %35, 50372366
  %44 = tail call i32 @llvm.bswap.i32(i32 %and22) #7
  br label %for.body.i.i.i150

for.body.i.i.i150:                                ; preds = %for.body.i.i.i150.for.body.i.i.i150_crit_edge, %cx18_av_write4_expect.exit138
  %i.02.i.i.i142 = phi i32 [ 0, %cx18_av_write4_expect.exit138 ], [ %inc.i.i.i147, %for.body.i.i.i150.for.body.i.i.i150_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i140, i32 %44) #7, !srcloc !331
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i140) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp1.i.i.i143 = icmp ne i32 %45, -1
  %46 = and i32 %45, 262078467
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i141, i32 %47)
  %cmp4.i.i.i145 = icmp eq i32 %and.i.i.i141, %47
  %or.cond1.i.i.i146 = and i1 %cmp1.i.i.i143, %cmp4.i.i.i145
  %inc.i.i.i147 = add nuw nsw i32 %i.02.i.i.i142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i147)
  %exitcond.not.i.i.i148 = icmp eq i32 %inc.i.i.i147, 10
  %or.cond3.i.i.i149 = select i1 %or.cond1.i.i.i146, i1 true, i1 %exitcond.not.i.i.i148
  br i1 %or.cond3.i.i.i149, label %cx18_av_write4_expect.exit151, label %for.body.i.i.i150.for.body.i.i.i150_crit_edge

for.body.i.i.i150.for.body.i.i.i150_crit_edge:    ; preds = %for.body.i.i.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i150

cx18_av_write4_expect.exit151:                    ; preds = %for.body.i.i.i150
  %48 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 12845332
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %51 = or i32 %50, 787456
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %52, i32 noundef 12845332) #7
  %53 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i153 = getelementptr i8, ptr %54, i32 12845336
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i153) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %56 = or i32 %55, 33554432
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %57, i32 noundef 12845336) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 32768, i32 noundef 12846244) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 0, i32 noundef 12846244) #7
  %58 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i156 = getelementptr i8, ptr %59, i32 12845312
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i156) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %61 = and i32 %60, -5633
  %62 = or i32 %61, 4608
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %63, i32 noundef 12845312) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 370017295, i32 noundef 12845320) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 2876158, i32 noundef 12845324) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 5384109, i32 noundef 12845328) #7
  %64 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i159 = getelementptr i8, ptr %65, i32 12845348
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i159) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %67 = and i32 %66, -256
  %68 = or i32 %67, 86
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %69, i32 noundef 12845348) #7
  %70 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i161 = getelementptr i8, ptr %71, i32 12846080
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i161) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %73 = and i32 %72, -253234179
  %74 = or i32 %73, 525314
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %75, i32 noundef 12846080) #7
  %76 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i165 = getelementptr i8, ptr %77, i32 12846240
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i165) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %79 = or i32 %78, 20480
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %80, i32 noundef 12846240) #7
  %81 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i168 = getelementptr i8, ptr %82, i32 12846220
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i168) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %84 = and i32 %83, -16711681
  %85 = or i32 %84, 2097152
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %86, i32 noundef 12846220) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 1074996526, i32 noundef 12846084) #7
  %87 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i172 = getelementptr i8, ptr %88, i32 12845316
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i172) #7, !srcloc !328
  %90 = shl i32 %89, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %or.i174 = or i32 %90, 23808
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i174, i32 noundef 12845316) #7
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 1713898015, i32 noundef 12846200) #7
  %91 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i176 = getelementptr i8, ptr %92, i32 12847316
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i176) #7, !srcloc !328
  %94 = lshr i32 %93, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv4.i = trunc i32 %94 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -28, i8 %conv4.i)
  %cmp = icmp ugt i8 %conv4.i, -28
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cx18_av_write4_expect.exit151
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i178 = getelementptr i8, ptr %96, i32 12847316
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  br label %if.end43.sink.split

if.else:                                          ; preds = %cx18_av_write4_expect.exit151
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %conv4.i)
  %cmp39 = icmp ult i8 %conv4.i, 20
  br i1 %cmp39, label %if.then41, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i181 = getelementptr i8, ptr %99, i32 12847316
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i181) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.then41, %if.then
  %.sink186 = phi i32 [ %100, %if.then41 ], [ %97, %if.then ]
  %.sink185 = phi i32 [ 335544320, %if.then41 ], [ -469762048, %if.then ]
  %default_volume.0.ph = phi i32 [ 20, %if.then41 ], [ 228, %if.then ]
  %101 = and i32 %.sink186, 16777215
  %102 = or i32 %101, %.sink185
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %103, i32 noundef 12847316) #7
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge
  %default_volume.0 = phi i32 [ %94, %if.else.if.end43_crit_edge ], [ %default_volume.0.ph, %if.end43.sink.split ]
  %.neg = mul nsw i32 %default_volume.0, -256
  %104 = add nsw i32 %.neg, 70144
  %shl = and i32 %104, -512
  %105 = zext i32 %shl to i64
  %volume = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 2
  %106 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %volume, align 4
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %107, i32 0, i32 13
  %108 = ptrtoint ptr %default_value to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %105, ptr %default_value, align 8
  %109 = load ptr, ptr %volume, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %109, i32 0, i32 23
  %110 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %shl, ptr %cur, align 8
  %hdl = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 1
  %call47 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_loadfw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cx18_av_s_radio(ptr nocapture noundef writeonly %sd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %radio, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_frequency(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  tail call fastcc void @input_change(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_g_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 12846092
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool5.not, i32 0, i32 65535
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %signal, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %9 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capability, align 4
  %or = or i32 %10, 112
  store i32 %or, ptr %capability, align 4
  %11 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i46 = getelementptr i8, ptr %12, i32 12847108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #7, !srcloc !328
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv4.i47 = trunc i32 %14 to i8
  %15 = and i32 %13, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %15)
  %cmp = icmp eq i32 %15, 16777216
  %. = select i1 %cmp, i32 2, i32 1
  %16 = zext i8 %conv4.i47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %conv4.i47, label %if.end.if.end21_crit_edge [
    i8 2, label %if.end.if.then20_crit_edge
    i8 4, label %if.end.if.then20_crit_edge48
  ]

if.end.if.then20_crit_edge48:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then20:                                        ; preds = %if.end.if.then20_crit_edge, %if.end.if.then20_crit_edge48
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  %val.1 = phi i32 [ 12, %if.then20 ], [ %., %if.end.if.end21_crit_edge ]
  %17 = lshr i32 %13, 26
  %18 = and i32 %17, 4
  %19 = or i32 %val.1, %18
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %20 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rxsubchans, align 4
  %audmode = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 8
  %21 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %audmode, align 4
  %audmode28 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %23 = ptrtoint ptr %audmode28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %audmode28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_tuner(ptr nocapture noundef %sd, ptr nocapture noundef readonly %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 12847112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  %7 = lshr i32 %6, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %conv4.i = trunc i32 %7 to i8
  %8 = and i8 %conv4.i, -16
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %9 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audmode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %10, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge31
    i32 4, label %sw.bb6
    i32 2, label %sw.bb10
  ]

if.end.sw.bb_crit_edge31:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge31
  %12 = or i8 %8, 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i8 %8, 7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i8 %8, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %v.0 = phi i8 [ %14, %sw.bb10 ], [ %13, %sw.bb6 ], [ %12, %sw.bb ], [ %8, %if.end.sw.epilog_crit_edge ]
  %15 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i29 = getelementptr i8, ptr %16, i32 12847112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %18 = and i32 %17, -16711681
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv4.i30 = zext i8 %v.0 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i30, 8
  %or.i = or i32 %19, %shl5.i
  %20 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %21, i32 12847112
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %sw.epilog
  %i.02.i.i.i = phi i32 [ 0, %sw.epilog ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %22) #7, !srcloc !331
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #7, !srcloc !328
  %24 = lshr i32 %23, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp1.i.i.i = icmp ne i32 %23, -1
  %.masked = and i32 %24, 65280
  call void @__sanitizer_cov_trace_cmp4(i32 %.masked, i32 %shl5.i)
  %cmp4.i.i.i = icmp eq i32 %.masked, %shl5.i
  %or.cond1.i.i.i = and i1 %cmp1.i.i.i, %cmp4.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  %or.cond3.i.i.i = select i1 %or.cond1.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond3.i.i.i, label %cx18_av_write_expect.exit, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

cx18_av_write_expect.exit:                        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %audmode, align 4
  %audmode16 = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 8
  %27 = ptrtoint ptr %audmode16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %audmode16, align 4
  br label %cleanup

cleanup:                                          ; preds = %cx18_av_write_expect.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cx18_av_write_expect.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @input_change(ptr nocapture noundef readonly %cx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 4
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std1, align 8
  %and = and i64 %1, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %2 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 12846236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %5 = and i32 %4, -256
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %conv4.i = select i1 %tobool.not, i32 285212672, i32 335544320
  %or.i = or i32 %6, %conv4.i
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i, i32 noundef 12846236) #7
  %7 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 12846080
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %10 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i12.i = getelementptr i8, ptr %11, i32 12846080
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %13 = and i32 %12, -16711681
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = lshr i32 %9, 8
  %shl5.i.i = and i32 %15, 40704
  %or.i.i = or i32 %14, %shl5.i.i
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i.i, i32 noundef 12846080) #7
  %16 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i75 = getelementptr i8, ptr %17, i32 12846080
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %19 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i12.i77 = getelementptr i8, ptr %20, i32 12846080
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i77) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %22 = and i32 %21, -16711681
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = lshr i32 %18, 8
  %conv4.i13.i79 = and i32 %24, 40704
  %shl5.i.i80 = or i32 %conv4.i13.i79, %23
  %or.i.i81 = or i32 %shl5.i.i80, 24576
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i.i81, i32 noundef 12846080) #7
  %and4 = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else19, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.185)
  switch i64 %1, label %if.else15 [
    i64 8192, label %if.then7
    i64 32768, label %if.then12
  ]

if.then7:                                         ; preds = %if.then
  %25 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i83 = getelementptr i8, ptr %26, i32 12847112
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i83) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %28 = and i32 %27, 16777215
  %29 = or i32 %28, -150994944
  %30 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %31, i32 12847112
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then7
  %i.02.i.i.i = phi i32 [ 0, %if.then7 ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %29) #7, !srcloc !331
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp1.i.i.i = icmp ne i32 %32, -1
  %.mask249 = and i32 %32, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -150994944, i32 %.mask249)
  %cmp4.i.i.i = icmp eq i32 %.mask249, -150994944
  %or.cond1.i.i.i = and i1 %cmp1.i.i.i, %cmp4.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  %or.cond3.i.i.i = select i1 %or.cond1.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond3.i.i.i, label %cx18_av_write_expect.exit, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

cx18_av_write_expect.exit:                        ; preds = %for.body.i.i.i
  %33 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i87 = getelementptr i8, ptr %34, i32 12847112
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %36 = and i32 %35, -256
  %37 = or i32 %36, 2
  %38 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i90 = getelementptr i8, ptr %39, i32 12847112
  br label %for.body.i.i.i98

for.body.i.i.i98:                                 ; preds = %for.body.i.i.i98.for.body.i.i.i98_crit_edge, %cx18_av_write_expect.exit
  %i.02.i.i.i91 = phi i32 [ 0, %cx18_av_write_expect.exit ], [ %inc.i.i.i95, %for.body.i.i.i98.for.body.i.i.i98_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i90, i32 %37) #7, !srcloc !331
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i90) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp1.i.i.i92 = icmp ne i32 %40, -1
  %41 = and i32 %40, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp4.i.i.i93 = icmp eq i32 %41, 2
  %or.cond1.i.i.i94 = and i1 %cmp1.i.i.i92, %cmp4.i.i.i93
  %inc.i.i.i95 = add nuw nsw i32 %i.02.i.i.i91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i95)
  %exitcond.not.i.i.i96 = icmp eq i32 %inc.i.i.i95, 10
  %or.cond3.i.i.i97 = select i1 %or.cond1.i.i.i94, i1 true, i1 %exitcond.not.i.i.i96
  br i1 %or.cond3.i.i.i97, label %for.body.i.i.i98.if.end33_crit_edge, label %for.body.i.i.i98.for.body.i.i.i98_crit_edge

for.body.i.i.i98.for.body.i.i.i98_crit_edge:      ; preds = %for.body.i.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i98

for.body.i.i.i98.if.end33_crit_edge:              ; preds = %for.body.i.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then12:                                        ; preds = %if.then
  %42 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i101 = getelementptr i8, ptr %43, i32 12847112
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i101) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %45 = and i32 %44, 16777215
  %46 = or i32 %45, -134217728
  %47 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i104 = getelementptr i8, ptr %48, i32 12847112
  br label %for.body.i.i.i112

for.body.i.i.i112:                                ; preds = %for.body.i.i.i112.for.body.i.i.i112_crit_edge, %if.then12
  %i.02.i.i.i105 = phi i32 [ 0, %if.then12 ], [ %inc.i.i.i109, %for.body.i.i.i112.for.body.i.i.i112_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i104, i32 %46) #7, !srcloc !331
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i104) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp1.i.i.i106 = icmp ne i32 %49, -1
  %.mask = and i32 %49, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -134217728, i32 %.mask)
  %cmp4.i.i.i107 = icmp eq i32 %.mask, -134217728
  %or.cond1.i.i.i108 = and i1 %cmp1.i.i.i106, %cmp4.i.i.i107
  %inc.i.i.i109 = add nuw nsw i32 %i.02.i.i.i105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i109)
  %exitcond.not.i.i.i110 = icmp eq i32 %inc.i.i.i109, 10
  %or.cond3.i.i.i111 = select i1 %or.cond1.i.i.i108, i1 true, i1 %exitcond.not.i.i.i110
  br i1 %or.cond3.i.i.i111, label %cx18_av_write_expect.exit113, label %for.body.i.i.i112.for.body.i.i.i112_crit_edge

for.body.i.i.i112.for.body.i.i.i112_crit_edge:    ; preds = %for.body.i.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i112

cx18_av_write_expect.exit113:                     ; preds = %for.body.i.i.i112
  %50 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i115 = getelementptr i8, ptr %51, i32 12847112
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i115) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %53 = and i32 %52, -256
  %54 = or i32 %53, 3
  %55 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i118 = getelementptr i8, ptr %56, i32 12847112
  br label %for.body.i.i.i126

for.body.i.i.i126:                                ; preds = %for.body.i.i.i126.for.body.i.i.i126_crit_edge, %cx18_av_write_expect.exit113
  %i.02.i.i.i119 = phi i32 [ 0, %cx18_av_write_expect.exit113 ], [ %inc.i.i.i123, %for.body.i.i.i126.for.body.i.i.i126_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i118, i32 %54) #7, !srcloc !331
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i118) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp1.i.i.i120 = icmp ne i32 %57, -1
  %58 = and i32 %57, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp4.i.i.i121 = icmp eq i32 %58, 3
  %or.cond1.i.i.i122 = and i1 %cmp1.i.i.i120, %cmp4.i.i.i121
  %inc.i.i.i123 = add nuw nsw i32 %i.02.i.i.i119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i123)
  %exitcond.not.i.i.i124 = icmp eq i32 %inc.i.i.i123, 10
  %or.cond3.i.i.i125 = select i1 %or.cond1.i.i.i122, i1 true, i1 %exitcond.not.i.i.i124
  br i1 %or.cond3.i.i.i125, label %for.body.i.i.i126.if.end33_crit_edge, label %for.body.i.i.i126.for.body.i.i.i126_crit_edge

for.body.i.i.i126.for.body.i.i.i126_crit_edge:    ; preds = %for.body.i.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i126

for.body.i.i.i126.if.end33_crit_edge:             ; preds = %for.body.i.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.else15:                                        ; preds = %if.then
  %59 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i129 = getelementptr i8, ptr %60, i32 12847112
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i129) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %62 = and i32 %61, 16777215
  %63 = or i32 %62, -167772160
  %64 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i132 = getelementptr i8, ptr %65, i32 12847112
  br label %for.body.i.i.i140

for.body.i.i.i140:                                ; preds = %for.body.i.i.i140.for.body.i.i.i140_crit_edge, %if.else15
  %i.02.i.i.i133 = phi i32 [ 0, %if.else15 ], [ %inc.i.i.i137, %for.body.i.i.i140.for.body.i.i.i140_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i132, i32 %63) #7, !srcloc !331
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i132) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp1.i.i.i134 = icmp ne i32 %66, -1
  %.mask250 = and i32 %66, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -167772160, i32 %.mask250)
  %cmp4.i.i.i135 = icmp eq i32 %.mask250, -167772160
  %or.cond1.i.i.i136 = and i1 %cmp1.i.i.i134, %cmp4.i.i.i135
  %inc.i.i.i137 = add nuw nsw i32 %i.02.i.i.i133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i137)
  %exitcond.not.i.i.i138 = icmp eq i32 %inc.i.i.i137, 10
  %or.cond3.i.i.i139 = select i1 %or.cond1.i.i.i136, i1 true, i1 %exitcond.not.i.i.i138
  br i1 %or.cond3.i.i.i139, label %cx18_av_write_expect.exit141, label %for.body.i.i.i140.for.body.i.i.i140_crit_edge

for.body.i.i.i140.for.body.i.i.i140_crit_edge:    ; preds = %for.body.i.i.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i140

cx18_av_write_expect.exit141:                     ; preds = %for.body.i.i.i140
  %67 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i143 = getelementptr i8, ptr %68, i32 12847112
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i143) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %70 = and i32 %69, -256
  %71 = or i32 %70, 1
  %72 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i146 = getelementptr i8, ptr %73, i32 12847112
  br label %for.body.i.i.i154

for.body.i.i.i154:                                ; preds = %for.body.i.i.i154.for.body.i.i.i154_crit_edge, %cx18_av_write_expect.exit141
  %i.02.i.i.i147 = phi i32 [ 0, %cx18_av_write_expect.exit141 ], [ %inc.i.i.i151, %for.body.i.i.i154.for.body.i.i.i154_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i146, i32 %71) #7, !srcloc !331
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i146) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp1.i.i.i148 = icmp ne i32 %74, -1
  %75 = and i32 %74, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp4.i.i.i149 = icmp eq i32 %75, 1
  %or.cond1.i.i.i150 = and i1 %cmp1.i.i.i148, %cmp4.i.i.i149
  %inc.i.i.i151 = add nuw nsw i32 %i.02.i.i.i147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i151)
  %exitcond.not.i.i.i152 = icmp eq i32 %inc.i.i.i151, 10
  %or.cond3.i.i.i153 = select i1 %or.cond1.i.i.i150, i1 true, i1 %exitcond.not.i.i.i152
  br i1 %or.cond3.i.i.i153, label %for.body.i.i.i154.if.end33_crit_edge, label %for.body.i.i.i154.for.body.i.i.i154_crit_edge

for.body.i.i.i154.for.body.i.i.i154_crit_edge:    ; preds = %for.body.i.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i154

for.body.i.i.i154.if.end33_crit_edge:             ; preds = %for.body.i.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.else19:                                        ; preds = %entry
  %and20 = and i64 %1, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.else25, label %if.then22

if.then22:                                        ; preds = %if.else19
  %76 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i157 = getelementptr i8, ptr %77, i32 12847112
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i157) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %79 = or i32 %78, -16777216
  %80 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i160 = getelementptr i8, ptr %81, i32 12847112
  br label %for.body.i.i.i168

for.body.i.i.i168:                                ; preds = %for.body.i.i.i168.for.body.i.i.i168_crit_edge, %if.then22
  %i.02.i.i.i161 = phi i32 [ 0, %if.then22 ], [ %inc.i.i.i165, %for.body.i.i.i168.for.body.i.i.i168_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i160, i32 %79) #7, !srcloc !331
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i160) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %83 = add i32 %82, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %83)
  %84 = icmp ult i32 %83, 16777215
  %inc.i.i.i165 = add nuw nsw i32 %i.02.i.i.i161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i165)
  %exitcond.not.i.i.i166 = icmp eq i32 %inc.i.i.i165, 10
  %or.cond3.i.i.i167 = select i1 %84, i1 true, i1 %exitcond.not.i.i.i166
  br i1 %or.cond3.i.i.i167, label %cx18_av_write_expect.exit169, label %for.body.i.i.i168.for.body.i.i.i168_crit_edge

for.body.i.i.i168.for.body.i.i.i168_crit_edge:    ; preds = %for.body.i.i.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i168

cx18_av_write_expect.exit169:                     ; preds = %for.body.i.i.i168
  %85 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i171 = getelementptr i8, ptr %86, i32 12847112
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %88 = and i32 %87, -256
  %89 = or i32 %88, 3
  %90 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i174 = getelementptr i8, ptr %91, i32 12847112
  br label %for.body.i.i.i182

for.body.i.i.i182:                                ; preds = %for.body.i.i.i182.for.body.i.i.i182_crit_edge, %cx18_av_write_expect.exit169
  %i.02.i.i.i175 = phi i32 [ 0, %cx18_av_write_expect.exit169 ], [ %inc.i.i.i179, %for.body.i.i.i182.for.body.i.i.i182_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i174, i32 %89) #7, !srcloc !331
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i174) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp1.i.i.i176 = icmp ne i32 %92, -1
  %93 = and i32 %92, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp4.i.i.i177 = icmp eq i32 %93, 3
  %or.cond1.i.i.i178 = and i1 %cmp1.i.i.i176, %cmp4.i.i.i177
  %inc.i.i.i179 = add nuw nsw i32 %i.02.i.i.i175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i179)
  %exitcond.not.i.i.i180 = icmp eq i32 %inc.i.i.i179, 10
  %or.cond3.i.i.i181 = select i1 %or.cond1.i.i.i178, i1 true, i1 %exitcond.not.i.i.i180
  br i1 %or.cond3.i.i.i181, label %for.body.i.i.i182.if.end33_crit_edge, label %for.body.i.i.i182.for.body.i.i.i182_crit_edge

for.body.i.i.i182.for.body.i.i.i182_crit_edge:    ; preds = %for.body.i.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i182

for.body.i.i.i182.if.end33_crit_edge:             ; preds = %for.body.i.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.else25:                                        ; preds = %if.else19
  %and26 = and i64 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.else25.if.end33_crit_edge, label %if.then28

if.else25.if.end33_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then28:                                        ; preds = %if.else25
  %94 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i185 = getelementptr i8, ptr %95, i32 12847112
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i185) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %97 = or i32 %96, -16777216
  %98 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i188 = getelementptr i8, ptr %99, i32 12847112
  br label %for.body.i.i.i196

for.body.i.i.i196:                                ; preds = %for.body.i.i.i196.for.body.i.i.i196_crit_edge, %if.then28
  %i.02.i.i.i189 = phi i32 [ 0, %if.then28 ], [ %inc.i.i.i193, %for.body.i.i.i196.for.body.i.i.i196_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i188, i32 %97) #7, !srcloc !331
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i188) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %101 = add i32 %100, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %101)
  %102 = icmp ult i32 %101, 16777215
  %inc.i.i.i193 = add nuw nsw i32 %i.02.i.i.i189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i193)
  %exitcond.not.i.i.i194 = icmp eq i32 %inc.i.i.i193, 10
  %or.cond3.i.i.i195 = select i1 %102, i1 true, i1 %exitcond.not.i.i.i194
  br i1 %or.cond3.i.i.i195, label %cx18_av_write_expect.exit197, label %for.body.i.i.i196.for.body.i.i.i196_crit_edge

for.body.i.i.i196.for.body.i.i.i196_crit_edge:    ; preds = %for.body.i.i.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i196

cx18_av_write_expect.exit197:                     ; preds = %for.body.i.i.i196
  %103 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i199 = getelementptr i8, ptr %104, i32 12847112
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i199) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %106 = and i32 %105, -256
  %107 = or i32 %106, 3
  %108 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i202 = getelementptr i8, ptr %109, i32 12847112
  br label %for.body.i.i.i210

for.body.i.i.i210:                                ; preds = %for.body.i.i.i210.for.body.i.i.i210_crit_edge, %cx18_av_write_expect.exit197
  %i.02.i.i.i203 = phi i32 [ 0, %cx18_av_write_expect.exit197 ], [ %inc.i.i.i207, %for.body.i.i.i210.for.body.i.i.i210_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i202, i32 %107) #7, !srcloc !331
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i202) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp1.i.i.i204 = icmp ne i32 %110, -1
  %111 = and i32 %110, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp4.i.i.i205 = icmp eq i32 %111, 3
  %or.cond1.i.i.i206 = and i1 %cmp1.i.i.i204, %cmp4.i.i.i205
  %inc.i.i.i207 = add nuw nsw i32 %i.02.i.i.i203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i207)
  %exitcond.not.i.i.i208 = icmp eq i32 %inc.i.i.i207, 10
  %or.cond3.i.i.i209 = select i1 %or.cond1.i.i.i206, i1 true, i1 %exitcond.not.i.i.i208
  br i1 %or.cond3.i.i.i209, label %for.body.i.i.i210.if.end33_crit_edge, label %for.body.i.i.i210.for.body.i.i.i210_crit_edge

for.body.i.i.i210.for.body.i.i.i210_crit_edge:    ; preds = %for.body.i.i.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i210

for.body.i.i.i210.if.end33_crit_edge:             ; preds = %for.body.i.i.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %for.body.i.i.i210.if.end33_crit_edge, %if.else25.if.end33_crit_edge, %for.body.i.i.i182.if.end33_crit_edge, %for.body.i.i.i154.if.end33_crit_edge, %for.body.i.i.i126.if.end33_crit_edge, %for.body.i.i.i98.if.end33_crit_edge
  %112 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i213 = getelementptr i8, ptr %113, i32 12847104
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i213) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %115 = and i32 %114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool37.not = icmp eq i32 %115, 0
  br i1 %tobool37.not, label %if.end33.if.end46_crit_edge, label %if.then38

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then38:                                        ; preds = %if.end33
  %116 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i216 = getelementptr i8, ptr %117, i32 12847104
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i216) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %119 = and i32 %118, -256
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  %and40 = shl i32 %114, 24
  %shl5.i219 = and i32 %and40, -285212672
  %or.i220 = or i32 %120, %shl5.i219
  %121 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i221 = getelementptr i8, ptr %122, i32 12847104
  %123 = tail call i32 @llvm.bswap.i32(i32 %or.i220) #7
  br label %for.body.i.i.i229

for.body.i.i.i229:                                ; preds = %for.body.i.i.i229.for.body.i.i.i229_crit_edge, %if.then38
  %i.02.i.i.i222 = phi i32 [ 0, %if.then38 ], [ %inc.i.i.i226, %for.body.i.i.i229.for.body.i.i.i229_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i221, i32 %123) #7, !srcloc !331
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i221) #7, !srcloc !328
  %125 = shl i32 %124, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp1.i.i.i223 = icmp ne i32 %124, -1
  %126 = xor i32 %125, %shl5.i219
  %127 = and i32 %126, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp4.i.i.i224 = icmp eq i32 %127, 0
  %or.cond1.i.i.i225 = and i1 %cmp1.i.i.i223, %cmp4.i.i.i224
  %inc.i.i.i226 = add nuw nsw i32 %i.02.i.i.i222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i226)
  %exitcond.not.i.i.i227 = icmp eq i32 %inc.i.i.i226, 10
  %or.cond3.i.i.i228 = select i1 %or.cond1.i.i.i225, i1 true, i1 %exitcond.not.i.i.i227
  br i1 %or.cond3.i.i.i228, label %cx18_av_write_expect.exit230, label %for.body.i.i.i229.for.body.i.i.i229_crit_edge

for.body.i.i.i229.for.body.i.i.i229_crit_edge:    ; preds = %for.body.i.i.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i229

cx18_av_write_expect.exit230:                     ; preds = %for.body.i.i.i229
  %128 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i232 = getelementptr i8, ptr %129, i32 12847104
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i232) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %131 = and i32 %130, -256
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %shl5.i235 = or i32 %and40, 268435456
  %or.i236 = or i32 %132, %shl5.i235
  %133 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i239 = getelementptr i8, ptr %134, i32 12847104
  %135 = tail call i32 @llvm.bswap.i32(i32 %or.i236) #7
  br label %for.body.i.i.i247

for.body.i.i.i247:                                ; preds = %for.body.i.i.i247.for.body.i.i.i247_crit_edge, %cx18_av_write_expect.exit230
  %i.02.i.i.i240 = phi i32 [ 0, %cx18_av_write_expect.exit230 ], [ %inc.i.i.i244, %for.body.i.i.i247.for.body.i.i.i247_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i239, i32 %135) #7, !srcloc !331
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i239) #7, !srcloc !328
  %137 = shl i32 %136, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %136)
  %cmp1.i.i.i241 = icmp ne i32 %136, -1
  %138 = xor i32 %137, %shl5.i235
  %139 = and i32 %138, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp4.i.i.i242 = icmp eq i32 %139, 0
  %or.cond1.i.i.i243 = and i1 %cmp1.i.i.i241, %cmp4.i.i.i242
  %inc.i.i.i244 = add nuw nsw i32 %i.02.i.i.i240, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i244)
  %exitcond.not.i.i.i245 = icmp eq i32 %inc.i.i.i244, 10
  %or.cond3.i.i.i246 = select i1 %or.cond1.i.i.i243, i1 true, i1 %exitcond.not.i.i.i245
  br i1 %or.cond3.i.i.i246, label %for.body.i.i.i247.if.end46_crit_edge, label %for.body.i.i.i247.for.body.i.i.i247_crit_edge

for.body.i.i.i247.for.body.i.i.i247_crit_edge:    ; preds = %for.body.i.i.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i247

for.body.i.i.i247.if.end46_crit_edge:             ; preds = %for.body.i.i.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46:                                         ; preds = %for.body.i.i.i247.if.end46_crit_edge, %if.end33.if.end46_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_s_clock_freq(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_audio_routing(ptr nocapture noundef readonly %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vid_input = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %vid_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vid_input, align 8
  %call2 = tail call fastcc i32 @set_input(ptr noundef %1, i32 noundef %3, i32 noundef %input)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_input(ptr noundef %cx, i32 noundef %vid_input, i32 noundef %aud_input) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %0 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %name, i32 noundef %vid_input, i32 noundef %aud_input) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = add i32 %vid_input, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  br i1 %2, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %3 = trunc i32 %vid_input to i8
  %conv = add nuw nsw i8 %3, -17
  br label %if.end117

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %vid_input)
  %cmp7 = icmp ugt i32 %vid_input, 4095
  br i1 %cmp7, label %if.then9, label %if.else57

if.then9:                                         ; preds = %if.else
  %and10 = and i32 %vid_input, 61440
  %and11 = and i32 %vid_input, 983040
  %and12 = and i32 %vid_input, 15728640
  %and13 = and i32 %vid_input, -16773121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %4 = add nsw i32 %and10, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %4)
  %5 = icmp ult i32 %4, -32768
  %6 = or i1 %tobool14.not, %5
  %7 = add nsw i32 %and11, -393217
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131073, i32 %7)
  %8 = icmp ult i32 %7, -131073
  %9 = or i1 %8, %6
  %10 = add nsw i32 %and12, -8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %10)
  %11 = icmp ult i32 %10, -1048577
  %12 = or i1 %11, %9
  br i1 %12, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %sub41 = add nuw nsw i32 %and10, 1044480
  %sub44 = add nuw nsw i32 %and11, 786432
  %13 = or i32 %sub41, %sub44
  %or = lshr exact i32 %13, 12
  %sub49 = add nuw nsw i32 %and12, 1048576
  %14 = lshr exact i32 %sub49, 14
  %or52 = or i32 %or, %14
  %conv53 = trunc i32 %or52 to i8
  br label %if.end117

cleanup:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %name37 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name37, i32 noundef %vid_input) #10
  br label %cleanup234

if.else57:                                        ; preds = %if.else
  %and59 = and i32 %vid_input, 240
  %and60 = and i32 %vid_input, 3840
  %and61 = and i32 %vid_input, -4081
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp ne i32 %and61, 0
  %15 = add nsw i32 %and59, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %15)
  %16 = icmp ult i32 %15, -128
  %17 = or i1 %tobool62.not, %16
  %18 = add nsw i32 %and60, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1025, i32 %18)
  %19 = icmp ult i32 %18, -1025
  %20 = or i1 %19, %17
  br i1 %20, label %cleanup112, label %if.end83

if.end83:                                         ; preds = %if.else57
  %sub84 = add nuw nsw i32 %and59, 4080
  %21 = lshr exact i32 %sub84, 4
  %22 = trunc i32 %21 to i8
  %conv87 = add nsw i8 %22, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1791, i32 %and60)
  %cmp89 = icmp ugt i32 %and60, 1791
  br i1 %cmp89, label %if.then91, label %if.else101

if.then91:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %23 = and i8 %conv87, 63
  %sub95 = add nuw nsw i32 %and60, 256
  %24 = lshr exact i32 %sub95, 2
  %25 = trunc i32 %24 to i8
  %conv99 = or i8 %23, %25
  br label %if.end117

if.else101:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %26 = and i8 %conv87, -49
  %sub105 = add nuw nsw i32 %and60, 3072
  %27 = lshr exact i32 %sub105, 4
  %28 = trunc i32 %27 to i8
  %conv109 = or i8 %26, %28
  br label %if.end117

cleanup112:                                       ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #9
  %name80 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name80, i32 noundef %vid_input) #10
  br label %cleanup234

if.end117:                                        ; preds = %if.else101, %if.then91, %cleanup.thread, %if.then6
  %ch.sroa.7.0 = phi i32 [ 0, %if.then6 ], [ 6, %cleanup.thread ], [ 0, %if.then91 ], [ 3, %if.else101 ]
  %ch.sroa.14.0 = phi i32 [ 0, %if.then6 ], [ 5, %cleanup.thread ], [ 3, %if.then91 ], [ 0, %if.else101 ]
  %input_mode.2 = phi i32 [ 0, %if.then6 ], [ 6, %cleanup.thread ], [ 2, %if.then91 ], [ 2, %if.else101 ]
  %afe_mux_cfg.3 = phi i8 [ %conv, %if.then6 ], [ %conv53, %cleanup.thread ], [ %conv99, %if.then91 ], [ %conv109, %if.else101 ]
  %29 = zext i32 %aud_input to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %aud_input, label %do.end148 [
    i32 0, label %if.end117.sw.epilog_crit_edge
    i32 1, label %if.end117.sw.epilog_crit_edge375
    i32 4, label %sw.bb118
    i32 5, label %sw.bb123
    i32 6, label %sw.bb129
    i32 7, label %sw.bb135
    i32 8, label %sw.bb140
  ]

if.end117.sw.epilog_crit_edge375:                 ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end117.sw.epilog_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %30 = and i8 %afe_mux_cfg.3, -49
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %31 = and i8 %afe_mux_cfg.3, -49
  %32 = or i8 %31, 16
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %33 = and i8 %afe_mux_cfg.3, -49
  %34 = or i8 %33, 32
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %35 = and i8 %afe_mux_cfg.3, 63
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %36 = and i8 %afe_mux_cfg.3, 63
  %37 = or i8 %36, 64
  br label %sw.epilog

do.end148:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %name150 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %name150, i32 noundef %aud_input) #10
  br label %cleanup234

sw.epilog:                                        ; preds = %sw.bb140, %sw.bb135, %sw.bb129, %sw.bb123, %sw.bb118, %if.end117.sw.epilog_crit_edge, %if.end117.sw.epilog_crit_edge375
  %ch.sroa.7.1 = phi i32 [ %ch.sroa.7.0, %sw.bb140 ], [ %ch.sroa.7.0, %sw.bb135 ], [ 4, %sw.bb129 ], [ 4, %sw.bb123 ], [ 4, %sw.bb118 ], [ %ch.sroa.7.0, %if.end117.sw.epilog_crit_edge ], [ %ch.sroa.7.0, %if.end117.sw.epilog_crit_edge375 ]
  %ch.sroa.14.1 = phi i32 [ 4, %sw.bb140 ], [ 4, %sw.bb135 ], [ %ch.sroa.14.0, %sw.bb129 ], [ %ch.sroa.14.0, %sw.bb123 ], [ %ch.sroa.14.0, %sw.bb118 ], [ %ch.sroa.14.0, %if.end117.sw.epilog_crit_edge ], [ %ch.sroa.14.0, %if.end117.sw.epilog_crit_edge375 ]
  %afe_mux_cfg.4 = phi i8 [ %37, %sw.bb140 ], [ %35, %sw.bb135 ], [ %34, %sw.bb129 ], [ %32, %sw.bb123 ], [ %30, %sw.bb118 ], [ %afe_mux_cfg.3, %if.end117.sw.epilog_crit_edge ], [ %afe_mux_cfg.3, %if.end117.sw.epilog_crit_edge375 ]
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %38 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 12845312
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %41 = and i32 %40, -256
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %conv4.i = zext i8 %afe_mux_cfg.4 to i32
  %shl5.i = shl nuw i32 %conv4.i, 24
  %or.i = or i32 %42, %shl5.i
  %43 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %44, i32 12845312
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %sw.epilog
  %i.02.i.i.i = phi i32 [ 0, %sw.epilog ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %45) #7, !srcloc !331
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #7, !srcloc !328
  %47 = shl i32 %46, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp1.i.i.i = icmp ne i32 %46, -1
  %48 = xor i32 %47, %shl5.i
  %49 = and i32 %48, -150994944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp4.i.i.i = icmp eq i32 %49, 0
  %or.cond1.i.i.i = and i1 %cmp1.i.i.i, %cmp4.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 10
  %or.cond3.i.i.i = select i1 %or.cond1.i.i.i, i1 true, i1 %exitcond.not.i.i.i
  br i1 %or.cond3.i.i.i, label %cx18_av_write_expect.exit, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

cx18_av_write_expect.exit:                        ; preds = %for.body.i.i.i
  %50 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 12846080
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !328
  %53 = lshr i32 %52, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %54 = and i32 %53, 249
  %conv2.i = or i32 %54, %input_mode.2
  %55 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i12.i = getelementptr i8, ptr %56, i32 12846080
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %58 = and i32 %57, -16711681
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %shl5.i.i = shl nuw nsw i32 %conv2.i, 8
  %or.i.i = or i32 %59, %shl5.i.i
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or.i.i, i32 noundef 12846080) #7
  %60 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i335 = getelementptr i8, ptr %61, i32 12845312
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i335) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %63 = lshr i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch.sroa.14.1)
  %cmp157 = icmp eq i32 %ch.sroa.14.1, 0
  %64 = and i32 %63, 249
  %masksel = select i1 %cmp157, i32 0, i32 2
  %adc2_cfg.0 = or i32 %masksel, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch.sroa.7.1)
  %cmp169.not = icmp eq i32 %ch.sroa.7.1, 0
  %brmerge = or i1 %cmp169.not, %cmp157
  %masksel363 = select i1 %brmerge, i32 0, i32 4
  %adc2_cfg.1 = or i32 %adc2_cfg.0, %masksel363
  %65 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i338 = getelementptr i8, ptr %66, i32 12845312
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i338) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %68 = and i32 %67, -65281
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %shl5.i341 = shl nuw nsw i32 %adc2_cfg.1, 16
  %or.i342 = or i32 %shl5.i341, %69
  %70 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i18.i345 = getelementptr i8, ptr %71, i32 12845312
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i342) #7
  br label %for.body.i.i.i353

for.body.i.i.i353:                                ; preds = %for.body.i.i.i353.for.body.i.i.i353_crit_edge, %cx18_av_write_expect.exit
  %i.02.i.i.i346 = phi i32 [ 0, %cx18_av_write_expect.exit ], [ %inc.i.i.i350, %for.body.i.i.i353.for.body.i.i.i353_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !330
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i345, i32 %72) #7, !srcloc !331
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i345) #7, !srcloc !328
  %74 = shl i32 %73, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp1.i.i.i347 = icmp ne i32 %73, -1
  %75 = xor i32 %74, %shl5.i341
  %76 = and i32 %75, 1507328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp4.i.i.i348 = icmp eq i32 %76, 0
  %or.cond1.i.i.i349 = and i1 %cmp1.i.i.i347, %cmp4.i.i.i348
  %inc.i.i.i350 = add nuw nsw i32 %i.02.i.i.i346, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i.i.i350)
  %exitcond.not.i.i.i351 = icmp eq i32 %inc.i.i.i350, 10
  %or.cond3.i.i.i352 = select i1 %or.cond1.i.i.i349, i1 true, i1 %exitcond.not.i.i.i351
  br i1 %or.cond3.i.i.i352, label %cx18_av_write_expect.exit354, label %for.body.i.i.i353.for.body.i.i.i353_crit_edge

for.body.i.i.i353.for.body.i.i.i353_crit_edge:    ; preds = %for.body.i.i.i353
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i353

cx18_av_write_expect.exit354:                     ; preds = %for.body.i.i.i353
  %77 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i356 = getelementptr i8, ptr %78, i32 12845316
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i356) #7, !srcloc !328
  %80 = shl i32 %79, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %afe_cfg.0.v = select i1 %brmerge, i32 20480, i32 20528
  %afe_cfg.0 = or i32 %80, %afe_cfg.0.v
  %switch.tableidx = add i32 %ch.sroa.7.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %81 = icmp ult i32 %switch.tableidx, 4
  br i1 %81, label %switch.lookup, label %cx18_av_write_expect.exit354.for.inc.1_crit_edge

cx18_av_write_expect.exit354.for.inc.1_crit_edge: ; preds = %cx18_av_write_expect.exit354
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

switch.lookup:                                    ; preds = %cx18_av_write_expect.exit354
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.set_input, i32 0, i32 %switch.tableidx
  %82 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %82)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %switch.lookup, %cx18_av_write_expect.exit354.for.inc.1_crit_edge
  %.sink = phi i32 [ 1024, %cx18_av_write_expect.exit354.for.inc.1_crit_edge ], [ %switch.load, %switch.lookup ]
  %or212.1 = or i32 %afe_cfg.0, %.sink
  %switch.tableidx372 = add i32 %ch.sroa.14.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx372)
  %83 = icmp ult i32 %switch.tableidx372, 4
  br i1 %83, label %switch.lookup371, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

switch.lookup371:                                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep373 = getelementptr inbounds [4 x i32], ptr @switch.table.set_input.180, i32 0, i32 %switch.tableidx372
  %84 = ptrtoint ptr %switch.gep373 to i32
  call void @__asan_load4_noabort(i32 %84)
  %switch.load374 = load i32, ptr %switch.gep373, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %switch.lookup371, %for.inc.1.for.inc.2_crit_edge
  %.sink370 = phi i32 [ 2048, %for.inc.1.for.inc.2_crit_edge ], [ %switch.load374, %switch.lookup371 ]
  %or212.2 = or i32 %or212.1, %.sink370
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %or212.2, i32 noundef 12845316) #7
  %vid_input232 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 5
  %85 = ptrtoint ptr %vid_input232 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %vid_input, ptr %vid_input232, align 8
  %aud_input233 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 6
  %86 = ptrtoint ptr %aud_input233 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %aud_input, ptr %aud_input233, align 4
  tail call void @cx18_av_audio_set_path(ptr noundef %cx) #7
  tail call fastcc void @input_change(ptr noundef %cx)
  br label %cleanup234

cleanup234:                                       ; preds = %for.inc.2, %do.end148, %cleanup112, %cleanup
  %retval.2 = phi i32 [ -22, %do.end148 ], [ 0, %for.inc.2 ], [ -22, %cleanup ], [ -22, %cleanup112 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_av_audio_set_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_video_routing(ptr nocapture noundef readonly %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %aud_input = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 6
  %2 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aud_input, align 4
  %call2 = tail call fastcc i32 @set_input(ptr noundef %1, i32 noundef %input, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_std(ptr noundef %sd, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %radio = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %std = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 4
  %4 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %norm)
  %cmp2 = icmp eq i64 %5, %norm
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %radio, align 8
  %std4 = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 4
  %7 = ptrtoint ptr %std4 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %norm, ptr %std4, align 8
  call void @__sanitizer_cov_trace_switch(i64 %norm, ptr @__sancov_gen_cov_switch_values.187)
  switch i64 %norm, label %if.else27 [
    i64 8192, label %if.end.do.body_crit_edge
    i64 16384, label %if.then10
    i64 256, label %if.then14
    i64 512, label %if.then18
    i64 1024, label %if.then22
    i64 2048, label %if.then26
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else27:                                        ; preds = %if.end
  %and = and i64 %norm, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else30, label %if.else27.do.body_crit_edge

if.else27.do.body_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else30:                                        ; preds = %if.else27
  %and32 = and i64 %norm, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.else35, label %if.else30.do.body_crit_edge

if.else30.do.body_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else35:                                        ; preds = %if.else30
  %and37 = and i64 %norm, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37)
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.else35.do.body_crit_edge, label %if.then39

if.else35.do.body_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.then39, %if.else35.do.body_crit_edge, %if.else30.do.body_crit_edge, %if.else27.do.body_crit_edge, %if.then26, %if.then22, %if.then18, %if.then14, %if.then10, %if.end.do.body_crit_edge
  %cmp58 = phi i1 [ false, %if.then14 ], [ false, %if.then22 ], [ true, %if.else35.do.body_crit_edge ], [ false, %if.then39 ], [ false, %if.then26 ], [ false, %if.then18 ], [ true, %if.then10 ], [ true, %if.end.do.body_crit_edge ], [ true, %if.else27.do.body_crit_edge ], [ false, %if.else30.do.body_crit_edge ]
  %cmp62 = phi i1 [ false, %if.then14 ], [ false, %if.then22 ], [ false, %if.else35.do.body_crit_edge ], [ true, %if.then39 ], [ true, %if.then26 ], [ false, %if.then18 ], [ false, %if.then10 ], [ false, %if.end.do.body_crit_edge ], [ false, %if.else27.do.body_crit_edge ], [ false, %if.else30.do.body_crit_edge ]
  %fmt.0 = phi i32 [ 5, %if.then14 ], [ 7, %if.then22 ], [ 0, %if.else35.do.body_crit_edge ], [ 12, %if.then39 ], [ 8, %if.then26 ], [ 6, %if.then18 ], [ 3, %if.then10 ], [ 2, %if.end.do.body_crit_edge ], [ 1, %if.else27.do.body_crit_edge ], [ 4, %if.else30.do.body_crit_edge ]
  %pal_m.0 = phi i32 [ 1, %if.then14 ], [ 0, %if.then22 ], [ 0, %if.else35.do.body_crit_edge ], [ 0, %if.then39 ], [ 0, %if.then26 ], [ 0, %if.then18 ], [ 0, %if.then10 ], [ 0, %if.end.do.body_crit_edge ], [ 0, %if.else27.do.body_crit_edge ], [ 0, %if.else30.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %8 = load i32, ptr @cx18_debug, align 4
  %and49 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body.do.end56_crit_edge, label %do.end

do.body.do.end56_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %name, i32 noundef %fmt.0) #10
  br label %do.end56

do.end56:                                         ; preds = %do.end, %do.body.do.end56_crit_edge
  %brmerge = or i1 %cmp58, %cmp62
  br i1 %brmerge, label %do.end56.if.end67_crit_edge, label %if.then64

do.end56.if.end67_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then64:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %reg_mem.i.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %9 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 12846080
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %12 = lshr i32 %11, 24
  %13 = and i32 %12, 240
  %14 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i12.i = getelementptr i8, ptr %15, i32 12846080
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %17 = and i32 %16, 16777215
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %conv2.i = or i32 %13, %18
  %or.i.i = or i32 %conv2.i, 1
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 12846080) #7
  %19 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i.i99 = getelementptr i8, ptr %20, i32 12846200
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i99) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %22 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i12.i100 = getelementptr i8, ptr %23, i32 12846200
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i100) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %25 = and i32 %24, -256
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = shl i32 %21, 24
  %shl5.i.i = and i32 %27, -117440512
  %or.i.i103 = or i32 %26, %shl5.i.i
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i.i103, i32 noundef 12846200) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %do.end56.if.end67_crit_edge
  %reg_mem.i.i.i104 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %28 = ptrtoint ptr %reg_mem.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_mem.i.i.i104, align 8
  %add.ptr.i.i.i105 = getelementptr i8, ptr %29, i32 12846080
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i105) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %31 = lshr i32 %30, 24
  %32 = and i32 %31, 208
  %conv69 = or i32 %fmt.0, %32
  %33 = ptrtoint ptr %reg_mem.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_mem.i.i.i104, align 8
  %add.ptr.i.i12.i107 = getelementptr i8, ptr %34, i32 12846080
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i107) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %36 = and i32 %35, 16777215
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %conv2.i106 = or i32 %conv69, %37
  %or.i.i110 = or i32 %conv2.i106, 32
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i.i110, i32 noundef 12846080) #7
  %38 = ptrtoint ptr %reg_mem.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i.i.i104, align 8
  %add.ptr.i.i.i112 = getelementptr i8, ptr %39, i32 12846080
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i112) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %41 = and i32 %40, 252
  %conv2.i114 = or i32 %41, %pal_m.0
  %42 = ptrtoint ptr %reg_mem.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_mem.i.i.i104, align 8
  %add.ptr.i.i12.i115 = getelementptr i8, ptr %43, i32 12846080
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i115) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %45 = and i32 %44, -256
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %shl5.i.i118 = shl nuw i32 %conv2.i114, 24
  %or.i.i119 = or i32 %46, %shl5.i.i118
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i.i119, i32 noundef 12846080) #7
  tail call void @cx18_av_std_setup(ptr noundef %1)
  tail call fastcc void @input_change(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %2 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool2.not, ptr @.str.170, ptr @.str.169
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %name, ptr noundef nonnull %cond) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool6.not = icmp eq i32 %enable, 0
  %reg_mem.i.i22 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %3 = ptrtoint ptr %reg_mem.i.i22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_mem.i.i22, align 8
  %add.ptr.i.i23 = getelementptr i8, ptr %4, i32 12845332
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %6 = and i32 %5, -16711681
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i32 %6, 9175040
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %8, i32 noundef 12845332) #7
  %9 = ptrtoint ptr %reg_mem.i.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_mem.i.i22, align 8
  %add.ptr.i.i19 = getelementptr i8, ptr %10, i32 12845332
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %12 = and i32 %11, -65281
  %13 = or i32 %12, 1792
  br label %if.end12

if.else:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %14, i32 noundef 12845332) #7
  %15 = ptrtoint ptr %reg_mem.i.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_mem.i.i22, align 8
  %add.ptr.i.i26 = getelementptr i8, ptr %16, i32 12845332
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %18 = and i32 %17, -65281
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %.sink28 = phi i32 [ %18, %if.else ], [ %13, %if.then7 ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %.sink28)
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %19, i32 noundef 12845332) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_decode_vbi_line(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_s_raw_fmt(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_g_sliced_fmt(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_s_sliced_fmt(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_set_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %std = getelementptr inbounds %struct.cx18_av_state, ptr %sd, i32 0, i32 4
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %colorspace, align 4
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 12846196
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %13 = lshr i32 %12, 4
  %shl = and i32 %13, 1008
  %14 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i153 = getelementptr i8, ptr %15, i32 12846196
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i153) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %sum.shift = lshr i32 %16, 20
  %17 = and i32 %sum.shift, 15
  %or = or i32 %17, %shl
  %18 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i157 = getelementptr i8, ptr %19, i32 12846192
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i157) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %21 = lshr i32 %20, 4
  %shl12 = and i32 %21, 1008
  %22 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i161 = getelementptr i8, ptr %23, i32 12846192
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i161) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %sum.shift195 = lshr i32 %24, 20
  %25 = and i32 %sum.shift195, 15
  %or17 = or i32 %25, %shl12
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %cond = select i1 %tobool.not, i32 3, i32 1
  %add = add i32 %27, %cond
  %28 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format1, align 4
  %mul = shl i32 %29, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %or17)
  %cmp19 = icmp ult i32 %mul, %or17
  call void @__sanitizer_cov_trace_cmp4(i32 %or17, i32 %29)
  %cmp23 = icmp ult i32 %or17, %29
  %or.cond = or i1 %cmp23, %cmp19
  %mul26 = shl i32 %add, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26, i32 %or)
  %cmp27 = icmp slt i32 %mul26, %or
  %or.cond150 = select i1 %or.cond, i1 true, i1 %cmp27
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %add)
  %cmp30 = icmp slt i32 %or, %add
  %or.cond151 = select i1 %or.cond150, i1 true, i1 %cmp30
  br i1 %or.cond151, label %do.end, label %if.end36

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %name, i32 noundef %29, i32 noundef %27) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %30 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp37 = icmp eq i32 %31, 0
  br i1 %cmp37, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %mul41 = shl nuw nsw i32 %or17, 20
  %div = udiv i32 %mul41, %29
  %sub = add nsw i32 %div, -1048576
  %mul43 = shl nuw nsw i32 %or, 9
  %div44 = sdiv i32 %mul43, %add
  %sub46 = sub i32 512, %div44
  %and47 = and i32 %sub46, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %29)
  %cmp49 = icmp ugt i32 %29, 384
  br i1 %cmp49, label %if.end40.do.body65_crit_edge, label %if.else

if.end40.do.body65_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %29)
  %cmp53 = icmp ugt i32 %29, 192
  br i1 %cmp53, label %if.else.do.body65_crit_edge, label %if.else56

if.else.do.body65_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

if.else56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %29)
  %cmp58 = icmp ugt i32 %29, 96
  %phi.cast = select i1 %cmp58, i32 655360, i32 720896
  br label %do.body65

do.body65:                                        ; preds = %if.else56, %if.else.do.body65_crit_edge, %if.end40.do.body65_crit_edge
  %filter.0 = phi i32 [ 524288, %if.end40.do.body65_crit_edge ], [ 589824, %if.else.do.body65_crit_edge ], [ %phi.cast, %if.else56 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %32 = load i32, ptr @cx18_debug, align 4
  %and66 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.do.end80_crit_edge, label %do.end71

do.body65.do.end80_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %name73 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef %name73, i32 noundef %29, i32 noundef %27, i32 noundef %sub, i32 noundef %and47) #10
  br label %do.end80

do.end80:                                         ; preds = %do.end71, %do.body65.do.end80_crit_edge
  %33 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i165 = getelementptr i8, ptr %34, i32 12846104
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i165) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %36 = and i32 %35, 16777215
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %conv4.i166 = and i32 %div, 255
  %or.i = or i32 %37, %conv4.i166
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i, i32 noundef 12846104) #7
  %38 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i168 = getelementptr i8, ptr %39, i32 12846104
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i168) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %41 = and i32 %40, -16711681
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %conv4.i170 = and i32 %div, 65280
  %or.i171 = or i32 %42, %conv4.i170
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i171, i32 noundef 12846104) #7
  %43 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i173 = getelementptr i8, ptr %44, i32 12846104
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i173) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %46 = and i32 %45, -65281
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %conv4.i175 = and i32 %sub, 16711680
  %or.i177 = or i32 %47, %conv4.i175
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i177, i32 noundef 12846104) #7
  %48 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i179 = getelementptr i8, ptr %49, i32 12846108
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i179) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %51 = and i32 %50, 16777215
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %conv4.i181 = and i32 %sub46, 255
  %or.i182 = or i32 %52, %conv4.i181
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i182, i32 noundef 12846108) #7
  %53 = and i32 %sub46, 7936
  %54 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i184 = getelementptr i8, ptr %55, i32 12846108
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i184) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %57 = and i32 %56, -16711681
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %or.i188 = or i32 %58, %53
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i188, i32 noundef 12846108) #7
  %59 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i190 = getelementptr i8, ptr %60, i32 12846108
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i190) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %62 = and i32 %61, -65281
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %or.i194 = or i32 %63, %filter.0
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %or.i194, i32 noundef 12846108) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end36.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %do.end ], [ 0, %do.end80 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_av_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963778, label %sw.bb7
    i32 9963779, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 40
  %9 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12846100
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %12 = and i32 %11, 16777215
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %conv = and i32 %8, 255
  %14 = or i32 %13, %conv
  %or.i = xor i32 %14, 128
  tail call fastcc void @cx18_write_reg(ptr noundef %3, i32 noundef %or.i, i32 noundef 12846100) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val4, align 4
  %conv5 = shl i32 %16, 9
  %reg_mem.i.i33 = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 40
  %17 = ptrtoint ptr %reg_mem.i.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem.i.i33, align 8
  %add.ptr.i.i34 = getelementptr i8, ptr %18, i32 12846100
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %20 = and i32 %19, -16711681
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %conv4.i36 = and i32 %conv5, 65024
  %or.i37 = or i32 %21, %conv4.i36
  tail call fastcc void @cx18_write_reg(ptr noundef %3, i32 noundef %or.i37, i32 noundef 12846100) #7
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val8, align 4
  %conv10 = shl i32 %23, 1
  %reg_mem.i.i38 = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 40
  %24 = ptrtoint ptr %reg_mem.i.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_mem.i.i38, align 8
  %add.ptr.i.i39 = getelementptr i8, ptr %25, i32 12846112
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %27 = and i32 %26, 16777215
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %conv4.i41 = and i32 %conv10, 254
  %or.i42 = or i32 %28, %conv4.i41
  tail call fastcc void @cx18_write_reg(ptr noundef %3, i32 noundef %or.i42, i32 noundef 12846112) #7
  %29 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val8, align 4
  %conv14 = shl i32 %30, 9
  %31 = ptrtoint ptr %reg_mem.i.i38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_mem.i.i38, align 8
  %add.ptr.i.i44 = getelementptr i8, ptr %32, i32 12846112
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %34 = and i32 %33, -16711681
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %conv4.i46 = and i32 %conv14, 65024
  %or.i48 = or i32 %35, %conv4.i46
  tail call fastcc void @cx18_write_reg(ptr noundef %3, i32 noundef %or.i48, i32 noundef 12846112) #7
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val17, align 4
  %reg_mem.i.i49 = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 40
  %38 = ptrtoint ptr %reg_mem.i.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i.i49, align 8
  %add.ptr.i.i50 = getelementptr i8, ptr %39, i32 12846112
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #7, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !329
  %41 = and i32 %40, -65281
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %conv4.i52 = shl i32 %37, 16
  %shl5.i53 = and i32 %conv4.i52, 16711680
  %or.i54 = or i32 %42, %shl5.i53
  tail call fastcc void @cx18_write_reg(ptr noundef %3, i32 noundef %or.i54, i32 noundef 12846112) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb7, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb16 ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !166, !167, !168, !169, !170, !172, !173, !174, !175, !176, !178, !180, !182, !183, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !240, !242, !244, !246, !248, !250, !252, !253, !254, !256, !258, !260, !261, !262, !264, !266, !268, !269, !270, !272, !274, !276, !277, !278, !279, !281, !282, !283, !285, !286, !288, !289, !290, !292, !294, !295, !296, !297, !299, !300, !301, !302, !303, !304, !306, !308, !310, !311, !312, !313, !315, !316, !317}
!llvm.module.flags = !{!319, !320, !321, !322, !323, !324, !325, !326}
!llvm.ident = !{!327}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 443, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_av_std_setup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_av_std_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 452, i32 3}
!8 = !{ptr @cx18_av_std_setup._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cx18_av_std_setup._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 454, i32 3}
!12 = !{ptr @cx18_av_std_setup._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cx18_av_std_setup._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 457, i32 3}
!16 = !{ptr @cx18_av_std_setup._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cx18_av_std_setup._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 464, i32 3}
!20 = !{ptr @cx18_av_std_setup._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cx18_av_std_setup._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 468, i32 3}
!24 = !{ptr @cx18_av_std_setup._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cx18_av_std_setup._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1318, i32 4}
!28 = !{ptr @cx18_av_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1320, i32 2}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cx18_av_ops, !32, !"cx18_av_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1290, i32 37}
!33 = !{ptr @cx18_av_general_ops, !34, !"cx18_av_general_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1251, i32 42}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1027, i32 3}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1028, i32 3}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1028, i32 13}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1028, i32 23}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1029, i32 3}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1029, i32 16}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1029, i32 25}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1029, i32 34}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1029, i32 44}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1030, i32 3}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1030, i32 10}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1030, i32 17}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1031, i32 3}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1032, i32 3}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1032, i32 10}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1032, i32 17}
!67 = !{ptr @log_video_status.fmt_strs, !68, !"fmt_strs", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1026, i32 27}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1042, i32 2}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @log_video_status._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @log_video_status._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1044, i32 2}
!78 = !{ptr @log_video_status._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @log_video_status._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1047, i32 2}
!82 = !{ptr @log_video_status._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @log_video_status._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1053, i32 3}
!87 = !{ptr @log_video_status._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @log_video_status._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1056, i32 3}
!91 = !{ptr @log_video_status._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @log_video_status._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1061, i32 2}
!95 = !{ptr @log_video_status._entry.53, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @log_video_status._entry_ptr.55, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1080, i32 17}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1081, i32 17}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1082, i32 17}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1083, i32 17}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1084, i32 17}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1085, i32 17}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1086, i32 17}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1087, i32 17}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1088, i32 17}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1089, i32 15}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1091, i32 2}
!119 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @log_audio_status._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @log_audio_status._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1095, i32 17}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1096, i32 17}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1097, i32 17}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1098, i32 17}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1099, i32 17}
!132 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1100, i32 17}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1101, i32 17}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1102, i32 17}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1103, i32 17}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1104, i32 17}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1105, i32 17}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1106, i32 17}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1107, i32 17}
!148 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1108, i32 17}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1109, i32 17}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1110, i32 17}
!154 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1111, i32 17}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1112, i32 17}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1113, i32 17}
!160 = !{ptr @.str.88, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1116, i32 2}
!162 = !{ptr @log_audio_status._entry.87, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @log_audio_status._entry_ptr.89, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1117, i32 2}
!166 = !{ptr @log_audio_status._entry.90, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @log_audio_status._entry_ptr.92, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.94, !165, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.96, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1119, i32 2}
!172 = !{ptr @log_audio_status._entry.95, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @log_audio_status._entry_ptr.97, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.98, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.99, !171, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.100, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1123, i32 17}
!178 = !{ptr @.str.101, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1137, i32 17}
!180 = !{ptr @.str.103, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1141, i32 2}
!182 = !{ptr @log_audio_status._entry.102, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @log_audio_status._entry_ptr.104, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.105, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1145, i32 18}
!186 = !{ptr @.str.106, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1146, i32 18}
!188 = !{ptr @.str.107, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1147, i32 18}
!190 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1148, i32 18}
!192 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1149, i32 18}
!194 = !{ptr @.str.110, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1150, i32 18}
!196 = !{ptr @.str.111, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1151, i32 18}
!198 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1152, i32 18}
!200 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1155, i32 3}
!202 = !{ptr @log_audio_status._entry.113, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @log_audio_status._entry_ptr.115, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.116, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1158, i32 18}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1159, i32 18}
!208 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1160, i32 18}
!210 = !{ptr @.str.119, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1161, i32 18}
!212 = !{ptr @.str.120, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1162, i32 18}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1163, i32 18}
!216 = !{ptr @.str.122, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1167, i32 18}
!218 = !{ptr @.str.123, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1168, i32 18}
!220 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1169, i32 18}
!222 = !{ptr @.str.125, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1170, i32 18}
!224 = !{ptr @.str.127, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1173, i32 3}
!226 = !{ptr @log_audio_status._entry.126, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @log_audio_status._entry_ptr.128, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.130, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1177, i32 3}
!230 = !{ptr @log_audio_status._entry.129, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @log_audio_status._entry_ptr.131, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.133, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1180, i32 3}
!234 = !{ptr @log_audio_status._entry.132, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @log_audio_status._entry_ptr.134, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.135, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1183, i32 14}
!238 = !{ptr @.str.136, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1184, i32 14}
!240 = !{ptr @.str.137, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1185, i32 14}
!242 = !{ptr @.str.138, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1186, i32 14}
!244 = !{ptr @.str.139, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1188, i32 14}
!246 = !{ptr @.str.140, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1189, i32 14}
!248 = !{ptr @.str.141, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1190, i32 14}
!250 = !{ptr @.str.143, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1193, i32 2}
!252 = !{ptr @log_audio_status._entry.142, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @log_audio_status._entry_ptr.144, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.145, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1197, i32 15}
!256 = !{ptr @.str.146, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1198, i32 15}
!258 = !{ptr @.str.148, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1200, i32 3}
!260 = !{ptr @log_audio_status._entry.147, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @log_audio_status._entry_ptr.149, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.150, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1203, i32 15}
!264 = !{ptr @.str.151, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1207, i32 15}
!266 = !{ptr @.str.153, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1210, i32 3}
!268 = !{ptr @log_audio_status._entry.152, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @log_audio_status._entry_ptr.154, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @cx18_av_tuner_ops, !271, !"cx18_av_tuner_ops", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1261, i32 43}
!272 = !{ptr @cx18_av_audio_ops, !273, !"cx18_av_audio_ops", i1 false, i1 false}
!273 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1268, i32 43}
!274 = !{ptr @.str.155, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 585, i32 2}
!276 = !{ptr @.str.156, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @set_input._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @set_input._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.158, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 605, i32 4}
!281 = !{ptr @set_input._entry.157, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @set_input._entry_ptr.159, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @set_input._entry.160, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 625, i32 4}
!285 = !{ptr @set_input._entry_ptr.161, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.163, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 670, i32 3}
!288 = !{ptr @set_input._entry.162, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @set_input._entry_ptr.164, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @cx18_av_video_ops, !291, !"cx18_av_video_ops", i1 false, i1 false}
!291 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1273, i32 43}
!292 = !{ptr @.str.165, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 878, i32 2}
!294 = !{ptr @.str.166, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @cx18_av_s_std._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @cx18_av_s_std._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.167, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1013, i32 2}
!299 = !{ptr @.str.168, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @cx18_av_s_stream._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @cx18_av_s_stream._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.169, !298, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.170, !298, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @cx18_av_vbi_ops, !305, !"cx18_av_vbi_ops", i1 false, i1 false}
!305 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1279, i32 41}
!306 = !{ptr @cx18_av_pad_ops, !307, !"cx18_av_pad_ops", i1 false, i1 false}
!307 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1286, i32 41}
!308 = !{ptr @.str.171, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 972, i32 3}
!310 = !{ptr @.str.172, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @cx18_av_set_fmt._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @cx18_av_set_fmt._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.174, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 993, i32 2}
!315 = !{ptr @cx18_av_set_fmt._entry.173, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @cx18_av_set_fmt._entry_ptr.175, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @cx18_av_ctrl_ops, !318, !"cx18_av_ctrl_ops", i1 false, i1 false}
!318 = !{!"../drivers/media/pci/cx18/cx18-av-core.c", i32 1247, i32 35}
!319 = !{i32 1, !"wchar_size", i32 2}
!320 = !{i32 1, !"min_enum_size", i32 4}
!321 = !{i32 8, !"branch-target-enforcement", i32 0}
!322 = !{i32 8, !"sign-return-address", i32 0}
!323 = !{i32 8, !"sign-return-address-all", i32 0}
!324 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!325 = !{i32 7, !"uwtable", i32 1}
!326 = !{i32 7, !"frame-pointer", i32 2}
!327 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!328 = !{i64 5780415}
!329 = !{i64 2158680008}
!330 = !{i64 2158680378}
!331 = !{i64 5779997}
!332 = !{i64 763669, i64 763696}
!333 = !{i64 764364, i64 764391, i64 764424, i64 764445, i64 764472, i64 764498}
