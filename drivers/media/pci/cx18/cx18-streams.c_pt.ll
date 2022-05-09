; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-streams.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-streams.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx18_start_v4l2_encode_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_cx18_start_v4l2_encode_stream\09\09\09\09"
module asm "\09.long\09__crc_cx18_start_v4l2_encode_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx18_start_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22cx18_start_v4l2_encode_stream\22\09\09\09\09\09"
module asm "__kstrtabns_cx18_start_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx18_stop_v4l2_encode_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_cx18_stop_v4l2_encode_stream\09\09\09\09"
module asm "\09.long\09__crc_cx18_stop_v4l2_encode_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx18_stop_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22cx18_stop_v4l2_encode_stream\22\09\09\09\09\09"
module asm "__kstrtabns_cx18_stop_v4l2_encode_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.177 = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.cx18_card = type { i32, ptr, ptr, i32, i32, i32, i32, [6 x %struct.cx18_card_video_input], [3 x %struct.cx18_card_audio_input], %struct.cx18_card_audio_input, i8, %struct.cx18_gpio_init, %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_audio_input, [2 x %struct.cx18_card_tuner], ptr, %struct.cx18_ddr, ptr }
%struct.cx18_card_video_input = type { i8, i8, i32 }
%struct.cx18_card_audio_input = type { i8, i32, i16 }
%struct.cx18_gpio_init = type { i32, i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }
%struct.cx18_gpio_audio_input = type { i32, i32, i32, i32 }
%struct.cx18_card_tuner = type { i64, i32 }
%struct.cx18_ddr = type { i32, i32, i32, i32, i32, i32 }
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
%struct.cx18_scb = type { i32, [7 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], [8 x i32], [32 x i32], %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, [7 x [2 x %struct.cx18_mdl_ack]], [1 x %struct.cx18_mdl_ent] }
%struct.cx18_mdl_ent = type { i32, i32 }
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx18_videobuf_buffer = type { %struct.videobuf_buffer, i64, i32 }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }

@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_start_v4l2_encode_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:  info: Start encoder stream %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cx18_start_v4l2_encode_stream\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cx18/cx18-streams.c\00", [58 x i8] zeroinitializer }, align 32
@cx18_start_v4l2_encode_stream._entry_ptr = internal global ptr @cx18_start_v4l2_encode_stream._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cx18_start_v4l2_encode_stream._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  warning: Error starting capture!\0A\00", [55 x i8] zeroinitializer }, align 32
@cx18_start_v4l2_encode_stream._entry_ptr.5 = internal global ptr @cx18_start_v4l2_encode_stream._entry.3, section ".printk_index", align 4
@__kstrtab_cx18_start_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx18_start_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_cx18_start_v4l2_encode_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx18_start_v4l2_encode_stream to i32), ptr @__kstrtab_cx18_start_v4l2_encode_stream, ptr @__kstrtabns_cx18_start_v4l2_encode_stream }, section "___ksymtab+cx18_start_v4l2_encode_stream", align 4
@cx18_stop_v4l2_encode_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  info: Stop Capture\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx18_stop_v4l2_encode_stream\00", [35 x i8] zeroinitializer }, align 32
@cx18_stop_v4l2_encode_stream._entry_ptr = internal global ptr @cx18_stop_v4l2_encode_stream._entry, section ".printk_index", align 4
@cx18_stop_v4l2_encode_stream._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: ignoring gop_end: not (yet?) supported by the firmware\0A\00", [34 x i8] zeroinitializer }, align 32
@cx18_stop_v4l2_encode_stream._entry_ptr.10 = internal global ptr @cx18_stop_v4l2_encode_stream._entry.8, section ".printk_index", align 4
@__kstrtab_cx18_stop_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx18_stop_v4l2_encode_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_cx18_stop_v4l2_encode_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx18_stop_v4l2_encode_stream to i32), ptr @__kstrtab_cx18_stop_v4l2_encode_stream, ptr @__kstrtabns_cx18_stop_v4l2_encode_stream }, section "___ksymtab+cx18_stop_v4l2_encode_stream", align 4
@cx18_stream_info = internal constant { [7 x %struct.anon.177], [52 x i8] } { [7 x %struct.anon.177] [%struct.anon.177 { ptr @.str.17, i32 0, i32 0, i32 2, i32 16973825 }, %struct.anon.177 { ptr @.str.18, i32 0, i32 -1, i32 2, i32 0 }, %struct.anon.177 { ptr @.str.19, i32 0, i32 32, i32 2, i32 84082689 }, %struct.anon.177 { ptr @.str.20, i32 1, i32 0, i32 2, i32 16842832 }, %struct.anon.177 { ptr @.str.21, i32 0, i32 24, i32 2, i32 16973824 }, %struct.anon.177 { ptr @.str.22, i32 0, i32 -1, i32 2, i32 0 }, %struct.anon.177 { ptr @.str.23, i32 2, i32 0, i32 3, i32 327680 }], [52 x i8] zeroinitializer }, align 32
@cx18_first_minor = external dso_local local_unnamed_addr global i32, align 4
@cx18_prep_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Disabled %s device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx18_prep_dev\00", [18 x i8] zeroinitializer }, align 32
@cx18_prep_dev._entry_ptr = internal global ptr @cx18_prep_dev._entry, section ".printk_index", align 4
@cx18_prep_dev._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Couldn't allocate cx18_dvb structure for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@cx18_prep_dev._entry_ptr.15 = internal global ptr @cx18_prep_dev._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@cx18_v4l2_enc_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @cx18_v4l2_read, ptr null, ptr @cx18_v4l2_enc_poll, ptr @video_ioctl2, ptr null, ptr @cx18_v4l2_mmap, ptr @cx18_v4l2_open, ptr @cx18_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"encoder MPEG\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TS\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"encoder YUV\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"encoder VBI\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"encoder PCM audio\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"encoder IDX\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"encoder radio\00", [18 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&s->waitq\00", [22 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&s->q_free.lock\00", [16 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&s->q_busy.lock\00", [16 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&s->q_full.lock\00", [16 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&s->q_idle.lock\00", [16 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&s->out_work_order)\00", [58 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&s->vb_timeout)\00", [47 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&s->vb_lock\00", [20 x i8] zeroinitializer }, align 32
@cx18_stream_init.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&s->vbuf_q_lock\00", [16 x i8] zeroinitializer }, align 32
@cx18_videobuf_qops = internal constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @buffer_setup, ptr @buffer_prepare, ptr @buffer_queue, ptr @buffer_release }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx18_reg_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: DVB failed to register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx18_reg_dev\00", [19 x i8] zeroinitializer }, align 32
@cx18_reg_dev._entry_ptr = internal global ptr @cx18_reg_dev._entry, section ".printk_index", align 4
@cx18_reg_dev._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: Couldn't register v4l2 device for %s (device node number %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@cx18_reg_dev._entry_ptr.45 = internal global ptr @cx18_reg_dev._entry.43, section ".printk_index", align 4
@cx18_reg_dev._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: Registered device %s for %s (%d x %d.%02d kB)\0A\00", [43 x i8] zeroinitializer }, align 32
@cx18_reg_dev._entry_ptr.48 = internal global ptr @cx18_reg_dev._entry.46, section ".printk_index", align 4
@cx18_reg_dev._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Registered device %s for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@cx18_reg_dev._entry_ptr.51 = internal global ptr @cx18_reg_dev._entry.49, section ".printk_index", align 4
@cx18_reg_dev._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: Registered device %s for %s (%d x %d bytes)\0A\00", [45 x i8] zeroinitializer }, align 32
@cx18_reg_dev._entry_ptr.54 = internal global ptr @cx18_reg_dev._entry.52, section ".printk_index", align 4
@cx18_reg_dev._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_reg_dev._entry_ptr.56 = internal global ptr @cx18_reg_dev._entry.55, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cx18_vbi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s:  info: Setup VBI h: %d lines %x bpl %d fr %d %x %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_vbi_setup\00", [17 x i8] zeroinitializer }, align 32
@cx18_vbi_setup._entry_ptr = internal global ptr @cx18_vbi_setup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 779, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 918, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 970, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 982, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"cx18_stream_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 48, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 329, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 340, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 354, i32 57 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"cx18_v4l2_enc_fops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 25, i32 42 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 50, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 57, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 62, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 69, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 76, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 82, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 87, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 262, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 264, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 266, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 268, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 270, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 273, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 276, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 277, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 279, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [19 x i8] c"cx18_videobuf_qops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 234, i32 40 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 405, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 428, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 438, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 445, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 450, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 454, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [41 x i8] c"../drivers/media/pci/cx18/cx18-streams.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 641, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__ksymtab_cx18_start_v4l2_encode_stream, ptr @__ksymtab_cx18_stop_v4l2_encode_stream, ptr @cx18_prep_dev._entry, ptr @cx18_prep_dev._entry.13, ptr @cx18_prep_dev._entry_ptr, ptr @cx18_prep_dev._entry_ptr.15, ptr @cx18_reg_dev._entry, ptr @cx18_reg_dev._entry.43, ptr @cx18_reg_dev._entry.46, ptr @cx18_reg_dev._entry.49, ptr @cx18_reg_dev._entry.52, ptr @cx18_reg_dev._entry.55, ptr @cx18_reg_dev._entry_ptr, ptr @cx18_reg_dev._entry_ptr.45, ptr @cx18_reg_dev._entry_ptr.48, ptr @cx18_reg_dev._entry_ptr.51, ptr @cx18_reg_dev._entry_ptr.54, ptr @cx18_reg_dev._entry_ptr.56, ptr @cx18_start_v4l2_encode_stream._entry, ptr @cx18_start_v4l2_encode_stream._entry.3, ptr @cx18_start_v4l2_encode_stream._entry_ptr, ptr @cx18_start_v4l2_encode_stream._entry_ptr.5, ptr @cx18_stop_v4l2_encode_stream._entry, ptr @cx18_stop_v4l2_encode_stream._entry.8, ptr @cx18_stop_v4l2_encode_stream._entry_ptr, ptr @cx18_stop_v4l2_encode_stream._entry_ptr.10, ptr @cx18_vbi_setup._entry, ptr @cx18_vbi_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @cx18_stream_info, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @cx18_v4l2_enc_fops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @cx18_stream_init.__key, ptr @.str.24, ptr @cx18_stream_init.__key.25, ptr @.str.26, ptr @cx18_stream_init.__key.27, ptr @.str.28, ptr @cx18_stream_init.__key.29, ptr @.str.30, ptr @cx18_stream_init.__key.31, ptr @.str.32, ptr @cx18_stream_init.__key.33, ptr @.str.34, ptr @cx18_stream_init.__key.35, ptr @.str.36, ptr @cx18_stream_init.__key.37, ptr @.str.38, ptr @cx18_stream_init.__key.39, ptr @.str.40, ptr @cx18_videobuf_qops, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_start_v4l2_encode_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_start_v4l2_encode_stream._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stop_v4l2_encode_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stop_v4l2_encode_stream._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_info to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_prep_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_prep_dev._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_v4l2_enc_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_init.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_videobuf_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reg_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reg_dev._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reg_dev._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reg_dev._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reg_dev._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reg_dev._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_vbi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_streams_setup(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_cap.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 12
  %name21.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %card.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %vbuf_q_lock.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 29
  %vb_type.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 30
  %vbuf_q.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 28
  %pci_dev.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 1
  %serialize_lock.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 25
  %pixelformat.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 22
  %height.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 19, i32 3
  %vb_bytes_per_frame.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 23
  %vb_bytes_per_line.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 24
  %v4l2_dev53.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2
  %tuner_std.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 67
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %type.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028
  %0 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v4l2_cap.i, align 8
  %arrayidx1.i = getelementptr [7 x %struct.anon.177], ptr @cx18_stream_info, i32 0, i32 %type.028
  %num_offset2.i = getelementptr [7 x %struct.anon.177], ptr @cx18_stream_info, i32 0, i32 %type.028, i32 2
  %2 = ptrtoint ptr %num_offset2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_offset2.i, align 4
  %4 = ptrtoint ptr %cx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_first_minor to i32))
  %6 = load i32, ptr @cx18_first_minor, align 4
  %add.i = add i32 %5, %3
  %add3.i = add i32 %add.i, %6
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 7
  %7 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %v4l2_dev.i, align 4
  %dvb.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 1
  %8 = ptrtoint ptr %dvb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dvb.i, align 8
  %cx4.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 2
  %9 = ptrtoint ptr %cx4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cx, ptr %cx4.i, align 4
  %type5.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 4
  %10 = ptrtoint ptr %type5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type.028, ptr %type5.i, align 4
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i, align 4
  %name7.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 3
  %13 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type.028)
  %cmp.i = icmp eq i32 %type.028, 6
  %and.i = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.body.if.end_crit_edge, label %if.end.i

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type.028)
  %cmp8.i = icmp eq i32 %type.028, 3
  %and10.i = and i32 %1, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond124.i = select i1 %cmp8.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond124.i, label %if.end.i.if.end_crit_edge, label %if.end13.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end13.i:                                       ; preds = %if.end.i
  br i1 %cmp.i, label %if.end13.i.if.end24.i_crit_edge, label %land.lhs.true16.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

