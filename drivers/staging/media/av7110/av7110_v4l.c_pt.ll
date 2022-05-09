; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/av7110_v4l.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/av7110_v4l.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.av7110 = type { %struct.dvb_device, %struct.dvb_net, %struct.video_device, %struct.video_device, ptr, %struct.i2c_adapter, ptr, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, [8 x i16], %struct.mutex, [2 x %struct.ca_slot_info], i32, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.spinlock, i32, i32, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, i8, i32, %struct.mutex, i32, %struct.video_status, i16, i32, i32, %struct.audio_status, [32 x ptr], [32 x %struct.av7110_p2t], [2 x %struct.dvb_filter_pes2ts], [2 x %struct.ipack], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, i16, ptr, i32, [20 x i16], %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, %struct.audio_mixer, %struct.dvb_adapter, ptr, ptr, ptr, ptr, %struct.dvb_video_events, %struct.video_size_t, i16, i16, %struct.infrared, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %struct.dvb_diseqc_master_cmd, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.112 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.109], %struct.media_entity_enum, i32 }
%struct.anon.109 = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ca_slot_info = type { i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.video_status = type { i32, i32, i32, i32, i32 }
%struct.audio_status = type { i32, i32, i32, i32, i32, i32, %struct.audio_mixer }
%struct.av7110_p2t = type { [188 x i8], i8, i32, i32, ptr }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }
%struct.ipack = type { i32, i32, ptr, i8, i32, [2 x i8], i8, i8, i8, [5 x i8], ptr, i32, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.audio_mixer = type { i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_video_events = type { [8 x %struct.video_event], i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.video_event = type { i32, i32, %union.anon.167 }
%union.anon.167 = type { %struct.video_size_t }
%struct.video_size_t = type { i32, i32, i32 }
%struct.infrared = type { ptr, [32 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.saa7146_dma = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.saa7146_vv = type { %struct.saa7146_dmaqueue, %struct.v4l2_vbi_format, %struct.timer_list, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr, %struct.saa7146_overlay, %struct.v4l2_framebuffer, ptr, ptr, %struct.saa7146_dmaqueue, %struct.v4l2_pix_format, i32, ptr, i32, i32, i32, i32, %struct.saa7146_dma, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.saa7146_overlay = type { ptr, %struct.v4l2_window, [16 x %struct.v4l2_clip], i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.147 }
%struct.anon.147 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.142, i32, i32 }
%union.anon.142 = type { i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.168], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.168 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.169 }>
%union.anon.169 = type { i64 }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.141 }
%union.anon.141 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.143, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.143 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@av7110_debug = external dso_local local_unnamed_addr global i32, align 4
@msp_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017dvb_ttpci: %s(): dvb-ttpci: failed @ card %d, %u = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msp_writereg\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/av7110/av7110_v4l.c\00", [54 x i8] zeroinitializer }, align 32
@msp_writereg._entry_ptr = internal global ptr @msp_writereg._entry, section ".printk_index", align 4
@av7110_init_analog_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016dvb_ttpci: DVB-C analog module @ card %d detected, initializing MSP3400\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"av7110_init_analog_module\00", [38 x i8] zeroinitializer }, align 32
@av7110_init_analog_module._entry_ptr = internal global ptr @av7110_init_analog_module._entry, section ".printk_index", align 4
@av7110_init_analog_module._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016dvb_ttpci: DVB-C analog module @ card %d detected, initializing MSP3415\0A\00", [53 x i8] zeroinitializer }, align 32
@av7110_init_analog_module._entry_ptr.7 = internal global ptr @av7110_init_analog_module._entry.5, section ".printk_index", align 4
@av7110_init_analog_module._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017dvb_ttpci: %s(): dvb-ttpci: @ card %d MSP34xx version 0x%04x 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@av7110_init_analog_module._entry_ptr.10 = internal global ptr @av7110_init_analog_module._entry.8, section ".printk_index", align 4
@av7110_init_analog_module._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dvb_ttpci: saa7113 not accessible\0A\00", [59 x i8] zeroinitializer }, align 32
@av7110_init_analog_module._entry_ptr.13 = internal global ptr @av7110_init_analog_module._entry.11, section ".printk_index", align 4
@saa7113_init_regs = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\02\D0\03#\04\00\05\00\06\E9\07\0D\08\98\09\02\0A\80\0B@\0C@\0D\00\0E\01\0F|\10H\11\0C\12\8B\13\1A\14\00\15\00\16\00\17\00\18\00\19\00\1A\00\1B\00\1C\00\1D\00\1E\00AwBwCwDwEwFwGwHwIwJwKwLwMwNwOwPwQwRwSwTwUwVwW\FF\FF", [55 x i8] zeroinitializer }, align 32
@av7110_init_analog_module._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017dvb_ttpci: %s(): setting band in demodulator failed\0A\00", [41 x i8] zeroinitializer }, align 32
@av7110_init_analog_module._entry_ptr.16 = internal global ptr @av7110_init_analog_module._entry.14, section ".printk_index", align 4
@av7110_init_analog_module._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017dvb_ttpci: %s(): saa7113 initialization failed @ card %d\00", [37 x i8] zeroinitializer }, align 32
@av7110_init_analog_module._entry_ptr.19 = internal global ptr @av7110_init_analog_module._entry.17, section ".printk_index", align 4
@av7110_vv_data_c = internal global { %struct.saa7146_ext_vv, [268 x i8] } { %struct.saa7146_ext_vv { i32 1, i32 1, i32 196736, i32 2, ptr @standard, i32 2, ptr @std_callback, %struct.v4l2_ioctl_ops zeroinitializer, %struct.v4l2_ioctl_ops zeroinitializer, ptr null, %struct.v4l2_file_operations { ptr null, ptr null, ptr @av7110_vbi_write, ptr null, ptr null, ptr null, ptr null, ptr @av7110_vbi_reset, ptr @av7110_vbi_reset } }, [268 x i8] zeroinitializer }, align 32
@av7110_vv_data_st = internal global { %struct.saa7146_ext_vv, [268 x i8] } { %struct.saa7146_ext_vv { i32 1, i32 1, i32 131200, i32 0, ptr @standard, i32 2, ptr @std_callback, %struct.v4l2_ioctl_ops zeroinitializer, %struct.v4l2_ioctl_ops zeroinitializer, ptr null, %struct.v4l2_file_operations { ptr null, ptr null, ptr @av7110_vbi_write, ptr null, ptr null, ptr null, ptr null, ptr @av7110_vbi_reset, ptr @av7110_vbi_reset } }, [268 x i8] zeroinitializer }, align 32
@av7110_init_v4l._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013dvb_ttpci: %s: cannot init capture device. skipping\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"av7110_init_v4l\00", [16 x i8] zeroinitializer }, align 32
@av7110_init_v4l._entry_ptr = internal global ptr @av7110_init_v4l._entry, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"av7110\00", [25 x i8] zeroinitializer }, align 32
@av7110_init_v4l._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dvb_ttpci: %s: cannot register capture device. skipping\0A\00", [37 x i8] zeroinitializer }, align 32
@av7110_init_v4l._entry_ptr.25 = internal global ptr @av7110_init_v4l._entry.23, section ".printk_index", align 4
@av7110_init_v4l._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013dvb_ttpci: %s: cannot register vbi v4l2 device. skipping\0A\00", [36 x i8] zeroinitializer }, align 32
@av7110_init_v4l._entry_ptr.28 = internal global ptr @av7110_init_v4l._entry.26, section ".printk_index", align 4
@msp_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017dvb_ttpci: %s(): dvb-ttpci: failed @ card %d, %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msp_readreg\00", [20 x i8] zeroinitializer }, align 32
@msp_readreg._entry_ptr = internal global ptr @msp_readreg._entry, section ".printk_index", align 4
@ves1820_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017dvb_ttpci: %s(): dev: %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ves1820_writereg\00", [47 x i8] zeroinitializer }, align 32
@ves1820_writereg._entry_ptr = internal global ptr @ves1820_writereg._entry, section ".printk_index", align 4
@vidioc_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dvb_ttpci: %s(): VIDIOC_ENUMINPUT: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry_ptr = internal global ptr @vidioc_enum_input._entry, section ".printk_index", align 4
@inputs = internal constant { [4 x %struct.v4l2_input], [64 x i8] } { [4 x %struct.v4l2_input] [%struct.v4l2_input { i32 0, [32 x i8] c"DVB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 1, i32 0, i64 4103, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 1, [32 x i8] c"Television\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 1, i32 0, i64 4103, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 2, [32 x i8] c"Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 4103, i32 0, i32 4, [3 x i32] zeroinitializer }, %struct.v4l2_input { i32 3, [32 x i8] c"Y/C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 4103, i32 0, i32 4, [3 x i32] zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@vidioc_g_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_INPUT: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_input\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_input._entry_ptr = internal global ptr @vidioc_g_input._entry, section ".printk_index", align 4
@vidioc_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_INPUT: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_input\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_input._entry_ptr = internal global ptr @vidioc_s_input._entry, section ".printk_index", align 4
@av7110_dvb_c_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017dvb_ttpci: %s(): %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"av7110_dvb_c_switch\00", [44 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr = internal global ptr @av7110_dvb_c_switch._entry, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dvb_ttpci: %s(): suspending video failed\0A\00", [52 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.43 = internal global ptr @av7110_dvb_c_switch._entry.41, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dvb_ttpci: %s(): switching to analog TV:\0A\00", [52 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.46 = internal global ptr @av7110_dvb_c_switch._entry.44, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017dvb_ttpci: %s(): switching SAA7113 to Analog Tuner Input\0A\00", [36 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.49 = internal global ptr @av7110_dvb_c_switch._entry.47, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.40, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.51 = internal global ptr @av7110_dvb_c_switch._entry.50, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.40, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dvb_ttpci: %s(): saa7113 write failed @ card %d\00", [46 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.54 = internal global ptr @av7110_dvb_c_switch._entry.52, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.40, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017dvb_ttpci: %s(): switching SAA7113 to Video AV CVBS Input\0A\00", [35 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.57 = internal global ptr @av7110_dvb_c_switch._entry.55, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.40, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.59 = internal global ptr @av7110_dvb_c_switch._entry.58, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.40, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017dvb_ttpci: %s(): switching SAA7113 to Video AV Y/C Input\0A\00", [36 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.62 = internal global ptr @av7110_dvb_c_switch._entry.60, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.40, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.64 = internal global ptr @av7110_dvb_c_switch._entry.63, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.40, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017dvb_ttpci: %s(): switching SAA7113 to Input: AV7110: SAA7113: invalid input\0A\00", [49 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.67 = internal global ptr @av7110_dvb_c_switch._entry.65, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.40, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): switching DVB mode\0A\00", [57 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.70 = internal global ptr @av7110_dvb_c_switch._entry.68, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.40, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.72 = internal global ptr @av7110_dvb_c_switch._entry.71, section ".printk_index", align 4
@av7110_dvb_c_switch._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.40, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dvb_ttpci: %s(): ADSwitch error\0A\00", [61 x i8] zeroinitializer }, align 32
@av7110_dvb_c_switch._entry_ptr.75 = internal global ptr @av7110_dvb_c_switch._entry.73, section ".printk_index", align 4
@analog_standard = internal constant { [2 x %struct.saa7146_standard], [48 x i8] } { [2 x %struct.saa7146_standard] [%struct.saa7146_standard { ptr @.str.77, i64 7, i32 27, i32 288, i32 8, i32 708, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.78, i64 45056, i32 16, i32 244, i32 64, i32 708, i32 480, i32 640 }], [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_TUNER: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry_ptr = internal global ptr @vidioc_g_tuner._entry, section ".printk_index", align 4
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_TUNER: msp3400 TV standard detection: 0x%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry_ptr.84 = internal global ptr @vidioc_g_tuner._entry.82, section ".printk_index", align 4
@vidioc_g_tuner._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_TUNER: msp3400 stereo detection: 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry_ptr.87 = internal global ptr @vidioc_g_tuner._entry.85, section ".printk_index", align 4
@vidioc_s_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_TUNER: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_tuner\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr = internal global ptr @vidioc_s_tuner._entry, section ".printk_index", align 4
@vidioc_s_tuner._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_TUNER: V4L2_TUNER_MODE_STEREO\0A\00", [37 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr.92 = internal global ptr @vidioc_s_tuner._entry.90, section ".printk_index", align 4
@vidioc_s_tuner._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1_LANG2\0A\00", [32 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr.95 = internal global ptr @vidioc_s_tuner._entry.93, section ".printk_index", align 4
@vidioc_s_tuner._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1\0A\00", [38 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr.98 = internal global ptr @vidioc_s_tuner._entry.96, section ".printk_index", align 4
@vidioc_s_tuner._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.89, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG2\0A\00", [38 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr.101 = internal global ptr @vidioc_s_tuner._entry.99, section ".printk_index", align 4
@vidioc_s_tuner._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.89, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_TUNER: TDA9840_SET_MONO\0A\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr.104 = internal global ptr @vidioc_s_tuner._entry.102, section ".printk_index", align 4
@vidioc_g_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_FREQ: freq:0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_g_frequency\00", [45 x i8] zeroinitializer }, align 32
@vidioc_g_frequency._entry_ptr = internal global ptr @vidioc_g_frequency._entry, section ".printk_index", align 4
@vidioc_s_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_FREQUENCY: freq:0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_s_frequency\00", [45 x i8] zeroinitializer }, align 32
@vidioc_s_frequency._entry_ptr = internal global ptr @vidioc_s_frequency._entry, section ".printk_index", align 4
@ves1820_set_tv_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dvb_ttpci: %s(): freq: 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ves1820_set_tv_freq\00", [44 x i8] zeroinitializer }, align 32
@ves1820_set_tv_freq._entry_ptr = internal global ptr @ves1820_set_tv_freq._entry, section ".printk_index", align 4
@tuner_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.111, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tuner_write\00", [20 x i8] zeroinitializer }, align 32
@tuner_write._entry_ptr = internal global ptr @tuner_write._entry, section ".printk_index", align 4
@vidioc_enumaudio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_AUDIO: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidioc_enumaudio\00", [47 x i8] zeroinitializer }, align 32
@vidioc_enumaudio._entry_ptr = internal global ptr @vidioc_enumaudio._entry, section ".printk_index", align 4
@msp3400_v4l2_audio = internal constant { %struct.v4l2_audio, [44 x i8] } { %struct.v4l2_audio { i32 0, [32 x i8] c"Television\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, [2 x i32] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@vidioc_g_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.114, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_audio\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_audio._entry_ptr = internal global ptr @vidioc_g_audio._entry, section ".printk_index", align 4
@vidioc_s_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_AUDIO: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_audio\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_audio._entry_ptr = internal global ptr @vidioc_s_audio._entry, section ".printk_index", align 4
@vidioc_g_sliced_vbi_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_SLICED_VBI_CAP\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vidioc_g_sliced_vbi_cap\00", [40 x i8] zeroinitializer }, align 32
@vidioc_g_sliced_vbi_cap._entry_ptr = internal global ptr @vidioc_g_sliced_vbi_cap._entry, section ".printk_index", align 4
@vidioc_g_fmt_sliced_vbi_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017dvb_ttpci: %s(): VIDIOC_G_FMT:\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vidioc_g_fmt_sliced_vbi_out\00", [36 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_sliced_vbi_out._entry_ptr = internal global ptr @vidioc_g_fmt_sliced_vbi_out._entry, section ".printk_index", align 4
@vidioc_s_fmt_sliced_vbi_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dvb_ttpci: %s(): VIDIOC_S_FMT\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vidioc_s_fmt_sliced_vbi_out\00", [36 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_sliced_vbi_out._entry_ptr = internal global ptr @vidioc_s_fmt_sliced_vbi_out._entry, section ".printk_index", align 4
@standard = internal global { [2 x %struct.saa7146_standard], [48 x i8] } { [2 x %struct.saa7146_standard] [%struct.saa7146_standard { ptr @.str.77, i64 7, i32 21, i32 288, i32 72, i32 708, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.78, i64 45056, i32 16, i32 244, i32 64, i32 708, i32 480, i32 640 }], [48 x i8] zeroinitializer }, align 32
@dvb_standard = internal constant { [2 x %struct.saa7146_standard], [48 x i8] } { [2 x %struct.saa7146_standard] [%struct.saa7146_standard { ptr @.str.77, i64 7, i32 20, i32 288, i32 72, i32 708, i32 576, i32 768 }, %struct.saa7146_standard { ptr @.str.78, i64 45056, i32 16, i32 244, i32 64, i32 708, i32 480, i32 640 }], [48 x i8] zeroinitializer }, align 32
@av7110_vbi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017dvb_ttpci: %s(): %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"av7110_vbi_write\00", [47 x i8] zeroinitializer }, align 32
@av7110_vbi_write._entry_ptr = internal global ptr @av7110_vbi_write._entry, section ".printk_index", align 4
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@av7110_vbi_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.130, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"av7110_vbi_reset\00", [47 x i8] zeroinitializer }, align 32
@av7110_vbi_reset._entry_ptr = internal global ptr @av7110_vbi_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 16, i64 4362, i64 5058]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.179 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16384]
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 44, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 699, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 704, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 713, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 725, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"saa7113_init_regs\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 631, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 743, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 752, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"av7110_vv_data_c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 938, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant [18 x i8] c"av7110_vv_data_st\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 923, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 807, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 834, i32 53 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 835, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 841, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 74, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 128, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 450, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"inputs\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 82, i32 26 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 471, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 480, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 224, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 230, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 236, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 244, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 254, i32 6 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 260, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 263, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 265, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 268, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 270, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 273, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 280, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 290, i32 5 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 299, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant [16 x i8] c"analog_standard\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 876, i32 32 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 878, i32 11 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 883, i32 11 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 318, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 324, i32 27 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 337, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 339, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 360, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 367, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 372, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 377, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 382, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 387, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 404, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 420, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 153, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 140, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 494, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [19 x i8] c"msp3400_v4l2_audio\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 210, i32 32 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 506, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 520, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 532, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 548, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 566, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 862, i32 32 }
@___asan_gen_.560 = private unnamed_addr constant [13 x i8] c"dvb_standard\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 890, i32 32 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 612, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 156, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.579 = private constant [45 x i8] c"../drivers/staging/media/av7110/av7110_v4l.c\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 595, i32 2 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @av7110_dvb_c_switch._entry, ptr @av7110_dvb_c_switch._entry.41, ptr @av7110_dvb_c_switch._entry.44, ptr @av7110_dvb_c_switch._entry.47, ptr @av7110_dvb_c_switch._entry.50, ptr @av7110_dvb_c_switch._entry.52, ptr @av7110_dvb_c_switch._entry.55, ptr @av7110_dvb_c_switch._entry.58, ptr @av7110_dvb_c_switch._entry.60, ptr @av7110_dvb_c_switch._entry.63, ptr @av7110_dvb_c_switch._entry.65, ptr @av7110_dvb_c_switch._entry.68, ptr @av7110_dvb_c_switch._entry.71, ptr @av7110_dvb_c_switch._entry.73, ptr @av7110_dvb_c_switch._entry_ptr, ptr @av7110_dvb_c_switch._entry_ptr.43, ptr @av7110_dvb_c_switch._entry_ptr.46, ptr @av7110_dvb_c_switch._entry_ptr.49, ptr @av7110_dvb_c_switch._entry_ptr.51, ptr @av7110_dvb_c_switch._entry_ptr.54, ptr @av7110_dvb_c_switch._entry_ptr.57, ptr @av7110_dvb_c_switch._entry_ptr.59, ptr @av7110_dvb_c_switch._entry_ptr.62, ptr @av7110_dvb_c_switch._entry_ptr.64, ptr @av7110_dvb_c_switch._entry_ptr.67, ptr @av7110_dvb_c_switch._entry_ptr.70, ptr @av7110_dvb_c_switch._entry_ptr.72, ptr @av7110_dvb_c_switch._entry_ptr.75, ptr @av7110_init_analog_module._entry, ptr @av7110_init_analog_module._entry.11, ptr @av7110_init_analog_module._entry.14, ptr @av7110_init_analog_module._entry.17, ptr @av7110_init_analog_module._entry.5, ptr @av7110_init_analog_module._entry.8, ptr @av7110_init_analog_module._entry_ptr, ptr @av7110_init_analog_module._entry_ptr.10, ptr @av7110_init_analog_module._entry_ptr.13, ptr @av7110_init_analog_module._entry_ptr.16, ptr @av7110_init_analog_module._entry_ptr.19, ptr @av7110_init_analog_module._entry_ptr.7, ptr @av7110_init_v4l._entry, ptr @av7110_init_v4l._entry.23, ptr @av7110_init_v4l._entry.26, ptr @av7110_init_v4l._entry_ptr, ptr @av7110_init_v4l._entry_ptr.25, ptr @av7110_init_v4l._entry_ptr.28, ptr @av7110_vbi_reset._entry, ptr @av7110_vbi_reset._entry_ptr, ptr @av7110_vbi_write._entry, ptr @av7110_vbi_write._entry_ptr, ptr @msp_readreg._entry, ptr @msp_readreg._entry_ptr, ptr @msp_writereg._entry, ptr @msp_writereg._entry_ptr, ptr @tuner_write._entry, ptr @tuner_write._entry_ptr, ptr @ves1820_set_tv_freq._entry, ptr @ves1820_set_tv_freq._entry_ptr, ptr @ves1820_writereg._entry, ptr @ves1820_writereg._entry_ptr, ptr @vidioc_enum_input._entry, ptr @vidioc_enum_input._entry_ptr, ptr @vidioc_enumaudio._entry, ptr @vidioc_enumaudio._entry_ptr, ptr @vidioc_g_audio._entry, ptr @vidioc_g_audio._entry_ptr, ptr @vidioc_g_fmt_sliced_vbi_out._entry, ptr @vidioc_g_fmt_sliced_vbi_out._entry_ptr, ptr @vidioc_g_frequency._entry, ptr @vidioc_g_frequency._entry_ptr, ptr @vidioc_g_input._entry, ptr @vidioc_g_input._entry_ptr, ptr @vidioc_g_sliced_vbi_cap._entry, ptr @vidioc_g_sliced_vbi_cap._entry_ptr, ptr @vidioc_g_tuner._entry, ptr @vidioc_g_tuner._entry.82, ptr @vidioc_g_tuner._entry.85, ptr @vidioc_g_tuner._entry_ptr, ptr @vidioc_g_tuner._entry_ptr.84, ptr @vidioc_g_tuner._entry_ptr.87, ptr @vidioc_s_audio._entry, ptr @vidioc_s_audio._entry_ptr, ptr @vidioc_s_fmt_sliced_vbi_out._entry, ptr @vidioc_s_fmt_sliced_vbi_out._entry_ptr, ptr @vidioc_s_frequency._entry, ptr @vidioc_s_frequency._entry_ptr, ptr @vidioc_s_input._entry, ptr @vidioc_s_input._entry_ptr, ptr @vidioc_s_tuner._entry, ptr @vidioc_s_tuner._entry.102, ptr @vidioc_s_tuner._entry.90, ptr @vidioc_s_tuner._entry.93, ptr @vidioc_s_tuner._entry.96, ptr @vidioc_s_tuner._entry.99, ptr @vidioc_s_tuner._entry_ptr, ptr @vidioc_s_tuner._entry_ptr.101, ptr @vidioc_s_tuner._entry_ptr.104, ptr @vidioc_s_tuner._entry_ptr.92, ptr @vidioc_s_tuner._entry_ptr.95, ptr @vidioc_s_tuner._entry_ptr.98, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @saa7113_init_regs, ptr @.str.15, ptr @.str.18, ptr @av7110_vv_data_c, ptr @av7110_vv_data_st, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @inputs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.53, ptr @.str.56, ptr @.str.61, ptr @.str.66, ptr @.str.69, ptr @.str.74, ptr @analog_standard, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @msp3400_v4l2_audio, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @standard, ptr @dvb_standard, ptr @.str.125, ptr @.str.126, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_analog_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_analog_module._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_analog_module._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_analog_module._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7113_init_regs to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_analog_module._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_analog_module._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_vv_data_c to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_vv_data_st to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_v4l._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_v4l._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_init_v4l._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inputs to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_dvb_c_switch._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_standard to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_tuner._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_tuner._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1820_set_tv_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enumaudio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400_v4l2_audio to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_sliced_vbi_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_sliced_vbi_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_sliced_vbi_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_standard to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_vbi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_vbi_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_writereg(ptr noundef %av7110, i8 noundef zeroext %dev, i16 noundef zeroext %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [5 x i8], align 1
  %msgs = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg) #5
  %0 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %dev, ptr %msg, align 1
  %conv = zext i16 %reg to i32
  %5 = lshr i16 %reg, 8
  %conv1 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %0, align 1
  %conv4 = trunc i16 %reg to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %1, align 1
  %conv6 = zext i16 %val to i32
  %8 = lshr i16 %val, 8
  %conv8 = trunc i16 %8 to i8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv8, ptr %2, align 1
  %conv12 = trunc i16 %val to i8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv12, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #5
  %11 = getelementptr inbounds i8, ptr %msgs, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 5, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %buf, align 4
  %adac_type = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 12
  %16 = ptrtoint ptr %adac_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adac_type, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %entry.sw.epilog_crit_edge
  %storemerge = phi i16 [ 66, %sw.bb14 ], [ 64, %entry.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %storemerge, ptr %msgs, align 4
  %i2c_adap = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %20 = load i32, ptr @av7110_debug, align 4
  %and17 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %21 = ptrtoint ptr %dvb_adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dvb_adapter, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %22, i32 noundef %conv, i32 noundef %conv6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_init_analog_module(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  %msg.i869 = alloca [5 x i8], align 1
  %msgs.i870 = alloca %struct.i2c_msg, align 4
  %msg.i849 = alloca [5 x i8], align 1
  %msgs.i850 = alloca %struct.i2c_msg, align 4
  %msg.i829 = alloca [5 x i8], align 1
  %msgs.i830 = alloca %struct.i2c_msg, align 4
  %msg.i809 = alloca [5 x i8], align 1
  %msgs.i810 = alloca %struct.i2c_msg, align 4
  %msg.i789 = alloca [5 x i8], align 1
  %msgs.i790 = alloca %struct.i2c_msg, align 4
  %msg.i769 = alloca [5 x i8], align 1
  %msgs.i770 = alloca %struct.i2c_msg, align 4
  %msg.i749 = alloca [5 x i8], align 1
  %msgs.i750 = alloca %struct.i2c_msg, align 4
  %msg.i729 = alloca [5 x i8], align 1
  %msgs.i730 = alloca %struct.i2c_msg, align 4
  %msg.i709 = alloca [5 x i8], align 1
  %msgs.i710 = alloca %struct.i2c_msg, align 4
  %msg.i689 = alloca [5 x i8], align 1
  %msgs.i690 = alloca %struct.i2c_msg, align 4
  %msg.i669 = alloca [5 x i8], align 1
  %msgs.i670 = alloca %struct.i2c_msg, align 4
  %msg.i649 = alloca [5 x i8], align 1
  %msgs.i650 = alloca %struct.i2c_msg, align 4
  %msg.i629 = alloca [5 x i8], align 1
  %msgs.i630 = alloca %struct.i2c_msg, align 4
  %msg.i609 = alloca [5 x i8], align 1
  %msgs.i610 = alloca %struct.i2c_msg, align 4
  %msg.i589 = alloca [5 x i8], align 1
  %msgs.i590 = alloca %struct.i2c_msg, align 4
  %msg.i569 = alloca [5 x i8], align 1
  %msgs.i570 = alloca %struct.i2c_msg, align 4
  %msg.i549 = alloca [5 x i8], align 1
  %msgs.i550 = alloca %struct.i2c_msg, align 4
  %msg.i529 = alloca [5 x i8], align 1
  %msgs.i530 = alloca %struct.i2c_msg, align 4
  %msg.i509 = alloca [5 x i8], align 1
  %msgs.i510 = alloca %struct.i2c_msg, align 4
  %msg.i489 = alloca [5 x i8], align 1
  %msgs.i490 = alloca %struct.i2c_msg, align 4
  %msg.i469 = alloca [5 x i8], align 1
  %msgs.i470 = alloca %struct.i2c_msg, align 4
  %msg.i449 = alloca [5 x i8], align 1
  %msgs.i450 = alloca %struct.i2c_msg, align 4
  %buf.i440 = alloca [3 x i8], align 1
  %msg.i441 = alloca %struct.i2c_msg, align 4
  %msg.i420 = alloca [5 x i8], align 1
  %msgs.i421 = alloca %struct.i2c_msg, align 4
  %msg.i400 = alloca [5 x i8], align 1
  %msgs.i401 = alloca %struct.i2c_msg, align 4
  %msg.i380 = alloca [5 x i8], align 1
  %msgs.i381 = alloca %struct.i2c_msg, align 4
  %msg.i360 = alloca [5 x i8], align 1
  %msgs.i361 = alloca %struct.i2c_msg, align 4
  %msg.i340 = alloca [5 x i8], align 1
  %msgs.i341 = alloca %struct.i2c_msg, align 4
  %msg.i320 = alloca [5 x i8], align 1
  %msgs.i321 = alloca %struct.i2c_msg, align 4
  %msg.i300 = alloca [5 x i8], align 1
  %msgs.i301 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [5 x i8], align 1
  %msgs.i286 = alloca %struct.i2c_msg, align 4
  %msg1.i257 = alloca [3 x i8], align 1
  %msg2.i258 = alloca [2 x i8], align 1
  %msgs.i259 = alloca [2 x %struct.i2c_msg], align 4
  %msg1.i = alloca [3 x i8], align 1
  %msg2.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext -128, i8 noundef zeroext 0, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext -128, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call4 = tail call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext -124, i8 noundef zeroext 0, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %land.lhs.true6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true6:                                   ; preds = %if.else
  %call7 = tail call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext -124, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %land.lhs.true6.if.end19_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true6.if.end19_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true6.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge
  %.str.6.sink = phi ptr [ @.str.3, %land.lhs.true.if.end19_crit_edge ], [ @.str.6, %land.lhs.true6.if.end19_crit_edge ]
  %.sink = phi i32 [ 2, %land.lhs.true.if.end19_crit_edge ], [ 3, %land.lhs.true6.if.end19_crit_edge ]
  %dvb_adapter14 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %0 = ptrtoint ptr %dvb_adapter14 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dvb_adapter14, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.6.sink, i32 noundef %1) #8
  %adac_type17 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 12
  %2 = ptrtoint ptr %adac_type17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %adac_type17, align 8
  tail call void @msleep(i32 noundef 100) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg1.i) #5
  %3 = getelementptr inbounds [3 x i8], ptr %msg1.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %msg1.i, i32 0, i32 2
  %5 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 19, ptr %msg1.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 30, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg2.i) #5
  %8 = ptrtoint ptr %msg2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %msg2.i, align 1, !annotation !258
  %9 = getelementptr inbounds [2 x i8], ptr %msg2.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !258
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #5
  %11 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg1.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len9.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg2.i, ptr %buf10.i, align 4
  %adac_type.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 12
  %19 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %adac_type.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %20, label %if.end19.msp_readreg.exit_crit_edge [
    i32 2, label %if.end19.sw.epilog.i_crit_edge
    i32 3, label %sw.bb15.i
  ]

if.end19.sw.epilog.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end19.msp_readreg.exit_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit

sw.bb15.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb15.i, %if.end19.sw.epilog.i_crit_edge
  %storemerge.i = phi i16 [ 66, %sw.bb15.i ], [ 64, %if.end19.sw.epilog.i_crit_edge ]
  %22 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %storemerge.i, ptr %msgs.i, align 4
  %23 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %storemerge.i, ptr %arrayinit.element6.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end29.i, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %24 = load i32, ptr @av7110_debug, align 4
  %and22.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i, label %do.body.i.msp_readreg.exit_crit_edge, label %do.end.i

do.body.i.msp_readreg.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %25 = ptrtoint ptr %dvb_adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dvb_adapter.i, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %26, i32 noundef 30) #8
  br label %msp_readreg.exit

if.end29.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %msg2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %msg2.i, align 1
  %conv31.i = zext i8 %28 to i32
  %shl.i = shl nuw nsw i32 %conv31.i, 8
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %9, align 1
  %conv33.i = zext i8 %30 to i32
  %or.i = or i32 %shl.i, %conv33.i
  br label %msp_readreg.exit

msp_readreg.exit:                                 ; preds = %if.end29.i, %do.end.i, %do.body.i.msp_readreg.exit_crit_edge, %if.end19.msp_readreg.exit_crit_edge
  %version1.0 = phi i32 [ 65535, %if.end19.msp_readreg.exit_crit_edge ], [ %or.i, %if.end29.i ], [ 65535, %do.body.i.msp_readreg.exit_crit_edge ], [ 65535, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg2.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg1.i) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg1.i257) #5
  %31 = getelementptr inbounds [3 x i8], ptr %msg1.i257, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i8], ptr %msg1.i257, i32 0, i32 2
  %33 = ptrtoint ptr %msg1.i257 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 19, ptr %msg1.i257, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %31, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 31, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg2.i258) #5
  %36 = ptrtoint ptr %msg2.i258 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %msg2.i258, align 1, !annotation !258
  %37 = getelementptr inbounds [2 x i8], ptr %msg2.i258, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %37, align 1, !annotation !258
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i259) #5
  %39 = getelementptr inbounds i8, ptr %msgs.i259, i32 4
  %40 = call ptr @memset(ptr %39, i32 255, i32 16)
  %flags.i260 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i259, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i260 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i260, align 2
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 3, ptr %39, align 4
  %buf.i262 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i259, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i262 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg1.i257, ptr %buf.i262, align 4
  %arrayinit.element6.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i259, i32 1
  %flags8.i264 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i259, i32 1, i32 1
  %44 = ptrtoint ptr %flags8.i264 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %flags8.i264, align 2
  %len9.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i259, i32 1, i32 2
  %45 = ptrtoint ptr %len9.i265 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2, ptr %len9.i265, align 4
  %buf10.i266 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i259, i32 1, i32 3
  %46 = ptrtoint ptr %buf10.i266 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg2.i258, ptr %buf10.i266, align 4
  %47 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %adac_type.i, align 8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %48, label %msp_readreg.exit.msp_readreg.exit285_crit_edge [
    i32 2, label %msp_readreg.exit.sw.epilog.i273_crit_edge
    i32 3, label %sw.bb15.i268
  ]

msp_readreg.exit.sw.epilog.i273_crit_edge:        ; preds = %msp_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i273

msp_readreg.exit.msp_readreg.exit285_crit_edge:   ; preds = %msp_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit285

sw.bb15.i268:                                     ; preds = %msp_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i273

sw.epilog.i273:                                   ; preds = %sw.bb15.i268, %msp_readreg.exit.sw.epilog.i273_crit_edge
  %storemerge.i269 = phi i16 [ 66, %sw.bb15.i268 ], [ 64, %msp_readreg.exit.sw.epilog.i273_crit_edge ]
  %50 = ptrtoint ptr %msgs.i259 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %storemerge.i269, ptr %msgs.i259, align 4
  %51 = ptrtoint ptr %arrayinit.element6.i263 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %storemerge.i269, ptr %arrayinit.element6.i263, align 4
  %i2c_adap.i270 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i271 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i270, ptr noundef nonnull %msgs.i259, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i271)
  %cmp.not.i272 = icmp eq i32 %call.i271, 2
  br i1 %cmp.not.i272, label %if.end29.i284, label %do.body.i276

do.body.i276:                                     ; preds = %sw.epilog.i273
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %52 = load i32, ptr @av7110_debug, align 4
  %and22.i274 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i274)
  %tobool.not.i275 = icmp eq i32 %and22.i274, 0
  br i1 %tobool.not.i275, label %do.body.i276.msp_readreg.exit285_crit_edge, label %do.end.i279

do.body.i276.msp_readreg.exit285_crit_edge:       ; preds = %do.body.i276
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit285

do.end.i279:                                      ; preds = %do.body.i276
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i277 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %53 = ptrtoint ptr %dvb_adapter.i277 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dvb_adapter.i277, align 4
  %call26.i278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %54, i32 noundef 31) #8
  br label %msp_readreg.exit285

if.end29.i284:                                    ; preds = %sw.epilog.i273
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %msg2.i258 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %msg2.i258, align 1
  %conv31.i280 = zext i8 %56 to i32
  %shl.i281 = shl nuw nsw i32 %conv31.i280, 8
  %57 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %37, align 1
  %conv33.i282 = zext i8 %58 to i32
  %or.i283 = or i32 %shl.i281, %conv33.i282
  br label %msp_readreg.exit285

