; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-ioctl.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.cx18_open_id = type { %struct.v4l2_fh, i32, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.161, %struct.anon.162, %struct.anon.163, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168 }
%struct.anon.161 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.162 = type { ptr, ptr }
%struct.anon.163 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.164 = type { ptr, ptr }
%struct.anon.165 = type { ptr, ptr, ptr }
%struct.anon.166 = type { ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
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
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.141 }
%union.anon.141 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.143, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.143 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cx18_card = type { i32, ptr, ptr, i32, i32, i32, i32, [6 x %struct.cx18_card_video_input], [3 x %struct.cx18_card_audio_input], %struct.cx18_card_audio_input, i8, %struct.cx18_gpio_init, %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_audio_input, [2 x %struct.cx18_card_tuner], ptr, %struct.cx18_ddr, ptr }
%struct.cx18_card_video_input = type { i8, i8, i32 }
%struct.cx18_card_audio_input = type { i8, i32, i16 }
%struct.cx18_gpio_init = type { i32, i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }
%struct.cx18_gpio_audio_input = type { i32, i32, i32, i32 }
%struct.cx18_card_tuner = type { i64, i32 }
%struct.cx18_ddr = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.131, i16, i16, i16, [10 x i16] }
%union.anon.131 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.cx18_dvb = type { ptr, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, ptr, %struct.dvb_net, i32, i32, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.v4l2_enc_idx = type { i32, i32, [4 x i32], [64 x %struct.v4l2_enc_idx_entry] }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.cx18_enc_idx_entry = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_encoder_cmd = type { i32, i32, %union.anon.151 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.129 }
%union.anon.129 = type { i32, [28 x i8] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  info: Input unchanged\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx18_s_input\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/cx18/cx18-ioctl.c\00", [60 x i8] zeroinitializer }, align 32
@cx18_s_input._entry_ptr = internal global ptr @cx18_s_input._entry, section ".printk_index", align 4
@cx18_s_input._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: Changing input from %d to %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cx18_s_input._entry_ptr.5 = internal global ptr @cx18_s_input._entry.3, section ".printk_index", align 4
@cx18_s_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: v4l2 ioctl: set frequency %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_s_frequency\00", [47 x i8] zeroinitializer }, align 32
@cx18_s_frequency._entry_ptr = internal global ptr @cx18_s_frequency._entry, section ".printk_index", align 4
@cx18_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  info: Switching standard to %llx.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cx18_s_std\00", [21 x i8] zeroinitializer }, align 32
@cx18_s_std._entry_ptr = internal global ptr @cx18_s_std._entry, section ".printk_index", align 4
@cx18_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cx18_querycap, ptr @cx18_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @cx18_g_fmt_vbi_cap, ptr null, ptr @cx18_g_fmt_sliced_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @cx18_s_fmt_vbi_cap, ptr null, ptr @cx18_s_fmt_sliced_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @cx18_try_fmt_vbi_cap, ptr null, ptr @cx18_try_fmt_sliced_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_reqbufs, ptr @cx18_querybuf, ptr @cx18_qbuf, ptr null, ptr @cx18_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_streamon, ptr @cx18_streamoff, ptr @cx18_g_std, ptr @cx18_s_std, ptr null, ptr @cx18_enum_input, ptr @cx18_g_input, ptr @cx18_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_enumaudio, ptr @cx18_g_audio, ptr @cx18_s_audio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx18_g_pixelaspect, ptr @cx18_g_selection, ptr null, ptr null, ptr null, ptr @cx18_g_enc_index, ptr @cx18_encoder_cmd, ptr @cx18_try_encoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr @cx18_g_tuner, ptr @cx18_s_tuner, ptr @cx18_g_frequency, ptr @cx18_s_frequency, ptr null, ptr @cx18_g_sliced_vbi_cap, ptr @cx18_log_status, ptr null, ptr @cx18_g_register, ptr @cx18_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr @cx18_default }, [120 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cx18\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@cx18_enum_fmt_vid_cap.formats = internal constant { [3 x %struct.v4l2_fmtdesc], [32 x i8] } { [3 x %struct.v4l2_fmtdesc] [%struct.v4l2_fmtdesc { i32 0, i32 1, i32 0, [32 x i8] c"HM12 (YUV 4:1:1)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 842091848, i32 0, [3 x i32] zeroinitializer }, %struct.v4l2_fmtdesc { i32 1, i32 1, i32 1, [32 x i8] c"MPEG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1195724877, i32 0, [3 x i32] zeroinitializer }, %struct.v4l2_fmtdesc { i32 2, i32 1, i32 0, [32 x i8] c"UYVY 4:2:2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1498831189, i32 0, [3 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@_cx18_process_idx_data.mapping = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 0, i32 1, i32 -1, i32 2, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cx18_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_START\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_encoder_cmd\00", [47 x i8] zeroinitializer }, align 32
@cx18_encoder_cmd._entry_ptr = internal global ptr @cx18_encoder_cmd._entry, section ".printk_index", align 4
@cx18_encoder_cmd._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_STOP\0A\00", [63 x i8] zeroinitializer }, align 32
@cx18_encoder_cmd._entry_ptr.16 = internal global ptr @cx18_encoder_cmd._entry.14, section ".printk_index", align 4
@cx18_encoder_cmd._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_PAUSE\0A\00", [62 x i8] zeroinitializer }, align 32
@cx18_encoder_cmd._entry_ptr.19 = internal global ptr @cx18_encoder_cmd._entry.17, section ".printk_index", align 4
@cx18_encoder_cmd._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: Can't find valid task handle for V4L2_ENC_CMD_PAUSE\0A\00", [37 x i8] zeroinitializer }, align 32
@cx18_encoder_cmd._entry_ptr.22 = internal global ptr @cx18_encoder_cmd._entry.20, section ".printk_index", align 4
@cx18_encoder_cmd._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:  ioctl: V4L2_ENC_CMD_RESUME\0A\00", [61 x i8] zeroinitializer }, align 32
@cx18_encoder_cmd._entry_ptr.25 = internal global ptr @cx18_encoder_cmd._entry.23, section ".printk_index", align 4
@cx18_encoder_cmd._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: Can't find valid task handle for V4L2_ENC_CMD_RESUME\0A\00", [36 x i8] zeroinitializer }, align 32
@cx18_encoder_cmd._entry_ptr.28 = internal global ptr @cx18_encoder_cmd._entry.26, section ".printk_index", align 4
@cx18_encoder_cmd._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  ioctl: Unknown cmd %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cx18_encoder_cmd._entry_ptr.31 = internal global ptr @cx18_encoder_cmd._entry.29, section ".printk_index", align 4
@cx18_try_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.32, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx18_try_encoder_cmd\00", [43 x i8] zeroinitializer }, align 32
@cx18_try_encoder_cmd._entry_ptr = internal global ptr @cx18_try_encoder_cmd._entry, section ".printk_index", align 4
@cx18_try_encoder_cmd._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.32, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_try_encoder_cmd._entry_ptr.34 = internal global ptr @cx18_try_encoder_cmd._entry.33, section ".printk_index", align 4
@cx18_try_encoder_cmd._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.32, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_try_encoder_cmd._entry_ptr.36 = internal global ptr @cx18_try_encoder_cmd._entry.35, section ".printk_index", align 4
@cx18_try_encoder_cmd._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.32, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_try_encoder_cmd._entry_ptr.38 = internal global ptr @cx18_try_encoder_cmd._entry.37, section ".printk_index", align 4
@cx18_try_encoder_cmd._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_try_encoder_cmd._entry_ptr.40 = internal global ptr @cx18_try_encoder_cmd._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18 Radio Tuner\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx18 TV Tuner\00", [18 x i8] zeroinitializer }, align 32
@cx18_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Version: %s  Card: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx18_log_status\00", [16 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr = internal global ptr @cx18_log_status._entry, section ".printk_index", align 4
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.5.1\00", [26 x i8] zeroinitializer }, align 32
@cx18_log_status._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Video Input: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr.48 = internal global ptr @cx18_log_status._entry.46, section ".printk_index", align 4
@cx18_log_status._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Audio Input: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr.51 = internal global ptr @cx18_log_status._entry.49, section ".printk_index", align 4
@cx18_log_status._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: GPIO:  direction 0x%08x, value 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr.54 = internal global ptr @cx18_log_status._entry.52, section ".printk_index", align 4
@cx18_log_status._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.2, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: Tuner: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr.57 = internal global ptr @cx18_log_status._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TV\00", [29 x i8] zeroinitializer }, align 32
@cx18_log_status._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.44, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Status flags: 0x%08lx\0A\00", [35 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr.62 = internal global ptr @cx18_log_status._entry.60, section ".printk_index", align 4
@cx18_log_status._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.44, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s: Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr.65 = internal global ptr @cx18_log_status._entry.63, section ".printk_index", align 4
@cx18_log_status._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.44, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Read MPEG/VBI: %lld/%lld bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_log_status._entry_ptr.68 = internal global ptr @cx18_log_status._entry.66, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 516, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 520, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 562, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 604, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"cx18_ioctl_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1075, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 390, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 393, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 468, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 677, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 928, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 933, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 940, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 948, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 956, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 964, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 972, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 985, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 990, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 995, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1000, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1005, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 634, i32 21 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 636, i32 21 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1018, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1027, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1028, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1030, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1033, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1036, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1042, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [39 x i8] c"../drivers/media/pci/cx18/cx18-ioctl.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 1048, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @cx18_encoder_cmd._entry, ptr @cx18_encoder_cmd._entry.14, ptr @cx18_encoder_cmd._entry.17, ptr @cx18_encoder_cmd._entry.20, ptr @cx18_encoder_cmd._entry.23, ptr @cx18_encoder_cmd._entry.26, ptr @cx18_encoder_cmd._entry.29, ptr @cx18_encoder_cmd._entry_ptr, ptr @cx18_encoder_cmd._entry_ptr.16, ptr @cx18_encoder_cmd._entry_ptr.19, ptr @cx18_encoder_cmd._entry_ptr.22, ptr @cx18_encoder_cmd._entry_ptr.25, ptr @cx18_encoder_cmd._entry_ptr.28, ptr @cx18_encoder_cmd._entry_ptr.31, ptr @cx18_log_status._entry, ptr @cx18_log_status._entry.46, ptr @cx18_log_status._entry.49, ptr @cx18_log_status._entry.52, ptr @cx18_log_status._entry.55, ptr @cx18_log_status._entry.60, ptr @cx18_log_status._entry.63, ptr @cx18_log_status._entry.66, ptr @cx18_log_status._entry_ptr, ptr @cx18_log_status._entry_ptr.48, ptr @cx18_log_status._entry_ptr.51, ptr @cx18_log_status._entry_ptr.54, ptr @cx18_log_status._entry_ptr.57, ptr @cx18_log_status._entry_ptr.62, ptr @cx18_log_status._entry_ptr.65, ptr @cx18_log_status._entry_ptr.68, ptr @cx18_s_frequency._entry, ptr @cx18_s_frequency._entry_ptr, ptr @cx18_s_input._entry, ptr @cx18_s_input._entry.3, ptr @cx18_s_input._entry_ptr, ptr @cx18_s_input._entry_ptr.5, ptr @cx18_s_std._entry, ptr @cx18_s_std._entry_ptr, ptr @cx18_try_encoder_cmd._entry, ptr @cx18_try_encoder_cmd._entry.33, ptr @cx18_try_encoder_cmd._entry.35, ptr @cx18_try_encoder_cmd._entry.37, ptr @cx18_try_encoder_cmd._entry.39, ptr @cx18_try_encoder_cmd._entry_ptr, ptr @cx18_try_encoder_cmd._entry_ptr.34, ptr @cx18_try_encoder_cmd._entry_ptr.36, ptr @cx18_try_encoder_cmd._entry_ptr.38, ptr @cx18_try_encoder_cmd._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cx18_ioctl_ops, ptr @.str.10, ptr @.str.11, ptr @cx18_enum_fmt_vid_cap.formats, ptr @_cx18_process_idx_data.mapping, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_input._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_enum_fmt_vid_cap.formats to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cx18_process_idx_data.mapping to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_encoder_cmd._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_encoder_cmd._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_encoder_cmd._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_encoder_cmd._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_encoder_cmd._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_encoder_cmd._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_try_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_try_encoder_cmd._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_try_encoder_cmd._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_try_encoder_cmd._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_try_encoder_cmd._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_log_status._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @cx18_service2vbi(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 4096, label %sw.bb1
    i32 16384, label %sw.bb2
    i32 1024, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.default ], [ 7, %sw.bb3 ], [ 5, %sw.bb2 ], [ 4, %sw.bb1 ], [ 1, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_expand_service_set(ptr nocapture noundef %fmt, i32 noundef %is_pal) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fmt, align 4
  store i16 0, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_pal)
  %tobool.not.i = icmp eq i32 %is_pal, 0
  %conv2.i = select i1 %tobool.not.i, i16 4096, i16 17409
  %and.i = and i16 %1, %conv2.i
  %conv4.i = zext i16 %and.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i)
  %cmp.i = icmp eq i16 %and.i, 0
  %and23.i = and i32 %conv4.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp ne i32 %and23.i, 0
  %and34.i = and i32 %conv4.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp ne i32 %and34.i, 0
  %and12.i = and i32 %conv4.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br label %for.body4

for.body4:                                        ; preds = %select_service_from_set.exit.for.body4_crit_edge, %entry
  %l.018 = phi i32 [ 0, %entry ], [ %inc, %select_service_from_set.exit.for.body4_crit_edge ]
  br i1 %cmp.i, label %for.body4.select_service_from_set.exit_crit_edge, label %lor.lhs.false.i

for.body4.select_service_from_set.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit

lor.lhs.false.i:                                  ; preds = %for.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.018)
  %cmp.i.i = icmp ult i32 %l.018, 6
  %2 = or i1 %tobool.not.i, %cmp.i.i
  br i1 %2, label %valid_service_line.exit.i, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

valid_service_line.exit.i:                        ; preds = %lor.lhs.false.i
  %3 = add nsw i32 %l.018, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %4 = icmp ult i32 %3, 12
  %5 = and i1 %tobool.not.i, %4
  br i1 %5, label %valid_service_line.exit.i.if.end.i_crit_edge, label %valid_service_line.exit.i.select_service_from_set.exit_crit_edge

valid_service_line.exit.i.select_service_from_set.exit_crit_edge: ; preds = %valid_service_line.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit

valid_service_line.exit.i.if.end.i_crit_edge:     ; preds = %valid_service_line.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %valid_service_line.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  br i1 %tobool.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.018)
  %cmp9.i = icmp ne i32 %l.018, 21
  %or.cond.i = or i1 %tobool13.not.i, %cmp9.i
  br i1 %or.cond.i, label %if.then8.i.for.body.i.preheader_crit_edge, label %if.then8.i.select_service_from_set.exit_crit_edge

if.then8.i.select_service_from_set.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit

if.then8.i.for.body.i.preheader_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end26.i.for.body.i.preheader_crit_edge, %if.then8.i.for.body.i.preheader_crit_edge
  br label %for.body.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %l.018)
  %cmp16.i = icmp eq i32 %l.018, 16
  %6 = and i1 %tobool24.not.i, %cmp16.i
  br i1 %6, label %if.else.i.select_service_from_set.exit_crit_edge, label %if.end26.i

