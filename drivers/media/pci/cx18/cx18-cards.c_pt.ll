; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-cards.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cx18_card = type { i32, ptr, ptr, i32, i32, i32, i32, [6 x %struct.cx18_card_video_input], [3 x %struct.cx18_card_audio_input], %struct.cx18_card_audio_input, i8, %struct.cx18_gpio_init, %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_audio_input, [2 x %struct.cx18_card_tuner], ptr, %struct.cx18_ddr, ptr }
%struct.cx18_card_video_input = type { i8, i8, i32 }
%struct.cx18_card_audio_input = type { i8, i32, i16 }
%struct.cx18_gpio_init = type { i32, i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }
%struct.cx18_gpio_audio_input = type { i32, i32, i32, i32 }
%struct.cx18_card_tuner = type { i64, i32 }
%struct.cx18_ddr = type { i32, i32, i32, i32, i32, i32 }
%struct.cx18_card_tuner_i2c = type { [2 x i16], [3 x i16], [4 x i16] }
%struct.cx18_card_pci_info = type { i16, i16, i16 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }

@cx18_card_list = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @cx18_card_hvr1600_esmt, ptr @cx18_card_hvr1600_samsung, ptr @cx18_card_h900, ptr @cx18_card_mpc718, ptr @cx18_card_cnxt_raptor_pal, ptr @cx18_card_toshiba_qosmio_dvbt, ptr @cx18_card_leadtek_pvr2100, ptr @cx18_card_leadtek_dvr3100h, ptr @cx18_card_gotview_dvd3, ptr @cx18_card_hvr1600_s5h1411], [56 x i8] zeroinitializer }, align 32
@cx18_get_input.input_strs = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tuner 1\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S-Video 1\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S-Video 2\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite 1\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite 2\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Component 1\00", [20 x i8] zeroinitializer }, align 32
@cx18_get_audio_input.input_strs = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.6, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Line In 1\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Line In 2\00", [22 x i8] zeroinitializer }, align 32
@cx18_card_hvr1600_esmt = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 0, ptr @.str.8, ptr @.str.9, i32 84082769, i32 16, i32 4, i32 223, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 7 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1296 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 3 }, %struct.cx18_card_video_input { i8 3, i8 2, i32 1568 }, %struct.cx18_card_video_input { i8 5, i8 2, i32 4 }, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 8, i16 17 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 2 }, %struct.cx18_card_audio_input { i8 3, i32 0, i16 3 }], %struct.cx18_card_audio_input { i8 1, i32 0, i16 4 }, i8 0, %struct.cx18_gpio_init { i32 12289, i32 12289 }, %struct.cx18_gpio_i2c_slave_reset { i32 12289, i32 0, i32 10, i32 40, i32 1 }, %struct.cx18_gpio_audio_input zeroinitializer, [2 x %struct.cx18_card_tuner] zeroinitializer, ptr @cx18_i2c_std, %struct.cx18_ddr { i32 3, i32 780, i32 1143082626, i32 8, i32 0, i32 0 }, ptr null }, [48 x i8] zeroinitializer }, align 32
@cx18_card_hvr1600_samsung = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 1, ptr @.str.10, ptr @.str.9, i32 84082769, i32 16, i32 4, i32 223, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 7 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1296 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 3 }, %struct.cx18_card_video_input { i8 3, i8 2, i32 1568 }, %struct.cx18_card_video_input { i8 5, i8 2, i32 4 }, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 8, i16 17 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 2 }, %struct.cx18_card_audio_input { i8 3, i32 0, i16 3 }], %struct.cx18_card_audio_input { i8 1, i32 0, i16 4 }, i8 0, %struct.cx18_gpio_init { i32 12289, i32 12289 }, %struct.cx18_gpio_i2c_slave_reset { i32 12289, i32 0, i32 10, i32 40, i32 1 }, %struct.cx18_gpio_audio_input zeroinitializer, [2 x %struct.cx18_card_tuner] zeroinitializer, ptr @cx18_i2c_std, %struct.cx18_ddr { i32 3, i32 780, i32 589499251, i32 8, i32 0, i32 2 }, ptr null }, [48 x i8] zeroinitializer }, align 32
@cx18_card_h900 = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 2, ptr @.str.11, ptr @.str.12, i32 84082769, i32 16, i32 0, i32 81, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 2 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1072 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 1 }, %struct.cx18_card_video_input zeroinitializer, %struct.cx18_card_video_input zeroinitializer, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 5, i16 0 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 0 }, %struct.cx18_card_audio_input zeroinitializer], %struct.cx18_card_audio_input { i8 1, i32 0, i16 0 }, i8 15, %struct.cx18_gpio_init zeroinitializer, %struct.cx18_gpio_i2c_slave_reset zeroinitializer, %struct.cx18_gpio_audio_input zeroinitializer, [2 x %struct.cx18_card_tuner] [%struct.cx18_card_tuner { i64 16777215, i32 71 }, %struct.cx18_card_tuner zeroinitializer], ptr @cx18_i2c_std, %struct.cx18_ddr { i32 327683, i32 1875, i32 607325828, i32 31, i32 0, i32 0 }, ptr @cx18_pci_h900 }, [48 x i8] zeroinitializer }, align 32
@cx18_card_mpc718 = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 3, ptr @.str.13, ptr @.str.14, i32 84082769, i32 16, i32 32, i32 123, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 2 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1072 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 1 }, %struct.cx18_card_video_input { i8 3, i8 2, i32 2160 }, %struct.cx18_card_video_input { i8 5, i8 2, i32 6 }, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 5, i16 0 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 1 }, %struct.cx18_card_audio_input { i8 3, i32 1, i16 1 }], %struct.cx18_card_audio_input { i8 1, i32 5, i16 2 }, i8 0, %struct.cx18_gpio_init { i32 3, i32 1 }, %struct.cx18_gpio_i2c_slave_reset zeroinitializer, %struct.cx18_gpio_audio_input { i32 3, i32 1, i32 3, i32 1 }, [2 x %struct.cx18_card_tuner] [%struct.cx18_card_tuner { i64 16777215, i32 71 }, %struct.cx18_card_tuner zeroinitializer], ptr @cx18_i2c_std, %struct.cx18_ddr { i32 771, i32 957, i32 909248870, i32 31, i32 0, i32 2 }, ptr @cx18_pci_mpc718 }, [48 x i8] zeroinitializer }, align 32
@cx18_card_cnxt_raptor_pal = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 4, ptr @.str.15, ptr @.str.12, i32 84082769, i32 16, i32 32, i32 49, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 2 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1072 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 1 }, %struct.cx18_card_video_input { i8 3, i8 2, i32 2160 }, %struct.cx18_card_video_input { i8 5, i8 2, i32 6 }, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 5, i16 0 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 1 }, %struct.cx18_card_audio_input { i8 3, i32 1, i16 1 }], %struct.cx18_card_audio_input { i8 1, i32 0, i16 2 }, i8 0, %struct.cx18_gpio_init { i32 61442, i32 4098 }, %struct.cx18_gpio_i2c_slave_reset zeroinitializer, %struct.cx18_gpio_audio_input { i32 61442, i32 4098, i32 8192, i32 16386 }, [2 x %struct.cx18_card_tuner] [%struct.cx18_card_tuner { i64 16711935, i32 38 }, %struct.cx18_card_tuner zeroinitializer], ptr @cx18_i2c_std, %struct.cx18_ddr { i32 328454, i32 1875, i32 857868627, i32 9, i32 0, i32 0 }, ptr @cx18_pci_cnxt_raptor_pal }, [48 x i8] zeroinitializer }, align 32
@cx18_card_toshiba_qosmio_dvbt = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 5, ptr @.str.16, ptr @.str.17, i32 84082769, i32 16, i32 0, i32 81, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 6 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1072 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 1 }, %struct.cx18_card_video_input zeroinitializer, %struct.cx18_card_video_input zeroinitializer, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 5, i16 0 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 1 }, %struct.cx18_card_audio_input zeroinitializer], %struct.cx18_card_audio_input zeroinitializer, i8 15, %struct.cx18_gpio_init zeroinitializer, %struct.cx18_gpio_i2c_slave_reset zeroinitializer, %struct.cx18_gpio_audio_input zeroinitializer, [2 x %struct.cx18_card_tuner] [%struct.cx18_card_tuner { i64 16777215, i32 71 }, %struct.cx18_card_tuner zeroinitializer], ptr @cx18_i2c_std, %struct.cx18_ddr { i32 514, i32 955, i32 858917475, i32 10, i32 0, i32 66 }, ptr @cx18_pci_toshiba_qosmio_dvbt }, [48 x i8] zeroinitializer }, align 32
@cx18_card_leadtek_pvr2100 = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 6, ptr @.str.18, ptr @.str.17, i32 84082769, i32 16, i32 32, i32 113, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 2 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1072 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 7 }, %struct.cx18_card_video_input { i8 6, i8 1, i32 8785920 }, %struct.cx18_card_video_input zeroinitializer, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 5, i16 0 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 1 }, %struct.cx18_card_audio_input zeroinitializer], %struct.cx18_card_audio_input { i8 1, i32 5, i16 2 }, i8 1, %struct.cx18_gpio_init { i32 7, i32 6 }, %struct.cx18_gpio_i2c_slave_reset zeroinitializer, %struct.cx18_gpio_audio_input { i32 7, i32 6, i32 2, i32 2 }, [2 x %struct.cx18_card_tuner] [%struct.cx18_card_tuner { i64 16777215, i32 71 }, %struct.cx18_card_tuner zeroinitializer], ptr @cx18_i2c_std, %struct.cx18_ddr { i32 771, i32 955, i32 606211715, i32 31, i32 0, i32 2 }, ptr @cx18_pci_leadtek_pvr2100 }, [48 x i8] zeroinitializer }, align 32
@cx18_card_leadtek_dvr3100h = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 7, ptr @.str.19, ptr @.str.20, i32 84082769, i32 16, i32 32, i32 121, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 2 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1072 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 7 }, %struct.cx18_card_video_input { i8 6, i8 1, i32 8785920 }, %struct.cx18_card_video_input zeroinitializer, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 5, i16 0 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 1 }, %struct.cx18_card_audio_input zeroinitializer], %struct.cx18_card_audio_input { i8 1, i32 5, i16 2 }, i8 1, %struct.cx18_gpio_init { i32 7, i32 6 }, %struct.cx18_gpio_i2c_slave_reset zeroinitializer, %struct.cx18_gpio_audio_input { i32 7, i32 6, i32 2, i32 2 }, [2 x %struct.cx18_card_tuner] [%struct.cx18_card_tuner { i64 16777215, i32 71 }, %struct.cx18_card_tuner zeroinitializer], ptr @cx18_i2c_std, %struct.cx18_ddr { i32 771, i32 955, i32 606211715, i32 31, i32 0, i32 2 }, ptr @cx18_pci_leadtek_dvr3100h }, [48 x i8] zeroinitializer }, align 32
@cx18_card_gotview_dvd3 = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 8, ptr @.str.21, ptr @.str.14, i32 84082769, i32 16, i32 32, i32 123, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 2 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1072 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 1 }, %struct.cx18_card_video_input { i8 3, i8 2, i32 2160 }, %struct.cx18_card_video_input { i8 5, i8 2, i32 6 }, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 5, i16 0 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 1 }, %struct.cx18_card_audio_input { i8 3, i32 1, i16 1 }], %struct.cx18_card_audio_input { i8 1, i32 5, i16 2 }, i8 0, %struct.cx18_gpio_init { i32 3, i32 1 }, %struct.cx18_gpio_i2c_slave_reset zeroinitializer, %struct.cx18_gpio_audio_input { i32 3, i32 1, i32 2, i32 1 }, [2 x %struct.cx18_card_tuner] [%struct.cx18_card_tuner { i64 16777215, i32 71 }, %struct.cx18_card_tuner zeroinitializer], ptr @cx18_i2c_std, %struct.cx18_ddr { i32 771, i32 957, i32 909248870, i32 31, i32 0, i32 2 }, ptr @cx18_pci_gotview_dvd3 }, [48 x i8] zeroinitializer }, align 32
@cx18_card_hvr1600_s5h1411 = internal constant { %struct.cx18_card, [48 x i8] } { %struct.cx18_card { i32 9, ptr @.str.8, ptr @.str.9, i32 84082769, i32 16, i32 4, i32 223, [6 x %struct.cx18_card_video_input] [%struct.cx18_card_video_input { i8 1, i8 0, i32 7 }, %struct.cx18_card_video_input { i8 2, i8 1, i32 1296 }, %struct.cx18_card_video_input { i8 4, i8 1, i32 3 }, %struct.cx18_card_video_input { i8 3, i8 2, i32 1568 }, %struct.cx18_card_video_input { i8 5, i8 2, i32 4 }, %struct.cx18_card_video_input zeroinitializer], [3 x %struct.cx18_card_audio_input] [%struct.cx18_card_audio_input { i8 1, i32 8, i16 17 }, %struct.cx18_card_audio_input { i8 2, i32 0, i16 2 }, %struct.cx18_card_audio_input { i8 3, i32 0, i16 3 }], %struct.cx18_card_audio_input { i8 1, i32 0, i16 4 }, i8 0, %struct.cx18_gpio_init { i32 14337, i32 14337 }, %struct.cx18_gpio_i2c_slave_reset { i32 14337, i32 0, i32 10, i32 40, i32 1 }, %struct.cx18_gpio_audio_input zeroinitializer, [2 x %struct.cx18_card_tuner] zeroinitializer, ptr @cx18_i2c_nxp, %struct.cx18_ddr { i32 3, i32 780, i32 1143082626, i32 8, i32 0, i32 0 }, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Hauppauge HVR-1600\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Simultaneous Digital and Analog TV capture supported\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_i2c_std = internal global { %struct.cx18_card_tuner_i2c, [46 x i8] } { %struct.cx18_card_tuner_i2c { [2 x i16] [i16 -2, i16 0], [3 x i16] [i16 67, i16 -2, i16 0], [4 x i16] [i16 97, i16 96, i16 -2, i16 0] }, [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Hauppauge HVR-1600 (Preproduction)\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Compro VideoMate H900\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Analog TV capture supported\0A\00", [35 x i8] zeroinitializer }, align 32
@cx18_pci_h900 = internal constant { [2 x %struct.cx18_card_pci_info], [20 x i8] } { [2 x %struct.cx18_card_pci_info] [%struct.cx18_card_pci_info { i16 23418, i16 6235, i16 -7936 }, %struct.cx18_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Yuan MPC718 MiniPCI DVB-T/Analog\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Experimenters needed for device to work well.\0A\09To help, mail the linux-media list (www.linuxtv.org).\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_pci_mpc718 = internal constant { [2 x %struct.cx18_card_pci_info], [20 x i8] } { [2 x %struct.cx18_card_pci_info] [%struct.cx18_card_pci_info { i16 23418, i16 4779, i16 1816 }, %struct.cx18_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Conexant Raptor PAL/SECAM\00", [38 x i8] zeroinitializer }, align 32
@cx18_pci_cnxt_raptor_pal = internal constant { [2 x %struct.cx18_card_pci_info], [20 x i8] } { [2 x %struct.cx18_card_pci_info] [%struct.cx18_card_pci_info { i16 23418, i16 5361, i16 9 }, %struct.cx18_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Toshiba Qosmio DVB-T/Analog\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"Experimenters and photos needed for device to work well.\0A\09To help, mail the linux-media list (www.linuxtv.org).\0A\00", [47 x i8] zeroinitializer }, align 32
@cx18_pci_toshiba_qosmio_dvbt = internal constant { [2 x %struct.cx18_card_pci_info], [20 x i8] } { [2 x %struct.cx18_card_pci_info] [%struct.cx18_card_pci_info { i16 23418, i16 4473, i16 272 }, %struct.cx18_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Leadtek WinFast PVR2100\00", [40 x i8] zeroinitializer }, align 32
@cx18_pci_leadtek_pvr2100 = internal constant { [2 x %struct.cx18_card_pci_info], [20 x i8] } { [2 x %struct.cx18_card_pci_info] [%struct.cx18_card_pci_info { i16 23418, i16 4221, i16 28455 }, %struct.cx18_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leadtek WinFast DVR3100 H\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Simultaneous DVB-T and Analog capture supported,\0A\09except when capturing Analog from the antenna input.\0A\00", [56 x i8] zeroinitializer }, align 32
@cx18_pci_leadtek_dvr3100h = internal constant { [2 x %struct.cx18_card_pci_info], [20 x i8] } { [2 x %struct.cx18_card_pci_info] [%struct.cx18_card_pci_info { i16 23418, i16 4221, i16 26256 }, %struct.cx18_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GoTView PCI DVD3 Hybrid\00", [40 x i8] zeroinitializer }, align 32
@cx18_pci_gotview_dvd3 = internal constant { [2 x %struct.cx18_card_pci_info], [20 x i8] } { [2 x %struct.cx18_card_pci_info] [%struct.cx18_card_pci_info { i16 23418, i16 22612, i16 13123 }, %struct.cx18_card_pci_info zeroinitializer], [20 x i8] zeroinitializer }, align 32
@cx18_i2c_nxp = internal global { %struct.cx18_card_tuner_i2c, [46 x i8] } { %struct.cx18_card_tuner_i2c { [2 x i16] [i16 -2, i16 0], [3 x i16] [i16 66, i16 67, i16 -2], [4 x i16] [i16 97, i16 96, i16 -2, i16 0] }, [46 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"cx18_card_list\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 560, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 584, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 585, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 586, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 587, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 588, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 589, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 590, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"input_strs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 610, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 612, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 613, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"cx18_card_hvr1600_esmt\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 47, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"cx18_card_hvr1600_samsung\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 141, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"cx18_card_h900\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 197, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"cx18_card_mpc718\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 244, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"cx18_card_cnxt_raptor_pal\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 364, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"cx18_card_toshiba_qosmio_dvbt\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 418, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"cx18_card_leadtek_pvr2100\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 461, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"cx18_card_leadtek_dvr3100h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 514, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"cx18_card_gotview_dvd3\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 304, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"cx18_card_hvr1600_s5h1411\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 94, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 49, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 50, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"cx18_i2c_std\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 22, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 143, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 199, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 200, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"cx18_pci_h900\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 192, i32 40 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 246, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 247, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"cx18_pci_mpc718\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 239, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 366, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"cx18_pci_cnxt_raptor_pal\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 359, i32 40 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 420, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 421, i32 13 }
@___asan_gen_.127 = private unnamed_addr constant [29 x i8] c"cx18_pci_toshiba_qosmio_dvbt\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 413, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 463, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"cx18_pci_leadtek_pvr2100\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 456, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 516, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 517, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant [26 x i8] c"cx18_pci_leadtek_dvr3100h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 509, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 306, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"cx18_pci_gotview_dvd3\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 299, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"cx18_i2c_nxp\00", align 1
@___asan_gen_.152 = private constant [39 x i8] c"../drivers/media/pci/cx18/cx18-cards.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 32, i32 35 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @cx18_card_list, ptr @cx18_get_input.input_strs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cx18_get_audio_input.input_strs, ptr @.str.6, ptr @.str.7, ptr @cx18_card_hvr1600_esmt, ptr @cx18_card_hvr1600_samsung, ptr @cx18_card_h900, ptr @cx18_card_mpc718, ptr @cx18_card_cnxt_raptor_pal, ptr @cx18_card_toshiba_qosmio_dvbt, ptr @cx18_card_leadtek_pvr2100, ptr @cx18_card_leadtek_dvr3100h, ptr @cx18_card_gotview_dvd3, ptr @cx18_card_hvr1600_s5h1411, ptr @.str.8, ptr @.str.9, ptr @cx18_i2c_std, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cx18_pci_h900, ptr @.str.13, ptr @.str.14, ptr @cx18_pci_mpc718, ptr @.str.15, ptr @cx18_pci_cnxt_raptor_pal, ptr @.str.16, ptr @.str.17, ptr @cx18_pci_toshiba_qosmio_dvbt, ptr @.str.18, ptr @cx18_pci_leadtek_pvr2100, ptr @.str.19, ptr @.str.20, ptr @cx18_pci_leadtek_dvr3100h, ptr @.str.21, ptr @cx18_pci_gotview_dvd3, ptr @cx18_i2c_nxp], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_get_input.input_strs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_get_audio_input.input_strs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_hvr1600_esmt to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_hvr1600_samsung to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_h900 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_mpc718 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_cnxt_raptor_pal to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_toshiba_qosmio_dvbt to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_leadtek_pvr2100 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_leadtek_dvr3100h to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_gotview_dvd3 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_card_hvr1600_s5h1411 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_i2c_std to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_h900 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_mpc718 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_cnxt_raptor_pal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_toshiba_qosmio_dvbt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_leadtek_pvr2100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_leadtek_dvr3100h to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_pci_gotview_dvd3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_i2c_nxp to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cx18_get_card(i16 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %index)
  %cmp = icmp ugt i16 %index, 9
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %index to i32
  %arrayidx = getelementptr [10 x ptr], ptr @cx18_card_list, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_get_input(ptr nocapture noundef readonly %cx, i16 noundef zeroext %index, ptr noundef %input) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nof_inputs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 10
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
  %card = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 8
  %video_inputs = getelementptr inbounds %struct.cx18_card, ptr %4, i32 0, i32 7
  %add.ptr = getelementptr %struct.cx18_card_video_input, ptr %video_inputs, i32 %conv
  %5 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %input, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 4
  %conv7 = zext i8 %7 to i32
  %sub = add nsw i32 %conv7, -1
  %arrayidx = getelementptr [6 x ptr], ptr @cx18_get_input.input_strs, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %9, i32 noundef 32) #3
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp10 = icmp eq i8 %11, 1
  %cond = select i1 %cmp10, i32 1, i32 2
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %type, align 4
  %nof_audio_inputs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 11
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
  %tuner_std = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 67
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
define dso_local i32 @cx18_get_audio_input(ptr nocapture noundef readonly %cx, i16 noundef zeroext %index, ptr noundef %audio) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %2 = call ptr @memset(ptr %audio, i32 0, i32 52)
  %nof_audio_inputs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 11
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
  %audio_inputs = getelementptr inbounds %struct.cx18_card, ptr %1, i32 0, i32 8
  %add.ptr = getelementptr %struct.cx18_card_audio_input, ptr %audio_inputs, i32 %conv
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 4
  %conv5 = zext i8 %7 to i32
  %sub = add nsw i32 %conv5, -1
  %arrayidx = getelementptr [3 x ptr], ptr @cx18_get_audio_input.input_strs, i32 0, i32 %sub
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 585, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 586, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 587, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 588, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 589, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 590, i32 3}
!12 = !{ptr @cx18_get_input.input_strs, !13, !"input_strs", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 584, i32 28}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 612, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 613, i32 3}
!18 = !{ptr @cx18_get_audio_input.input_strs, !19, !"input_strs", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 610, i32 28}
!20 = !{ptr @cx18_card_list, !21, !"cx18_card_list", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 560, i32 32}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 49, i32 10}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 50, i32 13}
!26 = !{ptr @cx18_card_hvr1600_esmt, !27, !"cx18_card_hvr1600_esmt", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 47, i32 31}
!28 = !{ptr @cx18_i2c_std, !29, !"cx18_i2c_std", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 22, i32 35}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 143, i32 10}
!32 = !{ptr @cx18_card_hvr1600_samsung, !33, !"cx18_card_hvr1600_samsung", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 141, i32 31}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 199, i32 10}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 200, i32 13}
!38 = !{ptr @cx18_card_h900, !39, !"cx18_card_h900", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 197, i32 31}
!40 = !{ptr @cx18_pci_h900, !41, !"cx18_pci_h900", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 192, i32 40}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 246, i32 10}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 247, i32 13}
!46 = !{ptr @cx18_card_mpc718, !47, !"cx18_card_mpc718", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 244, i32 31}
!48 = !{ptr @cx18_pci_mpc718, !49, !"cx18_pci_mpc718", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 239, i32 40}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 366, i32 10}
!52 = !{ptr @cx18_card_cnxt_raptor_pal, !53, !"cx18_card_cnxt_raptor_pal", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 364, i32 31}
!54 = !{ptr @cx18_pci_cnxt_raptor_pal, !55, !"cx18_pci_cnxt_raptor_pal", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 359, i32 40}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 420, i32 10}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 421, i32 13}
!60 = !{ptr @cx18_card_toshiba_qosmio_dvbt, !61, !"cx18_card_toshiba_qosmio_dvbt", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 418, i32 31}
!62 = !{ptr @cx18_pci_toshiba_qosmio_dvbt, !63, !"cx18_pci_toshiba_qosmio_dvbt", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 413, i32 40}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 463, i32 10}
!66 = !{ptr @cx18_card_leadtek_pvr2100, !67, !"cx18_card_leadtek_pvr2100", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 461, i32 31}
!68 = !{ptr @cx18_pci_leadtek_pvr2100, !69, !"cx18_pci_leadtek_pvr2100", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 456, i32 40}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 516, i32 10}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 517, i32 13}
!74 = !{ptr @cx18_card_leadtek_dvr3100h, !75, !"cx18_card_leadtek_dvr3100h", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 514, i32 31}
!76 = !{ptr @cx18_pci_leadtek_dvr3100h, !77, !"cx18_pci_leadtek_dvr3100h", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 509, i32 40}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 306, i32 10}
!80 = !{ptr @cx18_card_gotview_dvd3, !81, !"cx18_card_gotview_dvd3", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 304, i32 31}
!82 = !{ptr @cx18_pci_gotview_dvd3, !83, !"cx18_pci_gotview_dvd3", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 299, i32 40}
!84 = !{ptr @cx18_card_hvr1600_s5h1411, !85, !"cx18_card_hvr1600_s5h1411", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 94, i32 31}
!86 = !{ptr @cx18_i2c_nxp, !87, !"cx18_i2c_nxp", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cx18/cx18-cards.c", i32 32, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