land.lhs.true16.i:                                ; preds = %if.end13.i
  %arrayidx17.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 27, i32 %type.028
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.i = icmp eq i32 %15, 0
  br i1 %cmp18.i, label %do.end.i, label %land.lhs.true16.i.if.end24.i_crit_edge

land.lhs.true16.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

do.end.i:                                         ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name21.i, ptr noundef %12) #15
  br label %if.end

if.end24.i:                                       ; preds = %land.lhs.true16.i.if.end24.i_crit_edge, %if.end13.i.if.end24.i_crit_edge
  %16 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 2248)
  %17 = ptrtoint ptr %cx4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cx, ptr %cx4.i, align 4
  %18 = ptrtoint ptr %type5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %type.028, ptr %type5.i, align 4
  %19 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %12, ptr %name7.i, align 8
  %handle.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 5
  %20 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %handle.i.i, align 8
  %dma.i.i = getelementptr [7 x %struct.anon.177], ptr @cx18_stream_info, i32 0, i32 %type.028, i32 3
  %21 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma.i.i, align 4
  %dma6.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 10
  %23 = ptrtoint ptr %dma6.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dma6.i.i, align 4
  %caps.i.i = getelementptr [7 x %struct.anon.177], ptr @cx18_stream_info, i32 0, i32 %type.028, i32 4
  %24 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps.i.i, align 4
  %v4l2_dev_caps.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 6
  %26 = ptrtoint ptr %v4l2_dev_caps.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %v4l2_dev_caps.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 27, i32 %type.028
  %27 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.i.i, align 4
  %buffers.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 13
  %29 = ptrtoint ptr %buffers.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %buffers.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 28, i32 %type.028
  %30 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i.i, align 4
  %buf_size.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 14
  %32 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %buf_size.i.i, align 8
  %buf_pool.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 12
  %33 = ptrtoint ptr %buf_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %buf_pool.i.i, ptr %buf_pool.i.i, align 4
  %prev.i.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 12, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf_pool.i.i, ptr %prev.i.i.i, align 4
  %bufs_per_mdl.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 15
  %35 = ptrtoint ptr %bufs_per_mdl.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %bufs_per_mdl.i.i, align 4
  %mdl_size.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 16
  %36 = ptrtoint ptr %mdl_size.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %mdl_size.i.i, align 8
  %waitq.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %waitq.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @cx18_stream_init.__key) #12
  %id.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 8
  %37 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %id.i.i, align 4
  %q_free.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 17
  %lock.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 17, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @cx18_stream_init.__key.25, i16 noundef signext 3) #12
  tail call void @cx18_queue_init(ptr noundef %q_free.i.i) #12
  %q_busy.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 18
  %lock17.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 18, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock17.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @cx18_stream_init.__key.27, i16 noundef signext 3) #12
  tail call void @cx18_queue_init(ptr noundef %q_busy.i.i) #12
  %q_full.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 19
  %lock23.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 19, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock23.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @cx18_stream_init.__key.29, i16 noundef signext 3) #12
  tail call void @cx18_queue_init(ptr noundef %q_full.i.i) #12
  %q_idle.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 20
  %lock29.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 20, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock29.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @cx18_stream_init.__key.31, i16 noundef signext 3) #12
  tail call void @cx18_queue_init(ptr noundef %q_idle.i.i) #12
  %out_work_order.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 21
  tail call void @__init_work(ptr noundef %out_work_order.i.i, i32 noundef 0) #12
  %38 = ptrtoint ptr %out_work_order.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %out_work_order.i.i, align 4
  %lockdep_map.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @cx18_stream_init.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry38.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 21, i32 1
  %39 = ptrtoint ptr %entry38.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry38.i.i, ptr %entry38.i.i, align 4
  %prev.i109.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 21, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry38.i.i, ptr %prev.i109.i.i, align 4
  %func.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 21, i32 2
  %41 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cx18_out_work_handler, ptr %func.i.i, align 4
  %vb_capture.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 25
  %42 = ptrtoint ptr %vb_capture.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %vb_capture.i.i, ptr %vb_capture.i.i, align 4
  %prev.i110.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 25, i32 1
  %43 = ptrtoint ptr %prev.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %vb_capture.i.i, ptr %prev.i110.i.i, align 4
  %vb_timeout.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 27
  tail call void @init_timer_key(ptr noundef %vb_timeout.i.i, ptr noundef nonnull @cx18_vb_timeout, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @cx18_stream_init.__key.35) #12
  %vb_lock.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.028, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %vb_lock.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @cx18_stream_init.__key.37, i16 noundef signext 3) #12
  %44 = zext i32 %type.028 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type.028, label %if.end46.i [
    i32 2, label %if.end46.thread126.i
    i32 1, label %if.then26.i
  ]

if.end46.thread126.i:                             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__raw_spin_lock_init(ptr noundef %vbuf_q_lock.i.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @cx18_stream_init.__key.39, i16 noundef signext 3) #12
  %45 = ptrtoint ptr %vb_type.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %vb_type.i.i, align 8
  %46 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void @videobuf_queue_vmalloc_init(ptr noundef %vbuf_q.i.i, ptr noundef nonnull @cx18_videobuf_qops, ptr noundef %dev.i.i, ptr noundef %vbuf_q_lock.i.i, i32 noundef 1, i32 noundef 4, i32 noundef 160, ptr noundef %arrayidx.i, ptr noundef %serialize_lock.i.i) #12
  %48 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 842091848, ptr %pixelformat.i.i, align 8
  %49 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %height.i.i, align 2
  %conv.i.i = zext i16 %50 to i32
  %div.i.i = mul nuw nsw i32 %conv.i.i, 1080
  %51 = ptrtoint ptr %vb_bytes_per_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div.i.i, ptr %vb_bytes_per_frame.i.i, align 4
  %52 = ptrtoint ptr %vb_bytes_per_line.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 720, ptr %vb_bytes_per_line.i.i, align 8
  br label %if.end49.i

if.then26.i:                                      ; preds = %if.end24.i
  %53 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card.i, align 8
  %hw_all.i = getelementptr inbounds %struct.cx18_card, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %hw_all.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hw_all.i, align 8
  %and27.i = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.then26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 2192) #16
  %58 = ptrtoint ptr %dvb.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i.i, ptr %dvb.i, align 8
  %cmp33.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp33.i, label %cx18_prep_dev.exit, label %if.then29.i.if.end_crit_edge

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else.i:                                        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %buffers.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %buffers.i.i, align 4
  br label %if.end

if.end46.i:                                       ; preds = %if.end24.i
  %60 = and i32 %type.028, 1073741819
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %if.end46.i.if.end_crit_edge, label %if.end46.i.if.end49.i_crit_edge

if.end46.i.if.end49.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.end46.i.if.end_crit_edge:                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end49.i:                                       ; preds = %if.end46.i.if.end49.i_crit_edge, %if.end46.thread126.i
  %name51.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 12
  %62 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name7.i, align 8
  %call57.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name51.i, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef %name21.i, ptr noundef %63) #12
  %conv.i = trunc i32 %add3.i to i16
  %num59.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 16
  %64 = ptrtoint ptr %num59.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i, ptr %num59.i, align 4
  %65 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %v4l2_dev53.i, ptr %v4l2_dev.i, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 3
  %66 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @cx18_v4l2_enc_fops, ptr %fops.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 23
  %67 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %68 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card.i, align 8
  %video_inputs.i = getelementptr inbounds %struct.cx18_card, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %video_inputs.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %video_inputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp68.i = icmp eq i8 %71, 1
  br i1 %cmp68.i, label %if.then70.i, label %if.end49.i.if.end75.i_crit_edge

if.end49.i.if.end75.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then70.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %tuner_std.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %tuner_std.i, align 8
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then70.i, %if.end49.i.if.end75.i_crit_edge
  %.sink.i = phi i64 [ %73, %if.then70.i ], [ 16777215, %if.end49.i.if.end75.i_crit_edge ]
  %74 = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 22
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %.sink.i, ptr %74, align 8
  %lock.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 26
  %76 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %serialize_lock.i.i, ptr %lock.i, align 8
  tail call void @cx18_set_funcs(ptr noundef %arrayidx.i) #12
  br label %if.end

cx18_prep_dev.exit:                               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name7.i, align 8
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name21.i, ptr noundef %78) #15
  br label %if.end8