if.else.i.select_service_from_set.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit

if.end26.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.018)
  %cmp27.i = icmp eq i32 %l.018, 23
  br i1 %cmp27.i, label %select_service_from_set.exit.thread, label %if.end26.i.for.body.i.preheader_crit_edge

if.end26.i.for.body.i.preheader_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.preheader

select_service_from_set.exit.thread:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = and i1 %tobool35.not.i, %cmp27.i
  %.mux.i.le = select i1 %7, i16 16384, i16 0
  %arrayidx526 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 %l.018
  %8 = ptrtoint ptr %arrayidx526 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.mux.i.le, ptr %arrayidx526, align 2
  br label %for.body4.1.preheader

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.select_service_from_set.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.select_service_from_set.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.076.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %shl.i = shl nuw i32 1, %i.076.i
  %and46.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %for.cond.i, label %if.then48.i

if.then48.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv50.i = trunc i32 %shl.i to i16
  br label %select_service_from_set.exit

select_service_from_set.exit:                     ; preds = %if.then48.i, %for.cond.i.select_service_from_set.exit_crit_edge, %if.else.i.select_service_from_set.exit_crit_edge, %if.then8.i.select_service_from_set.exit_crit_edge, %valid_service_line.exit.i.select_service_from_set.exit_crit_edge, %for.body4.select_service_from_set.exit_crit_edge
  %retval.0.i = phi i16 [ %conv50.i, %if.then48.i ], [ 0, %valid_service_line.exit.i.select_service_from_set.exit_crit_edge ], [ 0, %for.body4.select_service_from_set.exit_crit_edge ], [ 4096, %if.then8.i.select_service_from_set.exit_crit_edge ], [ 1024, %if.else.i.select_service_from_set.exit_crit_edge ], [ 0, %for.cond.i.select_service_from_set.exit_crit_edge ]
  %arrayidx5 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 %l.018
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %retval.0.i, ptr %arrayidx5, align 2
  %inc = add nuw nsw i32 %l.018, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %select_service_from_set.exit.for.body4.1.preheader_crit_edge, label %select_service_from_set.exit.for.body4_crit_edge

select_service_from_set.exit.for.body4_crit_edge: ; preds = %select_service_from_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4

select_service_from_set.exit.for.body4.1.preheader_crit_edge: ; preds = %select_service_from_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.1.preheader

for.body4.1.preheader:                            ; preds = %select_service_from_set.exit.for.body4.1.preheader_crit_edge, %select_service_from_set.exit.thread
  br label %for.body4.1

for.body4.1:                                      ; preds = %select_service_from_set.exit.1.for.body4.1_crit_edge, %for.body4.1.preheader
  %l.018.1 = phi i32 [ %inc.1, %select_service_from_set.exit.1.for.body4.1_crit_edge ], [ 0, %for.body4.1.preheader ]
  br i1 %cmp.i, label %for.body4.1.select_service_from_set.exit.1_crit_edge, label %lor.lhs.false.i.1

for.body4.1.select_service_from_set.exit.1_crit_edge: ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1

lor.lhs.false.i.1:                                ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.018.1)
  %cmp.i.i.1 = icmp ult i32 %l.018.1, 6
  %10 = or i1 %tobool.not.i, %cmp.i.i.1
  br i1 %10, label %valid_service_line.exit.i.1, label %land.lhs.true6.i.i.1

land.lhs.true6.i.i.1:                             ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.018.1)
  %cmp7.i.i.1 = icmp ult i32 %l.018.1, 23
  br i1 %cmp7.i.i.1, label %land.lhs.true6.i.i.1.if.end.i.1_crit_edge, label %land.lhs.true6.i.i.1.select_service_from_set.exit.1_crit_edge

land.lhs.true6.i.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %land.lhs.true6.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1

land.lhs.true6.i.i.1.if.end.i.1_crit_edge:        ; preds = %land.lhs.true6.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.1

valid_service_line.exit.i.1:                      ; preds = %lor.lhs.false.i.1
  %11 = add nsw i32 %l.018.1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %12 = icmp ult i32 %11, 12
  %13 = and i1 %tobool.not.i, %12
  br i1 %13, label %valid_service_line.exit.i.1.if.end.i.1_crit_edge, label %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge

valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %valid_service_line.exit.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1

valid_service_line.exit.i.1.if.end.i.1_crit_edge: ; preds = %valid_service_line.exit.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %valid_service_line.exit.i.1.if.end.i.1_crit_edge, %land.lhs.true6.i.i.1.if.end.i.1_crit_edge
  br i1 %tobool.not.i, label %if.then8.i.1, label %if.end26.i.1

if.end26.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.018.1)
  %cmp27.i.1 = icmp eq i32 %l.018.1, 23
  br i1 %cmp27.i.1, label %select_service_from_set.exit.1.thread, label %if.end26.i.1.for.body.i.1.preheader_crit_edge

if.end26.i.1.for.body.i.1.preheader_crit_edge:    ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.1.preheader

select_service_from_set.exit.1.thread:            ; preds = %if.end26.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.130 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 %l.018.1
  %14 = ptrtoint ptr %arrayidx5.130 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %arrayidx5.130, align 2
  br label %for.inc6.1

if.then8.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.018.1)
  %cmp9.i.1 = icmp ne i32 %l.018.1, 21
  %or.cond.i.1 = or i1 %tobool13.not.i, %cmp9.i.1
  br i1 %or.cond.i.1, label %if.then8.i.1.for.body.i.1.preheader_crit_edge, label %if.then8.i.1.select_service_from_set.exit.1_crit_edge

if.then8.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1

if.then8.i.1.for.body.i.1.preheader_crit_edge:    ; preds = %if.then8.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.1.preheader

for.body.i.1.preheader:                           ; preds = %if.then8.i.1.for.body.i.1.preheader_crit_edge, %if.end26.i.1.for.body.i.1.preheader_crit_edge
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.cond.i.1.for.body.i.1_crit_edge, %for.body.i.1.preheader
  %i.076.i.1 = phi i32 [ %inc.i.1, %for.cond.i.1.for.body.i.1_crit_edge ], [ 0, %for.body.i.1.preheader ]
  %shl.i.1 = shl nuw i32 1, %i.076.i.1
  %and46.i.1 = and i32 %shl.i.1, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.1)
  %tobool47.not.i.1 = icmp eq i32 %and46.i.1, 0
  br i1 %tobool47.not.i.1, label %for.cond.i.1, label %if.then48.i.1

if.then48.i.1:                                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %conv50.i.1 = trunc i32 %shl.i.1 to i16
  br label %select_service_from_set.exit.1

for.cond.i.1:                                     ; preds = %for.body.i.1
  %inc.i.1 = add nuw nsw i32 %i.076.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 32
  br i1 %exitcond.not.i.1, label %for.cond.i.1.select_service_from_set.exit.1_crit_edge, label %for.cond.i.1.for.body.i.1_crit_edge

for.cond.i.1.for.body.i.1_crit_edge:              ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.1

for.cond.i.1.select_service_from_set.exit.1_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1

select_service_from_set.exit.1:                   ; preds = %for.cond.i.1.select_service_from_set.exit.1_crit_edge, %if.then48.i.1, %if.then8.i.1.select_service_from_set.exit.1_crit_edge, %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge, %land.lhs.true6.i.i.1.select_service_from_set.exit.1_crit_edge, %for.body4.1.select_service_from_set.exit.1_crit_edge
  %retval.0.i.1 = phi i16 [ %conv50.i.1, %if.then48.i.1 ], [ 0, %valid_service_line.exit.i.1.select_service_from_set.exit.1_crit_edge ], [ 0, %for.body4.1.select_service_from_set.exit.1_crit_edge ], [ 4096, %if.then8.i.1.select_service_from_set.exit.1_crit_edge ], [ 0, %land.lhs.true6.i.i.1.select_service_from_set.exit.1_crit_edge ], [ 0, %for.cond.i.1.select_service_from_set.exit.1_crit_edge ]
  %arrayidx5.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 %l.018.1
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %retval.0.i.1, ptr %arrayidx5.1, align 2
  %inc.1 = add nuw nsw i32 %l.018.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 24
  br i1 %exitcond.1.not, label %select_service_from_set.exit.1.for.inc6.1_crit_edge, label %select_service_from_set.exit.1.for.body4.1_crit_edge

select_service_from_set.exit.1.for.body4.1_crit_edge: ; preds = %select_service_from_set.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.1

select_service_from_set.exit.1.for.inc6.1_crit_edge: ; preds = %select_service_from_set.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6.1