msp_readreg.exit285:                              ; preds = %if.end29.i284, %do.end.i279, %do.body.i276.msp_readreg.exit285_crit_edge, %msp_readreg.exit.msp_readreg.exit285_crit_edge
  %version2.0 = phi i32 [ 65535, %msp_readreg.exit.msp_readreg.exit285_crit_edge ], [ %or.i283, %if.end29.i284 ], [ 65535, %do.body.i276.msp_readreg.exit285_crit_edge ], [ 65535, %do.end.i279 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i259) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg2.i258) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg1.i257) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %59 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %msp_readreg.exit285.do.end34_crit_edge, label %do.end26

msp_readreg.exit285.do.end34_crit_edge:           ; preds = %msp_readreg.exit285
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

do.end26:                                         ; preds = %msp_readreg.exit285
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter28 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %60 = ptrtoint ptr %dvb_adapter28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dvb_adapter28, align 4
  %conv = and i32 %version1.0, 65535
  %conv30 = and i32 %version2.0, 65535
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef %61, i32 noundef %conv, i32 noundef %conv30) #8
  br label %do.end34

do.end34:                                         ; preds = %do.end26, %msp_readreg.exit285.do.end34_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i) #5
  %62 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 1
  %63 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 2
  %64 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 3
  %65 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 4
  %66 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 18, ptr %msg.i, align 1
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %62, align 1
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 19, ptr %63, align 1
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 12, ptr %64, align 1
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i286) #5
  %71 = getelementptr inbounds i8, ptr %msgs.i286, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 393215, ptr %71, align 4
  %flags.i287 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i286, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i287 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i287, align 2
  %buf.i289 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i286, i32 0, i32 3
  %74 = ptrtoint ptr %buf.i289 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i, ptr %buf.i289, align 4
  %75 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %adac_type.i, align 8
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %76, label %do.end34.msp_writereg.exit_crit_edge [
    i32 2, label %do.end34.sw.epilog.i295_crit_edge
    i32 3, label %sw.bb14.i
  ]

do.end34.sw.epilog.i295_crit_edge:                ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i295

do.end34.msp_writereg.exit_crit_edge:             ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

sw.bb14.i:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i295

sw.epilog.i295:                                   ; preds = %sw.bb14.i, %do.end34.sw.epilog.i295_crit_edge
  %storemerge.i291 = phi i16 [ 66, %sw.bb14.i ], [ 64, %do.end34.sw.epilog.i295_crit_edge ]
  %78 = ptrtoint ptr %msgs.i286 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %storemerge.i291, ptr %msgs.i286, align 4
  %i2c_adap.i292 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i293 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i292, ptr noundef nonnull %msgs.i286, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i293)
  %cmp.not.i294 = icmp eq i32 %call.i293, 1
  br i1 %cmp.not.i294, label %sw.epilog.i295.msp_writereg.exit_crit_edge, label %do.body.i297

sw.epilog.i295.msp_writereg.exit_crit_edge:       ; preds = %sw.epilog.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

do.body.i297:                                     ; preds = %sw.epilog.i295
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %79 = load i32, ptr @av7110_debug, align 4
  %and17.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i296 = icmp eq i32 %and17.i, 0
  br i1 %tobool.not.i296, label %do.body.i297.msp_writereg.exit_crit_edge, label %do.end.i299

do.body.i297.msp_writereg.exit_crit_edge:         ; preds = %do.body.i297
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

do.end.i299:                                      ; preds = %do.body.i297
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i298 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %80 = ptrtoint ptr %dvb_adapter.i298 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dvb_adapter.i298, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %81, i32 noundef 19, i32 noundef 3072) #8
  br label %msp_writereg.exit

msp_writereg.exit:                                ; preds = %do.end.i299, %do.body.i297.msp_writereg.exit_crit_edge, %sw.epilog.i295.msp_writereg.exit_crit_edge, %do.end34.msp_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i286) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i300) #5
  %82 = getelementptr inbounds [5 x i8], ptr %msg.i300, i32 0, i32 1
  %83 = getelementptr inbounds [5 x i8], ptr %msg.i300, i32 0, i32 2
  %84 = getelementptr inbounds [5 x i8], ptr %msg.i300, i32 0, i32 3
  %85 = getelementptr inbounds [5 x i8], ptr %msg.i300, i32 0, i32 4
  %86 = ptrtoint ptr %msg.i300 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 18, ptr %msg.i300, align 1
  %87 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %82, align 1
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %83, align 1
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 127, ptr %84, align 1
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i301) #5
  %91 = getelementptr inbounds i8, ptr %msgs.i301, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 393215, ptr %91, align 4
  %flags.i302 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i301, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i302 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i302, align 2
  %buf.i304 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i301, i32 0, i32 3
  %94 = ptrtoint ptr %buf.i304 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i300, ptr %buf.i304, align 4
  %95 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %adac_type.i, align 8
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %96, label %msp_writereg.exit.msp_writereg.exit319_crit_edge [
    i32 2, label %msp_writereg.exit.sw.epilog.i311_crit_edge
    i32 3, label %sw.bb14.i306
  ]

msp_writereg.exit.sw.epilog.i311_crit_edge:       ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i311

msp_writereg.exit.msp_writereg.exit319_crit_edge: ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit319

sw.bb14.i306:                                     ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i311

sw.epilog.i311:                                   ; preds = %sw.bb14.i306, %msp_writereg.exit.sw.epilog.i311_crit_edge
  %storemerge.i307 = phi i16 [ 66, %sw.bb14.i306 ], [ 64, %msp_writereg.exit.sw.epilog.i311_crit_edge ]
  %98 = ptrtoint ptr %msgs.i301 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %storemerge.i307, ptr %msgs.i301, align 4
  %i2c_adap.i308 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i309 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i308, ptr noundef nonnull %msgs.i301, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i309)
  %cmp.not.i310 = icmp eq i32 %call.i309, 1
  br i1 %cmp.not.i310, label %sw.epilog.i311.msp_writereg.exit319_crit_edge, label %do.body.i314

sw.epilog.i311.msp_writereg.exit319_crit_edge:    ; preds = %sw.epilog.i311
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit319

do.body.i314:                                     ; preds = %sw.epilog.i311
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %99 = load i32, ptr @av7110_debug, align 4
  %and17.i312 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i312)
  %tobool.not.i313 = icmp eq i32 %and17.i312, 0
  br i1 %tobool.not.i313, label %do.body.i314.msp_writereg.exit319_crit_edge, label %do.end.i317

do.body.i314.msp_writereg.exit319_crit_edge:      ; preds = %do.body.i314
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit319

do.end.i317:                                      ; preds = %do.body.i314
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i315 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %100 = ptrtoint ptr %dvb_adapter.i315 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dvb_adapter.i315, align 4
  %call22.i316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %101, i32 noundef 0, i32 noundef 32512) #8
  br label %msp_writereg.exit319

msp_writereg.exit319:                             ; preds = %do.end.i317, %do.body.i314.msp_writereg.exit319_crit_edge, %sw.epilog.i311.msp_writereg.exit319_crit_edge, %msp_writereg.exit.msp_writereg.exit319_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i301) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i300) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i320) #5
  %102 = getelementptr inbounds [5 x i8], ptr %msg.i320, i32 0, i32 1
  %103 = getelementptr inbounds [5 x i8], ptr %msg.i320, i32 0, i32 2
  %104 = getelementptr inbounds [5 x i8], ptr %msg.i320, i32 0, i32 3
  %105 = getelementptr inbounds [5 x i8], ptr %msg.i320, i32 0, i32 4
  %106 = ptrtoint ptr %msg.i320 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 18, ptr %msg.i320, align 1
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %102, align 1
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 8, ptr %103, align 1
  %109 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 2, ptr %104, align 1
  %110 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 32, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i321) #5
  %111 = getelementptr inbounds i8, ptr %msgs.i321, i32 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 393215, ptr %111, align 4
  %flags.i322 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i321, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i322 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i322, align 2
  %buf.i324 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i321, i32 0, i32 3
  %114 = ptrtoint ptr %buf.i324 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %msg.i320, ptr %buf.i324, align 4
  %115 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %adac_type.i, align 8
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %116, label %msp_writereg.exit319.msp_writereg.exit339_crit_edge [
    i32 2, label %msp_writereg.exit319.sw.epilog.i331_crit_edge
    i32 3, label %sw.bb14.i326
  ]

msp_writereg.exit319.sw.epilog.i331_crit_edge:    ; preds = %msp_writereg.exit319
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i331

msp_writereg.exit319.msp_writereg.exit339_crit_edge: ; preds = %msp_writereg.exit319
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit339

sw.bb14.i326:                                     ; preds = %msp_writereg.exit319
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i331

sw.epilog.i331:                                   ; preds = %sw.bb14.i326, %msp_writereg.exit319.sw.epilog.i331_crit_edge
  %storemerge.i327 = phi i16 [ 66, %sw.bb14.i326 ], [ 64, %msp_writereg.exit319.sw.epilog.i331_crit_edge ]
  %118 = ptrtoint ptr %msgs.i321 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %storemerge.i327, ptr %msgs.i321, align 4
  %i2c_adap.i328 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i329 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i328, ptr noundef nonnull %msgs.i321, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i329)
  %cmp.not.i330 = icmp eq i32 %call.i329, 1
  br i1 %cmp.not.i330, label %sw.epilog.i331.msp_writereg.exit339_crit_edge, label %do.body.i334

sw.epilog.i331.msp_writereg.exit339_crit_edge:    ; preds = %sw.epilog.i331
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit339

do.body.i334:                                     ; preds = %sw.epilog.i331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %119 = load i32, ptr @av7110_debug, align 4
  %and17.i332 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i332)
  %tobool.not.i333 = icmp eq i32 %and17.i332, 0
  br i1 %tobool.not.i333, label %do.body.i334.msp_writereg.exit339_crit_edge, label %do.end.i337

do.body.i334.msp_writereg.exit339_crit_edge:      ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit339

do.end.i337:                                      ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i335 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %120 = ptrtoint ptr %dvb_adapter.i335 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dvb_adapter.i335, align 4
  %call22.i336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %121, i32 noundef 8, i32 noundef 544) #8
  br label %msp_writereg.exit339

msp_writereg.exit339:                             ; preds = %do.end.i337, %do.body.i334.msp_writereg.exit339_crit_edge, %sw.epilog.i331.msp_writereg.exit339_crit_edge, %msp_writereg.exit319.msp_writereg.exit339_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i321) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i320) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i340) #5
  %122 = getelementptr inbounds [5 x i8], ptr %msg.i340, i32 0, i32 1
  %123 = getelementptr inbounds [5 x i8], ptr %msg.i340, i32 0, i32 2
  %124 = getelementptr inbounds [5 x i8], ptr %msg.i340, i32 0, i32 3
  %125 = getelementptr inbounds [5 x i8], ptr %msg.i340, i32 0, i32 4
  %126 = ptrtoint ptr %msg.i340 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 18, ptr %msg.i340, align 1
  %127 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %122, align 1
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 9, ptr %123, align 1
  %129 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 2, ptr %124, align 1
  %130 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 32, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i341) #5
  %131 = getelementptr inbounds i8, ptr %msgs.i341, i32 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 393215, ptr %131, align 4
  %flags.i342 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i341, i32 0, i32 1
  %133 = ptrtoint ptr %flags.i342 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i342, align 2
  %buf.i344 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i341, i32 0, i32 3
  %134 = ptrtoint ptr %buf.i344 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %msg.i340, ptr %buf.i344, align 4
  %135 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %adac_type.i, align 8
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %136, label %msp_writereg.exit339.msp_writereg.exit359_crit_edge [
    i32 2, label %msp_writereg.exit339.sw.epilog.i351_crit_edge
    i32 3, label %sw.bb14.i346
  ]

msp_writereg.exit339.sw.epilog.i351_crit_edge:    ; preds = %msp_writereg.exit339
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i351

msp_writereg.exit339.msp_writereg.exit359_crit_edge: ; preds = %msp_writereg.exit339
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit359

sw.bb14.i346:                                     ; preds = %msp_writereg.exit339
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i351

sw.epilog.i351:                                   ; preds = %sw.bb14.i346, %msp_writereg.exit339.sw.epilog.i351_crit_edge
  %storemerge.i347 = phi i16 [ 66, %sw.bb14.i346 ], [ 64, %msp_writereg.exit339.sw.epilog.i351_crit_edge ]
  %138 = ptrtoint ptr %msgs.i341 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %storemerge.i347, ptr %msgs.i341, align 4
  %i2c_adap.i348 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i349 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i348, ptr noundef nonnull %msgs.i341, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i349)
  %cmp.not.i350 = icmp eq i32 %call.i349, 1
  br i1 %cmp.not.i350, label %sw.epilog.i351.msp_writereg.exit359_crit_edge, label %do.body.i354

sw.epilog.i351.msp_writereg.exit359_crit_edge:    ; preds = %sw.epilog.i351
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit359

do.body.i354:                                     ; preds = %sw.epilog.i351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %139 = load i32, ptr @av7110_debug, align 4
  %and17.i352 = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i352)
  %tobool.not.i353 = icmp eq i32 %and17.i352, 0
  br i1 %tobool.not.i353, label %do.body.i354.msp_writereg.exit359_crit_edge, label %do.end.i357

do.body.i354.msp_writereg.exit359_crit_edge:      ; preds = %do.body.i354
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit359

do.end.i357:                                      ; preds = %do.body.i354
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i355 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %140 = ptrtoint ptr %dvb_adapter.i355 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dvb_adapter.i355, align 4
  %call22.i356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %141, i32 noundef 9, i32 noundef 544) #8
  br label %msp_writereg.exit359

msp_writereg.exit359:                             ; preds = %do.end.i357, %do.body.i354.msp_writereg.exit359_crit_edge, %sw.epilog.i351.msp_writereg.exit359_crit_edge, %msp_writereg.exit339.msp_writereg.exit359_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i341) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i340) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i360) #5
  %142 = getelementptr inbounds [5 x i8], ptr %msg.i360, i32 0, i32 1
  %143 = getelementptr inbounds [5 x i8], ptr %msg.i360, i32 0, i32 2
  %144 = getelementptr inbounds [5 x i8], ptr %msg.i360, i32 0, i32 3
  %145 = getelementptr inbounds [5 x i8], ptr %msg.i360, i32 0, i32 4
  %146 = ptrtoint ptr %msg.i360 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 18, ptr %msg.i360, align 1
  %147 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %142, align 1
  %148 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 4, ptr %143, align 1
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 127, ptr %144, align 1
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i361) #5
  %151 = getelementptr inbounds i8, ptr %msgs.i361, i32 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 393215, ptr %151, align 4
  %flags.i362 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i361, i32 0, i32 1
  %153 = ptrtoint ptr %flags.i362 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i362, align 2
  %buf.i364 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i361, i32 0, i32 3
  %154 = ptrtoint ptr %buf.i364 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %msg.i360, ptr %buf.i364, align 4
  %155 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %adac_type.i, align 8
  %157 = zext i32 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %156, label %msp_writereg.exit359.msp_writereg.exit379_crit_edge [
    i32 2, label %msp_writereg.exit359.sw.epilog.i371_crit_edge
    i32 3, label %sw.bb14.i366
  ]

msp_writereg.exit359.sw.epilog.i371_crit_edge:    ; preds = %msp_writereg.exit359
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i371

msp_writereg.exit359.msp_writereg.exit379_crit_edge: ; preds = %msp_writereg.exit359
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit379

sw.bb14.i366:                                     ; preds = %msp_writereg.exit359
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i371

sw.epilog.i371:                                   ; preds = %sw.bb14.i366, %msp_writereg.exit359.sw.epilog.i371_crit_edge
  %storemerge.i367 = phi i16 [ 66, %sw.bb14.i366 ], [ 64, %msp_writereg.exit359.sw.epilog.i371_crit_edge ]
  %158 = ptrtoint ptr %msgs.i361 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %storemerge.i367, ptr %msgs.i361, align 4
  %i2c_adap.i368 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i369 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i368, ptr noundef nonnull %msgs.i361, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i369)
  %cmp.not.i370 = icmp eq i32 %call.i369, 1
  br i1 %cmp.not.i370, label %sw.epilog.i371.msp_writereg.exit379_crit_edge, label %do.body.i374

sw.epilog.i371.msp_writereg.exit379_crit_edge:    ; preds = %sw.epilog.i371
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit379

do.body.i374:                                     ; preds = %sw.epilog.i371
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %159 = load i32, ptr @av7110_debug, align 4
  %and17.i372 = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i372)
  %tobool.not.i373 = icmp eq i32 %and17.i372, 0
  br i1 %tobool.not.i373, label %do.body.i374.msp_writereg.exit379_crit_edge, label %do.end.i377

do.body.i374.msp_writereg.exit379_crit_edge:      ; preds = %do.body.i374
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit379

do.end.i377:                                      ; preds = %do.body.i374
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i375 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %160 = ptrtoint ptr %dvb_adapter.i375 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dvb_adapter.i375, align 4
  %call22.i376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %161, i32 noundef 4, i32 noundef 32512) #8
  br label %msp_writereg.exit379

msp_writereg.exit379:                             ; preds = %do.end.i377, %do.body.i374.msp_writereg.exit379_crit_edge, %sw.epilog.i371.msp_writereg.exit379_crit_edge, %msp_writereg.exit359.msp_writereg.exit379_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i361) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i360) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i380) #5
  %162 = getelementptr inbounds [5 x i8], ptr %msg.i380, i32 0, i32 1
  %163 = getelementptr inbounds [5 x i8], ptr %msg.i380, i32 0, i32 2
  %164 = getelementptr inbounds [5 x i8], ptr %msg.i380, i32 0, i32 3
  %165 = getelementptr inbounds [5 x i8], ptr %msg.i380, i32 0, i32 4
  %166 = ptrtoint ptr %msg.i380 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 18, ptr %msg.i380, align 1
  %167 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %162, align 1
  %168 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 10, ptr %163, align 1
  %169 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 2, ptr %164, align 1
  %170 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 32, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i381) #5
  %171 = getelementptr inbounds i8, ptr %msgs.i381, i32 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 393215, ptr %171, align 4
  %flags.i382 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i381, i32 0, i32 1
  %173 = ptrtoint ptr %flags.i382 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %flags.i382, align 2
  %buf.i384 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i381, i32 0, i32 3
  %174 = ptrtoint ptr %buf.i384 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %msg.i380, ptr %buf.i384, align 4
  %175 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %adac_type.i, align 8
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %176, label %msp_writereg.exit379.msp_writereg.exit399_crit_edge [
    i32 2, label %msp_writereg.exit379.sw.epilog.i391_crit_edge
    i32 3, label %sw.bb14.i386
  ]

msp_writereg.exit379.sw.epilog.i391_crit_edge:    ; preds = %msp_writereg.exit379
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i391

msp_writereg.exit379.msp_writereg.exit399_crit_edge: ; preds = %msp_writereg.exit379
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit399

sw.bb14.i386:                                     ; preds = %msp_writereg.exit379
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i391

sw.epilog.i391:                                   ; preds = %sw.bb14.i386, %msp_writereg.exit379.sw.epilog.i391_crit_edge
  %storemerge.i387 = phi i16 [ 66, %sw.bb14.i386 ], [ 64, %msp_writereg.exit379.sw.epilog.i391_crit_edge ]
  %178 = ptrtoint ptr %msgs.i381 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %storemerge.i387, ptr %msgs.i381, align 4
  %i2c_adap.i388 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i389 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i388, ptr noundef nonnull %msgs.i381, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i389)
  %cmp.not.i390 = icmp eq i32 %call.i389, 1
  br i1 %cmp.not.i390, label %sw.epilog.i391.msp_writereg.exit399_crit_edge, label %do.body.i394

sw.epilog.i391.msp_writereg.exit399_crit_edge:    ; preds = %sw.epilog.i391
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit399

do.body.i394:                                     ; preds = %sw.epilog.i391
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %179 = load i32, ptr @av7110_debug, align 4
  %and17.i392 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i392)
  %tobool.not.i393 = icmp eq i32 %and17.i392, 0
  br i1 %tobool.not.i393, label %do.body.i394.msp_writereg.exit399_crit_edge, label %do.end.i397

do.body.i394.msp_writereg.exit399_crit_edge:      ; preds = %do.body.i394
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit399

do.end.i397:                                      ; preds = %do.body.i394
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i395 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %180 = ptrtoint ptr %dvb_adapter.i395 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dvb_adapter.i395, align 4
  %call22.i396 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %181, i32 noundef 10, i32 noundef 544) #8
  br label %msp_writereg.exit399

msp_writereg.exit399:                             ; preds = %do.end.i397, %do.body.i394.msp_writereg.exit399_crit_edge, %sw.epilog.i391.msp_writereg.exit399_crit_edge, %msp_writereg.exit379.msp_writereg.exit399_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i381) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i380) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i400) #5
  %182 = getelementptr inbounds [5 x i8], ptr %msg.i400, i32 0, i32 1
  %183 = getelementptr inbounds [5 x i8], ptr %msg.i400, i32 0, i32 2
  %184 = getelementptr inbounds [5 x i8], ptr %msg.i400, i32 0, i32 3
  %185 = getelementptr inbounds [5 x i8], ptr %msg.i400, i32 0, i32 4
  %186 = ptrtoint ptr %msg.i400 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 18, ptr %msg.i400, align 1
  %187 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %182, align 1
  %188 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 7, ptr %183, align 1
  %189 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 127, ptr %184, align 1
  %190 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i401) #5
  %191 = getelementptr inbounds i8, ptr %msgs.i401, i32 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 393215, ptr %191, align 4
  %flags.i402 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i401, i32 0, i32 1
  %193 = ptrtoint ptr %flags.i402 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %flags.i402, align 2
  %buf.i404 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i401, i32 0, i32 3
  %194 = ptrtoint ptr %buf.i404 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %msg.i400, ptr %buf.i404, align 4
  %195 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %adac_type.i, align 8
  %197 = zext i32 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %196, label %msp_writereg.exit399.msp_writereg.exit419_crit_edge [
    i32 2, label %msp_writereg.exit399.sw.epilog.i411_crit_edge
    i32 3, label %sw.bb14.i406
  ]

msp_writereg.exit399.sw.epilog.i411_crit_edge:    ; preds = %msp_writereg.exit399
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i411

msp_writereg.exit399.msp_writereg.exit419_crit_edge: ; preds = %msp_writereg.exit399
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit419

sw.bb14.i406:                                     ; preds = %msp_writereg.exit399
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i411

sw.epilog.i411:                                   ; preds = %sw.bb14.i406, %msp_writereg.exit399.sw.epilog.i411_crit_edge
  %storemerge.i407 = phi i16 [ 66, %sw.bb14.i406 ], [ 64, %msp_writereg.exit399.sw.epilog.i411_crit_edge ]
  %198 = ptrtoint ptr %msgs.i401 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %storemerge.i407, ptr %msgs.i401, align 4
  %i2c_adap.i408 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i409 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i408, ptr noundef nonnull %msgs.i401, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i409)
  %cmp.not.i410 = icmp eq i32 %call.i409, 1
  br i1 %cmp.not.i410, label %sw.epilog.i411.msp_writereg.exit419_crit_edge, label %do.body.i414

sw.epilog.i411.msp_writereg.exit419_crit_edge:    ; preds = %sw.epilog.i411
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit419

do.body.i414:                                     ; preds = %sw.epilog.i411
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %199 = load i32, ptr @av7110_debug, align 4
  %and17.i412 = and i32 %199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i412)
  %tobool.not.i413 = icmp eq i32 %and17.i412, 0
  br i1 %tobool.not.i413, label %do.body.i414.msp_writereg.exit419_crit_edge, label %do.end.i417

do.body.i414.msp_writereg.exit419_crit_edge:      ; preds = %do.body.i414
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit419

do.end.i417:                                      ; preds = %do.body.i414
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i415 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %200 = ptrtoint ptr %dvb_adapter.i415 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dvb_adapter.i415, align 4
  %call22.i416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %201, i32 noundef 7, i32 noundef 32512) #8
  br label %msp_writereg.exit419

msp_writereg.exit419:                             ; preds = %do.end.i417, %do.body.i414.msp_writereg.exit419_crit_edge, %sw.epilog.i411.msp_writereg.exit419_crit_edge, %msp_writereg.exit399.msp_writereg.exit419_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i401) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i400) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i420) #5
  %202 = getelementptr inbounds [5 x i8], ptr %msg.i420, i32 0, i32 1
  %203 = getelementptr inbounds [5 x i8], ptr %msg.i420, i32 0, i32 2
  %204 = getelementptr inbounds [5 x i8], ptr %msg.i420, i32 0, i32 3
  %205 = getelementptr inbounds [5 x i8], ptr %msg.i420, i32 0, i32 4
  %206 = ptrtoint ptr %msg.i420 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 18, ptr %msg.i420, align 1
  %207 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %202, align 1
  %208 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 13, ptr %203, align 1
  %209 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 25, ptr %204, align 1
  %210 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %205, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i421) #5
  %211 = getelementptr inbounds i8, ptr %msgs.i421, i32 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 393215, ptr %211, align 4
  %flags.i422 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i421, i32 0, i32 1
  %213 = ptrtoint ptr %flags.i422 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %flags.i422, align 2
  %buf.i424 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i421, i32 0, i32 3
  %214 = ptrtoint ptr %buf.i424 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %msg.i420, ptr %buf.i424, align 4
  %215 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %adac_type.i, align 8
  %217 = zext i32 %216 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %216, label %msp_writereg.exit419.msp_writereg.exit439_crit_edge [
    i32 2, label %msp_writereg.exit419.sw.epilog.i431_crit_edge
    i32 3, label %sw.bb14.i426
  ]

msp_writereg.exit419.sw.epilog.i431_crit_edge:    ; preds = %msp_writereg.exit419
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i431

msp_writereg.exit419.msp_writereg.exit439_crit_edge: ; preds = %msp_writereg.exit419
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit439

sw.bb14.i426:                                     ; preds = %msp_writereg.exit419
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i431

sw.epilog.i431:                                   ; preds = %sw.bb14.i426, %msp_writereg.exit419.sw.epilog.i431_crit_edge
  %storemerge.i427 = phi i16 [ 66, %sw.bb14.i426 ], [ 64, %msp_writereg.exit419.sw.epilog.i431_crit_edge ]
  %218 = ptrtoint ptr %msgs.i421 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %storemerge.i427, ptr %msgs.i421, align 4
  %i2c_adap.i428 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i429 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i428, ptr noundef nonnull %msgs.i421, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i429)
  %cmp.not.i430 = icmp eq i32 %call.i429, 1
  br i1 %cmp.not.i430, label %sw.epilog.i431.msp_writereg.exit439_crit_edge, label %do.body.i434

sw.epilog.i431.msp_writereg.exit439_crit_edge:    ; preds = %sw.epilog.i431
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit439

do.body.i434:                                     ; preds = %sw.epilog.i431
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %219 = load i32, ptr @av7110_debug, align 4
  %and17.i432 = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i432)
  %tobool.not.i433 = icmp eq i32 %and17.i432, 0
  br i1 %tobool.not.i433, label %do.body.i434.msp_writereg.exit439_crit_edge, label %do.end.i437

do.body.i434.msp_writereg.exit439_crit_edge:      ; preds = %do.body.i434
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit439

do.end.i437:                                      ; preds = %do.body.i434
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i435 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %220 = ptrtoint ptr %dvb_adapter.i435 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %dvb_adapter.i435, align 4
  %call22.i436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %221, i32 noundef 13, i32 noundef 6400) #8
  br label %msp_writereg.exit439

msp_writereg.exit439:                             ; preds = %do.end.i437, %do.body.i434.msp_writereg.exit439_crit_edge, %sw.epilog.i431.msp_writereg.exit439_crit_edge, %msp_writereg.exit419.msp_writereg.exit439_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i421) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i420) #5
  %call43 = call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext 72, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 1
  br i1 %cmp44.not, label %if.else52, label %do.end49

do.end49:                                         ; preds = %msp_writereg.exit439
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %if.end175

if.else52:                                        ; preds = %msp_writereg.exit439
  %dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %222 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %223, i32 0, i32 8
  %224 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 9
  %226 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %subsystem_vendor, align 4
  %228 = zext i16 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %228, ptr @__sancov_gen_cov_switch_values.141)
  switch i16 %227, label %if.else52.if.end99_crit_edge [
    i16 4362, label %land.lhs.true56
    i16 5058, label %land.lhs.true70
  ]

if.else52.if.end99_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

land.lhs.true56:                                  ; preds = %if.else52
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 10
  %229 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %cmp60 = icmp eq i16 %230, 0
  br i1 %cmp60, label %land.lhs.true56.if.end99.sink.split_crit_edge, label %land.lhs.true56.if.end99_crit_edge

land.lhs.true56.if.end99_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

land.lhs.true56.if.end99.sink.split_crit_edge:    ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99.sink.split

land.lhs.true70:                                  ; preds = %if.else52
  %subsystem_device73 = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 10
  %231 = ptrtoint ptr %subsystem_device73 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %subsystem_device73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %232)
  %cmp75 = icmp eq i16 %232, 2
  br i1 %cmp75, label %land.lhs.true70.if.end99.sink.split_crit_edge, label %land.lhs.true87

land.lhs.true70.if.end99.sink.split_crit_edge:    ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99.sink.split

land.lhs.true87:                                  ; preds = %land.lhs.true70
  %233 = ptrtoint ptr %subsystem_device73 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %subsystem_device73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %234)
  %cmp92 = icmp eq i16 %234, 10
  br i1 %cmp92, label %land.lhs.true87.if.end99.sink.split_crit_edge, label %land.lhs.true87.if.end99_crit_edge

land.lhs.true87.if.end99_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

land.lhs.true87.if.end99.sink.split_crit_edge:    ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99.sink.split

if.end99.sink.split:                              ; preds = %land.lhs.true87.if.end99.sink.split_crit_edge, %land.lhs.true70.if.end99.sink.split_crit_edge, %land.lhs.true56.if.end99.sink.split_crit_edge
  %.sink897 = phi i32 [ 1, %land.lhs.true56.if.end99.sink.split_crit_edge ], [ 1, %land.lhs.true70.if.end99.sink.split_crit_edge ], [ 2, %land.lhs.true87.if.end99.sink.split_crit_edge ]
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 7
  %235 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %analog_tuner_flags, align 4
  %or79 = or i32 %236, %.sink897
  store i32 %or79, ptr %analog_tuner_flags, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %land.lhs.true87.if.end99_crit_edge, %land.lhs.true56.if.end99_crit_edge, %if.else52.if.end99_crit_edge
  %analog_tuner_flags100 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 7
  %237 = ptrtoint ptr %analog_tuner_flags100 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %analog_tuner_flags100, align 4
  %and101 = and i32 %238, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else121, label %if.then103

if.then103:                                       ; preds = %if.end99
  %ext_priv.i = getelementptr inbounds %struct.saa7146_dev, ptr %223, i32 0, i32 12
  %239 = ptrtoint ptr %ext_priv.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ext_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i440) #5
  %241 = getelementptr inbounds [3 x i8], ptr %buf.i440, i32 0, i32 1
  %242 = getelementptr inbounds [3 x i8], ptr %buf.i440, i32 0, i32 2
  %243 = ptrtoint ptr %buf.i440 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %buf.i440, align 1
  %244 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 15, ptr %241, align 1
  %245 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 32, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i441) #5
  %246 = getelementptr inbounds i8, ptr %msg.i441, i32 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 262143, ptr %246, align 4
  %248 = ptrtoint ptr %msg.i441 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 9, ptr %msg.i441, align 4
  %flags.i442 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i441, i32 0, i32 1
  %249 = ptrtoint ptr %flags.i442 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 0, ptr %flags.i442, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i441, i32 0, i32 3
  %250 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %buf.i440, ptr %buf3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %251 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %251, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i444 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i444, label %if.then103.ves1820_writereg.exit_crit_edge, label %do.end.i446

if.then103.ves1820_writereg.exit_crit_edge:       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %ves1820_writereg.exit

do.end.i446:                                      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  %call.i445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %223) #8
  br label %ves1820_writereg.exit

ves1820_writereg.exit:                            ; preds = %do.end.i446, %if.then103.ves1820_writereg.exit_crit_edge
  %i2c_adap.i447 = getelementptr inbounds %struct.av7110, ptr %240, i32 0, i32 5
  %call7.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i447, ptr noundef nonnull %msg.i441, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp.not.i448.not = icmp eq i32 %call7.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i441) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i440) #5
  br i1 %cmp.not.i448.not, label %ves1820_writereg.exit.while.body.preheader_crit_edge, label %do.body108

ves1820_writereg.exit.while.body.preheader_crit_edge: ; preds = %ves1820_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

do.body108:                                       ; preds = %ves1820_writereg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %252 = load i32, ptr @av7110_debug, align 4
  %and109 = and i32 %252, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body108.while.body.preheader_crit_edge, label %do.end114

do.body108.while.body.preheader_crit_edge:        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4) #8
  br label %while.body.preheader

if.else121:                                       ; preds = %if.end99
  %and123 = and i32 %238, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.else121.while.body.preheader_crit_edge, label %if.then125

if.else121.while.body.preheader_crit_edge:        ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.preheader

if.then125:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #7
  call void @saa7146_setgpio(ptr noundef %223, i32 noundef 1, i32 noundef 64) #5
  %253 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev, align 8
  call void @saa7146_setgpio(ptr noundef %254, i32 noundef 3, i32 noundef 64) #5
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then125, %if.else121.while.body.preheader_crit_edge, %do.end114, %do.body108.while.body.preheader_crit_edge, %ves1820_writereg.exit.while.body.preheader_crit_edge
  br label %while.body

while.cond:                                       ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %i.0894, i32 2
  %255 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %add.ptr, align 1
  %cmp131.not = icmp eq i8 %256, -1
  br i1 %cmp131.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.preheader
  %257 = phi i8 [ %256, %while.cond.while.body_crit_edge ], [ 2, %while.body.preheader ]
  %i.0894 = phi ptr [ %add.ptr, %while.cond.while.body_crit_edge ], [ @saa7113_init_regs, %while.body.preheader ]
  %arrayidx133 = getelementptr i8, ptr %i.0894, i32 1
  %258 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx133, align 1
  %call134 = call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext 72, i8 noundef zeroext %257, i8 noundef zeroext %259) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call134)
  %cmp135.not = icmp eq i32 %call134, 1
  br i1 %cmp135.not, label %while.cond, label %do.body138

do.body138:                                       ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %260 = load i32, ptr @av7110_debug, align 4
  %and139 = and i32 %260, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.while.end_crit_edge, label %do.end144

do.body138.while.end_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end144:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter146 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %261 = ptrtoint ptr %dvb_adapter146 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %dvb_adapter146, align 4
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, i32 noundef %262) #8
  br label %while.end

while.end:                                        ; preds = %do.end144, %do.body138.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i449) #5
  %263 = getelementptr inbounds [5 x i8], ptr %msg.i449, i32 0, i32 1
  %264 = getelementptr inbounds [5 x i8], ptr %msg.i449, i32 0, i32 2
  %265 = getelementptr inbounds [5 x i8], ptr %msg.i449, i32 0, i32 3
  %266 = getelementptr inbounds [5 x i8], ptr %msg.i449, i32 0, i32 4
  %267 = ptrtoint ptr %msg.i449 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 16, ptr %msg.i449, align 1
  %268 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 0, ptr %263, align 1
  %269 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -69, ptr %264, align 1
  %270 = ptrtoint ptr %265 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 2, ptr %265, align 1
  %271 = ptrtoint ptr %266 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -48, ptr %266, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i450) #5
  %272 = getelementptr inbounds i8, ptr %msgs.i450, i32 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 393215, ptr %272, align 4
  %flags.i451 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i450, i32 0, i32 1
  %274 = ptrtoint ptr %flags.i451 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 0, ptr %flags.i451, align 2
  %buf.i453 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i450, i32 0, i32 3
  %275 = ptrtoint ptr %buf.i453 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %msg.i449, ptr %buf.i453, align 4
  %276 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %adac_type.i, align 8
  %278 = zext i32 %277 to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %277, label %while.end.msp_writereg.exit468_crit_edge [
    i32 2, label %while.end.sw.epilog.i460_crit_edge
    i32 3, label %sw.bb14.i455
  ]

while.end.sw.epilog.i460_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i460

while.end.msp_writereg.exit468_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit468

sw.bb14.i455:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i460

sw.epilog.i460:                                   ; preds = %sw.bb14.i455, %while.end.sw.epilog.i460_crit_edge
  %storemerge.i456 = phi i16 [ 66, %sw.bb14.i455 ], [ 64, %while.end.sw.epilog.i460_crit_edge ]
  %279 = ptrtoint ptr %msgs.i450 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %storemerge.i456, ptr %msgs.i450, align 4
  %i2c_adap.i457 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i458 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i457, ptr noundef nonnull %msgs.i450, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i458)
  %cmp.not.i459 = icmp eq i32 %call.i458, 1
  br i1 %cmp.not.i459, label %sw.epilog.i460.msp_writereg.exit468_crit_edge, label %do.body.i463