if.end:                                           ; preds = %if.end75.i, %if.end46.i.if.end_crit_edge, %if.else.i, %if.then29.i.if.end_crit_edge, %do.end.i, %if.end.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %call2 = tail call i32 @cx18_stream_alloc(ptr noundef %arrayidx.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.if.end8_crit_edge, label %for.inc

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %type.028, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %cx18_prep_dev.exit
  %ret.122 = phi i32 [ -12, %cx18_prep_dev.exit ], [ %call2, %if.end.if.end8_crit_edge ]
  tail call void @cx18_streams_cleanup(ptr noundef %cx, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.122, %if.end8 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_stream_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_streams_cleanup(ptr noundef %cx, i32 noundef %unregister) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx19 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 27, i32 5
  %buffers = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 13
  %arrayidx25 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5
  %arrayidx = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 1
  %dvb = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unregister)
  %tobool.not = icmp eq i32 %unregister, 0
  %vbuf_q = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %type.073 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = zext i32 %type.073 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %type.073, label %if.end32 [
    i32 1, label %if.then
    i32 5, label %if.then18
  ]

if.then:                                          ; preds = %for.body
  %1 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvb, align 8
  %cmp2.not = icmp eq ptr %2, null
  br i1 %cmp2.not, label %if.then.for.inc_crit_edge, label %if.then3

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %if.then
  br i1 %tobool.not, label %if.then3.if.end_crit_edge, label %if.then4

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cx18_dvb_unregister(ptr noundef %arrayidx) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then3.if.end_crit_edge
  %3 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvb, align 8
  tail call void @kfree(ptr noundef %4) #12
  %5 = ptrtoint ptr %dvb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dvb, align 8
  tail call void @cx18_stream_free(ptr noundef %arrayidx) #12
  br label %for.inc

if.then18:                                        ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20.not = icmp eq i32 %7, 0
  br i1 %cmp20.not, label %if.then18.for.inc_crit_edge, label %if.then21

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then21:                                        ; preds = %if.then18
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx19, align 4
  %9 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26.not = icmp eq i32 %10, 0
  br i1 %cmp26.not, label %if.then21.for.inc_crit_edge, label %if.then27

if.then21.for.inc_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cx18_stream_free(ptr noundef %arrayidx25) #12
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %arrayidx34 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.073
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %arrayidx34, i32 0, i32 7
  %11 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l2_dev, align 4
  %cmp35 = icmp eq ptr %12, null
  br i1 %cmp35, label %if.end32.for.inc_crit_edge, label %if.end37

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.073)
  %cmp38 = icmp eq i32 %type.073, 2
  br i1 %cmp38, label %if.then39, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @videobuf_mmap_free(ptr noundef %vbuf_q) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37.if.end42_crit_edge
  tail call void @cx18_stream_free(ptr noundef %arrayidx34) #12
  tail call void @video_unregister_device(ptr noundef %arrayidx34) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.end32.for.inc_crit_edge, %if.then27, %if.then21.for.inc_crit_edge, %if.then18.for.inc_crit_edge, %if.end, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %type.073, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_streams_register(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 1, i32 1
  %name6.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %v4l2_dev22.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 29, i32 0, i32 0, i32 7
  %num25.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 29, i32 0, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cx18_reg_dev.exit.for.body_crit_edge, %entry
  %ret.015 = phi i32 [ 0, %entry ], [ %ret.1, %cx18_reg_dev.exit.for.body_crit_edge ]
  %type.013 = phi i32 [ 0, %entry ], [ %inc, %cx18_reg_dev.exit.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.013
  %vfl_type2.i = getelementptr [7 x %struct.anon.177], ptr @cx18_stream_info, i32 0, i32 %type.013, i32 1
  %0 = ptrtoint ptr %vfl_type2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.013)
  %cmp.i = icmp eq i32 %type.013, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.if.end8.i_crit_edge

for.body.if.end8.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %for.body
  %2 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb.i, align 8
  %cmp3.not.i = icmp eq ptr %3, null
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call i32 @cx18_dvb_register(ptr noundef %arrayidx.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name6.i) #15
  br label %cx18_reg_dev.exit

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %for.body.if.end8.i_crit_edge
  %v4l2_dev9.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 7
  %4 = ptrtoint ptr %v4l2_dev9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_dev9.i, align 4
  %cmp10.i = icmp eq ptr %5, null
  br i1 %cmp10.i, label %if.end8.i.cx18_reg_dev.exit_crit_edge, label %if.end12.i

if.end8.i.cx18_reg_dev.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_reg_dev.exit

if.end12.i:                                       ; preds = %if.end8.i
  %num14.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 16
  %6 = ptrtoint ptr %num14.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num14.i, align 4
  %conv.i = zext i16 %7 to i32
  %v4l2_dev_caps.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.013, i32 6
  %8 = ptrtoint ptr %v4l2_dev_caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v4l2_dev_caps.i, align 4
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 4
  %10 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %device_caps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.013)
  %cmp16.not.i = icmp eq i32 %type.013, 0
  br i1 %cmp16.not.i, label %if.end12.i.if.end29.i_crit_edge, label %if.then18.i

if.end12.i.if.end29.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then18.i:                                      ; preds = %if.end12.i
  %11 = ptrtoint ptr %v4l2_dev22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l2_dev22.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then18.i.if.end29.i_crit_edge, label %if.then23.i

if.then18.i.if.end29.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %num25.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num25.i, align 4
  %conv26.i = zext i16 %14 to i32
  %num_offset.i = getelementptr [7 x %struct.anon.177], ptr @cx18_stream_info, i32 0, i32 %type.013, i32 2
  %15 = ptrtoint ptr %num_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_offset.i, align 4
  %add.i = add i32 %16, %conv26.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.then18.i.if.end29.i_crit_edge, %if.end12.i.if.end29.i_crit_edge
  %num.1.i = phi i32 [ %conv.i, %if.end12.i.if.end29.i_crit_edge ], [ %add.i, %if.then23.i ], [ %conv.i, %if.then18.i.if.end29.i_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.i, ptr %driver_data.i.i.i, align 4
  %fops.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 3
  %18 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fops.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i.i = tail call i32 @__video_register_device(ptr noundef %arrayidx.i, i32 noundef %1, i32 noundef %num.1.i, i32 noundef 0, ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp33.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp33.i, label %do.end38.i, label %if.end47.i

do.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %name43.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.013, i32 3
  %22 = ptrtoint ptr %name43.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name43.i, align 8
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name6.i, ptr noundef %23, i32 noundef %num.1.i) #15
  %24 = ptrtoint ptr %v4l2_dev9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %v4l2_dev9.i, align 4
  br label %cx18_reg_dev.exit

if.end47.i:                                       ; preds = %if.end29.i
  %init_name.i.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end47.i.video_device_node_name.exit.i_crit_edge

if.end47.i.video_device_node_name.exit.i_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.video_device, ptr %arrayidx.i, i32 0, i32 5
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  br label %video_device_node_name.exit.i

video_device_node_name.exit.i:                    ; preds = %if.end.i.i.i, %if.end47.i.video_device_node_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %28, %if.end.i.i.i ], [ %26, %if.end47.i.video_device_node_name.exit.i_crit_edge ]
  %29 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %1, label %video_device_node_name.exit.i.cx18_reg_dev.exit_crit_edge [
    i32 0, label %do.end52.i
    i32 2, label %do.end67.i
    i32 1, label %sw.bb74.i
  ]

video_device_node_name.exit.i.cx18_reg_dev.exit_crit_edge: ; preds = %video_device_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_reg_dev.exit

do.end52.i:                                       ; preds = %video_device_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %name57.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.013, i32 3
  %30 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name57.i, align 8
  %arrayidx58.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 27, i32 %type.013
  %32 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx58.i, align 4
  %arrayidx59.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 28, i32 %type.013
  %34 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx59.i, align 4
  %div.i = sdiv i32 %35, 1024
  %mul.i = mul i32 %35, 100
  %div62.i = sdiv i32 %mul.i, 1024
  %rem.i = srem i32 %div62.i, 100
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name6.i, ptr noundef %retval.0.i.i.i, ptr noundef %31, i32 noundef %33, i32 noundef %div.i, i32 noundef %rem.i) #15
  br label %cx18_reg_dev.exit

do.end67.i:                                       ; preds = %video_device_node_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %name72.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.013, i32 3
  %36 = ptrtoint ptr %name72.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name72.i, align 8
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name6.i, ptr noundef %retval.0.i.i.i, ptr noundef %37) #15
  br label %cx18_reg_dev.exit

sw.bb74.i:                                        ; preds = %video_device_node_name.exit.i
  %arrayidx76.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 27, i32 %type.013
  %38 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool77.not.i = icmp eq i32 %39, 0
  %name99.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %type.013, i32 3
  %40 = ptrtoint ptr %name99.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name99.i, align 8
  br i1 %tobool77.not.i, label %do.end94.i, label %do.end81.i

do.end81.i:                                       ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx90.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 28, i32 %type.013
  %42 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx90.i, align 4
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name6.i, ptr noundef %retval.0.i.i.i, ptr noundef %41, i32 noundef %39, i32 noundef %43) #15
  br label %cx18_reg_dev.exit

do.end94.i:                                       ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #14
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name6.i, ptr noundef %retval.0.i.i.i, ptr noundef %41) #15
  br label %cx18_reg_dev.exit

cx18_reg_dev.exit:                                ; preds = %do.end94.i, %do.end81.i, %do.end67.i, %do.end52.i, %video_device_node_name.exit.i.cx18_reg_dev.exit_crit_edge, %do.end38.i, %if.end8.i.cx18_reg_dev.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i.i, %do.end38.i ], [ 0, %if.end8.i.cx18_reg_dev.exit_crit_edge ], [ 0, %do.end81.i ], [ 0, %do.end94.i ], [ 0, %video_device_node_name.exit.i.cx18_reg_dev.exit_crit_edge ], [ 0, %do.end67.i ], [ 0, %do.end52.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp ne i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.015)
  %cmp1 = icmp eq i32 %ret.015, 0
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  %ret.1 = select i1 %or.cond, i32 %retval.0.i, i32 %ret.015
  %inc = add nuw nsw i32 %type.013, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %cx18_reg_dev.exit.for.body_crit_edge

cx18_reg_dev.exit.for.body_crit_edge:             ; preds = %cx18_reg_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cx18_reg_dev.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp2 = icmp eq i32 %ret.1, 0
  br i1 %cmp2, label %for.end.cleanup_crit_edge, label %if.end4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cx18_streams_cleanup(ptr noundef %cx, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.end.cleanup_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_dvb_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_stream_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_stream_rotate_idx_mdls(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5
  %v4l2_dev.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %dvb.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 1
  %2 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %type.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 4
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.i = icmp eq i32 %7, 5
  br i1 %cmp.i, label %cx18_stream_enabled.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cx18_stream_enabled.exit:                         ; preds = %lor.rhs.i
  %cx.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 2
  %8 = ptrtoint ptr %cx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cx.i, align 4
  %arrayidx.i = getelementptr %struct.cx18, ptr %9, i32 0, i32 27, i32 5
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i.not = icmp eq i32 %11, 0
  br i1 %cmp4.i.not, label %cx18_stream_enabled.exit.cleanup_crit_edge, label %cx18_stream_enabled.exit.if.end_crit_edge

cx18_stream_enabled.exit.if.end_crit_edge:        ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cx18_stream_enabled.exit.cleanup_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cx18_stream_enabled.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %q_free = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 17
  %depth = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 17, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth, i32 noundef 4) #12
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %depth, align 4
  %depth2 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 18, i32 1
  %call.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth2, i32 noundef 4) #12
  %14 = ptrtoint ptr %depth2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %depth2, align 4
  %add = add i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp = icmp sgt i32 %add, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %depth6 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 19, i32 1
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth6, i32 noundef 4) #12
  %16 = ptrtoint ptr %depth6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %depth6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp8 = icmp slt i32 %17, 2
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %q_full = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 19
  %call12 = tail call ptr @cx18_dequeue(ptr noundef %arrayidx, ptr noundef %q_full) #12
  %cmp13.not = icmp eq ptr %call12, null
  br i1 %cmp13.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @_cx18_enqueue(ptr noundef %arrayidx, ptr noundef nonnull %call12, ptr noundef %q_free, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cx18_stream_enabled.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx18_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_out_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1708
  tail call fastcc void @_cx18_stream_load_fw_queue(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_cx18_stream_load_fw_queue(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %q_free = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17
  %depth = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth, i32 noundef 4) #12
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %q_busy = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18
  %depth1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18, i32 1
  %call.i.i24 = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth1, i32 noundef 4) #12
  %2 = ptrtoint ptr %depth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %depth1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %3)
  %cmp3 = icmp sgt i32 %3, 62
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %do.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader:                                ; preds = %lor.lhs.false
  %cx1.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %handle.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 5
  %s_flags.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 9
  %buf_size.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %dma.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 10
  %bufs_per_mdl.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 15
  %mdl_size.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %_cx18_stream_put_mdl_fw.exit.do.body_crit_edge, %do.body.preheader
  %call5 = tail call ptr @cx18_dequeue(ptr noundef %s, ptr noundef %q_free) #12
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %do.body.cleanup_crit_edge, label %if.end8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %do.body
  %4 = ptrtoint ptr %cx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cx1.i, align 4
  %6 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp eq i32 %7, -1
  br i1 %cmp.i, label %if.end8.if.then.i_crit_edge, label %lor.lhs.false.i

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end8
  %8 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_flags.i, align 4
  %10 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %s_flags.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge
  %call.i.i26 = tail call ptr @_cx18_enqueue(ptr noundef %s, ptr noundef nonnull %call5, ptr noundef %q_free, i32 noundef 0) #12
  br label %_cx18_stream_put_mdl_fw.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %call.i38.i = tail call ptr @_cx18_enqueue(ptr noundef %s, ptr noundef nonnull %call5, ptr noundef %q_busy, i32 noundef 0) #12
  %cmp9.not.i = icmp eq ptr %call.i38.i, %q_busy
  br i1 %cmp9.not.i, label %if.end11.i, label %if.end.i._cx18_stream_put_mdl_fw.exit_crit_edge