for.inc6.1:                                       ; preds = %select_service_from_set.exit.1.for.inc6.1_crit_edge, %select_service_from_set.exit.1.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @cx18_get_service_set(ptr nocapture noundef readonly %fmt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 0
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx4, align 2
  %arrayidx4.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx4.1, align 2
  %or15.1 = or i16 %3, %1
  %arrayidx4.2 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4.2, align 2
  %or15.2 = or i16 %5, %or15.1
  %arrayidx4.3 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4.3, align 2
  %or15.3 = or i16 %7, %or15.2
  %arrayidx4.4 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4.4, align 2
  %or15.4 = or i16 %9, %or15.3
  %arrayidx4.5 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx4.5, align 2
  %or15.5 = or i16 %11, %or15.4
  %arrayidx4.6 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx4.6, align 2
  %or15.6 = or i16 %13, %or15.5
  %arrayidx4.7 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx4.7, align 2
  %or15.7 = or i16 %15, %or15.6
  %arrayidx4.8 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx4.8, align 2
  %or15.8 = or i16 %17, %or15.7
  %arrayidx4.9 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx4.9, align 2
  %or15.9 = or i16 %19, %or15.8
  %arrayidx4.10 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 10
  %20 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx4.10, align 2
  %or15.10 = or i16 %21, %or15.9
  %arrayidx4.11 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 11
  %22 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx4.11, align 2
  %or15.11 = or i16 %23, %or15.10
  %arrayidx4.12 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 12
  %24 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx4.12, align 2
  %or15.12 = or i16 %25, %or15.11
  %arrayidx4.13 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 13
  %26 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx4.13, align 2
  %or15.13 = or i16 %27, %or15.12
  %arrayidx4.14 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 14
  %28 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx4.14, align 2
  %or15.14 = or i16 %29, %or15.13
  %arrayidx4.15 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 15
  %30 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx4.15, align 2
  %or15.15 = or i16 %31, %or15.14
  %arrayidx4.16 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx4.16 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx4.16, align 2
  %or15.16 = or i16 %33, %or15.15
  %arrayidx4.17 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 17
  %34 = ptrtoint ptr %arrayidx4.17 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx4.17, align 2
  %or15.17 = or i16 %35, %or15.16
  %arrayidx4.18 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 18
  %36 = ptrtoint ptr %arrayidx4.18 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx4.18, align 2
  %or15.18 = or i16 %37, %or15.17
  %arrayidx4.19 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 19
  %38 = ptrtoint ptr %arrayidx4.19 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx4.19, align 2
  %or15.19 = or i16 %39, %or15.18
  %arrayidx4.20 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 20
  %40 = ptrtoint ptr %arrayidx4.20 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx4.20, align 2
  %or15.20 = or i16 %41, %or15.19
  %arrayidx4.21 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 21
  %42 = ptrtoint ptr %arrayidx4.21 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx4.21, align 2
  %or15.21 = or i16 %43, %or15.20
  %arrayidx4.22 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 22
  %44 = ptrtoint ptr %arrayidx4.22 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx4.22, align 2
  %or15.22 = or i16 %45, %or15.21
  %arrayidx4.23 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 23
  %46 = ptrtoint ptr %arrayidx4.23 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx4.23, align 2
  %or15.23 = or i16 %47, %or15.22
  %arrayidx4.120 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 0
  %48 = ptrtoint ptr %arrayidx4.120 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx4.120, align 2
  %or15.121 = or i16 %49, %or15.23
  %arrayidx4.1.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 1
  %50 = ptrtoint ptr %arrayidx4.1.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx4.1.1, align 2
  %or15.1.1 = or i16 %51, %or15.121
  %arrayidx4.2.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 2
  %52 = ptrtoint ptr %arrayidx4.2.1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx4.2.1, align 2
  %or15.2.1 = or i16 %53, %or15.1.1
  %arrayidx4.3.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 3
  %54 = ptrtoint ptr %arrayidx4.3.1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx4.3.1, align 2
  %or15.3.1 = or i16 %55, %or15.2.1
  %arrayidx4.4.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 4
  %56 = ptrtoint ptr %arrayidx4.4.1 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx4.4.1, align 2
  %or15.4.1 = or i16 %57, %or15.3.1
  %arrayidx4.5.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 5
  %58 = ptrtoint ptr %arrayidx4.5.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx4.5.1, align 2
  %or15.5.1 = or i16 %59, %or15.4.1
  %arrayidx4.6.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 6
  %60 = ptrtoint ptr %arrayidx4.6.1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx4.6.1, align 2
  %or15.6.1 = or i16 %61, %or15.5.1
  %arrayidx4.7.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 7
  %62 = ptrtoint ptr %arrayidx4.7.1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx4.7.1, align 2
  %or15.7.1 = or i16 %63, %or15.6.1
  %arrayidx4.8.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 8
  %64 = ptrtoint ptr %arrayidx4.8.1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx4.8.1, align 2
  %or15.8.1 = or i16 %65, %or15.7.1
  %arrayidx4.9.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 9
  %66 = ptrtoint ptr %arrayidx4.9.1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx4.9.1, align 2
  %or15.9.1 = or i16 %67, %or15.8.1
  %arrayidx4.10.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 10
  %68 = ptrtoint ptr %arrayidx4.10.1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx4.10.1, align 2
  %or15.10.1 = or i16 %69, %or15.9.1
  %arrayidx4.11.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 11
  %70 = ptrtoint ptr %arrayidx4.11.1 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx4.11.1, align 2
  %or15.11.1 = or i16 %71, %or15.10.1
  %arrayidx4.12.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 12
  %72 = ptrtoint ptr %arrayidx4.12.1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx4.12.1, align 2
  %or15.12.1 = or i16 %73, %or15.11.1
  %arrayidx4.13.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 13
  %74 = ptrtoint ptr %arrayidx4.13.1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx4.13.1, align 2
  %or15.13.1 = or i16 %75, %or15.12.1
  %arrayidx4.14.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 14
  %76 = ptrtoint ptr %arrayidx4.14.1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx4.14.1, align 2
  %or15.14.1 = or i16 %77, %or15.13.1
  %arrayidx4.15.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 15
  %78 = ptrtoint ptr %arrayidx4.15.1 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx4.15.1, align 2
  %or15.15.1 = or i16 %79, %or15.14.1
  %arrayidx4.16.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 16
  %80 = ptrtoint ptr %arrayidx4.16.1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx4.16.1, align 2
  %or15.16.1 = or i16 %81, %or15.15.1
  %arrayidx4.17.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 17
  %82 = ptrtoint ptr %arrayidx4.17.1 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx4.17.1, align 2
  %or15.17.1 = or i16 %83, %or15.16.1
  %arrayidx4.18.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 18
  %84 = ptrtoint ptr %arrayidx4.18.1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx4.18.1, align 2
  %or15.18.1 = or i16 %85, %or15.17.1
  %arrayidx4.19.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 19
  %86 = ptrtoint ptr %arrayidx4.19.1 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx4.19.1, align 2
  %or15.19.1 = or i16 %87, %or15.18.1
  %arrayidx4.20.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 20
  %88 = ptrtoint ptr %arrayidx4.20.1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx4.20.1, align 2
  %or15.20.1 = or i16 %89, %or15.19.1
  %arrayidx4.21.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 21
  %90 = ptrtoint ptr %arrayidx4.21.1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx4.21.1, align 2
  %or15.21.1 = or i16 %91, %or15.20.1
  %arrayidx4.22.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 22
  %92 = ptrtoint ptr %arrayidx4.22.1 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx4.22.1, align 2
  %or15.22.1 = or i16 %93, %or15.21.1
  %arrayidx4.23.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 23
  %94 = ptrtoint ptr %arrayidx4.23.1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx4.23.1, align 2
  %or15.23.1 = or i16 %95, %or15.22.1
  ret i16 %or15.23.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_s_input(ptr nocapture readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %inp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %card = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %video_inputs = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 7
  %add.ptr = getelementptr %struct.cx18_card_video_input, ptr %video_inputs, i32 %inp
  %nof_inputs = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %nof_inputs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nof_inputs, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %inp)
  %cmp.not = icmp ugt i32 %conv, %inp
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 65
  %6 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_input, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %inp)
  %cmp3 = icmp eq i32 %7, %inp
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %8 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp3, label %do.body, label %do.body14

do.body:                                          ; preds = %if.end
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #16
  br label %cleanup

do.body14:                                        ; preds = %if.end
  br i1 %tobool.not, label %do.body14.do.end29_crit_edge, label %do.end20

do.body14.do.end29_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %name23 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name23, i32 noundef %7, i32 noundef %inp) #16
  br label %do.end29

do.end29:                                         ; preds = %do.end20, %do.body14.do.end29_crit_edge
  %9 = ptrtoint ptr %active_input to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inp, ptr %active_input, align 8
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 8
  %audio_index = getelementptr %struct.cx18_card, ptr %11, i32 0, i32 7, i32 %inp, i32 1
  %12 = ptrtoint ptr %audio_index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %audio_index, align 1
  %conv33 = zext i8 %13 to i32
  %audio_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 64
  %14 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv33, ptr %audio_input, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp35 = icmp eq i8 %16, 1
  br i1 %cmp35, label %if.then37, label %do.end29.if.end38_crit_edge

do.end29.if.end38_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then37:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  %tuner_std = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 67
  %17 = ptrtoint ptr %tuner_std to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tuner_std, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end29.if.end38_crit_edge
  %std.0 = phi i64 [ %18, %if.then37 ], [ 16777215, %do.end29.if.end38_crit_edge ]
  %tvnorms = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 29, i32 0, i32 0, i32 22
  %19 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %std.0, ptr %tvnorms, align 8
  %tvnorms43 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 2, i32 0, i32 22
  %20 = ptrtoint ptr %tvnorms43 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %std.0, ptr %tvnorms43, align 8
  %tvnorms47 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 3, i32 0, i32 22
  %21 = ptrtoint ptr %tvnorms47 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %std.0, ptr %tvnorms47, align 8
  tail call void @cx18_mute(ptr noundef %1) #13
  tail call void @cx18_video_set_io(ptr noundef %1) #13
  %call48 = tail call i32 @cx18_audio_set_io(ptr noundef %1) #13
  tail call void @cx18_unmute(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_mute(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_video_set_io(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_audio_set_io(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_unmute(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_s_frequency(ptr nocapture readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cx18_mute(ptr noundef %1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %4 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body8_crit_edge, label %do.end

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %5 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frequency, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %6) #16
  br label %do.body8

do.body8:                                         ; preds = %do.end, %if.end.do.body8_crit_edge
  %subdevs = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn48 = load ptr, ptr %subdevs, align 4
  %cmp14.not50 = icmp eq ptr %.pn48, %subdevs
  br i1 %cmp14.not50, label %do.body8.do.end32_crit_edge, label %do.body8.for.body_crit_edge

do.body8.for.body_crit_edge:                      ; preds = %do.body8
  br label %for.body

do.body8.do.end32_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body8.for.body_crit_edge
  %.pn51 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn48, %do.body8.for.body_crit_edge ]
  %__sd.052 = getelementptr i8, ptr %.pn51, i32 -80
  %ops = getelementptr i8, ptr %.pn51, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tuner15 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tuner15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tuner15, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_frequency, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %land.lhs.true.for.inc_crit_edge, label %if.then20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 %13(ptr noundef %__sd.052, ptr noundef %vf) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp14.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp14.not, label %for.inc.do.end32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end32

do.end32:                                         ; preds = %for.inc.do.end32_crit_edge, %do.body8.do.end32_crit_edge
  tail call void @cx18_unmute(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end32 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_s_std(ptr nocapture readnone %file, ptr nocapture noundef readonly %fh, i64 noundef %std) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %and = and i64 %std, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %std2 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %std)
  %cmp3 = icmp eq i64 %3, %std
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_flags, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #13
  %7 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %std2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %std, ptr %std2, align 8
  %and12 = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp ne i64 %and12, 0
  %conv = zext i1 %tobool13.not to i8
  %is_60hz = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %is_60hz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %is_60hz, align 1
  %lnot = xor i1 %tobool13.not, true
  %conv16 = zext i1 %lnot to i8
  %is_50hz = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %is_50hz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv16, ptr %is_50hz, align 4
  %cxhdl = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19
  %conv18 = zext i1 %lnot to i32
  tail call void @cx2341x_handler_set_50hz(ptr noundef %cxhdl, i32 noundef %conv18) #13
  %width = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 720, ptr %width, align 8
  %13 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool22.not = icmp eq i8 %14, 0
  %conv24 = select i1 %tobool22.not, i16 480, i16 576
  %height = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv24, ptr %height, align 2
  %cond29 = select i1 %tobool22.not, i32 12, i32 18
  %count = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 2
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond29, ptr %count, align 4
  %cond33 = select i1 %tobool22.not, i32 10, i32 6
  %start = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 3
  %17 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond33, ptr %start, align 4
  %cond38 = select i1 %tobool22.not, i32 273, i32 318
  %arrayidx41 = getelementptr %struct.cx18, ptr %1, i32 0, i32 41, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond38, ptr %arrayidx41, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %19 = load i32, ptr @cx18_debug, align 4
  %and42 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end10.do.body51_crit_edge, label %do.end

if.end10.do.body51_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body51

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %std2, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i64 noundef %21) #16
  br label %do.body51

do.body51:                                        ; preds = %do.end, %if.end10.do.body51_crit_edge
  %subdevs = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn113 = load ptr, ptr %subdevs, align 4
  %cmp57.not115 = icmp eq ptr %.pn113, %subdevs
  br i1 %cmp57.not115, label %do.body51.cleanup_crit_edge, label %do.body51.for.body_crit_edge

do.body51.for.body_crit_edge:                     ; preds = %do.body51
  br label %for.body

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body51.for.body_crit_edge
  %.pn116 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn113, %do.body51.for.body_crit_edge ]
  %__sd.0117 = getelementptr i8, ptr %.pn116, i32 -80
  %ops = getelementptr i8, ptr %.pn116, i32 24
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %video, align 4
  %tobool61.not = icmp eq ptr %26, null
  br i1 %tobool61.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_std, align 4
  %tobool64.not = icmp eq ptr %28, null
  br i1 %tobool64.not, label %land.lhs.true.for.inc_crit_edge, label %if.then65

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %std2, align 8
  %call70 = tail call i32 %28(ptr noundef %__sd.0117, i64 noundef %30) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then65, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn116, align 4
  %cmp57.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp57.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body51.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ], [ 0, %do.body51.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_50hz(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cx18_set_funcs(ptr nocapture noundef writeonly %vdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 24
  %0 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cx18_ioctl_ops, ptr %ioctl_ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vcap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %vcap, ptr noundef nonnull @.str.10, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 1
  %card_name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_name, align 4
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %3, i32 noundef 32) #13
  %pci_dev = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i)
  %v4l2_cap = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v4l2_cap, align 8
  %or = or i32 %11, -2147483648
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %vcap, i32 0, i32 4
  %12 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fmt) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [3 x %struct.v4l2_fmtdesc], ptr @cx18_enum_fmt_vid_cap.formats, i32 0, i32 %1
  %2 = call ptr @memcpy(ptr %fmt, ptr %arrayidx, i32 64)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fmt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %width = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %width, align 8
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %height, align 2
  %conv5 = zext i16 %8 to i32
  %height6 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %height6, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %field, align 4
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pixelformat = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 22
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 8
  %pixelformat9 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pixelformat9, align 4
  %vb_bytes_per_frame = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 23
  %16 = ptrtoint ptr %vb_bytes_per_frame to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vb_bytes_per_frame, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sizeimage, align 4
  %vb_bytes_per_line = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %3, i32 24
  %19 = ptrtoint ptr %vb_bytes_per_line to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vb_bytes_per_line, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pixelformat10 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %pixelformat10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1195724877, ptr %pixelformat10, align 4
  %sizeimage11 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 131072, ptr %sizeimage11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %20, %if.then ], [ 0, %if.else ]
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %23, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_g_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fmt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt2, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 248, ptr %offset, align 4
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1440, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1497715271, ptr %sample_format, align 4
  %start = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  %start3 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %start3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %start3, align 4
  %arrayidx7 = getelementptr %struct.cx18, ptr %1, i32 0, i32 41, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx9, align 4
  %count = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 2
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %count11 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx12 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx12, align 4
  %15 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %count11, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reserved, align 4
  %arrayidx17 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_g_fmt_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved, align 4
  %arrayidx4 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx4, align 4
  %io_size = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2304, ptr %io_size, align 4
  %sd_av = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 3
  %5 = call ptr @memset(ptr %fmt2, i32 0, i32 98)
  %6 = ptrtoint ptr %sd_av to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_av, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %vbi = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %vbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbi, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %g_sliced_fmt = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %g_sliced_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %g_sliced_fmt, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.else10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.else10.if.else19_crit_edge, label %land.lhs.true12

if.else10.if.else19_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else19

land.lhs.true12:                                  ; preds = %if.else10
  %g_sliced_fmt13 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %g_sliced_fmt13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_sliced_fmt13, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else19_crit_edge, label %land.lhs.true12.if.end26_crit_edge

land.lhs.true12.if.end26_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true12.if.else19_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true12.if.else19_crit_edge, %if.else10.if.else19_crit_edge
  br label %if.end26

if.end26:                                         ; preds = %if.else19, %land.lhs.true12.if.end26_crit_edge
  %.sink = phi ptr [ %13, %if.else19 ], [ %16, %land.lhs.true12.if.end26_crit_edge ]
  %call24 = tail call i32 %.sink(ptr noundef nonnull %7, ptr noundef %fmt2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool27.not = icmp eq i32 %call24, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call zeroext i16 @cx18_get_service_set(ptr noundef %fmt2)
  %17 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call30, ptr %fmt2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %if.end26.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #4 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #13
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %7 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt2.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height.i, align 4
  %11 = tail call i32 @llvm.smin.i32(i32 %8, i32 720) #13
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp10.i = icmp eq i32 %6, 2
  %and.i = and i32 %10, -32
  %min_h.0.i = select i1 %cmp10.i, i32 32, i32 2
  %h.0.i = select i1 %cmp10.i, i32 %and.i, i32 %10
  %is_50hz.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %is_50hz.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_50hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %cond11.i = select i1 %tobool.not.i, i32 480, i32 576
  %15 = tail call i32 @llvm.smin.i32(i32 %h.0.i, i32 %cond11.i) #13
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 %min_h.0.i) #13
  %17 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %fmt2.i, align 4
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %height.i, align 4
  %width5 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 2
  %19 = ptrtoint ptr %width5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %width5, align 8
  %conv = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp = icmp eq i32 %12, %conv
  br i1 %cmp, label %land.lhs.true, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %height8 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 3
  %21 = ptrtoint ptr %height8 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %height8, align 2
  %conv9 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv9)
  %cmp10 = icmp eq i32 %16, %conv9
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true12:                                  ; preds = %land.lhs.true
  %pixelformat = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %6, i32 22
  %23 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixelformat, align 8
  %pixelformat14 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %pixelformat14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelformat14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp15 = icmp eq i32 %24, %26
  br i1 %cmp15, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end18_crit_edge

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true12.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #13
  %27 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp20 = icmp sgt i32 %28, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %pixelformat25 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %pixelformat25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixelformat25, align 4
  %pixelformat26 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %6, i32 22
  %31 = ptrtoint ptr %pixelformat26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %pixelformat26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091848, i32 %30)
  %cmp28 = icmp eq i32 %30, 842091848
  %. = select i1 %cmp28, i32 1080, i32 1440
  %.123 = select i1 %cmp28, i32 720, i32 1440
  %mul33 = mul nuw nsw i32 %., %16
  %32 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %6, i32 23
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul33, ptr %32, align 4
  %34 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %6, i32 24
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.123, ptr %34, align 8
  %conv37 = trunc i32 %12 to i16
  %36 = ptrtoint ptr %width5 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv37, ptr %width5, align 8
  %format41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %37 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %12, ptr %format41, align 4
  %conv43 = trunc i32 %16 to i16
  %height45 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 3
  %38 = ptrtoint ptr %height45 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv43, ptr %height45, align 2
  %height48 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %height48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %16, ptr %height48, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %code, align 4
  %sd_av = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %sd_av to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_av, align 8
  %tobool50.not = icmp eq ptr %42, null
  br i1 %tobool50.not, label %if.end23.if.end74_crit_edge, label %if.else52