sw.epilog.i460.msp_writereg.exit468_crit_edge:    ; preds = %sw.epilog.i460
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit468

do.body.i463:                                     ; preds = %sw.epilog.i460
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %280 = load i32, ptr @av7110_debug, align 4
  %and17.i461 = and i32 %280, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i461)
  %tobool.not.i462 = icmp eq i32 %and17.i461, 0
  br i1 %tobool.not.i462, label %do.body.i463.msp_writereg.exit468_crit_edge, label %do.end.i466

do.body.i463.msp_writereg.exit468_crit_edge:      ; preds = %do.body.i463
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit468

do.end.i466:                                      ; preds = %do.body.i463
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i464 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %281 = ptrtoint ptr %dvb_adapter.i464 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %dvb_adapter.i464, align 4
  %call22.i465 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %282, i32 noundef 187, i32 noundef 720) #8
  br label %msp_writereg.exit468

msp_writereg.exit468:                             ; preds = %do.end.i466, %do.body.i463.msp_writereg.exit468_crit_edge, %sw.epilog.i460.msp_writereg.exit468_crit_edge, %while.end.msp_writereg.exit468_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i450) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i449) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i469) #5
  %283 = getelementptr inbounds [5 x i8], ptr %msg.i469, i32 0, i32 1
  %284 = getelementptr inbounds [5 x i8], ptr %msg.i469, i32 0, i32 2
  %285 = getelementptr inbounds [5 x i8], ptr %msg.i469, i32 0, i32 3
  %286 = getelementptr inbounds [5 x i8], ptr %msg.i469, i32 0, i32 4
  %287 = ptrtoint ptr %msg.i469 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 16, ptr %msg.i469, align 1
  %288 = ptrtoint ptr %283 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 0, ptr %283, align 1
  %289 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 1, ptr %284, align 1
  %290 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %285, align 1
  %291 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 3, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i470) #5
  %292 = getelementptr inbounds i8, ptr %msgs.i470, i32 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 393215, ptr %292, align 4
  %flags.i471 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i470, i32 0, i32 1
  %294 = ptrtoint ptr %flags.i471 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 0, ptr %flags.i471, align 2
  %buf.i473 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i470, i32 0, i32 3
  %295 = ptrtoint ptr %buf.i473 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %msg.i469, ptr %buf.i473, align 4
  %296 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %adac_type.i, align 8
  %298 = zext i32 %297 to i64
  call void @__sanitizer_cov_trace_switch(i64 %298, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %297, label %msp_writereg.exit468.msp_writereg.exit488_crit_edge [
    i32 2, label %msp_writereg.exit468.sw.epilog.i480_crit_edge
    i32 3, label %sw.bb14.i475
  ]

msp_writereg.exit468.sw.epilog.i480_crit_edge:    ; preds = %msp_writereg.exit468
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i480

msp_writereg.exit468.msp_writereg.exit488_crit_edge: ; preds = %msp_writereg.exit468
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit488

sw.bb14.i475:                                     ; preds = %msp_writereg.exit468
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i480

sw.epilog.i480:                                   ; preds = %sw.bb14.i475, %msp_writereg.exit468.sw.epilog.i480_crit_edge
  %storemerge.i476 = phi i16 [ 66, %sw.bb14.i475 ], [ 64, %msp_writereg.exit468.sw.epilog.i480_crit_edge ]
  %299 = ptrtoint ptr %msgs.i470 to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %storemerge.i476, ptr %msgs.i470, align 4
  %i2c_adap.i477 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i478 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i477, ptr noundef nonnull %msgs.i470, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i478)
  %cmp.not.i479 = icmp eq i32 %call.i478, 1
  br i1 %cmp.not.i479, label %sw.epilog.i480.msp_writereg.exit488_crit_edge, label %do.body.i483

sw.epilog.i480.msp_writereg.exit488_crit_edge:    ; preds = %sw.epilog.i480
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit488

do.body.i483:                                     ; preds = %sw.epilog.i480
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %300 = load i32, ptr @av7110_debug, align 4
  %and17.i481 = and i32 %300, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i481)
  %tobool.not.i482 = icmp eq i32 %and17.i481, 0
  br i1 %tobool.not.i482, label %do.body.i483.msp_writereg.exit488_crit_edge, label %do.end.i486

do.body.i483.msp_writereg.exit488_crit_edge:      ; preds = %do.body.i483
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit488

do.end.i486:                                      ; preds = %do.body.i483
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i484 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %301 = ptrtoint ptr %dvb_adapter.i484 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %dvb_adapter.i484, align 4
  %call22.i485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %302, i32 noundef 1, i32 noundef 3) #8
  br label %msp_writereg.exit488

msp_writereg.exit488:                             ; preds = %do.end.i486, %do.body.i483.msp_writereg.exit488_crit_edge, %sw.epilog.i480.msp_writereg.exit488_crit_edge, %msp_writereg.exit468.msp_writereg.exit488_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i470) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i469) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i489) #5
  %303 = getelementptr inbounds [5 x i8], ptr %msg.i489, i32 0, i32 1
  %304 = getelementptr inbounds [5 x i8], ptr %msg.i489, i32 0, i32 2
  %305 = getelementptr inbounds [5 x i8], ptr %msg.i489, i32 0, i32 3
  %306 = getelementptr inbounds [5 x i8], ptr %msg.i489, i32 0, i32 4
  %307 = ptrtoint ptr %msg.i489 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 16, ptr %msg.i489, align 1
  %308 = ptrtoint ptr %303 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 0, ptr %303, align 1
  %309 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 1, ptr %304, align 1
  %310 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %305, align 1
  %311 = ptrtoint ptr %306 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 18, ptr %306, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i490) #5
  %312 = getelementptr inbounds i8, ptr %msgs.i490, i32 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 393215, ptr %312, align 4
  %flags.i491 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i490, i32 0, i32 1
  %314 = ptrtoint ptr %flags.i491 to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 0, ptr %flags.i491, align 2
  %buf.i493 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i490, i32 0, i32 3
  %315 = ptrtoint ptr %buf.i493 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %msg.i489, ptr %buf.i493, align 4
  %316 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %adac_type.i, align 8
  %318 = zext i32 %317 to i64
  call void @__sanitizer_cov_trace_switch(i64 %318, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %317, label %msp_writereg.exit488.msp_writereg.exit508_crit_edge [
    i32 2, label %msp_writereg.exit488.sw.epilog.i500_crit_edge
    i32 3, label %sw.bb14.i495
  ]

msp_writereg.exit488.sw.epilog.i500_crit_edge:    ; preds = %msp_writereg.exit488
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i500

msp_writereg.exit488.msp_writereg.exit508_crit_edge: ; preds = %msp_writereg.exit488
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit508

sw.bb14.i495:                                     ; preds = %msp_writereg.exit488
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i500

sw.epilog.i500:                                   ; preds = %sw.bb14.i495, %msp_writereg.exit488.sw.epilog.i500_crit_edge
  %storemerge.i496 = phi i16 [ 66, %sw.bb14.i495 ], [ 64, %msp_writereg.exit488.sw.epilog.i500_crit_edge ]
  %319 = ptrtoint ptr %msgs.i490 to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %storemerge.i496, ptr %msgs.i490, align 4
  %i2c_adap.i497 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i498 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i497, ptr noundef nonnull %msgs.i490, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i498)
  %cmp.not.i499 = icmp eq i32 %call.i498, 1
  br i1 %cmp.not.i499, label %sw.epilog.i500.msp_writereg.exit508_crit_edge, label %do.body.i503

sw.epilog.i500.msp_writereg.exit508_crit_edge:    ; preds = %sw.epilog.i500
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit508

do.body.i503:                                     ; preds = %sw.epilog.i500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %320 = load i32, ptr @av7110_debug, align 4
  %and17.i501 = and i32 %320, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i501)
  %tobool.not.i502 = icmp eq i32 %and17.i501, 0
  br i1 %tobool.not.i502, label %do.body.i503.msp_writereg.exit508_crit_edge, label %do.end.i506

do.body.i503.msp_writereg.exit508_crit_edge:      ; preds = %do.body.i503
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit508

do.end.i506:                                      ; preds = %do.body.i503
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i504 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %321 = ptrtoint ptr %dvb_adapter.i504 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %dvb_adapter.i504, align 4
  %call22.i505 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %322, i32 noundef 1, i32 noundef 18) #8
  br label %msp_writereg.exit508

msp_writereg.exit508:                             ; preds = %do.end.i506, %do.body.i503.msp_writereg.exit508_crit_edge, %sw.epilog.i500.msp_writereg.exit508_crit_edge, %msp_writereg.exit488.msp_writereg.exit508_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i490) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i489) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i509) #5
  %323 = getelementptr inbounds [5 x i8], ptr %msg.i509, i32 0, i32 1
  %324 = getelementptr inbounds [5 x i8], ptr %msg.i509, i32 0, i32 2
  %325 = getelementptr inbounds [5 x i8], ptr %msg.i509, i32 0, i32 3
  %326 = getelementptr inbounds [5 x i8], ptr %msg.i509, i32 0, i32 4
  %327 = ptrtoint ptr %msg.i509 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 16, ptr %msg.i509, align 1
  %328 = ptrtoint ptr %323 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 0, ptr %323, align 1
  %329 = ptrtoint ptr %324 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 1, ptr %324, align 1
  %330 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %325, align 1
  %331 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 27, ptr %326, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i510) #5
  %332 = getelementptr inbounds i8, ptr %msgs.i510, i32 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 393215, ptr %332, align 4
  %flags.i511 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i510, i32 0, i32 1
  %334 = ptrtoint ptr %flags.i511 to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 0, ptr %flags.i511, align 2
  %buf.i513 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i510, i32 0, i32 3
  %335 = ptrtoint ptr %buf.i513 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %msg.i509, ptr %buf.i513, align 4
  %336 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %adac_type.i, align 8
  %338 = zext i32 %337 to i64
  call void @__sanitizer_cov_trace_switch(i64 %338, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %337, label %msp_writereg.exit508.msp_writereg.exit528_crit_edge [
    i32 2, label %msp_writereg.exit508.sw.epilog.i520_crit_edge
    i32 3, label %sw.bb14.i515
  ]

msp_writereg.exit508.sw.epilog.i520_crit_edge:    ; preds = %msp_writereg.exit508
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i520

msp_writereg.exit508.msp_writereg.exit528_crit_edge: ; preds = %msp_writereg.exit508
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit528

sw.bb14.i515:                                     ; preds = %msp_writereg.exit508
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i520

sw.epilog.i520:                                   ; preds = %sw.bb14.i515, %msp_writereg.exit508.sw.epilog.i520_crit_edge
  %storemerge.i516 = phi i16 [ 66, %sw.bb14.i515 ], [ 64, %msp_writereg.exit508.sw.epilog.i520_crit_edge ]
  %339 = ptrtoint ptr %msgs.i510 to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 %storemerge.i516, ptr %msgs.i510, align 4
  %i2c_adap.i517 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i518 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i517, ptr noundef nonnull %msgs.i510, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i518)
  %cmp.not.i519 = icmp eq i32 %call.i518, 1
  br i1 %cmp.not.i519, label %sw.epilog.i520.msp_writereg.exit528_crit_edge, label %do.body.i523

sw.epilog.i520.msp_writereg.exit528_crit_edge:    ; preds = %sw.epilog.i520
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit528

do.body.i523:                                     ; preds = %sw.epilog.i520
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %340 = load i32, ptr @av7110_debug, align 4
  %and17.i521 = and i32 %340, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i521)
  %tobool.not.i522 = icmp eq i32 %and17.i521, 0
  br i1 %tobool.not.i522, label %do.body.i523.msp_writereg.exit528_crit_edge, label %do.end.i526

do.body.i523.msp_writereg.exit528_crit_edge:      ; preds = %do.body.i523
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit528

do.end.i526:                                      ; preds = %do.body.i523
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i524 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %341 = ptrtoint ptr %dvb_adapter.i524 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %dvb_adapter.i524, align 4
  %call22.i525 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %342, i32 noundef 1, i32 noundef 27) #8
  br label %msp_writereg.exit528

msp_writereg.exit528:                             ; preds = %do.end.i526, %do.body.i523.msp_writereg.exit528_crit_edge, %sw.epilog.i520.msp_writereg.exit528_crit_edge, %msp_writereg.exit508.msp_writereg.exit528_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i510) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i509) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i529) #5
  %343 = getelementptr inbounds [5 x i8], ptr %msg.i529, i32 0, i32 1
  %344 = getelementptr inbounds [5 x i8], ptr %msg.i529, i32 0, i32 2
  %345 = getelementptr inbounds [5 x i8], ptr %msg.i529, i32 0, i32 3
  %346 = getelementptr inbounds [5 x i8], ptr %msg.i529, i32 0, i32 4
  %347 = ptrtoint ptr %msg.i529 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 16, ptr %msg.i529, align 1
  %348 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 0, ptr %343, align 1
  %349 = ptrtoint ptr %344 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 1, ptr %344, align 1
  %350 = ptrtoint ptr %345 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %345, align 1
  %351 = ptrtoint ptr %346 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 48, ptr %346, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i530) #5
  %352 = getelementptr inbounds i8, ptr %msgs.i530, i32 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 393215, ptr %352, align 4
  %flags.i531 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i530, i32 0, i32 1
  %354 = ptrtoint ptr %flags.i531 to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 0, ptr %flags.i531, align 2
  %buf.i533 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i530, i32 0, i32 3
  %355 = ptrtoint ptr %buf.i533 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %msg.i529, ptr %buf.i533, align 4
  %356 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %adac_type.i, align 8
  %358 = zext i32 %357 to i64
  call void @__sanitizer_cov_trace_switch(i64 %358, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %357, label %msp_writereg.exit528.msp_writereg.exit548_crit_edge [
    i32 2, label %msp_writereg.exit528.sw.epilog.i540_crit_edge
    i32 3, label %sw.bb14.i535
  ]

msp_writereg.exit528.sw.epilog.i540_crit_edge:    ; preds = %msp_writereg.exit528
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i540

msp_writereg.exit528.msp_writereg.exit548_crit_edge: ; preds = %msp_writereg.exit528
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit548

sw.bb14.i535:                                     ; preds = %msp_writereg.exit528
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i540

sw.epilog.i540:                                   ; preds = %sw.bb14.i535, %msp_writereg.exit528.sw.epilog.i540_crit_edge
  %storemerge.i536 = phi i16 [ 66, %sw.bb14.i535 ], [ 64, %msp_writereg.exit528.sw.epilog.i540_crit_edge ]
  %359 = ptrtoint ptr %msgs.i530 to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %storemerge.i536, ptr %msgs.i530, align 4
  %i2c_adap.i537 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i538 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i537, ptr noundef nonnull %msgs.i530, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i538)
  %cmp.not.i539 = icmp eq i32 %call.i538, 1
  br i1 %cmp.not.i539, label %sw.epilog.i540.msp_writereg.exit548_crit_edge, label %do.body.i543

sw.epilog.i540.msp_writereg.exit548_crit_edge:    ; preds = %sw.epilog.i540
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit548

do.body.i543:                                     ; preds = %sw.epilog.i540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %360 = load i32, ptr @av7110_debug, align 4
  %and17.i541 = and i32 %360, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i541)
  %tobool.not.i542 = icmp eq i32 %and17.i541, 0
  br i1 %tobool.not.i542, label %do.body.i543.msp_writereg.exit548_crit_edge, label %do.end.i546

do.body.i543.msp_writereg.exit548_crit_edge:      ; preds = %do.body.i543
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit548

do.end.i546:                                      ; preds = %do.body.i543
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i544 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %361 = ptrtoint ptr %dvb_adapter.i544 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %dvb_adapter.i544, align 4
  %call22.i545 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %362, i32 noundef 1, i32 noundef 48) #8
  br label %msp_writereg.exit548

msp_writereg.exit548:                             ; preds = %do.end.i546, %do.body.i543.msp_writereg.exit548_crit_edge, %sw.epilog.i540.msp_writereg.exit548_crit_edge, %msp_writereg.exit528.msp_writereg.exit548_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i530) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i529) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i549) #5
  %363 = getelementptr inbounds [5 x i8], ptr %msg.i549, i32 0, i32 1
  %364 = getelementptr inbounds [5 x i8], ptr %msg.i549, i32 0, i32 2
  %365 = getelementptr inbounds [5 x i8], ptr %msg.i549, i32 0, i32 3
  %366 = getelementptr inbounds [5 x i8], ptr %msg.i549, i32 0, i32 4
  %367 = ptrtoint ptr %msg.i549 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 16, ptr %msg.i549, align 1
  %368 = ptrtoint ptr %363 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 0, ptr %363, align 1
  %369 = ptrtoint ptr %364 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 1, ptr %364, align 1
  %370 = ptrtoint ptr %365 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %365, align 1
  %371 = ptrtoint ptr %366 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 66, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i550) #5
  %372 = getelementptr inbounds i8, ptr %msgs.i550, i32 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 393215, ptr %372, align 4
  %flags.i551 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i550, i32 0, i32 1
  %374 = ptrtoint ptr %flags.i551 to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 0, ptr %flags.i551, align 2
  %buf.i553 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i550, i32 0, i32 3
  %375 = ptrtoint ptr %buf.i553 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %msg.i549, ptr %buf.i553, align 4
  %376 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %adac_type.i, align 8
  %378 = zext i32 %377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %378, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %377, label %msp_writereg.exit548.msp_writereg.exit568_crit_edge [
    i32 2, label %msp_writereg.exit548.sw.epilog.i560_crit_edge
    i32 3, label %sw.bb14.i555
  ]

msp_writereg.exit548.sw.epilog.i560_crit_edge:    ; preds = %msp_writereg.exit548
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i560

msp_writereg.exit548.msp_writereg.exit568_crit_edge: ; preds = %msp_writereg.exit548
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit568

sw.bb14.i555:                                     ; preds = %msp_writereg.exit548
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i560

sw.epilog.i560:                                   ; preds = %sw.bb14.i555, %msp_writereg.exit548.sw.epilog.i560_crit_edge
  %storemerge.i556 = phi i16 [ 66, %sw.bb14.i555 ], [ 64, %msp_writereg.exit548.sw.epilog.i560_crit_edge ]
  %379 = ptrtoint ptr %msgs.i550 to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %storemerge.i556, ptr %msgs.i550, align 4
  %i2c_adap.i557 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i558 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i557, ptr noundef nonnull %msgs.i550, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i558)
  %cmp.not.i559 = icmp eq i32 %call.i558, 1
  br i1 %cmp.not.i559, label %sw.epilog.i560.msp_writereg.exit568_crit_edge, label %do.body.i563

sw.epilog.i560.msp_writereg.exit568_crit_edge:    ; preds = %sw.epilog.i560
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit568

do.body.i563:                                     ; preds = %sw.epilog.i560
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %380 = load i32, ptr @av7110_debug, align 4
  %and17.i561 = and i32 %380, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i561)
  %tobool.not.i562 = icmp eq i32 %and17.i561, 0
  br i1 %tobool.not.i562, label %do.body.i563.msp_writereg.exit568_crit_edge, label %do.end.i566

do.body.i563.msp_writereg.exit568_crit_edge:      ; preds = %do.body.i563
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit568

do.end.i566:                                      ; preds = %do.body.i563
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i564 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %381 = ptrtoint ptr %dvb_adapter.i564 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %dvb_adapter.i564, align 4
  %call22.i565 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %382, i32 noundef 1, i32 noundef 66) #8
  br label %msp_writereg.exit568

msp_writereg.exit568:                             ; preds = %do.end.i566, %do.body.i563.msp_writereg.exit568_crit_edge, %sw.epilog.i560.msp_writereg.exit568_crit_edge, %msp_writereg.exit548.msp_writereg.exit568_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i550) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i549) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i569) #5
  %383 = getelementptr inbounds [5 x i8], ptr %msg.i569, i32 0, i32 1
  %384 = getelementptr inbounds [5 x i8], ptr %msg.i569, i32 0, i32 2
  %385 = getelementptr inbounds [5 x i8], ptr %msg.i569, i32 0, i32 3
  %386 = getelementptr inbounds [5 x i8], ptr %msg.i569, i32 0, i32 4
  %387 = ptrtoint ptr %msg.i569 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 16, ptr %msg.i569, align 1
  %388 = ptrtoint ptr %383 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 0, ptr %383, align 1
  %389 = ptrtoint ptr %384 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 1, ptr %384, align 1
  %390 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 0, ptr %385, align 1
  %391 = ptrtoint ptr %386 to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 72, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i570) #5
  %392 = getelementptr inbounds i8, ptr %msgs.i570, i32 4
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 393215, ptr %392, align 4
  %flags.i571 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i570, i32 0, i32 1
  %394 = ptrtoint ptr %flags.i571 to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 0, ptr %flags.i571, align 2
  %buf.i573 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i570, i32 0, i32 3
  %395 = ptrtoint ptr %buf.i573 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %msg.i569, ptr %buf.i573, align 4
  %396 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %adac_type.i, align 8
  %398 = zext i32 %397 to i64
  call void @__sanitizer_cov_trace_switch(i64 %398, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %397, label %msp_writereg.exit568.msp_writereg.exit588_crit_edge [
    i32 2, label %msp_writereg.exit568.sw.epilog.i580_crit_edge
    i32 3, label %sw.bb14.i575
  ]

msp_writereg.exit568.sw.epilog.i580_crit_edge:    ; preds = %msp_writereg.exit568
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i580

msp_writereg.exit568.msp_writereg.exit588_crit_edge: ; preds = %msp_writereg.exit568
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit588

sw.bb14.i575:                                     ; preds = %msp_writereg.exit568
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i580

sw.epilog.i580:                                   ; preds = %sw.bb14.i575, %msp_writereg.exit568.sw.epilog.i580_crit_edge
  %storemerge.i576 = phi i16 [ 66, %sw.bb14.i575 ], [ 64, %msp_writereg.exit568.sw.epilog.i580_crit_edge ]
  %399 = ptrtoint ptr %msgs.i570 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %storemerge.i576, ptr %msgs.i570, align 4
  %i2c_adap.i577 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i578 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i577, ptr noundef nonnull %msgs.i570, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i578)
  %cmp.not.i579 = icmp eq i32 %call.i578, 1
  br i1 %cmp.not.i579, label %sw.epilog.i580.msp_writereg.exit588_crit_edge, label %do.body.i583

sw.epilog.i580.msp_writereg.exit588_crit_edge:    ; preds = %sw.epilog.i580
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit588

do.body.i583:                                     ; preds = %sw.epilog.i580
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %400 = load i32, ptr @av7110_debug, align 4
  %and17.i581 = and i32 %400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i581)
  %tobool.not.i582 = icmp eq i32 %and17.i581, 0
  br i1 %tobool.not.i582, label %do.body.i583.msp_writereg.exit588_crit_edge, label %do.end.i586

do.body.i583.msp_writereg.exit588_crit_edge:      ; preds = %do.body.i583
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit588

do.end.i586:                                      ; preds = %do.body.i583
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i584 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %401 = ptrtoint ptr %dvb_adapter.i584 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %dvb_adapter.i584, align 4
  %call22.i585 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %402, i32 noundef 1, i32 noundef 72) #8
  br label %msp_writereg.exit588

msp_writereg.exit588:                             ; preds = %do.end.i586, %do.body.i583.msp_writereg.exit588_crit_edge, %sw.epilog.i580.msp_writereg.exit588_crit_edge, %msp_writereg.exit568.msp_writereg.exit588_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i570) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i569) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i589) #5
  %403 = getelementptr inbounds [5 x i8], ptr %msg.i589, i32 0, i32 1
  %404 = getelementptr inbounds [5 x i8], ptr %msg.i589, i32 0, i32 2
  %405 = getelementptr inbounds [5 x i8], ptr %msg.i589, i32 0, i32 3
  %406 = getelementptr inbounds [5 x i8], ptr %msg.i589, i32 0, i32 4
  %407 = ptrtoint ptr %msg.i589 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 16, ptr %msg.i589, align 1
  %408 = ptrtoint ptr %403 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 0, ptr %403, align 1
  %409 = ptrtoint ptr %404 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 5, ptr %404, align 1
  %410 = ptrtoint ptr %405 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 0, ptr %405, align 1
  %411 = ptrtoint ptr %406 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 4, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i590) #5
  %412 = getelementptr inbounds i8, ptr %msgs.i590, i32 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 393215, ptr %412, align 4
  %flags.i591 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i590, i32 0, i32 1
  %414 = ptrtoint ptr %flags.i591 to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 0, ptr %flags.i591, align 2
  %buf.i593 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i590, i32 0, i32 3
  %415 = ptrtoint ptr %buf.i593 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %msg.i589, ptr %buf.i593, align 4
  %416 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %adac_type.i, align 8
  %418 = zext i32 %417 to i64
  call void @__sanitizer_cov_trace_switch(i64 %418, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %417, label %msp_writereg.exit588.msp_writereg.exit608_crit_edge [
    i32 2, label %msp_writereg.exit588.sw.epilog.i600_crit_edge
    i32 3, label %sw.bb14.i595
  ]

msp_writereg.exit588.sw.epilog.i600_crit_edge:    ; preds = %msp_writereg.exit588
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i600

msp_writereg.exit588.msp_writereg.exit608_crit_edge: ; preds = %msp_writereg.exit588
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit608

sw.bb14.i595:                                     ; preds = %msp_writereg.exit588
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i600

sw.epilog.i600:                                   ; preds = %sw.bb14.i595, %msp_writereg.exit588.sw.epilog.i600_crit_edge
  %storemerge.i596 = phi i16 [ 66, %sw.bb14.i595 ], [ 64, %msp_writereg.exit588.sw.epilog.i600_crit_edge ]
  %419 = ptrtoint ptr %msgs.i590 to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 %storemerge.i596, ptr %msgs.i590, align 4
  %i2c_adap.i597 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i598 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i597, ptr noundef nonnull %msgs.i590, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i598)
  %cmp.not.i599 = icmp eq i32 %call.i598, 1
  br i1 %cmp.not.i599, label %sw.epilog.i600.msp_writereg.exit608_crit_edge, label %do.body.i603

sw.epilog.i600.msp_writereg.exit608_crit_edge:    ; preds = %sw.epilog.i600
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit608

do.body.i603:                                     ; preds = %sw.epilog.i600
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %420 = load i32, ptr @av7110_debug, align 4
  %and17.i601 = and i32 %420, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i601)
  %tobool.not.i602 = icmp eq i32 %and17.i601, 0
  br i1 %tobool.not.i602, label %do.body.i603.msp_writereg.exit608_crit_edge, label %do.end.i606

do.body.i603.msp_writereg.exit608_crit_edge:      ; preds = %do.body.i603
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit608

do.end.i606:                                      ; preds = %do.body.i603
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i604 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %421 = ptrtoint ptr %dvb_adapter.i604 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %dvb_adapter.i604, align 4
  %call22.i605 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %422, i32 noundef 5, i32 noundef 4) #8
  br label %msp_writereg.exit608

msp_writereg.exit608:                             ; preds = %do.end.i606, %do.body.i603.msp_writereg.exit608_crit_edge, %sw.epilog.i600.msp_writereg.exit608_crit_edge, %msp_writereg.exit588.msp_writereg.exit608_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i590) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i589) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i609) #5
  %423 = getelementptr inbounds [5 x i8], ptr %msg.i609, i32 0, i32 1
  %424 = getelementptr inbounds [5 x i8], ptr %msg.i609, i32 0, i32 2
  %425 = getelementptr inbounds [5 x i8], ptr %msg.i609, i32 0, i32 3
  %426 = getelementptr inbounds [5 x i8], ptr %msg.i609, i32 0, i32 4
  %427 = ptrtoint ptr %msg.i609 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 16, ptr %msg.i609, align 1
  %428 = ptrtoint ptr %423 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 0, ptr %423, align 1
  %429 = ptrtoint ptr %424 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 5, ptr %424, align 1
  %430 = ptrtoint ptr %425 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 0, ptr %425, align 1
  %431 = ptrtoint ptr %426 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 64, ptr %426, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i610) #5
  %432 = getelementptr inbounds i8, ptr %msgs.i610, i32 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 393215, ptr %432, align 4
  %flags.i611 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i610, i32 0, i32 1
  %434 = ptrtoint ptr %flags.i611 to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 0, ptr %flags.i611, align 2
  %buf.i613 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i610, i32 0, i32 3
  %435 = ptrtoint ptr %buf.i613 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %msg.i609, ptr %buf.i613, align 4
  %436 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %adac_type.i, align 8
  %438 = zext i32 %437 to i64
  call void @__sanitizer_cov_trace_switch(i64 %438, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %437, label %msp_writereg.exit608.msp_writereg.exit628_crit_edge [
    i32 2, label %msp_writereg.exit608.sw.epilog.i620_crit_edge
    i32 3, label %sw.bb14.i615
  ]

msp_writereg.exit608.sw.epilog.i620_crit_edge:    ; preds = %msp_writereg.exit608
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i620

msp_writereg.exit608.msp_writereg.exit628_crit_edge: ; preds = %msp_writereg.exit608
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit628

sw.bb14.i615:                                     ; preds = %msp_writereg.exit608
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i620

sw.epilog.i620:                                   ; preds = %sw.bb14.i615, %msp_writereg.exit608.sw.epilog.i620_crit_edge
  %storemerge.i616 = phi i16 [ 66, %sw.bb14.i615 ], [ 64, %msp_writereg.exit608.sw.epilog.i620_crit_edge ]
  %439 = ptrtoint ptr %msgs.i610 to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %storemerge.i616, ptr %msgs.i610, align 4
  %i2c_adap.i617 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i618 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i617, ptr noundef nonnull %msgs.i610, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i618)
  %cmp.not.i619 = icmp eq i32 %call.i618, 1
  br i1 %cmp.not.i619, label %sw.epilog.i620.msp_writereg.exit628_crit_edge, label %do.body.i623

sw.epilog.i620.msp_writereg.exit628_crit_edge:    ; preds = %sw.epilog.i620
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit628

do.body.i623:                                     ; preds = %sw.epilog.i620
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %440 = load i32, ptr @av7110_debug, align 4
  %and17.i621 = and i32 %440, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i621)
  %tobool.not.i622 = icmp eq i32 %and17.i621, 0
  br i1 %tobool.not.i622, label %do.body.i623.msp_writereg.exit628_crit_edge, label %do.end.i626

do.body.i623.msp_writereg.exit628_crit_edge:      ; preds = %do.body.i623
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit628

do.end.i626:                                      ; preds = %do.body.i623
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i624 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %441 = ptrtoint ptr %dvb_adapter.i624 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %dvb_adapter.i624, align 4
  %call22.i625 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %442, i32 noundef 5, i32 noundef 64) #8
  br label %msp_writereg.exit628

msp_writereg.exit628:                             ; preds = %do.end.i626, %do.body.i623.msp_writereg.exit628_crit_edge, %sw.epilog.i620.msp_writereg.exit628_crit_edge, %msp_writereg.exit608.msp_writereg.exit628_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i610) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i609) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i629) #5
  %443 = getelementptr inbounds [5 x i8], ptr %msg.i629, i32 0, i32 1
  %444 = getelementptr inbounds [5 x i8], ptr %msg.i629, i32 0, i32 2
  %445 = getelementptr inbounds [5 x i8], ptr %msg.i629, i32 0, i32 3
  %446 = getelementptr inbounds [5 x i8], ptr %msg.i629, i32 0, i32 4
  %447 = ptrtoint ptr %msg.i629 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 16, ptr %msg.i629, align 1
  %448 = ptrtoint ptr %443 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 0, ptr %443, align 1
  %449 = ptrtoint ptr %444 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 5, ptr %444, align 1
  %450 = ptrtoint ptr %445 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %445, align 1
  %451 = ptrtoint ptr %446 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 0, ptr %446, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i630) #5
  %452 = getelementptr inbounds i8, ptr %msgs.i630, i32 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 393215, ptr %452, align 4
  %flags.i631 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i630, i32 0, i32 1
  %454 = ptrtoint ptr %flags.i631 to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 0, ptr %flags.i631, align 2
  %buf.i633 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i630, i32 0, i32 3
  %455 = ptrtoint ptr %buf.i633 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %msg.i629, ptr %buf.i633, align 4
  %456 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %adac_type.i, align 8
  %458 = zext i32 %457 to i64
  call void @__sanitizer_cov_trace_switch(i64 %458, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %457, label %msp_writereg.exit628.msp_writereg.exit648_crit_edge [
    i32 2, label %msp_writereg.exit628.sw.epilog.i640_crit_edge
    i32 3, label %sw.bb14.i635
  ]

msp_writereg.exit628.sw.epilog.i640_crit_edge:    ; preds = %msp_writereg.exit628
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i640

msp_writereg.exit628.msp_writereg.exit648_crit_edge: ; preds = %msp_writereg.exit628
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit648

sw.bb14.i635:                                     ; preds = %msp_writereg.exit628
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i640

sw.epilog.i640:                                   ; preds = %sw.bb14.i635, %msp_writereg.exit628.sw.epilog.i640_crit_edge
  %storemerge.i636 = phi i16 [ 66, %sw.bb14.i635 ], [ 64, %msp_writereg.exit628.sw.epilog.i640_crit_edge ]
  %459 = ptrtoint ptr %msgs.i630 to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 %storemerge.i636, ptr %msgs.i630, align 4
  %i2c_adap.i637 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i638 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i637, ptr noundef nonnull %msgs.i630, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i638)
  %cmp.not.i639 = icmp eq i32 %call.i638, 1
  br i1 %cmp.not.i639, label %sw.epilog.i640.msp_writereg.exit648_crit_edge, label %do.body.i643

sw.epilog.i640.msp_writereg.exit648_crit_edge:    ; preds = %sw.epilog.i640
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit648

do.body.i643:                                     ; preds = %sw.epilog.i640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %460 = load i32, ptr @av7110_debug, align 4
  %and17.i641 = and i32 %460, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i641)
  %tobool.not.i642 = icmp eq i32 %and17.i641, 0
  br i1 %tobool.not.i642, label %do.body.i643.msp_writereg.exit648_crit_edge, label %do.end.i646

do.body.i643.msp_writereg.exit648_crit_edge:      ; preds = %do.body.i643
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit648

do.end.i646:                                      ; preds = %do.body.i643
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i644 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %461 = ptrtoint ptr %dvb_adapter.i644 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %dvb_adapter.i644, align 4
  %call22.i645 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %462, i32 noundef 5, i32 noundef 0) #8
  br label %msp_writereg.exit648

msp_writereg.exit648:                             ; preds = %do.end.i646, %do.body.i643.msp_writereg.exit648_crit_edge, %sw.epilog.i640.msp_writereg.exit648_crit_edge, %msp_writereg.exit628.msp_writereg.exit648_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i630) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i629) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i649) #5
  %463 = getelementptr inbounds [5 x i8], ptr %msg.i649, i32 0, i32 1
  %464 = getelementptr inbounds [5 x i8], ptr %msg.i649, i32 0, i32 2
  %465 = getelementptr inbounds [5 x i8], ptr %msg.i649, i32 0, i32 3
  %466 = getelementptr inbounds [5 x i8], ptr %msg.i649, i32 0, i32 4
  %467 = ptrtoint ptr %msg.i649 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 16, ptr %msg.i649, align 1
  %468 = ptrtoint ptr %463 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 0, ptr %463, align 1
  %469 = ptrtoint ptr %464 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 5, ptr %464, align 1
  %470 = ptrtoint ptr %465 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 0, ptr %465, align 1
  %471 = ptrtoint ptr %466 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 3, ptr %466, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i650) #5
  %472 = getelementptr inbounds i8, ptr %msgs.i650, i32 4
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 393215, ptr %472, align 4
  %flags.i651 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i650, i32 0, i32 1
  %474 = ptrtoint ptr %flags.i651 to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 0, ptr %flags.i651, align 2
  %buf.i653 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i650, i32 0, i32 3
  %475 = ptrtoint ptr %buf.i653 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %msg.i649, ptr %buf.i653, align 4
  %476 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %adac_type.i, align 8
  %478 = zext i32 %477 to i64
  call void @__sanitizer_cov_trace_switch(i64 %478, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %477, label %msp_writereg.exit648.msp_writereg.exit668_crit_edge [
    i32 2, label %msp_writereg.exit648.sw.epilog.i660_crit_edge
    i32 3, label %sw.bb14.i655
  ]

msp_writereg.exit648.sw.epilog.i660_crit_edge:    ; preds = %msp_writereg.exit648
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i660

msp_writereg.exit648.msp_writereg.exit668_crit_edge: ; preds = %msp_writereg.exit648
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit668

sw.bb14.i655:                                     ; preds = %msp_writereg.exit648
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i660

sw.epilog.i660:                                   ; preds = %sw.bb14.i655, %msp_writereg.exit648.sw.epilog.i660_crit_edge
  %storemerge.i656 = phi i16 [ 66, %sw.bb14.i655 ], [ 64, %msp_writereg.exit648.sw.epilog.i660_crit_edge ]
  %479 = ptrtoint ptr %msgs.i650 to i32
  call void @__asan_store2_noabort(i32 %479)
  store i16 %storemerge.i656, ptr %msgs.i650, align 4
  %i2c_adap.i657 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i658 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i657, ptr noundef nonnull %msgs.i650, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i658)
  %cmp.not.i659 = icmp eq i32 %call.i658, 1
  br i1 %cmp.not.i659, label %sw.epilog.i660.msp_writereg.exit668_crit_edge, label %do.body.i663

