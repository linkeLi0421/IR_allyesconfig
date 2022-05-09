; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-gpio.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-gpio.c"
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
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119 }
%struct.anon.112 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, ptr }
%struct.anon.114 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.90, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.90 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ivtv_card = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x %struct.ivtv_card_video_input], [3 x %struct.ivtv_card_audio_input], %struct.ivtv_card_audio_input, i32, ptr, i8, i8, %struct.ivtv_gpio_init, %struct.ivtv_gpio_video_input, %struct.ivtv_gpio_audio_input, %struct.ivtv_gpio_audio_mute, %struct.ivtv_gpio_audio_mode, %struct.ivtv_gpio_audio_freq, %struct.ivtv_gpio_audio_detect, [3 x %struct.ivtv_card_tuner], ptr, ptr }
%struct.ivtv_card_video_input = type { i8, i8, i16 }
%struct.ivtv_card_audio_input = type { i8, i32, i16 }
%struct.ivtv_gpio_init = type { i16, i16 }
%struct.ivtv_gpio_video_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_mute = type { i16, i16 }
%struct.ivtv_gpio_audio_mode = type { i16, i16, i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_freq = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_detect = type { i16, i16 }
%struct.ivtv_card_tuner = type { i64, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_reset_ir_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: Resetting PVR150 IR\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_reset_ir_gpio\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/ivtv/ivtv-gpio.c\00", [61 x i8] zeroinitializer }, align 32
@ivtv_reset_ir_gpio._entry_ptr = internal global ptr @ivtv_reset_ir_gpio._entry, section ".printk_index", align 4
@ivtv_reset_tuner_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  info: Resetting tuner\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ivtv_reset_tuner_gpio\00", [42 x i8] zeroinitializer }, align 32
@ivtv_reset_tuner_gpio._entry_ptr = internal global ptr @ivtv_reset_tuner_gpio._entry, section ".printk_index", align 4
@ivtv_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:  info: GPIO initial dir: %08x out: %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_gpio_init\00", [17 x i8] zeroinitializer }, align 32
@ivtv_gpio_init._entry_ptr = internal global ptr @ivtv_gpio_init._entry, section ".printk_index", align 4
@subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @subdev_core_ops, ptr @subdev_tuner_ops, ptr @subdev_audio_ops, ptr @subdev_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-gpio\00", [24 x i8] zeroinitializer }, align 32
@ivtv_gpio_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ivtv_gpio:347:(&itv->hdl_gpio)->_lock\00", [58 x i8] zeroinitializer }, align 32
@gpio_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @subdev_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@subdev_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr @subdev_s_radio, ptr null, ptr null, ptr null, ptr @subdev_g_tuner, ptr @subdev_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@subdev_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr @subdev_s_clock_freq, ptr null, ptr @subdev_s_audio_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @subdev_s_video_routing, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@subdev_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: GPIO status: DIR=0x%04x OUT=0x%04x IN=0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"subdev_log_status\00", [46 x i8] zeroinitializer }, align 32
@subdev_log_status._entry_ptr = internal global ptr @subdev_log_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 32000, i64 44100]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 100, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 124, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 338, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"subdev_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 321, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 345, i32 57 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 347, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"gpio_ctrl_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 298, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"subdev_core_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 302, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"subdev_tuner_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 306, i32 43 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"subdev_audio_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 312, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"subdev_video_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 317, i32 43 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [38 x i8] c"../drivers/media/pci/ivtv/ivtv-gpio.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 271, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @ivtv_gpio_init._entry, ptr @ivtv_gpio_init._entry_ptr, ptr @ivtv_reset_ir_gpio._entry, ptr @ivtv_reset_ir_gpio._entry_ptr, ptr @ivtv_reset_tuner_gpio._entry, ptr @ivtv_reset_tuner_gpio._entry_ptr, ptr @subdev_log_status._entry, ptr @subdev_log_status._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @subdev_ops, ptr @.str.7, ptr @ivtv_gpio_init._key, ptr @.str.8, ptr @gpio_ctrl_ops, ptr @subdev_core_ops, ptr @subdev_tuner_ops, ptr @subdev_audio_ops, ptr @subdev_video_ops, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_reset_ir_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_reset_tuner_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_gpio_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subdev_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_reset_ir_gpio(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %5 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 36876
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %8 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 36896
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %11 = or i32 %10, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem, align 8
  %add.ptr20 = getelementptr i8, ptr %13, i32 36896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %11) #5, !srcloc !51
  %14 = and i32 %7, -251658241
  %15 = or i32 %14, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_mem, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %15) #5, !srcloc !51
  %call29 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #5
  %18 = or i32 %14, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem, align 8
  %add.ptr35 = getelementptr i8, ptr %20, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %18) #5, !srcloc !51
  %21 = and i32 %10, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem, align 8
  %add.ptr41 = getelementptr i8, ptr %23, i32 36896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %21) #5, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_reset_tuner_gpio(ptr nocapture noundef readonly %dev, i32 noundef %component, i32 noundef %cmd, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %2 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 36876
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %card = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %xceive_pin = getelementptr inbounds %struct.ivtv_card, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %xceive_pin to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %xceive_pin, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %and9 = and i32 %6, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %and9)
  %12 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem, align 8
  %add.ptr14 = getelementptr i8, ptr %13, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #5, !srcloc !51
  %call16 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #5
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %xceive_pin18 = getelementptr inbounds %struct.ivtv_card, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %xceive_pin18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %xceive_pin18, align 1
  %conv19 = zext i8 %17 to i32
  %shl20 = shl nuw i32 1, %conv19
  %or = or i32 %shl20, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem, align 8
  %add.ptr25 = getelementptr i8, ptr %20, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %18) #5, !srcloc !51
  %call27 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_gpio_init(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %xceive_pin = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %xceive_pin to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xceive_pin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %phi.cast = and i32 %shl, 65535
  %pin.0 = select i1 %tobool.not, i32 0, i32 %phi.cast
  %gpio_init = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %gpio_init to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gpio_init, align 2
  %conv5 = zext i16 %5 to i32
  %or = or i32 %pin.0, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.do.body26_crit_edge, label %do.end

do.body.do.body26_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %7 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 36896
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %11 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem, align 8
  %add.ptr18 = getelementptr i8, ptr %12, i32 36876
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !47
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %10, i32 noundef %14) #8
  br label %do.body26