if.end23.if.end74_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.else52:                                        ; preds = %if.end23
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pad, align 4
  %tobool53.not = icmp eq ptr %46, null
  br i1 %tobool53.not, label %if.else52.if.end74_crit_edge, label %land.lhs.true54

if.else52.if.end74_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

land.lhs.true54:                                  ; preds = %if.else52
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_fmt, align 4
  %tobool57.not = icmp eq ptr %48, null
  br i1 %tobool57.not, label %land.lhs.true54.if.end74_crit_edge, label %if.else59

land.lhs.true54.if.end74_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.else59:                                        ; preds = %land.lhs.true54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool60.not = icmp eq ptr %49, null
  br i1 %tobool60.not, label %if.else59.if.else67_crit_edge, label %land.lhs.true61

if.else59.if.else67_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else67

land.lhs.true61:                                  ; preds = %if.else59
  %set_fmt62 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %set_fmt62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_fmt62, align 4
  %tobool63.not = icmp eq ptr %51, null
  br i1 %tobool63.not, label %land.lhs.true61.if.else67_crit_edge, label %land.lhs.true61.if.end74.sink.split_crit_edge

land.lhs.true61.if.end74.sink.split_crit_edge:    ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.sink.split

land.lhs.true61.if.else67_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else67

if.else67:                                        ; preds = %land.lhs.true61.if.else67_crit_edge, %if.else59.if.else67_crit_edge
  br label %if.end74.sink.split

if.end74.sink.split:                              ; preds = %if.else67, %land.lhs.true61.if.end74.sink.split_crit_edge
  %.sink122 = phi ptr [ %48, %if.else67 ], [ %51, %land.lhs.true61.if.end74.sink.split_crit_edge ]
  %call71 = call i32 %.sink122(ptr noundef nonnull %42, ptr noundef null, ptr noundef nonnull %format) #13
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %land.lhs.true54.if.end74_crit_edge, %if.else52.if.end74_crit_edge, %if.end23.if.end74_crit_edge
  %52 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cx1, align 4
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type, align 4
  %width.i = getelementptr inbounds %struct.cx18, ptr %53, i32 0, i32 19, i32 2
  %56 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %width.i, align 8
  %conv.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i, ptr %fmt2.i, align 4
  %height.i119 = getelementptr inbounds %struct.cx18, ptr %53, i32 0, i32 19, i32 3
  %59 = ptrtoint ptr %height.i119 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %height.i119, align 2
  %conv5.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv5.i, ptr %height.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %62 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %63 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %field.i, align 4
  %64 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp.i = icmp eq i32 %64, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %pixelformat.i = getelementptr %struct.cx18, ptr %53, i32 0, i32 29, i32 %55, i32 22
  %65 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixelformat.i, align 8
  %67 = ptrtoint ptr %pixelformat25 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %pixelformat25, align 4
  %vb_bytes_per_frame.i = getelementptr %struct.cx18, ptr %53, i32 0, i32 29, i32 %55, i32 23
  %68 = ptrtoint ptr %vb_bytes_per_frame.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vb_bytes_per_frame.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %70 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sizeimage.i, align 4
  %vb_bytes_per_line.i = getelementptr %struct.cx18, ptr %53, i32 0, i32 29, i32 %55, i32 24
  %71 = ptrtoint ptr %vb_bytes_per_line.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vb_bytes_per_line.i, align 8
  br label %cx18_g_fmt_vid_cap.exit

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %pixelformat25 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1195724877, ptr %pixelformat25, align 4
  %sizeimage11.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %74 = ptrtoint ptr %sizeimage11.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 131072, ptr %sizeimage11.i, align 4
  br label %cx18_g_fmt_vid_cap.exit

cx18_g_fmt_vid_cap.exit:                          ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %72, %if.then.i ], [ 0, %if.else.i ]
  %75 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink.i, ptr %75, align 4
  br label %cleanup

cleanup:                                          ; preds = %cx18_g_fmt_vid_cap.exit, %if.end18.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cx18_g_fmt_vid_cap.exit ], [ 0, %land.lhs.true12.cleanup_crit_edge ], [ -16, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %vbi.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vbi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 4
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #13
  %4 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sd_av = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sd_av to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_av, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %vbi = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %vbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbi, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true7:                                   ; preds = %if.else
  %s_raw_fmt = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %s_raw_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_raw_fmt, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true7.cleanup_crit_edge, label %if.else12

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.else12.if.else21_crit_edge, label %land.lhs.true14

if.else12.if.else21_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

land.lhs.true14:                                  ; preds = %if.else12
  %s_raw_fmt15 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %s_raw_fmt15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_raw_fmt15, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else21_crit_edge, label %land.lhs.true14.if.end29_crit_edge

land.lhs.true14.if.end29_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true14.if.else21_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true14.if.else21_crit_edge, %if.else12.if.else21_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else21, %land.lhs.true14.if.end29_crit_edge
  %.sink = phi ptr [ %13, %if.else21 ], [ %16, %land.lhs.true14.if.end29_crit_edge ]
  %fmt25 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %call26 = tail call i32 %.sink(ptr noundef nonnull %7, ptr noundef %fmt25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool30.not = icmp eq i32 %call26, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %sliced_in = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 1
  %17 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sliced_in, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %18, align 4
  %20 = ptrtoint ptr %vbi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %vbi.i, align 4
  %21 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cx1, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %23 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 27000000, ptr %fmt2.i, align 4
  %offset.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 248, ptr %offset.i, align 4
  %samples_per_line.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %samples_per_line.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1440, ptr %samples_per_line.i, align 4
  %sample_format.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %sample_format.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1497715271, ptr %sample_format.i, align 4
  %start.i = getelementptr inbounds %struct.cx18, ptr %22, i32 0, i32 41, i32 3
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start.i, align 4
  %start3.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %start3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %start3.i, align 4
  %arrayidx7.i = getelementptr %struct.cx18, ptr %22, i32 0, i32 41, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx9.i, align 4
  %count.i = getelementptr inbounds %struct.cx18, ptr %22, i32 0, i32 41, i32 2
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 4
  %count11.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx12.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx12.i, align 4
  %36 = ptrtoint ptr %count11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %count11.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %flags.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx17.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx17.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end29.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ %call26, %if.end29.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true7.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_fmt_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %call3 = tail call i32 @cx18_try_fmt_sliced_vbi_cap(ptr noundef %file, ptr noundef %fh, ptr noundef %fmt)
  %vbi.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vbi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 4
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #13
  %4 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sd_av = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sd_av to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_av, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %vbi = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %vbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbi, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %land.lhs.true9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true9:                                   ; preds = %if.else
  %s_sliced_fmt = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %s_sliced_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_sliced_fmt, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %land.lhs.true9.cleanup_crit_edge, label %if.else14

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %if.else14.if.else23_crit_edge, label %land.lhs.true16

if.else14.if.else23_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else23

land.lhs.true16:                                  ; preds = %if.else14
  %s_sliced_fmt17 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %s_sliced_fmt17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_sliced_fmt17, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else23_crit_edge, label %land.lhs.true16.if.end31_crit_edge

land.lhs.true16.if.end31_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true16.if.else23_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true16.if.else23_crit_edge, %if.else14.if.else23_crit_edge
  br label %if.end31

if.end31:                                         ; preds = %if.else23, %land.lhs.true16.if.end31_crit_edge
  %.sink = phi ptr [ %13, %if.else23 ], [ %16, %land.lhs.true16.if.end31_crit_edge ]
  %call28 = tail call i32 %.sink(ptr noundef nonnull %7, ptr noundef %fmt2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool32.not = icmp eq i32 %call28, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %vbi.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %vbi.i, align 4
  %sliced_in = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 1
  %18 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sliced_in, align 4
  %20 = call ptr @memcpy(ptr %19, ptr %fmt2, i32 112)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end31.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ %call28, %if.end31.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true9.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %3, i32 720)
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 2)
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10 = icmp eq i32 %9, 2
  %and = and i32 %5, -32
  %min_h.0 = select i1 %cmp10, i32 32, i32 2
  %h.0 = select i1 %cmp10, i32 %and, i32 %5
  %is_50hz = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond11 = select i1 %tobool.not, i32 480, i32 576
  %12 = tail call i32 @llvm.smin.i32(i32 %h.0, i32 %cond11)
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 %min_h.0)
  %14 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %fmt2, align 4
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %height, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_try_fmt_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %fmt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1.i = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1.i, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt2.i, align 4
  %offset.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 248, ptr %offset.i, align 4
  %samples_per_line.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %samples_per_line.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1440, ptr %samples_per_line.i, align 4
  %sample_format.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %sample_format.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1497715271, ptr %sample_format.i, align 4
  %start.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 3
  %6 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start.i, align 4
  %start3.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %start3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %start3.i, align 4
  %arrayidx7.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 41, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx9.i, align 4
  %count.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 41, i32 2
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 4
  %count11.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %arrayidx12.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx12.i, align 4
  %15 = ptrtoint ptr %count11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %count11.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags.i, align 4
  %reserved.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reserved.i, align 4
  %arrayidx17.i = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx17.i, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_try_fmt_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %fmt) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %io_size = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2304, ptr %io_size, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  %3 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %reserved, align 4
  %arrayidx4 = getelementptr %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx4, align 4
  %5 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %is_50hz = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_50hz, align 4
  %conv = zext i8 %8 to i32
  tail call void @cx18_expand_service_set(ptr noundef %fmt2, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %is_50hz5 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %is_50hz5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_50hz5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %conv2.i.i = select i1 %tobool.not.i.i, i16 4096, i16 17409
  br label %for.body3.i

for.body3.i:                                      ; preds = %select_service_from_set.exit.i.for.body3.i_crit_edge, %if.end
  %set.138.i = phi i16 [ 0, %if.end ], [ %or32.i, %select_service_from_set.exit.i.for.body3.i_crit_edge ]
  %l.034.i = phi i32 [ 0, %if.end ], [ %inc.i, %select_service_from_set.exit.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt2, i32 0, i32 1, i32 0, i32 %l.034.i
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx4.i, align 2
  %and.i.i = and i16 %12, %conv2.i.i
  %conv4.i.i = zext i16 %and.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i.i)
  %cmp.i.i = icmp eq i16 %and.i.i, 0
  br i1 %cmp.i.i, label %for.body3.i.select_service_from_set.exit.i_crit_edge, label %lor.lhs.false.i.i

for.body3.i.select_service_from_set.exit.i_crit_edge: ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.034.i)
  %cmp.i.i.i = icmp ult i32 %l.034.i, 6
  %13 = or i1 %tobool.not.i.i, %cmp.i.i.i
  br i1 %13, label %valid_service_line.exit.i.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