sw.epilog.i660.msp_writereg.exit668_crit_edge:    ; preds = %sw.epilog.i660
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit668

do.body.i663:                                     ; preds = %sw.epilog.i660
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %480 = load i32, ptr @av7110_debug, align 4
  %and17.i661 = and i32 %480, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i661)
  %tobool.not.i662 = icmp eq i32 %and17.i661, 0
  br i1 %tobool.not.i662, label %do.body.i663.msp_writereg.exit668_crit_edge, label %do.end.i666

do.body.i663.msp_writereg.exit668_crit_edge:      ; preds = %do.body.i663
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit668

do.end.i666:                                      ; preds = %do.body.i663
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i664 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %481 = ptrtoint ptr %dvb_adapter.i664 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %dvb_adapter.i664, align 4
  %call22.i665 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %482, i32 noundef 5, i32 noundef 3) #8
  br label %msp_writereg.exit668

msp_writereg.exit668:                             ; preds = %do.end.i666, %do.body.i663.msp_writereg.exit668_crit_edge, %sw.epilog.i660.msp_writereg.exit668_crit_edge, %msp_writereg.exit648.msp_writereg.exit668_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i650) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i649) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i669) #5
  %483 = getelementptr inbounds [5 x i8], ptr %msg.i669, i32 0, i32 1
  %484 = getelementptr inbounds [5 x i8], ptr %msg.i669, i32 0, i32 2
  %485 = getelementptr inbounds [5 x i8], ptr %msg.i669, i32 0, i32 3
  %486 = getelementptr inbounds [5 x i8], ptr %msg.i669, i32 0, i32 4
  %487 = ptrtoint ptr %msg.i669 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 16, ptr %msg.i669, align 1
  %488 = ptrtoint ptr %483 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 0, ptr %483, align 1
  %489 = ptrtoint ptr %484 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 5, ptr %484, align 1
  %490 = ptrtoint ptr %485 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 0, ptr %485, align 1
  %491 = ptrtoint ptr %486 to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 18, ptr %486, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i670) #5
  %492 = getelementptr inbounds i8, ptr %msgs.i670, i32 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 393215, ptr %492, align 4
  %flags.i671 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i670, i32 0, i32 1
  %494 = ptrtoint ptr %flags.i671 to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 0, ptr %flags.i671, align 2
  %buf.i673 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i670, i32 0, i32 3
  %495 = ptrtoint ptr %buf.i673 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %msg.i669, ptr %buf.i673, align 4
  %496 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %adac_type.i, align 8
  %498 = zext i32 %497 to i64
  call void @__sanitizer_cov_trace_switch(i64 %498, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %497, label %msp_writereg.exit668.msp_writereg.exit688_crit_edge [
    i32 2, label %msp_writereg.exit668.sw.epilog.i680_crit_edge
    i32 3, label %sw.bb14.i675
  ]

msp_writereg.exit668.sw.epilog.i680_crit_edge:    ; preds = %msp_writereg.exit668
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i680

msp_writereg.exit668.msp_writereg.exit688_crit_edge: ; preds = %msp_writereg.exit668
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit688

sw.bb14.i675:                                     ; preds = %msp_writereg.exit668
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i680

sw.epilog.i680:                                   ; preds = %sw.bb14.i675, %msp_writereg.exit668.sw.epilog.i680_crit_edge
  %storemerge.i676 = phi i16 [ 66, %sw.bb14.i675 ], [ 64, %msp_writereg.exit668.sw.epilog.i680_crit_edge ]
  %499 = ptrtoint ptr %msgs.i670 to i32
  call void @__asan_store2_noabort(i32 %499)
  store i16 %storemerge.i676, ptr %msgs.i670, align 4
  %i2c_adap.i677 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i678 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i677, ptr noundef nonnull %msgs.i670, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i678)
  %cmp.not.i679 = icmp eq i32 %call.i678, 1
  br i1 %cmp.not.i679, label %sw.epilog.i680.msp_writereg.exit688_crit_edge, label %do.body.i683

sw.epilog.i680.msp_writereg.exit688_crit_edge:    ; preds = %sw.epilog.i680
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit688

do.body.i683:                                     ; preds = %sw.epilog.i680
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %500 = load i32, ptr @av7110_debug, align 4
  %and17.i681 = and i32 %500, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i681)
  %tobool.not.i682 = icmp eq i32 %and17.i681, 0
  br i1 %tobool.not.i682, label %do.body.i683.msp_writereg.exit688_crit_edge, label %do.end.i686

do.body.i683.msp_writereg.exit688_crit_edge:      ; preds = %do.body.i683
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit688

do.end.i686:                                      ; preds = %do.body.i683
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i684 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %501 = ptrtoint ptr %dvb_adapter.i684 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %dvb_adapter.i684, align 4
  %call22.i685 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %502, i32 noundef 5, i32 noundef 18) #8
  br label %msp_writereg.exit688

msp_writereg.exit688:                             ; preds = %do.end.i686, %do.body.i683.msp_writereg.exit688_crit_edge, %sw.epilog.i680.msp_writereg.exit688_crit_edge, %msp_writereg.exit668.msp_writereg.exit688_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i670) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i669) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i689) #5
  %503 = getelementptr inbounds [5 x i8], ptr %msg.i689, i32 0, i32 1
  %504 = getelementptr inbounds [5 x i8], ptr %msg.i689, i32 0, i32 2
  %505 = getelementptr inbounds [5 x i8], ptr %msg.i689, i32 0, i32 3
  %506 = getelementptr inbounds [5 x i8], ptr %msg.i689, i32 0, i32 4
  %507 = ptrtoint ptr %msg.i689 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 16, ptr %msg.i689, align 1
  %508 = ptrtoint ptr %503 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 0, ptr %503, align 1
  %509 = ptrtoint ptr %504 to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 5, ptr %504, align 1
  %510 = ptrtoint ptr %505 to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 0, ptr %505, align 1
  %511 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 27, ptr %506, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i690) #5
  %512 = getelementptr inbounds i8, ptr %msgs.i690, i32 4
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 393215, ptr %512, align 4
  %flags.i691 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i690, i32 0, i32 1
  %514 = ptrtoint ptr %flags.i691 to i32
  call void @__asan_store2_noabort(i32 %514)
  store i16 0, ptr %flags.i691, align 2
  %buf.i693 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i690, i32 0, i32 3
  %515 = ptrtoint ptr %buf.i693 to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr %msg.i689, ptr %buf.i693, align 4
  %516 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %adac_type.i, align 8
  %518 = zext i32 %517 to i64
  call void @__sanitizer_cov_trace_switch(i64 %518, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %517, label %msp_writereg.exit688.msp_writereg.exit708_crit_edge [
    i32 2, label %msp_writereg.exit688.sw.epilog.i700_crit_edge
    i32 3, label %sw.bb14.i695
  ]

msp_writereg.exit688.sw.epilog.i700_crit_edge:    ; preds = %msp_writereg.exit688
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i700

msp_writereg.exit688.msp_writereg.exit708_crit_edge: ; preds = %msp_writereg.exit688
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit708

sw.bb14.i695:                                     ; preds = %msp_writereg.exit688
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i700

sw.epilog.i700:                                   ; preds = %sw.bb14.i695, %msp_writereg.exit688.sw.epilog.i700_crit_edge
  %storemerge.i696 = phi i16 [ 66, %sw.bb14.i695 ], [ 64, %msp_writereg.exit688.sw.epilog.i700_crit_edge ]
  %519 = ptrtoint ptr %msgs.i690 to i32
  call void @__asan_store2_noabort(i32 %519)
  store i16 %storemerge.i696, ptr %msgs.i690, align 4
  %i2c_adap.i697 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i698 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i697, ptr noundef nonnull %msgs.i690, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i698)
  %cmp.not.i699 = icmp eq i32 %call.i698, 1
  br i1 %cmp.not.i699, label %sw.epilog.i700.msp_writereg.exit708_crit_edge, label %do.body.i703

sw.epilog.i700.msp_writereg.exit708_crit_edge:    ; preds = %sw.epilog.i700
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit708

do.body.i703:                                     ; preds = %sw.epilog.i700
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %520 = load i32, ptr @av7110_debug, align 4
  %and17.i701 = and i32 %520, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i701)
  %tobool.not.i702 = icmp eq i32 %and17.i701, 0
  br i1 %tobool.not.i702, label %do.body.i703.msp_writereg.exit708_crit_edge, label %do.end.i706

do.body.i703.msp_writereg.exit708_crit_edge:      ; preds = %do.body.i703
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit708

do.end.i706:                                      ; preds = %do.body.i703
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i704 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %521 = ptrtoint ptr %dvb_adapter.i704 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %dvb_adapter.i704, align 4
  %call22.i705 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %522, i32 noundef 5, i32 noundef 27) #8
  br label %msp_writereg.exit708

msp_writereg.exit708:                             ; preds = %do.end.i706, %do.body.i703.msp_writereg.exit708_crit_edge, %sw.epilog.i700.msp_writereg.exit708_crit_edge, %msp_writereg.exit688.msp_writereg.exit708_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i690) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i689) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i709) #5
  %523 = getelementptr inbounds [5 x i8], ptr %msg.i709, i32 0, i32 1
  %524 = getelementptr inbounds [5 x i8], ptr %msg.i709, i32 0, i32 2
  %525 = getelementptr inbounds [5 x i8], ptr %msg.i709, i32 0, i32 3
  %526 = getelementptr inbounds [5 x i8], ptr %msg.i709, i32 0, i32 4
  %527 = ptrtoint ptr %msg.i709 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 16, ptr %msg.i709, align 1
  %528 = ptrtoint ptr %523 to i32
  call void @__asan_store1_noabort(i32 %528)
  store i8 0, ptr %523, align 1
  %529 = ptrtoint ptr %524 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 5, ptr %524, align 1
  %530 = ptrtoint ptr %525 to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 0, ptr %525, align 1
  %531 = ptrtoint ptr %526 to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 48, ptr %526, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i710) #5
  %532 = getelementptr inbounds i8, ptr %msgs.i710, i32 4
  %533 = ptrtoint ptr %532 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 393215, ptr %532, align 4
  %flags.i711 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i710, i32 0, i32 1
  %534 = ptrtoint ptr %flags.i711 to i32
  call void @__asan_store2_noabort(i32 %534)
  store i16 0, ptr %flags.i711, align 2
  %buf.i713 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i710, i32 0, i32 3
  %535 = ptrtoint ptr %buf.i713 to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %msg.i709, ptr %buf.i713, align 4
  %536 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %adac_type.i, align 8
  %538 = zext i32 %537 to i64
  call void @__sanitizer_cov_trace_switch(i64 %538, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %537, label %msp_writereg.exit708.msp_writereg.exit728_crit_edge [
    i32 2, label %msp_writereg.exit708.sw.epilog.i720_crit_edge
    i32 3, label %sw.bb14.i715
  ]

msp_writereg.exit708.sw.epilog.i720_crit_edge:    ; preds = %msp_writereg.exit708
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i720

msp_writereg.exit708.msp_writereg.exit728_crit_edge: ; preds = %msp_writereg.exit708
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit728

sw.bb14.i715:                                     ; preds = %msp_writereg.exit708
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i720

sw.epilog.i720:                                   ; preds = %sw.bb14.i715, %msp_writereg.exit708.sw.epilog.i720_crit_edge
  %storemerge.i716 = phi i16 [ 66, %sw.bb14.i715 ], [ 64, %msp_writereg.exit708.sw.epilog.i720_crit_edge ]
  %539 = ptrtoint ptr %msgs.i710 to i32
  call void @__asan_store2_noabort(i32 %539)
  store i16 %storemerge.i716, ptr %msgs.i710, align 4
  %i2c_adap.i717 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i718 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i717, ptr noundef nonnull %msgs.i710, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i718)
  %cmp.not.i719 = icmp eq i32 %call.i718, 1
  br i1 %cmp.not.i719, label %sw.epilog.i720.msp_writereg.exit728_crit_edge, label %do.body.i723

sw.epilog.i720.msp_writereg.exit728_crit_edge:    ; preds = %sw.epilog.i720
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit728

do.body.i723:                                     ; preds = %sw.epilog.i720
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %540 = load i32, ptr @av7110_debug, align 4
  %and17.i721 = and i32 %540, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i721)
  %tobool.not.i722 = icmp eq i32 %and17.i721, 0
  br i1 %tobool.not.i722, label %do.body.i723.msp_writereg.exit728_crit_edge, label %do.end.i726

do.body.i723.msp_writereg.exit728_crit_edge:      ; preds = %do.body.i723
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit728

do.end.i726:                                      ; preds = %do.body.i723
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i724 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %541 = ptrtoint ptr %dvb_adapter.i724 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %dvb_adapter.i724, align 4
  %call22.i725 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %542, i32 noundef 5, i32 noundef 48) #8
  br label %msp_writereg.exit728

msp_writereg.exit728:                             ; preds = %do.end.i726, %do.body.i723.msp_writereg.exit728_crit_edge, %sw.epilog.i720.msp_writereg.exit728_crit_edge, %msp_writereg.exit708.msp_writereg.exit728_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i710) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i709) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i729) #5
  %543 = getelementptr inbounds [5 x i8], ptr %msg.i729, i32 0, i32 1
  %544 = getelementptr inbounds [5 x i8], ptr %msg.i729, i32 0, i32 2
  %545 = getelementptr inbounds [5 x i8], ptr %msg.i729, i32 0, i32 3
  %546 = getelementptr inbounds [5 x i8], ptr %msg.i729, i32 0, i32 4
  %547 = ptrtoint ptr %msg.i729 to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 16, ptr %msg.i729, align 1
  %548 = ptrtoint ptr %543 to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 0, ptr %543, align 1
  %549 = ptrtoint ptr %544 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 5, ptr %544, align 1
  %550 = ptrtoint ptr %545 to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 0, ptr %545, align 1
  %551 = ptrtoint ptr %546 to i32
  call void @__asan_store1_noabort(i32 %551)
  store i8 66, ptr %546, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i730) #5
  %552 = getelementptr inbounds i8, ptr %msgs.i730, i32 4
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 393215, ptr %552, align 4
  %flags.i731 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i730, i32 0, i32 1
  %554 = ptrtoint ptr %flags.i731 to i32
  call void @__asan_store2_noabort(i32 %554)
  store i16 0, ptr %flags.i731, align 2
  %buf.i733 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i730, i32 0, i32 3
  %555 = ptrtoint ptr %buf.i733 to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr %msg.i729, ptr %buf.i733, align 4
  %556 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %adac_type.i, align 8
  %558 = zext i32 %557 to i64
  call void @__sanitizer_cov_trace_switch(i64 %558, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %557, label %msp_writereg.exit728.msp_writereg.exit748_crit_edge [
    i32 2, label %msp_writereg.exit728.sw.epilog.i740_crit_edge
    i32 3, label %sw.bb14.i735
  ]

msp_writereg.exit728.sw.epilog.i740_crit_edge:    ; preds = %msp_writereg.exit728
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i740

msp_writereg.exit728.msp_writereg.exit748_crit_edge: ; preds = %msp_writereg.exit728
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit748

sw.bb14.i735:                                     ; preds = %msp_writereg.exit728
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i740

sw.epilog.i740:                                   ; preds = %sw.bb14.i735, %msp_writereg.exit728.sw.epilog.i740_crit_edge
  %storemerge.i736 = phi i16 [ 66, %sw.bb14.i735 ], [ 64, %msp_writereg.exit728.sw.epilog.i740_crit_edge ]
  %559 = ptrtoint ptr %msgs.i730 to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 %storemerge.i736, ptr %msgs.i730, align 4
  %i2c_adap.i737 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i738 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i737, ptr noundef nonnull %msgs.i730, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i738)
  %cmp.not.i739 = icmp eq i32 %call.i738, 1
  br i1 %cmp.not.i739, label %sw.epilog.i740.msp_writereg.exit748_crit_edge, label %do.body.i743

sw.epilog.i740.msp_writereg.exit748_crit_edge:    ; preds = %sw.epilog.i740
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit748

do.body.i743:                                     ; preds = %sw.epilog.i740
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %560 = load i32, ptr @av7110_debug, align 4
  %and17.i741 = and i32 %560, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i741)
  %tobool.not.i742 = icmp eq i32 %and17.i741, 0
  br i1 %tobool.not.i742, label %do.body.i743.msp_writereg.exit748_crit_edge, label %do.end.i746

do.body.i743.msp_writereg.exit748_crit_edge:      ; preds = %do.body.i743
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit748

do.end.i746:                                      ; preds = %do.body.i743
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i744 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %561 = ptrtoint ptr %dvb_adapter.i744 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %dvb_adapter.i744, align 4
  %call22.i745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %562, i32 noundef 5, i32 noundef 66) #8
  br label %msp_writereg.exit748

msp_writereg.exit748:                             ; preds = %do.end.i746, %do.body.i743.msp_writereg.exit748_crit_edge, %sw.epilog.i740.msp_writereg.exit748_crit_edge, %msp_writereg.exit728.msp_writereg.exit748_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i730) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i729) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i749) #5
  %563 = getelementptr inbounds [5 x i8], ptr %msg.i749, i32 0, i32 1
  %564 = getelementptr inbounds [5 x i8], ptr %msg.i749, i32 0, i32 2
  %565 = getelementptr inbounds [5 x i8], ptr %msg.i749, i32 0, i32 3
  %566 = getelementptr inbounds [5 x i8], ptr %msg.i749, i32 0, i32 4
  %567 = ptrtoint ptr %msg.i749 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 16, ptr %msg.i749, align 1
  %568 = ptrtoint ptr %563 to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 0, ptr %563, align 1
  %569 = ptrtoint ptr %564 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 5, ptr %564, align 1
  %570 = ptrtoint ptr %565 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 0, ptr %565, align 1
  %571 = ptrtoint ptr %566 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 72, ptr %566, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i750) #5
  %572 = getelementptr inbounds i8, ptr %msgs.i750, i32 4
  %573 = ptrtoint ptr %572 to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 393215, ptr %572, align 4
  %flags.i751 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i750, i32 0, i32 1
  %574 = ptrtoint ptr %flags.i751 to i32
  call void @__asan_store2_noabort(i32 %574)
  store i16 0, ptr %flags.i751, align 2
  %buf.i753 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i750, i32 0, i32 3
  %575 = ptrtoint ptr %buf.i753 to i32
  call void @__asan_store4_noabort(i32 %575)
  store ptr %msg.i749, ptr %buf.i753, align 4
  %576 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %adac_type.i, align 8
  %578 = zext i32 %577 to i64
  call void @__sanitizer_cov_trace_switch(i64 %578, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %577, label %msp_writereg.exit748.msp_writereg.exit768_crit_edge [
    i32 2, label %msp_writereg.exit748.sw.epilog.i760_crit_edge
    i32 3, label %sw.bb14.i755
  ]

msp_writereg.exit748.sw.epilog.i760_crit_edge:    ; preds = %msp_writereg.exit748
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i760

msp_writereg.exit748.msp_writereg.exit768_crit_edge: ; preds = %msp_writereg.exit748
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit768

sw.bb14.i755:                                     ; preds = %msp_writereg.exit748
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i760

sw.epilog.i760:                                   ; preds = %sw.bb14.i755, %msp_writereg.exit748.sw.epilog.i760_crit_edge
  %storemerge.i756 = phi i16 [ 66, %sw.bb14.i755 ], [ 64, %msp_writereg.exit748.sw.epilog.i760_crit_edge ]
  %579 = ptrtoint ptr %msgs.i750 to i32
  call void @__asan_store2_noabort(i32 %579)
  store i16 %storemerge.i756, ptr %msgs.i750, align 4
  %i2c_adap.i757 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i758 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i757, ptr noundef nonnull %msgs.i750, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i758)
  %cmp.not.i759 = icmp eq i32 %call.i758, 1
  br i1 %cmp.not.i759, label %sw.epilog.i760.msp_writereg.exit768_crit_edge, label %do.body.i763

sw.epilog.i760.msp_writereg.exit768_crit_edge:    ; preds = %sw.epilog.i760
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit768

do.body.i763:                                     ; preds = %sw.epilog.i760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %580 = load i32, ptr @av7110_debug, align 4
  %and17.i761 = and i32 %580, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i761)
  %tobool.not.i762 = icmp eq i32 %and17.i761, 0
  br i1 %tobool.not.i762, label %do.body.i763.msp_writereg.exit768_crit_edge, label %do.end.i766

do.body.i763.msp_writereg.exit768_crit_edge:      ; preds = %do.body.i763
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit768

do.end.i766:                                      ; preds = %do.body.i763
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i764 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %581 = ptrtoint ptr %dvb_adapter.i764 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %dvb_adapter.i764, align 4
  %call22.i765 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %582, i32 noundef 5, i32 noundef 72) #8
  br label %msp_writereg.exit768

msp_writereg.exit768:                             ; preds = %do.end.i766, %do.body.i763.msp_writereg.exit768_crit_edge, %sw.epilog.i760.msp_writereg.exit768_crit_edge, %msp_writereg.exit748.msp_writereg.exit768_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i750) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i749) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i769) #5
  %583 = getelementptr inbounds [5 x i8], ptr %msg.i769, i32 0, i32 1
  %584 = getelementptr inbounds [5 x i8], ptr %msg.i769, i32 0, i32 2
  %585 = getelementptr inbounds [5 x i8], ptr %msg.i769, i32 0, i32 3
  %586 = getelementptr inbounds [5 x i8], ptr %msg.i769, i32 0, i32 4
  %587 = ptrtoint ptr %msg.i769 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 16, ptr %msg.i769, align 1
  %588 = ptrtoint ptr %583 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 0, ptr %583, align 1
  %589 = ptrtoint ptr %584 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 -125, ptr %584, align 1
  %590 = ptrtoint ptr %585 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 -96, ptr %585, align 1
  %591 = ptrtoint ptr %586 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 0, ptr %586, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i770) #5
  %592 = getelementptr inbounds i8, ptr %msgs.i770, i32 4
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 393215, ptr %592, align 4
  %flags.i771 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i770, i32 0, i32 1
  %594 = ptrtoint ptr %flags.i771 to i32
  call void @__asan_store2_noabort(i32 %594)
  store i16 0, ptr %flags.i771, align 2
  %buf.i773 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i770, i32 0, i32 3
  %595 = ptrtoint ptr %buf.i773 to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr %msg.i769, ptr %buf.i773, align 4
  %596 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %adac_type.i, align 8
  %598 = zext i32 %597 to i64
  call void @__sanitizer_cov_trace_switch(i64 %598, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %597, label %msp_writereg.exit768.msp_writereg.exit788_crit_edge [
    i32 2, label %msp_writereg.exit768.sw.epilog.i780_crit_edge
    i32 3, label %sw.bb14.i775
  ]

msp_writereg.exit768.sw.epilog.i780_crit_edge:    ; preds = %msp_writereg.exit768
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i780

msp_writereg.exit768.msp_writereg.exit788_crit_edge: ; preds = %msp_writereg.exit768
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit788

sw.bb14.i775:                                     ; preds = %msp_writereg.exit768
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i780

sw.epilog.i780:                                   ; preds = %sw.bb14.i775, %msp_writereg.exit768.sw.epilog.i780_crit_edge
  %storemerge.i776 = phi i16 [ 66, %sw.bb14.i775 ], [ 64, %msp_writereg.exit768.sw.epilog.i780_crit_edge ]
  %599 = ptrtoint ptr %msgs.i770 to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 %storemerge.i776, ptr %msgs.i770, align 4
  %i2c_adap.i777 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i778 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i777, ptr noundef nonnull %msgs.i770, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i778)
  %cmp.not.i779 = icmp eq i32 %call.i778, 1
  br i1 %cmp.not.i779, label %sw.epilog.i780.msp_writereg.exit788_crit_edge, label %do.body.i783

sw.epilog.i780.msp_writereg.exit788_crit_edge:    ; preds = %sw.epilog.i780
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit788

do.body.i783:                                     ; preds = %sw.epilog.i780
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %600 = load i32, ptr @av7110_debug, align 4
  %and17.i781 = and i32 %600, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i781)
  %tobool.not.i782 = icmp eq i32 %and17.i781, 0
  br i1 %tobool.not.i782, label %do.body.i783.msp_writereg.exit788_crit_edge, label %do.end.i786

do.body.i783.msp_writereg.exit788_crit_edge:      ; preds = %do.body.i783
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit788

do.end.i786:                                      ; preds = %do.body.i783
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i784 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %601 = ptrtoint ptr %dvb_adapter.i784 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %dvb_adapter.i784, align 4
  %call22.i785 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %602, i32 noundef 131, i32 noundef 40960) #8
  br label %msp_writereg.exit788

msp_writereg.exit788:                             ; preds = %do.end.i786, %do.body.i783.msp_writereg.exit788_crit_edge, %sw.epilog.i780.msp_writereg.exit788_crit_edge, %msp_writereg.exit768.msp_writereg.exit788_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i770) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i769) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i789) #5
  %603 = getelementptr inbounds [5 x i8], ptr %msg.i789, i32 0, i32 1
  %604 = getelementptr inbounds [5 x i8], ptr %msg.i789, i32 0, i32 2
  %605 = getelementptr inbounds [5 x i8], ptr %msg.i789, i32 0, i32 3
  %606 = getelementptr inbounds [5 x i8], ptr %msg.i789, i32 0, i32 4
  %607 = ptrtoint ptr %msg.i789 to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 16, ptr %msg.i789, align 1
  %608 = ptrtoint ptr %603 to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 0, ptr %603, align 1
  %609 = ptrtoint ptr %604 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 -109, ptr %604, align 1
  %610 = ptrtoint ptr %605 to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 0, ptr %605, align 1
  %611 = ptrtoint ptr %606 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 -86, ptr %606, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i790) #5
  %612 = getelementptr inbounds i8, ptr %msgs.i790, i32 4
  %613 = ptrtoint ptr %612 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 393215, ptr %612, align 4
  %flags.i791 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i790, i32 0, i32 1
  %614 = ptrtoint ptr %flags.i791 to i32
  call void @__asan_store2_noabort(i32 %614)
  store i16 0, ptr %flags.i791, align 2
  %buf.i793 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i790, i32 0, i32 3
  %615 = ptrtoint ptr %buf.i793 to i32
  call void @__asan_store4_noabort(i32 %615)
  store ptr %msg.i789, ptr %buf.i793, align 4
  %616 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %adac_type.i, align 8
  %618 = zext i32 %617 to i64
  call void @__sanitizer_cov_trace_switch(i64 %618, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %617, label %msp_writereg.exit788.msp_writereg.exit808_crit_edge [
    i32 2, label %msp_writereg.exit788.sw.epilog.i800_crit_edge
    i32 3, label %sw.bb14.i795
  ]

msp_writereg.exit788.sw.epilog.i800_crit_edge:    ; preds = %msp_writereg.exit788
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i800

msp_writereg.exit788.msp_writereg.exit808_crit_edge: ; preds = %msp_writereg.exit788
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit808

sw.bb14.i795:                                     ; preds = %msp_writereg.exit788
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i800

sw.epilog.i800:                                   ; preds = %sw.bb14.i795, %msp_writereg.exit788.sw.epilog.i800_crit_edge
  %storemerge.i796 = phi i16 [ 66, %sw.bb14.i795 ], [ 64, %msp_writereg.exit788.sw.epilog.i800_crit_edge ]
  %619 = ptrtoint ptr %msgs.i790 to i32
  call void @__asan_store2_noabort(i32 %619)
  store i16 %storemerge.i796, ptr %msgs.i790, align 4
  %i2c_adap.i797 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i798 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i797, ptr noundef nonnull %msgs.i790, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i798)
  %cmp.not.i799 = icmp eq i32 %call.i798, 1
  br i1 %cmp.not.i799, label %sw.epilog.i800.msp_writereg.exit808_crit_edge, label %do.body.i803

sw.epilog.i800.msp_writereg.exit808_crit_edge:    ; preds = %sw.epilog.i800
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit808

do.body.i803:                                     ; preds = %sw.epilog.i800
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %620 = load i32, ptr @av7110_debug, align 4
  %and17.i801 = and i32 %620, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i801)
  %tobool.not.i802 = icmp eq i32 %and17.i801, 0
  br i1 %tobool.not.i802, label %do.body.i803.msp_writereg.exit808_crit_edge, label %do.end.i806

do.body.i803.msp_writereg.exit808_crit_edge:      ; preds = %do.body.i803
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit808

do.end.i806:                                      ; preds = %do.body.i803
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i804 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %621 = ptrtoint ptr %dvb_adapter.i804 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %dvb_adapter.i804, align 4
  %call22.i805 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %622, i32 noundef 147, i32 noundef 170) #8
  br label %msp_writereg.exit808

msp_writereg.exit808:                             ; preds = %do.end.i806, %do.body.i803.msp_writereg.exit808_crit_edge, %sw.epilog.i800.msp_writereg.exit808_crit_edge, %msp_writereg.exit788.msp_writereg.exit808_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i790) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i789) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i809) #5
  %623 = getelementptr inbounds [5 x i8], ptr %msg.i809, i32 0, i32 1
  %624 = getelementptr inbounds [5 x i8], ptr %msg.i809, i32 0, i32 2
  %625 = getelementptr inbounds [5 x i8], ptr %msg.i809, i32 0, i32 3
  %626 = getelementptr inbounds [5 x i8], ptr %msg.i809, i32 0, i32 4
  %627 = ptrtoint ptr %msg.i809 to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 16, ptr %msg.i809, align 1
  %628 = ptrtoint ptr %623 to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 0, ptr %623, align 1
  %629 = ptrtoint ptr %624 to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 -101, ptr %624, align 1
  %630 = ptrtoint ptr %625 to i32
  call void @__asan_store1_noabort(i32 %630)
  store i8 4, ptr %625, align 1
  %631 = ptrtoint ptr %626 to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 -4, ptr %626, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i810) #5
  %632 = getelementptr inbounds i8, ptr %msgs.i810, i32 4
  %633 = ptrtoint ptr %632 to i32
  call void @__asan_store4_noabort(i32 %633)
  store i32 393215, ptr %632, align 4
  %flags.i811 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i810, i32 0, i32 1
  %634 = ptrtoint ptr %flags.i811 to i32
  call void @__asan_store2_noabort(i32 %634)
  store i16 0, ptr %flags.i811, align 2
  %buf.i813 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i810, i32 0, i32 3
  %635 = ptrtoint ptr %buf.i813 to i32
  call void @__asan_store4_noabort(i32 %635)
  store ptr %msg.i809, ptr %buf.i813, align 4
  %636 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %adac_type.i, align 8
  %638 = zext i32 %637 to i64
  call void @__sanitizer_cov_trace_switch(i64 %638, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %637, label %msp_writereg.exit808.msp_writereg.exit828_crit_edge [
    i32 2, label %msp_writereg.exit808.sw.epilog.i820_crit_edge
    i32 3, label %sw.bb14.i815
  ]

msp_writereg.exit808.sw.epilog.i820_crit_edge:    ; preds = %msp_writereg.exit808
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i820

msp_writereg.exit808.msp_writereg.exit828_crit_edge: ; preds = %msp_writereg.exit808
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit828

sw.bb14.i815:                                     ; preds = %msp_writereg.exit808
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i820

sw.epilog.i820:                                   ; preds = %sw.bb14.i815, %msp_writereg.exit808.sw.epilog.i820_crit_edge
  %storemerge.i816 = phi i16 [ 66, %sw.bb14.i815 ], [ 64, %msp_writereg.exit808.sw.epilog.i820_crit_edge ]
  %639 = ptrtoint ptr %msgs.i810 to i32
  call void @__asan_store2_noabort(i32 %639)
  store i16 %storemerge.i816, ptr %msgs.i810, align 4
  %i2c_adap.i817 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i818 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i817, ptr noundef nonnull %msgs.i810, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i818)
  %cmp.not.i819 = icmp eq i32 %call.i818, 1
  br i1 %cmp.not.i819, label %sw.epilog.i820.msp_writereg.exit828_crit_edge, label %do.body.i823

sw.epilog.i820.msp_writereg.exit828_crit_edge:    ; preds = %sw.epilog.i820
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit828

do.body.i823:                                     ; preds = %sw.epilog.i820
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %640 = load i32, ptr @av7110_debug, align 4
  %and17.i821 = and i32 %640, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i821)
  %tobool.not.i822 = icmp eq i32 %and17.i821, 0
  br i1 %tobool.not.i822, label %do.body.i823.msp_writereg.exit828_crit_edge, label %do.end.i826

do.body.i823.msp_writereg.exit828_crit_edge:      ; preds = %do.body.i823
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit828

do.end.i826:                                      ; preds = %do.body.i823
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i824 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %641 = ptrtoint ptr %dvb_adapter.i824 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %dvb_adapter.i824, align 4
  %call22.i825 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %642, i32 noundef 155, i32 noundef 1276) #8
  br label %msp_writereg.exit828

msp_writereg.exit828:                             ; preds = %do.end.i826, %do.body.i823.msp_writereg.exit828_crit_edge, %sw.epilog.i820.msp_writereg.exit828_crit_edge, %msp_writereg.exit808.msp_writereg.exit828_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i810) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i809) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i829) #5
  %643 = getelementptr inbounds [5 x i8], ptr %msg.i829, i32 0, i32 1
  %644 = getelementptr inbounds [5 x i8], ptr %msg.i829, i32 0, i32 2
  %645 = getelementptr inbounds [5 x i8], ptr %msg.i829, i32 0, i32 3
  %646 = getelementptr inbounds [5 x i8], ptr %msg.i829, i32 0, i32 4
  %647 = ptrtoint ptr %msg.i829 to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 16, ptr %msg.i829, align 1
  %648 = ptrtoint ptr %643 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 0, ptr %643, align 1
  %649 = ptrtoint ptr %644 to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 -93, ptr %644, align 1
  %650 = ptrtoint ptr %645 to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 3, ptr %645, align 1
  %651 = ptrtoint ptr %646 to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 -114, ptr %646, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i830) #5
  %652 = getelementptr inbounds i8, ptr %msgs.i830, i32 4
  %653 = ptrtoint ptr %652 to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 393215, ptr %652, align 4
  %flags.i831 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i830, i32 0, i32 1
  %654 = ptrtoint ptr %flags.i831 to i32
  call void @__asan_store2_noabort(i32 %654)
  store i16 0, ptr %flags.i831, align 2
  %buf.i833 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i830, i32 0, i32 3
  %655 = ptrtoint ptr %buf.i833 to i32
  call void @__asan_store4_noabort(i32 %655)
  store ptr %msg.i829, ptr %buf.i833, align 4
  %656 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %adac_type.i, align 8
  %658 = zext i32 %657 to i64
  call void @__sanitizer_cov_trace_switch(i64 %658, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %657, label %msp_writereg.exit828.msp_writereg.exit848_crit_edge [
    i32 2, label %msp_writereg.exit828.sw.epilog.i840_crit_edge
    i32 3, label %sw.bb14.i835
  ]

msp_writereg.exit828.sw.epilog.i840_crit_edge:    ; preds = %msp_writereg.exit828
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i840

msp_writereg.exit828.msp_writereg.exit848_crit_edge: ; preds = %msp_writereg.exit828
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit848

sw.bb14.i835:                                     ; preds = %msp_writereg.exit828
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i840

sw.epilog.i840:                                   ; preds = %sw.bb14.i835, %msp_writereg.exit828.sw.epilog.i840_crit_edge
  %storemerge.i836 = phi i16 [ 66, %sw.bb14.i835 ], [ 64, %msp_writereg.exit828.sw.epilog.i840_crit_edge ]
  %659 = ptrtoint ptr %msgs.i830 to i32
  call void @__asan_store2_noabort(i32 %659)
  store i16 %storemerge.i836, ptr %msgs.i830, align 4
  %i2c_adap.i837 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i838 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i837, ptr noundef nonnull %msgs.i830, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i838)
  %cmp.not.i839 = icmp eq i32 %call.i838, 1
  br i1 %cmp.not.i839, label %sw.epilog.i840.msp_writereg.exit848_crit_edge, label %do.body.i843