if.end.i._cx18_stream_put_mdl_fw.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_cx18_stream_put_mdl_fw.exit

if.end11.i:                                       ; preds = %if.end.i
  %buf_list.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call5, i32 0, i32 4
  %14 = ptrtoint ptr %buf_list.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %buf_list.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %15, %buf_list.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end11.i.if.else.i.i_crit_edge, label %list_is_singular.exit.i.i

if.end11.i.if.else.i.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

list_is_singular.exit.i.i:                        ; preds = %if.end11.i
  %prev.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call5, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %15, %17
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %list_is_singular.exit.i.i.if.else.i.i_crit_edge

list_is_singular.exit.i.i.if.else.i.i_crit_edge:  ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %cx1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cx1.i, align 4
  %pci_dev.i.i.i = getelementptr inbounds %struct.cx18, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pci_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev.i.i.i, align 4
  %dma_handle.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %dma_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_handle.i.i.i, align 4
  %24 = ptrtoint ptr %buf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size.i.i.i, align 8
  %26 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i.i.i, i32 noundef %23, i32 noundef %25, i32 noundef %27) #12
  br label %cx18_mdl_sync_for_device.exit.i

if.else.i.i:                                      ; preds = %list_is_singular.exit.i.i.if.else.i.i_crit_edge, %if.end11.i.if.else.i.i_crit_edge
  tail call void @_cx18_mdl_sync_for_device(ptr noundef %s, ptr noundef nonnull %call5) #12
  br label %cx18_mdl_sync_for_device.exit.i

cx18_mdl_sync_for_device.exit.i:                  ; preds = %if.else.i.i, %if.then.i.i
  %28 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handle.i, align 8
  %scb.i = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 15
  %30 = ptrtoint ptr %scb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scb.i, align 4
  %id.i = getelementptr inbounds %struct.cx18_mdl, ptr %call5, i32 0, i32 1
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.cx18_scb, ptr %31, i32 0, i32 128, i32 %33
  %enc_mem.i = getelementptr inbounds %struct.cx18, ptr %5, i32 0, i32 39
  %34 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enc_mem.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %36 = ptrtoint ptr %bufs_per_mdl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bufs_per_mdl.i, align 4
  %38 = ptrtoint ptr %mdl_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mdl_size.i, align 8
  %call14.i = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %5, i32 noundef 537133061, i32 noundef 5, i32 noundef %29, i32 noundef %sub.ptr.sub.i, i32 noundef %37, i32 noundef %33, i32 noundef %39) #12
  br label %_cx18_stream_put_mdl_fw.exit

_cx18_stream_put_mdl_fw.exit:                     ; preds = %cx18_mdl_sync_for_device.exit.i, %if.end.i._cx18_stream_put_mdl_fw.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %call.i.i26, %if.then.i ], [ %q_busy, %cx18_mdl_sync_for_device.exit.i ], [ %call.i38.i, %if.end.i._cx18_stream_put_mdl_fw.exit_crit_edge ]
  %call.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth1, i32 noundef 4) #12
  %40 = ptrtoint ptr %depth1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %depth1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %41)
  %cmp13 = icmp slt i32 %41, 63
  %cmp15 = icmp eq ptr %retval.0.i, %q_busy
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %_cx18_stream_put_mdl_fw.exit.do.body_crit_edge, label %_cx18_stream_put_mdl_fw.exit.cleanup_crit_edge

_cx18_stream_put_mdl_fw.exit.cleanup_crit_edge:   ; preds = %_cx18_stream_put_mdl_fw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

_cx18_stream_put_mdl_fw.exit.do.body_crit_edge:   ; preds = %_cx18_stream_put_mdl_fw.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cleanup:                                          ; preds = %_cx18_stream_put_mdl_fw.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_start_v4l2_encode_stream(ptr noundef %s) #0 align 64 {
entry:
  %data.i = alloca [16 x i32], align 4
  %data = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #12
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %0 = call ptr @memset(ptr %data, i32 255, i32 24)
  %1 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cx1, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %3 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false.i:                                  ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvb.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.cx18_dvb, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %type.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 4
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp.i = icmp eq i32 %10, 5
  br i1 %cmp.i, label %cx18_stream_enabled.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cx18_stream_enabled.exit:                         ; preds = %lor.rhs.i
  %arrayidx.i = getelementptr %struct.cx18, ptr %2, i32 0, i32 27, i32 5
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4.i.not = icmp eq i32 %12, 0
  br i1 %cmp4.i.not, label %cx18_stream_enabled.exit.cleanup_crit_edge, label %cx18_stream_enabled.exit.do.body_crit_edge

cx18_stream_enabled.exit.do.body_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cx18_stream_enabled.exit.cleanup_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %cx18_stream_enabled.exit.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %13 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 2, i32 4
  %name4 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 3
  %14 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name4, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %15) #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %type = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %17, label %do.end8.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 5, label %do.end8.sw.epilog_crit_edge
    i32 1, label %sw.bb11
    i32 2, label %sw.bb12
    i32 4, label %sw.bb13
    i32 3, label %sw.bb14
  ]

do.end8.sw.epilog_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %mpg_data_received = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 42
  %19 = call ptr @memset(ptr %mpg_data_received, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %dualwatch_jiffies = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 23
  %21 = ptrtoint ptr %dualwatch_jiffies to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dualwatch_jiffies, align 8
  %audio_mode = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 19, i32 11, i32 3
  %22 = ptrtoint ptr %audio_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %audio_mode, align 4
  %call9 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %23) #12
  %dualwatch_stereo_mode = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 24
  %24 = ptrtoint ptr %dualwatch_stereo_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call9, ptr %dualwatch_stereo_mode, align 4
  %search_pack_header = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 35
  %25 = ptrtoint ptr %search_pack_header to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %search_pack_header, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %frame = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 41, i32 4
  %26 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %frame, align 4
  %sliced_mpeg_size = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 41, i32 8
  %27 = call ptr @memset(ptr %sliced_mpeg_size, i32 0, i32 132)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb, %do.end8.sw.epilog_crit_edge
  %cmp.not = phi i1 [ false, %sw.bb14 ], [ false, %sw.bb13 ], [ false, %sw.bb12 ], [ true, %sw.bb11 ], [ false, %sw.bb ], [ false, %do.end8.sw.epilog_crit_edge ]
  %cmp61 = phi i1 [ false, %sw.bb14 ], [ false, %sw.bb13 ], [ true, %sw.bb12 ], [ false, %sw.bb11 ], [ false, %sw.bb ], [ false, %do.end8.sw.epilog_crit_edge ]
  %captype.0 = phi i32 [ 5, %sw.bb14 ], [ 4, %sw.bb13 ], [ 3, %sw.bb12 ], [ 7, %sw.bb11 ], [ 1, %sw.bb ], [ 2, %do.end8.sw.epilog_crit_edge ]
  %s_flags = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %s_flags) #12
  %call19 = call i32 (ptr, ptr, i32, i32, ...) @cx18_vapi_result(ptr noundef %2, ptr noundef nonnull %data, i32 noundef 1073741825, i32 noundef 1, i32 noundef 537001984) #12
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  %handle = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 5
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %handle, align 8
  %call21 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537001985, i32 noundef 2, i32 noundef %29, i32 noundef %captype.0) #12
  br i1 %cmp.not, label %sw.epilog.if.end71_crit_edge, label %if.then22

sw.epilog.if.end71_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then22:                                        ; preds = %sw.epilog
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %handle, align 8
  %call24 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002011, i32 noundef 2, i32 noundef %32, i32 noundef 0) #12
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle, align 8
  %call26 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002005, i32 noundef 3, i32 noundef %34, i32 noundef 3, i32 noundef 1) #12
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %handle, align 8
  %call28 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002005, i32 noundef 3, i32 noundef %36, i32 noundef 8, i32 noundef 0) #12
  %37 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handle, align 8
  %call30 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002005, i32 noundef 3, i32 noundef %38, i32 noundef 4, i32 noundef 1) #12
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #12
  %39 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp32 = icmp eq i32 %40, 0
  br i1 %cmp32, label %if.then33, label %if.then22.if.end36_crit_edge

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then33:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle, align 8
  %call35 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002005, i32 noundef 2, i32 noundef %42, i32 noundef 12) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then22.if.end36_crit_edge
  %43 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %handle, align 8
  %call38 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002007, i32 noundef 3, i32 noundef %44, i32 noundef 312, i32 noundef 313) #12
  %v4l2_cap = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 12
  %45 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v4l2_cap, align 8
  %and39 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end36.if.end42_crit_edge, label %if.then41

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.end36
  %47 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cx1, align 4
  %vbi.i.i = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 41
  %49 = ptrtoint ptr %vbi.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vbi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp.i.not.i = icmp eq i32 %50, 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i) #12
  %51 = call ptr @memset(ptr %data.i, i32 255, i32 64)
  %is_60hz.i = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 9
  %52 = ptrtoint ptr %is_60hz.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_60hz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i233 = icmp eq i8 %53, 0
  %.sink194.i = select i1 %tobool.not.i233, i32 18, i32 12
  %.sink193.i = select i1 %tobool.not.i233, i32 6, i32 10
  %.sink.i = select i1 %tobool.not.i233, i32 318, i32 273
  %54 = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 41, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink194.i, ptr %54, align 4
  %56 = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 41, i32 3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink193.i, ptr %56, align 4
  %58 = getelementptr %struct.cx18, ptr %48, i32 0, i32 41, i32 3, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink.i, ptr %58, align 4
  %sd_av.i = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 3
  %60 = ptrtoint ptr %sd_av.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sd_av.i, align 8
  %tobool16.not.i = icmp eq ptr %61, null
  br i1 %cmp.i.not.i, label %if.then15.i, label %if.else45.i

if.then15.i:                                      ; preds = %if.then41
  br i1 %tobool16.not.i, label %if.then15.i.if.then104.i_crit_edge, label %if.else18.i

if.then15.i.if.then104.i_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104.i

if.else18.i:                                      ; preds = %if.then15.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i, align 4
  %vbi19.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %vbi19.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vbi19.i, align 4
  %tobool20.not.i = icmp eq ptr %65, null
  br i1 %tobool20.not.i, label %if.else18.i.if.then104.i_crit_edge, label %land.lhs.true.i234

if.else18.i.if.then104.i_crit_edge:               ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104.i

land.lhs.true.i234:                               ; preds = %if.else18.i
  %s_raw_fmt.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %s_raw_fmt.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_raw_fmt.i, align 4
  %tobool23.not.i = icmp eq ptr %67, null
  br i1 %tobool23.not.i, label %land.lhs.true.i234.if.then104.i_crit_edge, label %if.else25.i

land.lhs.true.i234.if.then104.i_crit_edge:        ; preds = %land.lhs.true.i234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104.i

if.else25.i:                                      ; preds = %land.lhs.true.i234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool26.not.i = icmp eq ptr %68, null
  br i1 %tobool26.not.i, label %if.else25.i.if.else34.i_crit_edge, label %land.lhs.true27.i

if.else25.i.if.else34.i_crit_edge:                ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else34.i

land.lhs.true27.i:                                ; preds = %if.else25.i
  %s_raw_fmt28.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %s_raw_fmt28.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_raw_fmt28.i, align 4
  %tobool29.not.i = icmp eq ptr %70, null
  br i1 %tobool29.not.i, label %land.lhs.true27.i.if.else34.i_crit_edge, label %land.lhs.true27.i.if.then104.sink.split.i_crit_edge

land.lhs.true27.i.if.then104.sink.split.i_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104.sink.split.i

land.lhs.true27.i.if.else34.i_crit_edge:          ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else34.i