valid_service_line.exit.i.i:                      ; preds = %lor.lhs.false.i.i
  %14 = add nsw i32 %l.034.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %15 = icmp ult i32 %14, 12
  %16 = and i1 %tobool.not.i.i, %15
  br i1 %16, label %valid_service_line.exit.i.i.if.end.i.i_crit_edge, label %valid_service_line.exit.i.i.select_service_from_set.exit.i_crit_edge

valid_service_line.exit.i.i.select_service_from_set.exit.i_crit_edge: ; preds = %valid_service_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.i

valid_service_line.exit.i.i.if.end.i.i_crit_edge: ; preds = %valid_service_line.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %valid_service_line.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.034.i)
  %cmp9.i.i = icmp ne i32 %l.034.i, 21
  %and12.i.i = and i32 %conv4.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %or.cond.i.i = or i1 %cmp9.i.i, %tobool13.not.i.i
  br i1 %or.cond.i.i, label %if.then8.i.i.for.body.i.i.preheader_crit_edge, label %if.then8.i.i.select_service_from_set.exit.i_crit_edge

if.then8.i.i.select_service_from_set.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.i

if.then8.i.i.for.body.i.i.preheader_crit_edge:    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.end26.i.i.for.body.i.i.preheader_crit_edge, %if.then8.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %l.034.i)
  %cmp16.i.i = icmp eq i32 %l.034.i, 16
  %and23.i.i = and i32 %conv4.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp ne i32 %and23.i.i, 0
  %17 = and i1 %cmp16.i.i, %tobool24.not.i.i
  br i1 %17, label %if.else.i.i.select_service_from_set.exit.i_crit_edge, label %if.end26.i.i

if.else.i.i.select_service_from_set.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.i

if.end26.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.034.i)
  %cmp27.i.i = icmp eq i32 %l.034.i, 23
  br i1 %cmp27.i.i, label %select_service_from_set.exit.thread.i, label %if.end26.i.i.for.body.i.i.preheader_crit_edge

if.end26.i.i.for.body.i.i.preheader_crit_edge:    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.preheader

select_service_from_set.exit.thread.i:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %and34.i.le.i = and i16 %and.i.i, 16384
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %and34.i.le.i, ptr %arrayidx4.i, align 2
  %or3244.i = or i16 %and34.i.le.i, %set.138.i
  br label %for.body3.1.i.preheader

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.076.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.cond.i.i.select_service_from_set.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.cond.i.i.select_service_from_set.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.076.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %shl.i.i = shl nuw i32 1, %i.076.i.i
  %and46.i.i = and i32 %shl.i.i, %conv4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %for.cond.i.i, label %if.then48.i.i

if.then48.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv50.i.i = trunc i32 %shl.i.i to i16
  br label %select_service_from_set.exit.i

select_service_from_set.exit.i:                   ; preds = %if.then48.i.i, %for.cond.i.i.select_service_from_set.exit.i_crit_edge, %if.else.i.i.select_service_from_set.exit.i_crit_edge, %if.then8.i.i.select_service_from_set.exit.i_crit_edge, %valid_service_line.exit.i.i.select_service_from_set.exit.i_crit_edge, %for.body3.i.select_service_from_set.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %conv50.i.i, %if.then48.i.i ], [ 0, %valid_service_line.exit.i.i.select_service_from_set.exit.i_crit_edge ], [ 0, %for.body3.i.select_service_from_set.exit.i_crit_edge ], [ 4096, %if.then8.i.i.select_service_from_set.exit.i_crit_edge ], [ 1024, %if.else.i.i.select_service_from_set.exit.i_crit_edge ], [ 0, %for.cond.i.i.select_service_from_set.exit.i_crit_edge ]
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %retval.0.i.i, ptr %arrayidx4.i, align 2
  %or32.i = or i16 %retval.0.i.i, %set.138.i
  %inc.i = add nuw nsw i32 %l.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %select_service_from_set.exit.i.for.body3.1.i.preheader_crit_edge, label %select_service_from_set.exit.i.for.body3.i_crit_edge

select_service_from_set.exit.i.for.body3.i_crit_edge: ; preds = %select_service_from_set.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i

select_service_from_set.exit.i.for.body3.1.i.preheader_crit_edge: ; preds = %select_service_from_set.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.1.i.preheader

for.body3.1.i.preheader:                          ; preds = %select_service_from_set.exit.i.for.body3.1.i.preheader_crit_edge, %select_service_from_set.exit.thread.i
  %set.138.1.i.ph = phi i16 [ %or3244.i, %select_service_from_set.exit.thread.i ], [ %or32.i, %select_service_from_set.exit.i.for.body3.1.i.preheader_crit_edge ]
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %select_service_from_set.exit.1.i.for.body3.1.i_crit_edge, %for.body3.1.i.preheader
  %set.138.1.i = phi i16 [ %or32.1.i, %select_service_from_set.exit.1.i.for.body3.1.i_crit_edge ], [ %set.138.1.i.ph, %for.body3.1.i.preheader ]
  %l.034.1.i = phi i32 [ %inc.1.i, %select_service_from_set.exit.1.i.for.body3.1.i_crit_edge ], [ 0, %for.body3.1.i.preheader ]
  %arrayidx4.1.i = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt2, i32 0, i32 1, i32 1, i32 %l.034.1.i
  %20 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx4.1.i, align 2
  %and.i.1.i = and i16 %21, %conv2.i.i
  %conv4.i.1.i = zext i16 %and.i.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i.1.i)
  %cmp.i.1.i = icmp eq i16 %and.i.1.i, 0
  br i1 %cmp.i.1.i, label %for.body3.1.i.select_service_from_set.exit.1.i_crit_edge, label %lor.lhs.false.i.1.i

for.body3.1.i.select_service_from_set.exit.1.i_crit_edge: ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1.i

lor.lhs.false.i.1.i:                              ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.034.1.i)
  %cmp.i.i.1.i = icmp ult i32 %l.034.1.i, 6
  %22 = or i1 %tobool.not.i.i, %cmp.i.i.1.i
  br i1 %22, label %valid_service_line.exit.i.1.i, label %land.lhs.true6.i.i.1.i

land.lhs.true6.i.i.1.i:                           ; preds = %lor.lhs.false.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.034.1.i)
  %cmp7.i.i.1.i = icmp ult i32 %l.034.1.i, 23
  br i1 %cmp7.i.i.1.i, label %land.lhs.true6.i.i.1.i.if.end.i.1.i_crit_edge, label %land.lhs.true6.i.i.1.i.select_service_from_set.exit.1.i_crit_edge

land.lhs.true6.i.i.1.i.select_service_from_set.exit.1.i_crit_edge: ; preds = %land.lhs.true6.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1.i

land.lhs.true6.i.i.1.i.if.end.i.1.i_crit_edge:    ; preds = %land.lhs.true6.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.1.i

valid_service_line.exit.i.1.i:                    ; preds = %lor.lhs.false.i.1.i
  %23 = add nsw i32 %l.034.1.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %23)
  %24 = icmp ult i32 %23, 12
  %25 = and i1 %tobool.not.i.i, %24
  br i1 %25, label %valid_service_line.exit.i.1.i.if.end.i.1.i_crit_edge, label %valid_service_line.exit.i.1.i.select_service_from_set.exit.1.i_crit_edge

valid_service_line.exit.i.1.i.select_service_from_set.exit.1.i_crit_edge: ; preds = %valid_service_line.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1.i

valid_service_line.exit.i.1.i.if.end.i.1.i_crit_edge: ; preds = %valid_service_line.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.1.i

if.end.i.1.i:                                     ; preds = %valid_service_line.exit.i.1.i.if.end.i.1.i_crit_edge, %land.lhs.true6.i.i.1.i.if.end.i.1.i_crit_edge
  br i1 %tobool.not.i.i, label %if.then8.i.1.i, label %if.end.i.1.i.for.body.i.1.i.preheader_crit_edge

if.end.i.1.i.for.body.i.1.i.preheader_crit_edge:  ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.1.i.preheader

if.then8.i.1.i:                                   ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %l.034.1.i)
  %cmp9.i.1.i = icmp ne i32 %l.034.1.i, 21
  %and12.i.1.i = and i32 %conv4.i.1.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.1.i)
  %tobool13.not.i.1.i = icmp eq i32 %and12.i.1.i, 0
  %or.cond.i.1.i = or i1 %cmp9.i.1.i, %tobool13.not.i.1.i
  br i1 %or.cond.i.1.i, label %if.then8.i.1.i.for.body.i.1.i.preheader_crit_edge, label %if.then8.i.1.i.select_service_from_set.exit.1.i_crit_edge

if.then8.i.1.i.select_service_from_set.exit.1.i_crit_edge: ; preds = %if.then8.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1.i

if.then8.i.1.i.for.body.i.1.i.preheader_crit_edge: ; preds = %if.then8.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.1.i.preheader

for.body.i.1.i.preheader:                         ; preds = %if.then8.i.1.i.for.body.i.1.i.preheader_crit_edge, %if.end.i.1.i.for.body.i.1.i.preheader_crit_edge
  br label %for.body.i.1.i

for.body.i.1.i:                                   ; preds = %for.cond.i.1.i.for.body.i.1.i_crit_edge, %for.body.i.1.i.preheader
  %i.076.i.1.i = phi i32 [ %inc.i.1.i, %for.cond.i.1.i.for.body.i.1.i_crit_edge ], [ 0, %for.body.i.1.i.preheader ]
  %shl.i.1.i = shl nuw i32 1, %i.076.i.1.i
  %and46.i.1.i = and i32 %shl.i.1.i, %conv4.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.1.i)
  %tobool47.not.i.1.i = icmp eq i32 %and46.i.1.i, 0
  br i1 %tobool47.not.i.1.i, label %for.cond.i.1.i, label %if.then48.i.1.i

if.then48.i.1.i:                                  ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv50.i.1.i = trunc i32 %shl.i.1.i to i16
  br label %select_service_from_set.exit.1.i

for.cond.i.1.i:                                   ; preds = %for.body.i.1.i
  %inc.i.1.i = add nuw nsw i32 %i.076.i.1.i, 1
  %exitcond.not.i.1.i = icmp eq i32 %inc.i.1.i, 32
  br i1 %exitcond.not.i.1.i, label %for.cond.i.1.i.select_service_from_set.exit.1.i_crit_edge, label %for.cond.i.1.i.for.body.i.1.i_crit_edge

for.cond.i.1.i.for.body.i.1.i_crit_edge:          ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.1.i

for.cond.i.1.i.select_service_from_set.exit.1.i_crit_edge: ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %select_service_from_set.exit.1.i

select_service_from_set.exit.1.i:                 ; preds = %for.cond.i.1.i.select_service_from_set.exit.1.i_crit_edge, %if.then48.i.1.i, %if.then8.i.1.i.select_service_from_set.exit.1.i_crit_edge, %valid_service_line.exit.i.1.i.select_service_from_set.exit.1.i_crit_edge, %land.lhs.true6.i.i.1.i.select_service_from_set.exit.1.i_crit_edge, %for.body3.1.i.select_service_from_set.exit.1.i_crit_edge
  %retval.0.i.1.i = phi i16 [ %conv50.i.1.i, %if.then48.i.1.i ], [ 0, %valid_service_line.exit.i.1.i.select_service_from_set.exit.1.i_crit_edge ], [ 0, %for.body3.1.i.select_service_from_set.exit.1.i_crit_edge ], [ 4096, %if.then8.i.1.i.select_service_from_set.exit.1.i_crit_edge ], [ 0, %land.lhs.true6.i.i.1.i.select_service_from_set.exit.1.i_crit_edge ], [ 0, %for.cond.i.1.i.select_service_from_set.exit.1.i_crit_edge ]
  %26 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %retval.0.i.1.i, ptr %arrayidx4.1.i, align 2
  %or32.1.i = or i16 %retval.0.i.1.i, %set.138.1.i
  %inc.1.i = add nuw nsw i32 %l.034.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 24
  br i1 %exitcond.1.not.i, label %check_service_set.exit, label %select_service_from_set.exit.1.i.for.body3.1.i_crit_edge

select_service_from_set.exit.1.i.for.body3.1.i_crit_edge: ; preds = %select_service_from_set.exit.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.1.i

check_service_set.exit:                           ; preds = %select_service_from_set.exit.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or32.1.i)
  %cmp17.i.not = icmp eq i16 %or32.1.i, 0
  br i1 %cmp17.i.not, label %check_service_set.exit.if.end12_crit_edge, label %if.then9