sw.epilog.i840.msp_writereg.exit848_crit_edge:    ; preds = %sw.epilog.i840
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit848

do.body.i843:                                     ; preds = %sw.epilog.i840
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %660 = load i32, ptr @av7110_debug, align 4
  %and17.i841 = and i32 %660, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i841)
  %tobool.not.i842 = icmp eq i32 %and17.i841, 0
  br i1 %tobool.not.i842, label %do.body.i843.msp_writereg.exit848_crit_edge, label %do.end.i846

do.body.i843.msp_writereg.exit848_crit_edge:      ; preds = %do.body.i843
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit848

do.end.i846:                                      ; preds = %do.body.i843
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i844 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %661 = ptrtoint ptr %dvb_adapter.i844 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %dvb_adapter.i844, align 4
  %call22.i845 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %662, i32 noundef 163, i32 noundef 910) #8
  br label %msp_writereg.exit848

msp_writereg.exit848:                             ; preds = %do.end.i846, %do.body.i843.msp_writereg.exit848_crit_edge, %sw.epilog.i840.msp_writereg.exit848_crit_edge, %msp_writereg.exit828.msp_writereg.exit848_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i830) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i829) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i849) #5
  %663 = getelementptr inbounds [5 x i8], ptr %msg.i849, i32 0, i32 1
  %664 = getelementptr inbounds [5 x i8], ptr %msg.i849, i32 0, i32 2
  %665 = getelementptr inbounds [5 x i8], ptr %msg.i849, i32 0, i32 3
  %666 = getelementptr inbounds [5 x i8], ptr %msg.i849, i32 0, i32 4
  %667 = ptrtoint ptr %msg.i849 to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 16, ptr %msg.i849, align 1
  %668 = ptrtoint ptr %663 to i32
  call void @__asan_store1_noabort(i32 %668)
  store i8 0, ptr %663, align 1
  %669 = ptrtoint ptr %664 to i32
  call void @__asan_store1_noabort(i32 %669)
  store i8 -85, ptr %664, align 1
  %670 = ptrtoint ptr %665 to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 4, ptr %665, align 1
  %671 = ptrtoint ptr %666 to i32
  call void @__asan_store1_noabort(i32 %671)
  store i8 -58, ptr %666, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i850) #5
  %672 = getelementptr inbounds i8, ptr %msgs.i850, i32 4
  %673 = ptrtoint ptr %672 to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 393215, ptr %672, align 4
  %flags.i851 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i850, i32 0, i32 1
  %674 = ptrtoint ptr %flags.i851 to i32
  call void @__asan_store2_noabort(i32 %674)
  store i16 0, ptr %flags.i851, align 2
  %buf.i853 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i850, i32 0, i32 3
  %675 = ptrtoint ptr %buf.i853 to i32
  call void @__asan_store4_noabort(i32 %675)
  store ptr %msg.i849, ptr %buf.i853, align 4
  %676 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %adac_type.i, align 8
  %678 = zext i32 %677 to i64
  call void @__sanitizer_cov_trace_switch(i64 %678, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %677, label %msp_writereg.exit848.msp_writereg.exit868_crit_edge [
    i32 2, label %msp_writereg.exit848.sw.epilog.i860_crit_edge
    i32 3, label %sw.bb14.i855
  ]

msp_writereg.exit848.sw.epilog.i860_crit_edge:    ; preds = %msp_writereg.exit848
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i860

msp_writereg.exit848.msp_writereg.exit868_crit_edge: ; preds = %msp_writereg.exit848
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit868

sw.bb14.i855:                                     ; preds = %msp_writereg.exit848
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i860

sw.epilog.i860:                                   ; preds = %sw.bb14.i855, %msp_writereg.exit848.sw.epilog.i860_crit_edge
  %storemerge.i856 = phi i16 [ 66, %sw.bb14.i855 ], [ 64, %msp_writereg.exit848.sw.epilog.i860_crit_edge ]
  %679 = ptrtoint ptr %msgs.i850 to i32
  call void @__asan_store2_noabort(i32 %679)
  store i16 %storemerge.i856, ptr %msgs.i850, align 4
  %i2c_adap.i857 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i858 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i857, ptr noundef nonnull %msgs.i850, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i858)
  %cmp.not.i859 = icmp eq i32 %call.i858, 1
  br i1 %cmp.not.i859, label %sw.epilog.i860.msp_writereg.exit868_crit_edge, label %do.body.i863

sw.epilog.i860.msp_writereg.exit868_crit_edge:    ; preds = %sw.epilog.i860
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit868

do.body.i863:                                     ; preds = %sw.epilog.i860
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %680 = load i32, ptr @av7110_debug, align 4
  %and17.i861 = and i32 %680, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i861)
  %tobool.not.i862 = icmp eq i32 %and17.i861, 0
  br i1 %tobool.not.i862, label %do.body.i863.msp_writereg.exit868_crit_edge, label %do.end.i866

do.body.i863.msp_writereg.exit868_crit_edge:      ; preds = %do.body.i863
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit868

do.end.i866:                                      ; preds = %do.body.i863
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i864 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %681 = ptrtoint ptr %dvb_adapter.i864 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %dvb_adapter.i864, align 4
  %call22.i865 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %682, i32 noundef 171, i32 noundef 1222) #8
  br label %msp_writereg.exit868

msp_writereg.exit868:                             ; preds = %do.end.i866, %do.body.i863.msp_writereg.exit868_crit_edge, %sw.epilog.i860.msp_writereg.exit868_crit_edge, %msp_writereg.exit848.msp_writereg.exit868_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i850) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i849) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i869) #5
  %683 = getelementptr inbounds [5 x i8], ptr %msg.i869, i32 0, i32 1
  %684 = getelementptr inbounds [5 x i8], ptr %msg.i869, i32 0, i32 2
  %685 = getelementptr inbounds [5 x i8], ptr %msg.i869, i32 0, i32 3
  %686 = getelementptr inbounds [5 x i8], ptr %msg.i869, i32 0, i32 4
  %687 = ptrtoint ptr %msg.i869 to i32
  call void @__asan_store1_noabort(i32 %687)
  store i8 16, ptr %msg.i869, align 1
  %688 = ptrtoint ptr %683 to i32
  call void @__asan_store1_noabort(i32 %688)
  store i8 0, ptr %683, align 1
  %689 = ptrtoint ptr %684 to i32
  call void @__asan_store1_noabort(i32 %689)
  store i8 86, ptr %684, align 1
  %690 = ptrtoint ptr %685 to i32
  call void @__asan_store1_noabort(i32 %690)
  store i8 0, ptr %685, align 1
  %691 = ptrtoint ptr %686 to i32
  call void @__asan_store1_noabort(i32 %691)
  store i8 0, ptr %686, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i870) #5
  %692 = getelementptr inbounds i8, ptr %msgs.i870, i32 4
  %693 = ptrtoint ptr %692 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 393215, ptr %692, align 4
  %flags.i871 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i870, i32 0, i32 1
  %694 = ptrtoint ptr %flags.i871 to i32
  call void @__asan_store2_noabort(i32 %694)
  store i16 0, ptr %flags.i871, align 2
  %buf.i873 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i870, i32 0, i32 3
  %695 = ptrtoint ptr %buf.i873 to i32
  call void @__asan_store4_noabort(i32 %695)
  store ptr %msg.i869, ptr %buf.i873, align 4
  %696 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %adac_type.i, align 8
  %698 = zext i32 %697 to i64
  call void @__sanitizer_cov_trace_switch(i64 %698, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %697, label %msp_writereg.exit868.msp_writereg.exit888_crit_edge [
    i32 2, label %msp_writereg.exit868.sw.epilog.i880_crit_edge
    i32 3, label %sw.bb14.i875
  ]

msp_writereg.exit868.sw.epilog.i880_crit_edge:    ; preds = %msp_writereg.exit868
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i880

msp_writereg.exit868.msp_writereg.exit888_crit_edge: ; preds = %msp_writereg.exit868
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit888

sw.bb14.i875:                                     ; preds = %msp_writereg.exit868
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i880

sw.epilog.i880:                                   ; preds = %sw.bb14.i875, %msp_writereg.exit868.sw.epilog.i880_crit_edge
  %storemerge.i876 = phi i16 [ 66, %sw.bb14.i875 ], [ 64, %msp_writereg.exit868.sw.epilog.i880_crit_edge ]
  %699 = ptrtoint ptr %msgs.i870 to i32
  call void @__asan_store2_noabort(i32 %699)
  store i16 %storemerge.i876, ptr %msgs.i870, align 4
  %i2c_adap.i877 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 5
  %call.i878 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i877, ptr noundef nonnull %msgs.i870, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i878)
  %cmp.not.i879 = icmp eq i32 %call.i878, 1
  br i1 %cmp.not.i879, label %sw.epilog.i880.msp_writereg.exit888_crit_edge, label %do.body.i883

sw.epilog.i880.msp_writereg.exit888_crit_edge:    ; preds = %sw.epilog.i880
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit888

do.body.i883:                                     ; preds = %sw.epilog.i880
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %700 = load i32, ptr @av7110_debug, align 4
  %and17.i881 = and i32 %700, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i881)
  %tobool.not.i882 = icmp eq i32 %and17.i881, 0
  br i1 %tobool.not.i882, label %do.body.i883.msp_writereg.exit888_crit_edge, label %do.end.i886

do.body.i883.msp_writereg.exit888_crit_edge:      ; preds = %do.body.i883
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit888

do.end.i886:                                      ; preds = %do.body.i883
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i884 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %701 = ptrtoint ptr %dvb_adapter.i884 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %dvb_adapter.i884, align 4
  %call22.i885 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %702, i32 noundef 86, i32 noundef 0) #8
  br label %msp_writereg.exit888

msp_writereg.exit888:                             ; preds = %do.end.i886, %do.body.i883.msp_writereg.exit888_crit_edge, %sw.epilog.i880.msp_writereg.exit888_crit_edge, %msp_writereg.exit868.msp_writereg.exit888_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i870) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i869) #5
  br label %if.end175

if.end175:                                        ; preds = %msp_writereg.exit888, %do.end49
  %703 = call ptr @memcpy(ptr @standard, ptr @dvb_standard, i32 80)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  call void @arm_heavy_mb() #5
  %dev179 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %704 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %dev179, align 8
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %705, i32 0, i32 5
  %706 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %mem, align 4
  %add.ptr180 = getelementptr i8, ptr %707, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 0) #5, !srcloc !260
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  call void @arm_heavy_mb() #5
  %708 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %dev179, align 8
  %mem185 = getelementptr inbounds %struct.saa7146_dev, ptr %709, i32 0, i32 5
  %710 = ptrtoint ptr %mem185 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %mem185, align 4
  %add.ptr186 = getelementptr i8, ptr %711, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 458755) #5, !srcloc !260
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @arm_heavy_mb() #5
  %712 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %dev179, align 8
  %mem191 = getelementptr inbounds %struct.saa7146_dev, ptr %713, i32 0, i32 5
  %714 = ptrtoint ptr %mem191 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %mem191, align 4
  %add.ptr192 = getelementptr i8, ptr %715, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 393222) #5, !srcloc !260
  br label %cleanup

cleanup:                                          ; preds = %if.end175, %land.lhs.true6.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end175 ], [ -19, %land.lhs.true6.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_writereg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_setgpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_init_v4l(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 7
  %2 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %analog_tuner_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %av7110_vv_data_st.av7110_vv_data_c = select i1 %tobool.not, ptr @av7110_vv_data_st, ptr @av7110_vv_data_c
  %call = tail call i32 @saa7146_vv_init(ptr noundef %1, ptr noundef nonnull %av7110_vv_data_st.av7110_vv_data_c) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %vidioc_enum_input = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 65), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 65)
  %4 = ptrtoint ptr %vidioc_enum_input to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vidioc_enum_input, ptr %vidioc_enum_input, align 4
  %vidioc_g_input = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 66), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 66)
  %5 = ptrtoint ptr %vidioc_g_input to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vidioc_g_input, ptr %vidioc_g_input, align 4
  %vidioc_s_input = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 67), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 67)
  %6 = ptrtoint ptr %vidioc_s_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vidioc_s_input, ptr %vidioc_s_input, align 4
  %vidioc_g_tuner = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 99), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 99)
  %7 = ptrtoint ptr %vidioc_g_tuner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vidioc_g_tuner, ptr %vidioc_g_tuner, align 4
  %vidioc_s_tuner = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 100), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 100)
  %8 = ptrtoint ptr %vidioc_s_tuner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vidioc_s_tuner, ptr %vidioc_s_tuner, align 4
  %vidioc_g_frequency = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 101), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 101)
  %9 = ptrtoint ptr %vidioc_g_frequency to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vidioc_g_frequency, ptr %vidioc_g_frequency, align 4
  %vidioc_s_frequency = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 102), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 102)
  %10 = ptrtoint ptr %vidioc_s_frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vidioc_s_frequency, ptr %vidioc_s_frequency, align 4
  %vidioc_enumaudio = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 79), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 79)
  %11 = ptrtoint ptr %vidioc_enumaudio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vidioc_enumaudio, ptr %vidioc_enumaudio, align 4
  %vidioc_g_audio = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 80), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 80)
  %12 = ptrtoint ptr %vidioc_g_audio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vidioc_g_audio, ptr %vidioc_g_audio, align 4
  %vidioc_s_audio = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 81), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 81)
  %13 = ptrtoint ptr %vidioc_s_audio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vidioc_s_audio, ptr %vidioc_s_audio, align 4
  %vidioc_g_fmt_vbi_cap = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 7, i32 12), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 7, i32 12)
  %14 = ptrtoint ptr %vidioc_g_fmt_vbi_cap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vidioc_g_fmt_vbi_cap, align 4
  %vidioc_g_tuner16 = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 99), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 99)
  %15 = ptrtoint ptr %vidioc_g_tuner16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vidioc_g_tuner, ptr %vidioc_g_tuner16, align 4
  %vidioc_s_tuner18 = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 100), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 100)
  %16 = ptrtoint ptr %vidioc_s_tuner18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vidioc_s_tuner, ptr %vidioc_s_tuner18, align 4
  %vidioc_g_frequency20 = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 101), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 101)
  %17 = ptrtoint ptr %vidioc_g_frequency20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vidioc_g_frequency, ptr %vidioc_g_frequency20, align 4
  %vidioc_s_frequency22 = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 102), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 102)
  %18 = ptrtoint ptr %vidioc_s_frequency22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vidioc_s_frequency, ptr %vidioc_s_frequency22, align 4
  %vidioc_g_fmt_vbi_cap24 = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 12), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 12)
  %19 = ptrtoint ptr %vidioc_g_fmt_vbi_cap24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vidioc_g_fmt_vbi_cap24, align 4
  %vidioc_g_sliced_vbi_cap = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 104), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 104)
  %20 = ptrtoint ptr %vidioc_g_sliced_vbi_cap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vidioc_g_sliced_vbi_cap, ptr %vidioc_g_sliced_vbi_cap, align 4
  %vidioc_g_fmt_sliced_vbi_out = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 15), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 15)
  %21 = ptrtoint ptr %vidioc_g_fmt_sliced_vbi_out to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vidioc_g_fmt_sliced_vbi_out, ptr %vidioc_g_fmt_sliced_vbi_out, align 4
  %vidioc_s_fmt_sliced_vbi_out = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 8, i32 29), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 8, i32 29)
  %22 = ptrtoint ptr %vidioc_s_fmt_sliced_vbi_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vidioc_s_fmt_sliced_vbi_out, ptr %vidioc_s_fmt_sliced_vbi_out, align 4
  %arm_app = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 66
  %23 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arm_app, align 4
  %and = and i32 %24, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9763, i32 %and)
  %cmp = icmp ult i32 %and, 9763
  br i1 %cmp, label %if.then28, label %if.end5.if.end30_crit_edge

if.end5.if.end30_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %capabilities = select i1 %tobool.not, ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_st, i32 0, i32 2), ptr getelementptr inbounds (%struct.saa7146_ext_vv, ptr @av7110_vv_data_c, i32 0, i32 2)
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities, align 4
  %and29 = and i32 %26, -129
  store i32 %and29, ptr %capabilities, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end5.if.end30_crit_edge
  %v4l_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 2
  %call31 = tail call i32 @saa7146_register_device(ptr noundef %v4l_dev, ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end40, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21) #8
  %call39 = tail call i32 @saa7146_vv_release(ptr noundef %1) #5
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %27 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arm_app, align 4
  %and42 = and i32 %28, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9762, i32 %and42)
  %cmp43 = icmp ugt i32 %and42, 9762
  br i1 %cmp43, label %if.then44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  %vbi_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 3
  %call45 = tail call i32 @saa7146_register_device(ptr noundef %vbi_dev, ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.cleanup_crit_edge, label %do.end50

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.then44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end36, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end36 ], [ 0, %if.then44.cleanup_crit_edge ], [ 0, %do.end50 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %analog_tuner_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %9 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i, align 8
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ugt i32 %10, 3
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %if.else.if.end14_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then6.if.end14_crit_edge
  %11 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i, align 8
  %arrayidx = getelementptr [4 x %struct.v4l2_input], ptr @inputs, i32 0, i32 %12
  %13 = call ptr @memcpy(ptr %i, ptr %arrayidx, i32 80)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  %current_input = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %current_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_input, align 8
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %input, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %7 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %5) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, i32 noundef %input) #0 align 64 {
entry:
  %buf.i230.i = alloca [3 x i8], align 1
  %msg.i231.i = alloca %struct.i2c_msg, align 4
  %msg.i210.i = alloca [5 x i8], align 1
  %msgs.i211.i = alloca %struct.i2c_msg, align 4
  %msg.i190.i = alloca [5 x i8], align 1
  %msgs.i191.i = alloca %struct.i2c_msg, align 4
  %msg.i170.i = alloca [5 x i8], align 1
  %msgs.i171.i = alloca %struct.i2c_msg, align 4
  %msg.i150.i = alloca [5 x i8], align 1
  %msgs.i151.i = alloca %struct.i2c_msg, align 4
  %msg.i130.i = alloca [5 x i8], align 1
  %msgs.i131.i = alloca %struct.i2c_msg, align 4
  %msg.i110.i = alloca [5 x i8], align 1
  %msgs.i111.i = alloca %struct.i2c_msg, align 4
  %buf.i101.i = alloca [3 x i8], align 1
  %msg.i102.i = alloca %struct.i2c_msg, align 4
  %msg.i81.i = alloca [5 x i8], align 1
  %msgs.i82.i = alloca %struct.i2c_msg, align 4
  %msg.i61.i = alloca [5 x i8], align 1
  %msgs.i62.i = alloca %struct.i2c_msg, align 4
  %msg.i41.i = alloca [5 x i8], align 1
  %msgs.i42.i = alloca %struct.i2c_msg, align 4
  %msg.i21.i = alloca [5 x i8], align 1
  %msgs.i22.i = alloca %struct.i2c_msg, align 4
  %msg.i1.i = alloca [5 x i8], align 1
  %msgs.i2.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [5 x i8], align 1
  %msgs.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %input) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %analog_tuner_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %tobool7.not = icmp eq i32 %input, 0
  %cond = select i1 %tobool7.not, i32 0, i32 -22
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %input)
  %cmp = icmp ugt i32 %input, 3
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %current_input = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %current_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %input, ptr %current_input, align 8
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %vv_data.i = getelementptr inbounds %struct.saa7146_dev, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %vv_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vv_data.i, align 4
  %ext_priv.i = getelementptr inbounds %struct.saa7146_dev, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %ext_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %14 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end10.do.end4.i_crit_edge, label %do.end.i

if.end10.do.end4.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %13) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end10.do.end4.i_crit_edge
  %video_status.i = getelementptr inbounds %struct.saa7146_vv, ptr %11, i32 0, i32 7
  %15 = ptrtoint ptr %video_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %video_status.i, align 4
  %and5.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp.not.i = icmp eq i32 %and5.i, 0
  br i1 %cmp.not.i, label %do.end4.i.if.end25.i_crit_edge, label %if.then6.i

do.end4.i.if.end25.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then6.i:                                       ; preds = %do.end4.i
  %video_fh.i = getelementptr inbounds %struct.saa7146_vv, ptr %11, i32 0, i32 8
  %17 = ptrtoint ptr %video_fh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %video_fh.i, align 4
  %ov_suspend.i = getelementptr inbounds %struct.saa7146_vv, ptr %11, i32 0, i32 12
  %19 = ptrtoint ptr %ov_suspend.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %ov_suspend.i, align 4
  %call8.i = tail call i32 @saa7146_stop_preview(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %if.then6.i.if.end25.i_crit_edge, label %do.body11.i

if.then6.i.if.end25.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

do.body11.i:                                      ; preds = %if.then6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %20 = load i32, ptr @av7110_debug, align 4
  %and12.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.do.end22.i_crit_edge, label %do.end17.i

do.body11.i.do.end22.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.i

do.end17.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #8
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end17.i, %do.body11.i.do.end22.i_crit_edge
  %21 = ptrtoint ptr %ov_suspend.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ov_suspend.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end22.i, %if.then6.i.if.end25.i_crit_edge, %do.end4.i.if.end25.i_crit_edge
  %current_input.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 8
  %22 = ptrtoint ptr %current_input.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_input.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp26.not.i = icmp eq i32 %23, 0
  br i1 %cmp26.not.i, label %if.else174.i, label %do.body28.i

do.body28.i:                                      ; preds = %if.end25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %24 = load i32, ptr @av7110_debug, align 4
  %and29.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body28.i.do.end39.i_crit_edge, label %do.end34.i

do.body28.i.do.end39.i_crit_edge:                 ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39.i

do.end34.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #7
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40) #8
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end34.i, %do.body28.i.do.end39.i_crit_edge
  %25 = call ptr @memcpy(ptr @standard, ptr @analog_standard, i32 80)
  %26 = ptrtoint ptr %current_input.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_input.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %27, label %do.body162.i [
    i32 1, label %do.body41.i
    i32 2, label %do.body101.i
    i32 3, label %do.body132.i
  ]

do.body41.i:                                      ; preds = %do.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %29 = load i32, ptr @av7110_debug, align 4
  %and42.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %do.body41.i.do.end52.i_crit_edge, label %do.end47.i

do.body41.i.do.end52.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52.i

do.end47.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #7
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.40) #8
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end47.i, %do.body41.i.do.end52.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i.i) #5
  %30 = getelementptr inbounds [5 x i8], ptr %msg.i.i, i32 0, i32 1
  %31 = getelementptr inbounds [5 x i8], ptr %msg.i.i, i32 0, i32 2
  %32 = getelementptr inbounds [5 x i8], ptr %msg.i.i, i32 0, i32 3
  %33 = getelementptr inbounds [5 x i8], ptr %msg.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 18, ptr %msg.i.i, align 1
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %30, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %31, align 1
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %32, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i.i) #5
  %39 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 393215, ptr %39, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %adac_type.i.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 12
  %43 = ptrtoint ptr %adac_type.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %adac_type.i.i, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %44, label %do.end52.i.msp_writereg.exit.i_crit_edge [
    i32 2, label %do.end52.i.sw.epilog.i.i_crit_edge
    i32 3, label %sw.bb14.i.i
  ]

do.end52.i.sw.epilog.i.i_crit_edge:               ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

do.end52.i.msp_writereg.exit.i_crit_edge:         ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit.i

sw.bb14.i.i:                                      ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb14.i.i, %do.end52.i.sw.epilog.i.i_crit_edge
  %storemerge.i.i = phi i16 [ 66, %sw.bb14.i.i ], [ 64, %do.end52.i.sw.epilog.i.i_crit_edge ]
  %46 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %storemerge.i.i, ptr %msgs.i.i, align 4
  %i2c_adap.i.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i.i, ptr noundef nonnull %msgs.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %sw.epilog.i.i.msp_writereg.exit.i_crit_edge, label %do.body.i.i

sw.epilog.i.i.msp_writereg.exit.i_crit_edge:      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit.i

do.body.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %47 = load i32, ptr @av7110_debug, align 4
  %and17.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.msp_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.msp_writereg.exit.i_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %48 = ptrtoint ptr %dvb_adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dvb_adapter.i.i, align 4
  %call22.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %49, i32 noundef 8, i32 noundef 0) #8
  br label %msp_writereg.exit.i

msp_writereg.exit.i:                              ; preds = %do.end.i.i, %do.body.i.i.msp_writereg.exit.i_crit_edge, %sw.epilog.i.i.msp_writereg.exit.i_crit_edge, %do.end52.i.msp_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i1.i) #5
  %50 = getelementptr inbounds [5 x i8], ptr %msg.i1.i, i32 0, i32 1
  %51 = getelementptr inbounds [5 x i8], ptr %msg.i1.i, i32 0, i32 2
  %52 = getelementptr inbounds [5 x i8], ptr %msg.i1.i, i32 0, i32 3
  %53 = getelementptr inbounds [5 x i8], ptr %msg.i1.i, i32 0, i32 4
  %54 = ptrtoint ptr %msg.i1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 18, ptr %msg.i1.i, align 1
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %50, align 1
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 9, ptr %51, align 1
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %52, align 1
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i2.i) #5
  %59 = getelementptr inbounds i8, ptr %msgs.i2.i, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 393215, ptr %59, align 4
  %flags.i3.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i3.i, align 2
  %buf.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i2.i, i32 0, i32 3
  %62 = ptrtoint ptr %buf.i5.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i1.i, ptr %buf.i5.i, align 4
  %63 = ptrtoint ptr %adac_type.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %adac_type.i.i, align 8
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %64, label %msp_writereg.exit.i.msp_writereg.exit20.i_crit_edge [
    i32 2, label %msp_writereg.exit.i.sw.epilog.i12.i_crit_edge
    i32 3, label %sw.bb14.i7.i
  ]

msp_writereg.exit.i.sw.epilog.i12.i_crit_edge:    ; preds = %msp_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i12.i

msp_writereg.exit.i.msp_writereg.exit20.i_crit_edge: ; preds = %msp_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit20.i

sw.bb14.i7.i:                                     ; preds = %msp_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i12.i

sw.epilog.i12.i:                                  ; preds = %sw.bb14.i7.i, %msp_writereg.exit.i.sw.epilog.i12.i_crit_edge
  %storemerge.i8.i = phi i16 [ 66, %sw.bb14.i7.i ], [ 64, %msp_writereg.exit.i.sw.epilog.i12.i_crit_edge ]
  %66 = ptrtoint ptr %msgs.i2.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %storemerge.i8.i, ptr %msgs.i2.i, align 4
  %i2c_adap.i9.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i10.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i9.i, ptr noundef nonnull %msgs.i2.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10.i)
  %cmp.not.i11.i = icmp eq i32 %call.i10.i, 1
  br i1 %cmp.not.i11.i, label %sw.epilog.i12.i.msp_writereg.exit20.i_crit_edge, label %do.body.i15.i

sw.epilog.i12.i.msp_writereg.exit20.i_crit_edge:  ; preds = %sw.epilog.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit20.i

do.body.i15.i:                                    ; preds = %sw.epilog.i12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %67 = load i32, ptr @av7110_debug, align 4
  %and17.i13.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and17.i13.i, 0
  br i1 %tobool.not.i14.i, label %do.body.i15.i.msp_writereg.exit20.i_crit_edge, label %do.end.i18.i

do.body.i15.i.msp_writereg.exit20.i_crit_edge:    ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit20.i

do.end.i18.i:                                     ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i16.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %68 = ptrtoint ptr %dvb_adapter.i16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dvb_adapter.i16.i, align 4
  %call22.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %69, i32 noundef 9, i32 noundef 0) #8
  br label %msp_writereg.exit20.i

msp_writereg.exit20.i:                            ; preds = %do.end.i18.i, %do.body.i15.i.msp_writereg.exit20.i_crit_edge, %sw.epilog.i12.i.msp_writereg.exit20.i_crit_edge, %msp_writereg.exit.i.msp_writereg.exit20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i2.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i1.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i21.i) #5
  %70 = getelementptr inbounds [5 x i8], ptr %msg.i21.i, i32 0, i32 1
  %71 = getelementptr inbounds [5 x i8], ptr %msg.i21.i, i32 0, i32 2
  %72 = getelementptr inbounds [5 x i8], ptr %msg.i21.i, i32 0, i32 3
  %73 = getelementptr inbounds [5 x i8], ptr %msg.i21.i, i32 0, i32 4
  %74 = ptrtoint ptr %msg.i21.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 18, ptr %msg.i21.i, align 1
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %70, align 1
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 10, ptr %71, align 1
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %72, align 1
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i22.i) #5
  %79 = getelementptr inbounds i8, ptr %msgs.i22.i, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 393215, ptr %79, align 4
  %flags.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i22.i, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i23.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i23.i, align 2
  %buf.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i22.i, i32 0, i32 3
  %82 = ptrtoint ptr %buf.i25.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %msg.i21.i, ptr %buf.i25.i, align 4
  %83 = ptrtoint ptr %adac_type.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %adac_type.i.i, align 8
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %84, label %msp_writereg.exit20.i.msp_writereg.exit40.i_crit_edge [
    i32 2, label %msp_writereg.exit20.i.sw.epilog.i32.i_crit_edge
    i32 3, label %sw.bb14.i27.i
  ]

msp_writereg.exit20.i.sw.epilog.i32.i_crit_edge:  ; preds = %msp_writereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i32.i

msp_writereg.exit20.i.msp_writereg.exit40.i_crit_edge: ; preds = %msp_writereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit40.i

sw.bb14.i27.i:                                    ; preds = %msp_writereg.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i32.i

sw.epilog.i32.i:                                  ; preds = %sw.bb14.i27.i, %msp_writereg.exit20.i.sw.epilog.i32.i_crit_edge
  %storemerge.i28.i = phi i16 [ 66, %sw.bb14.i27.i ], [ 64, %msp_writereg.exit20.i.sw.epilog.i32.i_crit_edge ]
  %86 = ptrtoint ptr %msgs.i22.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %storemerge.i28.i, ptr %msgs.i22.i, align 4
  %i2c_adap.i29.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i30.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i29.i, ptr noundef nonnull %msgs.i22.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30.i)
  %cmp.not.i31.i = icmp eq i32 %call.i30.i, 1
  br i1 %cmp.not.i31.i, label %sw.epilog.i32.i.msp_writereg.exit40.i_crit_edge, label %do.body.i35.i

sw.epilog.i32.i.msp_writereg.exit40.i_crit_edge:  ; preds = %sw.epilog.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit40.i

do.body.i35.i:                                    ; preds = %sw.epilog.i32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %87 = load i32, ptr @av7110_debug, align 4
  %and17.i33.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and17.i33.i, 0
  br i1 %tobool.not.i34.i, label %do.body.i35.i.msp_writereg.exit40.i_crit_edge, label %do.end.i38.i

do.body.i35.i.msp_writereg.exit40.i_crit_edge:    ; preds = %do.body.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit40.i

do.end.i38.i:                                     ; preds = %do.body.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i36.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %88 = ptrtoint ptr %dvb_adapter.i36.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dvb_adapter.i36.i, align 4
  %call22.i37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %89, i32 noundef 10, i32 noundef 0) #8
  br label %msp_writereg.exit40.i

msp_writereg.exit40.i:                            ; preds = %do.end.i38.i, %do.body.i35.i.msp_writereg.exit40.i_crit_edge, %sw.epilog.i32.i.msp_writereg.exit40.i_crit_edge, %msp_writereg.exit20.i.msp_writereg.exit40.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i22.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i21.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i41.i) #5
  %90 = getelementptr inbounds [5 x i8], ptr %msg.i41.i, i32 0, i32 1
  %91 = getelementptr inbounds [5 x i8], ptr %msg.i41.i, i32 0, i32 2
  %92 = getelementptr inbounds [5 x i8], ptr %msg.i41.i, i32 0, i32 3
  %93 = getelementptr inbounds [5 x i8], ptr %msg.i41.i, i32 0, i32 4
  %94 = ptrtoint ptr %msg.i41.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 18, ptr %msg.i41.i, align 1
  %95 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %90, align 1
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 14, ptr %91, align 1
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 48, ptr %92, align 1
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i42.i) #5
  %99 = getelementptr inbounds i8, ptr %msgs.i42.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 393215, ptr %99, align 4
  %flags.i43.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i42.i, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i43.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i43.i, align 2
  %buf.i45.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i42.i, i32 0, i32 3
  %102 = ptrtoint ptr %buf.i45.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i41.i, ptr %buf.i45.i, align 4
  %103 = ptrtoint ptr %adac_type.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %adac_type.i.i, align 8
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %104, label %msp_writereg.exit40.i.msp_writereg.exit60.i_crit_edge [
    i32 2, label %msp_writereg.exit40.i.sw.epilog.i52.i_crit_edge
    i32 3, label %sw.bb14.i47.i
  ]

msp_writereg.exit40.i.sw.epilog.i52.i_crit_edge:  ; preds = %msp_writereg.exit40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i52.i

msp_writereg.exit40.i.msp_writereg.exit60.i_crit_edge: ; preds = %msp_writereg.exit40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit60.i

sw.bb14.i47.i:                                    ; preds = %msp_writereg.exit40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i52.i

sw.epilog.i52.i:                                  ; preds = %sw.bb14.i47.i, %msp_writereg.exit40.i.sw.epilog.i52.i_crit_edge
  %storemerge.i48.i = phi i16 [ 66, %sw.bb14.i47.i ], [ 64, %msp_writereg.exit40.i.sw.epilog.i52.i_crit_edge ]
  %106 = ptrtoint ptr %msgs.i42.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %storemerge.i48.i, ptr %msgs.i42.i, align 4
  %i2c_adap.i49.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i50.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i49.i, ptr noundef nonnull %msgs.i42.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50.i)
  %cmp.not.i51.i = icmp eq i32 %call.i50.i, 1
  br i1 %cmp.not.i51.i, label %sw.epilog.i52.i.msp_writereg.exit60.i_crit_edge, label %do.body.i55.i

sw.epilog.i52.i.msp_writereg.exit60.i_crit_edge:  ; preds = %sw.epilog.i52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit60.i

do.body.i55.i:                                    ; preds = %sw.epilog.i52.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %107 = load i32, ptr @av7110_debug, align 4
  %and17.i53.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i53.i)
  %tobool.not.i54.i = icmp eq i32 %and17.i53.i, 0
  br i1 %tobool.not.i54.i, label %do.body.i55.i.msp_writereg.exit60.i_crit_edge, label %do.end.i58.i

do.body.i55.i.msp_writereg.exit60.i_crit_edge:    ; preds = %do.body.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit60.i

do.end.i58.i:                                     ; preds = %do.body.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i56.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %108 = ptrtoint ptr %dvb_adapter.i56.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dvb_adapter.i56.i, align 4
  %call22.i57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %109, i32 noundef 14, i32 noundef 12288) #8
  br label %msp_writereg.exit60.i

msp_writereg.exit60.i:                            ; preds = %do.end.i58.i, %do.body.i55.i.msp_writereg.exit60.i_crit_edge, %sw.epilog.i52.i.msp_writereg.exit60.i_crit_edge, %msp_writereg.exit40.i.msp_writereg.exit60.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i42.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i41.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i61.i) #5
  %110 = getelementptr inbounds [5 x i8], ptr %msg.i61.i, i32 0, i32 1
  %111 = getelementptr inbounds [5 x i8], ptr %msg.i61.i, i32 0, i32 2
  %112 = getelementptr inbounds [5 x i8], ptr %msg.i61.i, i32 0, i32 3
  %113 = getelementptr inbounds [5 x i8], ptr %msg.i61.i, i32 0, i32 4
  %114 = ptrtoint ptr %msg.i61.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 18, ptr %msg.i61.i, align 1
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %110, align 1
  %116 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %111, align 1
  %117 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 79, ptr %112, align 1
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %113, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i62.i) #5
  %119 = getelementptr inbounds i8, ptr %msgs.i62.i, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 393215, ptr %119, align 4
  %flags.i63.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i62.i, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i63.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i63.i, align 2
  %buf.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i62.i, i32 0, i32 3
  %122 = ptrtoint ptr %buf.i65.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %msg.i61.i, ptr %buf.i65.i, align 4
  %123 = ptrtoint ptr %adac_type.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %adac_type.i.i, align 8
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %124, label %msp_writereg.exit60.i.msp_writereg.exit80.i_crit_edge [
    i32 2, label %msp_writereg.exit60.i.sw.epilog.i72.i_crit_edge
    i32 3, label %sw.bb14.i67.i
  ]

msp_writereg.exit60.i.sw.epilog.i72.i_crit_edge:  ; preds = %msp_writereg.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i72.i

msp_writereg.exit60.i.msp_writereg.exit80.i_crit_edge: ; preds = %msp_writereg.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit80.i

sw.bb14.i67.i:                                    ; preds = %msp_writereg.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i72.i