if.else34.i:                                      ; preds = %land.lhs.true27.i.if.else34.i_crit_edge, %if.else25.i.if.else34.i_crit_edge
  br label %if.then104.sink.split.i

if.else45.i:                                      ; preds = %if.then41
  br i1 %tobool16.not.i, label %if.else45.i.if.else107.i_crit_edge, label %if.else51.i

if.else45.i.if.else107.i_crit_edge:               ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else107.i

if.else51.i:                                      ; preds = %if.else45.i
  %ops52.i = getelementptr inbounds %struct.v4l2_subdev, ptr %61, i32 0, i32 6
  %71 = ptrtoint ptr %ops52.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops52.i, align 4
  %vbi53.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %vbi53.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vbi53.i, align 4
  %tobool54.not.i = icmp eq ptr %74, null
  br i1 %tobool54.not.i, label %if.else51.i.if.else107.i_crit_edge, label %land.lhs.true55.i

if.else51.i.if.else107.i_crit_edge:               ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else107.i

land.lhs.true55.i:                                ; preds = %if.else51.i
  %s_sliced_fmt.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %s_sliced_fmt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_sliced_fmt.i, align 4
  %tobool58.not.i = icmp eq ptr %76, null
  br i1 %tobool58.not.i, label %land.lhs.true55.i.if.else107.i_crit_edge, label %if.else60.i

land.lhs.true55.i.if.else107.i_crit_edge:         ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else107.i

if.else60.i:                                      ; preds = %land.lhs.true55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool61.not.i = icmp eq ptr %77, null
  br i1 %tobool61.not.i, label %if.else60.i.if.else71.i_crit_edge, label %land.lhs.true62.i

if.else60.i.if.else71.i_crit_edge:                ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71.i

land.lhs.true62.i:                                ; preds = %if.else60.i
  %s_sliced_fmt63.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %s_sliced_fmt63.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_sliced_fmt63.i, align 4
  %tobool64.not.i = icmp eq ptr %79, null
  br i1 %tobool64.not.i, label %land.lhs.true62.i.if.else71.i_crit_edge, label %land.lhs.true62.i.if.else107.sink.split.i_crit_edge

land.lhs.true62.i.if.else107.sink.split.i_crit_edge: ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else107.sink.split.i

land.lhs.true62.i.if.else71.i_crit_edge:          ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else71.i

if.else71.i:                                      ; preds = %land.lhs.true62.i.if.else71.i_crit_edge, %if.else60.i.if.else71.i_crit_edge
  br label %if.else107.sink.split.i

if.then104.sink.split.i:                          ; preds = %if.else34.i, %land.lhs.true27.i.if.then104.sink.split.i_crit_edge
  %.sink195.i = phi ptr [ %67, %if.else34.i ], [ %70, %land.lhs.true27.i.if.then104.sink.split.i_crit_edge ]
  %fmt.i = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 41, i32 0, i32 1
  %call33.i = call i32 %.sink195.i(ptr noundef nonnull %61, ptr noundef %fmt.i) #12
  br label %if.then104.i

if.then104.i:                                     ; preds = %if.then104.sink.split.i, %land.lhs.true.i234.if.then104.i_crit_edge, %if.else18.i.if.then104.i_crit_edge, %if.then15.i.if.then104.i_crit_edge
  %80 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %54, align 4
  %mul.i = shl i32 %81, 1
  %82 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %handle, align 8
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %data.i, align 4
  %div.i = sdiv i32 %mul.i, 2
  %shl.i = shl i32 %div.i, 16
  %or.i = or i32 %shl.i, %div.i
  %arrayidx94.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i, ptr %arrayidx94.i, align 4
  br label %do.body.i

if.else107.sink.split.i:                          ; preds = %if.else71.i, %land.lhs.true62.i.if.else107.sink.split.i_crit_edge
  %.sink196.i = phi ptr [ %76, %if.else71.i ], [ %79, %land.lhs.true62.i.if.else107.sink.split.i_crit_edge ]
  %fmt77.i = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 41, i32 0, i32 1
  %call78.i = call i32 %.sink196.i(ptr noundef nonnull %61, ptr noundef %fmt77.i) #12
  br label %if.else107.i

if.else107.i:                                     ; preds = %if.else107.sink.split.i, %land.lhs.true55.i.if.else107.i_crit_edge, %if.else51.i.if.else107.i_crit_edge, %if.else45.i.if.else107.i_crit_edge
  %86 = ptrtoint ptr %is_60hz.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_60hz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool90.not.i = icmp eq i8 %87, 0
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %handle, align 8
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %data.i, align 4
  %or179.i = select i1 %tobool90.not.i, i32 1441814, i32 1179666
  %arrayidx94180.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx94180.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or179.i, ptr %arrayidx94180.i, align 4
  %cond99.i = select i1 %tobool90.not.i, i32 284, i32 272
  br label %do.body.i

do.body.i:                                        ; preds = %if.else107.i, %if.then104.i
  %.sink199.i = phi i32 [ 1444, %if.then104.i ], [ %cond99.i, %if.else107.i ]
  %.sink198.i = phi i32 [ 543170656, %if.then104.i ], [ -1326403344, %if.else107.i ]
  %.sink197.i = phi i32 [ 812683472, %if.then104.i ], [ -1595891488, %if.else107.i ]
  %92 = phi i32 [ %83, %if.then104.i ], [ %89, %if.else107.i ]
  %or181187.i = phi i32 [ %or.i, %if.then104.i ], [ %or179.i, %if.else107.i ]
  %arrayidx101.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink199.i, ptr %arrayidx101.i, align 4
  %arrayidx102.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 3
  %94 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %arrayidx102.i, align 4
  %arrayidx105.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 4
  %95 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink198.i, ptr %arrayidx105.i, align 4
  %arrayidx106.i = getelementptr inbounds [16 x i32], ptr %data.i, i32 0, i32 5
  %96 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %.sink197.i, ptr %arrayidx106.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %97 = load i32, ptr @cx18_debug, align 4
  %and.i = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool111.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool111.not.i, label %do.body.i.cx18_vbi_setup.exit_crit_edge, label %do.end.i

do.body.i.cx18_vbi_setup.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_vbi_setup.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.cx18, ptr %48, i32 0, i32 2, i32 4
  %call121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i, i32 noundef %92, i32 noundef %or181187.i, i32 noundef %.sink199.i, i32 noundef 1, i32 noundef %.sink198.i, i32 noundef %.sink197.i) #15
  br label %cx18_vbi_setup.exit

cx18_vbi_setup.exit:                              ; preds = %do.end.i, %do.body.i.cx18_vbi_setup.exit_crit_edge
  %call126.i = call i32 @cx18_api(ptr noundef %48, i32 noundef 537002006, i32 noundef 6, ptr noundef nonnull %data.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i) #12
  br label %if.end42

if.end42:                                         ; preds = %cx18_vbi_setup.exit, %if.end36.if.end42_crit_edge
  %98 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %handle, align 8
  %v4l2_dev.i235 = getelementptr %struct.cx18, ptr %2, i32 0, i32 29, i32 5, i32 0, i32 7
  %100 = ptrtoint ptr %v4l2_dev.i235 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %v4l2_dev.i235, align 4
  %tobool.not.i236 = icmp eq ptr %101, null
  br i1 %tobool.not.i236, label %lor.lhs.false.i239, label %if.end42.cx18_stream_enabled.exit250.thread_crit_edge

if.end42.cx18_stream_enabled.exit250.thread_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_stream_enabled.exit250.thread

lor.lhs.false.i239:                               ; preds = %if.end42
  %dvb.i237 = getelementptr %struct.cx18, ptr %2, i32 0, i32 29, i32 5, i32 1
  %102 = ptrtoint ptr %dvb.i237 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dvb.i237, align 8
  %tobool1.not.i238 = icmp eq ptr %103, null
  br i1 %tobool1.not.i238, label %lor.lhs.false.i239.lor.rhs.i245_crit_edge, label %land.lhs.true.i242

lor.lhs.false.i239.lor.rhs.i245_crit_edge:        ; preds = %lor.lhs.false.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i245

land.lhs.true.i242:                               ; preds = %lor.lhs.false.i239
  %enabled.i240 = getelementptr inbounds %struct.cx18_dvb, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %enabled.i240 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %enabled.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool3.not.i241 = icmp eq i32 %105, 0
  br i1 %tobool3.not.i241, label %land.lhs.true.i242.lor.rhs.i245_crit_edge, label %land.lhs.true.i242.cx18_stream_enabled.exit250.thread_crit_edge

land.lhs.true.i242.cx18_stream_enabled.exit250.thread_crit_edge: ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_stream_enabled.exit250.thread

land.lhs.true.i242.lor.rhs.i245_crit_edge:        ; preds = %land.lhs.true.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i245

lor.rhs.i245:                                     ; preds = %land.lhs.true.i242.lor.rhs.i245_crit_edge, %lor.lhs.false.i239.lor.rhs.i245_crit_edge
  %type.i243 = getelementptr %struct.cx18, ptr %2, i32 0, i32 29, i32 5, i32 4
  %106 = ptrtoint ptr %type.i243 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type.i243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %107)
  %cmp.i244 = icmp eq i32 %107, 5
  br i1 %cmp.i244, label %cx18_stream_enabled.exit250, label %lor.rhs.i245.cx18_stream_enabled.exit250.thread260_crit_edge

lor.rhs.i245.cx18_stream_enabled.exit250.thread260_crit_edge: ; preds = %lor.rhs.i245
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_stream_enabled.exit250.thread260

cx18_stream_enabled.exit250:                      ; preds = %lor.rhs.i245
  %cx.i246 = getelementptr %struct.cx18, ptr %2, i32 0, i32 29, i32 5, i32 2
  %108 = ptrtoint ptr %cx.i246 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cx.i246, align 4
  %arrayidx.i247 = getelementptr %struct.cx18, ptr %109, i32 0, i32 27, i32 5
  %110 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp4.i248.not = icmp eq i32 %111, 0
  br i1 %cmp4.i248.not, label %cx18_stream_enabled.exit250.cx18_stream_enabled.exit250.thread260_crit_edge, label %cx18_stream_enabled.exit250.cx18_stream_enabled.exit250.thread_crit_edge

cx18_stream_enabled.exit250.cx18_stream_enabled.exit250.thread_crit_edge: ; preds = %cx18_stream_enabled.exit250
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_stream_enabled.exit250.thread

cx18_stream_enabled.exit250.cx18_stream_enabled.exit250.thread260_crit_edge: ; preds = %cx18_stream_enabled.exit250
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_stream_enabled.exit250.thread260

cx18_stream_enabled.exit250.thread:               ; preds = %cx18_stream_enabled.exit250.cx18_stream_enabled.exit250.thread_crit_edge, %land.lhs.true.i242.cx18_stream_enabled.exit250.thread_crit_edge, %if.end42.cx18_stream_enabled.exit250.thread_crit_edge
  br label %cx18_stream_enabled.exit250.thread260

cx18_stream_enabled.exit250.thread260:            ; preds = %cx18_stream_enabled.exit250.thread, %cx18_stream_enabled.exit250.cx18_stream_enabled.exit250.thread260_crit_edge, %lor.rhs.i245.cx18_stream_enabled.exit250.thread260_crit_edge
  %112 = phi i32 [ 7, %cx18_stream_enabled.exit250.thread ], [ 0, %cx18_stream_enabled.exit250.cx18_stream_enabled.exit250.thread260_crit_edge ], [ 0, %lor.rhs.i245.cx18_stream_enabled.exit250.thread260_crit_edge ]
  %call47 = call i32 (ptr, ptr, i32, i32, ...) @cx18_vapi_result(ptr noundef %2, ptr noundef nonnull %data, i32 noundef 537002000, i32 noundef 2, i32 noundef %99, i32 noundef %112) #12
  %cxhdl48 = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 19
  %priv = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 19, i32 7
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %s, ptr %priv, align 4
  %call50 = call i32 @cx2341x_handler_setup(ptr noundef %cxhdl48) #12
  %114 = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 19, i32 14
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 8
  %tobool52.not = icmp eq ptr %116, null
  br i1 %tobool52.not, label %land.lhs.true, label %cx18_stream_enabled.exit250.thread260.if.end60_crit_edge