check_service_set.exit.if.end12_crit_edge:        ; preds = %check_service_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %check_service_set.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call zeroext i16 @cx18_get_service_set(ptr noundef %fmt2)
  %27 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %call10, ptr %fmt2, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %check_service_set.exit.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_reqbufs(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %rb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %6 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vb_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge10
  ]

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond.i = icmp eq i32 %7, 1
  %vbuf_q.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 28
  %spec.select.i = select i1 %cond.i, ptr %vbuf_q.i, ptr null
  %call4 = tail call i32 @videobuf_reqbufs(ptr noundef %spec.select.i, ptr noundef %rb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_querybuf(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %6 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vb_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge10
  ]

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond.i = icmp eq i32 %7, 1
  %vbuf_q.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 28
  %spec.select.i = select i1 %cond.i, ptr %vbuf_q.i, ptr null
  %call4 = tail call i32 @videobuf_querybuf(ptr noundef %spec.select.i, ptr noundef %b) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_qbuf(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %6 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vb_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge10
  ]

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond.i = icmp eq i32 %7, 1
  %vbuf_q.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 28
  %spec.select.i = select i1 %cond.i, ptr %vbuf_q.i, ptr null
  %call4 = tail call i32 @videobuf_qbuf(ptr noundef %spec.select.i, ptr noundef %b) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_dqbuf(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %6 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vb_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge11
  ]

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond.i = icmp eq i32 %7, 1
  %vbuf_q.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 28
  %spec.select.i = select i1 %cond.i, ptr %vbuf_q.i, ptr null
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 2048
  %call4 = tail call i32 @videobuf_dqbuf(ptr noundef %spec.select.i, ptr noundef %b, i32 noundef %and) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_streamon(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type2 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 4
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %6 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vb_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge19
  ]

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp6.not = icmp eq i32 %5, 2
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vb_timeout = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 2, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 200
  %call9 = tail call i32 @mod_timer(ptr noundef %vb_timeout, i32 noundef %add) #13
  %10 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cx1, align 4
  %12 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type2, align 4
  %vb_type.i = getelementptr %struct.cx18, ptr %11, i32 0, i32 29, i32 %13, i32 30
  %14 = ptrtoint ptr %vb_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vb_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cond.i = icmp eq i32 %15, 1
  %vbuf_q.i = getelementptr %struct.cx18, ptr %11, i32 0, i32 29, i32 %13, i32 28
  %spec.select.i = select i1 %cond.i, ptr %vbuf_q.i, ptr null
  %call11 = tail call i32 @videobuf_streamon(ptr noundef %spec.select.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_streamoff(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %type2 = getelementptr inbounds %struct.cx18_open_id, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 4
  %vb_type = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 %5, i32 30
  %6 = ptrtoint ptr %vb_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vb_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge16
  ]

entry.if.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp6.not = icmp eq i32 %5, 2
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond.i = icmp eq i32 %7, 1
  %vbuf_q.i = getelementptr %struct.cx18, ptr %3, i32 0, i32 29, i32 2, i32 28
  %spec.select.i = select i1 %cond.i, ptr %vbuf_q.i, ptr null
  %call9 = tail call i32 @videobuf_streamoff(ptr noundef %spec.select.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_g_std(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %std) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %std2 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std2, align 8
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vin, align 8
  %conv = trunc i32 %3 to i16
  %call2 = tail call i32 @cx18_get_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vin) #13
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %i) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %active_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = ptrtoint ptr %vin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vin, align 4
  %conv = trunc i32 %3 to i16
  %call2 = tail call i32 @cx18_get_audio_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vin) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_g_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %audio_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio_input, align 4
  %4 = ptrtoint ptr %vin to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %vin, align 4
  %conv = trunc i32 %3 to i16
  %call3 = tail call i32 @cx18_get_audio_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef %vin) #13
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %vout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = ptrtoint ptr %vout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vout, align 4
  %nof_audio_inputs = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %nof_audio_inputs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nof_audio_inputs, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %audio_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 64
  %6 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %audio_input, align 4
  %call4 = tail call i32 @cx18_audio_set_io(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_g_pixelaspect(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %type, ptr nocapture noundef writeonly %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %is_50hz = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 11, i32 54
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %f, align 4
  %5 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %cond5 = select i1 %tobool4.not, i32 10, i32 59
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond5, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx18_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %sel) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %6 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 720, ptr %width, align 4
  %is_50hz = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool.not, i32 480, i32 576
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_g_enc_index(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %arrayidx = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5
  %v4l2_dev.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %dvb.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 1
  %4 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.cx18_dvb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %type.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 4
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp.i = icmp eq i32 %9, 5
  br i1 %cmp.i, label %cx18_stream_enabled.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cx18_stream_enabled.exit:                         ; preds = %lor.rhs.i
  %cx.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 2
  %10 = ptrtoint ptr %cx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cx.i, align 4
  %arrayidx.i = getelementptr %struct.cx18, ptr %11, i32 0, i32 27, i32 5
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i.not = icmp eq i32 %13, 0
  br i1 %cmp4.i.not, label %cx18_stream_enabled.exit.cleanup_crit_edge, label %cx18_stream_enabled.exit.if.end_crit_edge

cx18_stream_enabled.exit.if.end_crit_edge:        ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cx18_stream_enabled.exit.cleanup_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cx18_stream_enabled.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %buffers = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 13
  %14 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffers, align 4
  %bufs_per_mdl = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 15
  %16 = ptrtoint ptr %bufs_per_mdl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufs_per_mdl, align 4
  %mul.neg = mul i32 %17, -3
  %sub = add i32 %mul.neg, %15
  %18 = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %buf_size = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 14
  %19 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_size, align 8
  %mul5 = mul i32 %18, %20
  %div = udiv i32 %mul5, 24
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idx, align 8
  %entries_cap = getelementptr inbounds %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 1
  %22 = ptrtoint ptr %entries_cap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %entries_cap, align 4
  %reserved = getelementptr inbounds %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 2
  %23 = call ptr @memset(ptr %reserved, i32 0, i32 16)
  %q_full = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 19
  %type.i44 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 4
  %q_free = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 17
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %if.end
  %call6 = tail call ptr @cx18_dequeue(ptr noundef %arrayidx, ptr noundef %q_full) #13
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %do.body.do.end_crit_edge, label %if.end9

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end9:                                          ; preds = %do.body
  %24 = ptrtoint ptr %type.i44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 5
  br i1 %cmp.not.i, label %if.end.i, label %if.end9.cx18_process_idx_data.exit_crit_edge

if.end9.cx18_process_idx_data.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cx18_process_idx_data.exit

if.end.i:                                         ; preds = %if.end9
  %curr_buf.i = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 5
  %26 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %curr_buf.i, align 4
  %cmp1.i = icmp eq ptr %27, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %buf_list.i = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 4
  %28 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf_list.i, align 4
  %30 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %curr_buf.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %31 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %curr_buf.i, align 4
  %buf_list6.i = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 4
  %cmp7.i = icmp eq ptr %32, %buf_list6.i
  %bytesused.i = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 6
  br i1 %cmp7.i, label %if.then8.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %readpos22.i = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 7
  br label %for.body.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesused.i, align 4
  %readpos.i = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 7
  %35 = ptrtoint ptr %readpos.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %readpos.i, align 4
  br label %cx18_process_idx_data.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %36 = phi ptr [ %32, %for.body.lr.ph.i ], [ %96, %for.inc.i.for.body.i_crit_edge ]
  %readpos15.i = getelementptr inbounds %struct.cx18_buffer, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %readpos15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %readpos15.i, align 4
  %bytesused17.i = getelementptr inbounds %struct.cx18_buffer, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %bytesused17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bytesused17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp18.not.i = icmp ugt i32 %40, %38
  br i1 %cmp18.not.i, label %if.end20.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end20.i:                                       ; preds = %for.body.i
  %sub.i.i = sub i32 %40, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub.i.i)
  %cmp59.i.i = icmp ugt i32 %sub.i.i, 23
  br i1 %cmp59.i.i, label %land.rhs.preheader.i.i, label %if.end20.i._cx18_process_idx_data.exit.i_crit_edge

if.end20.i._cx18_process_idx_data.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_cx18_process_idx_data.exit.i

land.rhs.preheader.i.i:                           ; preds = %if.end20.i
  %buf2.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf2.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %42, i32 %38
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx, align 8
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %45 = phi i32 [ %44, %land.rhs.preheader.i.i ], [ %inc.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %e_buf.063.i.i = phi ptr [ %arrayidx4.i.i, %land.rhs.preheader.i.i ], [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %remaining.061.i.i = phi i32 [ %sub.i.i, %land.rhs.preheader.i.i ], [ %sub23.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %consumed.060.i.i = phi i32 [ 0, %land.rhs.preheader.i.i ], [ %add.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %45)
  %cmp6.i.i = icmp ult i32 %45, 64
  br i1 %cmp6.i.i, label %while.body.i.i, label %land.rhs.i.i._cx18_process_idx_data.exit.i_crit_edge

land.rhs.i.i._cx18_process_idx_data.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_cx18_process_idx_data.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %e_idx.064.i.i = getelementptr %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 3, i32 %45
  %offset_high.i.i = getelementptr inbounds %struct.cx18_enc_idx_entry, ptr %e_buf.063.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %offset_high.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %offset_high.i.i, align 1
  %offset_low.i.i = getelementptr inbounds %struct.cx18_enc_idx_entry, ptr %e_buf.063.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %offset_low.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %offset_low.i.i, align 1
  %50 = zext i32 %47 to i64
  %51 = zext i32 %49 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or i64 %52, %50
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #13
  %55 = ptrtoint ptr %e_idx.064.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %e_idx.064.i.i, align 8
  %pts_high.i.i = getelementptr inbounds %struct.cx18_enc_idx_entry, ptr %e_buf.063.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %pts_high.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %pts_high.i.i, align 1
  %58 = lshr i32 %57, 24
  %and.i.i = and i32 %58, 1
  %conv8.i.i = zext i32 %and.i.i to i64
  %shl9.i.i = shl nuw nsw i64 %conv8.i.i, 32
  %pts_low.i.i = getelementptr inbounds %struct.cx18_enc_idx_entry, ptr %e_buf.063.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %pts_low.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %pts_low.i.i, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  %conv10.i.i = zext i32 %61 to i64
  %or11.i.i = or i64 %shl9.i.i, %conv10.i.i
  %pts.i.i = getelementptr %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 3, i32 %45, i32 1
  %62 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %or11.i.i, ptr %pts.i.i, align 8
  %63 = ptrtoint ptr %e_buf.063.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %e_buf.063.i.i, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  %length12.i.i = getelementptr %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 3, i32 %45, i32 2
  %66 = ptrtoint ptr %length12.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %length12.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.cx18_enc_idx_entry, ptr %e_buf.063.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %flags.i.i, align 1
  %69 = lshr i32 %68, 24
  %and13.i.i = and i32 %69, 7
  %arrayidx14.i.i = getelementptr [8 x i32], ptr @_cx18_process_idx_data.mapping, i32 0, i32 %and13.i.i
  %70 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx14.i.i, align 4
  %flags15.i.i = getelementptr %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 3, i32 %45, i32 3
  %72 = ptrtoint ptr %flags15.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %flags15.i.i, align 4
  %reserved.i.i = getelementptr %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 3, i32 %45, i32 4
  %73 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %reserved.i.i, align 8
  %arrayidx18.i.i = getelementptr %struct.v4l2_enc_idx, ptr %idx, i32 0, i32 3, i32 %45, i32 4, i32 1
  %74 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %arrayidx18.i.i, align 4
  %75 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %idx, align 8
  %inc.i.i = add i32 %76, 1
  store i32 %inc.i.i, ptr %idx, align 8
  %incdec.ptr.i.i = getelementptr %struct.cx18_enc_idx_entry, ptr %e_buf.063.i.i, i32 1
  %sub23.i.i = add i32 %remaining.061.i.i, -24
  %add.i.i = add i32 %consumed.060.i.i, 24
  %cmp.i.i = icmp ugt i32 %sub23.i.i, 23
  br i1 %cmp.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge, label %while.body.i.i._cx18_process_idx_data.exit.i_crit_edge

while.body.i.i._cx18_process_idx_data.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_cx18_process_idx_data.exit.i

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

_cx18_process_idx_data.exit.i:                    ; preds = %while.body.i.i._cx18_process_idx_data.exit.i_crit_edge, %land.rhs.i.i._cx18_process_idx_data.exit.i_crit_edge, %if.end20.i._cx18_process_idx_data.exit.i_crit_edge
  %consumed.0.lcssa.i.i = phi i32 [ 0, %if.end20.i._cx18_process_idx_data.exit.i_crit_edge ], [ %add.i.i, %while.body.i.i._cx18_process_idx_data.exit.i_crit_edge ], [ %consumed.060.i.i, %land.rhs.i.i._cx18_process_idx_data.exit.i_crit_edge ]
  %remaining.0.lcssa.i.i = phi i32 [ %sub.i.i, %if.end20.i._cx18_process_idx_data.exit.i_crit_edge ], [ %sub23.i.i, %while.body.i.i._cx18_process_idx_data.exit.i_crit_edge ], [ %remaining.061.i.i, %land.rhs.i.i._cx18_process_idx_data.exit.i_crit_edge ]
  %77 = add i32 %remaining.0.lcssa.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %77)
  %78 = icmp ult i32 %77, 23
  %add28.i.i = select i1 %78, i32 %remaining.0.lcssa.i.i, i32 0
  %consumed.1.i.i = add i32 %add28.i.i, %consumed.0.lcssa.i.i
  %79 = ptrtoint ptr %readpos15.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %readpos15.i, align 4
  %add30.i.i = add i32 %consumed.1.i.i, %80
  store i32 %add30.i.i, ptr %readpos15.i, align 4
  %81 = ptrtoint ptr %readpos22.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %readpos22.i, align 4
  %add.i = add i32 %consumed.1.i.i, %82
  store i32 %add.i, ptr %readpos22.i, align 4
  %83 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %84)
  %cmp23.i = icmp ugt i32 %84, 63
  br i1 %cmp23.i, label %_cx18_process_idx_data.exit.i.cx18_process_idx_data.exit_crit_edge, label %lor.lhs.false.i45

_cx18_process_idx_data.exit.i.cx18_process_idx_data.exit_crit_edge: ; preds = %_cx18_process_idx_data.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cx18_process_idx_data.exit

lor.lhs.false.i45:                                ; preds = %_cx18_process_idx_data.exit.i
  %85 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %curr_buf.i, align 4
  %readpos25.i = getelementptr inbounds %struct.cx18_buffer, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %readpos25.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %readpos25.i, align 4
  %bytesused27.i = getelementptr inbounds %struct.cx18_buffer, ptr %86, i32 0, i32 3
  %89 = ptrtoint ptr %bytesused27.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bytesused27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp28.i = icmp ult i32 %88, %90
  br i1 %cmp28.i, label %lor.lhs.false.i45.cx18_process_idx_data.exit_crit_edge, label %lor.lhs.false29.i

lor.lhs.false.i45.cx18_process_idx_data.exit_crit_edge: ; preds = %lor.lhs.false.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cx18_process_idx_data.exit

lor.lhs.false29.i:                                ; preds = %lor.lhs.false.i45
  %91 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %92)
  %cmp32.not.i = icmp ult i32 %add.i, %92
  br i1 %cmp32.not.i, label %lor.lhs.false29.i.for.inc.i_crit_edge, label %lor.lhs.false29.i.cx18_process_idx_data.exit_crit_edge

lor.lhs.false29.i.cx18_process_idx_data.exit_crit_edge: ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cx18_process_idx_data.exit

lor.lhs.false29.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false29.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %93 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %curr_buf.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  store ptr %96, ptr %curr_buf.i, align 4
  %cmp13.not.i = icmp eq ptr %96, %buf_list6.i
  br i1 %cmp13.not.i, label %for.inc.i.cx18_process_idx_data.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cx18_process_idx_data.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cx18_process_idx_data.exit

cx18_process_idx_data.exit:                       ; preds = %for.inc.i.cx18_process_idx_data.exit_crit_edge, %lor.lhs.false29.i.cx18_process_idx_data.exit_crit_edge, %lor.lhs.false.i45.cx18_process_idx_data.exit_crit_edge, %_cx18_process_idx_data.exit.i.cx18_process_idx_data.exit_crit_edge, %if.then8.i, %if.end9.cx18_process_idx_data.exit_crit_edge
  %readpos = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 7
  %97 = ptrtoint ptr %readpos to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %readpos, align 4
  %bytesused = getelementptr inbounds %struct.cx18_mdl, ptr %call6, i32 0, i32 6
  %99 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bytesused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp11 = icmp ult i32 %98, %100
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %cx18_process_idx_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @_cx18_enqueue(ptr noundef %arrayidx, ptr noundef nonnull %call6, ptr noundef %q_full, i32 noundef 1) #13
  br label %do.end

if.end15:                                         ; preds = %cx18_process_idx_data.exit
  %call.i46 = tail call ptr @_cx18_enqueue(ptr noundef %arrayidx, ptr noundef nonnull %call6, ptr noundef %q_free, i32 noundef 0) #13
  %101 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %idx, align 8
  %cmp18 = icmp ult i32 %102, 64
  br i1 %cmp18, label %if.end15.do.body_crit_edge, label %if.end15.do.end_crit_edge

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %if.end15.do.end_crit_edge, %if.then12, %do.body.do.end_crit_edge
  %out_work_order.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 5, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %103 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %103, ptr noundef %out_work_order.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cx18_stream_enabled.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %cx18_stream_enabled.exit.cleanup_crit_edge ], [ -22, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_encoder_cmd(ptr nocapture noundef readnone %file, ptr noundef %fh, ptr nocapture noundef %enc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %3, label %do.body104 [
    i32 0, label %do.body
    i32 1, label %do.body8
    i32 2, label %do.body28
    i32 3, label %do.body65
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %5 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %call6 = tail call i32 @cx18_start_capture(ptr noundef %fh) #13
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %7 = load i32, ptr @cx18_debug, align 4
  %and9 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end22_crit_edge, label %do.end14

do.body8.do.end22_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %name17 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name17) #16
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %do.body8.do.end22_crit_edge
  %flags23 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %8 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags23, align 4
  %and24 = and i32 %9, 1
  store i32 %and24, ptr %flags23, align 4
  tail call void @cx18_stop_capture(ptr noundef %fh, i32 noundef %and24) #13
  br label %cleanup

do.body28:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %10 = load i32, ptr @cx18_debug, align 4
  %and29 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end42_crit_edge, label %do.end34

do.body28.do.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  %name37 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name37) #16
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %do.body28.do.end42_crit_edge
  %flags43 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %11 = ptrtoint ptr %flags43 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags43, align 4
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #13
  %12 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool45.not = icmp eq i32 %13, 0
  br i1 %tobool45.not, label %do.end42.cleanup_crit_edge, label %if.end47

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end47:                                         ; preds = %do.end42
  %i_flags = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 32
  %call48 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %i_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = tail call i32 @cx18_find_handle(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call52)
  %cmp = icmp eq i32 %call52, -1
  br i1 %cmp, label %do.end56, label %if.end62

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %name59 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name59) #16
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cx18_mute(ptr noundef %1) #13
  %call63 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001991, i32 noundef 1, i32 noundef %call52) #13
  br label %cleanup