sw.epilog.i72.i:                                  ; preds = %sw.bb14.i67.i, %msp_writereg.exit60.i.sw.epilog.i72.i_crit_edge
  %storemerge.i68.i = phi i16 [ 66, %sw.bb14.i67.i ], [ 64, %msp_writereg.exit60.i.sw.epilog.i72.i_crit_edge ]
  %126 = ptrtoint ptr %msgs.i62.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %storemerge.i68.i, ptr %msgs.i62.i, align 4
  %i2c_adap.i69.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i70.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i69.i, ptr noundef nonnull %msgs.i62.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i70.i)
  %cmp.not.i71.i = icmp eq i32 %call.i70.i, 1
  br i1 %cmp.not.i71.i, label %sw.epilog.i72.i.msp_writereg.exit80.i_crit_edge, label %do.body.i75.i

sw.epilog.i72.i.msp_writereg.exit80.i_crit_edge:  ; preds = %sw.epilog.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit80.i

do.body.i75.i:                                    ; preds = %sw.epilog.i72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %127 = load i32, ptr @av7110_debug, align 4
  %and17.i73.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i73.i)
  %tobool.not.i74.i = icmp eq i32 %and17.i73.i, 0
  br i1 %tobool.not.i74.i, label %do.body.i75.i.msp_writereg.exit80.i_crit_edge, label %do.end.i78.i

do.body.i75.i.msp_writereg.exit80.i_crit_edge:    ; preds = %do.body.i75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit80.i

do.end.i78.i:                                     ; preds = %do.body.i75.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i76.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %128 = ptrtoint ptr %dvb_adapter.i76.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dvb_adapter.i76.i, align 4
  %call22.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %129, i32 noundef 0, i32 noundef 20224) #8
  br label %msp_writereg.exit80.i

msp_writereg.exit80.i:                            ; preds = %do.end.i78.i, %do.body.i75.i.msp_writereg.exit80.i_crit_edge, %sw.epilog.i72.i.msp_writereg.exit80.i_crit_edge, %msp_writereg.exit60.i.msp_writereg.exit80.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i62.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i61.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i81.i) #5
  %130 = getelementptr inbounds [5 x i8], ptr %msg.i81.i, i32 0, i32 1
  %131 = getelementptr inbounds [5 x i8], ptr %msg.i81.i, i32 0, i32 2
  %132 = getelementptr inbounds [5 x i8], ptr %msg.i81.i, i32 0, i32 3
  %133 = getelementptr inbounds [5 x i8], ptr %msg.i81.i, i32 0, i32 4
  %134 = ptrtoint ptr %msg.i81.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 18, ptr %msg.i81.i, align 1
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %130, align 1
  %136 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 7, ptr %131, align 1
  %137 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 79, ptr %132, align 1
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i82.i) #5
  %139 = getelementptr inbounds i8, ptr %msgs.i82.i, i32 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 393215, ptr %139, align 4
  %flags.i83.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i82.i, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i83.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i83.i, align 2
  %buf.i85.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i82.i, i32 0, i32 3
  %142 = ptrtoint ptr %buf.i85.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %msg.i81.i, ptr %buf.i85.i, align 4
  %143 = ptrtoint ptr %adac_type.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %adac_type.i.i, align 8
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %144, label %msp_writereg.exit80.i.msp_writereg.exit100.i_crit_edge [
    i32 2, label %msp_writereg.exit80.i.sw.epilog.i92.i_crit_edge
    i32 3, label %sw.bb14.i87.i
  ]

msp_writereg.exit80.i.sw.epilog.i92.i_crit_edge:  ; preds = %msp_writereg.exit80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i92.i

msp_writereg.exit80.i.msp_writereg.exit100.i_crit_edge: ; preds = %msp_writereg.exit80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit100.i

sw.bb14.i87.i:                                    ; preds = %msp_writereg.exit80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i92.i

sw.epilog.i92.i:                                  ; preds = %sw.bb14.i87.i, %msp_writereg.exit80.i.sw.epilog.i92.i_crit_edge
  %storemerge.i88.i = phi i16 [ 66, %sw.bb14.i87.i ], [ 64, %msp_writereg.exit80.i.sw.epilog.i92.i_crit_edge ]
  %146 = ptrtoint ptr %msgs.i82.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %storemerge.i88.i, ptr %msgs.i82.i, align 4
  %i2c_adap.i89.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i90.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i89.i, ptr noundef nonnull %msgs.i82.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i90.i)
  %cmp.not.i91.i = icmp eq i32 %call.i90.i, 1
  br i1 %cmp.not.i91.i, label %sw.epilog.i92.i.msp_writereg.exit100.i_crit_edge, label %do.body.i95.i

sw.epilog.i92.i.msp_writereg.exit100.i_crit_edge: ; preds = %sw.epilog.i92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit100.i

do.body.i95.i:                                    ; preds = %sw.epilog.i92.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %147 = load i32, ptr @av7110_debug, align 4
  %and17.i93.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i93.i)
  %tobool.not.i94.i = icmp eq i32 %and17.i93.i, 0
  br i1 %tobool.not.i94.i, label %do.body.i95.i.msp_writereg.exit100.i_crit_edge, label %do.end.i98.i

do.body.i95.i.msp_writereg.exit100.i_crit_edge:   ; preds = %do.body.i95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit100.i

do.end.i98.i:                                     ; preds = %do.body.i95.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i96.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %148 = ptrtoint ptr %dvb_adapter.i96.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dvb_adapter.i96.i, align 4
  %call22.i97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %149, i32 noundef 7, i32 noundef 20224) #8
  br label %msp_writereg.exit100.i

msp_writereg.exit100.i:                           ; preds = %do.end.i98.i, %do.body.i95.i.msp_writereg.exit100.i_crit_edge, %sw.epilog.i92.i.msp_writereg.exit100.i_crit_edge, %msp_writereg.exit80.i.msp_writereg.exit100.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i82.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i81.i) #5
  %analog_tuner_flags.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 7
  %150 = ptrtoint ptr %analog_tuner_flags.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %analog_tuner_flags.i, align 4
  %and59.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.else.i, label %if.then61.i

if.then61.i:                                      ; preds = %msp_writereg.exit100.i
  %152 = ptrtoint ptr %ext_priv.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ext_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i101.i) #5
  %154 = getelementptr inbounds [3 x i8], ptr %buf.i101.i, i32 0, i32 1
  %155 = getelementptr inbounds [3 x i8], ptr %buf.i101.i, i32 0, i32 2
  %156 = ptrtoint ptr %buf.i101.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %buf.i101.i, align 1
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 15, ptr %154, align 1
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 96, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102.i) #5
  %159 = getelementptr inbounds i8, ptr %msg.i102.i, i32 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 262143, ptr %159, align 4
  %161 = ptrtoint ptr %msg.i102.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 9, ptr %msg.i102.i, align 4
  %flags.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 1
  %162 = ptrtoint ptr %flags.i103.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %flags.i103.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 3
  %163 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %buf.i101.i, ptr %buf3.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %164 = load i32, ptr @av7110_debug, align 4
  %and.i.i = and i32 %164, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i105.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i105.i, label %if.then61.i.ves1820_writereg.exit.i_crit_edge, label %do.end.i107.i

if.then61.i.ves1820_writereg.exit.i_crit_edge:    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ves1820_writereg.exit.i

do.end.i107.i:                                    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %9) #8
  br label %ves1820_writereg.exit.i

ves1820_writereg.exit.i:                          ; preds = %do.end.i107.i, %if.then61.i.ves1820_writereg.exit.i_crit_edge
  %i2c_adap.i108.i = getelementptr inbounds %struct.av7110, ptr %153, i32 0, i32 5
  %call7.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i108.i, ptr noundef nonnull %msg.i102.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i.i)
  %cmp.not.i109.not.i = icmp eq i32 %call7.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i101.i) #5
  br i1 %cmp.not.i109.not.i, label %ves1820_writereg.exit.i.if.end83.i_crit_edge, label %do.body65.i

ves1820_writereg.exit.i.if.end83.i_crit_edge:     ; preds = %ves1820_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

do.body65.i:                                      ; preds = %ves1820_writereg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %165 = load i32, ptr @av7110_debug, align 4
  %and66.i = and i32 %165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %do.body65.i.if.end83.i_crit_edge, label %do.end71.i

do.body65.i.if.end83.i_crit_edge:                 ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

do.end71.i:                                       ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #7
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.40) #8
  br label %if.end83.i

if.else.i:                                        ; preds = %msp_writereg.exit100.i
  %and79.i = and i32 %151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.else.i.if.end83.i_crit_edge, label %if.then81.i

if.else.i.if.end83.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @saa7146_setgpio(ptr noundef %9, i32 noundef 1, i32 noundef 80) #5
  call void @saa7146_setgpio(ptr noundef %9, i32 noundef 3, i32 noundef 80) #5
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.else.i.if.end83.i_crit_edge, %do.end71.i, %do.body65.i.if.end83.i_crit_edge, %ves1820_writereg.exit.i.if.end83.i_crit_edge
  %call84.i = call i32 @i2c_writereg(ptr noundef %13, i8 noundef zeroext 72, i8 noundef zeroext 2, i8 noundef zeroext -48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call84.i)
  %cmp85.not.i = icmp eq i32 %call84.i, 1
  br i1 %cmp85.not.i, label %if.end83.i.if.end220.i_crit_edge, label %do.body87.i

if.end83.i.if.end220.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.body87.i:                                      ; preds = %if.end83.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %166 = load i32, ptr @av7110_debug, align 4
  %and88.i = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %do.body87.i.if.end220.i_crit_edge, label %do.end93.i

do.body87.i.if.end220.i_crit_edge:                ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.end93.i:                                       ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %167 = ptrtoint ptr %dvb_adapter.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dvb_adapter.i, align 4
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef %168) #8
  br label %if.end220.i

do.body101.i:                                     ; preds = %do.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %169 = load i32, ptr @av7110_debug, align 4
  %and102.i = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %do.body101.i.do.end112.i_crit_edge, label %do.end107.i

do.body101.i.do.end112.i_crit_edge:               ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end112.i

do.end107.i:                                      ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #7
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.40) #8
  br label %do.end112.i

do.end112.i:                                      ; preds = %do.end107.i, %do.body101.i.do.end112.i_crit_edge
  %call113.i = tail call i32 @i2c_writereg(ptr noundef %13, i8 noundef zeroext 72, i8 noundef zeroext 2, i8 noundef zeroext -46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call113.i)
  %cmp114.not.i = icmp eq i32 %call113.i, 1
  br i1 %cmp114.not.i, label %do.end112.i.if.end220.i_crit_edge, label %do.body116.i

do.end112.i.if.end220.i_crit_edge:                ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.body116.i:                                     ; preds = %do.end112.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %170 = load i32, ptr @av7110_debug, align 4
  %and117.i = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %do.body116.i.if.end220.i_crit_edge, label %do.end122.i

do.body116.i.if.end220.i_crit_edge:               ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.end122.i:                                      ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter124.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %171 = ptrtoint ptr %dvb_adapter124.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %dvb_adapter124.i, align 4
  %call126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef %172) #8
  br label %if.end220.i

do.body132.i:                                     ; preds = %do.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %173 = load i32, ptr @av7110_debug, align 4
  %and133.i = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %do.body132.i.do.end143.i_crit_edge, label %do.end138.i

do.body132.i.do.end143.i_crit_edge:               ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end143.i

do.end138.i:                                      ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #7
  %call140.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.40) #8
  br label %do.end143.i

do.end143.i:                                      ; preds = %do.end138.i, %do.body132.i.do.end143.i_crit_edge
  %call144.i = tail call i32 @i2c_writereg(ptr noundef %13, i8 noundef zeroext 72, i8 noundef zeroext 2, i8 noundef zeroext -39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call144.i)
  %cmp145.not.i = icmp eq i32 %call144.i, 1
  br i1 %cmp145.not.i, label %do.end143.i.if.end220.i_crit_edge, label %do.body147.i

do.end143.i.if.end220.i_crit_edge:                ; preds = %do.end143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.body147.i:                                     ; preds = %do.end143.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %174 = load i32, ptr @av7110_debug, align 4
  %and148.i = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %do.body147.i.if.end220.i_crit_edge, label %do.end153.i

do.body147.i.if.end220.i_crit_edge:               ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.end153.i:                                      ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter155.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %175 = ptrtoint ptr %dvb_adapter155.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %dvb_adapter155.i, align 4
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.40, i32 noundef %176) #8
  br label %if.end220.i

do.body162.i:                                     ; preds = %do.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %177 = load i32, ptr @av7110_debug, align 4
  %and163.i = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i, label %do.body162.i.if.end220.i_crit_edge, label %do.end168.i

do.body162.i.if.end220.i_crit_edge:               ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.end168.i:                                      ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #7
  %call170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.40) #8
  br label %if.end220.i

if.else174.i:                                     ; preds = %if.end25.i
  %178 = call ptr @memcpy(ptr @standard, ptr @dvb_standard, i32 80)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %179 = load i32, ptr @av7110_debug, align 4
  %and176.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %if.else174.i.do.end186.i_crit_edge, label %do.end181.i

if.else174.i.do.end186.i_crit_edge:               ; preds = %if.else174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end186.i

do.end181.i:                                      ; preds = %if.else174.i
  call void @__sanitizer_cov_trace_pc() #7
  %call183.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.40) #8
  br label %do.end186.i

do.end186.i:                                      ; preds = %do.end181.i, %if.else174.i.do.end186.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i110.i) #5
  %180 = getelementptr inbounds [5 x i8], ptr %msg.i110.i, i32 0, i32 1
  %181 = getelementptr inbounds [5 x i8], ptr %msg.i110.i, i32 0, i32 2
  %182 = getelementptr inbounds [5 x i8], ptr %msg.i110.i, i32 0, i32 3
  %183 = getelementptr inbounds [5 x i8], ptr %msg.i110.i, i32 0, i32 4
  %184 = ptrtoint ptr %msg.i110.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 18, ptr %msg.i110.i, align 1
  %185 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %180, align 1
  %186 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 8, ptr %181, align 1
  %187 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 2, ptr %182, align 1
  %188 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 32, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i111.i) #5
  %189 = getelementptr inbounds i8, ptr %msgs.i111.i, i32 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 393215, ptr %189, align 4
  %flags.i112.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i111.i, i32 0, i32 1
  %191 = ptrtoint ptr %flags.i112.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i112.i, align 2
  %buf.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i111.i, i32 0, i32 3
  %192 = ptrtoint ptr %buf.i114.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %msg.i110.i, ptr %buf.i114.i, align 4
  %adac_type.i115.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 12
  %193 = ptrtoint ptr %adac_type.i115.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %adac_type.i115.i, align 8
  %195 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %194, label %do.end186.i.msp_writereg.exit129.i_crit_edge [
    i32 2, label %do.end186.i.sw.epilog.i121.i_crit_edge
    i32 3, label %sw.bb14.i116.i
  ]

do.end186.i.sw.epilog.i121.i_crit_edge:           ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i121.i

do.end186.i.msp_writereg.exit129.i_crit_edge:     ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit129.i

sw.bb14.i116.i:                                   ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i121.i

sw.epilog.i121.i:                                 ; preds = %sw.bb14.i116.i, %do.end186.i.sw.epilog.i121.i_crit_edge
  %storemerge.i117.i = phi i16 [ 66, %sw.bb14.i116.i ], [ 64, %do.end186.i.sw.epilog.i121.i_crit_edge ]
  %196 = ptrtoint ptr %msgs.i111.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %storemerge.i117.i, ptr %msgs.i111.i, align 4
  %i2c_adap.i118.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i119.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i118.i, ptr noundef nonnull %msgs.i111.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i119.i)
  %cmp.not.i120.i = icmp eq i32 %call.i119.i, 1
  br i1 %cmp.not.i120.i, label %sw.epilog.i121.i.msp_writereg.exit129.i_crit_edge, label %do.body.i124.i

sw.epilog.i121.i.msp_writereg.exit129.i_crit_edge: ; preds = %sw.epilog.i121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit129.i

do.body.i124.i:                                   ; preds = %sw.epilog.i121.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %197 = load i32, ptr @av7110_debug, align 4
  %and17.i122.i = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i122.i)
  %tobool.not.i123.i = icmp eq i32 %and17.i122.i, 0
  br i1 %tobool.not.i123.i, label %do.body.i124.i.msp_writereg.exit129.i_crit_edge, label %do.end.i127.i

do.body.i124.i.msp_writereg.exit129.i_crit_edge:  ; preds = %do.body.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit129.i

do.end.i127.i:                                    ; preds = %do.body.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i125.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %198 = ptrtoint ptr %dvb_adapter.i125.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dvb_adapter.i125.i, align 4
  %call22.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %199, i32 noundef 8, i32 noundef 544) #8
  br label %msp_writereg.exit129.i

msp_writereg.exit129.i:                           ; preds = %do.end.i127.i, %do.body.i124.i.msp_writereg.exit129.i_crit_edge, %sw.epilog.i121.i.msp_writereg.exit129.i_crit_edge, %do.end186.i.msp_writereg.exit129.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i111.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i110.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i130.i) #5
  %200 = getelementptr inbounds [5 x i8], ptr %msg.i130.i, i32 0, i32 1
  %201 = getelementptr inbounds [5 x i8], ptr %msg.i130.i, i32 0, i32 2
  %202 = getelementptr inbounds [5 x i8], ptr %msg.i130.i, i32 0, i32 3
  %203 = getelementptr inbounds [5 x i8], ptr %msg.i130.i, i32 0, i32 4
  %204 = ptrtoint ptr %msg.i130.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 18, ptr %msg.i130.i, align 1
  %205 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %200, align 1
  %206 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 9, ptr %201, align 1
  %207 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 2, ptr %202, align 1
  %208 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 32, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i131.i) #5
  %209 = getelementptr inbounds i8, ptr %msgs.i131.i, i32 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 393215, ptr %209, align 4
  %flags.i132.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i131.i, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i132.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i132.i, align 2
  %buf.i134.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i131.i, i32 0, i32 3
  %212 = ptrtoint ptr %buf.i134.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %msg.i130.i, ptr %buf.i134.i, align 4
  %213 = ptrtoint ptr %adac_type.i115.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %adac_type.i115.i, align 8
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %214, label %msp_writereg.exit129.i.msp_writereg.exit149.i_crit_edge [
    i32 2, label %msp_writereg.exit129.i.sw.epilog.i141.i_crit_edge
    i32 3, label %sw.bb14.i136.i
  ]

msp_writereg.exit129.i.sw.epilog.i141.i_crit_edge: ; preds = %msp_writereg.exit129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i141.i

msp_writereg.exit129.i.msp_writereg.exit149.i_crit_edge: ; preds = %msp_writereg.exit129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit149.i

sw.bb14.i136.i:                                   ; preds = %msp_writereg.exit129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i141.i

sw.epilog.i141.i:                                 ; preds = %sw.bb14.i136.i, %msp_writereg.exit129.i.sw.epilog.i141.i_crit_edge
  %storemerge.i137.i = phi i16 [ 66, %sw.bb14.i136.i ], [ 64, %msp_writereg.exit129.i.sw.epilog.i141.i_crit_edge ]
  %216 = ptrtoint ptr %msgs.i131.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %storemerge.i137.i, ptr %msgs.i131.i, align 4
  %i2c_adap.i138.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i139.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i138.i, ptr noundef nonnull %msgs.i131.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i139.i)
  %cmp.not.i140.i = icmp eq i32 %call.i139.i, 1
  br i1 %cmp.not.i140.i, label %sw.epilog.i141.i.msp_writereg.exit149.i_crit_edge, label %do.body.i144.i

sw.epilog.i141.i.msp_writereg.exit149.i_crit_edge: ; preds = %sw.epilog.i141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit149.i

do.body.i144.i:                                   ; preds = %sw.epilog.i141.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %217 = load i32, ptr @av7110_debug, align 4
  %and17.i142.i = and i32 %217, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i142.i)
  %tobool.not.i143.i = icmp eq i32 %and17.i142.i, 0
  br i1 %tobool.not.i143.i, label %do.body.i144.i.msp_writereg.exit149.i_crit_edge, label %do.end.i147.i

do.body.i144.i.msp_writereg.exit149.i_crit_edge:  ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit149.i

do.end.i147.i:                                    ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i145.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %218 = ptrtoint ptr %dvb_adapter.i145.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %dvb_adapter.i145.i, align 4
  %call22.i146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %219, i32 noundef 9, i32 noundef 544) #8
  br label %msp_writereg.exit149.i

msp_writereg.exit149.i:                           ; preds = %do.end.i147.i, %do.body.i144.i.msp_writereg.exit149.i_crit_edge, %sw.epilog.i141.i.msp_writereg.exit149.i_crit_edge, %msp_writereg.exit129.i.msp_writereg.exit149.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i131.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i130.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i150.i) #5
  %220 = getelementptr inbounds [5 x i8], ptr %msg.i150.i, i32 0, i32 1
  %221 = getelementptr inbounds [5 x i8], ptr %msg.i150.i, i32 0, i32 2
  %222 = getelementptr inbounds [5 x i8], ptr %msg.i150.i, i32 0, i32 3
  %223 = getelementptr inbounds [5 x i8], ptr %msg.i150.i, i32 0, i32 4
  %224 = ptrtoint ptr %msg.i150.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 18, ptr %msg.i150.i, align 1
  %225 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %220, align 1
  %226 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 10, ptr %221, align 1
  %227 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 2, ptr %222, align 1
  %228 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 32, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i151.i) #5
  %229 = getelementptr inbounds i8, ptr %msgs.i151.i, i32 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 393215, ptr %229, align 4
  %flags.i152.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i151.i, i32 0, i32 1
  %231 = ptrtoint ptr %flags.i152.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %flags.i152.i, align 2
  %buf.i154.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i151.i, i32 0, i32 3
  %232 = ptrtoint ptr %buf.i154.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %msg.i150.i, ptr %buf.i154.i, align 4
  %233 = ptrtoint ptr %adac_type.i115.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %adac_type.i115.i, align 8
  %235 = zext i32 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %234, label %msp_writereg.exit149.i.msp_writereg.exit169.i_crit_edge [
    i32 2, label %msp_writereg.exit149.i.sw.epilog.i161.i_crit_edge
    i32 3, label %sw.bb14.i156.i
  ]

msp_writereg.exit149.i.sw.epilog.i161.i_crit_edge: ; preds = %msp_writereg.exit149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i161.i

msp_writereg.exit149.i.msp_writereg.exit169.i_crit_edge: ; preds = %msp_writereg.exit149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit169.i

sw.bb14.i156.i:                                   ; preds = %msp_writereg.exit149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i161.i

sw.epilog.i161.i:                                 ; preds = %sw.bb14.i156.i, %msp_writereg.exit149.i.sw.epilog.i161.i_crit_edge
  %storemerge.i157.i = phi i16 [ 66, %sw.bb14.i156.i ], [ 64, %msp_writereg.exit149.i.sw.epilog.i161.i_crit_edge ]
  %236 = ptrtoint ptr %msgs.i151.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %storemerge.i157.i, ptr %msgs.i151.i, align 4
  %i2c_adap.i158.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i159.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i158.i, ptr noundef nonnull %msgs.i151.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i159.i)
  %cmp.not.i160.i = icmp eq i32 %call.i159.i, 1
  br i1 %cmp.not.i160.i, label %sw.epilog.i161.i.msp_writereg.exit169.i_crit_edge, label %do.body.i164.i

sw.epilog.i161.i.msp_writereg.exit169.i_crit_edge: ; preds = %sw.epilog.i161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit169.i

do.body.i164.i:                                   ; preds = %sw.epilog.i161.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %237 = load i32, ptr @av7110_debug, align 4
  %and17.i162.i = and i32 %237, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i162.i)
  %tobool.not.i163.i = icmp eq i32 %and17.i162.i, 0
  br i1 %tobool.not.i163.i, label %do.body.i164.i.msp_writereg.exit169.i_crit_edge, label %do.end.i167.i

do.body.i164.i.msp_writereg.exit169.i_crit_edge:  ; preds = %do.body.i164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit169.i

do.end.i167.i:                                    ; preds = %do.body.i164.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i165.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %238 = ptrtoint ptr %dvb_adapter.i165.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %dvb_adapter.i165.i, align 4
  %call22.i166.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %239, i32 noundef 10, i32 noundef 544) #8
  br label %msp_writereg.exit169.i

msp_writereg.exit169.i:                           ; preds = %do.end.i167.i, %do.body.i164.i.msp_writereg.exit169.i_crit_edge, %sw.epilog.i161.i.msp_writereg.exit169.i_crit_edge, %msp_writereg.exit149.i.msp_writereg.exit169.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i151.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i150.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i170.i) #5
  %240 = getelementptr inbounds [5 x i8], ptr %msg.i170.i, i32 0, i32 1
  %241 = getelementptr inbounds [5 x i8], ptr %msg.i170.i, i32 0, i32 2
  %242 = getelementptr inbounds [5 x i8], ptr %msg.i170.i, i32 0, i32 3
  %243 = getelementptr inbounds [5 x i8], ptr %msg.i170.i, i32 0, i32 4
  %244 = ptrtoint ptr %msg.i170.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 18, ptr %msg.i170.i, align 1
  %245 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 0, ptr %240, align 1
  %246 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 14, ptr %241, align 1
  %247 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 48, ptr %242, align 1
  %248 = ptrtoint ptr %243 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %243, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i171.i) #5
  %249 = getelementptr inbounds i8, ptr %msgs.i171.i, i32 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 393215, ptr %249, align 4
  %flags.i172.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 0, i32 1
  %251 = ptrtoint ptr %flags.i172.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 0, ptr %flags.i172.i, align 2
  %buf.i174.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i171.i, i32 0, i32 3
  %252 = ptrtoint ptr %buf.i174.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %msg.i170.i, ptr %buf.i174.i, align 4
  %253 = ptrtoint ptr %adac_type.i115.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %adac_type.i115.i, align 8
  %255 = zext i32 %254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %254, label %msp_writereg.exit169.i.msp_writereg.exit189.i_crit_edge [
    i32 2, label %msp_writereg.exit169.i.sw.epilog.i181.i_crit_edge
    i32 3, label %sw.bb14.i176.i
  ]

msp_writereg.exit169.i.sw.epilog.i181.i_crit_edge: ; preds = %msp_writereg.exit169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i181.i

msp_writereg.exit169.i.msp_writereg.exit189.i_crit_edge: ; preds = %msp_writereg.exit169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit189.i

sw.bb14.i176.i:                                   ; preds = %msp_writereg.exit169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i181.i

sw.epilog.i181.i:                                 ; preds = %sw.bb14.i176.i, %msp_writereg.exit169.i.sw.epilog.i181.i_crit_edge
  %storemerge.i177.i = phi i16 [ 66, %sw.bb14.i176.i ], [ 64, %msp_writereg.exit169.i.sw.epilog.i181.i_crit_edge ]
  %256 = ptrtoint ptr %msgs.i171.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %storemerge.i177.i, ptr %msgs.i171.i, align 4
  %i2c_adap.i178.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i179.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i178.i, ptr noundef nonnull %msgs.i171.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i179.i)
  %cmp.not.i180.i = icmp eq i32 %call.i179.i, 1
  br i1 %cmp.not.i180.i, label %sw.epilog.i181.i.msp_writereg.exit189.i_crit_edge, label %do.body.i184.i

sw.epilog.i181.i.msp_writereg.exit189.i_crit_edge: ; preds = %sw.epilog.i181.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit189.i

do.body.i184.i:                                   ; preds = %sw.epilog.i181.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %257 = load i32, ptr @av7110_debug, align 4
  %and17.i182.i = and i32 %257, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i182.i)
  %tobool.not.i183.i = icmp eq i32 %and17.i182.i, 0
  br i1 %tobool.not.i183.i, label %do.body.i184.i.msp_writereg.exit189.i_crit_edge, label %do.end.i187.i

do.body.i184.i.msp_writereg.exit189.i_crit_edge:  ; preds = %do.body.i184.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit189.i

do.end.i187.i:                                    ; preds = %do.body.i184.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i185.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %258 = ptrtoint ptr %dvb_adapter.i185.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %dvb_adapter.i185.i, align 4
  %call22.i186.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %259, i32 noundef 14, i32 noundef 12288) #8
  br label %msp_writereg.exit189.i

msp_writereg.exit189.i:                           ; preds = %do.end.i187.i, %do.body.i184.i.msp_writereg.exit189.i_crit_edge, %sw.epilog.i181.i.msp_writereg.exit189.i_crit_edge, %msp_writereg.exit169.i.msp_writereg.exit189.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i171.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i170.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i190.i) #5
  %260 = getelementptr inbounds [5 x i8], ptr %msg.i190.i, i32 0, i32 1
  %261 = getelementptr inbounds [5 x i8], ptr %msg.i190.i, i32 0, i32 2
  %262 = getelementptr inbounds [5 x i8], ptr %msg.i190.i, i32 0, i32 3
  %263 = getelementptr inbounds [5 x i8], ptr %msg.i190.i, i32 0, i32 4
  %264 = ptrtoint ptr %msg.i190.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 18, ptr %msg.i190.i, align 1
  %265 = ptrtoint ptr %260 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %260, align 1
  %266 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %261, align 1
  %267 = ptrtoint ptr %262 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 127, ptr %262, align 1
  %268 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 0, ptr %263, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i191.i) #5
  %269 = getelementptr inbounds i8, ptr %msgs.i191.i, i32 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 393215, ptr %269, align 4
  %flags.i192.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i191.i, i32 0, i32 1
  %271 = ptrtoint ptr %flags.i192.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 0, ptr %flags.i192.i, align 2
  %buf.i194.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i191.i, i32 0, i32 3
  %272 = ptrtoint ptr %buf.i194.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %msg.i190.i, ptr %buf.i194.i, align 4
  %273 = ptrtoint ptr %adac_type.i115.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %adac_type.i115.i, align 8
  %275 = zext i32 %274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %274, label %msp_writereg.exit189.i.msp_writereg.exit209.i_crit_edge [
    i32 2, label %msp_writereg.exit189.i.sw.epilog.i201.i_crit_edge
    i32 3, label %sw.bb14.i196.i
  ]

msp_writereg.exit189.i.sw.epilog.i201.i_crit_edge: ; preds = %msp_writereg.exit189.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i201.i

msp_writereg.exit189.i.msp_writereg.exit209.i_crit_edge: ; preds = %msp_writereg.exit189.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit209.i

sw.bb14.i196.i:                                   ; preds = %msp_writereg.exit189.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i201.i

sw.epilog.i201.i:                                 ; preds = %sw.bb14.i196.i, %msp_writereg.exit189.i.sw.epilog.i201.i_crit_edge
  %storemerge.i197.i = phi i16 [ 66, %sw.bb14.i196.i ], [ 64, %msp_writereg.exit189.i.sw.epilog.i201.i_crit_edge ]
  %276 = ptrtoint ptr %msgs.i191.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %storemerge.i197.i, ptr %msgs.i191.i, align 4
  %i2c_adap.i198.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i199.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i198.i, ptr noundef nonnull %msgs.i191.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i199.i)
  %cmp.not.i200.i = icmp eq i32 %call.i199.i, 1
  br i1 %cmp.not.i200.i, label %sw.epilog.i201.i.msp_writereg.exit209.i_crit_edge, label %do.body.i204.i

sw.epilog.i201.i.msp_writereg.exit209.i_crit_edge: ; preds = %sw.epilog.i201.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit209.i

do.body.i204.i:                                   ; preds = %sw.epilog.i201.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %277 = load i32, ptr @av7110_debug, align 4
  %and17.i202.i = and i32 %277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i202.i)
  %tobool.not.i203.i = icmp eq i32 %and17.i202.i, 0
  br i1 %tobool.not.i203.i, label %do.body.i204.i.msp_writereg.exit209.i_crit_edge, label %do.end.i207.i

do.body.i204.i.msp_writereg.exit209.i_crit_edge:  ; preds = %do.body.i204.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit209.i

do.end.i207.i:                                    ; preds = %do.body.i204.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i205.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %278 = ptrtoint ptr %dvb_adapter.i205.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %dvb_adapter.i205.i, align 4
  %call22.i206.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %279, i32 noundef 0, i32 noundef 32512) #8
  br label %msp_writereg.exit209.i

msp_writereg.exit209.i:                           ; preds = %do.end.i207.i, %do.body.i204.i.msp_writereg.exit209.i_crit_edge, %sw.epilog.i201.i.msp_writereg.exit209.i_crit_edge, %msp_writereg.exit189.i.msp_writereg.exit209.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i191.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i190.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i210.i) #5
  %280 = getelementptr inbounds [5 x i8], ptr %msg.i210.i, i32 0, i32 1
  %281 = getelementptr inbounds [5 x i8], ptr %msg.i210.i, i32 0, i32 2
  %282 = getelementptr inbounds [5 x i8], ptr %msg.i210.i, i32 0, i32 3
  %283 = getelementptr inbounds [5 x i8], ptr %msg.i210.i, i32 0, i32 4
  %284 = ptrtoint ptr %msg.i210.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 18, ptr %msg.i210.i, align 1
  %285 = ptrtoint ptr %280 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %280, align 1
  %286 = ptrtoint ptr %281 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 7, ptr %281, align 1
  %287 = ptrtoint ptr %282 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 127, ptr %282, align 1
  %288 = ptrtoint ptr %283 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 0, ptr %283, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i211.i) #5
  %289 = getelementptr inbounds i8, ptr %msgs.i211.i, i32 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 393215, ptr %289, align 4
  %flags.i212.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i211.i, i32 0, i32 1
  %291 = ptrtoint ptr %flags.i212.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 0, ptr %flags.i212.i, align 2
  %buf.i214.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i211.i, i32 0, i32 3
  %292 = ptrtoint ptr %buf.i214.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %msg.i210.i, ptr %buf.i214.i, align 4
  %293 = ptrtoint ptr %adac_type.i115.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %adac_type.i115.i, align 8
  %295 = zext i32 %294 to i64
  call void @__sanitizer_cov_trace_switch(i64 %295, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %294, label %msp_writereg.exit209.i.msp_writereg.exit229.i_crit_edge [
    i32 2, label %msp_writereg.exit209.i.sw.epilog.i221.i_crit_edge
    i32 3, label %sw.bb14.i216.i
  ]

msp_writereg.exit209.i.sw.epilog.i221.i_crit_edge: ; preds = %msp_writereg.exit209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i221.i

msp_writereg.exit209.i.msp_writereg.exit229.i_crit_edge: ; preds = %msp_writereg.exit209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit229.i

sw.bb14.i216.i:                                   ; preds = %msp_writereg.exit209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i221.i

sw.epilog.i221.i:                                 ; preds = %sw.bb14.i216.i, %msp_writereg.exit209.i.sw.epilog.i221.i_crit_edge
  %storemerge.i217.i = phi i16 [ 66, %sw.bb14.i216.i ], [ 64, %msp_writereg.exit209.i.sw.epilog.i221.i_crit_edge ]
  %296 = ptrtoint ptr %msgs.i211.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %storemerge.i217.i, ptr %msgs.i211.i, align 4
  %i2c_adap.i218.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 5
  %call.i219.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i218.i, ptr noundef nonnull %msgs.i211.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i219.i)
  %cmp.not.i220.i = icmp eq i32 %call.i219.i, 1
  br i1 %cmp.not.i220.i, label %sw.epilog.i221.i.msp_writereg.exit229.i_crit_edge, label %do.body.i224.i

sw.epilog.i221.i.msp_writereg.exit229.i_crit_edge: ; preds = %sw.epilog.i221.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit229.i

do.body.i224.i:                                   ; preds = %sw.epilog.i221.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %297 = load i32, ptr @av7110_debug, align 4
  %and17.i222.i = and i32 %297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i222.i)
  %tobool.not.i223.i = icmp eq i32 %and17.i222.i, 0
  br i1 %tobool.not.i223.i, label %do.body.i224.i.msp_writereg.exit229.i_crit_edge, label %do.end.i227.i

do.body.i224.i.msp_writereg.exit229.i_crit_edge:  ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit229.i

do.end.i227.i:                                    ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i225.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 78
  %298 = ptrtoint ptr %dvb_adapter.i225.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %dvb_adapter.i225.i, align 4
  %call22.i226.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %299, i32 noundef 7, i32 noundef 32512) #8
  br label %msp_writereg.exit229.i

msp_writereg.exit229.i:                           ; preds = %do.end.i227.i, %do.body.i224.i.msp_writereg.exit229.i_crit_edge, %sw.epilog.i221.i.msp_writereg.exit229.i_crit_edge, %msp_writereg.exit209.i.msp_writereg.exit229.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i211.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i210.i) #5
  %analog_tuner_flags193.i = getelementptr inbounds %struct.av7110, ptr %13, i32 0, i32 7
  %300 = ptrtoint ptr %analog_tuner_flags193.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %analog_tuner_flags193.i, align 4
  %and194.i = and i32 %301, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i)
  %tobool195.not.i = icmp eq i32 %and194.i, 0
  br i1 %tobool195.not.i, label %if.else213.i, label %if.then196.i