cx18_stream_enabled.exit250.thread260.if.end60_crit_edge: ; preds = %cx18_stream_enabled.exit250.thread260
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

land.lhs.true:                                    ; preds = %cx18_stream_enabled.exit250.thread260
  %i_flags = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 32
  %117 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %i_flags, align 4
  %119 = and i32 %118, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool54.not = icmp eq i32 %119, 0
  br i1 %tobool54.not, label %land.lhs.true.if.end60_crit_edge, label %if.then55

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %handle, align 8
  %video_mute_yuv = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 19, i32 14, i32 1
  %122 = ptrtoint ptr %video_mute_yuv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %video_mute_yuv, align 4
  %call58 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %123) #12
  %shl = shl i32 %call58, 8
  %or = or i32 %shl, 1
  %call59 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002003, i32 noundef 2, i32 noundef %121, i32 noundef %or) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %land.lhs.true.if.end60_crit_edge, %cx18_stream_enabled.exit250.thread260.if.end60_crit_edge
  br i1 %cmp61, label %if.then62, label %if.end60.if.end71_crit_edge

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 22
  %124 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pixelformat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %125)
  %cmp63 = icmp eq i32 %125, 1498831189
  %126 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %handle, align 8
  %. = zext i1 %cmp63 to i32
  %call68 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537002019, i32 noundef 2, i32 noundef %127, i32 noundef %.) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then62, %if.end60.if.end71_crit_edge, %sw.epilog.if.end71_crit_edge
  %tot_capturing = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 34
  %call.i.i229 = call zeroext i1 @__kasan_check_read(ptr noundef %tot_capturing, i32 noundef 4) #12
  %128 = ptrtoint ptr %tot_capturing to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %tot_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp73 = icmp eq i32 %129, 0
  br i1 %cmp73, label %if.then74, label %if.end71.if.end77_crit_edge

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %cxhdl75 = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 19
  call void @cx2341x_handler_set_busy(ptr noundef %cxhdl75, i32 noundef 1) #12
  %i_flags76 = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 32
  call void @_clear_bit(i32 noundef 4, ptr noundef %i_flags76) #12
  call fastcc void @cx18_write_reg(ptr noundef %2, i32 noundef 7)
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end71.if.end77_crit_edge
  %130 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %handle, align 8
  %scb = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 15
  %132 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %scb, align 4
  %134 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %type, align 4
  %arrayidx80 = getelementptr %struct.cx18_scb, ptr %133, i32 0, i32 127, i32 %135
  %enc_mem = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 39
  %136 = ptrtoint ptr %enc_mem to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %enc_mem, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx80 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %137 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx86 = getelementptr %struct.cx18_scb, ptr %133, i32 0, i32 127, i32 %135, i32 1
  %sub.ptr.lhs.cast88 = ptrtoint ptr %arrayidx86 to i32
  %sub.ptr.sub90 = sub i32 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast
  %call91 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537133058, i32 noundef 3, i32 noundef %131, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub90) #12
  call void @cx18_unload_queues(ptr noundef %s) #12
  %138 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %type, align 4
  %140 = zext i32 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %139, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %if.end77
  %pixelformat.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 22
  %141 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pixelformat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091848, i32 %142)
  %cmp.i252 = icmp eq i32 %142, 842091848
  %143 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cx1, align 4
  %height.i = getelementptr inbounds %struct.cx18, ptr %144, i32 0, i32 19, i32 3
  %145 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %height.i, align 2
  %conv.i = zext i16 %146 to i32
  %..i = select i1 %cmp.i252, i32 1080, i32 1440
  %mul7.i = mul nuw nsw i32 %..i, %conv.i
  %147 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 16
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %mul7.i, ptr %147, align 8
  %buf_size.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %149 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %buf_size.i, align 8
  %mul7.i.frozen = freeze i32 %mul7.i
  %.frozen = freeze i32 %150
  %div10.i = udiv i32 %mul7.i.frozen, %.frozen
  %bufs_per_mdl.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 15
  %151 = ptrtoint ptr %bufs_per_mdl.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %div10.i, ptr %bufs_per_mdl.i, align 4
  %152 = mul i32 %div10.i, %.frozen
  %rem.i.decomposed = sub i32 %mul7.i.frozen, %152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i254 = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i254, label %sw.bb.i.cx18_stream_configure_mdls.exit_crit_edge, label %if.then13.i

sw.bb.i.cx18_stream_configure_mdls.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_stream_configure_mdls.exit

if.then13.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add nuw nsw i32 %div10.i, 1
  %153 = ptrtoint ptr %bufs_per_mdl.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %inc.i, ptr %bufs_per_mdl.i, align 4
  br label %cx18_stream_configure_mdls.exit

sw.bb16.i:                                        ; preds = %if.end77
  %bufs_per_mdl17.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 15
  %154 = ptrtoint ptr %bufs_per_mdl17.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %bufs_per_mdl17.i, align 4
  %155 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cx1, align 4
  %vbi.i.i255 = getelementptr inbounds %struct.cx18, ptr %156, i32 0, i32 41
  %157 = ptrtoint ptr %vbi.i.i255 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %vbi.i.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %158)
  %cmp.i.not.i256 = icmp eq i32 %158, 4
  %is_60hz.i257 = getelementptr inbounds %struct.cx18, ptr %156, i32 0, i32 9
  %159 = ptrtoint ptr %is_60hz.i257 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %is_60hz.i257, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool23.not.i258 = icmp eq i8 %160, 0
  br i1 %cmp.i.not.i256, label %if.then20.i, label %if.else27.i

if.then20.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul25.i = select i1 %tobool23.not.i258, i32 51984, i32 34656
  %mdl_size26.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 16
  %161 = ptrtoint ptr %mdl_size26.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %mul25.i, ptr %mdl_size26.i, align 8
  br label %cx18_stream_configure_mdls.exit

if.else27.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #14
  %cond32.i = select i1 %tobool23.not.i258, i32 12496, i32 9792
  %mdl_size33.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 16
  %162 = ptrtoint ptr %mdl_size33.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %cond32.i, ptr %mdl_size33.i, align 8
  br label %cx18_stream_configure_mdls.exit

sw.default.i:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %bufs_per_mdl35.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 15
  %163 = ptrtoint ptr %bufs_per_mdl35.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %bufs_per_mdl35.i, align 4
  %buf_size36.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %164 = ptrtoint ptr %buf_size36.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %buf_size36.i, align 8
  %mdl_size39.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 16
  %166 = ptrtoint ptr %mdl_size39.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %mdl_size39.i, align 8
  br label %cx18_stream_configure_mdls.exit

cx18_stream_configure_mdls.exit:                  ; preds = %sw.default.i, %if.else27.i, %if.then20.i, %if.then13.i, %sw.bb.i.cx18_stream_configure_mdls.exit_crit_edge
  call void @cx18_load_queues(ptr noundef %s) #12
  call fastcc void @_cx18_stream_load_fw_queue(ptr noundef %s)
  %167 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %handle, align 8
  %call93 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537001986, i32 noundef 1, i32 noundef %168) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end134, label %do.body96

do.body96:                                        ; preds = %cx18_stream_configure_mdls.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %169 = load i32, ptr @cx18_debug, align 4
  %and97 = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.do.end110_crit_edge, label %do.end102

do.body96.do.end110_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end110

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  %name105 = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 2, i32 4
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name105) #15
  br label %do.end110

do.end110:                                        ; preds = %do.end102, %do.body96.do.end110_crit_edge
  call void @_set_bit(i32 noundef 9, ptr noundef %s_flags) #12
  %170 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp113 = icmp eq i32 %171, 0
  %172 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %handle, align 8
  br i1 %cmp113, label %if.then114, label %if.else117

if.then114:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #14
  %call116 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537001987, i32 noundef 2, i32 noundef %173, i32 noundef 1) #12
  br label %if.end120

if.else117:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #14
  %call119 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537001987, i32 noundef 1, i32 noundef %173) #12
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %if.then114
  call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #12
  %174 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle, align 8
  %call123 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 537133062, i32 noundef 1, i32 noundef %175) #12
  %176 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %handle, align 8
  %call125 = call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %2, i32 noundef 1073741826, i32 noundef 1, i32 noundef %177) #12
  %178 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -1, ptr %handle, align 8
  call void @_clear_bit(i32 noundef 9, ptr noundef %s_flags) #12
  %call.i.i230 = call zeroext i1 @__kasan_check_read(ptr noundef %tot_capturing, i32 noundef 4) #12
  %179 = ptrtoint ptr %tot_capturing to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %tot_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp130 = icmp eq i32 %180, 0
  br i1 %cmp130, label %if.then131, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then131:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags132 = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 32
  call void @_set_bit(i32 noundef 4, ptr noundef %i_flags132) #12
  call fastcc void @cx18_write_reg(ptr noundef %2, i32 noundef 5)
  br label %cleanup

if.end134:                                        ; preds = %cx18_stream_configure_mdls.exit
  br i1 %cmp.not, label %if.end134.if.end138_crit_edge, label %if.then136

if.end134.if.end138_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  %ana_capturing137 = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 33
  %call.i.i231 = call zeroext i1 @__kasan_check_write(ptr noundef %ana_capturing137, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ana_capturing137, i32 1, i32 3, i32 1) #12
  %181 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ana_capturing137, ptr %ana_capturing137, i32 1, ptr elementtype(i32) %ana_capturing137) #12, !srcloc !119
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end134.if.end138_crit_edge
  %call.i.i232 = call zeroext i1 @__kasan_check_write(ptr noundef %tot_capturing, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %tot_capturing, i32 1, i32 3, i32 1) #12
  %182 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tot_capturing, ptr %tot_capturing, i32 1, ptr elementtype(i32) %tot_capturing) #12, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %if.then131, %if.end120.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %cx18_stream_enabled.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end138 ], [ -22, %cx18_stream_enabled.exit.cleanup_crit_edge ], [ -22, %do.end8.cleanup_crit_edge ], [ -22, %if.then131 ], [ -22, %if.end120.cleanup_crit_edge ], [ -22, %lor.rhs.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_vapi_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_busy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_write_reg(ptr nocapture noundef readonly %cx, i32 noundef %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %reg_mem = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 13631564
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.i = icmp eq i32 %4, %val
  br i1 %cmp1.i, label %entry.cx18_writel.exit_crit_edge, label %for.cond.i

entry.cx18_writel.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.i:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.1.i = icmp eq i32 %6, %val
  br i1 %cmp1.1.i, label %for.cond.i.cx18_writel.exit_crit_edge, label %for.cond.1.i

for.cond.i.cx18_writel.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.2.i = icmp eq i32 %8, %val
  br i1 %cmp1.2.i, label %for.cond.1.i.cx18_writel.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.3.i = icmp eq i32 %10, %val
  br i1 %cmp1.3.i, label %for.cond.2.i.cx18_writel.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.4.i = icmp eq i32 %12, %val
  br i1 %cmp1.4.i, label %for.cond.3.i.cx18_writel.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.5.i = icmp eq i32 %14, %val
  br i1 %cmp1.5.i, label %for.cond.4.i.cx18_writel.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.6.i = icmp eq i32 %16, %val
  br i1 %cmp1.6.i, label %for.cond.5.i.cx18_writel.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.7.i = icmp eq i32 %18, %val
  br i1 %cmp1.7.i, label %for.cond.6.i.cx18_writel.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val)
  %cmp1.8.i = icmp eq i32 %20, %val
  br i1 %cmp1.8.i, label %for.cond.7.i.cx18_writel.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_writel.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !121
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  br label %cx18_writel.exit