do.body65:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %14 = load i32, ptr @cx18_debug, align 4
  %and66 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.do.end79_crit_edge, label %do.end71

do.body65.do.end79_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  %name74 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name74) #16
  br label %do.end79

do.end79:                                         ; preds = %do.end71, %do.body65.do.end79_crit_edge
  %flags80 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %15 = ptrtoint ptr %flags80 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags80, align 4
  %ana_capturing81 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 33
  %call.i.i149 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing81, i32 noundef 4) #13
  %16 = ptrtoint ptr %ana_capturing81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %ana_capturing81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool83.not = icmp eq i32 %17, 0
  br i1 %tobool83.not, label %do.end79.cleanup_crit_edge, label %if.end85

do.end79.cleanup_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end85:                                         ; preds = %do.end79
  %i_flags86 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 32
  %call87 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %i_flags86) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end85.cleanup_crit_edge, label %if.end90

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %call91 = tail call i32 @cx18_find_handle(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call91)
  %cmp92 = icmp eq i32 %call91, -1
  br i1 %cmp92, label %do.end96, label %if.end102

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %name99 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name99) #16
  br label %cleanup

if.end102:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %call103 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001992, i32 noundef 1, i32 noundef %call91) #13
  tail call void @cx18_unmute(ptr noundef %1) #13
  br label %cleanup

do.body104:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %18 = load i32, ptr @cx18_debug, align 4
  %and105 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body104.cleanup_crit_edge, label %do.end110

do.body104.cleanup_crit_edge:                     ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #15
  %name113 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name113, i32 noundef %3) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %do.body104.cleanup_crit_edge, %if.end102, %do.end96, %if.end85.cleanup_crit_edge, %do.end79.cleanup_crit_edge, %if.end62, %do.end56, %if.end47.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %do.end22, %do.end5
  %retval.0 = phi i32 [ -77, %do.end96 ], [ -77, %do.end56 ], [ %call6, %do.end5 ], [ -1, %do.end42.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ -1, %do.end79.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ -22, %do.end110 ], [ -22, %do.body104.cleanup_crit_edge ], [ 0, %if.end102 ], [ 0, %if.end62 ], [ 0, %do.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_try_encoder_cmd(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %enc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %do.body58 [
    i32 0, label %do.body
    i32 1, label %do.body7
    i32 2, label %do.body25
    i32 3, label %do.body42
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %5 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %7 = load i32, ptr @cx18_debug, align 4
  %and8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end21_crit_edge, label %do.end13

do.body7.do.end21_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %name16 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name16) #16
  br label %do.end21

do.end21:                                         ; preds = %do.end13, %do.body7.do.end21_crit_edge
  %flags22 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %8 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags22, align 4
  %and23 = and i32 %9, 1
  store i32 %and23, ptr %flags22, align 4
  br label %cleanup

do.body25:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %10 = load i32, ptr @cx18_debug, align 4
  %and26 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end39_crit_edge, label %do.end31

do.body25.do.end39_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %name34 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name34) #16
  br label %do.end39

do.end39:                                         ; preds = %do.end31, %do.body25.do.end39_crit_edge
  %flags40 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %11 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags40, align 4
  br label %cleanup

do.body42:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %12 = load i32, ptr @cx18_debug, align 4
  %and43 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end56_crit_edge, label %do.end48

do.body42.do.end56_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  %name51 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name51) #16
  br label %do.end56

do.end56:                                         ; preds = %do.end48, %do.body42.do.end56_crit_edge
  %flags57 = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %enc, i32 0, i32 1
  %13 = ptrtoint ptr %flags57 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %flags57, align 4
  br label %cleanup

do.body58:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %14 = load i32, ptr @cx18_debug, align 4
  %and59 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.cleanup_crit_edge, label %do.end64

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  %name67 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name67, i32 noundef %3) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.body58.cleanup_crit_edge, %do.end56, %do.end39, %do.end21, %do.end5
  %retval.0 = phi i32 [ -22, %do.end64 ], [ -22, %do.body58.cleanup_crit_edge ], [ 0, %do.end56 ], [ 0, %do.end39 ], [ 0, %do.end21 ], [ 0, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_g_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %subdevs = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn40 = load ptr, ptr %subdevs, align 4
  %cmp5.not42 = icmp eq ptr %.pn40, %subdevs
  br i1 %cmp5.not42, label %do.body.do.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn40, %do.body.for.body_crit_edge ]
  %__sd.044 = getelementptr i8, ptr %.pn43, i32 -80
  %ops = getelementptr i8, ptr %.pn43, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g_tuner, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 %10(ptr noundef %__sd.044, ptr noundef %vt) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body.do.end_crit_edge
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp22 = icmp eq i32 %13, 1
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 1
  %.str.41..str.42 = select i1 %cmp22, ptr @.str.41, ptr @.str.42
  %call24 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %.str.41..str.42, i32 noundef 32) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %subdevs = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn31 = load ptr, ptr %subdevs, align 4
  %cmp5.not33 = icmp eq ptr %.pn31, %subdevs
  br i1 %cmp5.not33, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %do.body.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_tuner, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %if.then9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 %10(ptr noundef %__sd.035, ptr noundef %vt) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_g_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %vf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %subdevs = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn31 = load ptr, ptr %subdevs, align 4
  %cmp5.not33 = icmp eq ptr %.pn31, %subdevs
  br i1 %cmp5.not33, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %do.body.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner6 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g_frequency, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 %10(ptr noundef %__sd.035, ptr noundef %vf) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_g_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %cap) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %is_50hz = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 8
  %type = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %cap, align 4
  %conv14 = select i1 %tobool.not, i16 4096, i16 17409
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %if.end
  %l.057 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body8_crit_edge ]
  %7 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.057)
  %cmp.i = icmp ult i32 %l.057, 6
  %9 = or i1 %cmp.i, %tobool.not.i
  br i1 %9, label %valid_service_line.exit, label %for.body8.if.then13_crit_edge

for.body8.if.then13_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

valid_service_line.exit:                          ; preds = %for.body8
  %10 = add nsw i32 %l.057, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %10)
  %11 = icmp ult i32 %10, 12
  %12 = and i1 %11, %tobool.not.i
  br i1 %12, label %valid_service_line.exit.if.then13_crit_edge, label %if.else

valid_service_line.exit.if.then13_crit_edge:      ; preds = %valid_service_line.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %valid_service_line.exit.if.then13_crit_edge, %for.body8.if.then13_crit_edge
  %arrayidx15 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 %l.057
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %arrayidx15, align 2
  %14 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cap, align 4
  %conv18 = or i16 %15, %conv14
  store i16 %conv18, ptr %cap, align 4
  br label %for.inc

if.else:                                          ; preds = %valid_service_line.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 %l.057
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx21, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then13
  %inc = add nuw nsw i32 %l.057, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.for.body8.1_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8

for.inc.for.body8.1_crit_edge:                    ; preds = %for.inc
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.inc.1.for.body8.1_crit_edge, %for.inc.for.body8.1_crit_edge
  %l.057.1 = phi i32 [ %inc.1, %for.inc.1.for.body8.1_crit_edge ], [ 0, %for.inc.for.body8.1_crit_edge ]
  %17 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.1 = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %l.057.1)
  %cmp.i.1 = icmp ult i32 %l.057.1, 6
  %19 = or i1 %cmp.i.1, %tobool.not.i.1
  br i1 %19, label %valid_service_line.exit.1, label %land.lhs.true6.i.1

land.lhs.true6.i.1:                               ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %l.057.1)
  %cmp7.i.1 = icmp ult i32 %l.057.1, 23
  br i1 %cmp7.i.1, label %land.lhs.true6.i.1.if.then13.1_crit_edge, label %land.lhs.true6.i.1.if.else.1_crit_edge

land.lhs.true6.i.1.if.else.1_crit_edge:           ; preds = %land.lhs.true6.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.1

land.lhs.true6.i.1.if.then13.1_crit_edge:         ; preds = %land.lhs.true6.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.1

valid_service_line.exit.1:                        ; preds = %for.body8.1
  %20 = add nsw i32 %l.057.1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %20)
  %21 = icmp ult i32 %20, 12
  %22 = and i1 %21, %tobool.not.i.1
  br i1 %22, label %valid_service_line.exit.1.if.then13.1_crit_edge, label %valid_service_line.exit.1.if.else.1_crit_edge