do.body26:                                        ; preds = %do.end, %do.body.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %initial_value = getelementptr inbounds %struct.ivtv_card, ptr %16, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %initial_value to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %initial_value, align 2
  %conv31 = zext i16 %18 to i32
  %or33 = or i32 %pin.0, %conv31
  %19 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %reg_mem34 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %20 = ptrtoint ptr %reg_mem34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem34, align 8
  %add.ptr35 = getelementptr i8, ptr %21, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %19) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %gpio_init40 = getelementptr inbounds %struct.ivtv_card, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %gpio_init40 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gpio_init40, align 2
  %conv42 = zext i16 %25 to i32
  %or44 = or i32 %pin.0, %conv42
  %26 = tail call i32 @llvm.bswap.i32(i32 %or44)
  %27 = ptrtoint ptr %reg_mem34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_mem34, align 8
  %add.ptr46 = getelementptr i8, ptr %28, i32 36896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %26) #5, !srcloc !51
  %sd_gpio = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 24
  tail call void @v4l2_subdev_init(ptr noundef %sd_gpio, ptr noundef nonnull @subdev_ops) #5
  %name48 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 24, i32 9
  %name51 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call53 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name48, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %name51)
  %grp_id = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 24, i32 10
  %29 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32768, ptr %grp_id, align 4
  %hdl_gpio = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 23
  %call56 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl_gpio, i32 noundef 1, ptr noundef nonnull @ivtv_gpio_init._key, ptr noundef nonnull @.str.8) #5
  %call58 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl_gpio, ptr noundef nonnull @gpio_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %error = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 23, i32 9
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool60.not = icmp eq i32 %31, 0
  br i1 %tobool60.not, label %if.end64, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  %v4l2_dev50 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %ctrl_handler = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 24, i32 8
  %32 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hdl_gpio, ptr %ctrl_handler, align 8
  %call68 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl_gpio) #5
  %call71 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev50, ptr noundef %sd_gpio) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.body26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call71, %if.end64 ], [ 0, %entry.cleanup_crit_edge ], [ %31, %do.body26.cleanup_crit_edge ]
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
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_log_status(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %sd, i32 -600
  %reg_mem = getelementptr i8, ptr %sd, i32 -720
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36896
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %4 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 36876
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !47
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %8 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem, align 8
  %add.ptr14 = getelementptr i8, ptr %9, i32 36872
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !47
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %3, i32 noundef %7, i32 noundef %11) #8
  %hdl_gpio = getelementptr i8, ptr %sd, i32 -184
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl_gpio, ptr noundef %name19) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_s_radio(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr i8, ptr %sd, i32 -780
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %gpio_audio_input = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %gpio_audio_input to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_audio_input, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %radio = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 18, i32 3
  %4 = ptrtoint ptr %radio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %radio, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %reg_mem = getelementptr i8, ptr %sd, i32 -720
  %6 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 36876
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %conv = zext i16 %3 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %9, %neg
  %and816 = and i16 %5, %3
  %and8 = zext i16 %and816 to i32
  %or = or i32 %and, %and8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem, align 8
  %add.ptr10 = getelementptr i8, ptr %12, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %10) #5, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_g_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr i8, ptr %sd, i32 -780
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %gpio_audio_detect = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %gpio_audio_detect to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_audio_detect, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %3 to i32
  %reg_mem = getelementptr i8, ptr %sd, i32 -720
  %4 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 36872
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %and = and i32 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 14
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry.if.end_crit_edge
  %.sink = phi i32 [ 14, %entry.if.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %rxsubchans6 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %8 = ptrtoint ptr %rxsubchans6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %rxsubchans6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_s_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr i8, ptr %sd, i32 -780
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %gpio_audio_mode = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %gpio_audio_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_audio_mode, align 2
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb4
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lang1 = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 20, i32 3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lang2 = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 20, i32 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mono = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 20, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %stereo = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 20, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb4, %sw.bb
  %data.0.in = phi ptr [ %stereo, %sw.default ], [ %mono, %sw.bb7 ], [ %lang2, %sw.bb4 ], [ %lang1, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.body

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %data.0 = load i16, ptr %data.0.in, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %reg_mem = getelementptr i8, ptr %sd, i32 -720
  %8 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 36876
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %conv = zext i16 %3 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %11, %neg
  %and1728 = and i16 %data.0, %3
  %and17 = zext i16 %and1728 to i32
  %or = or i32 %and, %and17
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_mem, align 8
  %add.ptr19 = getelementptr i8, ptr %14, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %12) #5, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %do.body, %sw.epilog.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_s_clock_freq(ptr nocapture noundef readonly %sd, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr i8, ptr %sd, i32 -780
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %gpio_audio_freq = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %gpio_audio_freq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_audio_freq, align 2
  %4 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %freq, label %sw.default [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %f32000 = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 21, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %f44100 = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 21, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %f48000 = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 21, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %data.0.in = phi ptr [ %f48000, %sw.default ], [ %f44100, %sw.bb4 ], [ %f32000, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.body

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load2_noabort(i32 %5)
  %data.0 = load i16, ptr %data.0.in, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %reg_mem = getelementptr i8, ptr %sd, i32 -720
  %6 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 36876
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %conv = zext i16 %3 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %9, %neg
  %and1424 = and i16 %data.0, %3
  %and14 = zext i16 %and1424 to i32
  %or = or i32 %and, %and14
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem, align 8
  %add.ptr16 = getelementptr i8, ptr %12, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #5, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %do.body, %sw.epilog.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_s_audio_routing(ptr nocapture noundef readonly %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input)
  %cmp = icmp ugt i32 %input, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %card = getelementptr i8, ptr %sd, i32 -780
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %gpio_audio_input = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %gpio_audio_input to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_audio_input, align 2
  %4 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %input, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tuner = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 18, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %linein = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 18, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %radio = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 18, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %data.0.in = phi ptr [ %radio, %sw.default ], [ %linein, %sw.bb4 ], [ %tuner, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load2_noabort(i32 %5)
  %data.0 = load i16, ptr %data.0.in, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %reg_mem = getelementptr i8, ptr %sd, i32 -720
  %6 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 36876
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %conv = zext i16 %3 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %9, %neg
  %and1529 = and i16 %data.0, %3
  %and15 = zext i16 %and1529 to i32
  %or = or i32 %and, %and15
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem, align 8
  %add.ptr17 = getelementptr i8, ptr %12, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %10) #5, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_s_video_routing(ptr nocapture noundef readonly %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %input)
  %cmp = icmp ugt i32 %input, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %card = getelementptr i8, ptr %sd, i32 -780
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %gpio_video_input = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %gpio_video_input to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_video_input, align 2
  %4 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %input, label %if.else10 [
    i32 0, label %if.then3
    i32 1, label %if.then7
  ]

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tuner = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 17, i32 1
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %composite = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 17, i32 2
  br label %if.end14

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %svideo = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 17, i32 3
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.then7, %if.then3
  %data.0.in = phi ptr [ %tuner, %if.then3 ], [ %composite, %if.then7 ], [ %svideo, %if.else10 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %do.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load2_noabort(i32 %5)
  %data.0 = load i16, ptr %data.0.in, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %reg_mem = getelementptr i8, ptr %sd, i32 -720
  %6 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 36876
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  %conv = zext i16 %3 to i32
  %neg = xor i32 %conv, -1
  %and = and i32 %9, %neg
  %and2035 = and i16 %data.0, %3
  %and20 = zext i16 %and2035 to i32
  %or = or i32 %and, %and20
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem, align 8
  %add.ptr22 = getelementptr i8, ptr %12, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %10) #5, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subdev_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %3)
  %cond18 = icmp eq i32 %3, 9963785
  br i1 %cond18, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %card = getelementptr i8, ptr %1, i32 -596
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %gpio_audio_mute = getelementptr inbounds %struct.ivtv_card, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %gpio_audio_mute to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gpio_audio_mute, align 2
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %sw.bb.cond.end_crit_edge, label %cond.true

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %mute = getelementptr inbounds %struct.ivtv_card, ptr %5, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %mute to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mute, align 2
  %phi.cast = zext i16 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast, %cond.true ], [ 0, %sw.bb.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %cond.end.cleanup_crit_edge, label %do.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %reg_mem = getelementptr i8, ptr %1, i32 -536
  %12 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 36876
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !47
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %conv9 = zext i16 %7 to i32
  %neg = xor i32 %conv9, -1
  %and = and i32 %15, %neg
  %and12 = and i32 %cond, %conv9
  %or = or i32 %and, %and12
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem, align 8
  %add.ptr14 = getelementptr i8, ptr %18, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %16) #5, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 0, %cond.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 100, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_reset_ir_gpio._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_reset_ir_gpio._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 124, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ivtv_reset_tuner_gpio._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ivtv_reset_tuner_gpio._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 338, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ivtv_gpio_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @ivtv_gpio_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 345, i32 57}
!18 = !{ptr @ivtv_gpio_init._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 347, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @subdev_ops, !22, !"subdev_ops", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 321, i32 37}
!23 = !{ptr @subdev_core_ops, !24, !"subdev_core_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 302, i32 42}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 271, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @subdev_log_status._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @subdev_log_status._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @subdev_tuner_ops, !31, !"subdev_tuner_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 306, i32 43}
!32 = !{ptr @subdev_audio_ops, !33, !"subdev_audio_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 312, i32 43}
!34 = !{ptr @subdev_video_ops, !35, !"subdev_video_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 317, i32 43}
!36 = !{ptr @gpio_ctrl_ops, !37, !"gpio_ctrl_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/ivtv/ivtv-gpio.c", i32 298, i32 35}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 5755831}
!48 = !{i64 2156866314}
!49 = !{i64 2156866874}
!50 = !{i64 2156867154}
!51 = !{i64 5755413}
!52 = !{i64 2156867626}
!53 = !{i64 2156868098}
!54 = !{i64 2156868570}
!55 = !{i64 2156871316}
!56 = !{i64 2156871596}
!57 = !{i64 2156872068}
!58 = !{i64 2156897279}
!59 = !{i64 2156897839}
!60 = !{i64 2156898187}
!61 = !{i64 2156898821}
!62 = !{i64 2156890676}
!63 = !{i64 2156891236}
!64 = !{i64 2156891796}
!65 = !{i64 2156881776}
!66 = !{i64 2156882759}
!67 = !{i64 2156877909}
!68 = !{i64 2156879364}
!69 = !{i64 2156880347}
!70 = !{i64 2156876329}
!71 = !{i64 2156877312}
!72 = !{i64 2156884191}
!73 = !{i64 2156885174}
!74 = !{i64 2156893191}
!75 = !{i64 2156894174}
!76 = !{i64 2156886673}
!77 = !{i64 2156887666}