cx18_writel.exit:                                 ; preds = %for.cond.8.i, %for.cond.7.i.cx18_writel.exit_crit_edge, %for.cond.6.i.cx18_writel.exit_crit_edge, %for.cond.5.i.cx18_writel.exit_crit_edge, %for.cond.4.i.cx18_writel.exit_crit_edge, %for.cond.3.i.cx18_writel.exit_crit_edge, %for.cond.2.i.cx18_writel.exit_crit_edge, %for.cond.1.i.cx18_writel.exit_crit_edge, %for.cond.i.cx18_writel.exit_crit_edge, %entry.cx18_writel.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_stop_all_captures(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 6, %entry ], [ %dec, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.010
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %arrayidx, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %for.body
  %dvb.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.010, i32 1
  %2 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.cx18_dvb, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %type.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.010, i32 4
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.i = icmp eq i32 %7, 5
  br i1 %cmp.i, label %cx18_stream_enabled.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cx18_stream_enabled.exit:                         ; preds = %lor.rhs.i
  %cx.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.010, i32 2
  %8 = ptrtoint ptr %cx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cx.i, align 4
  %arrayidx.i = getelementptr %struct.cx18, ptr %9, i32 0, i32 27, i32 5
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i.not = icmp eq i32 %11, 0
  br i1 %cmp4.i.not, label %cx18_stream_enabled.exit.cleanup_crit_edge, label %cx18_stream_enabled.exit.if.end_crit_edge

cx18_stream_enabled.exit.if.end_crit_edge:        ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cx18_stream_enabled.exit.cleanup_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cx18_stream_enabled.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %for.body.if.end_crit_edge
  %s_flags = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.010, i32 9
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_flags, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef %arrayidx, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %cx18_stream_enabled.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %dec = add nsw i32 %i.010, -1
  %cmp.not = icmp eq i32 %i.010, 0
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_stop_v4l2_encode_stream(ptr noundef %s, i32 noundef %gop_end) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false.i:                                  ; preds = %entry
  %dvb.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.cx18_dvb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %type.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 4
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp.i = icmp eq i32 %9, 5
  br i1 %cmp.i, label %cx18_stream_enabled.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cx18_stream_enabled.exit:                         ; preds = %lor.rhs.i
  %arrayidx.i = getelementptr %struct.cx18, ptr %1, i32 0, i32 27, i32 5
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i.not = icmp eq i32 %11, 0
  br i1 %cmp4.i.not, label %cx18_stream_enabled.exit.cleanup_crit_edge, label %cx18_stream_enabled.exit.do.body_crit_edge

cx18_stream_enabled.exit.do.body_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cx18_stream_enabled.exit.cleanup_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %cx18_stream_enabled.exit.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %12 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name) #15
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %tot_capturing = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tot_capturing, i32 noundef 4) #12
  %13 = ptrtoint ptr %tot_capturing to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tot_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %s_flags = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %s_flags) #12
  %type = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11 = icmp eq i32 %16, 0
  %handle = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 5
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %handle, align 8
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gop_end)
  %tobool13.not = icmp eq i32 %gop_end, 0
  %lnot.ext = zext i1 %tobool13.not to i32
  %call14 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001987, i32 noundef 2, i32 noundef %18, i32 noundef %lnot.ext) #12
  br label %if.end17

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001987, i32 noundef 1, i32 noundef %18) #12
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp19 = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gop_end)
  %tobool20.not = icmp eq i32 %gop_end, 0
  %or.cond = or i1 %tobool20.not, %cmp19
  br i1 %or.cond, label %if.end17.if.end30_crit_edge, label %do.end24

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %name27 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name27) #15
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %type, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %if.end17.if.end30_crit_edge
  %22 = phi i32 [ %.pr, %do.end24 ], [ %20, %if.end17.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp32.not = icmp eq i32 %22, 1
  br i1 %cmp32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %ana_capturing = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 33
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ana_capturing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ana_capturing, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ana_capturing, ptr %ana_capturing, i32 1, ptr elementtype(i32) %ana_capturing) #12, !srcloc !124
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tot_capturing, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %tot_capturing, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tot_capturing, ptr %tot_capturing, i32 1, ptr elementtype(i32) %tot_capturing) #12, !srcloc !124
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #12
  %handle37 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 5
  %25 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handle37, align 8
  %call38 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537133062, i32 noundef 1, i32 noundef %26) #12
  %27 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle37, align 8
  %call40 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 1073741826, i32 noundef 1, i32 noundef %28) #12
  %29 = ptrtoint ptr %handle37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %handle37, align 8
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %s_flags) #12
  %call.i.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tot_capturing, i32 noundef 4) #12
  %30 = ptrtoint ptr %tot_capturing to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %tot_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp45 = icmp sgt i32 %31, 0
  br i1 %cmp45, label %if.end34.cleanup_crit_edge, label %if.end47

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end47:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %cxhdl = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 19
  tail call void @cx2341x_handler_set_busy(ptr noundef %cxhdl, i32 noundef 0) #12
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef 5)
  %waitq = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end34.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %cx18_stream_enabled.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -22, %cx18_stream_enabled.exit.cleanup_crit_edge ], [ 0, %do.end7.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ -22, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_find_handle(ptr nocapture noundef readonly %cx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 0, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %handle = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 0, i32 5
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1.not = icmp eq i32 %3, -1
  br i1 %cmp1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup3_crit_edge

land.lhs.true.cleanup3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %v4l2_dev.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 1, i32 0, i32 7
  %4 = ptrtoint ptr %v4l2_dev.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v4l2_dev.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %handle.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 1, i32 5
  %6 = ptrtoint ptr %handle.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1.not.1 = icmp eq i32 %7, -1
  br i1 %cmp1.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.cleanup3_crit_edge

land.lhs.true.1.cleanup3_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %v4l2_dev.2 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 0, i32 7
  %8 = ptrtoint ptr %v4l2_dev.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v4l2_dev.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %handle.2 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 2, i32 5
  %10 = ptrtoint ptr %handle.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp1.not.2 = icmp eq i32 %11, -1
  br i1 %cmp1.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.cleanup3_crit_edge

land.lhs.true.2.cleanup3_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %v4l2_dev.3 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 3, i32 0, i32 7
  %12 = ptrtoint ptr %v4l2_dev.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2_dev.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %handle.3 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 3, i32 5
  %14 = ptrtoint ptr %handle.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp1.not.3 = icmp eq i32 %15, -1
  br i1 %cmp1.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.cleanup3_crit_edge

land.lhs.true.3.cleanup3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %v4l2_dev.4 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 4, i32 0, i32 7
  %16 = ptrtoint ptr %v4l2_dev.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v4l2_dev.4, align 4
  %tobool.not.4 = icmp eq ptr %17, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %handle.4 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 4, i32 5
  %18 = ptrtoint ptr %handle.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %handle.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp1.not.4 = icmp eq i32 %19, -1
  br i1 %cmp1.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.cleanup3_crit_edge

land.lhs.true.4.cleanup3_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %v4l2_dev.5 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 0, i32 7
  %20 = ptrtoint ptr %v4l2_dev.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v4l2_dev.5, align 4
  %tobool.not.5 = icmp eq ptr %21, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %handle.5 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 5, i32 5
  %22 = ptrtoint ptr %handle.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %handle.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp1.not.5 = icmp eq i32 %23, -1
  br i1 %cmp1.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.cleanup3_crit_edge

land.lhs.true.5.cleanup3_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %v4l2_dev.6 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 6, i32 0, i32 7
  %24 = ptrtoint ptr %v4l2_dev.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v4l2_dev.6, align 4
  %tobool.not.6 = icmp eq ptr %25, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %handle.6 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 6, i32 5
  %26 = ptrtoint ptr %handle.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %handle.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp1.not.6 = icmp eq i32 %27, -1
  br i1 %cmp1.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.cleanup3_crit_edge

land.lhs.true.6.cleanup3_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup3

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  br label %cleanup3

cleanup3:                                         ; preds = %for.inc.6, %land.lhs.true.6.cleanup3_crit_edge, %land.lhs.true.5.cleanup3_crit_edge, %land.lhs.true.4.cleanup3_crit_edge, %land.lhs.true.3.cleanup3_crit_edge, %land.lhs.true.2.cleanup3_crit_edge, %land.lhs.true.1.cleanup3_crit_edge, %land.lhs.true.cleanup3_crit_edge
  %retval.2 = phi i32 [ %3, %land.lhs.true.cleanup3_crit_edge ], [ %7, %land.lhs.true.1.cleanup3_crit_edge ], [ %11, %land.lhs.true.2.cleanup3_crit_edge ], [ %15, %land.lhs.true.3.cleanup3_crit_edge ], [ %19, %land.lhs.true.4.cleanup3_crit_edge ], [ %23, %land.lhs.true.5.cleanup3_crit_edge ], [ %27, %land.lhs.true.6.cleanup3_crit_edge ], [ -1, %for.inc.6 ]
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx18_handle_to_stream(ptr noundef readonly %cx, i32 noundef %handle) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %handle)
  %cmp = icmp eq i32 %handle, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.015
  %handle2 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.015, i32 5
  %0 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %handle)
  %cmp3.not = icmp eq i32 %1, %handle
  br i1 %cmp3.not, label %if.end5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %arrayidx, i32 0, i32 7
  %2 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end5
  %dvb.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.015, i32 1
  %4 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %enabled.i = getelementptr inbounds %struct.cx18_dvb, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %type.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.015, i32 4
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp.i = icmp eq i32 %9, 5
  br i1 %cmp.i, label %cx18_stream_enabled.exit, label %lor.rhs.i.for.inc_crit_edge

lor.rhs.i.for.inc_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cx18_stream_enabled.exit:                         ; preds = %lor.rhs.i
  %cx.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 %i.015, i32 2
  %10 = ptrtoint ptr %cx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cx.i, align 4
  %arrayidx.i = getelementptr %struct.cx18, ptr %11, i32 0, i32 27, i32 5
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i.not = icmp eq i32 %13, 0
  br i1 %cmp4.i.not, label %cx18_stream_enabled.exit.for.inc_crit_edge, label %cx18_stream_enabled.exit.cleanup_crit_edge

cx18_stream_enabled.exit.cleanup_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cx18_stream_enabled.exit.for.inc_crit_edge:       ; preds = %cx18_stream_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %cx18_stream_enabled.exit.for.inc_crit_edge, %lor.rhs.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cx18_stream_enabled.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx, %if.end5.cleanup_crit_edge ], [ %arrayidx, %land.lhs.true.i.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %arrayidx, %cx18_stream_enabled.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_set_funcs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_vb_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_vmalloc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_setup(ptr nocapture noundef %q, ptr nocapture noundef %count, ptr nocapture noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %width = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %width, align 8
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %height = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 19, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %height, align 2
  %conv3 = zext i16 %7 to i32
  %mul4 = mul i32 %mul, %conv3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul4, ptr %size, align 4
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %mul616 = mul i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 132710400, i32 %mul616)
  %cmp717 = icmp ugt i32 %mul616, 132710400
  br i1 %cmp717, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %16 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %15, %if.end.while.body_crit_edge ]
  %dec = add i32 %16, -1
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec, ptr %count, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %mul6 = mul i32 %dec, %19
  %cmp7 = icmp ugt i32 %mul6, 132710400
  br i1 %cmp7, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %field = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 7
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %field, align 4
  %last = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 8
  %21 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %last, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %q, ptr noundef %vb, i32 noundef %field) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cx1, align 4
  %pixelformat = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 8
  %width = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 19, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %width, align 8
  %conv = zext i16 %7 to i32
  %height = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 19, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height, align 2
  %conv3 = zext i16 %9 to i32
  %bytes_used.i = getelementptr inbounds %struct.cx18_videobuf_buffer, ptr %vb, i32 0, i32 2
  %10 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bytes_used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %7)
  %cmp.i = icmp ult i16 %7, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %9)
  %cmp2.i = icmp ult i16 %9, 32
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %entry.cx18_prepare_buffer.exit_crit_edge, label %if.end.i