valid_service_line.exit.1.if.else.1_crit_edge:    ; preds = %valid_service_line.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.1

valid_service_line.exit.1.if.then13.1_crit_edge:  ; preds = %valid_service_line.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.1

if.else.1:                                        ; preds = %valid_service_line.exit.1.if.else.1_crit_edge, %land.lhs.true6.i.1.if.else.1_crit_edge
  %arrayidx21.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 %l.057.1
  %23 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %arrayidx21.1, align 2
  br label %for.inc.1

if.then13.1:                                      ; preds = %valid_service_line.exit.1.if.then13.1_crit_edge, %land.lhs.true6.i.1.if.then13.1_crit_edge
  %arrayidx15.1 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 1, i32 %l.057.1
  %24 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv14, ptr %arrayidx15.1, align 2
  %25 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cap, align 4
  %conv18.1 = or i16 %26, %conv14
  store i16 %conv18.1, ptr %cap, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %if.else.1
  %inc.1 = add nuw nsw i32 %l.057.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 24
  br i1 %exitcond.1.not, label %for.inc23.1, label %for.inc.1.for.body8.1_crit_edge

for.inc.1.for.body8.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.1

for.inc23.1:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %uglygep = getelementptr i8, ptr %cap, i32 104
  %27 = call ptr @memset(ptr %uglygep, i32 0, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %for.inc23.1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.inc23.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_log_status(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh) #4 align 64 {
entry:
  %vidin = alloca %struct.v4l2_input, align 8
  %audin = alloca %struct.v4l2_audio, align 4
  %tv = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %vidin) #13
  %2 = call ptr @memset(ptr %vidin, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %audin) #13
  %3 = call ptr @memset(ptr %audin, i32 255, i32 52)
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %card_name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card_name, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, ptr noundef nonnull @.str.45, ptr noundef %5) #16
  %hw_flags = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %hw_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv) #13
  %8 = call ptr @memset(ptr %tv, i32 255, i32 68)
  call void @cx18_read_eeprom(ptr noundef %1, ptr noundef nonnull %tv) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv) #13
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %subdevs = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn168 = load ptr, ptr %subdevs, align 4
  %cmp.not170 = icmp eq ptr %.pn168, %subdevs
  br i1 %cmp.not170, label %do.body3.do.end25_crit_edge, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

do.body3.do.end25_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body3.for.body_crit_edge
  %.pn171 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn168, %do.body3.for.body_crit_edge ]
  %__sd.0172 = getelementptr i8, ptr %.pn171, i32 -80
  %ops = getelementptr i8, ptr %.pn171, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = call i32 %15(ptr noundef %__sd.0172) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn171 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn171, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

do.end25:                                         ; preds = %for.inc.do.end25_crit_edge, %do.body3.do.end25_crit_edge
  %active_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 65
  %17 = ptrtoint ptr %active_input to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_input, align 8
  %conv = trunc i32 %18 to i16
  %call28 = call i32 @cx18_get_input(ptr noundef %1, i16 noundef zeroext %conv, ptr noundef nonnull %vidin) #13
  %audio_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 64
  %19 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %audio_input, align 4
  %conv29 = trunc i32 %20 to i16
  %call30 = call i32 @cx18_get_audio_input(ptr noundef %1, i16 noundef zeroext %conv29, ptr noundef nonnull %audin) #13
  %name38 = getelementptr inbounds %struct.v4l2_input, ptr %vidin, i32 0, i32 1
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, ptr noundef %name38) #16
  %name48 = getelementptr inbounds %struct.v4l2_audio, ptr %audin, i32 0, i32 1
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef %name48) #16
  %gpio_lock = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 61
  call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #13
  %gpio_dir = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 59
  %21 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 60
  %23 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_val, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name, i32 noundef %22, i32 noundef %24) #16
  call void @mutex_unlock(ptr noundef %gpio_lock) #13
  %i_flags = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_flags, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool68.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool68.not, ptr @.str.59, ptr @.str.58
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name, ptr noundef nonnull %cond) #16
  %hdl = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19, i32 6
  call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #13
  %28 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_flags, align 8
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %29) #16
  br label %for.body85

for.body85:                                       ; preds = %cleanup.for.body85_crit_edge, %do.end25
  %i.0173 = phi i32 [ 0, %do.end25 ], [ %inc, %cleanup.for.body85_crit_edge ]
  %v4l2_dev86 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %i.0173, i32 0, i32 7
  %30 = ptrtoint ptr %v4l2_dev86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %v4l2_dev86, align 4
  %cmp87 = icmp eq ptr %31, null
  br i1 %cmp87, label %for.body85.cleanup_crit_edge, label %lor.lhs.false

for.body85.cleanup_crit_edge:                     ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body85
  %buffers = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %i.0173, i32 13
  %32 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp89 = icmp eq i32 %33, 0
  br i1 %cmp89, label %lor.lhs.false.cleanup_crit_edge, label %do.end95

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end95:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %name100 = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %i.0173, i32 3
  %34 = ptrtoint ptr %name100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name100, align 8
  %s_flags = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %i.0173, i32 9
  %36 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_flags, align 8
  %depth = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %i.0173, i32 19, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %depth, i32 noundef 4) #13
  %38 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %depth, align 4
  %bufs_per_mdl = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %i.0173, i32 15
  %40 = ptrtoint ptr %bufs_per_mdl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bufs_per_mdl, align 4
  %mul = mul i32 %39, 100
  %mul102 = mul i32 %mul, %41
  %42 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffers, align 4
  %div = udiv i32 %mul102, %43
  %buf_size = getelementptr %struct.cx18, ptr %1, i32 0, i32 29, i32 %i.0173, i32 14
  %44 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_size, align 8
  %mul105 = mul i32 %45, %43
  %div106167 = lshr i32 %mul105, 10
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name, ptr noundef %35, i32 noundef %37, i32 noundef %div, i32 noundef %div106167, i32 noundef %43) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %lor.lhs.false.cleanup_crit_edge, %for.body85.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %do.end113, label %cleanup.for.body85_crit_edge

cleanup.for.body85_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body85

do.end113:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  %mpg_data_received = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 42
  %46 = ptrtoint ptr %mpg_data_received to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mpg_data_received, align 8
  %vbi_data_inserted = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 43
  %48 = ptrtoint ptr %vbi_data_inserted to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %vbi_data_inserted, align 8
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, i64 noundef %47, i64 noundef %49) #16
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %audin) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %vidin) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_g_register(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg2, align 1
  %2 = and i64 %1, -67108861
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %3 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cx1, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 4, ptr %size, align 1
  %conv = trunc i64 %1 to i32
  %enc_mem.i = getelementptr inbounds %struct.cx18, ptr %4, i32 0, i32 39
  %6 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  %conv8 = zext i32 %9 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %conv8, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_register(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reg2 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg2, align 1
  %2 = and i64 %1, -67108861
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %entry
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %3 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cx1, align 4
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %val, align 1
  %conv = trunc i64 %6 to i32
  %conv7 = trunc i64 %1 to i32
  %enc_mem.i = getelementptr inbounds %struct.cx18, ptr %4, i32 0, i32 39
  %7 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enc_mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv7
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp1.i.i = icmp eq i32 %11, %conv
  br i1 %cmp1.i.i, label %if.end5.cleanup_crit_edge, label %for.cond.i.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp1.1.i.i = icmp eq i32 %13, %conv
  br i1 %cmp1.1.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp1.2.i.i = icmp eq i32 %15, %conv
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp1.3.i.i = icmp eq i32 %17, %conv
  br i1 %cmp1.3.i.i, label %for.cond.2.i.i.cleanup_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.cleanup_crit_edge:                 ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp1.4.i.i = icmp eq i32 %19, %conv
  br i1 %cmp1.4.i.i, label %for.cond.3.i.i.cleanup_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.cleanup_crit_edge:                 ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp1.5.i.i = icmp eq i32 %21, %conv
  br i1 %cmp1.5.i.i, label %for.cond.4.i.i.cleanup_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.cleanup_crit_edge:                 ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp1.6.i.i = icmp eq i32 %23, %conv
  br i1 %cmp1.6.i.i, label %for.cond.5.i.i.cleanup_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.cleanup_crit_edge:                 ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv)
  %cmp1.7.i.i = icmp eq i32 %25, %conv
  br i1 %cmp1.7.i.i, label %for.cond.6.i.i.cleanup_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.cleanup_crit_edge:                 ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv)
  %cmp1.8.i.i = icmp eq i32 %27, %conv
  br i1 %cmp1.8.i.i, label %for.cond.7.i.i.cleanup_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.cleanup_crit_edge:                 ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #13, !srcloc !127
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8.i.i, %for.cond.7.i.i.cleanup_crit_edge, %for.cond.6.i.i.cleanup_crit_edge, %for.cond.5.i.i.cleanup_crit_edge, %for.cond.4.i.i.cleanup_crit_edge, %for.cond.3.i.i.cleanup_crit_edge, %for.cond.2.i.i.cleanup_crit_edge, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ 0, %for.cond.1.i.i.cleanup_crit_edge ], [ 0, %for.cond.2.i.i.cleanup_crit_edge ], [ 0, %for.cond.3.i.i.cleanup_crit_edge ], [ 0, %for.cond.4.i.i.cleanup_crit_edge ], [ 0, %for.cond.5.i.i.cleanup_crit_edge ], [ 0, %for.cond.6.i.i.cleanup_crit_edge ], [ 0, %for.cond.7.i.i.cleanup_crit_edge ], [ 0, %for.cond.8.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_default(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i1 noundef zeroext %valid_prio, i32 noundef %cmd, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_open_id, ptr %fh, i32 0, i32 3
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074029670, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074029670
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %do.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  %subdevs = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36 = load ptr, ptr %subdevs, align 4
  %cmp5.not38 = icmp eq ptr %.pn36, %subdevs
  br i1 %cmp5.not38, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %do.body.for.body_crit_edge ]
  %__sd.040 = getelementptr i8, ptr %.pn39, i32 -80
  %grp_id = getelementptr i8, ptr %.pn39, i32 68
  %5 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %grp_id, align 4
  %and6 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ops = getelementptr i8, ptr %.pn39, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %land.lhs.true9.for.inc_crit_edge, label %if.then13

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 %12(ptr noundef %__sd.040, i32 noundef 1) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_reqbufs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_querybuf(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_qbuf(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_dqbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamon(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_streamoff(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_get_input(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_get_audio_input(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx18_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_cx18_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_start_capture(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_stop_capture(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_find_handle(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_read_eeprom(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 516, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_s_input._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_s_input._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 520, i32 2}
!8 = !{ptr @cx18_s_input._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cx18_s_input._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 562, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cx18_s_frequency._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @cx18_s_frequency._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 604, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cx18_s_std._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @cx18_s_std._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @cx18_ioctl_ops, !21, !"cx18_ioctl_ops", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1075, i32 36}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 390, i32 24}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 393, i32 4}
!26 = !{ptr @cx18_enum_fmt_vid_cap.formats, !27, !"formats", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 468, i32 35}
!28 = !{ptr @_cx18_process_idx_data.mapping, !29, !"mapping", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 677, i32 19}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 928, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cx18_encoder_cmd._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cx18_encoder_cmd._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 933, i32 3}
!37 = !{ptr @cx18_encoder_cmd._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cx18_encoder_cmd._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 940, i32 3}
!41 = !{ptr @cx18_encoder_cmd._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cx18_encoder_cmd._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 948, i32 4}
!45 = !{ptr @cx18_encoder_cmd._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cx18_encoder_cmd._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 956, i32 3}
!49 = !{ptr @cx18_encoder_cmd._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cx18_encoder_cmd._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 964, i32 4}
!53 = !{ptr @cx18_encoder_cmd._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cx18_encoder_cmd._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 972, i32 3}
!57 = !{ptr @cx18_encoder_cmd._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cx18_encoder_cmd._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 985, i32 3}
!61 = !{ptr @cx18_try_encoder_cmd._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cx18_try_encoder_cmd._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @cx18_try_encoder_cmd._entry.33, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 990, i32 3}
!65 = !{ptr @cx18_try_encoder_cmd._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @cx18_try_encoder_cmd._entry.35, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 995, i32 3}
!68 = !{ptr @cx18_try_encoder_cmd._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @cx18_try_encoder_cmd._entry.37, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1000, i32 3}
!71 = !{ptr @cx18_try_encoder_cmd._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @cx18_try_encoder_cmd._entry.39, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1005, i32 3}
!74 = !{ptr @cx18_try_encoder_cmd._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 634, i32 21}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 636, i32 21}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1018, i32 2}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cx18_log_status._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @cx18_log_status._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1027, i32 2}
!87 = !{ptr @cx18_log_status._entry.46, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx18_log_status._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1028, i32 2}
!91 = !{ptr @cx18_log_status._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx18_log_status._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1030, i32 2}
!95 = !{ptr @cx18_log_status._entry.52, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cx18_log_status._entry_ptr.54, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1033, i32 2}
!99 = !{ptr @cx18_log_status._entry.55, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cx18_log_status._entry_ptr.57, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1036, i32 2}
!105 = !{ptr @cx18_log_status._entry.60, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cx18_log_status._entry_ptr.62, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1042, i32 3}
!109 = !{ptr @cx18_log_status._entry.63, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cx18_log_status._entry_ptr.65, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/cx18/cx18-ioctl.c", i32 1048, i32 2}
!113 = !{ptr @cx18_log_status._entry.66, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cx18_log_status._entry_ptr.68, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i64 5771230}
!125 = !{i64 2158670823}
!126 = !{i64 2158671193}
!127 = !{i64 5770812}