if.then196.i:                                     ; preds = %msp_writereg.exit229.i
  %302 = ptrtoint ptr %ext_priv.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ext_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i230.i) #5
  %304 = getelementptr inbounds [3 x i8], ptr %buf.i230.i, i32 0, i32 1
  %305 = getelementptr inbounds [3 x i8], ptr %buf.i230.i, i32 0, i32 2
  %306 = ptrtoint ptr %buf.i230.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 0, ptr %buf.i230.i, align 1
  %307 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 15, ptr %304, align 1
  %308 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 32, ptr %305, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i231.i) #5
  %309 = getelementptr inbounds i8, ptr %msg.i231.i, i32 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 262143, ptr %309, align 4
  %311 = ptrtoint ptr %msg.i231.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 9, ptr %msg.i231.i, align 4
  %flags.i233.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i231.i, i32 0, i32 1
  %312 = ptrtoint ptr %flags.i233.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 0, ptr %flags.i233.i, align 2
  %buf3.i235.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i231.i, i32 0, i32 3
  %313 = ptrtoint ptr %buf3.i235.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %buf.i230.i, ptr %buf3.i235.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %314 = load i32, ptr @av7110_debug, align 4
  %and.i236.i = and i32 %314, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i236.i)
  %tobool.not.i237.i = icmp eq i32 %and.i236.i, 0
  br i1 %tobool.not.i237.i, label %if.then196.i.ves1820_writereg.exit244.i_crit_edge, label %do.end.i239.i

if.then196.i.ves1820_writereg.exit244.i_crit_edge: ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ves1820_writereg.exit244.i

do.end.i239.i:                                    ; preds = %if.then196.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i238.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %9) #8
  br label %ves1820_writereg.exit244.i

ves1820_writereg.exit244.i:                       ; preds = %do.end.i239.i, %if.then196.i.ves1820_writereg.exit244.i_crit_edge
  %i2c_adap.i240.i = getelementptr inbounds %struct.av7110, ptr %303, i32 0, i32 5
  %call7.i241.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i240.i, ptr noundef nonnull %msg.i231.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i241.i)
  %cmp.not.i242.not.i = icmp eq i32 %call7.i241.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i231.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i230.i) #5
  br i1 %cmp.not.i242.not.i, label %ves1820_writereg.exit244.i.if.end220.i_crit_edge, label %do.body200.i

ves1820_writereg.exit244.i.if.end220.i_crit_edge: ; preds = %ves1820_writereg.exit244.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.body200.i:                                     ; preds = %ves1820_writereg.exit244.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %315 = load i32, ptr @av7110_debug, align 4
  %and201.i = and i32 %315, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201.i)
  %tobool202.not.i = icmp eq i32 %and201.i, 0
  br i1 %tobool202.not.i, label %do.body200.i.if.end220.i_crit_edge, label %do.end206.i

do.body200.i.if.end220.i_crit_edge:               ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

do.end206.i:                                      ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #7
  %call208.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.40) #8
  br label %if.end220.i

if.else213.i:                                     ; preds = %msp_writereg.exit229.i
  %and215.i = and i32 %301, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i)
  %tobool216.not.i = icmp eq i32 %and215.i, 0
  br i1 %tobool216.not.i, label %if.else213.i.if.end220.i_crit_edge, label %if.then217.i

if.else213.i.if.end220.i_crit_edge:               ; preds = %if.else213.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220.i

if.then217.i:                                     ; preds = %if.else213.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @saa7146_setgpio(ptr noundef %9, i32 noundef 1, i32 noundef 64) #5
  call void @saa7146_setgpio(ptr noundef %9, i32 noundef 3, i32 noundef 64) #5
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then217.i, %if.else213.i.if.end220.i_crit_edge, %do.end206.i, %do.body200.i.if.end220.i_crit_edge, %ves1820_writereg.exit244.i.if.end220.i_crit_edge, %do.end168.i, %do.body162.i.if.end220.i_crit_edge, %do.end153.i, %do.body147.i.if.end220.i_crit_edge, %do.end143.i.if.end220.i_crit_edge, %do.end122.i, %do.body116.i.if.end220.i_crit_edge, %do.end112.i.if.end220.i_crit_edge, %do.end93.i, %do.body87.i.if.end220.i_crit_edge, %if.end83.i.if.end220.i_crit_edge
  %source.0.i = phi i32 [ 1, %do.end168.i ], [ 1, %do.body162.i.if.end220.i_crit_edge ], [ 1, %do.end153.i ], [ 1, %do.body147.i.if.end220.i_crit_edge ], [ 1, %do.end143.i.if.end220.i_crit_edge ], [ 1, %do.end122.i ], [ 1, %do.body116.i.if.end220.i_crit_edge ], [ 1, %do.end112.i.if.end220.i_crit_edge ], [ 1, %do.end93.i ], [ 1, %do.body87.i.if.end220.i_crit_edge ], [ 1, %if.end83.i.if.end220.i_crit_edge ], [ 0, %do.end206.i ], [ 0, %do.body200.i.if.end220.i_crit_edge ], [ 0, %ves1820_writereg.exit244.i.if.end220.i_crit_edge ], [ 0, %if.then217.i ], [ 0, %if.else213.i.if.end220.i_crit_edge ]
  %call221.i = call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %13, i32 noundef 6, i32 noundef 5, i32 noundef 1, i32 noundef %source.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221.i)
  %tobool222.not.i = icmp eq i32 %call221.i, 0
  br i1 %tobool222.not.i, label %if.end220.i.if.end236.i_crit_edge, label %do.body224.i

if.end220.i.if.end236.i_crit_edge:                ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236.i

do.body224.i:                                     ; preds = %if.end220.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %316 = load i32, ptr @av7110_debug, align 4
  %and225.i = and i32 %316, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225.i)
  %tobool226.not.i = icmp eq i32 %and225.i, 0
  br i1 %tobool226.not.i, label %do.body224.i.if.end236.i_crit_edge, label %do.end230.i

do.body224.i.if.end236.i_crit_edge:               ; preds = %do.body224.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236.i

do.end230.i:                                      ; preds = %do.body224.i
  call void @__sanitizer_cov_trace_pc() #7
  %call232.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.40) #8
  br label %if.end236.i

if.end236.i:                                      ; preds = %do.end230.i, %do.body224.i.if.end236.i_crit_edge, %if.end220.i.if.end236.i_crit_edge
  call void @saa7146_set_hps_source_and_sync(ptr noundef %9, i32 noundef %source.0.i, i32 noundef %source.0.i) #5
  %ov_suspend237.i = getelementptr inbounds %struct.saa7146_vv, ptr %11, i32 0, i32 12
  %317 = ptrtoint ptr %ov_suspend237.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ov_suspend237.i, align 4
  %cmp238.not.i = icmp eq ptr %318, null
  br i1 %cmp238.not.i, label %if.end236.i.cleanup_crit_edge, label %if.then240.i

if.end236.i.cleanup_crit_edge:                    ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then240.i:                                     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #7
  %call242.i = call i32 @saa7146_start_preview(ptr noundef nonnull %318) #5
  %319 = ptrtoint ptr %ov_suspend237.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr null, ptr %ov_suspend237.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then240.i, %if.end236.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %cond, %if.then6 ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.end236.i.cleanup_crit_edge ], [ 0, %if.then240.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr noundef %t) #0 align 64 {
entry:
  %msg1.i73 = alloca [3 x i8], align 1
  %msg2.i74 = alloca [2 x i8], align 1
  %msgs.i75 = alloca [2 x %struct.i2c_msg], align 4
  %msg1.i = alloca [3 x i8], align 1
  %msg2.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %analog_tuner_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %lor.lhs.false

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %11 = call ptr @memset(ptr %t, i32 0, i32 84)
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call9 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.81, i32 noundef 32) #5
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %13 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 114, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 4
  %14 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 772, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 5
  %15 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 13684, ptr %rangehigh, align 4
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 8
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65535, ptr %signal, align 4
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 9
  %17 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %afc, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg1.i) #5
  %18 = getelementptr inbounds [3 x i8], ptr %msg1.i, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %msg1.i, i32 0, i32 2
  %20 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %msg1.i, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %18, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 126, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg2.i) #5
  %23 = ptrtoint ptr %msg2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %msg2.i, align 1, !annotation !258
  %24 = getelementptr inbounds [2 x i8], ptr %msg2.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %24, align 1, !annotation !258
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #5
  %26 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i, align 2
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 3, ptr %26, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg1.i, ptr %buf.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %31 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %32 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %len9.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %33 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg2.i, ptr %buf10.i, align 4
  %adac_type.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %adac_type.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %35, label %if.end8.msp_readreg.exit_crit_edge [
    i32 2, label %if.end8.sw.epilog.i_crit_edge
    i32 3, label %sw.bb15.i
  ]

if.end8.sw.epilog.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end8.msp_readreg.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit

sw.bb15.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb15.i, %if.end8.sw.epilog.i_crit_edge
  %storemerge.i = phi i16 [ 66, %sw.bb15.i ], [ 64, %if.end8.sw.epilog.i_crit_edge ]
  %37 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %storemerge.i, ptr %msgs.i, align 4
  %38 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %storemerge.i, ptr %arrayinit.element6.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end29.i, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %39 = load i32, ptr @av7110_debug, align 4
  %and22.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i, label %do.body.i.msp_readreg.exit_crit_edge, label %do.end.i

do.body.i.msp_readreg.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %40 = ptrtoint ptr %dvb_adapter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dvb_adapter.i, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %41, i32 noundef 126) #8
  br label %msp_readreg.exit

if.end29.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %msg2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %msg2.i, align 1
  %conv31.i = zext i8 %43 to i16
  %shl.i = shl nuw i16 %conv31.i, 8
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %24, align 1
  %conv33.i = zext i8 %45 to i16
  %or.i = or i16 %shl.i, %conv33.i
  br label %msp_readreg.exit

msp_readreg.exit:                                 ; preds = %if.end29.i, %do.end.i, %do.body.i.msp_readreg.exit_crit_edge, %if.end8.msp_readreg.exit_crit_edge
  %stereo_det.0 = phi i16 [ -1, %if.end8.msp_readreg.exit_crit_edge ], [ %or.i, %if.end29.i ], [ -1, %do.body.i.msp_readreg.exit_crit_edge ], [ -1, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg2.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg1.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %46 = load i32, ptr @av7110_debug, align 4
  %and12 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %msp_readreg.exit.do.end22_crit_edge, label %do.end17

msp_readreg.exit.do.end22_crit_edge:              ; preds = %msp_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end17:                                         ; preds = %msp_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %stereo_det.0 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.80, i32 noundef %conv) #8
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %msp_readreg.exit.do.end22_crit_edge
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg1.i73) #5
  %47 = getelementptr inbounds [3 x i8], ptr %msg1.i73, i32 0, i32 1
  %48 = getelementptr inbounds [3 x i8], ptr %msg1.i73, i32 0, i32 2
  %49 = ptrtoint ptr %msg1.i73 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 19, ptr %msg1.i73, align 1
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %47, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 24, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg2.i74) #5
  %52 = ptrtoint ptr %msg2.i74 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %msg2.i74, align 1, !annotation !258
  %53 = getelementptr inbounds [2 x i8], ptr %msg2.i74, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %53, align 1, !annotation !258
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i75) #5
  %55 = getelementptr inbounds i8, ptr %msgs.i75, i32 4
  %56 = call ptr @memset(ptr %55, i32 255, i32 16)
  %flags.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i76 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i76, align 2
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 3, ptr %55, align 4
  %buf.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i78 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg1.i73, ptr %buf.i78, align 4
  %arrayinit.element6.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1
  %flags8.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1, i32 1
  %60 = ptrtoint ptr %flags8.i80 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags8.i80, align 2
  %len9.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1, i32 2
  %61 = ptrtoint ptr %len9.i81 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 2, ptr %len9.i81, align 4
  %buf10.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i75, i32 1, i32 3
  %62 = ptrtoint ptr %buf10.i82 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg2.i74, ptr %buf10.i82, align 4
  %63 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %adac_type.i, align 8
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %64, label %do.end22.msp_readreg.exit101_crit_edge [
    i32 2, label %do.end22.sw.epilog.i89_crit_edge
    i32 3, label %sw.bb15.i84
  ]

do.end22.sw.epilog.i89_crit_edge:                 ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i89

do.end22.msp_readreg.exit101_crit_edge:           ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit101

sw.bb15.i84:                                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i89

sw.epilog.i89:                                    ; preds = %sw.bb15.i84, %do.end22.sw.epilog.i89_crit_edge
  %storemerge.i85 = phi i16 [ 66, %sw.bb15.i84 ], [ 64, %do.end22.sw.epilog.i89_crit_edge ]
  %66 = ptrtoint ptr %msgs.i75 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %storemerge.i85, ptr %msgs.i75, align 4
  %67 = ptrtoint ptr %arrayinit.element6.i79 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %storemerge.i85, ptr %arrayinit.element6.i79, align 4
  %i2c_adap.i86 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i87 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i86, ptr noundef nonnull %msgs.i75, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i87)
  %cmp.not.i88 = icmp eq i32 %call.i87, 2
  br i1 %cmp.not.i88, label %if.end29.i100, label %do.body.i92

do.body.i92:                                      ; preds = %sw.epilog.i89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %68 = load i32, ptr @av7110_debug, align 4
  %and22.i90 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i90)
  %tobool.not.i91 = icmp eq i32 %and22.i90, 0
  br i1 %tobool.not.i91, label %do.body.i92.msp_readreg.exit101_crit_edge, label %do.end.i95

do.body.i92.msp_readreg.exit101_crit_edge:        ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_readreg.exit101

do.end.i95:                                       ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i93 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %69 = ptrtoint ptr %dvb_adapter.i93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dvb_adapter.i93, align 4
  %call26.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %70, i32 noundef 24) #8
  br label %msp_readreg.exit101

if.end29.i100:                                    ; preds = %sw.epilog.i89
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %msg2.i74 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %msg2.i74, align 1
  %conv31.i96 = zext i8 %72 to i16
  %shl.i97 = shl nuw i16 %conv31.i96, 8
  %73 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %53, align 1
  %conv33.i98 = zext i8 %74 to i16
  %or.i99 = or i16 %shl.i97, %conv33.i98
  br label %msp_readreg.exit101

msp_readreg.exit101:                              ; preds = %if.end29.i100, %do.end.i95, %do.body.i92.msp_readreg.exit101_crit_edge, %do.end22.msp_readreg.exit101_crit_edge
  %stereo_det.1 = phi i16 [ %stereo_det.0, %do.end22.msp_readreg.exit101_crit_edge ], [ %or.i99, %if.end29.i100 ], [ %stereo_det.0, %do.body.i92.msp_readreg.exit101_crit_edge ], [ %stereo_det.0, %do.end.i95 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i75) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg2.i74) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg1.i73) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %75 = load i32, ptr @av7110_debug, align 4
  %and25 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %msp_readreg.exit101.do.end36_crit_edge, label %do.end30

msp_readreg.exit101.do.end36_crit_edge:           ; preds = %msp_readreg.exit101
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end30:                                         ; preds = %msp_readreg.exit101
  call void @__sanitizer_cov_trace_pc() #7
  %conv32 = zext i16 %stereo_det.1 to i32
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.80, i32 noundef %conv32) #8
  br label %do.end36

do.end36:                                         ; preds = %do.end30, %msp_readreg.exit101.do.end36_crit_edge
  %76 = lshr i16 %stereo_det.1, 8
  %conv38 = zext i16 %76 to i32
  %sext = shl nuw i32 %conv38, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %sext)
  %cmp40 = icmp sgt i32 %sext, 268435456
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %77 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %rxsubchans, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %78 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %audmode, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %sext)
  %cmp44 = icmp slt i32 %sext, -268435456
  %rxsubchans47 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  br i1 %cmp44, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %rxsubchans47 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 12, ptr %rxsubchans47, align 4
  %audmode48 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %80 = ptrtoint ptr %audmode48 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3, ptr %audmode48, align 4
  br label %cleanup

if.else49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %rxsubchans47 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %rxsubchans47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else49, %if.then46, %if.then42, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %if.else49 ], [ 0, %if.then42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %msg.i130 = alloca [5 x i8], align 1
  %msgs.i131 = alloca %struct.i2c_msg, align 4
  %msg.i108 = alloca [5 x i8], align 1
  %msgs.i109 = alloca %struct.i2c_msg, align 4
  %msg.i86 = alloca [5 x i8], align 1
  %msgs.i87 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [5 x i8], align 1
  %msgs.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %analog_tuner_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %lor.lhs.false

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %current_input = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %current_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %11 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audmode, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %12, label %do.body59 [
    i32 1, label %do.body8
    i32 4, label %do.body21
    i32 3, label %do.body34
    i32 2, label %do.body47
  ]

do.body8:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %14 = load i32, ptr @av7110_debug, align 4
  %and9 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.sw.epilog_crit_edge, label %do.body8.sw.epilog.sink.split_crit_edge

do.body8.sw.epilog.sink.split_crit_edge:          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body8.sw.epilog_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body21:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %15 = load i32, ptr @av7110_debug, align 4
  %and22 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.sw.epilog_crit_edge, label %do.body21.sw.epilog.sink.split_crit_edge

do.body21.sw.epilog.sink.split_crit_edge:         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body21.sw.epilog_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body34:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %16 = load i32, ptr @av7110_debug, align 4
  %and35 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.sw.epilog_crit_edge, label %do.body34.sw.epilog.sink.split_crit_edge

do.body34.sw.epilog.sink.split_crit_edge:         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body34.sw.epilog_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body47:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %17 = load i32, ptr @av7110_debug, align 4
  %and48 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.sw.epilog_crit_edge, label %do.body47.sw.epilog.sink.split_crit_edge

do.body47.sw.epilog.sink.split_crit_edge:         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body47.sw.epilog_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body59:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %18 = load i32, ptr @av7110_debug, align 4
  %and60 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.sw.epilog_crit_edge, label %do.body59.sw.epilog.sink.split_crit_edge

do.body59.sw.epilog.sink.split_crit_edge:         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

do.body59.sw.epilog_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body59.sw.epilog.sink.split_crit_edge, %do.body47.sw.epilog.sink.split_crit_edge, %do.body34.sw.epilog.sink.split_crit_edge, %do.body21.sw.epilog.sink.split_crit_edge, %do.body8.sw.epilog.sink.split_crit_edge
  %.str.103.sink = phi ptr [ @.str.91, %do.body8.sw.epilog.sink.split_crit_edge ], [ @.str.94, %do.body21.sw.epilog.sink.split_crit_edge ], [ @.str.97, %do.body34.sw.epilog.sink.split_crit_edge ], [ @.str.100, %do.body47.sw.epilog.sink.split_crit_edge ], [ @.str.103, %do.body59.sw.epilog.sink.split_crit_edge ]
  %src.0.ph = phi i16 [ 32, %do.body8.sw.epilog.sink.split_crit_edge ], [ 32, %do.body21.sw.epilog.sink.split_crit_edge ], [ 0, %do.body34.sw.epilog.sink.split_crit_edge ], [ 16, %do.body47.sw.epilog.sink.split_crit_edge ], [ 48, %do.body59.sw.epilog.sink.split_crit_edge ]
  %fm_matrix.0.ph = phi i16 [ 12289, %do.body8.sw.epilog.sink.split_crit_edge ], [ 12288, %do.body21.sw.epilog.sink.split_crit_edge ], [ 12288, %do.body34.sw.epilog.sink.split_crit_edge ], [ 12288, %do.body47.sw.epilog.sink.split_crit_edge ], [ 12288, %do.body59.sw.epilog.sink.split_crit_edge ]
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.103.sink, ptr noundef nonnull @.str.89) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body59.sw.epilog_crit_edge, %do.body47.sw.epilog_crit_edge, %do.body34.sw.epilog_crit_edge, %do.body21.sw.epilog_crit_edge, %do.body8.sw.epilog_crit_edge
  %src.0 = phi i16 [ 32, %do.body8.sw.epilog_crit_edge ], [ 32, %do.body21.sw.epilog_crit_edge ], [ 0, %do.body34.sw.epilog_crit_edge ], [ 16, %do.body47.sw.epilog_crit_edge ], [ 48, %do.body59.sw.epilog_crit_edge ], [ %src.0.ph, %sw.epilog.sink.split ]
  %fm_matrix.0 = phi i16 [ 12289, %do.body8.sw.epilog_crit_edge ], [ 12288, %do.body21.sw.epilog_crit_edge ], [ 12288, %do.body34.sw.epilog_crit_edge ], [ 12288, %do.body47.sw.epilog_crit_edge ], [ 12288, %do.body59.sw.epilog_crit_edge ], [ %fm_matrix.0.ph, %sw.epilog.sink.split ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i) #5
  %19 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 1
  %20 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 2
  %21 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 3
  %22 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 18, ptr %msg.i, align 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %19, align 1
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 14, ptr %20, align 1
  %conv6.i = zext i16 %fm_matrix.0 to i32
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 48, ptr %21, align 1
  %conv12.i = trunc i16 %fm_matrix.0 to i8
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv12.i, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #5
  %28 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 393215, ptr %28, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i, ptr %buf.i, align 4
  %adac_type.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 12
  %32 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %adac_type.i, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %33, label %sw.epilog.msp_writereg.exit_crit_edge [
    i32 2, label %sw.epilog.sw.epilog.i_crit_edge
    i32 3, label %sw.bb14.i
  ]

sw.epilog.sw.epilog.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.msp_writereg.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

sw.bb14.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb14.i, %sw.epilog.sw.epilog.i_crit_edge
  %storemerge.i = phi i16 [ 66, %sw.bb14.i ], [ 64, %sw.epilog.sw.epilog.i_crit_edge ]
  %35 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %storemerge.i, ptr %msgs.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.epilog.i.msp_writereg.exit_crit_edge, label %do.body.i

sw.epilog.i.msp_writereg.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

do.body.i:                                        ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %36 = load i32, ptr @av7110_debug, align 4
  %and17.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not.i, label %do.body.i.msp_writereg.exit_crit_edge, label %do.end.i

do.body.i.msp_writereg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %37 = ptrtoint ptr %dvb_adapter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dvb_adapter.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %38, i32 noundef 14, i32 noundef %conv6.i) #8
  br label %msp_writereg.exit

msp_writereg.exit:                                ; preds = %do.end.i, %do.body.i.msp_writereg.exit_crit_edge, %sw.epilog.i.msp_writereg.exit_crit_edge, %sw.epilog.msp_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i86) #5
  %39 = getelementptr inbounds [5 x i8], ptr %msg.i86, i32 0, i32 1
  %40 = getelementptr inbounds [5 x i8], ptr %msg.i86, i32 0, i32 2
  %41 = getelementptr inbounds [5 x i8], ptr %msg.i86, i32 0, i32 3
  %42 = getelementptr inbounds [5 x i8], ptr %msg.i86, i32 0, i32 4
  %43 = ptrtoint ptr %msg.i86 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 18, ptr %msg.i86, align 1
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %39, align 1
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %40, align 1
  %conv6.i88 = zext i16 %src.0 to i32
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %41, align 1
  %conv12.i89 = trunc i16 %src.0 to i8
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv12.i89, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i87) #5
  %48 = getelementptr inbounds i8, ptr %msgs.i87, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 393215, ptr %48, align 4
  %flags.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i87, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i90 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i90, align 2
  %buf.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i87, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i92 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i86, ptr %buf.i92, align 4
  %52 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %adac_type.i, align 8
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %53, label %msp_writereg.exit.msp_writereg.exit107_crit_edge [
    i32 2, label %msp_writereg.exit.sw.epilog.i99_crit_edge
    i32 3, label %sw.bb14.i94
  ]

msp_writereg.exit.sw.epilog.i99_crit_edge:        ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i99

msp_writereg.exit.msp_writereg.exit107_crit_edge: ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit107

sw.bb14.i94:                                      ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i99

sw.epilog.i99:                                    ; preds = %sw.bb14.i94, %msp_writereg.exit.sw.epilog.i99_crit_edge
  %storemerge.i95 = phi i16 [ 66, %sw.bb14.i94 ], [ 64, %msp_writereg.exit.sw.epilog.i99_crit_edge ]
  %55 = ptrtoint ptr %msgs.i87 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %storemerge.i95, ptr %msgs.i87, align 4
  %i2c_adap.i96 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i97 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i96, ptr noundef nonnull %msgs.i87, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i97)
  %cmp.not.i98 = icmp eq i32 %call.i97, 1
  br i1 %cmp.not.i98, label %sw.epilog.i99.msp_writereg.exit107_crit_edge, label %do.body.i102

sw.epilog.i99.msp_writereg.exit107_crit_edge:     ; preds = %sw.epilog.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit107

do.body.i102:                                     ; preds = %sw.epilog.i99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %56 = load i32, ptr @av7110_debug, align 4
  %and17.i100 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i100)
  %tobool.not.i101 = icmp eq i32 %and17.i100, 0
  br i1 %tobool.not.i101, label %do.body.i102.msp_writereg.exit107_crit_edge, label %do.end.i105

do.body.i102.msp_writereg.exit107_crit_edge:      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit107

do.end.i105:                                      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i103 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %57 = ptrtoint ptr %dvb_adapter.i103 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dvb_adapter.i103, align 4
  %call22.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %58, i32 noundef 8, i32 noundef %conv6.i88) #8
  br label %msp_writereg.exit107

msp_writereg.exit107:                             ; preds = %do.end.i105, %do.body.i102.msp_writereg.exit107_crit_edge, %sw.epilog.i99.msp_writereg.exit107_crit_edge, %msp_writereg.exit.msp_writereg.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i87) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i86) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i108) #5
  %59 = getelementptr inbounds [5 x i8], ptr %msg.i108, i32 0, i32 1
  %60 = getelementptr inbounds [5 x i8], ptr %msg.i108, i32 0, i32 2
  %61 = getelementptr inbounds [5 x i8], ptr %msg.i108, i32 0, i32 3
  %62 = getelementptr inbounds [5 x i8], ptr %msg.i108, i32 0, i32 4
  %63 = ptrtoint ptr %msg.i108 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 18, ptr %msg.i108, align 1
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %59, align 1
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 9, ptr %60, align 1
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %61, align 1
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv12.i89, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i109) #5
  %68 = getelementptr inbounds i8, ptr %msgs.i109, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 393215, ptr %68, align 4
  %flags.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i109, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i112, align 2
  %buf.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i109, i32 0, i32 3
  %71 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i108, ptr %buf.i114, align 4
  %72 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %adac_type.i, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %73, label %msp_writereg.exit107.msp_writereg.exit129_crit_edge [
    i32 2, label %msp_writereg.exit107.sw.epilog.i121_crit_edge
    i32 3, label %sw.bb14.i116
  ]

msp_writereg.exit107.sw.epilog.i121_crit_edge:    ; preds = %msp_writereg.exit107
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i121

msp_writereg.exit107.msp_writereg.exit129_crit_edge: ; preds = %msp_writereg.exit107
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit129

sw.bb14.i116:                                     ; preds = %msp_writereg.exit107
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i121

sw.epilog.i121:                                   ; preds = %sw.bb14.i116, %msp_writereg.exit107.sw.epilog.i121_crit_edge
  %storemerge.i117 = phi i16 [ 66, %sw.bb14.i116 ], [ 64, %msp_writereg.exit107.sw.epilog.i121_crit_edge ]
  %75 = ptrtoint ptr %msgs.i109 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %storemerge.i117, ptr %msgs.i109, align 4
  %i2c_adap.i118 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i119 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i118, ptr noundef nonnull %msgs.i109, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i119)
  %cmp.not.i120 = icmp eq i32 %call.i119, 1
  br i1 %cmp.not.i120, label %sw.epilog.i121.msp_writereg.exit129_crit_edge, label %do.body.i124

sw.epilog.i121.msp_writereg.exit129_crit_edge:    ; preds = %sw.epilog.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit129

do.body.i124:                                     ; preds = %sw.epilog.i121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %76 = load i32, ptr @av7110_debug, align 4
  %and17.i122 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i122)
  %tobool.not.i123 = icmp eq i32 %and17.i122, 0
  br i1 %tobool.not.i123, label %do.body.i124.msp_writereg.exit129_crit_edge, label %do.end.i127

do.body.i124.msp_writereg.exit129_crit_edge:      ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit129

do.end.i127:                                      ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i125 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %77 = ptrtoint ptr %dvb_adapter.i125 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dvb_adapter.i125, align 4
  %call22.i126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %78, i32 noundef 9, i32 noundef %conv6.i88) #8
  br label %msp_writereg.exit129

msp_writereg.exit129:                             ; preds = %do.end.i127, %do.body.i124.msp_writereg.exit129_crit_edge, %sw.epilog.i121.msp_writereg.exit129_crit_edge, %msp_writereg.exit107.msp_writereg.exit129_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i109) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i108) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i130) #5
  %79 = getelementptr inbounds [5 x i8], ptr %msg.i130, i32 0, i32 1
  %80 = getelementptr inbounds [5 x i8], ptr %msg.i130, i32 0, i32 2
  %81 = getelementptr inbounds [5 x i8], ptr %msg.i130, i32 0, i32 3
  %82 = getelementptr inbounds [5 x i8], ptr %msg.i130, i32 0, i32 4
  %83 = ptrtoint ptr %msg.i130 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 18, ptr %msg.i130, align 1
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %79, align 1
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 10, ptr %80, align 1
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %81, align 1
  %87 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv12.i89, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i131) #5
  %88 = getelementptr inbounds i8, ptr %msgs.i131, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 393215, ptr %88, align 4
  %flags.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i131, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i134 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i134, align 2
  %buf.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i131, i32 0, i32 3
  %91 = ptrtoint ptr %buf.i136 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg.i130, ptr %buf.i136, align 4
  %92 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %adac_type.i, align 8
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %93, label %msp_writereg.exit129.msp_writereg.exit151_crit_edge [
    i32 2, label %msp_writereg.exit129.sw.epilog.i143_crit_edge
    i32 3, label %sw.bb14.i138
  ]

msp_writereg.exit129.sw.epilog.i143_crit_edge:    ; preds = %msp_writereg.exit129
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i143

msp_writereg.exit129.msp_writereg.exit151_crit_edge: ; preds = %msp_writereg.exit129
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit151

sw.bb14.i138:                                     ; preds = %msp_writereg.exit129
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i143

sw.epilog.i143:                                   ; preds = %sw.bb14.i138, %msp_writereg.exit129.sw.epilog.i143_crit_edge
  %storemerge.i139 = phi i16 [ 66, %sw.bb14.i138 ], [ 64, %msp_writereg.exit129.sw.epilog.i143_crit_edge ]
  %95 = ptrtoint ptr %msgs.i131 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %storemerge.i139, ptr %msgs.i131, align 4
  %i2c_adap.i140 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i141 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i140, ptr noundef nonnull %msgs.i131, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141)
  %cmp.not.i142 = icmp eq i32 %call.i141, 1
  br i1 %cmp.not.i142, label %sw.epilog.i143.msp_writereg.exit151_crit_edge, label %do.body.i146

sw.epilog.i143.msp_writereg.exit151_crit_edge:    ; preds = %sw.epilog.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit151

do.body.i146:                                     ; preds = %sw.epilog.i143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %96 = load i32, ptr @av7110_debug, align 4
  %and17.i144 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i144)
  %tobool.not.i145 = icmp eq i32 %and17.i144, 0
  br i1 %tobool.not.i145, label %do.body.i146.msp_writereg.exit151_crit_edge, label %do.end.i149

do.body.i146.msp_writereg.exit151_crit_edge:      ; preds = %do.body.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit151

do.end.i149:                                      ; preds = %do.body.i146
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i147 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %97 = ptrtoint ptr %dvb_adapter.i147 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dvb_adapter.i147, align 4
  %call22.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %98, i32 noundef 10, i32 noundef %conv6.i88) #8
  br label %msp_writereg.exit151

msp_writereg.exit151:                             ; preds = %do.end.i149, %do.body.i146.msp_writereg.exit151_crit_edge, %sw.epilog.i143.msp_writereg.exit151_crit_edge, %msp_writereg.exit129.msp_writereg.exit151_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i131) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i130) #5
  br label %cleanup

cleanup:                                          ; preds = %msp_writereg.exit151, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %msp_writereg.exit151 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %5 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frequency, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %analog_tuner_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %lor.lhs.false

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %current_input = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %current_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call ptr @memset(ptr %f, i32 0, i32 44)
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 4
  %current_freq = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %current_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %current_freq, align 4
  %frequency8 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %15 = ptrtoint ptr %frequency8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %frequency8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  %msg.i147 = alloca [5 x i8], align 1
  %msgs.i148 = alloca %struct.i2c_msg, align 4
  %msg.i127 = alloca [5 x i8], align 1
  %msgs.i128 = alloca %struct.i2c_msg, align 4
  %msg.i107 = alloca [5 x i8], align 1
  %msgs.i108 = alloca %struct.i2c_msg, align 4
  %msg.i87 = alloca [5 x i8], align 1
  %msgs.i88 = alloca %struct.i2c_msg, align 4
  %msg.i.i73 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i69 = alloca [4 x i8], align 1
  %msg.i49 = alloca [5 x i8], align 1
  %msgs.i50 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [5 x i8], align 1
  %msgs.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %5 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frequency, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %analog_tuner_flags = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %analog_tuner_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %lor.lhs.false

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %current_input = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %current_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp8.not = icmp eq i32 %12, 2
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i) #5
  %13 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 1
  %14 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 2
  %15 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 3
  %16 = getelementptr inbounds [5 x i8], ptr %msg.i, i32 0, i32 4
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 18, ptr %msg.i, align 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %13, align 1
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %14, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %15, align 1
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -32, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #5
  %22 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 393215, ptr %22, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %buf.i, align 4
  %adac_type.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %adac_type.i, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %27, label %if.end10.msp_writereg.exit_crit_edge [
    i32 2, label %if.end10.sw.epilog.i_crit_edge
    i32 3, label %sw.bb14.i
  ]

if.end10.sw.epilog.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end10.msp_writereg.exit_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

sw.bb14.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb14.i, %if.end10.sw.epilog.i_crit_edge
  %storemerge.i = phi i16 [ 66, %sw.bb14.i ], [ 64, %if.end10.sw.epilog.i_crit_edge ]
  %29 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %storemerge.i, ptr %msgs.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msgs.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.epilog.i.msp_writereg.exit_crit_edge, label %do.body.i

sw.epilog.i.msp_writereg.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

do.body.i:                                        ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %30 = load i32, ptr @av7110_debug, align 4
  %and17.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not.i, label %do.body.i.msp_writereg.exit_crit_edge, label %do.end.i

do.body.i.msp_writereg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %31 = ptrtoint ptr %dvb_adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dvb_adapter.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %32, i32 noundef 0, i32 noundef 65504) #8
  br label %msp_writereg.exit

msp_writereg.exit:                                ; preds = %do.end.i, %do.body.i.msp_writereg.exit_crit_edge, %sw.epilog.i.msp_writereg.exit_crit_edge, %if.end10.msp_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i49) #5
  %33 = getelementptr inbounds [5 x i8], ptr %msg.i49, i32 0, i32 1
  %34 = getelementptr inbounds [5 x i8], ptr %msg.i49, i32 0, i32 2
  %35 = getelementptr inbounds [5 x i8], ptr %msg.i49, i32 0, i32 3
  %36 = getelementptr inbounds [5 x i8], ptr %msg.i49, i32 0, i32 4
  %37 = ptrtoint ptr %msg.i49 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 18, ptr %msg.i49, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %33, align 1
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 7, ptr %34, align 1
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %35, align 1
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -32, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i50) #5
  %42 = getelementptr inbounds i8, ptr %msgs.i50, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 393215, ptr %42, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i51, align 2
  %buf.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i49, ptr %buf.i53, align 4
  %46 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adac_type.i, align 8
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %47, label %msp_writereg.exit.msp_writereg.exit68_crit_edge [
    i32 2, label %msp_writereg.exit.sw.epilog.i60_crit_edge
    i32 3, label %sw.bb14.i55
  ]

msp_writereg.exit.sw.epilog.i60_crit_edge:        ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i60

msp_writereg.exit.msp_writereg.exit68_crit_edge:  ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit68

sw.bb14.i55:                                      ; preds = %msp_writereg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i60