entry.cx18_prepare_buffer.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_prepare_buffer.exit

if.end.i:                                         ; preds = %entry
  %mul.i = shl nuw nsw i32 %conv, 1
  %mul3.i = mul i32 %mul.i, %conv3
  %size.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul3.i, ptr %size.i, align 4
  %baddr.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %12 = ptrtoint ptr %baddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.not.i = icmp eq i32 %13, 0
  br i1 %cmp5.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bsize.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %14 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul3.i)
  %cmp9.i = icmp ult i32 %15, %mul3.i
  br i1 %cmp9.i, label %land.lhs.true.i.cx18_prepare_buffer.exit_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true.i.cx18_prepare_buffer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_prepare_buffer.exit

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %width13.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %16 = ptrtoint ptr %width13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp14.not.i = icmp eq i32 %17, %conv
  br i1 %cmp14.not.i, label %lor.lhs.false15.i, label %if.end11.i.if.then28.i_crit_edge

if.end11.i.if.then28.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false15.i:                                ; preds = %if.end11.i
  %height17.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %18 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height17.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv3)
  %cmp18.not.i = icmp eq i32 %19, %conv3
  br i1 %cmp18.not.i, label %lor.lhs.false19.i, label %lor.lhs.false15.i.if.then28.i_crit_edge

lor.lhs.false15.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false15.i
  %field21.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %20 = ptrtoint ptr %field21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field21.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %field)
  %cmp22.not.i = icmp eq i32 %21, %field
  br i1 %cmp22.not.i, label %lor.lhs.false23.i, label %lor.lhs.false19.i.if.then28.i_crit_edge

lor.lhs.false19.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false19.i
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %5)
  %cmp25.not.i = icmp eq i32 %23, %5
  br i1 %cmp25.not.i, label %lor.lhs.false26.i, label %lor.lhs.false23.i.if.then28.i_crit_edge

lor.lhs.false23.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false23.i
  %tvnorm.i = getelementptr inbounds %struct.cx18_videobuf_buffer, ptr %vb, i32 0, i32 1
  %24 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tvnorm.i, align 8
  %std.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 66
  %26 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %std.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp27.not.i = icmp eq i64 %25, %27
  br i1 %cmp27.not.i, label %lor.lhs.false26.i.if.end47.i_crit_edge, label %lor.lhs.false26.i.if.then28.i_crit_edge

lor.lhs.false26.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i

lor.lhs.false26.i.if.end47.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then28.i:                                      ; preds = %lor.lhs.false26.i.if.then28.i_crit_edge, %lor.lhs.false23.i.if.then28.i_crit_edge, %lor.lhs.false19.i.if.then28.i_crit_edge, %lor.lhs.false15.i.if.then28.i_crit_edge, %if.end11.i.if.then28.i_crit_edge
  %28 = ptrtoint ptr %width13.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %width13.i, align 8
  %height32.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %29 = ptrtoint ptr %height32.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv3, ptr %height32.i, align 4
  %field34.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %30 = ptrtoint ptr %field34.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %field, ptr %field34.i, align 8
  %std35.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 66
  %31 = ptrtoint ptr %std35.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %std35.i, align 8
  %tvnorm36.i = getelementptr inbounds %struct.cx18_videobuf_buffer, ptr %vb, i32 0, i32 1
  %33 = ptrtoint ptr %tvnorm36.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %tvnorm36.i, align 8
  %34 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %5, ptr %pixelformat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091848, i32 %5)
  %cmp39.i = icmp eq i32 %5, 842091848
  %mul44.sink.i.v = select i1 %cmp39.i, i32 1080, i32 1440
  %mul44.sink.i = mul nuw nsw i32 %mul44.sink.i.v, %conv3
  %35 = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 23
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul44.sink.i, ptr %35, align 4
  %call.i.i = tail call i32 @videobuf_waiton(ptr noundef %q, ptr noundef %vb, i32 noundef 0, i32 noundef 0) #12
  tail call void @videobuf_vmalloc_free(ptr noundef %vb) #12
  %state.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %37 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %state.i.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then28.i, %lor.lhs.false26.i.if.end47.i_crit_edge
  %38 = ptrtoint ptr %baddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %baddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp50.not.i = icmp eq i32 %39, 0
  br i1 %cmp50.not.i, label %if.end47.i.if.end58.i_crit_edge, label %land.lhs.true51.i

if.end47.i.if.end58.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

land.lhs.true51.i:                                ; preds = %if.end47.i
  %bsize53.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %40 = ptrtoint ptr %bsize53.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bsize53.i, align 4
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp56.i = icmp ult i32 %41, %43
  br i1 %cmp56.i, label %land.lhs.true51.i.cx18_prepare_buffer.exit_crit_edge, label %land.lhs.true51.i.if.end58.i_crit_edge

land.lhs.true51.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

land.lhs.true51.i.cx18_prepare_buffer.exit_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cx18_prepare_buffer.exit

if.end58.i:                                       ; preds = %land.lhs.true51.i.if.end58.i_crit_edge, %if.end47.i.if.end58.i_crit_edge
  %field60.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %44 = ptrtoint ptr %field60.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %field60.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp61.i = icmp eq i32 %45, 0
  br i1 %cmp61.i, label %if.then62.i, label %if.end58.i.if.end65.i_crit_edge

if.end58.i.if.end65.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %field60.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %field60.i, align 8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then62.i, %if.end58.i.if.end65.i_crit_edge
  %state.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp67.i = icmp eq i32 %48, 0
  br i1 %cmp67.i, label %if.then68.i, label %if.end65.i.cleanup.sink.split.i_crit_edge

if.end65.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then68.i:                                      ; preds = %if.end65.i
  %49 = ptrtoint ptr %width13.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %width13.i, align 8
  %height72.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %50 = ptrtoint ptr %height72.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv3, ptr %height72.i, align 4
  %51 = ptrtoint ptr %field60.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %field, ptr %field60.i, align 8
  %std75.i = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 66
  %52 = ptrtoint ptr %std75.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %std75.i, align 8
  %tvnorm76.i = getelementptr inbounds %struct.cx18_videobuf_buffer, ptr %vb, i32 0, i32 1
  %54 = ptrtoint ptr %tvnorm76.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %tvnorm76.i, align 8
  %55 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %5, ptr %pixelformat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091848, i32 %5)
  %cmp79.i = icmp eq i32 %5, 842091848
  %mul87.sink.i.v = select i1 %cmp79.i, i32 1080, i32 1440
  %mul87.sink.i = mul nuw nsw i32 %mul87.sink.i.v, %conv3
  %56 = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 23
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul87.sink.i, ptr %56, align 4
  %call.i = tail call i32 @videobuf_iolock(ptr noundef %q, ptr noundef %vb, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp91.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp91.not.i, label %if.then68.i.cleanup.sink.split.i_crit_edge, label %fail.i

if.then68.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

fail.i:                                           ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i158.i = tail call i32 @videobuf_waiton(ptr noundef %q, ptr noundef %vb, i32 noundef 0, i32 noundef 0) #12
  tail call void @videobuf_vmalloc_free(ptr noundef %vb) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %fail.i, %if.then68.i.cleanup.sink.split.i_crit_edge, %if.end65.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %fail.i ], [ 1, %if.then68.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.end65.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %fail.i ], [ 0, %if.then68.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end65.i.cleanup.sink.split.i_crit_edge ]
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink.i, ptr %state.i, align 4
  br label %cx18_prepare_buffer.exit

cx18_prepare_buffer.exit:                         ; preds = %cleanup.sink.split.i, %land.lhs.true51.i.cx18_prepare_buffer.exit_crit_edge, %land.lhs.true.i.cx18_prepare_buffer.exit_crit_edge, %entry.cx18_prepare_buffer.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.cx18_prepare_buffer.exit_crit_edge ], [ -22, %land.lhs.true.i.cx18_prepare_buffer.exit_crit_edge ], [ -22, %land.lhs.true51.i.cx18_prepare_buffer.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr nocapture noundef readonly %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9
  %vb_capture = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 25
  %prev.i = getelementptr inbounds %struct.cx18_stream, ptr %1, i32 0, i32 25, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %4, ptr noundef %vb_capture) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queue, ptr %prev.i, align 4
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vb_capture, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %queue, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_release(ptr noundef %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @videobuf_waiton(ptr noundef %q, ptr noundef %vb, i32 noundef 0, i32 noundef 0) #12
  tail call void @videobuf_vmalloc_free(ptr noundef %vb) #12
  %state.i = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_waiton(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_vmalloc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_v4l2_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_v4l2_enc_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_v4l2_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_v4l2_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_v4l2_close(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_dvb_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_cx18_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_cx18_mdl_sync_for_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_api(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_unload_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_load_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 779, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_start_v4l2_encode_stream._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_start_v4l2_encode_stream._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 918, i32 3}
!8 = !{ptr @cx18_start_v4l2_encode_stream._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cx18_start_v4l2_encode_stream._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_cx18_start_v4l2_encode_stream, !11, !"__ksymtab_cx18_start_v4l2_encode_stream", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 944, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 970, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cx18_stop_v4l2_encode_stream._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cx18_stop_v4l2_encode_stream._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 982, i32 3}
!19 = !{ptr @cx18_stop_v4l2_encode_stream._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cx18_stop_v4l2_encode_stream._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_cx18_stop_v4l2_encode_stream, !22, !"__ksymtab_cx18_stop_v4l2_encode_stream", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 1008, i32 1}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 329, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cx18_prep_dev._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx18_prep_dev._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 340, i32 5}
!30 = !{ptr @cx18_prep_dev._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cx18_prep_dev._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 354, i32 57}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 50, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 57, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 62, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 69, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 76, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 82, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 87, i32 3}
!48 = !{ptr @cx18_stream_info, !49, !"cx18_stream_info", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 48, i32 3}
!50 = !{ptr @cx18_stream_init.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 262, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cx18_stream_init.__key.25, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 264, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cx18_stream_init.__key.27, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 266, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cx18_stream_init.__key.29, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 268, i32 2}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cx18_stream_init.__key.31, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 270, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cx18_stream_init.__key.33, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 273, i32 2}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cx18_stream_init.__key.35, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 276, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cx18_stream_init.__key.37, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 277, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cx18_stream_init.__key.39, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 279, i32 3}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @cx18_videobuf_qops, !78, !"cx18_videobuf_qops", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 234, i32 40}
!79 = !{ptr @cx18_v4l2_enc_fops, !80, !"cx18_v4l2_enc_fops", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 25, i32 42}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 405, i32 4}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cx18_reg_dev._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @cx18_reg_dev._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 428, i32 3}
!88 = !{ptr @cx18_reg_dev._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cx18_reg_dev._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 438, i32 3}
!92 = !{ptr @cx18_reg_dev._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cx18_reg_dev._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 445, i32 3}
!96 = !{ptr @cx18_reg_dev._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cx18_reg_dev._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 450, i32 4}
!100 = !{ptr @cx18_reg_dev._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cx18_reg_dev._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @cx18_reg_dev._entry.55, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 454, i32 4}
!104 = !{ptr @cx18_reg_dev._entry_ptr.56, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx18/cx18-streams.c", i32 641, i32 2}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cx18_vbi_setup._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @cx18_vbi_setup._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2148392431, i64 2148392457, i64 2148392486, i64 2148392520, i64 2148392551, i64 2148392574}
!120 = !{i64 2158669733}
!121 = !{i64 5769352}
!122 = !{i64 5769770}
!123 = !{i64 2158669363}
!124 = !{i64 2148394896, i64 2148394922, i64 2148394951, i64 2148394985, i64 2148395016, i64 2148395039}
