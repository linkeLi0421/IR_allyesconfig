; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-cards.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ivtv_card_tuner_i2c = type { [2 x i16], [2 x i16], [4 x i16] }
%struct.ivtv_card_output = type { [32 x i8], i16 }
%struct.ivtv_card_pci_info = type { i16, i16, i16 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_audioout = type { i32, [32 x i8], i32, i32, [2 x i32] }

@ivtv_card_list = internal constant { [31 x ptr], [36 x i8] } { [31 x ptr] [ptr @ivtv_card_pvr250, ptr @ivtv_card_pvr350, ptr @ivtv_card_pvr150, ptr @ivtv_card_m179, ptr @ivtv_card_mpg600, ptr @ivtv_card_mpg160, ptr @ivtv_card_pg600, ptr @ivtv_card_avc2410, ptr @ivtv_card_avc2010, ptr @ivtv_card_tg5000tv, ptr @ivtv_card_va2000, ptr @ivtv_card_cx23416gyc, ptr @ivtv_card_gv_mvprx, ptr @ivtv_card_gv_mvprx2e, ptr @ivtv_card_gotview_pci_dvd, ptr @ivtv_card_gotview_pci_dvd2, ptr @ivtv_card_yuan_mpc622, ptr @ivtv_card_dctmvtvp1, ptr @ivtv_card_pg600v2, ptr @ivtv_card_club3d, ptr @ivtv_card_avertv_mce116, ptr @ivtv_card_asus_falcon2, ptr @ivtv_card_aver_pvr150, ptr @ivtv_card_aver_ezmaker, ptr @ivtv_card_aver_m104, ptr @ivtv_card_buffalo, ptr @ivtv_card_aver_ultra1500mce, ptr @ivtv_card_kikyou, ptr @ivtv_card_pvr350_v1, ptr @ivtv_card_cx23416gyc_nogr, ptr @ivtv_card_cx23416gyc_nogrycs], [36 x i8] zeroinitializer }, align 32
@ivtv_get_input.input_strs = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tuner 1\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S-Video 1\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S-Video 2\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite 1\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite 2\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite 3\00", [20 x i8] zeroinitializer }, align 32
@ivtv_get_audio_input.input_strs = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.6, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Line In 1\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Line In 2\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"A/V Audio Out\00", [18 x i8] zeroinitializer }, align 32
@ivtv_card_pvr250 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 0, ptr @.str.9, ptr null, i32 16973905, i32 2, i32 8, i32 8, i32 0, i32 154, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 0 }, %struct.ivtv_card_video_input { i8 3, i8 2, i16 7 }, %struct.ivtv_card_video_input { i8 5, i8 2, i16 1 }, %struct.ivtv_card_video_input { i8 6, i8 1, i16 5 }], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 2236960, i16 0 }, %struct.ivtv_card_audio_input { i8 3, i32 2236962, i16 0 }], %struct.ivtv_card_audio_input { i8 1, i32 2236961, i16 0 }, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] zeroinitializer, ptr @ivtv_i2c_std, ptr null }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_pvr350 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 1, ptr @.str.10, ptr null, i32 16974035, i32 2, i32 8, i32 8, i32 0, i32 393374, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 0 }, %struct.ivtv_card_video_input { i8 3, i8 2, i16 7 }, %struct.ivtv_card_video_input { i8 5, i8 2, i16 1 }, %struct.ivtv_card_video_input { i8 6, i8 1, i16 5 }], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 2236960, i16 0 }, %struct.ivtv_card_audio_input { i8 3, i32 2236962, i16 0 }], %struct.ivtv_card_audio_input { i8 1, i32 2236961, i16 0 }, i32 6, ptr @ivtv_pvr350_outputs, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] zeroinitializer, ptr @ivtv_i2c_std, ptr null }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_pvr150 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 2, ptr @.str.11, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 32, i32 917681, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 7 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1296 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input { i8 3, i8 2, i16 1568 }, %struct.ivtv_card_video_input { i8 5, i8 2, i16 4 }, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 8, i16 2 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 2 }, %struct.ivtv_card_audio_input { i8 3, i32 0, i16 4 }], %struct.ivtv_card_audio_input { i8 1, i32 0, i16 8 }, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 7937, i16 9971 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] zeroinitializer, ptr @ivtv_i2c_std, ptr null }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_m179 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 3, ptr @.str.12, ptr null, i32 16973905, i32 256, i32 32768, i32 32768, i32 0, i32 33040, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -7296, i16 -32112 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 -32704, i16 -32768, i16 0, i16 0 }, %struct.ivtv_gpio_audio_mute { i16 8192, i16 8192 }, %struct.ivtv_gpio_audio_mode { i16 17152, i16 16384, i16 512, i16 512, i16 256, i16 0 }, %struct.ivtv_gpio_audio_freq { i16 24, i16 0, i16 8, i16 16 }, %struct.ivtv_gpio_audio_detect { i16 16384, i16 0 }, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 2 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_m179 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_mpg600 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 4, ptr @.str.13, ptr null, i32 16973905, i32 2, i32 32768, i32 32768, i32 0, i32 32786, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 12416, i16 4 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 12288, i16 0, i16 8192, i16 0 }, %struct.ivtv_gpio_audio_mute { i16 1, i16 1 }, %struct.ivtv_gpio_audio_mode { i16 14, i16 6, i16 4, i16 4, i16 0, i16 8 }, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect { i16 2304, i16 256 }, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 24 }, %struct.ivtv_card_tuner { i64 16777215, i32 53 }, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_mpg600 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_mpg160 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 5, ptr @.str.14, ptr null, i32 16973905, i32 256, i32 32768, i32 32768, i32 0, i32 33040, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 28800, i16 16396 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 12288, i16 0, i16 8192, i16 0 }, %struct.ivtv_gpio_audio_mute { i16 1, i16 1 }, %struct.ivtv_gpio_audio_mode { i16 14, i16 6, i16 4, i16 4, i16 0, i16 8 }, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect { i16 2304, i16 256 }, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 24 }, %struct.ivtv_card_tuner { i64 16777215, i32 53 }, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_mpg160 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_pg600 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 6, ptr @.str.15, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 0, i32 17, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1072 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 24 }, %struct.ivtv_card_tuner { i64 16777215, i32 53 }, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_pg600 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_avc2410 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 7, ptr @.str.16, ptr null, i32 16973905, i32 2, i32 8, i32 8, i32 64, i32 1048666, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 2236960, i16 2 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 38 }, %struct.ivtv_card_tuner { i64 16769023, i32 43 }, %struct.ivtv_card_tuner { i64 8192, i32 53 }], ptr @ivtv_i2c_std, ptr @ivtv_pci_avc2410 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_avc2010 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 8, ptr @.str.17, ptr null, i32 16973905, i32 2, i32 64, i32 64, i32 0, i32 66, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 2, i8 0, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 0, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 2, i32 2, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] zeroinitializer, ptr null, ptr @ivtv_pci_avc2010 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_tg5000tv = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 9, ptr @.str.18, ptr null, i32 16973905, i32 34560, i32 32768, i32 32768, i32 0, i32 34576, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 6 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 8 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 8 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 32, i8 0, %struct.ivtv_gpio_init { i16 -8064, i16 -32768 }, %struct.ivtv_gpio_video_input { i16 48, i16 0, i16 16, i16 32 }, %struct.ivtv_gpio_audio_input { i16 -32640, i16 -32768, i16 128, i16 0 }, %struct.ivtv_gpio_audio_mute { i16 24576, i16 24576 }, %struct.ivtv_gpio_audio_mode { i16 17152, i16 16384, i16 512, i16 768, i16 0, i16 512 }, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 53 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_tg5000tv }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_va2000 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 10, ptr @.str.19, ptr null, i32 16973905, i32 1026, i32 8, i32 8, i32 0, i32 1050, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 6 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 53 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_va2000 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_cx23416gyc = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 11, ptr @.str.20, ptr null, i32 16973905, i32 36352, i32 2048, i32 2048, i32 0, i32 36368, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 137 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 9 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 2, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 32, i8 0, %struct.ivtv_gpio_init { i16 -1920, i16 -30720 }, %struct.ivtv_gpio_video_input { i16 32, i16 0, i16 32, i16 32 }, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq { i16 -16384, i16 0, i16 16384, i16 -32768 }, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 38 }, %struct.ivtv_card_tuner { i64 16777215, i32 43 }, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_cx23416gyc }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_gv_mvprx = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 12, ptr @.str.21, ptr null, i32 16973905, i32 1538, i32 32768, i32 4096, i32 0, i32 46610, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 6 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 7 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 8 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -15615, i16 512 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 -1, i16 512, i16 768, i16 0 }, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 46 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_gv_mvprx }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_gv_mvprx2e = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 13, ptr @.str.22, ptr null, i32 16973905, i32 2, i32 32768, i32 4096, i32 0, i32 45074, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -15615, i16 512 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 -1, i16 512, i16 768, i16 0 }, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 46 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_gv_mvprx2e }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_gotview_pci_dvd = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 14, ptr @.str.23, ptr null, i32 16973905, i32 2048, i32 2048, i32 2048, i32 0, i32 2064, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 1 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 2, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -4096, i16 -24576 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 38 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_gotview_pci_dvd }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_gotview_pci_dvd2 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 15, ptr @.str.24, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 32768, i32 17, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1072 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 1 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input { i8 1, i32 0, i16 2 }, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 2048, i16 0 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 2048, i16 0, i16 0, i16 2048 }, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 38 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_gotview_pci_dvd2 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_yuan_mpc622 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 16, ptr @.str.25, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 0, i32 17, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1072 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 255, i16 2 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 54 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_tda8290, ptr @ivtv_pci_yuan_mpc622 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_dctmvtvp1 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 17, ptr @.str.26, ptr null, i32 16973905, i32 34306, i32 32768, i32 32768, i32 0, i32 34322, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 6 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 8 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 8 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -8064, i16 -32768 }, %struct.ivtv_gpio_video_input { i16 48, i16 0, i16 16, i16 32 }, %struct.ivtv_gpio_audio_input { i16 -32640, i16 -32768, i16 128, i16 0 }, %struct.ivtv_gpio_audio_mute { i16 24576, i16 24576 }, %struct.ivtv_gpio_audio_mode { i16 17152, i16 16384, i16 512, i16 768, i16 0, i16 512 }, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 53 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_dctmvtvp1 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_pg600v2 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 18, ptr @.str.27, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 0, i32 17, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1072 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, i32 0, ptr null, i8 0, i8 12, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 71 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_pg600v2 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_club3d = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 19, ptr @.str.28, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 0, i32 17, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1072 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 3 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, i32 0, ptr null, i8 0, i8 12, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 71 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_club3d }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_avertv_mce116 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 20, ptr @.str.29, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 0, i32 69649, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1840 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 1 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, i32 0, ptr null, i8 0, i8 10, %struct.ivtv_gpio_init { i16 -8192, i16 16384 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 71 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_avertv_mce116 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_asus_falcon2 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 21, ptr @.str.30, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 16384, i32 16401, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1840 }, %struct.ivtv_card_video_input { i8 4, i8 2, i16 2 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 1285 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 257 }], %struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 43 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_asus_falcon2 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_aver_pvr150 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 22, ptr @.str.31, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 32768, i32 36881, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1840 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 1 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input { i8 1, i32 0, i16 2 }, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -16384, i16 0 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 -16384, i16 0, i16 16384, i16 -32768 }, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 81 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_radio, ptr @ivtv_pci_aver_pvr150 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_aver_ezmaker = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 23, ptr @.str.32, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 0, i32 4097, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 2, i8 0, i16 1840 }, %struct.ivtv_card_video_input { i8 4, i8 0, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 16384, i16 16384 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] zeroinitializer, ptr null, ptr @ivtv_pci_aver_ezmaker }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_aver_m104 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 24, ptr @.str.33, ptr @.str.34, i32 0, i32 1, i32 1, i32 1, i32 0, i32 4113, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 2, i8 0, i16 1840 }, %struct.ivtv_card_video_input { i8 4, i8 0, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 2, i32 0, i16 1 }, %struct.ivtv_card_audio_input zeroinitializer, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input { i8 1, i32 0, i16 2 }, i32 0, ptr null, i8 0, i8 10, %struct.ivtv_gpio_init { i16 -8192, i16 16384 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 71 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_aver_m104 }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_buffalo = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 25, ptr @.str.35, ptr null, i32 16973905, i32 1, i32 1, i32 1, i32 0, i32 17, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1072 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 12, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 71 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_buffalo }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_aver_ultra1500mce = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 26, ptr @.str.36, ptr @.str.37, i32 16973905, i32 1, i32 1, i32 1, i32 32768, i32 36881, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 2 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 1840 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 5, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 1 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input { i8 1, i32 0, i16 2 }, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -16384, i16 0 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 -16384, i16 0, i16 16384, i16 -32768 }, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 46848, i32 43 }, %struct.ivtv_card_tuner { i64 16711935, i32 79 }, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_aver_ultra1500mce }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_kikyou = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 27, ptr @.str.38, ptr null, i32 16973905, i32 2, i32 32768, i32 32768, i32 0, i32 32786, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 1 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 1 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 7 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 0, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 1, i16 0 }, %struct.ivtv_card_audio_input { i8 3, i32 1, i16 0 }], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 993, i16 800 }, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input { i16 96, i16 32, i16 0, i16 96 }, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode { i16 128, i16 0, i16 0, i16 128, i16 0, i16 128 }, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16777215, i32 84 }, %struct.ivtv_card_tuner zeroinitializer, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr @ivtv_pci_kikyou }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_pvr350_v1 = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 28, ptr @.str.39, ptr null, i32 16974035, i32 256, i32 8, i32 8, i32 0, i32 412, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 4 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 0 }, %struct.ivtv_card_video_input { i8 3, i8 2, i16 7 }, %struct.ivtv_card_video_input { i8 5, i8 2, i16 1 }, %struct.ivtv_card_video_input { i8 6, i8 1, i16 5 }], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 2236966, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 2236960, i16 0 }, %struct.ivtv_card_audio_input { i8 3, i32 2236962, i16 0 }], %struct.ivtv_card_audio_input { i8 1, i32 2236961, i16 0 }, i32 6, ptr @ivtv_pvr350_outputs, i8 0, i8 0, %struct.ivtv_gpio_init zeroinitializer, %struct.ivtv_gpio_video_input zeroinitializer, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq zeroinitializer, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] zeroinitializer, ptr @ivtv_i2c_std, ptr null }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_cx23416gyc_nogr = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 29, ptr @.str.40, ptr null, i32 16973905, i32 35840, i32 2048, i32 2048, i32 0, i32 35856, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 132 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 0 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 2, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -1920, i16 -30720 }, %struct.ivtv_gpio_video_input { i16 32, i16 0, i16 32, i16 32 }, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq { i16 -16384, i16 0, i16 16384, i16 -32768 }, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 38 }, %struct.ivtv_card_tuner { i64 16777215, i32 43 }, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr null }, [32 x i8] zeroinitializer }, align 32
@ivtv_card_cx23416gyc_nogrycs = internal constant { %struct.ivtv_card, [32 x i8] } { %struct.ivtv_card { i32 30, ptr @.str.41, ptr null, i32 16973905, i32 34816, i32 2048, i32 2048, i32 0, i32 34832, [6 x %struct.ivtv_card_video_input] [%struct.ivtv_card_video_input { i8 1, i8 0, i16 132 }, %struct.ivtv_card_video_input { i8 2, i8 1, i16 6 }, %struct.ivtv_card_video_input { i8 4, i8 1, i16 0 }, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer, %struct.ivtv_card_video_input zeroinitializer], [3 x %struct.ivtv_card_audio_input] [%struct.ivtv_card_audio_input { i8 1, i32 2, i16 0 }, %struct.ivtv_card_audio_input { i8 2, i32 0, i16 0 }, %struct.ivtv_card_audio_input zeroinitializer], %struct.ivtv_card_audio_input zeroinitializer, i32 0, ptr null, i8 0, i8 0, %struct.ivtv_gpio_init { i16 -1920, i16 -30720 }, %struct.ivtv_gpio_video_input { i16 32, i16 0, i16 32, i16 32 }, %struct.ivtv_gpio_audio_input zeroinitializer, %struct.ivtv_gpio_audio_mute zeroinitializer, %struct.ivtv_gpio_audio_mode zeroinitializer, %struct.ivtv_gpio_audio_freq { i16 -16384, i16 0, i16 16384, i16 -32768 }, %struct.ivtv_gpio_audio_detect zeroinitializer, [3 x %struct.ivtv_card_tuner] [%struct.ivtv_card_tuner { i64 16711935, i32 38 }, %struct.ivtv_card_tuner { i64 16777215, i32 43 }, %struct.ivtv_card_tuner zeroinitializer], ptr @ivtv_i2c_std, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV PVR-250\00", [40 x i8] zeroinitializer }, align 32
@ivtv_i2c_std = internal global { %struct.ivtv_card_tuner_i2c, [16 x i8] } { %struct.ivtv_card_tuner_i2c { [2 x i16] [i16 -2, i16 0], [2 x i16] [i16 67, i16 -2], [4 x i16] [i16 97, i16 96, i16 -2, i16 0] }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV PVR-350\00", [40 x i8] zeroinitializer }, align 32
@ivtv_pvr350_outputs = internal global { [6 x %struct.ivtv_card_output], [52 x i8] } { [6 x %struct.ivtv_card_output] [%struct.ivtv_card_output { [32 x i8] c"S-Video + Composite\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0 }, %struct.ivtv_card_output { [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 1 }, %struct.ivtv_card_output { [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.ivtv_card_output { [32 x i8] c"RGB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 3 }, %struct.ivtv_card_output { [32 x i8] c"YUV C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 4 }, %struct.ivtv_card_output { [32 x i8] c"YUV V\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 5 }], [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV PVR-150\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AVerMedia M179\00", [17 x i8] zeroinitializer }, align 32
@ivtv_pci_m179 = internal constant { [3 x %struct.ivtv_card_pci_info], [46 x i8] } { [3 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 2051, i16 5217, i16 -23601 }, %struct.ivtv_card_pci_info { i16 2051, i16 5217, i16 -23602 }, %struct.ivtv_card_pci_info zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Yuan MPG600, Kuroutoshikou ITVC16-STVLP\00", [56 x i8] zeroinitializer }, align 32
@ivtv_pci_mpg600 = internal constant { [3 x %struct.ivtv_card_pci_info], [46 x i8] } { [3 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4779, i16 -13 }, %struct.ivtv_card_pci_info { i16 22, i16 4779, i16 -1 }, %struct.ivtv_card_pci_info zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"YUAN MPG160, Kuroutoshikou ITVC15-STVLP, I/O Data GV-M2TV/PCI\00", [34 x i8] zeroinitializer }, align 32
@ivtv_pci_mpg160 = internal constant { [3 x %struct.ivtv_card_pci_info], [46 x i8] } { [3 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 2051, i16 4779, i16 0 }, %struct.ivtv_card_pci_info { i16 2051, i16 4348, i16 16544 }, %struct.ivtv_card_pci_info zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Yuan PG600, Diamond PVR-550\00", [36 x i8] zeroinitializer }, align 32
@ivtv_pci_pg600 = internal constant { [3 x %struct.ivtv_card_pci_info], [46 x i8] } { [3 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 -110, i16 112 }, %struct.ivtv_card_pci_info { i16 22, i16 -85, i16 1536 }, %struct.ivtv_card_pci_info zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Adaptec VideOh! AVC-2410\00", [39 x i8] zeroinitializer }, align 32
@ivtv_pci_avc2410 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 -28667, i16 147 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Adaptec VideOh! AVC-2010\00", [39 x i8] zeroinitializer }, align 32
@ivtv_pci_avc2010 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 -28667, i16 146 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Nagase Transgear 5000TV\00", [40 x i8] zeroinitializer }, align 32
@ivtv_pci_tg5000tv = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16385 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AOpen VA2000MAX-SNT6\00", [43 x i8] zeroinitializer }, align 32
@ivtv_pci_va2000 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 0, i16 -161 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Yuan MPG600GR, Kuroutoshikou CX23416GYC-STVLP\00", [50 x i8] zeroinitializer }, align 32
@ivtv_pci_cx23416gyc = internal constant { [4 x %struct.ivtv_card_pci_info], [40 x i8] } { [4 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4779, i16 1536 }, %struct.ivtv_card_pci_info { i16 22, i16 -1109, i16 1536 }, %struct.ivtv_card_pci_info { i16 22, i16 4436, i16 1315 }, %struct.ivtv_card_pci_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"I/O Data GV-MVP/RX, GV-MVP/RX2W (dual tuner)\00", [51 x i8] zeroinitializer }, align 32
@ivtv_pci_gv_mvprx = internal constant { [4 x %struct.ivtv_card_pci_info], [40 x i8] } { [4 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4348, i16 -12258 }, %struct.ivtv_card_pci_info { i16 22, i16 4348, i16 -12232 }, %struct.ivtv_card_pci_info { i16 22, i16 4348, i16 -12231 }, %struct.ivtv_card_pci_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I/O Data GV-MVP/RX2E\00", [43 x i8] zeroinitializer }, align 32
@ivtv_pci_gv_mvprx2e = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4348, i16 -12251 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GotView PCI DVD\00", [16 x i8] zeroinitializer }, align 32
@ivtv_pci_gotview_pci_dvd = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4779, i16 1536 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GotView PCI DVD2 Deluxe\00", [40 x i8] zeroinitializer }, align 32
@ivtv_pci_gotview_pci_dvd2 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 -84, i16 1536 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Yuan MPC622\00", [20 x i8] zeroinitializer }, align 32
@ivtv_i2c_tda8290 = internal global { %struct.ivtv_card_tuner_i2c, [16 x i8] } { %struct.ivtv_card_tuner_i2c { [2 x i16] [i16 -2, i16 0], [2 x i16] [i16 -2, i16 0], [4 x i16] [i16 75, i16 -2, i16 0, i16 0] }, [16 x i8] zeroinitializer }, align 32
@ivtv_pci_yuan_mpc622 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 -255, i16 -9832 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital Cowboy DCT-MTVP1\00", [39 x i8] zeroinitializer }, align 32
@ivtv_pci_dctmvtvp1 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16385 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Yuan PG600-2, GotView PCI DVD Lite\00", [61 x i8] zeroinitializer }, align 32
@ivtv_pci_pg600v2 = internal constant { [3 x %struct.ivtv_card_pci_info], [46 x i8] } { [3 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 -85, i16 1536 }, %struct.ivtv_card_pci_info { i16 22, i16 -83, i16 1536 }, %struct.ivtv_card_pci_info zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Club3D ZAP-TV1x01\00", [46 x i8] zeroinitializer }, align 32
@ivtv_pci_club3d = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 -85, i16 1536 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AVerTV MCE 116 Plus\00", [44 x i8] zeroinitializer }, align 32
@ivtv_pci_avertv_mce116 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -15303 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASUS Falcon2\00", [19 x i8] zeroinitializer }, align 32
@ivtv_pci_asus_falcon2 = internal constant { [4 x %struct.ivtv_card_pci_info], [40 x i8] } { [4 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4163, i16 19302 }, %struct.ivtv_card_pci_info { i16 22, i16 4163, i16 17966 }, %struct.ivtv_card_pci_info { i16 22, i16 4163, i16 19246 }, %struct.ivtv_card_pci_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"AVerMedia PVR-150 Plus / AVerTV M113 Partsnic (Daewoo) Tuner\00", [35 x i8] zeroinitializer }, align 32
@ivtv_i2c_radio = internal global { %struct.ivtv_card_tuner_i2c, [16 x i8] } { %struct.ivtv_card_tuner_i2c { [2 x i16] [i16 96, i16 -2], [2 x i16] [i16 67, i16 -2], [4 x i16] [i16 97, i16 -2, i16 0, i16 0] }, [16 x i8] zeroinitializer }, align 32
@ivtv_pci_aver_pvr150 = internal constant { [3 x %struct.ivtv_card_pci_info], [46 x i8] } { [3 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16332 }, %struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16331 }, %struct.ivtv_card_pci_info zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AVerMedia EZMaker PCI Deluxe\00", [35 x i8] zeroinitializer }, align 32
@ivtv_pci_aver_ezmaker = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16321 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AVerMedia M104\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Not yet supported!\0A\00", [44 x i8] zeroinitializer }, align 32
@ivtv_pci_aver_m104 = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16074 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Buffalo PC-MV5L/PCI\00", [44 x i8] zeroinitializer }, align 32
@ivtv_pci_buffalo = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4436, i16 1323 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"AVerMedia UltraTV 1500 MCE / AVerTV M113 Philips Tuner\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"For non-NTSC tuners, use the pal= or secam= module options\00", [37 x i8] zeroinitializer }, align 32
@ivtv_pci_aver_ultra1500mce = internal constant { [3 x %struct.ivtv_card_pci_info], [46 x i8] } { [3 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16359 }, %struct.ivtv_card_pci_info { i16 22, i16 5217, i16 -16357 }, %struct.ivtv_card_pci_info zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sony VAIO Giga Pocket (ENX Kikyou)\00", [61 x i8] zeroinitializer }, align 32
@ivtv_pci_kikyou = internal constant { [2 x %struct.ivtv_card_pci_info], [20 x i8] } { [2 x %struct.ivtv_card_pci_info] [%struct.ivtv_card_pci_info { i16 22, i16 4173, i16 -32451 }, %struct.ivtv_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Hauppauge WinTV PVR-350 (V1)\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Yuan MPG600GR, Kuroutoshikou CX23416GYC-STVLP (no GR)\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Yuan MPG600GR, Kuroutoshikou CX23416GYC-STVLP (no GR/YCS)\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"ivtv_card_list\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1249, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1296, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1297, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1298, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1299, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1300, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1301, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1302, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"input_strs\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1335, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1337, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1338, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1356, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"ivtv_card_pvr250\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 64, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"ivtv_card_pvr350\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 117, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"ivtv_card_pvr150\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 182, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"ivtv_card_m179\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 226, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"ivtv_card_mpg600\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 269, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"ivtv_card_mpg160\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 311, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"ivtv_card_pg600\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 352, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"ivtv_card_avc2410\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 387, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"ivtv_card_avc2010\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 431, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"ivtv_card_tg5000tv\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 459, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"ivtv_card_va2000\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 502, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"ivtv_card_cx23416gyc\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 535, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"ivtv_card_gv_mvprx\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 641, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"ivtv_card_gv_mvprx2e\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 679, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"ivtv_card_gotview_pci_dvd\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 716, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"ivtv_card_gotview_pci_dvd2\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 751, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"ivtv_card_yuan_mpc622\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 790, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"ivtv_card_dctmvtvp1\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 826, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"ivtv_card_pg600v2\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 869, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"ivtv_card_club3d\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 907, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"ivtv_card_avertv_mce116\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 943, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"ivtv_card_asus_falcon2\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1103, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"ivtv_card_aver_pvr150\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 982, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"ivtv_card_aver_ezmaker\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1072, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"ivtv_card_aver_m104\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1140, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"ivtv_card_buffalo\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1176, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"ivtv_card_aver_ultra1500mce\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1027, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"ivtv_card_kikyou\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1210, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"ivtv_card_pvr350_v1\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 150, i32 31 }
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"ivtv_card_cx23416gyc_nogr\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 569, i32 31 }
@___asan_gen_.168 = private unnamed_addr constant [29 x i8] c"ivtv_card_cx23416gyc_nogrycs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 600, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 66, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"ivtv_i2c_std\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 34, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 119, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"ivtv_pvr350_outputs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 95, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 184, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 228, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [14 x i8] c"ivtv_pci_m179\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 220, i32 40 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 271, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"ivtv_pci_mpg600\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 263, i32 40 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 313, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"ivtv_pci_mpg160\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 305, i32 40 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 354, i32 10 }
@___asan_gen_.207 = private unnamed_addr constant [15 x i8] c"ivtv_pci_pg600\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 346, i32 40 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 389, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"ivtv_pci_avc2410\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 382, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 433, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"ivtv_pci_avc2010\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 426, i32 40 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 461, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant [18 x i8] c"ivtv_pci_tg5000tv\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 454, i32 40 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 504, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"ivtv_pci_va2000\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 497, i32 40 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 537, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"ivtv_pci_cx23416gyc\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 528, i32 40 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 643, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant [18 x i8] c"ivtv_pci_gv_mvprx\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 634, i32 40 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 681, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"ivtv_pci_gv_mvprx2e\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 674, i32 40 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 718, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"ivtv_pci_gotview_pci_dvd\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 711, i32 40 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 753, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant [26 x i8] c"ivtv_pci_gotview_pci_dvd2\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 746, i32 40 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 792, i32 10 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"ivtv_i2c_tda8290\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 48, i32 35 }
@___asan_gen_.270 = private unnamed_addr constant [21 x i8] c"ivtv_pci_yuan_mpc622\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 785, i32 40 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 828, i32 10 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"ivtv_pci_dctmvtvp1\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 821, i32 40 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 871, i32 10 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"ivtv_pci_pg600v2\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 863, i32 40 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 909, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant [16 x i8] c"ivtv_pci_club3d\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 902, i32 40 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 945, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant [23 x i8] c"ivtv_pci_avertv_mce116\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 938, i32 40 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1105, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant [22 x i8] c"ivtv_pci_asus_falcon2\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1096, i32 40 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 984, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"ivtv_i2c_radio\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 41, i32 35 }
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"ivtv_pci_aver_pvr150\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 976, i32 40 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1074, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant [22 x i8] c"ivtv_pci_aver_ezmaker\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1067, i32 40 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1142, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1143, i32 13 }
@___asan_gen_.324 = private unnamed_addr constant [19 x i8] c"ivtv_pci_aver_m104\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1135, i32 40 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1178, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"ivtv_pci_buffalo\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1171, i32 40 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1029, i32 10 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1030, i32 13 }
@___asan_gen_.339 = private unnamed_addr constant [27 x i8] c"ivtv_pci_aver_ultra1500mce\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1021, i32 40 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1212, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant [16 x i8] c"ivtv_pci_kikyou\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1205, i32 40 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 152, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 571, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [39 x i8] c"../drivers/media/pci/ivtv/ivtv-cards.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 602, i32 10 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @ivtv_card_list, ptr @ivtv_get_input.input_strs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ivtv_get_audio_input.input_strs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ivtv_card_pvr250, ptr @ivtv_card_pvr350, ptr @ivtv_card_pvr150, ptr @ivtv_card_m179, ptr @ivtv_card_mpg600, ptr @ivtv_card_mpg160, ptr @ivtv_card_pg600, ptr @ivtv_card_avc2410, ptr @ivtv_card_avc2010, ptr @ivtv_card_tg5000tv, ptr @ivtv_card_va2000, ptr @ivtv_card_cx23416gyc, ptr @ivtv_card_gv_mvprx, ptr @ivtv_card_gv_mvprx2e, ptr @ivtv_card_gotview_pci_dvd, ptr @ivtv_card_gotview_pci_dvd2, ptr @ivtv_card_yuan_mpc622, ptr @ivtv_card_dctmvtvp1, ptr @ivtv_card_pg600v2, ptr @ivtv_card_club3d, ptr @ivtv_card_avertv_mce116, ptr @ivtv_card_asus_falcon2, ptr @ivtv_card_aver_pvr150, ptr @ivtv_card_aver_ezmaker, ptr @ivtv_card_aver_m104, ptr @ivtv_card_buffalo, ptr @ivtv_card_aver_ultra1500mce, ptr @ivtv_card_kikyou, ptr @ivtv_card_pvr350_v1, ptr @ivtv_card_cx23416gyc_nogr, ptr @ivtv_card_cx23416gyc_nogrycs, ptr @.str.9, ptr @ivtv_i2c_std, ptr @.str.10, ptr @ivtv_pvr350_outputs, ptr @.str.11, ptr @.str.12, ptr @ivtv_pci_m179, ptr @.str.13, ptr @ivtv_pci_mpg600, ptr @.str.14, ptr @ivtv_pci_mpg160, ptr @.str.15, ptr @ivtv_pci_pg600, ptr @.str.16, ptr @ivtv_pci_avc2410, ptr @.str.17, ptr @ivtv_pci_avc2010, ptr @.str.18, ptr @ivtv_pci_tg5000tv, ptr @.str.19, ptr @ivtv_pci_va2000, ptr @.str.20, ptr @ivtv_pci_cx23416gyc, ptr @.str.21, ptr @ivtv_pci_gv_mvprx, ptr @.str.22, ptr @ivtv_pci_gv_mvprx2e, ptr @.str.23, ptr @ivtv_pci_gotview_pci_dvd, ptr @.str.24, ptr @ivtv_pci_gotview_pci_dvd2, ptr @.str.25, ptr @ivtv_i2c_tda8290, ptr @ivtv_pci_yuan_mpc622, ptr @.str.26, ptr @ivtv_pci_dctmvtvp1, ptr @.str.27, ptr @ivtv_pci_pg600v2, ptr @.str.28, ptr @ivtv_pci_club3d, ptr @.str.29, ptr @ivtv_pci_avertv_mce116, ptr @.str.30, ptr @ivtv_pci_asus_falcon2, ptr @.str.31, ptr @ivtv_i2c_radio, ptr @ivtv_pci_aver_pvr150, ptr @.str.32, ptr @ivtv_pci_aver_ezmaker, ptr @.str.33, ptr @.str.34, ptr @ivtv_pci_aver_m104, ptr @.str.35, ptr @ivtv_pci_buffalo, ptr @.str.36, ptr @.str.37, ptr @ivtv_pci_aver_ultra1500mce, ptr @.str.38, ptr @ivtv_pci_kikyou, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_list to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_get_input.input_strs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_get_audio_input.input_strs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_pvr250 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_pvr350 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_pvr150 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_m179 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_mpg600 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_mpg160 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_pg600 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_avc2410 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_avc2010 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_tg5000tv to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_va2000 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_cx23416gyc to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_gv_mvprx to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_gv_mvprx2e to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_gotview_pci_dvd to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_gotview_pci_dvd2 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_yuan_mpc622 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_dctmvtvp1 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_pg600v2 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_club3d to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_avertv_mce116 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_asus_falcon2 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_aver_pvr150 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_aver_ezmaker to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_aver_m104 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_buffalo to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_aver_ultra1500mce to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_kikyou to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_pvr350_v1 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_cx23416gyc_nogr to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_card_cx23416gyc_nogrycs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_std to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pvr350_outputs to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_m179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_mpg600 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_mpg160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_pg600 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_avc2410 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_avc2010 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_tg5000tv to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_va2000 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_cx23416gyc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_gv_mvprx to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_gv_mvprx2e to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_gotview_pci_dvd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_gotview_pci_dvd2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_tda8290 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_yuan_mpc622 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_dctmvtvp1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_pg600v2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_club3d to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_avertv_mce116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_asus_falcon2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_radio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_aver_pvr150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_aver_ezmaker to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_aver_m104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_buffalo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_aver_ultra1500mce to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_pci_kikyou to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ivtv_get_card(i16 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %index)
  %cmp = icmp ugt i16 %index, 30
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %index to i32
  %arrayidx = getelementptr [31 x ptr], ptr @ivtv_card_list, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_get_input(ptr nocapture noundef readonly %itv, i16 noundef zeroext %index, ptr noundef %input) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nof_inputs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 6
  %0 = ptrtoint ptr %nof_inputs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nof_inputs, align 2
  %2 = zext i8 %1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %index)
  %cmp.not = icmp ugt i16 %2, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %index to i32
  %card = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %video_inputs = getelementptr inbounds %struct.ivtv_card, ptr %4, i32 0, i32 9
  %add.ptr = getelementptr %struct.ivtv_card_video_input, ptr %video_inputs, i32 %conv
  %5 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %input, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 2
  %conv7 = zext i8 %7 to i32
  %sub = add nsw i32 %conv7, -1
  %arrayidx = getelementptr [6 x ptr], ptr @ivtv_get_input.input_strs, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %9, i32 noundef 32) #3
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp10 = icmp eq i8 %11, 1
  %cond = select i1 %cmp10, i32 1, i32 2
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %type, align 4
  %nof_audio_inputs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 7
  %13 = ptrtoint ptr %nof_audio_inputs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nof_audio_inputs, align 1
  %conv12 = zext i8 %14 to i32
  %notmask = shl nsw i32 -1, %conv12
  %sub13 = xor i32 %notmask, -1
  %audioset = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 3
  %15 = ptrtoint ptr %audioset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub13, ptr %audioset, align 8
  br i1 %cmp10, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %tuner_std = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 10
  %16 = ptrtoint ptr %tuner_std to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tuner_std, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond17 = phi i64 [ %17, %cond.true ], [ 16777215, %if.end.cond.end_crit_edge ]
  %std = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 5
  %18 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %cond17, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_get_output(ptr nocapture noundef readonly %itv, i16 noundef zeroext %index, ptr noundef %output) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %conv = zext i16 %index to i32
  %nof_outputs = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %nof_outputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nof_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp sgt i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %video_outputs = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %video_outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video_outputs, align 8
  %add.ptr = getelementptr %struct.ivtv_card_output, ptr %5, i32 %conv
  %6 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %output, align 8
  %name = getelementptr inbounds %struct.v4l2_output, ptr %output, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %add.ptr, i32 noundef 32) #3
  %type = getelementptr inbounds %struct.v4l2_output, ptr %output, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type, align 4
  %audioset = getelementptr inbounds %struct.v4l2_output, ptr %output, i32 0, i32 3
  %8 = ptrtoint ptr %audioset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %audioset, align 8
  %std = getelementptr inbounds %struct.v4l2_output, ptr %output, i32 0, i32 5
  %9 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 16777215, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_get_audio_input(ptr nocapture noundef readonly %itv, i16 noundef zeroext %index, ptr noundef %audio) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %2 = call ptr @memset(ptr %audio, i32 0, i32 52)
  %nof_audio_inputs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 7
  %3 = ptrtoint ptr %nof_audio_inputs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nof_audio_inputs, align 1
  %5 = zext i8 %4 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %index)
  %cmp.not = icmp ugt i16 %5, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %index to i32
  %audio_inputs = getelementptr inbounds %struct.ivtv_card, ptr %1, i32 0, i32 10
  %add.ptr = getelementptr %struct.ivtv_card_audio_input, ptr %audio_inputs, i32 %conv
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 4
  %conv5 = zext i8 %7 to i32
  %sub = add nsw i32 %conv5, -1
  %arrayidx = getelementptr [3 x ptr], ptr @ivtv_get_audio_input.input_strs, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %9, i32 noundef 32) #3
  %10 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %audio, align 4
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 2
  %11 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %capability, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_get_audio_output(ptr nocapture noundef readonly %itv, i16 noundef zeroext %index, ptr noundef %aud_output) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %aud_output, i32 0, i32 52)
  %card = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %video_outputs = getelementptr inbounds %struct.ivtv_card, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %video_outputs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %video_outputs, align 8
  %cmp = icmp ne ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %index)
  %cmp1.not = icmp eq i16 %index, 0
  %or.cond = and i1 %cmp1.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %name = getelementptr inbounds %struct.v4l2_audioout, ptr %aud_output, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.8, i32 noundef 32) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1297, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1298, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1299, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1300, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1301, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1302, i32 3}
!12 = !{ptr @ivtv_get_input.input_strs, !13, !"input_strs", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1296, i32 28}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1337, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1338, i32 3}
!18 = !{ptr @ivtv_get_audio_input.input_strs, !19, !"input_strs", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1335, i32 28}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1356, i32 28}
!22 = !{ptr @ivtv_card_list, !23, !"ivtv_card_list", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1249, i32 32}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 66, i32 10}
!26 = !{ptr @ivtv_card_pvr250, !27, !"ivtv_card_pvr250", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 64, i32 31}
!28 = !{ptr @ivtv_i2c_std, !29, !"ivtv_i2c_std", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 34, i32 35}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 119, i32 10}
!32 = !{ptr @ivtv_card_pvr350, !33, !"ivtv_card_pvr350", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 117, i32 31}
!34 = !{ptr @ivtv_pvr350_outputs, !35, !"ivtv_pvr350_outputs", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 95, i32 32}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 184, i32 10}
!38 = !{ptr @ivtv_card_pvr150, !39, !"ivtv_card_pvr150", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 182, i32 31}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 228, i32 10}
!42 = !{ptr @ivtv_card_m179, !43, !"ivtv_card_m179", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 226, i32 31}
!44 = !{ptr @ivtv_pci_m179, !45, !"ivtv_pci_m179", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 220, i32 40}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 271, i32 10}
!48 = !{ptr @ivtv_card_mpg600, !49, !"ivtv_card_mpg600", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 269, i32 31}
!50 = !{ptr @ivtv_pci_mpg600, !51, !"ivtv_pci_mpg600", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 263, i32 40}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 313, i32 10}
!54 = !{ptr @ivtv_card_mpg160, !55, !"ivtv_card_mpg160", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 311, i32 31}
!56 = !{ptr @ivtv_pci_mpg160, !57, !"ivtv_pci_mpg160", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 305, i32 40}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 354, i32 10}
!60 = !{ptr @ivtv_card_pg600, !61, !"ivtv_card_pg600", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 352, i32 31}
!62 = !{ptr @ivtv_pci_pg600, !63, !"ivtv_pci_pg600", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 346, i32 40}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 389, i32 10}
!66 = !{ptr @ivtv_card_avc2410, !67, !"ivtv_card_avc2410", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 387, i32 31}
!68 = !{ptr @ivtv_pci_avc2410, !69, !"ivtv_pci_avc2410", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 382, i32 40}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 433, i32 10}
!72 = !{ptr @ivtv_card_avc2010, !73, !"ivtv_card_avc2010", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 431, i32 31}
!74 = !{ptr @ivtv_pci_avc2010, !75, !"ivtv_pci_avc2010", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 426, i32 40}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 461, i32 10}
!78 = !{ptr @ivtv_card_tg5000tv, !79, !"ivtv_card_tg5000tv", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 459, i32 31}
!80 = !{ptr @ivtv_pci_tg5000tv, !81, !"ivtv_pci_tg5000tv", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 454, i32 40}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 504, i32 10}
!84 = !{ptr @ivtv_card_va2000, !85, !"ivtv_card_va2000", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 502, i32 31}
!86 = !{ptr @ivtv_pci_va2000, !87, !"ivtv_pci_va2000", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 497, i32 40}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 537, i32 10}
!90 = !{ptr @ivtv_card_cx23416gyc, !91, !"ivtv_card_cx23416gyc", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 535, i32 31}
!92 = !{ptr @ivtv_pci_cx23416gyc, !93, !"ivtv_pci_cx23416gyc", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 528, i32 40}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 643, i32 10}
!96 = !{ptr @ivtv_card_gv_mvprx, !97, !"ivtv_card_gv_mvprx", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 641, i32 31}
!98 = !{ptr @ivtv_pci_gv_mvprx, !99, !"ivtv_pci_gv_mvprx", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 634, i32 40}
!100 = !{ptr @.str.22, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 681, i32 10}
!102 = !{ptr @ivtv_card_gv_mvprx2e, !103, !"ivtv_card_gv_mvprx2e", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 679, i32 31}
!104 = !{ptr @ivtv_pci_gv_mvprx2e, !105, !"ivtv_pci_gv_mvprx2e", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 674, i32 40}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 718, i32 10}
!108 = !{ptr @ivtv_card_gotview_pci_dvd, !109, !"ivtv_card_gotview_pci_dvd", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 716, i32 31}
!110 = !{ptr @ivtv_pci_gotview_pci_dvd, !111, !"ivtv_pci_gotview_pci_dvd", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 711, i32 40}
!112 = !{ptr @.str.24, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 753, i32 10}
!114 = !{ptr @ivtv_card_gotview_pci_dvd2, !115, !"ivtv_card_gotview_pci_dvd2", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 751, i32 31}
!116 = !{ptr @ivtv_pci_gotview_pci_dvd2, !117, !"ivtv_pci_gotview_pci_dvd2", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 746, i32 40}
!118 = !{ptr @.str.25, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 792, i32 10}
!120 = !{ptr @ivtv_card_yuan_mpc622, !121, !"ivtv_card_yuan_mpc622", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 790, i32 31}
!122 = !{ptr @ivtv_i2c_tda8290, !123, !"ivtv_i2c_tda8290", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 48, i32 35}
!124 = !{ptr @ivtv_pci_yuan_mpc622, !125, !"ivtv_pci_yuan_mpc622", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 785, i32 40}
!126 = !{ptr @.str.26, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 828, i32 10}
!128 = !{ptr @ivtv_card_dctmvtvp1, !129, !"ivtv_card_dctmvtvp1", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 826, i32 31}
!130 = !{ptr @ivtv_pci_dctmvtvp1, !131, !"ivtv_pci_dctmvtvp1", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 821, i32 40}
!132 = !{ptr @.str.27, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 871, i32 10}
!134 = !{ptr @ivtv_card_pg600v2, !135, !"ivtv_card_pg600v2", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 869, i32 31}
!136 = !{ptr @ivtv_pci_pg600v2, !137, !"ivtv_pci_pg600v2", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 863, i32 40}
!138 = !{ptr @.str.28, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 909, i32 10}
!140 = !{ptr @ivtv_card_club3d, !141, !"ivtv_card_club3d", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 907, i32 31}
!142 = !{ptr @ivtv_pci_club3d, !143, !"ivtv_pci_club3d", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 902, i32 40}
!144 = !{ptr @.str.29, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 945, i32 10}
!146 = !{ptr @ivtv_card_avertv_mce116, !147, !"ivtv_card_avertv_mce116", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 943, i32 31}
!148 = !{ptr @ivtv_pci_avertv_mce116, !149, !"ivtv_pci_avertv_mce116", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 938, i32 40}
!150 = !{ptr @.str.30, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1105, i32 10}
!152 = !{ptr @ivtv_card_asus_falcon2, !153, !"ivtv_card_asus_falcon2", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1103, i32 31}
!154 = !{ptr @ivtv_pci_asus_falcon2, !155, !"ivtv_pci_asus_falcon2", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1096, i32 40}
!156 = !{ptr @.str.31, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 984, i32 10}
!158 = !{ptr @ivtv_card_aver_pvr150, !159, !"ivtv_card_aver_pvr150", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 982, i32 31}
!160 = !{ptr @ivtv_i2c_radio, !161, !"ivtv_i2c_radio", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 41, i32 35}
!162 = !{ptr @ivtv_pci_aver_pvr150, !163, !"ivtv_pci_aver_pvr150", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 976, i32 40}
!164 = !{ptr @.str.32, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1074, i32 10}
!166 = !{ptr @ivtv_card_aver_ezmaker, !167, !"ivtv_card_aver_ezmaker", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1072, i32 31}
!168 = !{ptr @ivtv_pci_aver_ezmaker, !169, !"ivtv_pci_aver_ezmaker", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1067, i32 40}
!170 = !{ptr @.str.33, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1142, i32 10}
!172 = !{ptr @.str.34, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1143, i32 13}
!174 = !{ptr @ivtv_card_aver_m104, !175, !"ivtv_card_aver_m104", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1140, i32 31}
!176 = !{ptr @ivtv_pci_aver_m104, !177, !"ivtv_pci_aver_m104", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1135, i32 40}
!178 = !{ptr @.str.35, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1178, i32 10}
!180 = !{ptr @ivtv_card_buffalo, !181, !"ivtv_card_buffalo", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1176, i32 31}
!182 = !{ptr @ivtv_pci_buffalo, !183, !"ivtv_pci_buffalo", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1171, i32 40}
!184 = !{ptr @.str.36, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1029, i32 10}
!186 = !{ptr @.str.37, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1030, i32 13}
!188 = !{ptr @ivtv_card_aver_ultra1500mce, !189, !"ivtv_card_aver_ultra1500mce", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1027, i32 31}
!190 = !{ptr @ivtv_pci_aver_ultra1500mce, !191, !"ivtv_pci_aver_ultra1500mce", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1021, i32 40}
!192 = !{ptr @.str.38, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1212, i32 10}
!194 = !{ptr @ivtv_card_kikyou, !195, !"ivtv_card_kikyou", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1210, i32 31}
!196 = !{ptr @ivtv_pci_kikyou, !197, !"ivtv_pci_kikyou", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 1205, i32 40}
!198 = !{ptr @.str.39, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 152, i32 10}
!200 = !{ptr @ivtv_card_pvr350_v1, !201, !"ivtv_card_pvr350_v1", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 150, i32 31}
!202 = !{ptr @.str.40, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 571, i32 10}
!204 = !{ptr @ivtv_card_cx23416gyc_nogr, !205, !"ivtv_card_cx23416gyc_nogr", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 569, i32 31}
!206 = !{ptr @.str.41, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 602, i32 10}
!208 = !{ptr @ivtv_card_cx23416gyc_nogrycs, !209, !"ivtv_card_cx23416gyc_nogrycs", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/ivtv/ivtv-cards.c", i32 600, i32 31}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