sw.epilog.i60:                                    ; preds = %sw.bb14.i55, %msp_writereg.exit.sw.epilog.i60_crit_edge
  %storemerge.i56 = phi i16 [ 66, %sw.bb14.i55 ], [ 64, %msp_writereg.exit.sw.epilog.i60_crit_edge ]
  %49 = ptrtoint ptr %msgs.i50 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %storemerge.i56, ptr %msgs.i50, align 4
  %i2c_adap.i57 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i58 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i57, ptr noundef nonnull %msgs.i50, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp.not.i59 = icmp eq i32 %call.i58, 1
  br i1 %cmp.not.i59, label %sw.epilog.i60.msp_writereg.exit68_crit_edge, label %do.body.i63

sw.epilog.i60.msp_writereg.exit68_crit_edge:      ; preds = %sw.epilog.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit68

do.body.i63:                                      ; preds = %sw.epilog.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %50 = load i32, ptr @av7110_debug, align 4
  %and17.i61 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i61)
  %tobool.not.i62 = icmp eq i32 %and17.i61, 0
  br i1 %tobool.not.i62, label %do.body.i63.msp_writereg.exit68_crit_edge, label %do.end.i66

do.body.i63.msp_writereg.exit68_crit_edge:        ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit68

do.end.i66:                                       ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i64 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %51 = ptrtoint ptr %dvb_adapter.i64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dvb_adapter.i64, align 4
  %call22.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef 7, i32 noundef 65504) #8
  br label %msp_writereg.exit68

msp_writereg.exit68:                              ; preds = %do.end.i66, %do.body.i63.msp_writereg.exit68_crit_edge, %sw.epilog.i60.msp_writereg.exit68_crit_edge, %msp_writereg.exit.msp_writereg.exit68_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i50) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i49) #5
  %53 = ptrtoint ptr %analog_tuner_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %analog_tuner_flags, align 4
  %and14 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %msp_writereg.exit68
  %frequency17 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %55 = ptrtoint ptr %frequency17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frequency17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i69) #5
  %57 = getelementptr inbounds [4 x i8], ptr %buf.i69, i32 0, i32 1
  %58 = getelementptr inbounds [4 x i8], ptr %buf.i69, i32 0, i32 2
  %59 = getelementptr inbounds [4 x i8], ptr %buf.i69, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %60 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i70 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i70, label %if.then16.do.end3.i_crit_edge, label %do.end.i72

if.then16.do.end3.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3.i

do.end.i72:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %call.i71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef %56) #8
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i72, %if.then16.do.end3.i_crit_edge
  %add.i = add i32 %56, 614
  %shr.i = lshr i32 %add.i, 8
  %61 = trunc i32 %shr.i to i8
  %conv.i = and i8 %61, 127
  %62 = ptrtoint ptr %buf.i69 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv.i, ptr %buf.i69, align 1
  %conv6.i = trunc i32 %add.i to i8
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv6.i, ptr %57, align 1
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -114, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2692, i32 %56)
  %cmp.i = icmp ult i32 %56, 2692
  call void @__sanitizer_cov_trace_const_cmp4(i32 7156, i32 %56)
  %cmp11.i = icmp ult i32 %56, 7156
  %..i = select i1 %cmp11.i, i8 -112, i8 48
  %config.0.i = select i1 %cmp.i, i8 -96, i8 %..i
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %config.0.i, ptr %59, align 1
  %66 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ext_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %68 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 327679, ptr %68, align 4
  %70 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 97, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i69, ptr %buf.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %73 = load i32, ptr @av7110_debug, align 4
  %and.i.i = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end3.i.ves1820_set_tv_freq.exit_crit_edge, label %do.end.i.i

do.end3.i.ves1820_set_tv_freq.exit_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ves1820_set_tv_freq.exit

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.111, ptr noundef %1) #8
  br label %ves1820_set_tv_freq.exit

ves1820_set_tv_freq.exit:                         ; preds = %do.end.i.i, %do.end3.i.ves1820_set_tv_freq.exit_crit_edge
  %i2c_adap.i.i = getelementptr inbounds %struct.av7110, ptr %67, i32 0, i32 5
  %call5.i.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i.i, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i69) #5
  br label %if.end26

if.else:                                          ; preds = %msp_writereg.exit68
  %and20 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else.if.end26_crit_edge, label %if.then22

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then22:                                        ; preds = %if.else
  %frequency23 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %74 = ptrtoint ptr %frequency23 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %frequency23, align 4
  %76 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ext_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %78 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %79 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %80 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %add1.i = add i32 %75, 38931250
  %div2.i = udiv i32 %add1.i, 62500
  %shr.i74 = lshr i32 %div2.i, 8
  %81 = trunc i32 %shr.i74 to i8
  %conv.i75 = and i8 %81, 127
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i75, ptr %data.i, align 1
  %conv4.i = trunc i32 %div2.i to i8
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv4.i, ptr %78, align 1
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -50, ptr %79, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %75)
  %cmp.i76 = icmp ult i32 %75, 45000000
  br i1 %cmp.i76, label %if.then22.stv0297_set_tv_freq.exit_crit_edge, label %if.else.i

if.then22.stv0297_set_tv_freq.exit_crit_edge:     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0297_set_tv_freq.exit

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 137000000, i32 %75)
  %cmp8.i = icmp ult i32 %75, 137000000
  br i1 %cmp8.i, label %if.else.i.if.end25.i_crit_edge, label %if.else12.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 403000000, i32 %75)
  %cmp13.i = icmp ult i32 %75, 403000000
  br i1 %cmp13.i, label %if.else12.i.if.end25.i_crit_edge, label %if.else17.i

if.else12.i.if.end25.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.else17.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 860000000, i32 %75)
  %cmp18.i = icmp ult i32 %75, 860000000
  br i1 %cmp18.i, label %if.else17.i.if.end25.i_crit_edge, label %if.else17.i.stv0297_set_tv_freq.exit_crit_edge

if.else17.i.stv0297_set_tv_freq.exit_crit_edge:   ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0297_set_tv_freq.exit

if.else17.i.if.end25.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else17.i.if.end25.i_crit_edge, %if.else12.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.else.i.if.end25.i_crit_edge ], [ 2, %if.else12.i.if.end25.i_crit_edge ], [ 4, %if.else17.i.if.end25.i_crit_edge ]
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %.sink.i, ptr %80, align 1
  %fe.i = getelementptr inbounds %struct.av7110, ptr %77, i32 0, i32 94
  %86 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fe.i, align 8
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %87, i32 0, i32 1, i32 28
  %88 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool.not.i77 = icmp eq ptr %89, null
  br i1 %tobool.not.i77, label %if.end25.i.if.end31.i_crit_edge, label %if.then26.i

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i78 = call i32 %89(ptr noundef %87, i32 noundef 1) #5
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %if.end25.i.if.end31.i_crit_edge
  %90 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ext_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i73) #5
  %92 = getelementptr inbounds i8, ptr %msg.i.i73, i32 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 327679, ptr %92, align 4
  %94 = ptrtoint ptr %msg.i.i73 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 99, ptr %msg.i.i73, align 4
  %flags.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i73, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i.i79 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %flags.i.i79, align 2
  %buf.i.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i73, i32 0, i32 3
  %96 = ptrtoint ptr %buf.i.i80 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %data.i, ptr %buf.i.i80, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %97 = load i32, ptr @av7110_debug, align 4
  %and.i.i81 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %if.end31.i.tuner_write.exit.i_crit_edge, label %do.end.i.i84

if.end31.i.tuner_write.exit.i_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tuner_write.exit.i

do.end.i.i84:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.111, ptr noundef %1) #8
  br label %tuner_write.exit.i

tuner_write.exit.i:                               ; preds = %do.end.i.i84, %if.end31.i.tuner_write.exit.i_crit_edge
  %i2c_adap.i.i85 = getelementptr inbounds %struct.av7110, ptr %91, i32 0, i32 5
  %call5.i.i86 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i.i85, ptr noundef nonnull %msg.i.i73, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i73) #5
  br label %stv0297_set_tv_freq.exit

stv0297_set_tv_freq.exit:                         ; preds = %tuner_write.exit.i, %if.else17.i.stv0297_set_tv_freq.exit_crit_edge, %if.then22.stv0297_set_tv_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  br label %if.end26

if.end26:                                         ; preds = %stv0297_set_tv_freq.exit, %if.else.if.end26_crit_edge, %ves1820_set_tv_freq.exit
  %frequency27 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %98 = ptrtoint ptr %frequency27 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %frequency27, align 4
  %current_freq = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 9
  %100 = ptrtoint ptr %current_freq to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %current_freq, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i87) #5
  %101 = getelementptr inbounds [5 x i8], ptr %msg.i87, i32 0, i32 1
  %102 = getelementptr inbounds [5 x i8], ptr %msg.i87, i32 0, i32 2
  %103 = getelementptr inbounds [5 x i8], ptr %msg.i87, i32 0, i32 3
  %104 = getelementptr inbounds [5 x i8], ptr %msg.i87, i32 0, i32 4
  %105 = ptrtoint ptr %msg.i87 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 18, ptr %msg.i87, align 1
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %101, align 1
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 21, ptr %102, align 1
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %103, align 1
  %109 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 63, ptr %104, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i88) #5
  %110 = getelementptr inbounds i8, ptr %msgs.i88, i32 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 393215, ptr %110, align 4
  %flags.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i88, i32 0, i32 1
  %112 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %flags.i89, align 2
  %buf.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i88, i32 0, i32 3
  %113 = ptrtoint ptr %buf.i91 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %msg.i87, ptr %buf.i91, align 4
  %114 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %adac_type.i, align 8
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %115, label %if.end26.msp_writereg.exit106_crit_edge [
    i32 2, label %if.end26.sw.epilog.i98_crit_edge
    i32 3, label %sw.bb14.i93
  ]

if.end26.sw.epilog.i98_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i98

if.end26.msp_writereg.exit106_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit106

sw.bb14.i93:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i98

sw.epilog.i98:                                    ; preds = %sw.bb14.i93, %if.end26.sw.epilog.i98_crit_edge
  %storemerge.i94 = phi i16 [ 66, %sw.bb14.i93 ], [ 64, %if.end26.sw.epilog.i98_crit_edge ]
  %117 = ptrtoint ptr %msgs.i88 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %storemerge.i94, ptr %msgs.i88, align 4
  %i2c_adap.i95 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i96 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i95, ptr noundef nonnull %msgs.i88, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i96)
  %cmp.not.i97 = icmp eq i32 %call.i96, 1
  br i1 %cmp.not.i97, label %sw.epilog.i98.msp_writereg.exit106_crit_edge, label %do.body.i101

sw.epilog.i98.msp_writereg.exit106_crit_edge:     ; preds = %sw.epilog.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit106

do.body.i101:                                     ; preds = %sw.epilog.i98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %118 = load i32, ptr @av7110_debug, align 4
  %and17.i99 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i99)
  %tobool.not.i100 = icmp eq i32 %and17.i99, 0
  br i1 %tobool.not.i100, label %do.body.i101.msp_writereg.exit106_crit_edge, label %do.end.i104

do.body.i101.msp_writereg.exit106_crit_edge:      ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit106

do.end.i104:                                      ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i102 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %119 = ptrtoint ptr %dvb_adapter.i102 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dvb_adapter.i102, align 4
  %call22.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %120, i32 noundef 21, i32 noundef 63) #8
  br label %msp_writereg.exit106

msp_writereg.exit106:                             ; preds = %do.end.i104, %do.body.i101.msp_writereg.exit106_crit_edge, %sw.epilog.i98.msp_writereg.exit106_crit_edge, %if.end26.msp_writereg.exit106_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i88) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i87) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i107) #5
  %121 = getelementptr inbounds [5 x i8], ptr %msg.i107, i32 0, i32 1
  %122 = getelementptr inbounds [5 x i8], ptr %msg.i107, i32 0, i32 2
  %123 = getelementptr inbounds [5 x i8], ptr %msg.i107, i32 0, i32 3
  %124 = getelementptr inbounds [5 x i8], ptr %msg.i107, i32 0, i32 4
  %125 = ptrtoint ptr %msg.i107 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 18, ptr %msg.i107, align 1
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %121, align 1
  %127 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 21, ptr %122, align 1
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %123, align 1
  %129 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i108) #5
  %130 = getelementptr inbounds i8, ptr %msgs.i108, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 393215, ptr %130, align 4
  %flags.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i108, i32 0, i32 1
  %132 = ptrtoint ptr %flags.i109 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %flags.i109, align 2
  %buf.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i108, i32 0, i32 3
  %133 = ptrtoint ptr %buf.i111 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %msg.i107, ptr %buf.i111, align 4
  %134 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %adac_type.i, align 8
  %136 = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %135, label %msp_writereg.exit106.msp_writereg.exit126_crit_edge [
    i32 2, label %msp_writereg.exit106.sw.epilog.i118_crit_edge
    i32 3, label %sw.bb14.i113
  ]

msp_writereg.exit106.sw.epilog.i118_crit_edge:    ; preds = %msp_writereg.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i118

msp_writereg.exit106.msp_writereg.exit126_crit_edge: ; preds = %msp_writereg.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit126

sw.bb14.i113:                                     ; preds = %msp_writereg.exit106
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i118

sw.epilog.i118:                                   ; preds = %sw.bb14.i113, %msp_writereg.exit106.sw.epilog.i118_crit_edge
  %storemerge.i114 = phi i16 [ 66, %sw.bb14.i113 ], [ 64, %msp_writereg.exit106.sw.epilog.i118_crit_edge ]
  %137 = ptrtoint ptr %msgs.i108 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %storemerge.i114, ptr %msgs.i108, align 4
  %i2c_adap.i115 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i116 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i115, ptr noundef nonnull %msgs.i108, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i116)
  %cmp.not.i117 = icmp eq i32 %call.i116, 1
  br i1 %cmp.not.i117, label %sw.epilog.i118.msp_writereg.exit126_crit_edge, label %do.body.i121

sw.epilog.i118.msp_writereg.exit126_crit_edge:    ; preds = %sw.epilog.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit126

do.body.i121:                                     ; preds = %sw.epilog.i118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %138 = load i32, ptr @av7110_debug, align 4
  %and17.i119 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i119)
  %tobool.not.i120 = icmp eq i32 %and17.i119, 0
  br i1 %tobool.not.i120, label %do.body.i121.msp_writereg.exit126_crit_edge, label %do.end.i124

do.body.i121.msp_writereg.exit126_crit_edge:      ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit126

do.end.i124:                                      ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i122 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %139 = ptrtoint ptr %dvb_adapter.i122 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dvb_adapter.i122, align 4
  %call22.i123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %140, i32 noundef 21, i32 noundef 0) #8
  br label %msp_writereg.exit126

msp_writereg.exit126:                             ; preds = %do.end.i124, %do.body.i121.msp_writereg.exit126_crit_edge, %sw.epilog.i118.msp_writereg.exit126_crit_edge, %msp_writereg.exit106.msp_writereg.exit126_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i108) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i107) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i127) #5
  %141 = getelementptr inbounds [5 x i8], ptr %msg.i127, i32 0, i32 1
  %142 = getelementptr inbounds [5 x i8], ptr %msg.i127, i32 0, i32 2
  %143 = getelementptr inbounds [5 x i8], ptr %msg.i127, i32 0, i32 3
  %144 = getelementptr inbounds [5 x i8], ptr %msg.i127, i32 0, i32 4
  %145 = ptrtoint ptr %msg.i127 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 18, ptr %msg.i127, align 1
  %146 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %141, align 1
  %147 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %142, align 1
  %148 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 79, ptr %143, align 1
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i128) #5
  %150 = getelementptr inbounds i8, ptr %msgs.i128, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 393215, ptr %150, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i128, i32 0, i32 1
  %152 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %flags.i129, align 2
  %buf.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i128, i32 0, i32 3
  %153 = ptrtoint ptr %buf.i131 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %msg.i127, ptr %buf.i131, align 4
  %154 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %adac_type.i, align 8
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %155, label %msp_writereg.exit126.msp_writereg.exit146_crit_edge [
    i32 2, label %msp_writereg.exit126.sw.epilog.i138_crit_edge
    i32 3, label %sw.bb14.i133
  ]

msp_writereg.exit126.sw.epilog.i138_crit_edge:    ; preds = %msp_writereg.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i138

msp_writereg.exit126.msp_writereg.exit146_crit_edge: ; preds = %msp_writereg.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit146

sw.bb14.i133:                                     ; preds = %msp_writereg.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i138

sw.epilog.i138:                                   ; preds = %sw.bb14.i133, %msp_writereg.exit126.sw.epilog.i138_crit_edge
  %storemerge.i134 = phi i16 [ 66, %sw.bb14.i133 ], [ 64, %msp_writereg.exit126.sw.epilog.i138_crit_edge ]
  %157 = ptrtoint ptr %msgs.i128 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %storemerge.i134, ptr %msgs.i128, align 4
  %i2c_adap.i135 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i136 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i135, ptr noundef nonnull %msgs.i128, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i136)
  %cmp.not.i137 = icmp eq i32 %call.i136, 1
  br i1 %cmp.not.i137, label %sw.epilog.i138.msp_writereg.exit146_crit_edge, label %do.body.i141

sw.epilog.i138.msp_writereg.exit146_crit_edge:    ; preds = %sw.epilog.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit146

do.body.i141:                                     ; preds = %sw.epilog.i138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %158 = load i32, ptr @av7110_debug, align 4
  %and17.i139 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i139)
  %tobool.not.i140 = icmp eq i32 %and17.i139, 0
  br i1 %tobool.not.i140, label %do.body.i141.msp_writereg.exit146_crit_edge, label %do.end.i144

do.body.i141.msp_writereg.exit146_crit_edge:      ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit146

do.end.i144:                                      ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i142 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %159 = ptrtoint ptr %dvb_adapter.i142 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dvb_adapter.i142, align 4
  %call22.i143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %160, i32 noundef 0, i32 noundef 20224) #8
  br label %msp_writereg.exit146

msp_writereg.exit146:                             ; preds = %do.end.i144, %do.body.i141.msp_writereg.exit146_crit_edge, %sw.epilog.i138.msp_writereg.exit146_crit_edge, %msp_writereg.exit126.msp_writereg.exit146_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i128) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i127) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %msg.i147) #5
  %161 = getelementptr inbounds [5 x i8], ptr %msg.i147, i32 0, i32 1
  %162 = getelementptr inbounds [5 x i8], ptr %msg.i147, i32 0, i32 2
  %163 = getelementptr inbounds [5 x i8], ptr %msg.i147, i32 0, i32 3
  %164 = getelementptr inbounds [5 x i8], ptr %msg.i147, i32 0, i32 4
  %165 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 18, ptr %msg.i147, align 1
  %166 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %161, align 1
  %167 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 7, ptr %162, align 1
  %168 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 79, ptr %163, align 1
  %169 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %164, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i148) #5
  %170 = getelementptr inbounds i8, ptr %msgs.i148, i32 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 393215, ptr %170, align 4
  %flags.i149 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i148, i32 0, i32 1
  %172 = ptrtoint ptr %flags.i149 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %flags.i149, align 2
  %buf.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i148, i32 0, i32 3
  %173 = ptrtoint ptr %buf.i151 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %msg.i147, ptr %buf.i151, align 4
  %174 = ptrtoint ptr %adac_type.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %adac_type.i, align 8
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %175, label %msp_writereg.exit146.msp_writereg.exit166_crit_edge [
    i32 2, label %msp_writereg.exit146.sw.epilog.i158_crit_edge
    i32 3, label %sw.bb14.i153
  ]

msp_writereg.exit146.sw.epilog.i158_crit_edge:    ; preds = %msp_writereg.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i158

msp_writereg.exit146.msp_writereg.exit166_crit_edge: ; preds = %msp_writereg.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit166

sw.bb14.i153:                                     ; preds = %msp_writereg.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i158

sw.epilog.i158:                                   ; preds = %sw.bb14.i153, %msp_writereg.exit146.sw.epilog.i158_crit_edge
  %storemerge.i154 = phi i16 [ 66, %sw.bb14.i153 ], [ 64, %msp_writereg.exit146.sw.epilog.i158_crit_edge ]
  %177 = ptrtoint ptr %msgs.i148 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %storemerge.i154, ptr %msgs.i148, align 4
  %i2c_adap.i155 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 5
  %call.i156 = call i32 @i2c_transfer(ptr noundef %i2c_adap.i155, ptr noundef nonnull %msgs.i148, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i156)
  %cmp.not.i157 = icmp eq i32 %call.i156, 1
  br i1 %cmp.not.i157, label %sw.epilog.i158.msp_writereg.exit166_crit_edge, label %do.body.i161

sw.epilog.i158.msp_writereg.exit166_crit_edge:    ; preds = %sw.epilog.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit166

do.body.i161:                                     ; preds = %sw.epilog.i158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %178 = load i32, ptr @av7110_debug, align 4
  %and17.i159 = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i159)
  %tobool.not.i160 = icmp eq i32 %and17.i159, 0
  br i1 %tobool.not.i160, label %do.body.i161.msp_writereg.exit166_crit_edge, label %do.end.i164

do.body.i161.msp_writereg.exit166_crit_edge:      ; preds = %do.body.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp_writereg.exit166

do.end.i164:                                      ; preds = %do.body.i161
  call void @__sanitizer_cov_trace_pc() #7
  %dvb_adapter.i162 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 78
  %179 = ptrtoint ptr %dvb_adapter.i162 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dvb_adapter.i162, align 4
  %call22.i163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %180, i32 noundef 7, i32 noundef 20224) #8
  br label %msp_writereg.exit166

msp_writereg.exit166:                             ; preds = %do.end.i164, %do.body.i161.msp_writereg.exit166_crit_edge, %sw.epilog.i158.msp_writereg.exit166_crit_edge, %msp_writereg.exit146.msp_writereg.exit166_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i148) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %msg.i147) #5
  br label %cleanup

cleanup:                                          ; preds = %msp_writereg.exit166, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %msp_writereg.exit166 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %a, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, i32 noundef %2) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end5, label %do.end2.return_crit_edge

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end5:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  %5 = call ptr @memcpy(ptr %a, ptr @msp3400_v4l2_audio, i32 52)
  br label %return

return:                                           ; preds = %if.end5, %do.end2.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.114, i32 noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %current_input = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %current_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp8 = icmp sgt i32 %10, 1
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call ptr @memcpy(ptr %a, ptr @msp3400_v4l2_audio, i32 52)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_audio(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %current_input = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %current_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool8.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end6 ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_sliced_vbi_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %type = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp.not = icmp eq i32 %6, 7
  br i1 %cmp.not, label %if.end6, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %arm_app = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 66
  %7 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arm_app, align 4
  %and7 = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9762, i32 %and7)
  %cmp8 = icmp ugt i32 %and7, 9762
  br i1 %cmp8, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 16384, ptr %cap, align 4
  %arrayidx10 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %cap, i32 0, i32 1, i32 0, i32 23
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16384, ptr %arrayidx10, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_sliced_vbi_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %arm_app = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 66
  %5 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arm_app, align 4
  %and5 = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9763, i32 %and5)
  %cmp = icmp ult i32 %and5, 9763
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %7 = call ptr @memset(ptr %fmt, i32 0, i32 112)
  %wssMode = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 85
  %8 = ptrtoint ptr %wssMode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wssMode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool8.not = icmp eq i16 %9, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16384, ptr %fmt, align 4
  %arrayidx12 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 16384, ptr %arrayidx12, align 2
  %io_size = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %io_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_sliced_vbi_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %arm_app = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 66
  %5 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arm_app, align 4
  %and5 = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9763, i32 %and5)
  %cmp = icmp ult i32 %and5, 9763
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp8.not = icmp eq i16 %8, 16384
  br i1 %cmp8.not, label %if.end7.if.else_crit_edge, label %land.lhs.true

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end7
  %arrayidx11 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp13.not = icmp eq i16 %10, 16384
  br i1 %cmp13.not, label %land.lhs.true.if.else_crit_edge, label %if.then15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call ptr @memset(ptr %fmt, i32 0, i32 112)
  %wssMode = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 85
  %12 = ptrtoint ptr %wssMode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %wssMode, align 4
  %wssData = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 86
  %13 = ptrtoint ptr %wssData to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %wssData, align 2
  %call17 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 5, i32 noundef 6, i32 noundef 1, i32 noundef 0) #5
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end7.if.else_crit_edge
  %14 = call ptr @memset(ptr %fmt, i32 0, i32 112)
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 16384, ptr %fmt, align 4
  %arrayidx24 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 16384, ptr %arrayidx24, align 2
  %io_size = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %io_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %io_size, align 4
  %wssMode26 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 85
  %18 = ptrtoint ptr %wssMode26 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %wssMode26, align 4
  %wssData27 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 86
  %19 = ptrtoint ptr %wssData27 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %wssData27, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then15 ], [ 0, %if.else ], [ -22, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_register_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_vv_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_exit_v4l(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %v4l_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 2
  %call = tail call i32 @saa7146_unregister_device(ptr noundef %v4l_dev, ptr noundef %1) #5
  %vbi_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %call4 = tail call i32 @saa7146_unregister_device(ptr noundef %vbi_dev, ptr noundef %3) #5
  %call5 = tail call i32 @saa7146_vv_release(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_stop_preview(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_fw_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_set_hps_source_and_sync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_start_preview(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @std_callback(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext_priv, align 4
  %id = getelementptr inbounds %struct.saa7146_standard, ptr %std, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id, align 8
  %and = and i64 %3, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %and3 = and i64 %3, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink17 = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ 1, %if.else.cleanup.sink.split_crit_edge ]
  %vidmode = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %vidmode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink17, ptr %vidmode, align 4
  %call = tail call i32 @av7110_set_vidmode(ptr noundef %1, i32 noundef %.sink17) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_vbi_write(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %d = alloca %struct.v4l2_sliced_vbi_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_priv, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %d) #5
  %6 = call ptr @memset(ptr %d, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %7 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.126) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %arm_app = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 66
  %8 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arm_app, align 4
  %and5 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9763, i32 %and5)
  %cmp = icmp ult i32 %and5, 9763
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %lor.lhs.false

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end4
  %wssMode = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 85
  %10 = ptrtoint ptr %wssMode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wssMode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool6.not = icmp ne i16 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp8.not = icmp eq i32 %count, 64
  %or.cond = and i1 %cmp8.not, %tobool6.not
  br i1 %or.cond, label %if.then.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false
  tail call void @__might_fault(ptr noundef nonnull @.str.129, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 64, i32 -1226833920) #9, !srcloc !263
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !264

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %d, i32 noundef 64) #5
  %13 = call i32 @llvm.read_register.i32(metadata !248) #5
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !265
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !266
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %d, ptr noundef %data, i32 noundef 64) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #5, !srcloc !266
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !264

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.then.i.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i
  %17 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %18, label %if.end14.cleanup_crit_edge [
    i32 0, label %if.end14.lor.lhs.false18_crit_edge
    i32 16384, label %if.end14.lor.lhs.false18_crit_edge54
  ]

if.end14.lor.lhs.false18_crit_edge54:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false18

if.end14.lor.lhs.false18_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false18:                                  ; preds = %if.end14.lor.lhs.false18_crit_edge, %if.end14.lor.lhs.false18_crit_edge54
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 1
  %20 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp19.not = icmp eq i32 %21, 0
  br i1 %cmp19.not, label %lor.lhs.false20, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 2
  %22 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %23)
  %cmp21.not = icmp eq i32 %23, 23
  br i1 %cmp21.not, label %if.end23, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %if.end23.if.end34_crit_edge, label %if.then26

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %data27 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4
  %arrayidx = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %25 to i16
  %shl = shl nuw i16 %conv, 8
  %and28 = and i16 %shl, 16128
  %26 = ptrtoint ptr %data27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data27, align 4
  %conv31 = zext i8 %27 to i16
  %or = or i16 %and28, %conv31
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.end23.if.end34_crit_edge
  %or.sink = phi i16 [ %or, %if.then26 ], [ -32768, %if.end23.if.end34_crit_edge ]
  %28 = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 86
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %or.sink, ptr %28, align 2
  %conv36 = zext i16 %or.sink to i32
  %call37 = call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %5, i32 noundef 5, i32 noundef 6, i32 noundef 2, i32 noundef 1, i32 noundef %conv36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  %call37. = select i1 %cmp38, i32 %call37, i32 64
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11.i.i, %lor.lhs.false.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37., %if.end34 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end4.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %lor.lhs.false18.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %d) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @av7110_vbi_reset(ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %ext_priv = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ext_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %6 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.130) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %wssMode = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 85
  %7 = ptrtoint ptr %wssMode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %wssMode, align 4
  %wssData = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 86
  %8 = ptrtoint ptr %wssData to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %wssData, align 2
  %arm_app = getelementptr inbounds %struct.av7110, ptr %5, i32 0, i32 66
  %9 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arm_app, align 4
  %and5 = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9763, i32 %and5)
  %cmp = icmp ult i32 %and5, 9763
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.else

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %5, i32 noundef 5, i32 noundef 6, i32 noundef 1, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.else ], [ 0, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_set_vidmode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !132, !134, !136, !137, !138, !139, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !228, !230, !232, !233, !234, !235, !237, !238, !240, !242, !244, !245, !246}
!llvm.named.register.sp = !{!248}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @msp_writereg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @msp_writereg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 699, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @av7110_init_analog_module._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @av7110_init_analog_module._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 704, i32 3}
!13 = !{ptr @av7110_init_analog_module._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @av7110_init_analog_module._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 713, i32 2}
!17 = !{ptr @av7110_init_analog_module._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @av7110_init_analog_module._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 725, i32 3}
!21 = !{ptr @av7110_init_analog_module._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @av7110_init_analog_module._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 743, i32 5}
!25 = !{ptr @av7110_init_analog_module._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @av7110_init_analog_module._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 752, i32 5}
!29 = !{ptr @av7110_init_analog_module._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @av7110_init_analog_module._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 807, i32 3}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @av7110_init_v4l._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @av7110_init_v4l._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 834, i32 53}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 835, i32 3}
!40 = !{ptr @av7110_init_v4l._entry.23, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @av7110_init_v4l._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 841, i32 4}
!44 = !{ptr @av7110_init_v4l._entry.26, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @av7110_init_v4l._entry_ptr.28, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 74, i32 3}
!48 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @msp_readreg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @msp_readreg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @saa7113_init_regs, !52, !"saa7113_init_regs", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 631, i32 11}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 128, i32 2}
!55 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ves1820_writereg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ves1820_writereg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 450, i32 2}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vidioc_enum_input._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @vidioc_enum_input._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @inputs, !64, !"inputs", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 82, i32 26}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 471, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vidioc_g_input._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @vidioc_g_input._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 480, i32 2}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vidioc_s_input._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @vidioc_s_input._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 224, i32 2}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @av7110_dvb_c_switch._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @av7110_dvb_c_switch._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 230, i32 4}
!82 = !{ptr @av7110_dvb_c_switch._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @av7110_dvb_c_switch._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 236, i32 3}
!86 = !{ptr @av7110_dvb_c_switch._entry.44, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @av7110_dvb_c_switch._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 244, i32 4}
!90 = !{ptr @av7110_dvb_c_switch._entry.47, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @av7110_dvb_c_switch._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @av7110_dvb_c_switch._entry.50, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 254, i32 6}
!94 = !{ptr @av7110_dvb_c_switch._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 260, i32 5}
!97 = !{ptr @av7110_dvb_c_switch._entry.52, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @av7110_dvb_c_switch._entry_ptr.54, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 263, i32 4}
!101 = !{ptr @av7110_dvb_c_switch._entry.55, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @av7110_dvb_c_switch._entry_ptr.57, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @av7110_dvb_c_switch._entry.58, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 265, i32 5}
!105 = !{ptr @av7110_dvb_c_switch._entry_ptr.59, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 268, i32 4}
!108 = !{ptr @av7110_dvb_c_switch._entry.60, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @av7110_dvb_c_switch._entry_ptr.62, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @av7110_dvb_c_switch._entry.63, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 270, i32 5}
!112 = !{ptr @av7110_dvb_c_switch._entry_ptr.64, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 273, i32 4}
!115 = !{ptr @av7110_dvb_c_switch._entry.65, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @av7110_dvb_c_switch._entry_ptr.67, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 280, i32 3}
!119 = !{ptr @av7110_dvb_c_switch._entry.68, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @av7110_dvb_c_switch._entry_ptr.70, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @av7110_dvb_c_switch._entry.71, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 290, i32 5}
!123 = !{ptr @av7110_dvb_c_switch._entry_ptr.72, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.74, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 299, i32 3}
!126 = !{ptr @av7110_dvb_c_switch._entry.73, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @av7110_dvb_c_switch._entry_ptr.75, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.77, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 878, i32 11}
!130 = !{ptr @.str.78, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 883, i32 11}
!132 = !{ptr @analog_standard, !133, !"analog_standard", i1 false, i1 false}
!133 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 876, i32 32}
!134 = !{ptr @.str.79, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 318, i32 2}
!136 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @vidioc_g_tuner._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @vidioc_g_tuner._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.81, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 324, i32 27}
!141 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 337, i32 2}
!143 = !{ptr @vidioc_g_tuner._entry.82, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @vidioc_g_tuner._entry_ptr.84, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.86, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 339, i32 2}
!147 = !{ptr @vidioc_g_tuner._entry.85, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @vidioc_g_tuner._entry_ptr.87, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.88, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 360, i32 2}
!151 = !{ptr @.str.89, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @vidioc_s_tuner._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @vidioc_s_tuner._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.91, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 367, i32 3}
!156 = !{ptr @vidioc_s_tuner._entry.90, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @vidioc_s_tuner._entry_ptr.92, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 372, i32 3}
!160 = !{ptr @vidioc_s_tuner._entry.93, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @vidioc_s_tuner._entry_ptr.95, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.97, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 377, i32 3}
!164 = !{ptr @vidioc_s_tuner._entry.96, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @vidioc_s_tuner._entry_ptr.98, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.100, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 382, i32 3}
!168 = !{ptr @vidioc_s_tuner._entry.99, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @vidioc_s_tuner._entry_ptr.101, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.103, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 387, i32 3}
!172 = !{ptr @vidioc_s_tuner._entry.102, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @vidioc_s_tuner._entry_ptr.104, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.105, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 404, i32 2}
!176 = !{ptr @.str.106, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @vidioc_g_frequency._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @vidioc_g_frequency._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.107, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 420, i32 2}
!181 = !{ptr @.str.108, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @vidioc_s_frequency._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @vidioc_s_frequency._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.109, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 153, i32 2}
!186 = !{ptr @.str.110, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @ves1820_set_tv_freq._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @ves1820_set_tv_freq._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.111, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 140, i32 2}
!191 = !{ptr @tuner_write._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @tuner_write._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.112, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 494, i32 2}
!195 = !{ptr @.str.113, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @vidioc_enumaudio._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @vidioc_enumaudio._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @msp3400_v4l2_audio, !199, !"msp3400_v4l2_audio", i1 false, i1 false}
!199 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 210, i32 32}
!200 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 506, i32 2}
!202 = !{ptr @vidioc_g_audio._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @vidioc_g_audio._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.115, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 520, i32 2}
!206 = !{ptr @.str.116, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @vidioc_s_audio._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @vidioc_s_audio._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.117, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 532, i32 2}
!211 = !{ptr @.str.118, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @vidioc_g_sliced_vbi_cap._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @vidioc_g_sliced_vbi_cap._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.119, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 548, i32 2}
!216 = !{ptr @.str.120, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @vidioc_g_fmt_sliced_vbi_out._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @vidioc_g_fmt_sliced_vbi_out._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.121, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 566, i32 2}
!221 = !{ptr @.str.122, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @vidioc_s_fmt_sliced_vbi_out._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @vidioc_s_fmt_sliced_vbi_out._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @standard, !225, !"standard", i1 false, i1 false}
!225 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 862, i32 32}
!226 = !{ptr @dvb_standard, !227, !"dvb_standard", i1 false, i1 false}
!227 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 890, i32 32}
!228 = !{ptr @av7110_vv_data_st, !229, !"av7110_vv_data_st", i1 false, i1 false}
!229 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 923, i32 30}
!230 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 612, i32 2}
!232 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @av7110_vbi_write._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @av7110_vbi_write._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!237 = distinct !{null, !236, !"<string literal>", i1 false, i1 false}
!238 = distinct !{null, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!240 = !{ptr @.str.129, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!242 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 595, i32 2}
!244 = !{ptr @av7110_vbi_reset._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @av7110_vbi_reset._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @av7110_vv_data_c, !247, !"av7110_vv_data_c", i1 false, i1 false}
!247 = !{!"../drivers/staging/media/av7110/av7110_v4l.c", i32 938, i32 30}
!248 = !{!"sp"}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{!"auto-init"}
!259 = !{i64 2158696369}
!260 = !{i64 5211886}
!261 = !{i64 2158696890}
!262 = !{i64 2158697544}
!263 = !{i64 2152199007, i64 2152199032}
!264 = !{!"branch_weights", i32 2000, i32 1}
!265 = !{i64 4694562}
!266 = !{i64 4694759}
!267 = !{i64 2152179992}
