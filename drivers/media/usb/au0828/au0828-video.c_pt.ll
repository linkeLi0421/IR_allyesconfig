; ModuleID = '/llk/IR_all_yes/drivers/media/usb/au0828/au0828-video.c_pt.bc'
source_filename = "../drivers/media/usb/au0828/au0828-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.au0828_dev = type { %struct.mutex, ptr, i32, %struct.au0828_board, [64 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, %struct.i2c_client, i32, %struct.au0828_dvb, %struct.work_struct, %struct.timer_list, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i32, i32, %struct.timer_list, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.au0828_dmaqueue, %struct.au0828_dmaqueue, %struct.au0828_usb_isoc_ctl, %struct.spinlock, i32, i32, i32, ptr, [12 x ptr], [12 x ptr], i8, i8, [16 x ptr], [16 x ptr], ptr, %struct.media_pad, %struct.media_pad, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.media_entity_notify, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.au0828_board = type { ptr, i32, i8, i8, i8, [4 x %struct.au0828_input] }
%struct.au0828_input = type { i32, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.au0828_dvb = type { %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i32, i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.au0828_dmaqueue = type { %struct.list_head, i32 }
%struct.au0828_usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_entity_notify = type { %struct.list_head, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.au0828_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32, i32, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.138, i32 }
%union.anon.138 = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.129], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.129 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.130 }>
%union.anon.130 = type { i64 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.143 }
%union.anon.143 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.145, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.145 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.139 }
%union.anon.139 = type { i32, [28 x i8] }

@__param_str_isoc_debug = internal constant [18 x i8] c"au0828.isoc_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@isoc_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_isoc_debug = internal constant %struct.kernel_param { ptr @__param_str_isoc_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @isoc_debug } }, section "__param", align 4
@__UNIQUE_ID_isoc_debugtype388 = internal constant [31 x i8] c"au0828.parmtype=isoc_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_isoc_debug389 = internal constant [62 x i8] c"au0828.parm=isoc_debug:enable debug messages [isoc transfers]\00", section ".modinfo", align 1
@au0828_v4l2_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013au0828: %s() v4l2_device_register failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"au0828_v4l2_device_register\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/au0828/au0828-video.c\00", [56 x i8] zeroinitializer }, align 32
@au0828_v4l2_device_register._entry_ptr = internal global ptr @au0828_v4l2_device_register._entry, section ".printk_index", align 4
@au0828_v4l2_device_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"au0828_video:671:(&dev->v4l2_ctrl_hdl)->_lock\00", [50 x i8] zeroinitializer }, align 32
@au0828_v4l2_device_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013au0828: %s() v4l2_ctrl_handler_init failed\0A\00", [50 x i8] zeroinitializer }, align 32
@au0828_v4l2_device_register._entry_ptr.6 = internal global ptr @au0828_v4l2_device_register._entry.4, section ".printk_index", align 4
@au0828_debug = external dso_local local_unnamed_addr global i32, align 4
@au0828_start_analog_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017au0828: au0828_start_analog_streaming called %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"au0828_start_analog_streaming\00", [34 x i8] zeroinitializer }, align 32
@au0828_start_analog_streaming._entry_ptr = internal global ptr @au0828_start_analog_streaming._entry, section ".printk_index", align 4
@au0828_start_analog_streaming._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016au0828: au0828_init_isoc failed\0A\00", [61 x i8] zeroinitializer }, align 32
@au0828_start_analog_streaming._entry_ptr.11 = internal global ptr @au0828_start_analog_streaming._entry.9, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@au0828_stop_vbi_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017au0828: au0828_stop_vbi_streaming called %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"au0828_stop_vbi_streaming\00", [38 x i8] zeroinitializer }, align 32
@au0828_stop_vbi_streaming._entry_ptr = internal global ptr @au0828_stop_vbi_streaming._entry, section ".printk_index", align 4
@au0828_analog_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017au0828: au0828_analog_unregister called\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"au0828_analog_unregister\00", [39 x i8] zeroinitializer }, align 32
@au0828_analog_unregister._entry_ptr = internal global ptr @au0828_analog_unregister._entry, section ".printk_index", align 4
@au0828_sysfs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.133, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @au0828_sysfs_lock, i64 52), ptr getelementptr (i8, ptr @au0828_sysfs_lock, i64 52) }, ptr @au0828_sysfs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.134, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@au0828_v4l2_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016au0828: stopping V4L2\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"au0828_v4l2_suspend\00", [44 x i8] zeroinitializer }, align 32
@au0828_v4l2_suspend._entry_ptr = internal global ptr @au0828_v4l2_suspend._entry, section ".printk_index", align 4
@au0828_v4l2_suspend._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016au0828: stopping V4L2 active URBs\0A\00", [59 x i8] zeroinitializer }, align 32
@au0828_v4l2_suspend._entry_ptr.20 = internal global ptr @au0828_v4l2_suspend._entry.18, section ".printk_index", align 4
@au0828_v4l2_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016au0828: restarting V4L2\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"au0828_v4l2_resume\00", [45 x i8] zeroinitializer }, align 32
@au0828_v4l2_resume._entry_ptr = internal global ptr @au0828_v4l2_resume._entry, section ".printk_index", align 4
@au0828_v4l2_resume._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 1734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016au0828: au0828 %s :submit of urb %i failed (error=%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@au0828_v4l2_resume._entry_ptr.25 = internal global ptr @au0828_v4l2_resume._entry.23, section ".printk_index", align 4
@au0828_analog_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017au0828: au0828_analog_register called for intf#%d!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"au0828_analog_register\00", [41 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr = internal global ptr @au0828_analog_register._entry, section ".printk_index", align 4
@au0828_analog_register._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016au0828: Failure setting usb interface0 to as5\0A\00", [47 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.30 = internal global ptr @au0828_analog_register._entry.28, section ".printk_index", align 4
@au0828_analog_register._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017au0828: Found isoc endpoint 0x%02x, max size = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.33 = internal global ptr @au0828_analog_register._entry.31, section ".printk_index", align 4
@au0828_analog_register._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016au0828: Could not locate isoc endpoint\0A\00", [54 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.36 = internal global ptr @au0828_analog_register._entry.34, section ".printk_index", align 4
@au0828_analog_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->open\00", [21 x i8] zeroinitializer }, align 32
@au0828_analog_register.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@au0828_analog_register.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&dev->vid_timeout)\00", [44 x i8] zeroinitializer }, align 32
@au0828_analog_register.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&dev->vbi_timeout)\00", [44 x i8] zeroinitializer }, align 32
@au0828_analog_register.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->vb_queue_lock\00", [44 x i8] zeroinitializer }, align 32
@au0828_analog_register.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev->vb_vbi_queue_lock\00", [40 x i8] zeroinitializer }, align 32
@au0828_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @au0828_v4l_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 4352, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"au0828a video\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"au0828a vbi\00", [20 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.27, ptr @.str.2, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017au0828: unable to setup videobuf2 queues (error = %d).\0A\00", [38 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.52 = internal global ptr @au0828_analog_register._entry.50, section ".printk_index", align 4
@au0828_analog_register._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.27, ptr @.str.2, i32 2012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017au0828: unable to register video device (error = %d).\0A\00", [39 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.55 = internal global ptr @au0828_analog_register._entry.53, section ".printk_index", align 4
@au0828_analog_register._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.27, ptr @.str.2, i32 2021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017au0828: unable to register vbi device (error = %d).\0A\00", [41 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.58 = internal global ptr @au0828_analog_register._entry.56, section ".printk_index", align 4
@au0828_analog_register._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.27, ptr @.str.2, i32 2030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013au0828: %s() au0282_dev_register failed to create graph\0A\00", [37 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.61 = internal global ptr @au0828_analog_register._entry.59, section ".printk_index", align 4
@au0828_analog_register._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.27, ptr @.str.2, i32 2036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017au0828: %s completed!\0A\00", [39 x i8] zeroinitializer }, align 32
@au0828_analog_register._entry_ptr.64 = internal global ptr @au0828_analog_register._entry.62, section ".printk_index", align 4
@au0828_init_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016au0828: au0828 %s :au0828: called au0828_prepare_isoc\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"au0828_init_isoc\00", [47 x i8] zeroinitializer }, align 32
@au0828_init_isoc._entry_ptr = internal global ptr @au0828_init_isoc._entry, section ".printk_index", align 4
@au0828_init_isoc._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016au0828: au0828 %s :cannot alloc memory for usb buffers\0A\00", [38 x i8] zeroinitializer }, align 32
@au0828_init_isoc._entry_ptr.69 = internal global ptr @au0828_init_isoc._entry.67, section ".printk_index", align 4
@au0828_init_isoc._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016au0828: au0828 %s :cannot allocate memory for usb transfer\0A\00", [34 x i8] zeroinitializer }, align 32
@au0828_init_isoc._entry_ptr.72 = internal global ptr @au0828_init_isoc._entry.70, section ".printk_index", align 4
@au0828_init_isoc._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016au0828: au0828 %s :cannot allocate URB\0A\00", [54 x i8] zeroinitializer }, align 32
@au0828_init_isoc._entry_ptr.75 = internal global ptr @au0828_init_isoc._entry.73, section ".printk_index", align 4
@au0828_init_isoc._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016au0828: au0828 %s :cannot allocate transfer buffer\0A\00", [42 x i8] zeroinitializer }, align 32
@au0828_init_isoc._entry_ptr.78 = internal global ptr @au0828_init_isoc._entry.76, section ".printk_index", align 4
@au0828_init_isoc._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.66, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_init_isoc._entry_ptr.80 = internal global ptr @au0828_init_isoc._entry.79, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@au0828_irq_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016au0828: au0828 %s :au0828_irq_callback called: status kill\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"au0828_irq_callback\00", [44 x i8] zeroinitializer }, align 32
@au0828_irq_callback._entry_ptr = internal global ptr @au0828_irq_callback._entry, section ".printk_index", align 4
@au0828_irq_callback._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016au0828: au0828 %s :urb completion error %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@au0828_irq_callback._entry_ptr.85 = internal global ptr @au0828_irq_callback._entry.83, section ".printk_index", align 4
@au0828_irq_callback._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016au0828: au0828 %s :urb resubmit failed (error=%i)\0A\00", [43 x i8] zeroinitializer }, align 32
@au0828_irq_callback._entry_ptr.88 = internal global ptr @au0828_irq_callback._entry.86, section ".printk_index", align 4
@au0828_isoc_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016au0828: au0828 %s :packet bigger than packet size\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"au0828_isoc_copy\00", [47 x i8] zeroinitializer }, align 32
@au0828_isoc_copy._entry_ptr = internal global ptr @au0828_isoc_copy._entry, section ".printk_index", align 4
@au0828_isoc_copy._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016au0828: au0828 %s :Video frame %s\0A\00", [59 x i8] zeroinitializer }, align 32
@au0828_isoc_copy._entry_ptr.93 = internal global ptr @au0828_isoc_copy._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"odd\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"even\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016au0828: au0828 %s :URB status %d [%s].\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"print_err_status\00", [47 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@print_err_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016au0828: au0828 %s :URB packet %d, status %d [%s].\0A\00", [43 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.109 = internal global ptr @print_err_status._entry.107, section ".printk_index", align 4
@buffer_filled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016au0828: au0828 %s :[%p/%d] wakeup\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"buffer_filled\00", [18 x i8] zeroinitializer }, align 32
@buffer_filled._entry_ptr = internal global ptr @buffer_filled._entry, section ".printk_index", align 4
@vbi_get_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016au0828: au0828 %s :No active queue to serve\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vbi_get_next_buf\00", [47 x i8] zeroinitializer }, align 32
@vbi_get_next_buf._entry_ptr = internal global ptr @vbi_get_next_buf._entry, section ".printk_index", align 4
@get_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.114, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_next_buf\00", [19 x i8] zeroinitializer }, align 32
@get_next_buf._entry_ptr = internal global ptr @get_next_buf._entry, section ".printk_index", align 4
@au0828_copy_vbi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016au0828: au0828 %s :dev is null\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"au0828_copy_vbi\00", [16 x i8] zeroinitializer }, align 32
@au0828_copy_vbi._entry_ptr = internal global ptr @au0828_copy_vbi._entry, section ".printk_index", align 4
@au0828_copy_vbi._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016au0828: au0828 %s :dma_q is null\0A\00", [60 x i8] zeroinitializer }, align 32
@au0828_copy_vbi._entry_ptr.119 = internal global ptr @au0828_copy_vbi._entry.117, section ".printk_index", align 4
@au0828_copy_vbi._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016au0828: au0828 %s :p is null\0A\00", [32 x i8] zeroinitializer }, align 32
@au0828_copy_vbi._entry_ptr.122 = internal global ptr @au0828_copy_vbi._entry.120, section ".printk_index", align 4
@au0828_copy_vbi._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016au0828: au0828 %s :outp is null\0A\00", [61 x i8] zeroinitializer }, align 32
@au0828_copy_vbi._entry_ptr.125 = internal global ptr @au0828_copy_vbi._entry.123, section ".printk_index", align 4
@au0828_copy_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016au0828: au0828 %s :Overflow of %zi bytes past buffer end (1)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_copy_video\00", [46 x i8] zeroinitializer }, align 32
@au0828_copy_video._entry_ptr = internal global ptr @au0828_copy_video._entry, section ".printk_index", align 4
@au0828_copy_video._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016au0828: au0828 %s :Overflow %zi bytes past buf end (2)\0A\00", [38 x i8] zeroinitializer }, align 32
@au0828_copy_video._entry_ptr.130 = internal global ptr @au0828_copy_video._entry.128, section ".printk_index", align 4
@au0828_uninit_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016au0828: au0828 %s :au0828: called au0828_uninit_isoc\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"au0828_uninit_isoc\00", [45 x i8] zeroinitializer }, align 32
@au0828_uninit_isoc._entry_ptr = internal global ptr @au0828_uninit_isoc._entry, section ".printk_index", align 4
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"au0828_sysfs_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_sysfs_lock\00", [46 x i8] zeroinitializer }, align 32
@au0828_analog_stream_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017au0828: au0828_analog_stream_disable called\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"au0828_analog_stream_disable\00", [35 x i8] zeroinitializer }, align 32
@au0828_analog_stream_disable._entry_ptr = internal global ptr @au0828_analog_stream_disable._entry, section ".printk_index", align 4
@au0828_init_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017au0828: %s called std_set %d dev_state %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_init_tuner\00", [46 x i8] zeroinitializer }, align 32
@au0828_init_tuner._entry_ptr = internal global ptr @au0828_init_tuner._entry, section ".printk_index", align 4
@au0828_analog_stream_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017au0828: au0828_analog_stream_enable called\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"au0828_analog_stream_enable\00", [36 x i8] zeroinitializer }, align 32
@au0828_analog_stream_enable._entry_ptr = internal global ptr @au0828_analog_stream_enable._entry, section ".printk_index", align 4
@au0828_analog_stream_enable._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017au0828: Changing intf#0 to alt 5\0A\00", [60 x i8] zeroinitializer }, align 32
@au0828_analog_stream_enable._entry_ptr.143 = internal global ptr @au0828_analog_stream_enable._entry.141, section ".printk_index", align 4
@au0828_analog_stream_enable._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016au0828: Au0828 can't set alt setting to 5!\0A\00", [50 x i8] zeroinitializer }, align 32
@au0828_analog_stream_enable._entry_ptr.146 = internal global ptr @au0828_analog_stream_enable._entry.144, section ".printk_index", align 4
@au0828_analog_stream_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017au0828: au0828_analog_stream_reset called\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"au0828_analog_stream_reset\00", [37 x i8] zeroinitializer }, align 32
@au0828_analog_stream_reset._entry_ptr = internal global ptr @au0828_analog_stream_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@au0828_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.149, ptr @.str.2, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"au0828_s_input\00", [17 x i8] zeroinitializer }, align 32
@au0828_s_input._entry_ptr = internal global ptr @au0828_s_input._entry, section ".printk_index", align 4
@au0828_s_input._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017au0828: unknown input type set [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@au0828_s_input._entry_ptr.152 = internal global ptr @au0828_s_input._entry.150, section ".printk_index", align 4
@au0828_v4l_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @au0828_v4l2_open, ptr @au0828_v4l2_close }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vbi_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enumaudio, ptr @vidioc_g_audio, ptr @vidioc_s_audio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_pixelaspect, ptr @vidioc_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@au0828_v4l2_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017au0828: %s called std_set %d dev_state %ld stream users %d users %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"au0828_v4l2_open\00", [47 x i8] zeroinitializer }, align 32
@au0828_v4l2_open._entry_ptr = internal global ptr @au0828_v4l2_open._entry, section ".printk_index", align 4
@au0828_v4l2_open._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016au0828: au0828 %s :%s: v4l2_fh_open() returned error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@au0828_v4l2_open._entry_ptr.157 = internal global ptr @au0828_v4l2_open._entry.155, section ".printk_index", align 4
@au0828_v4l2_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.158, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_v4l2_close\00", [46 x i8] zeroinitializer }, align 32
@au0828_v4l2_close._entry_ptr = internal global ptr @au0828_v4l2_close._entry, section ".printk_index", align 4
@au0828_v4l2_close._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016au0828: Au0828 can't set alternate to 0!\0A\00", [52 x i8] zeroinitializer }, align 32
@au0828_v4l2_close._entry_ptr.161 = internal global ptr @au0828_v4l2_close._entry.159, section ".printk_index", align 4
@vidioc_querycap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.162, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vidioc_querycap\00", [16 x i8] zeroinitializer }, align 32
@vidioc_querycap._entry_ptr = internal global ptr @vidioc_querycap._entry, section ".printk_index", align 4
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au0828\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@vidioc_enum_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017au0828: %s called\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vidioc_enum_fmt_vid_cap\00", [40 x i8] zeroinitializer }, align 32
@vidioc_enum_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_enum_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.167, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_g_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_g_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_g_fmt_vbi_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.168, ptr @.str.2, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_g_fmt_vbi_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vbi_cap._entry_ptr = internal global ptr @vidioc_g_fmt_vbi_cap._entry, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.169, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016au0828: %s queue busy\0A\00", [39 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr.172 = internal global ptr @vidioc_s_fmt_vid_cap._entry.170, section ".printk_index", align 4
@check_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016au0828: v4l2 ioctl: device not present\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check_dev\00", [22 x i8] zeroinitializer }, align 32
@check_dev._entry_ptr = internal global ptr @check_dev._entry, section ".printk_index", align 4
@check_dev._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016au0828: v4l2 ioctl: device is misconfigured; close and open it again\0A\00", [56 x i8] zeroinitializer }, align 32
@check_dev._entry_ptr.177 = internal global ptr @check_dev._entry.175, section ".printk_index", align 4
@au0828_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017au0828: VIDIOC_SET_FMT: interrupting stream!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_set_format\00", [46 x i8] zeroinitializer }, align 32
@au0828_set_format._entry_ptr = internal global ptr @au0828_set_format._entry, section ".printk_index", align 4
@au0828_set_format._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.2, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017au0828: error interrupting video stream!\0A\00", [52 x i8] zeroinitializer }, align 32
@au0828_set_format._entry_ptr.182 = internal global ptr @au0828_set_format._entry.180, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.183, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_g_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.184, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_g_std\00", [19 x i8] zeroinitializer }, align 32
@vidioc_g_std._entry_ptr = internal global ptr @vidioc_g_std._entry, section ".printk_index", align 4
@vidioc_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.185, ptr @.str.2, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_std\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_std._entry_ptr = internal global ptr @vidioc_s_std._entry, section ".printk_index", align 4
@vidioc_enum_input.inames = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191], [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Undefined\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Cable TV\00", [23 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVB\00", [28 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.192, ptr @.str.2, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry_ptr = internal global ptr @vidioc_enum_input._entry, section ".printk_index", align 4
@vidioc_g_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.193, ptr @.str.2, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_input\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_input._entry_ptr = internal global ptr @vidioc_g_input._entry, section ".printk_index", align 4
@vidioc_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017au0828: VIDIOC_S_INPUT in function %s, input=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_input\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_input._entry_ptr = internal global ptr @vidioc_s_input._entry, section ".printk_index", align 4
@vidioc_enumaudio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.196, ptr @.str.2, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidioc_enumaudio\00", [47 x i8] zeroinitializer }, align 32
@vidioc_enumaudio._entry_ptr = internal global ptr @vidioc_enumaudio._entry, section ".printk_index", align 4
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line in\00", [24 x i8] zeroinitializer }, align 32
@vidioc_g_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.198, ptr @.str.2, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_audio\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_audio._entry_ptr = internal global ptr @vidioc_g_audio._entry, section ".printk_index", align 4
@vidioc_s_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.199, ptr @.str.2, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_audio\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_audio._entry_ptr = internal global ptr @vidioc_s_audio._entry, section ".printk_index", align 4
@vidioc_g_pixelaspect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.200, ptr @.str.2, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_g_pixelaspect\00", [43 x i8] zeroinitializer }, align 32
@vidioc_g_pixelaspect._entry_ptr = internal global ptr @vidioc_g_pixelaspect._entry, section ".printk_index", align 4
@vidioc_g_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.201, ptr @.str.2, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry_ptr = internal global ptr @vidioc_g_tuner._entry, section ".printk_index", align 4
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Auvitek tuner\00", [18 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.203, ptr @.str.2, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_s_tuner\00", [17 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr = internal global ptr @vidioc_s_tuner._entry, section ".printk_index", align 4
@vidioc_s_tuner._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.2, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017au0828: VIDIOC_S_TUNER: signal = %x, afc = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@vidioc_s_tuner._entry_ptr.206 = internal global ptr @vidioc_s_tuner._entry.204, section ".printk_index", align 4
@vidioc_g_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.207, ptr @.str.2, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_g_frequency\00", [45 x i8] zeroinitializer }, align 32
@vidioc_g_frequency._entry_ptr = internal global ptr @vidioc_g_frequency._entry, section ".printk_index", align 4
@vidioc_s_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.208, ptr @.str.2, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_s_frequency\00", [45 x i8] zeroinitializer }, align 32
@vidioc_s_frequency._entry_ptr = internal global ptr @vidioc_s_frequency._entry, section ".printk_index", align 4
@vidioc_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.209, ptr @.str.2, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_log_status\00", [46 x i8] zeroinitializer }, align 32
@vidioc_log_status._entry_ptr = internal global ptr @vidioc_log_status._entry, section ".printk_index", align 4
@vidioc_g_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.210, ptr @.str.2, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_g_register\00", [46 x i8] zeroinitializer }, align 32
@vidioc_g_register._entry_ptr = internal global ptr @vidioc_g_register._entry, section ".printk_index", align 4
@vidioc_s_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.211, ptr @.str.2, i32 1661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_s_register\00", [46 x i8] zeroinitializer }, align 32
@vidioc_s_register._entry_ptr = internal global ptr @vidioc_s_register._entry, section ".printk_index", align 4
@au0828_analog_create_entities.inames = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr null, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191], [40 x i8] zeroinitializer }, align 32
@au0828_analog_create_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.2, i32 1855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013au0828: failed to initialize video media entity!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"au0828_analog_create_entities\00", [34 x i8] zeroinitializer }, align 32
@au0828_analog_create_entities._entry_ptr = internal global ptr @au0828_analog_create_entities._entry, section ".printk_index", align 4
@au0828_analog_create_entities._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.2, i32 1860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013au0828: failed to initialize vbi media entity!\0A\00", [46 x i8] zeroinitializer }, align 32
@au0828_analog_create_entities._entry_ptr.216 = internal global ptr @au0828_analog_create_entities._entry.214, section ".printk_index", align 4
@au0828_analog_create_entities._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.213, ptr @.str.2, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013au0828: failed to initialize input pad[%d]!\0A\00", [49 x i8] zeroinitializer }, align 32
@au0828_analog_create_entities._entry_ptr.219 = internal global ptr @au0828_analog_create_entities._entry.217, section ".printk_index", align 4
@au0828_analog_create_entities._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.213, ptr @.str.2, i32 1894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013au0828: failed to register input entity %d!\0A\00", [49 x i8] zeroinitializer }, align 32
@au0828_analog_create_entities._entry_ptr.222 = internal global ptr @au0828_analog_create_entities._entry.220, section ".printk_index", align 4
@au0828_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @au0828_start_analog_streaming, ptr @au0828_stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@au0828_vbi_qops = external dso_local constant %struct.vb2_ops, align 4
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013au0828: %s data will not fit into plane (%lu < %lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@au0828_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017au0828: au0828_stop_streaming called %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au0828_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@au0828_stop_streaming._entry_ptr = internal global ptr @au0828_stop_streaming._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.228 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.229 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.231 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.233 = private unnamed_addr constant [11 x i8] c"isoc_debug\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 36, i32 21 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 663, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 671, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 673, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 816, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 831, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 887, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 933, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"au0828_sysfs_lock\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1683, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1686, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1710, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1733, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1909, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1920, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1938, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1944, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1948, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1949, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1955, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1956, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1971, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1972, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [22 x i8] c"au0828_video_template\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1796, i32 34 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1983, i32 26 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1994, i32 29 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2002, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2011, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2020, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2029, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 2036, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 206, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 213, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 220, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 234, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 243, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 272, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 124, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 127, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 145, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 538, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 550, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 57, i32 17 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 61, i32 12 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 64, i32 12 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 67, i32 12 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 70, i32 12 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 73, i32 12 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 76, i32 12 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 79, i32 12 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 82, i32 12 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 86, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 88, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 293, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 470, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 395, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 423, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 428, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 434, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 438, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 341, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 363, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 159, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 30, i32 8 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 787, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1115, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 749, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 756, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 760, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 794, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1365, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1382, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant [16 x i8] c"au0828_v4l_fops\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1741, i32 42 }
@___asan_gen_.692 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1751, i32 36 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1005, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1015, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1038, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1098, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1185, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1188, i32 23 }
@___asan_gen_.732 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 912, i32 31 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1206, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1218, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1584, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1248, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1256, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 96, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 101, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1167, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1170, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1236, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1302, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1270, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1315, i32 21 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1316, i32 29 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1317, i32 29 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1318, i32 26 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1319, i32 25 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1320, i32 30 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1321, i32 23 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1324, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1354, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1422, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1448, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1453, i32 20 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1463, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1483, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1610, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1501, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1504, i32 19 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1521, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1529, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1543, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1558, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1671, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1647, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1660, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant [7 x i8] c"inames\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1842, i32 28 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1855, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1860, i32 3 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1890, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 1894, i32 4 }
@___asan_gen_.965 = private unnamed_addr constant [18 x i8] c"au0828_video_qops\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 914, i32 29 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 707, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.983 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.984 = private constant [43 x i8] c"../drivers/media/usb/au0828/au0828-video.c\00", align 1
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.984, i32 855, i32 2 }
@llvm.compiler.used = appending global [342 x ptr] [ptr @__UNIQUE_ID_isoc_debug389, ptr @__UNIQUE_ID_isoc_debugtype388, ptr @__param_isoc_debug, ptr @au0828_analog_create_entities._entry, ptr @au0828_analog_create_entities._entry.214, ptr @au0828_analog_create_entities._entry.217, ptr @au0828_analog_create_entities._entry.220, ptr @au0828_analog_create_entities._entry_ptr, ptr @au0828_analog_create_entities._entry_ptr.216, ptr @au0828_analog_create_entities._entry_ptr.219, ptr @au0828_analog_create_entities._entry_ptr.222, ptr @au0828_analog_register._entry, ptr @au0828_analog_register._entry.28, ptr @au0828_analog_register._entry.31, ptr @au0828_analog_register._entry.34, ptr @au0828_analog_register._entry.50, ptr @au0828_analog_register._entry.53, ptr @au0828_analog_register._entry.56, ptr @au0828_analog_register._entry.59, ptr @au0828_analog_register._entry.62, ptr @au0828_analog_register._entry_ptr, ptr @au0828_analog_register._entry_ptr.30, ptr @au0828_analog_register._entry_ptr.33, ptr @au0828_analog_register._entry_ptr.36, ptr @au0828_analog_register._entry_ptr.52, ptr @au0828_analog_register._entry_ptr.55, ptr @au0828_analog_register._entry_ptr.58, ptr @au0828_analog_register._entry_ptr.61, ptr @au0828_analog_register._entry_ptr.64, ptr @au0828_analog_stream_disable._entry, ptr @au0828_analog_stream_disable._entry_ptr, ptr @au0828_analog_stream_enable._entry, ptr @au0828_analog_stream_enable._entry.141, ptr @au0828_analog_stream_enable._entry.144, ptr @au0828_analog_stream_enable._entry_ptr, ptr @au0828_analog_stream_enable._entry_ptr.143, ptr @au0828_analog_stream_enable._entry_ptr.146, ptr @au0828_analog_stream_reset._entry, ptr @au0828_analog_stream_reset._entry_ptr, ptr @au0828_analog_unregister._entry, ptr @au0828_analog_unregister._entry_ptr, ptr @au0828_copy_vbi._entry, ptr @au0828_copy_vbi._entry.117, ptr @au0828_copy_vbi._entry.120, ptr @au0828_copy_vbi._entry.123, ptr @au0828_copy_vbi._entry_ptr, ptr @au0828_copy_vbi._entry_ptr.119, ptr @au0828_copy_vbi._entry_ptr.122, ptr @au0828_copy_vbi._entry_ptr.125, ptr @au0828_copy_video._entry, ptr @au0828_copy_video._entry.128, ptr @au0828_copy_video._entry_ptr, ptr @au0828_copy_video._entry_ptr.130, ptr @au0828_init_isoc._entry, ptr @au0828_init_isoc._entry.67, ptr @au0828_init_isoc._entry.70, ptr @au0828_init_isoc._entry.73, ptr @au0828_init_isoc._entry.76, ptr @au0828_init_isoc._entry.79, ptr @au0828_init_isoc._entry_ptr, ptr @au0828_init_isoc._entry_ptr.69, ptr @au0828_init_isoc._entry_ptr.72, ptr @au0828_init_isoc._entry_ptr.75, ptr @au0828_init_isoc._entry_ptr.78, ptr @au0828_init_isoc._entry_ptr.80, ptr @au0828_init_tuner._entry, ptr @au0828_init_tuner._entry_ptr, ptr @au0828_irq_callback._entry, ptr @au0828_irq_callback._entry.83, ptr @au0828_irq_callback._entry.86, ptr @au0828_irq_callback._entry_ptr, ptr @au0828_irq_callback._entry_ptr.85, ptr @au0828_irq_callback._entry_ptr.88, ptr @au0828_isoc_copy._entry, ptr @au0828_isoc_copy._entry.91, ptr @au0828_isoc_copy._entry_ptr, ptr @au0828_isoc_copy._entry_ptr.93, ptr @au0828_s_input._entry, ptr @au0828_s_input._entry.150, ptr @au0828_s_input._entry_ptr, ptr @au0828_s_input._entry_ptr.152, ptr @au0828_set_format._entry, ptr @au0828_set_format._entry.180, ptr @au0828_set_format._entry_ptr, ptr @au0828_set_format._entry_ptr.182, ptr @au0828_start_analog_streaming._entry, ptr @au0828_start_analog_streaming._entry.9, ptr @au0828_start_analog_streaming._entry_ptr, ptr @au0828_start_analog_streaming._entry_ptr.11, ptr @au0828_stop_streaming._entry, ptr @au0828_stop_streaming._entry_ptr, ptr @au0828_stop_vbi_streaming._entry, ptr @au0828_stop_vbi_streaming._entry_ptr, ptr @au0828_uninit_isoc._entry, ptr @au0828_uninit_isoc._entry_ptr, ptr @au0828_v4l2_close._entry, ptr @au0828_v4l2_close._entry.159, ptr @au0828_v4l2_close._entry_ptr, ptr @au0828_v4l2_close._entry_ptr.161, ptr @au0828_v4l2_device_register._entry, ptr @au0828_v4l2_device_register._entry.4, ptr @au0828_v4l2_device_register._entry_ptr, ptr @au0828_v4l2_device_register._entry_ptr.6, ptr @au0828_v4l2_open._entry, ptr @au0828_v4l2_open._entry.155, ptr @au0828_v4l2_open._entry_ptr, ptr @au0828_v4l2_open._entry_ptr.157, ptr @au0828_v4l2_resume._entry, ptr @au0828_v4l2_resume._entry.23, ptr @au0828_v4l2_resume._entry_ptr, ptr @au0828_v4l2_resume._entry_ptr.25, ptr @au0828_v4l2_suspend._entry, ptr @au0828_v4l2_suspend._entry.18, ptr @au0828_v4l2_suspend._entry_ptr, ptr @au0828_v4l2_suspend._entry_ptr.20, ptr @buffer_filled._entry, ptr @buffer_filled._entry_ptr, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry_ptr, ptr @check_dev._entry, ptr @check_dev._entry.175, ptr @check_dev._entry_ptr, ptr @check_dev._entry_ptr.177, ptr @get_next_buf._entry, ptr @get_next_buf._entry_ptr, ptr @print_err_status._entry, ptr @print_err_status._entry.107, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.109, ptr @vbi_get_next_buf._entry, ptr @vbi_get_next_buf._entry_ptr, ptr @vidioc_enum_fmt_vid_cap._entry, ptr @vidioc_enum_fmt_vid_cap._entry_ptr, ptr @vidioc_enum_input._entry, ptr @vidioc_enum_input._entry_ptr, ptr @vidioc_enumaudio._entry, ptr @vidioc_enumaudio._entry_ptr, ptr @vidioc_g_audio._entry, ptr @vidioc_g_audio._entry_ptr, ptr @vidioc_g_fmt_vbi_cap._entry, ptr @vidioc_g_fmt_vbi_cap._entry_ptr, ptr @vidioc_g_fmt_vid_cap._entry, ptr @vidioc_g_fmt_vid_cap._entry_ptr, ptr @vidioc_g_frequency._entry, ptr @vidioc_g_frequency._entry_ptr, ptr @vidioc_g_input._entry, ptr @vidioc_g_input._entry_ptr, ptr @vidioc_g_pixelaspect._entry, ptr @vidioc_g_pixelaspect._entry_ptr, ptr @vidioc_g_register._entry, ptr @vidioc_g_register._entry_ptr, ptr @vidioc_g_std._entry, ptr @vidioc_g_std._entry_ptr, ptr @vidioc_g_tuner._entry, ptr @vidioc_g_tuner._entry_ptr, ptr @vidioc_log_status._entry, ptr @vidioc_log_status._entry_ptr, ptr @vidioc_querycap._entry, ptr @vidioc_querycap._entry_ptr, ptr @vidioc_s_audio._entry, ptr @vidioc_s_audio._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry, ptr @vidioc_s_fmt_vid_cap._entry.170, ptr @vidioc_s_fmt_vid_cap._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry_ptr.172, ptr @vidioc_s_frequency._entry, ptr @vidioc_s_frequency._entry_ptr, ptr @vidioc_s_input._entry, ptr @vidioc_s_input._entry_ptr, ptr @vidioc_s_register._entry, ptr @vidioc_s_register._entry_ptr, ptr @vidioc_s_std._entry, ptr @vidioc_s_std._entry_ptr, ptr @vidioc_s_tuner._entry, ptr @vidioc_s_tuner._entry.204, ptr @vidioc_s_tuner._entry_ptr, ptr @vidioc_s_tuner._entry_ptr.206, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @isoc_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @au0828_v4l2_device_register._key, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @au0828_sysfs_lock, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @au0828_analog_register.__key, ptr @.str.37, ptr @au0828_analog_register.__key.38, ptr @.str.39, ptr @au0828_analog_register.__key.40, ptr @.str.41, ptr @au0828_analog_register.__key.42, ptr @.str.43, ptr @au0828_analog_register.__key.44, ptr @.str.45, ptr @au0828_analog_register.__key.46, ptr @.str.47, ptr @au0828_video_template, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @au0828_v4l_fops, ptr @video_ioctl_ops, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @vidioc_enum_input.inames, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @au0828_analog_create_entities.inames, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @au0828_video_qops, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.227], section "llvm.metadata"
@0 = internal global [251 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isoc_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_device_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_device_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_start_analog_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_start_analog_streaming._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_stop_vbi_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_sysfs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_suspend._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_resume._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_register._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init_isoc._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init_isoc._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init_isoc._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init_isoc._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init_isoc._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_irq_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_irq_callback._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_irq_callback._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_isoc_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_isoc_copy._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_filled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_get_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_copy_vbi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_copy_vbi._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_copy_vbi._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_copy_vbi._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_copy_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_copy_video._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_uninit_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_stream_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_stream_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_stream_enable._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_stream_enable._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_stream_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_s_input._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_open._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_v4l2_close._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_querycap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_vbi_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_dev._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_set_format._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_input.inames to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enumaudio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_pixelaspect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_tuner._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_create_entities.inames to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_create_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_create_entities._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_create_entities._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_analog_create_entities._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_usb_v4l2_media_release(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 0
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2) #9
  %arrayidx.1 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.1 = icmp eq i32 %3, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %arrayidx2.1 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.1) #9
  %arrayidx.2 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.2 = icmp eq i32 %5, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %arrayidx2.2 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 2
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.2) #9
  %arrayidx.3 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.3 = icmp eq i32 %7, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.3 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 3
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_v4l2_device_register(ptr noundef %interface, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %media_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 66
  %2 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %media_dev, align 4
  %v4l2_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13
  %mdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mdev, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %call = tail call i32 @v4l2_device_register(ptr noundef %dev2, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %release = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13, i32 9
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @au0828_usb_v4l2_release, ptr %release, align 4
  %v4l2_ctrl_hdl = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 14
  %call9 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %v4l2_ctrl_hdl, i32 noundef 4, ptr noundef nonnull @au0828_v4l2_device_register._key, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13, i32 6
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %v4l2_ctrl_hdl, ptr %ctrl_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %do.end14 ], [ 0, %if.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_usb_v4l2_release(ptr noundef %v4l2_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_ctrl_hdl = getelementptr i8, ptr %v4l2_dev, i32 128
  tail call void @v4l2_ctrl_handler_free(ptr noundef %v4l2_ctrl_hdl) #9
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  %arrayidx.i = getelementptr i8, ptr %v4l2_dev, i32 -4800
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp eq i32 %1, 0
  br i1 %cmp1.i, label %entry.au0828_usb_v4l2_media_release.exit_crit_edge, label %if.end.i

entry.au0828_usb_v4l2_media_release.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_usb_v4l2_media_release.exit

if.end.i:                                         ; preds = %entry
  %arrayidx2.i = getelementptr i8, ptr %v4l2_dev, i32 5020
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.i) #9
  %arrayidx.1.i = getelementptr i8, ptr %v4l2_dev, i32 -4784
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.1.i = icmp eq i32 %3, 0
  br i1 %cmp1.1.i, label %if.end.i.au0828_usb_v4l2_media_release.exit_crit_edge, label %if.end.1.i

if.end.i.au0828_usb_v4l2_media_release.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_usb_v4l2_media_release.exit

if.end.1.i:                                       ; preds = %if.end.i
  %arrayidx2.1.i = getelementptr i8, ptr %v4l2_dev, i32 5100
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.1.i) #9
  %arrayidx.2.i = getelementptr i8, ptr %v4l2_dev, i32 -4768
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.2.i = icmp eq i32 %5, 0
  br i1 %cmp1.2.i, label %if.end.1.i.au0828_usb_v4l2_media_release.exit_crit_edge, label %if.end.2.i

if.end.1.i.au0828_usb_v4l2_media_release.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_usb_v4l2_media_release.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  %arrayidx2.2.i = getelementptr i8, ptr %v4l2_dev, i32 5180
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.2.i) #9
  %arrayidx.3.i = getelementptr i8, ptr %v4l2_dev, i32 -4752
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.3.i = icmp eq i32 %7, 0
  br i1 %cmp1.3.i, label %if.end.2.i.au0828_usb_v4l2_media_release.exit_crit_edge, label %if.end.3.i

if.end.2.i.au0828_usb_v4l2_media_release.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_usb_v4l2_media_release.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.3.i = getelementptr i8, ptr %v4l2_dev, i32 5260
  tail call void @media_device_unregister_entity(ptr noundef %arrayidx2.3.i) #9
  br label %au0828_usb_v4l2_media_release.exit

au0828_usb_v4l2_media_release.exit:               ; preds = %if.end.3.i, %if.end.2.i.au0828_usb_v4l2_media_release.exit_crit_edge, %if.end.1.i.au0828_usb_v4l2_media_release.exit_crit_edge, %if.end.i.au0828_usb_v4l2_media_release.exit_crit_edge, %entry.au0828_usb_v4l2_media_release.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -4912
  tail call void @au0828_usb_release(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_start_analog_streaming(ptr nocapture noundef readonly %vq, i32 %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %streaming_users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %3 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %streaming_users, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %4) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %frame_count = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %frame_count, align 8
  br label %if.end6

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %vbi_frame_count = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %vbi_frame_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vbi_frame_count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %streaming_users7 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %streaming_users7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %streaming_users7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end6.if.end57_crit_edge

if.end6.if.end57_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then9:                                         ; preds = %if.end6
  %call.i = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 1292, i32 noundef 1) #9
  %max_pkt_size = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 57
  %11 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_pkt_size, align 4
  %vidq.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 52
  %13 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then9.do.end3.i_crit_edge, label %do.end.i

if.then9.do.end3.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then9.do.end3.i_crit_edge
  %isoc_ctl.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54
  %isoc_copy4.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54, i32 14
  %14 = ptrtoint ptr %isoc_copy4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @au0828_isoc_copy, ptr %isoc_copy4.i, align 8
  %num_bufs6.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54, i32 1
  %15 = ptrtoint ptr %num_bufs6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %num_bufs6.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 48) #13
  %urb9.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54, i32 2
  %17 = ptrtoint ptr %urb9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i.i, ptr %urb9.i, align 8
  %tobool12.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool12.not.i, label %do.body14.i, label %if.end25.i

do.body14.i:                                      ; preds = %do.end3.i
  %18 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not.i = icmp eq i32 %18, 0
  br i1 %tobool15.not.i, label %do.body14.i.do.end16_crit_edge, label %do.end19.i

do.body14.i.do.end16_crit_edge:                   ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66) #12
  br label %do.end16

if.end25.i:                                       ; preds = %do.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 48) #13
  %transfer_buffer.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54, i32 3
  %20 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i1.i, ptr %transfer_buffer.i, align 4
  %tobool30.not.i = icmp eq ptr %call7.i.i.i1.i, null
  br i1 %tobool30.not.i, label %do.body32.i, label %if.end45.i

do.body32.i:                                      ; preds = %if.end25.i
  %21 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not.i = icmp eq i32 %21, 0
  br i1 %tobool33.not.i, label %do.body32.i.do.end42.i_crit_edge, label %do.end37.i

do.body32.i.do.end42.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

do.end37.i:                                       ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66) #12
  br label %do.end42.i

do.end42.i:                                       ; preds = %do.end37.i, %do.body32.i.do.end42.i_crit_edge
  %22 = ptrtoint ptr %urb9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb9.i, align 8
  tail call void @kfree(ptr noundef %23) #9
  br label %do.end16

if.end45.i:                                       ; preds = %if.end25.i
  %24 = ptrtoint ptr %isoc_ctl.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %12, ptr %isoc_ctl.i, align 8
  %buf.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54, i32 11
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %buf.i, align 4
  %mul.i = shl i32 %12, 7
  %26 = ptrtoint ptr %num_bufs6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_bufs6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5.i = icmp sgt i32 %27, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %if.end45.i.do.body20_crit_edge

if.end45.i.do.body20_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

for.body.lr.ph.i:                                 ; preds = %if.end45.i
  %usbdev.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 1
  %isoc_in_endpointaddr.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 41
  br label %for.body.i

for.cond115.preheader.i:                          ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp1187.i = icmp sgt i32 %69, 0
  br i1 %cmp1187.i, label %for.cond115.preheader.i.for.body120.i_crit_edge, label %for.cond115.preheader.i.do.body20_crit_edge

for.cond115.preheader.i.do.body20_crit_edge:      ; preds = %for.cond115.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

for.cond115.preheader.i.for.body120.i_crit_edge:  ; preds = %for.cond115.preheader.i
  br label %for.body120.i

for.body.i:                                       ; preds = %for.inc112.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc113.i, %for.inc112.i.for.body.i_crit_edge ]
  %call53.i = tail call ptr @usb_alloc_urb(i32 noundef 128, i32 noundef 3264) #9
  %tobool54.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool54.not.i, label %do.body56.i, label %if.end67.i

do.body56.i:                                      ; preds = %for.body.i
  %28 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool57.not.i = icmp eq i32 %28, 0
  br i1 %tobool57.not.i, label %do.body56.i.do.end66.i_crit_edge, label %do.end61.i

do.body56.i.do.end66.i_crit_edge:                 ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66.i

do.end61.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #11
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.66) #12
  br label %do.end66.i

do.end66.i:                                       ; preds = %do.end61.i, %do.body56.i.do.end66.i_crit_edge
  tail call fastcc void @au0828_uninit_isoc(ptr noundef %1) #9
  br label %do.end16

if.end67.i:                                       ; preds = %for.body.i
  %29 = ptrtoint ptr %urb9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb9.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %30, i32 %i.06.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call53.i, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usbdev.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 15
  %call70.i = tail call ptr @usb_alloc_coherent(ptr noundef %33, i32 noundef %mul.i, i32 noundef 3264, ptr noundef %transfer_dma.i) #9
  %34 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %transfer_buffer.i, align 4
  %arrayidx73.i = getelementptr ptr, ptr %35, i32 %i.06.i
  %36 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call70.i, ptr %arrayidx73.i, align 4
  %37 = load ptr, ptr %transfer_buffer.i, align 4
  %arrayidx76.i = getelementptr ptr, ptr %37, i32 %i.06.i
  %38 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx76.i, align 4
  %tobool77.not.i = icmp eq ptr %39, null
  br i1 %tobool77.not.i, label %do.body79.i, label %if.end90.i

do.body79.i:                                      ; preds = %if.end67.i
  %40 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool80.not.i = icmp eq i32 %40, 0
  br i1 %tobool80.not.i, label %do.body79.i.do.end89.i_crit_edge, label %do.end84.i

do.body79.i.do.end89.i_crit_edge:                 ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end89.i

do.end84.i:                                       ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #11
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.66) #12
  br label %do.end89.i

do.end89.i:                                       ; preds = %do.end84.i, %do.body79.i.do.end89.i_crit_edge
  tail call fastcc void @au0828_uninit_isoc(ptr noundef %1) #9
  br label %do.end16

if.end90.i:                                       ; preds = %if.end67.i
  %41 = call ptr @memset(ptr %39, i32 0, i32 %mul.i)
  %42 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usbdev.i, align 4
  %44 = ptrtoint ptr %isoc_in_endpointaddr.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %isoc_in_endpointaddr.i, align 1
  %conv.i = zext i8 %45 to i32
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 8
  %shl.i.i = shl i32 %47, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or96.i = or i32 %or.i.i, 128
  %48 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %transfer_buffer.i, align 4
  %arrayidx100.i = getelementptr ptr, ptr %49, i32 %i.06.i
  %50 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx100.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 8
  %52 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %43, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 10
  %53 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or96.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 28
  %56 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @au0828_irq_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 27
  %57 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %vidq.i, ptr %context4.i.i, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 25
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %58, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 23
  %60 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %start_frame.i.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 24
  %61 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 128, ptr %number_of_packets.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call53.i, i32 0, i32 13
  %62 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 6, ptr %transfer_flags.i, align 4
  br label %for.body104.i

for.body104.i:                                    ; preds = %for.body104.i.for.body104.i_crit_edge, %if.end90.i
  %k.04.i = phi i32 [ 0, %if.end90.i ], [ %add.i, %for.body104.i.for.body104.i_crit_edge ]
  %j.03.i = phi i32 [ 0, %if.end90.i ], [ %inc.i, %for.body104.i.for.body104.i_crit_edge ]
  %arrayidx105.i = getelementptr %struct.urb, ptr %call53.i, i32 0, i32 29, i32 %j.03.i
  %63 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %k.04.i, ptr %arrayidx105.i, align 4
  %64 = ptrtoint ptr %isoc_ctl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %isoc_ctl.i, align 8
  %length.i = getelementptr %struct.urb, ptr %call53.i, i32 0, i32 29, i32 %j.03.i, i32 1
  %66 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %length.i, align 4
  %67 = load i32, ptr %isoc_ctl.i, align 8
  %add.i = add i32 %67, %k.04.i
  %inc.i = add nuw nsw i32 %j.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.inc112.i, label %for.body104.i.for.body104.i_crit_edge

for.body104.i.for.body104.i_crit_edge:            ; preds = %for.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body104.i

for.inc112.i:                                     ; preds = %for.body104.i
  %inc113.i = add nuw nsw i32 %i.06.i, 1
  %68 = ptrtoint ptr %num_bufs6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_bufs6.i, align 4
  %cmp.i = icmp slt i32 %inc113.i, %69
  br i1 %cmp.i, label %for.inc112.i.for.body.i_crit_edge, label %for.cond115.preheader.i

for.inc112.i.for.body.i_crit_edge:                ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body120.i:                                    ; preds = %for.inc139.i.for.body120.i_crit_edge, %for.cond115.preheader.i.for.body120.i_crit_edge
  %i.18.i = phi i32 [ %inc140.i, %for.inc139.i.for.body120.i_crit_edge ], [ 0, %for.cond115.preheader.i.for.body120.i_crit_edge ]
  %70 = ptrtoint ptr %urb9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %urb9.i, align 8
  %arrayidx123.i = getelementptr ptr, ptr %71, i32 %i.18.i
  %72 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx123.i, align 4
  %call124.i = tail call i32 @usb_submit_urb(ptr noundef %73, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %tobool125.not.i = icmp eq i32 %call124.i, 0
  br i1 %tobool125.not.i, label %for.inc139.i, label %do.body127.i

do.body127.i:                                     ; preds = %for.body120.i
  %74 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool128.not.i = icmp eq i32 %74, 0
  br i1 %tobool128.not.i, label %do.body127.i.au0828_init_isoc.exit_crit_edge, label %do.end132.i

do.body127.i.au0828_init_isoc.exit_crit_edge:     ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_init_isoc.exit

do.end132.i:                                      ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #11
  %call134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.66, i32 noundef %i.18.i, i32 noundef %call124.i) #12
  br label %au0828_init_isoc.exit

for.inc139.i:                                     ; preds = %for.body120.i
  %inc140.i = add nuw nsw i32 %i.18.i, 1
  %75 = ptrtoint ptr %num_bufs6.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_bufs6.i, align 4
  %cmp118.i = icmp slt i32 %inc140.i, %76
  br i1 %cmp118.i, label %for.inc139.i.for.body120.i_crit_edge, label %for.inc139.i.do.body20_crit_edge

for.inc139.i.do.body20_crit_edge:                 ; preds = %for.inc139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

for.inc139.i.for.body120.i_crit_edge:             ; preds = %for.inc139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120.i

au0828_init_isoc.exit:                            ; preds = %do.end132.i, %do.body127.i.au0828_init_isoc.exit_crit_edge
  tail call fastcc void @au0828_uninit_isoc(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i)
  %cmp12 = icmp slt i32 %call124.i, 0
  br i1 %cmp12, label %au0828_init_isoc.exit.do.end16_crit_edge, label %au0828_init_isoc.exit.do.body20_crit_edge

au0828_init_isoc.exit.do.body20_crit_edge:        ; preds = %au0828_init_isoc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

au0828_init_isoc.exit.do.end16_crit_edge:         ; preds = %au0828_init_isoc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end16:                                         ; preds = %au0828_init_isoc.exit.do.end16_crit_edge, %do.end89.i, %do.end66.i, %do.end42.i, %do.end19.i, %do.body14.i.do.end16_crit_edge
  %retval.0.i88 = phi i32 [ %call124.i, %au0828_init_isoc.exit.do.end16_crit_edge ], [ -12, %do.end89.i ], [ -12, %do.end66.i ], [ -12, %do.end42.i ], [ -12, %do.end19.i ], [ -12, %do.body14.i.do.end16_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %cleanup

do.body20:                                        ; preds = %au0828_init_isoc.exit.do.body20_crit_edge, %for.inc139.i.do.body20_crit_edge, %for.cond115.preheader.i.do.body20_crit_edge, %if.end45.i.do.body20_crit_edge
  %retval.0.i93 = phi i32 [ %call124.i, %au0828_init_isoc.exit.do.body20_crit_edge ], [ 0, %for.cond115.preheader.i.do.body20_crit_edge ], [ 0, %if.end45.i.do.body20_crit_edge ], [ 0, %for.inc139.i.do.body20_crit_edge ]
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %77 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn96 = load ptr, ptr %subdevs, align 4
  %cmp25.not98 = icmp eq ptr %.pn96, %subdevs
  br i1 %cmp25.not98, label %do.body20.do.end42_crit_edge, label %do.body20.for.body_crit_edge

do.body20.for.body_crit_edge:                     ; preds = %do.body20
  br label %for.body

do.body20.do.end42_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body20.for.body_crit_edge
  %.pn99 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn96, %do.body20.for.body_crit_edge ]
  %__sd.0100 = getelementptr i8, ptr %.pn99, i32 -80
  %ops = getelementptr i8, ptr %.pn99, i32 24
  %78 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %video, align 4
  %tobool26.not = icmp eq ptr %81, null
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %81, i32 0, i32 10
  %82 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_stream, align 4
  %tobool29.not = icmp eq ptr %83, null
  br i1 %tobool29.not, label %land.lhs.true.for.inc_crit_edge, label %if.then30

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 %83(ptr noundef %__sd.0100, i32 noundef 1) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %84 = ptrtoint ptr %.pn99 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn = load ptr, ptr %.pn99, align 4
  %cmp25.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp25.not, label %for.inc.do.end42_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

do.end42:                                         ; preds = %for.inc.do.end42_crit_edge, %do.body20.do.end42_crit_edge
  %85 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vq, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i32 %86, label %do.end42.if.end57_crit_edge [
    i32 1, label %if.then47
    i32 4, label %if.then52
  ]

do.end42.if.end57_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then47:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %vid_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 25
  %88 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %vid_timeout_running, align 8
  %vid_timeout = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 24
  br label %if.end57.sink.split

if.then52:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %vbi_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 27
  %89 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %vbi_timeout_running, align 4
  %vbi_timeout = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 26
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.then52, %if.then47
  %vid_timeout.sink = phi ptr [ %vid_timeout, %if.then47 ], [ %vbi_timeout, %if.then52 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %90, 10
  %call48 = tail call i32 @mod_timer(ptr noundef %vid_timeout.sink, i32 noundef %add) #9
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %do.end42.if.end57_crit_edge, %if.end6.if.end57_crit_edge
  %rc.0 = phi i32 [ 0, %if.end6.if.end57_crit_edge ], [ %retval.0.i93, %do.end42.if.end57_crit_edge ], [ %retval.0.i93, %if.end57.sink.split ]
  %91 = ptrtoint ptr %streaming_users7 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %streaming_users7, align 4
  %inc = add i32 %92, 1
  store i32 %inc, ptr %streaming_users7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end16
  %retval.0 = phi i32 [ %retval.0.i88, %do.end16 ], [ %rc.0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_isoc_copy(ptr noundef %dev, ptr nocapture noundef readonly %urb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %vbiq = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 53
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup172_crit_edge, label %if.end

entry.cleanup172_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup172

if.end:                                           ; preds = %entry
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 48
  %2 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup172_crit_edge

if.end.cleanup172_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup172

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dev_state, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.cleanup172_crit_edge

lor.lhs.false.cleanup172_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup172

if.end6:                                          ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then7, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end6
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %9, label %if.then7.sw.epilog.i_crit_edge [
    i32 -2, label %sw.bb.i
    i32 -104, label %sw.bb1.i
    i32 -63, label %sw.bb2.i
    i32 -32, label %sw.bb3.i
    i32 -75, label %sw.bb4.i
    i32 -71, label %sw.bb5.i
    i32 -84, label %sw.bb6.i
    i32 -62, label %sw.bb7.i
  ]

if.then7.sw.epilog.i_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then7.sw.epilog.i_crit_edge
  %errmsg.0.i = phi ptr [ @.str.96, %if.then7.sw.epilog.i_crit_edge ], [ @.str.104, %sw.bb7.i ], [ @.str.103, %sw.bb6.i ], [ @.str.102, %sw.bb5.i ], [ @.str.101, %sw.bb4.i ], [ @.str.100, %sw.bb3.i ], [ @.str.99, %sw.bb2.i ], [ @.str.98, %sw.bb1.i ], [ @.str.97, %sw.bb.i ]
  %11 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %sw.epilog.i.print_err_status.exit_crit_edge, label %do.end.i

sw.epilog.i.print_err_status.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef %9, ptr noundef nonnull %errmsg.0.i) #12
  br label %print_err_status.exit

print_err_status.exit:                            ; preds = %do.end.i, %sw.epilog.i.print_err_status.exit_crit_edge
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %cmp10 = icmp eq i32 %13, -2
  br i1 %cmp10, label %print_err_status.exit.cleanup172_crit_edge, label %print_err_status.exit.if.end13_crit_edge

print_err_status.exit.if.end13_crit_edge:         ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

print_err_status.exit.cleanup172_crit_edge:       ; preds = %print_err_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup172

if.end13:                                         ; preds = %print_err_status.exit.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %buf14 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 11
  %14 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf14, align 4
  %cmp15.not = icmp eq ptr %15, null
  br i1 %cmp15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %15, i32 noundef 0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %outp.0 = phi ptr [ %call17, %if.then16 ], [ null, %if.end13.if.end18_crit_edge ]
  %vbi_buf20 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 12
  %16 = ptrtoint ptr %vbi_buf20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbi_buf20, align 8
  %cmp21.not = icmp eq ptr %17, null
  br i1 %cmp21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %17, i32 noundef 0) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %vbioutp.0 = phi ptr [ %call25, %if.then22 ], [ null, %if.end18.if.end26_crit_edge ]
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %18 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp27401 = icmp sgt i32 %19, 0
  br i1 %cmp27401, label %for.body.lr.ph, label %if.end26.cleanup172_crit_edge

if.end26.cleanup172_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup172

for.body.lr.ph:                                   ; preds = %if.end26
  %max_pkt_size = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 57
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %vbi_frame_count.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 23
  %frame_count.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 22
  %pos.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 53, i32 1
  %pos.i318 = getelementptr inbounds %struct.au0828_dmaqueue, ptr %1, i32 0, i32 1
  %buf15.i = getelementptr i8, ptr %1, i32 68
  %vid_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 25
  %vid_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 24
  %vbi_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 27
  %vbi_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 26
  %vbi_read = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 34
  %vbi_width = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 32
  %vbi_height = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 33
  %cmp6.i = icmp eq ptr %vbiq, null
  %width.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 30
  %greenscreen_detected.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0408 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %vbioutp.1406 = phi ptr [ %vbioutp.0, %for.body.lr.ph ], [ %vbioutp.5, %cleanup.for.body_crit_edge ]
  %outp.1404 = phi ptr [ %outp.0, %for.body.lr.ph ], [ %outp.5, %cleanup.for.body_crit_edge ]
  %vbi_buf.0403 = phi ptr [ %17, %for.body.lr.ph ], [ %vbi_buf.4, %cleanup.for.body_crit_edge ]
  %buf.0402 = phi ptr [ %15, %for.body.lr.ph ], [ %buf.4, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0408
  %status29 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0408, i32 3
  %20 = ptrtoint ptr %status29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp30 = icmp slt i32 %21, 0
  br i1 %cmp30, label %if.then31, label %for.body.if.end38_crit_edge

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then31:                                        ; preds = %for.body
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %21, label %if.then31.do.body12.i_crit_edge [
    i32 -2, label %sw.bb.i269
    i32 -104, label %sw.bb1.i270
    i32 -63, label %sw.bb2.i271
    i32 -32, label %sw.bb3.i272
    i32 -75, label %sw.bb4.i273
    i32 -71, label %sw.bb5.i274
    i32 -84, label %sw.bb6.i275
    i32 -62, label %sw.bb7.i276
  ]

if.then31.do.body12.i_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb.i269:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb1.i270:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb2.i271:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb3.i272:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb4.i273:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb5.i274:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb6.i275:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

sw.bb7.i276:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

do.body12.i:                                      ; preds = %sw.bb7.i276, %sw.bb6.i275, %sw.bb5.i274, %sw.bb4.i273, %sw.bb3.i272, %sw.bb2.i271, %sw.bb1.i270, %sw.bb.i269, %if.then31.do.body12.i_crit_edge
  %errmsg.0.i277 = phi ptr [ @.str.96, %if.then31.do.body12.i_crit_edge ], [ @.str.104, %sw.bb7.i276 ], [ @.str.103, %sw.bb6.i275 ], [ @.str.102, %sw.bb5.i274 ], [ @.str.101, %sw.bb4.i273 ], [ @.str.100, %sw.bb3.i272 ], [ @.str.99, %sw.bb2.i271 ], [ @.str.98, %sw.bb1.i270 ], [ @.str.97, %sw.bb.i269 ]
  %23 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i278 = icmp eq i32 %23, 0
  br i1 %tobool.not.i278, label %do.body12.i.print_err_status.exit282_crit_edge, label %do.end17.i

do.body12.i.print_err_status.exit282_crit_edge:   ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_err_status.exit282

do.end17.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.106, i32 noundef %i.0408, i32 noundef %21, ptr noundef nonnull %errmsg.0.i277) #12
  br label %print_err_status.exit282

print_err_status.exit282:                         ; preds = %do.end17.i, %do.body12.i.print_err_status.exit282_crit_edge
  %24 = ptrtoint ptr %status29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %25)
  %cmp35.not = icmp eq i32 %25, -71
  br i1 %cmp35.not, label %print_err_status.exit282.if.end38_crit_edge, label %print_err_status.exit282.cleanup_crit_edge

print_err_status.exit282.cleanup_crit_edge:       ; preds = %print_err_status.exit282
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

print_err_status.exit282.if.end38_crit_edge:      ; preds = %print_err_status.exit282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %print_err_status.exit282.if.end38_crit_edge, %for.body.if.end38_crit_edge
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0408, i32 2
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp41 = icmp eq i32 %27, 0
  br i1 %cmp41, label %if.end38.cleanup_crit_edge, label %if.end43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %28 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_pkt_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp47 = icmp ugt i32 %27, %29
  br i1 %cmp47, label %do.body, label %if.end56

do.body:                                          ; preds = %if.end43
  %30 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool49.not = icmp eq i32 %30, 0
  br i1 %tobool49.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end43
  %31 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transfer_buffer, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr, align 1
  %sub = add i32 %27, -4
  %add.ptr63 = getelementptr i8, ptr %add.ptr, i32 4
  %conv = zext i8 %36 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.end56.if.end143_crit_edge, label %if.then65

if.end56.if.end143_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then65:                                        ; preds = %if.end56
  %sub66 = add i32 %27, -8
  %add.ptr67 = getelementptr i8, ptr %add.ptr63, i32 4
  %37 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool69.not = icmp eq i32 %37, 0
  %.pre = and i32 %conv, 64
  br i1 %tobool69.not, label %if.then65.do.end81_crit_edge, label %do.end73

if.then65.do.end81_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

do.end73:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool77.not = icmp eq i32 %.pre, 0
  %cond = select i1 %tobool77.not, ptr @.str.95, ptr @.str.94
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, ptr noundef nonnull %cond) #12
  br label %do.end81

do.end81:                                         ; preds = %do.end73, %if.then65.do.end81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool84.not = icmp eq i32 %.pre, 0
  br i1 %tobool84.not, label %if.end118.thread, label %if.then85

if.then85:                                        ; preds = %do.end81
  %cmp86.not = icmp eq ptr %vbi_buf.0403, null
  br i1 %cmp86.not, label %if.then85.if.end89_crit_edge, label %if.then88

if.then85.if.end89_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then88:                                        ; preds = %if.then85
  %38 = ptrtoint ptr %vbi_buf.0403 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vbi_buf.0403, align 8
  %40 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i283 = icmp eq i32 %40, 0
  br i1 %tobool.not.i283, label %if.then88.do.end4.i_crit_edge, label %do.end.i285

if.then88.do.end4.i_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end.i285:                                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %top_field.i = getelementptr inbounds %struct.au0828_buffer, ptr %vbi_buf.0403, i32 0, i32 4
  %41 = ptrtoint ptr %top_field.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %top_field.i, align 8
  %call.i284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef nonnull %vbi_buf.0403, i32 noundef %42) #12
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i285, %if.then88.do.end4.i_crit_edge
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i286 = icmp eq i32 %44, 1
  br i1 %cmp.i286, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_count.i, align 8
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %frame_count.i, align 8
  br label %buffer_filled.exit

if.else.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %vbi_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vbi_frame_count.i, align 4
  %inc6.i = add i32 %48, 1
  store i32 %inc6.i, ptr %vbi_frame_count.i, align 4
  br label %buffer_filled.exit

buffer_filled.exit:                               ; preds = %if.else.i, %if.then5.i
  %.sink.i = phi i32 [ %46, %if.then5.i ], [ %48, %if.else.i ]
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbi_buf.0403, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink.i, ptr %49, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vbi_buf.0403, i32 0, i32 2
  %51 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %field.i, align 4
  %call.i.i = tail call i64 @ktime_get() #9
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %vbi_buf.0403, i32 0, i32 5
  %52 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %vbi_buf.0403, i32 noundef 5) #9
  br label %if.end89

if.end89:                                         ; preds = %buffer_filled.exit, %if.then85.if.end89_crit_edge
  %53 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not.i = icmp eq ptr %54, %vbiq
  br i1 %cmp.i.not.i, label %do.body.i287, label %if.end8.i

do.body.i287:                                     ; preds = %if.end89
  %55 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool1.not.i = icmp eq i32 %55, 0
  br i1 %tobool1.not.i, label %do.body.i287.vbi_get_next_buf.exit.thread_crit_edge, label %do.end.i288

do.body.i287.vbi_get_next_buf.exit.thread_crit_edge: ; preds = %do.body.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %vbi_get_next_buf.exit.thread

do.end.i288:                                      ; preds = %do.body.i287
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113) #12
  br label %vbi_get_next_buf.exit.thread

vbi_get_next_buf.exit.thread:                     ; preds = %do.end.i288, %do.body.i287.vbi_get_next_buf.exit.thread_crit_edge
  %56 = ptrtoint ptr %vbi_buf20 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %vbi_buf20, align 8
  br label %if.end96

if.end8.i:                                        ; preds = %if.end89
  %add.ptr12.i = getelementptr i8, ptr %54, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %54) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.i.vbi_get_next_buf.exit_crit_edge

if.end8.i.vbi_get_next_buf.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vbi_get_next_buf.exit

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %vbi_get_next_buf.exit

vbi_get_next_buf.exit:                            ; preds = %if.end.i.i.i, %if.end8.i.vbi_get_next_buf.exit_crit_edge
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %54, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %pos.i, align 4
  %mem.i = getelementptr i8, ptr %54, i32 8
  %66 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mem.i, align 8
  %vb_buf.i = getelementptr i8, ptr %54, i32 20
  %68 = ptrtoint ptr %vb_buf.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %vb_buf.i, align 4
  %69 = ptrtoint ptr %vbi_buf20 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr12.i, ptr %vbi_buf20, align 8
  %cmp90 = icmp eq ptr %add.ptr12.i, null
  br i1 %cmp90, label %vbi_get_next_buf.exit.if.end96_crit_edge, label %if.else

vbi_get_next_buf.exit.if.end96_crit_edge:         ; preds = %vbi_get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.else:                                          ; preds = %vbi_get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr12.i, i32 noundef 0) #9
  br label %if.end96

if.end96:                                         ; preds = %if.else, %vbi_get_next_buf.exit.if.end96_crit_edge, %vbi_get_next_buf.exit.thread
  %vbi_buf.1355 = phi ptr [ %add.ptr12.i, %if.else ], [ null, %vbi_get_next_buf.exit.if.end96_crit_edge ], [ null, %vbi_get_next_buf.exit.thread ]
  %vbioutp.2 = phi ptr [ %call95, %if.else ], [ null, %vbi_get_next_buf.exit.if.end96_crit_edge ], [ null, %vbi_get_next_buf.exit.thread ]
  %cmp97.not = icmp eq ptr %buf.0402, null
  br i1 %cmp97.not, label %if.end96.if.end100_crit_edge, label %if.then99

if.end96.if.end100_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then99:                                        ; preds = %if.end96
  %70 = ptrtoint ptr %buf.0402 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf.0402, align 8
  %72 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i289 = icmp eq i32 %72, 0
  br i1 %tobool.not.i289, label %if.then99.do.end4.i294_crit_edge, label %do.end.i292

if.then99.do.end4.i294_crit_edge:                 ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i294

do.end.i292:                                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  %top_field.i290 = getelementptr inbounds %struct.au0828_buffer, ptr %buf.0402, i32 0, i32 4
  %73 = ptrtoint ptr %top_field.i290 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %top_field.i290, align 8
  %call.i291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef nonnull %buf.0402, i32 noundef %74) #12
  br label %do.end4.i294

do.end4.i294:                                     ; preds = %do.end.i292, %if.then99.do.end4.i294_crit_edge
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i293 = icmp eq i32 %76, 1
  br i1 %cmp.i293, label %if.then5.i297, label %if.else.i300

if.then5.i297:                                    ; preds = %do.end4.i294
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %frame_count.i, align 8
  %inc.i296 = add i32 %78, 1
  store i32 %inc.i296, ptr %frame_count.i, align 8
  br label %buffer_filled.exit306

if.else.i300:                                     ; preds = %do.end4.i294
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %vbi_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vbi_frame_count.i, align 4
  %inc6.i299 = add i32 %80, 1
  store i32 %inc6.i299, ptr %vbi_frame_count.i, align 4
  br label %buffer_filled.exit306

buffer_filled.exit306:                            ; preds = %if.else.i300, %if.then5.i297
  %.sink.i301 = phi i32 [ %78, %if.then5.i297 ], [ %80, %if.else.i300 ]
  %81 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.0402, i32 0, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink.i301, ptr %81, align 8
  %field.i302 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf.0402, i32 0, i32 2
  %83 = ptrtoint ptr %field.i302 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %field.i302, align 4
  %call.i.i303 = tail call i64 @ktime_get() #9
  %timestamp.i304 = getelementptr inbounds %struct.vb2_buffer, ptr %buf.0402, i32 0, i32 5
  %84 = ptrtoint ptr %timestamp.i304 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %call.i.i303, ptr %timestamp.i304, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %buf.0402, i32 noundef 5) #9
  br label %if.end100

if.end100:                                        ; preds = %buffer_filled.exit306, %if.end96.if.end100_crit_edge
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i307 = icmp eq ptr %86, %1
  br i1 %cmp.i.not.i307, label %do.body.i309, label %if.end9.i

do.body.i309:                                     ; preds = %if.end100
  %87 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool1.not.i308 = icmp eq i32 %87, 0
  br i1 %tobool1.not.i308, label %do.body.i309.get_next_buf.exit.thread_crit_edge, label %do.end.i311

do.body.i309.get_next_buf.exit.thread_crit_edge:  ; preds = %do.body.i309
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_next_buf.exit.thread

do.end.i311:                                      ; preds = %do.body.i309
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.114) #12
  br label %get_next_buf.exit.thread

get_next_buf.exit.thread:                         ; preds = %do.end.i311, %do.body.i309.get_next_buf.exit.thread_crit_edge
  %88 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %buf15.i, align 4
  br label %if.end108

if.end9.i:                                        ; preds = %if.end100
  %add.ptr13.i = getelementptr i8, ptr %86, i32 -736
  %call.i.i.i313 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %86) #9
  br i1 %call.i.i.i313, label %if.end.i.i.i316, label %if.end9.i.get_next_buf.exit_crit_edge

if.end9.i.get_next_buf.exit_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_next_buf.exit

if.end.i.i.i316:                                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i314 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i314, align 4
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %86, align 4
  %prev1.i.i.i.i315 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i315 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i315, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %get_next_buf.exit

get_next_buf.exit:                                ; preds = %if.end.i.i.i316, %if.end9.i.get_next_buf.exit_crit_edge
  %95 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %86, align 4
  %prev.i.i317 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i317 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i317, align 4
  %97 = ptrtoint ptr %pos.i318 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %pos.i318, align 4
  %mem.i319 = getelementptr i8, ptr %86, i32 8
  %98 = ptrtoint ptr %mem.i319 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mem.i319, align 8
  %vb_buf.i320 = getelementptr i8, ptr %86, i32 20
  %100 = ptrtoint ptr %vb_buf.i320 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %vb_buf.i320, align 4
  %101 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr13.i, ptr %buf15.i, align 4
  %cmp101 = icmp eq ptr %add.ptr13.i, null
  br i1 %cmp101, label %get_next_buf.exit.if.end108_crit_edge, label %if.else104

get_next_buf.exit.if.end108_crit_edge:            ; preds = %get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.else104:                                       ; preds = %get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call107 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr13.i, i32 noundef 0) #9
  br label %if.end108

if.end108:                                        ; preds = %if.else104, %get_next_buf.exit.if.end108_crit_edge, %get_next_buf.exit.thread
  %buf.1358 = phi ptr [ %add.ptr13.i, %if.else104 ], [ null, %get_next_buf.exit.if.end108_crit_edge ], [ null, %get_next_buf.exit.thread ]
  %outp.2 = phi ptr [ %call107, %if.else104 ], [ null, %get_next_buf.exit.if.end108_crit_edge ], [ null, %get_next_buf.exit.thread ]
  %102 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vid_timeout_running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool109.not = icmp eq i32 %103, 0
  br i1 %tobool109.not, label %if.end108.if.end112_crit_edge, label %if.then110

if.end108.if.end112_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %104, 10
  %call111 = tail call i32 @mod_timer(ptr noundef %vid_timeout, i32 noundef %add) #9
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end108.if.end112_crit_edge
  %105 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vbi_timeout_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool113.not = icmp eq i32 %106, 0
  br i1 %tobool113.not, label %if.end112.if.end118_crit_edge, label %if.then114

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %add115 = add i32 %107, 10
  %call116 = tail call i32 @mod_timer(ptr noundef %vbi_timeout, i32 noundef %add115) #9
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.end112.if.end118_crit_edge
  %cmp119.not = icmp eq ptr %buf.1358, null
  br i1 %cmp119.not, label %if.end129.thread412, label %if.end129.thread

if.end118.thread:                                 ; preds = %do.end81
  %cmp119.not363 = icmp eq ptr %buf.0402, null
  br i1 %cmp119.not363, label %if.end118.thread.if.end129_crit_edge, label %if.else126

if.end118.thread.if.end129_crit_edge:             ; preds = %if.end118.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.else126:                                       ; preds = %if.end118.thread
  call void @__sanitizer_cov_trace_pc() #11
  %top_field127 = getelementptr inbounds %struct.au0828_buffer, ptr %buf.0402, i32 0, i32 4
  %108 = ptrtoint ptr %top_field127 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %top_field127, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.end118.thread.if.end129_crit_edge
  %cmp130.not = icmp eq ptr %vbi_buf.0403, null
  br i1 %cmp130.not, label %if.end129.if.end141_crit_edge, label %if.end129.if.end141.sink.split_crit_edge

if.end129.if.end141.sink.split_crit_edge:         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.sink.split

if.end129.if.end141_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.end129.thread412:                              ; preds = %if.end118
  %cmp130.not417 = icmp eq ptr %vbi_buf.1355, null
  br i1 %cmp130.not417, label %if.end129.thread412.if.end141_crit_edge, label %if.end129.thread412.if.end141.sink.split_crit_edge

if.end129.thread412.if.end141.sink.split_crit_edge: ; preds = %if.end129.thread412
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.sink.split

if.end129.thread412.if.end141_crit_edge:          ; preds = %if.end129.thread412
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.end129.thread:                                 ; preds = %if.end118
  %top_field = getelementptr inbounds %struct.au0828_buffer, ptr %buf.1358, i32 0, i32 4
  %109 = ptrtoint ptr %top_field to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %top_field, align 8
  %cmp130.not385 = icmp eq ptr %vbi_buf.1355, null
  br i1 %cmp130.not385, label %if.end129.thread.if.end141_crit_edge, label %if.end129.thread.if.end141.sink.split_crit_edge

if.end129.thread.if.end141.sink.split_crit_edge:  ; preds = %if.end129.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.sink.split

if.end129.thread.if.end141_crit_edge:             ; preds = %if.end129.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.end141.sink.split:                             ; preds = %if.end129.thread.if.end141.sink.split_crit_edge, %if.end129.thread412.if.end141.sink.split_crit_edge, %if.end129.if.end141.sink.split_crit_edge
  %vbi_buf.1355.sink = phi ptr [ %vbi_buf.1355, %if.end129.thread412.if.end141.sink.split_crit_edge ], [ %vbi_buf.1355, %if.end129.thread.if.end141.sink.split_crit_edge ], [ %vbi_buf.0403, %if.end129.if.end141.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %if.end129.thread412.if.end141.sink.split_crit_edge ], [ 1, %if.end129.thread.if.end141.sink.split_crit_edge ], [ 0, %if.end129.if.end141.sink.split_crit_edge ]
  %buf.2365392.ph = phi ptr [ null, %if.end129.thread412.if.end141.sink.split_crit_edge ], [ %buf.1358, %if.end129.thread.if.end141.sink.split_crit_edge ], [ %buf.0402, %if.end129.if.end141.sink.split_crit_edge ]
  %outp.3370389.ph = phi ptr [ %outp.2, %if.end129.thread412.if.end141.sink.split_crit_edge ], [ %outp.2, %if.end129.thread.if.end141.sink.split_crit_edge ], [ %outp.1404, %if.end129.if.end141.sink.split_crit_edge ]
  %vbioutp.3372387.ph = phi ptr [ %vbioutp.2, %if.end129.thread412.if.end141.sink.split_crit_edge ], [ %vbioutp.2, %if.end129.thread.if.end141.sink.split_crit_edge ], [ %vbioutp.1406, %if.end129.if.end141.sink.split_crit_edge ]
  %top_field137 = getelementptr inbounds %struct.au0828_buffer, ptr %vbi_buf.1355.sink, i32 0, i32 4
  %110 = ptrtoint ptr %top_field137 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %.sink, ptr %top_field137, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.end141.sink.split, %if.end129.thread.if.end141_crit_edge, %if.end129.thread412.if.end141_crit_edge, %if.end129.if.end141_crit_edge
  %buf.2365392 = phi ptr [ %buf.0402, %if.end129.if.end141_crit_edge ], [ %buf.1358, %if.end129.thread.if.end141_crit_edge ], [ null, %if.end129.thread412.if.end141_crit_edge ], [ %buf.2365392.ph, %if.end141.sink.split ]
  %outp.3370389 = phi ptr [ %outp.1404, %if.end129.if.end141_crit_edge ], [ %outp.2, %if.end129.thread.if.end141_crit_edge ], [ %outp.2, %if.end129.thread412.if.end141_crit_edge ], [ %outp.3370389.ph, %if.end141.sink.split ]
  %vbioutp.3372387 = phi ptr [ %vbioutp.1406, %if.end129.if.end141_crit_edge ], [ %vbioutp.2, %if.end129.thread.if.end141_crit_edge ], [ %vbioutp.2, %if.end129.thread412.if.end141_crit_edge ], [ %vbioutp.3372387.ph, %if.end141.sink.split ]
  %vbi_buf.2368 = phi ptr [ null, %if.end129.if.end141_crit_edge ], [ null, %if.end129.thread.if.end141_crit_edge ], [ null, %if.end129.thread412.if.end141_crit_edge ], [ %vbi_buf.1355.sink, %if.end141.sink.split ]
  %111 = ptrtoint ptr %vbi_read to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %vbi_read, align 8
  %112 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %pos.i, align 4
  %113 = ptrtoint ptr %pos.i318 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %pos.i318, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.end141, %if.end56.if.end143_crit_edge
  %buf.3 = phi ptr [ %buf.0402, %if.end56.if.end143_crit_edge ], [ %buf.2365392, %if.end141 ]
  %vbi_buf.3 = phi ptr [ %vbi_buf.0403, %if.end56.if.end143_crit_edge ], [ %vbi_buf.2368, %if.end141 ]
  %outp.4 = phi ptr [ %outp.1404, %if.end56.if.end143_crit_edge ], [ %outp.3370389, %if.end141 ]
  %vbioutp.4 = phi ptr [ %vbioutp.1406, %if.end56.if.end143_crit_edge ], [ %vbioutp.3372387, %if.end141 ]
  %len.0 = phi i32 [ %sub, %if.end56.if.end143_crit_edge ], [ %sub66, %if.end141 ]
  %p.0 = phi ptr [ %add.ptr63, %if.end56.if.end143_crit_edge ], [ %add.ptr67, %if.end141 ]
  %114 = ptrtoint ptr %vbi_width to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vbi_width, align 8
  %116 = ptrtoint ptr %vbi_height to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vbi_height, align 4
  %mul = mul i32 %117, %115
  %mul144 = shl i32 %mul, 1
  %118 = ptrtoint ptr %vbi_read to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vbi_read, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul144, i32 %119)
  %cmp146 = icmp ugt i32 %mul144, %119
  br i1 %cmp146, label %if.then148, label %if.end143.if.end164_crit_edge

if.end143.if.end164_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then148:                                       ; preds = %if.end143
  %sub150 = sub i32 %mul144, %119
  %120 = tail call i32 @llvm.umin.i32(i32 %len.0, i32 %sub150)
  %cmp156.not = icmp eq ptr %vbi_buf.3, null
  br i1 %cmp156.not, label %if.then148.if.end159_crit_edge, label %if.end5.i

if.then148.if.end159_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.end5.i:                                        ; preds = %if.then148
  br i1 %cmp6.i, label %do.body8.i, label %if.end22.i

do.body8.i:                                       ; preds = %if.end5.i
  %121 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool9.not.i = icmp eq i32 %121, 0
  br i1 %tobool9.not.i, label %do.body8.i.if.end159_crit_edge, label %do.end13.i

do.body8.i.if.end159_crit_edge:                   ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.116) #12
  br label %if.end159

if.end22.i:                                       ; preds = %if.end5.i
  %cmp23.i = icmp eq ptr %p.0, null
  br i1 %cmp23.i, label %do.body25.i, label %if.end36.i

do.body25.i:                                      ; preds = %if.end22.i
  %122 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool26.not.i = icmp eq i32 %122, 0
  br i1 %tobool26.not.i, label %do.body25.i.if.end159_crit_edge, label %do.end30.i

do.body25.i.if.end159_crit_edge:                  ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

do.end30.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.116) #12
  br label %if.end159

if.end36.i:                                       ; preds = %if.end22.i
  %cmp37.i = icmp eq ptr %vbioutp.4, null
  br i1 %cmp37.i, label %do.body39.i, label %if.end50.i

do.body39.i:                                      ; preds = %if.end36.i
  %123 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool40.not.i = icmp eq i32 %123, 0
  br i1 %tobool40.not.i, label %do.body39.i.if.end159_crit_edge, label %do.end44.i

do.body39.i.if.end159_crit_edge:                  ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

do.end44.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.116) #12
  br label %if.end159

if.end50.i:                                       ; preds = %if.end36.i
  %124 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pos.i, align 4
  %add.i = add i32 %125, %len.0
  %length.i = getelementptr inbounds %struct.au0828_buffer, ptr %vbi_buf.3, i32 0, i32 3
  %126 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %127)
  %cmp51.i = icmp ugt i32 %add.i, %127
  %sub.i = sub i32 %127, %125
  %spec.select.i = select i1 %cmp51.i, i32 %sub.i, i32 %len.0
  %div.i = sdiv i32 %125, 2
  %add.ptr.i = getelementptr i8, ptr %vbioutp.4, i32 %div.i
  %top_field.i328 = getelementptr inbounds %struct.au0828_buffer, ptr %vbi_buf.3, i32 0, i32 4
  %128 = ptrtoint ptr %top_field.i328 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %top_field.i328, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp57.i = icmp eq i32 %129, 0
  %spec.select.idx = select i1 %cmp57.i, i32 %mul, i32 0
  %spec.select = getelementptr i8, ptr %add.ptr.i, i32 %spec.select.idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp6187.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp6187.not.i, label %if.end50.i.for.end.i_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  br label %for.body.i

if.end50.i.for.end.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end50.i.for.body.i_crit_edge
  %j.089.i = phi i32 [ %inc.i329, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end50.i.for.body.i_crit_edge ]
  %i.088.i = phi i32 [ %add64.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end50.i.for.body.i_crit_edge ]
  %add62.i = or i32 %i.088.i, 1
  %arrayidx.i = getelementptr i8, ptr %p.0, i32 %add62.i
  %130 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i, align 1
  %inc.i329 = add i32 %j.089.i, 1
  %arrayidx63.i = getelementptr i8, ptr %spec.select, i32 %j.089.i
  %132 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx63.i, align 1
  %add64.i = add i32 %i.088.i, 2
  %cmp61.i = icmp ult i32 %add64.i, %spec.select.i
  br i1 %cmp61.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end50.i.for.end.i_crit_edge
  %133 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pos.i, align 4
  %add66.i = add i32 %134, %spec.select.i
  store i32 %add66.i, ptr %pos.i, align 4
  br label %if.end159

if.end159:                                        ; preds = %for.end.i, %do.end44.i, %do.body39.i.if.end159_crit_edge, %do.end30.i, %do.body25.i.if.end159_crit_edge, %do.end13.i, %do.body8.i.if.end159_crit_edge, %if.then148.if.end159_crit_edge
  %sub160 = sub i32 %len.0, %120
  %add.ptr161 = getelementptr i8, ptr %p.0, i32 %120
  %135 = ptrtoint ptr %vbi_read to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %vbi_read, align 8
  %add163 = add i32 %136, %120
  store i32 %add163, ptr %vbi_read, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.end159, %if.end143.if.end164_crit_edge
  %len.1 = phi i32 [ %sub160, %if.end159 ], [ %len.0, %if.end143.if.end164_crit_edge ]
  %p.1 = phi ptr [ %add.ptr161, %if.end159 ], [ %p.0, %if.end143.if.end164_crit_edge ]
  %137 = ptrtoint ptr %vbi_read to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %vbi_read, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %mul144)
  %cmp166.not = icmp ult i32 %138, %mul144
  br i1 %cmp166.not, label %if.end164.cleanup_crit_edge, label %land.lhs.true

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end164
  %cmp168.not = icmp eq ptr %buf.3, null
  br i1 %cmp168.not, label %land.lhs.true.cleanup_crit_edge, label %if.then170

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then170:                                       ; preds = %land.lhs.true
  %139 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %width.i, align 8
  %shl.i = shl i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp.i330 = icmp eq i32 %len.1, 0
  br i1 %cmp.i330, label %if.then170.cleanup_crit_edge, label %if.end.i

if.then170.cleanup_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then170
  %141 = ptrtoint ptr %pos.i318 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pos.i318, align 4
  %add.i332 = add i32 %142, %len.1
  %length.i333 = getelementptr inbounds %struct.au0828_buffer, ptr %buf.3, i32 0, i32 3
  %143 = ptrtoint ptr %length.i333 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %length.i333, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i332, i32 %144)
  %cmp1.i = icmp ugt i32 %add.i332, %144
  %sub.i334 = sub i32 %144, %142
  %spec.select.i335 = select i1 %cmp1.i, i32 %sub.i334, i32 %len.1
  %top_field.i336 = getelementptr inbounds %struct.au0828_buffer, ptr %buf.3, i32 0, i32 4
  %145 = ptrtoint ptr %top_field.i336 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %top_field.i336, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i337 = icmp eq i32 %146, 0
  %fieldstart.0.idx.i = select i1 %tobool.not.i337, i32 %shl.i, i32 0
  %fieldstart.0.i = getelementptr i8, ptr %outp.4, i32 %fieldstart.0.idx.i
  %rem.i = srem i32 %142, %shl.i
  %mul.i338 = sub i32 %142, %rem.i
  %mul10.i = shl i32 %mul.i338, 1
  %add11.i = add i32 %mul10.i, %rem.i
  %add.ptr12.i339 = getelementptr i8, ptr %fieldstart.0.i, i32 %add11.i
  %sub13.i = sub i32 %shl.i, %rem.i
  %147 = tail call i32 @llvm.smin.i32(i32 %sub13.i, i32 %spec.select.i335) #9
  %add.ptr15.i = getelementptr i8, ptr %add.ptr12.i339, i32 %147
  %add.ptr17.i = getelementptr i8, ptr %outp.4, i32 %144
  %cmp18.i = icmp ugt ptr %add.ptr15.i, %add.ptr17.i
  br i1 %cmp18.i, label %do.body.i340, label %if.end.i.if.end34.i_crit_edge

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

do.body.i340:                                     ; preds = %if.end.i
  %148 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool20.not.i = icmp eq i32 %148, 0
  br i1 %tobool20.not.i, label %do.body.i340.do.end28.i_crit_edge, label %do.end.i342

do.body.i340.do.end28.i_crit_edge:                ; preds = %do.body.i340
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28.i

do.end.i342:                                      ; preds = %do.body.i340
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr15.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr17.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call.i341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef %sub.ptr.sub.i) #12
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end.i342, %do.body.i340.do.end28.i_crit_edge
  %149 = ptrtoint ptr %length.i333 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %length.i333, align 4
  %add.ptr30.i = getelementptr i8, ptr %outp.4, i32 %150
  %sub.ptr.lhs.cast31.i = ptrtoint ptr %add.ptr30.i to i32
  %sub.ptr.rhs.cast32.i = ptrtoint ptr %add.ptr12.i339 to i32
  %sub.ptr.sub33.i = sub i32 %sub.ptr.lhs.cast31.i, %sub.ptr.rhs.cast32.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end28.i, %if.end.i.if.end34.i_crit_edge
  %lencopy.0.i = phi i32 [ %sub.ptr.sub33.i, %do.end28.i ], [ %147, %if.end.i.if.end34.i_crit_edge ]
  %remain.0.i = phi i32 [ %sub.ptr.sub33.i, %do.end28.i ], [ %spec.select.i335, %if.end.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lencopy.0.i)
  %cmp35.i = icmp slt i32 %lencopy.0.i, 1
  br i1 %cmp35.i, label %if.end34.i.cleanup_crit_edge, label %if.end37.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37.i:                                       ; preds = %if.end34.i
  %151 = call ptr @memcpy(ptr %add.ptr12.i339, ptr %p.1, i32 %lencopy.0.i)
  %sub38.i = sub i32 %remain.0.i, %lencopy.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38.i)
  %cmp39164.i = icmp sgt i32 %sub38.i, 0
  br i1 %cmp39164.i, label %if.end37.i.while.body.i_crit_edge, label %if.end37.i.while.end.i_crit_edge

if.end37.i.while.end.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end37.i.while.body.i_crit_edge:                ; preds = %if.end37.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end77.i.while.body.i_crit_edge, %if.end37.i.while.body.i_crit_edge
  %remain.1168.i = phi i32 [ %sub78.i, %if.end77.i.while.body.i_crit_edge ], [ %sub38.i, %if.end37.i.while.body.i_crit_edge ]
  %lencopy.1167.i = phi i32 [ %lencopy.3.i, %if.end77.i.while.body.i_crit_edge ], [ %lencopy.0.i, %if.end37.i.while.body.i_crit_edge ]
  %startread.0166.i = phi ptr [ %add.ptr42.i, %if.end77.i.while.body.i_crit_edge ], [ %p.1, %if.end37.i.while.body.i_crit_edge ]
  %startwrite.0165.i = phi ptr [ %add.ptr41.i, %if.end77.i.while.body.i_crit_edge ], [ %add.ptr12.i339, %if.end37.i.while.body.i_crit_edge ]
  %add40.i = add i32 %lencopy.1167.i, %shl.i
  %add.ptr41.i = getelementptr i8, ptr %startwrite.0165.i, i32 %add40.i
  %add.ptr42.i = getelementptr i8, ptr %startread.0166.i, i32 %lencopy.1167.i
  %152 = tail call i32 @llvm.smin.i32(i32 %shl.i, i32 %remain.1168.i) #9
  %add.ptr47.i = getelementptr i8, ptr %add.ptr41.i, i32 %152
  %153 = ptrtoint ptr %length.i333 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %length.i333, align 4
  %add.ptr49.i = getelementptr i8, ptr %outp.4, i32 %154
  %cmp50.i = icmp ugt ptr %add.ptr47.i, %add.ptr49.i
  br i1 %cmp50.i, label %do.body52.i, label %while.body.i.if.end74.i_crit_edge

while.body.i.if.end74.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

do.body52.i:                                      ; preds = %while.body.i
  %155 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool53.not.i = icmp eq i32 %155, 0
  br i1 %tobool53.not.i, label %do.body52.i.do.end68.i_crit_edge, label %do.end57.i

do.body52.i.do.end68.i_crit_edge:                 ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i

do.end57.i:                                       ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast62.i = ptrtoint ptr %add.ptr47.i to i32
  %sub.ptr.rhs.cast63.i = ptrtoint ptr %add.ptr49.i to i32
  %sub.ptr.sub64.i = sub i32 %sub.ptr.lhs.cast62.i, %sub.ptr.rhs.cast63.i
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.127, i32 noundef %sub.ptr.sub64.i) #12
  br label %do.end68.i

do.end68.i:                                       ; preds = %do.end57.i, %do.body52.i.do.end68.i_crit_edge
  %156 = ptrtoint ptr %length.i333 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %length.i333, align 4
  %add.ptr70.i = getelementptr i8, ptr %outp.4, i32 %157
  %sub.ptr.lhs.cast71.i = ptrtoint ptr %add.ptr70.i to i32
  %sub.ptr.rhs.cast72.i = ptrtoint ptr %add.ptr41.i to i32
  %sub.ptr.sub73.i = sub i32 %sub.ptr.lhs.cast71.i, %sub.ptr.rhs.cast72.i
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end68.i, %while.body.i.if.end74.i_crit_edge
  %lencopy.3.i = phi i32 [ %sub.ptr.sub73.i, %do.end68.i ], [ %152, %while.body.i.if.end74.i_crit_edge ]
  %remain.2.i = phi i32 [ %sub.ptr.sub73.i, %do.end68.i ], [ %remain.1168.i, %while.body.i.if.end74.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lencopy.3.i)
  %cmp75.i = icmp slt i32 %lencopy.3.i, 1
  br i1 %cmp75.i, label %if.end74.i.while.end.i_crit_edge, label %if.end77.i

if.end74.i.while.end.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end77.i:                                       ; preds = %if.end74.i
  %158 = call ptr @memcpy(ptr %add.ptr41.i, ptr %add.ptr42.i, i32 %lencopy.3.i)
  %sub78.i = sub i32 %remain.2.i, %lencopy.3.i
  %cmp39.i = icmp sgt i32 %sub78.i, 0
  br i1 %cmp39.i, label %if.end77.i.while.body.i_crit_edge, label %if.end77.i.while.end.i_crit_edge

if.end77.i.while.end.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end77.i.while.body.i_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end77.i.while.end.i_crit_edge, %if.end74.i.while.end.i_crit_edge, %if.end37.i.while.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1440, i32 %add11.i)
  %cmp79.i = icmp sgt i32 %add11.i, 1440
  br i1 %cmp79.i, label %if.then80.i, label %while.end.i.if.end89.i_crit_edge

while.end.i.if.end89.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.then80.i:                                      ; preds = %while.end.i
  %159 = ptrtoint ptr %outp.4 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %outp.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %160)
  %cmp81.i = icmp ult i8 %160, 96
  br i1 %cmp81.i, label %land.lhs.true.i, label %if.then80.i.if.end89.i_crit_edge

if.then80.i.if.end89.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

land.lhs.true.i:                                  ; preds = %if.then80.i
  %arrayidx83.i = getelementptr i8, ptr %outp.4, i32 1440
  %161 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx83.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %162)
  %cmp85.i = icmp ult i8 %162, 96
  br i1 %cmp85.i, label %if.then87.i, label %land.lhs.true.i.if.end89.i_crit_edge

land.lhs.true.i.if.end89.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.then87.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %greenscreen_detected.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %greenscreen_detected.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then87.i, %land.lhs.true.i.if.end89.i_crit_edge, %if.then80.i.if.end89.i_crit_edge, %while.end.i.if.end89.i_crit_edge
  %164 = ptrtoint ptr %pos.i318 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %pos.i318, align 4
  %add91.i = add i32 %165, %spec.select.i335
  store i32 %add91.i, ptr %pos.i318, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89.i, %if.end34.i.cleanup_crit_edge, %if.then170.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end164.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %print_err_status.exit282.cleanup_crit_edge
  %buf.4 = phi ptr [ %buf.0402, %if.end38.cleanup_crit_edge ], [ %buf.0402, %do.body.cleanup_crit_edge ], [ %buf.0402, %do.end ], [ %buf.3, %if.end164.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ %buf.0402, %print_err_status.exit282.cleanup_crit_edge ], [ %buf.3, %if.then170.cleanup_crit_edge ], [ %buf.3, %if.end34.i.cleanup_crit_edge ], [ %buf.3, %if.end89.i ]
  %vbi_buf.4 = phi ptr [ %vbi_buf.0403, %if.end38.cleanup_crit_edge ], [ %vbi_buf.0403, %do.body.cleanup_crit_edge ], [ %vbi_buf.0403, %do.end ], [ %vbi_buf.3, %if.end164.cleanup_crit_edge ], [ %vbi_buf.3, %land.lhs.true.cleanup_crit_edge ], [ %vbi_buf.0403, %print_err_status.exit282.cleanup_crit_edge ], [ %vbi_buf.3, %if.then170.cleanup_crit_edge ], [ %vbi_buf.3, %if.end34.i.cleanup_crit_edge ], [ %vbi_buf.3, %if.end89.i ]
  %outp.5 = phi ptr [ %outp.1404, %if.end38.cleanup_crit_edge ], [ %outp.1404, %do.body.cleanup_crit_edge ], [ %outp.1404, %do.end ], [ %outp.4, %if.end164.cleanup_crit_edge ], [ %outp.4, %land.lhs.true.cleanup_crit_edge ], [ %outp.1404, %print_err_status.exit282.cleanup_crit_edge ], [ %outp.4, %if.then170.cleanup_crit_edge ], [ %outp.4, %if.end34.i.cleanup_crit_edge ], [ %outp.4, %if.end89.i ]
  %vbioutp.5 = phi ptr [ %vbioutp.1406, %if.end38.cleanup_crit_edge ], [ %vbioutp.1406, %do.body.cleanup_crit_edge ], [ %vbioutp.1406, %do.end ], [ %vbioutp.4, %if.end164.cleanup_crit_edge ], [ %vbioutp.4, %land.lhs.true.cleanup_crit_edge ], [ %vbioutp.1406, %print_err_status.exit282.cleanup_crit_edge ], [ %vbioutp.4, %if.then170.cleanup_crit_edge ], [ %vbioutp.4, %if.end34.i.cleanup_crit_edge ], [ %vbioutp.4, %if.end89.i ]
  %inc = add nuw nsw i32 %i.0408, 1
  %166 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %number_of_packets, align 4
  %cmp27 = icmp slt i32 %inc, %167
  br i1 %cmp27, label %cleanup.for.body_crit_edge, label %cleanup.cleanup172_crit_edge

cleanup.cleanup172_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup172

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup172:                                       ; preds = %cleanup.cleanup172_crit_edge, %if.end26.cleanup172_crit_edge, %print_err_status.exit.cleanup172_crit_edge, %lor.lhs.false.cleanup172_crit_edge, %if.end.cleanup172_crit_edge, %entry.cleanup172_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup172_crit_edge ], [ 0, %lor.lhs.false.cleanup172_crit_edge ], [ 0, %if.end.cleanup172_crit_edge ], [ 0, %print_err_status.exit.cleanup172_crit_edge ], [ 1, %if.end26.cleanup172_crit_edge ], [ 1, %cleanup.cleanup172_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_stop_vbi_streaming(ptr nocapture noundef readonly %vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vbiq1 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %streaming_users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %3 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %streaming_users, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %4) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %streaming_users6 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %streaming_users6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %streaming_users6, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %streaming_users6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then7, label %do.end5.do.body35_crit_edge

do.end5.do.body35_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

if.then7:                                         ; preds = %do.end5
  tail call fastcc void @au0828_uninit_isoc(ptr noundef %1)
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn86 = load ptr, ptr %subdevs, align 4
  %cmp13.not88 = icmp eq ptr %.pn86, %subdevs
  br i1 %cmp13.not88, label %if.then7.do.body35_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.do.body35_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then7.for.body_crit_edge
  %.pn89 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn86, %if.then7.for.body_crit_edge ]
  %__sd.090 = getelementptr i8, ptr %.pn89, i32 -80
  %ops = getelementptr i8, ptr %.pn89, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_stream, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 %13(ptr noundef %__sd.090, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn89, align 4
  %cmp13.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp13.not, label %for.inc.do.body35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

do.body35:                                        ; preds = %for.inc.do.body35_crit_edge, %if.then7.do.body35_crit_edge, %do.end5.do.body35_crit_edge
  %slock = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 55
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %vbi_buf = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54, i32 12
  %15 = ptrtoint ptr %vbi_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbi_buf, align 8
  %cmp44.not = icmp eq ptr %16, null
  br i1 %cmp44.not, label %do.body35.if.end51_crit_edge, label %if.then46

do.body35.if.end51_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then46:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %16, i32 noundef 6) #9
  %17 = ptrtoint ptr %vbi_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vbi_buf, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %do.body35.if.end51_crit_edge
  %18 = ptrtoint ptr %vbiq1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %vbiq1, align 4
  %cmp.i.not91 = icmp eq ptr %19, %vbiq1
  br i1 %cmp.i.not91, label %if.end51.while.end_crit_edge, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  br label %while.body

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end51.while.body_crit_edge
  %20 = phi ptr [ %30, %list_del.exit.while.body_crit_edge ], [ %19, %if.end51.while.body_crit_edge ]
  %add.ptr59 = getelementptr i8, ptr %20, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr59, i32 noundef 6) #9
  %29 = ptrtoint ptr %vbiq1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %vbiq1, align 4
  %cmp.i.not = icmp eq ptr %30, %vbiq1
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end51.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call39) #9
  %vbi_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 27
  %31 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %vbi_timeout_running, align 4
  %vbi_timeout = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 26
  %call64 = tail call i32 @del_timer_sync(ptr noundef %vbi_timeout) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au0828_uninit_isoc(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %nfields = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 13
  %1 = ptrtoint ptr %nfields to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nfields, align 4
  %num_bufs = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 1
  %2 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp77 = icmp sgt i32 %3, 0
  br i1 %cmp77, label %for.body.lr.ph, label %do.end3.for.end_crit_edge

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end3
  %urb6 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 2
  %transfer_buffer = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 3
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  %4 = ptrtoint ptr %urb6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb6, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.078
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %for.body.if.end38_crit_edge, label %if.then8

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then8:                                         ; preds = %for.body
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !481
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not = icmp eq i32 %and.i, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #9
  br label %if.end26

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %7) #9
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then24
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx28 = getelementptr ptr, ptr %10, i32 %i.078
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %if.end26.if.end34_crit_edge, label %if.then30

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usbdev, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 15
  %17 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %12, i32 noundef %18) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26.if.end34_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %7) #9
  %19 = ptrtoint ptr %urb6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb6, align 8
  %arrayidx37 = getelementptr ptr, ptr %20, i32 %i.078
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %for.body.if.end38_crit_edge
  %22 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx41 = getelementptr ptr, ptr %23, i32 %i.078
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx41, align 4
  %inc = add nuw nsw i32 %i.078, 1
  %25 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_bufs, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %if.end38.for.body_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %do.end3.for.end_crit_edge
  %urb43 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 2
  %27 = ptrtoint ptr %urb43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb43, align 8
  tail call void @kfree(ptr noundef %28) #9
  %transfer_buffer45 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 3
  %29 = ptrtoint ptr %transfer_buffer45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer45, align 4
  tail call void @kfree(ptr noundef %30) #9
  %31 = ptrtoint ptr %urb43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %urb43, align 8
  %32 = ptrtoint ptr %transfer_buffer45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %transfer_buffer45, align 4
  %33 = ptrtoint ptr %num_bufs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %num_bufs, align 4
  %stream_state = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 49
  %34 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %stream_state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_analog_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %input = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end2.return_crit_edge, label %if.end4

do.end2.return_crit_edge:                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @au0828_sysfs_lock, i32 noundef 0) #9
  %vdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #9
  %vbi_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17
  tail call void @vb2_video_unregister_device(ptr noundef %vbi_dev) #9
  tail call void @mutex_unlock(ptr noundef nonnull @au0828_sysfs_lock) #9
  %v4l2_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #9
  %call6 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #9
  br label %return

return:                                           ; preds = %if.end4, %do.end2.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %do.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_v4l2_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  %stream_state = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %stream_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.end3, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end3:                                          ; preds = %entry
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end3.au0828_analog_stream_disable.exit_crit_edge, label %do.end.i

do.end3.au0828_analog_stream_disable.exit_crit_edge: ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_analog_stream_disable.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #12
  br label %au0828_analog_stream_disable.exit

au0828_analog_stream_disable.exit:                ; preds = %do.end.i, %do.end3.au0828_analog_stream_disable.exit_crit_edge
  %call3.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 256, i32 noundef 0) #9
  %num_bufs = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 1
  %3 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp750 = icmp sgt i32 %4, 0
  br i1 %cmp750, label %for.body.lr.ph, label %au0828_analog_stream_disable.exit.if.end29_crit_edge

au0828_analog_stream_disable.exit.if.end29_crit_edge: ; preds = %au0828_analog_stream_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.body.lr.ph:                                   ; preds = %au0828_analog_stream_disable.exit
  %urb9 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %urb9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb9, align 8
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.051
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !481
  %and.i49 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool25.not = icmp eq i32 %and.i49, 0
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %8) #9
  br label %for.inc

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @usb_unlink_urb(ptr noundef nonnull %8) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then26, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %10 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_bufs, align 4
  %cmp7 = icmp slt i32 %inc, %11
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.if.end29_crit_edge

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end29:                                         ; preds = %for.inc.if.end29_crit_edge, %au0828_analog_stream_disable.exit.if.end29_crit_edge, %entry.if.end29_crit_edge
  %vid_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 25
  %12 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vid_timeout_running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool30.not = icmp eq i32 %13, 0
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %vid_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 24
  %call32 = tail call i32 @del_timer_sync(ptr noundef %vid_timeout) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %vbi_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 27
  %14 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbi_timeout_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool34.not = icmp eq i32 %15, 0
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %vbi_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 26
  %call36 = tail call i32 @del_timer_sync(ptr noundef %vbi_timeout) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_v4l2_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  %stream_state = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %stream_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %stream_state, align 4
  %dev_state.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 48
  %3 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dev_state.i, align 4
  tail call fastcc void @au0828_init_tuner(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vid_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 25
  %5 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vid_timeout_running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vid_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 10
  %call3 = tail call i32 @mod_timer(ptr noundef %vid_timeout, i32 noundef %add) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %vbi_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 27
  %8 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbi_timeout_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %vbi_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add7 = add i32 %10, 10
  %call8 = tail call i32 @mod_timer(ptr noundef %vbi_timeout, i32 noundef %add7) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %call.i = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1292, i32 noundef 1) #9
  tail call fastcc void @au0828_analog_stream_enable(ptr noundef %dev)
  %11 = ptrtoint ptr %stream_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp13 = icmp eq i32 %12, 2
  br i1 %cmp13, label %if.end9.if.end32_crit_edge, label %if.then14

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then14:                                        ; preds = %if.end9
  tail call fastcc void @au0828_analog_stream_reset(ptr noundef %dev)
  %num_bufs = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 1
  %13 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1550 = icmp sgt i32 %14, 0
  br i1 %cmp1550, label %for.body.lr.ph, label %if.then14.if.end32_crit_edge

if.then14.if.end32_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.body.lr.ph:                                   ; preds = %if.then14
  %urb = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 54, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb, align 8
  %arrayidx = getelementptr ptr, ptr %16, i32 %i.051
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %call17 = tail call i32 @usb_submit_urb(ptr noundef %18, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %do.body20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body20:                                        ; preds = %for.body
  %19 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %do.body20.do.end30_crit_edge, label %do.end25

do.body20.do.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %i.051, i32 noundef %call17) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %do.body20.do.end30_crit_edge
  tail call fastcc void @au0828_uninit_isoc(ptr noundef %dev)
  br label %for.inc

for.inc:                                          ; preds = %do.end30, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %20 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_bufs, align 4
  %cmp15 = icmp slt i32 %inc, %21
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.if.end32_crit_edge

for.inc.if.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end32:                                         ; preds = %for.inc.if.end32_crit_edge, %if.then14.if.end32_crit_edge, %if.end9.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au0828_init_tuner(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %f = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f) #9
  %0 = call ptr @memset(ptr %f, i32 0, i32 44)
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %type, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %ctrl_freq = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %ctrl_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_freq, align 8
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %5 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 46
  %6 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 48
  %8 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_state, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, i32 noundef %7, i32 noundef %9) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %std_set_in_tuner_core4 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 46
  %10 = ptrtoint ptr %std_set_in_tuner_core4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %std_set_in_tuner_core4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %12 = ptrtoint ptr %std_set_in_tuner_core4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %std_set_in_tuner_core4, align 8
  %frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end7.i2c_gate_ctrl.exit_crit_edge, label %land.lhs.true.i

if.end7.i2c_gate_ctrl.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %14, i32 0, i32 1, i32 33, i32 7
  %15 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, label %if.then.i

land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %16(ptr noundef nonnull %14, i32 noundef 1) #9
  br label %i2c_gate_ctrl.exit

i2c_gate_ctrl.exit:                               ; preds = %if.then.i, %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, %if.end7.i2c_gate_ctrl.exit_crit_edge
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn105 = load ptr, ptr %subdevs, align 4
  %cmp.not107 = icmp eq ptr %.pn105, %subdevs
  br i1 %cmp.not107, label %i2c_gate_ctrl.exit.for.cond42.preheader_crit_edge, label %for.body.lr.ph

i2c_gate_ctrl.exit.for.cond42.preheader_crit_edge: ; preds = %i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheader

for.body.lr.ph:                                   ; preds = %i2c_gate_ctrl.exit
  %std = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 35
  br label %for.body

for.cond42.preheader:                             ; preds = %for.inc.for.cond42.preheader_crit_edge, %i2c_gate_ctrl.exit.for.cond42.preheader_crit_edge
  %18 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn96110 = load ptr, ptr %subdevs, align 4
  %cmp46.not112 = icmp eq ptr %.pn96110, %subdevs
  br i1 %cmp46.not112, label %for.cond42.preheader.do.end69_crit_edge, label %for.cond42.preheader.for.body48_crit_edge

for.cond42.preheader.for.body48_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body48

for.cond42.preheader.do.end69_crit_edge:          ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn108 = phi ptr [ %.pn105, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__sd.0109 = getelementptr i8, ptr %.pn108, i32 -80
  %ops = getelementptr i8, ptr %.pn108, i32 24
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %video, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_std, align 4
  %tobool17.not = icmp eq ptr %24, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %std, align 8
  %call22 = tail call i32 %24(ptr noundef %__sd.0109, i64 noundef %26) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn108, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.cond42.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond42.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheader

for.body48:                                       ; preds = %for.inc61.for.body48_crit_edge, %for.cond42.preheader.for.body48_crit_edge
  %.pn96113 = phi ptr [ %.pn96, %for.inc61.for.body48_crit_edge ], [ %.pn96110, %for.cond42.preheader.for.body48_crit_edge ]
  %__sd34.0114 = getelementptr i8, ptr %.pn96113, i32 -80
  %ops49 = getelementptr i8, ptr %.pn96113, i32 24
  %28 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops49, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tuner, align 4
  %tobool50.not = icmp eq ptr %31, null
  br i1 %tobool50.not, label %for.body48.for.inc61_crit_edge, label %land.lhs.true51

for.body48.for.inc61_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc61

land.lhs.true51:                                  ; preds = %for.body48
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_frequency, align 4
  %tobool54.not = icmp eq ptr %33, null
  br i1 %tobool54.not, label %land.lhs.true51.for.inc61_crit_edge, label %if.then55

land.lhs.true51.for.inc61_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc61

if.then55:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = call i32 %33(ptr noundef %__sd34.0114, ptr noundef nonnull %f) #9
  br label %for.inc61

for.inc61:                                        ; preds = %if.then55, %land.lhs.true51.for.inc61_crit_edge, %for.body48.for.inc61_crit_edge
  %34 = ptrtoint ptr %.pn96113 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn96 = load ptr, ptr %.pn96113, align 4
  %cmp46.not = icmp eq ptr %.pn96, %subdevs
  br i1 %cmp46.not, label %for.inc61.do.end69_crit_edge, label %for.inc61.for.body48_crit_edge

for.inc61.for.body48_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48

for.inc61.do.end69_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

do.end69:                                         ; preds = %for.inc61.do.end69_crit_edge, %for.cond42.preheader.do.end69_crit_edge
  %35 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i98 = icmp eq ptr %36, null
  br i1 %tobool.not.i98, label %do.end69.cleanup_crit_edge, label %land.lhs.true.i101

do.end69.cleanup_crit_edge:                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i101:                               ; preds = %do.end69
  %i2c_gate_ctrl.i99 = getelementptr inbounds %struct.dvb_frontend, ptr %36, i32 0, i32 1, i32 33, i32 7
  %37 = ptrtoint ptr %i2c_gate_ctrl.i99 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_gate_ctrl.i99, align 4
  %tobool3.not.i100 = icmp eq ptr %38, null
  br i1 %tobool3.not.i100, label %land.lhs.true.i101.cleanup_crit_edge, label %if.then.i103

land.lhs.true.i101.cleanup_crit_edge:             ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i103:                                     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #11
  %call.i102 = call i32 %38(ptr noundef nonnull %36, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i103, %land.lhs.true.i101.cleanup_crit_edge, %do.end69.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au0828_analog_stream_enable(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %d, i32 0, i32 48
  %1 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %dev_state, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbdev, align 4
  %call8 = tail call ptr @usb_ifnum_to_if(ptr noundef %5, i32 noundef 0) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.if.end35_crit_edge, label %land.lhs.true

if.end7.if.end35_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end7
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call8, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bAlternateSetting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.not = icmp eq i8 %9, 5
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.body12

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.body12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %10 = load i32, ptr @au0828_debug, align 4
  %and13 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end23_crit_edge, label %do.end18

do.body12.do.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #12
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %do.body12.do.end23_crit_edge
  %11 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbdev, align 4
  %call25 = tail call i32 @usb_set_interface(ptr noundef %12, i32 noundef 0, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end31, label %do.end23.if.end35_crit_edge

do.end23.if.end35_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end31:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #12
  br label %cleanup

if.end35:                                         ; preds = %do.end23.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end7.if.end35_crit_edge
  %height = getelementptr inbounds %struct.au0828_dev, ptr %d, i32 0, i32 31
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %div = sdiv i32 %14, 2
  %add = add nsw i32 %div, 2
  %width = getelementptr inbounds %struct.au0828_dev, ptr %d, i32 0, i32 30
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 8
  %mul = shl i32 %16, 1
  %call36 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 259, i32 noundef 0) #9
  %call37 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 262, i32 noundef 0) #9
  %call38 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 272, i32 noundef 0) #9
  %call39 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 273, i32 noundef 0) #9
  %and40 = and i32 %mul, 254
  %call41 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 276, i32 noundef %and40) #9
  %shr = ashr i32 %mul, 8
  %call42 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 277, i32 noundef %shr) #9
  %call43 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 274, i32 noundef 0) #9
  %call44 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 275, i32 noundef 0) #9
  %and45 = and i32 %add, 255
  %call46 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 278, i32 noundef %and45) #9
  %shr47 = ashr i32 %add, 8
  %call48 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 279, i32 noundef %shr47) #9
  %call49 = tail call i32 @au0828_writereg(ptr noundef %d, i16 noundef zeroext 256, i32 noundef 179) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end31, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au0828_analog_stream_reset(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 256, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  %call5 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 256, i32 noundef 179) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_analog_register(ptr noundef %dev, ptr nocapture noundef readonly %interface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %1 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %input = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usbdev, align 4
  %cur_altsetting8 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %9 = ptrtoint ptr %cur_altsetting8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_altsetting8, align 4
  %bInterfaceNumber10 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bInterfaceNumber10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bInterfaceNumber10, align 2
  %conv11 = zext i8 %12 to i32
  %call12 = tail call i32 @usb_set_interface(ptr noundef %8, i32 noundef %conv11, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %cur_altsetting8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_altsetting8, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp25297.not = icmp eq i8 %16, 0
  br i1 %cmp25297.not, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %endpoint27 = getelementptr inbounds %struct.usb_host_interface, ptr %14, i32 0, i32 3
  %max_pkt_size = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 57
  %isoc_in_endpointaddr = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %endpoint27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint27, align 4
  %arrayidx28 = getelementptr %struct.usb_host_endpoint, ptr %18, i32 %i.0298
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx28, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp32 = icmp slt i8 %20, 0
  br i1 %cmp32, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx28, i32 0, i32 3
  %21 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bmAttributes, align 1
  %23 = and i8 %22, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp36 = icmp eq i8 %23, 1
  br i1 %cmp36, label %if.then38, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx28, i32 0, i32 4
  %24 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wMaxPacketSize, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv40 = zext i16 %26 to i32
  %and41 = and i32 %conv40, 2047
  %and43 = lshr i32 %conv40, 11
  %27 = and i32 %and43, 3
  %add = add nuw nsw i32 %27, 1
  %mul = mul nuw nsw i32 %add, %and41
  %28 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %max_pkt_size, align 4
  %29 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bEndpointAddress, align 1
  %31 = ptrtoint ptr %isoc_in_endpointaddr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %isoc_in_endpointaddr, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %32 = load i32, ptr @au0828_debug, align 4
  %and46 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then38.for.inc_crit_edge, label %do.end51

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end51:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %conv54 = zext i8 %30 to i32
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv54, i32 noundef %mul) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end51, %if.then38.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0298, 1
  %33 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bNumEndpoints, align 4
  %conv24 = zext i8 %34 to i32
  %cmp25 = icmp ult i32 %inc, %conv24
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %isoc_in_endpointaddr61 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 41
  %35 = ptrtoint ptr %isoc_in_endpointaddr61 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %isoc_in_endpointaddr61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool62.not = icmp eq i8 %36, 0
  br i1 %tobool62.not, label %do.end66, label %do.body70

do.end66:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %cleanup

do.body70:                                        ; preds = %for.end
  %open = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 50
  tail call void @__init_waitqueue_head(ptr noundef %open, ptr noundef nonnull @.str.37, ptr noundef nonnull @au0828_analog_register.__key) #9
  %slock = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 55
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.39, ptr noundef nonnull @au0828_analog_register.__key.38, i16 noundef signext 3) #9
  %vidq = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 52
  %37 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %vidq, ptr %vidq, align 4
  %prev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 52, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %vidq, ptr %prev.i, align 4
  %vbiq = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 53
  %39 = ptrtoint ptr %vbiq to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %vbiq, ptr %vbiq, align 4
  %prev.i285 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 53, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %vbiq, ptr %prev.i285, align 4
  %vid_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 24
  tail call void @init_timer_key(ptr noundef %vid_timeout, ptr noundef nonnull @au0828_vid_buffer_timeout, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @au0828_analog_register.__key.40) #9
  %vbi_timeout = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 26
  tail call void @init_timer_key(ptr noundef %vbi_timeout, ptr noundef nonnull @au0828_vbi_buffer_timeout, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef nonnull @au0828_analog_register.__key.42) #9
  %width = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 30
  %41 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 720, ptr %width, align 8
  %height = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 31
  %42 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 480, ptr %height, align 4
  %field_size = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 36
  %43 = ptrtoint ptr %field_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 345600, ptr %field_size, align 8
  %frame_size = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 37
  %44 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 691200, ptr %frame_size, align 4
  %bytesperline = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 38
  %45 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1440, ptr %bytesperline, align 8
  %vbi_width = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 32
  %46 = ptrtoint ptr %vbi_width to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 720, ptr %vbi_width, align 8
  %vbi_height = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 33
  %47 = ptrtoint ptr %vbi_height to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %vbi_height, align 4
  %ctrl_ainput = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 40
  %48 = ptrtoint ptr %ctrl_ainput to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ctrl_ainput, align 8
  %ctrl_freq = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 44
  %49 = ptrtoint ptr %ctrl_freq to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 960, ptr %ctrl_freq, align 8
  %std = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 35
  %50 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 4096, ptr %std, align 8
  tail call fastcc void @au0828_s_input(ptr noundef %dev, i32 noundef 0)
  %vb_queue_lock = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.45, ptr noundef nonnull @au0828_analog_register.__key.44) #9
  %vb_vbi_queue_lock = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %vb_vbi_queue_lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @au0828_analog_register.__key.46) #9
  %vdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16
  %51 = call ptr @memcpy(ptr %vdev, ptr @au0828_video_template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13
  %v4l2_dev97 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16, i32 7
  %52 = ptrtoint ptr %v4l2_dev97 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %v4l2_dev, ptr %v4l2_dev97, align 4
  %lock = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 51
  %lock99 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16, i32 26
  %53 = ptrtoint ptr %lock99 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %lock, ptr %lock99, align 8
  %vb_vidq = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18
  %queue = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16, i32 10
  %54 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %vb_vidq, ptr %queue, align 8
  %lock104 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18, i32 5
  %55 = ptrtoint ptr %lock104 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %vb_queue_lock, ptr %lock104, align 4
  %device_caps = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16, i32 4
  %56 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 84082689, ptr %device_caps, align 8
  %name = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16, i32 12
  %call107 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.48, i32 noundef 32) #9
  %vbi_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17
  %57 = call ptr @memcpy(ptr %vbi_dev, ptr @au0828_video_template, i32 1352)
  %v4l2_dev110 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17, i32 7
  %58 = ptrtoint ptr %v4l2_dev110 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %v4l2_dev, ptr %v4l2_dev110, align 4
  %lock113 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17, i32 26
  %59 = ptrtoint ptr %lock113 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %lock, ptr %lock113, align 8
  %vb_vbiq = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19
  %queue115 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17, i32 10
  %60 = ptrtoint ptr %queue115 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %vb_vbiq, ptr %queue115, align 8
  %lock119 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19, i32 5
  %61 = ptrtoint ptr %lock119 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %vb_vbi_queue_lock, ptr %lock119, align 4
  %device_caps121 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17, i32 4
  %62 = ptrtoint ptr %device_caps121 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 84082704, ptr %device_caps121, align 8
  %name123 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17, i32 12
  %call125 = tail call i32 @strscpy(ptr noundef %name123, ptr noundef nonnull @.str.49, i32 noundef 32) #9
  %video_pad.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 67
  %flags.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 67, i32 4
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %flags.i, align 4
  %call.i = tail call i32 @media_entity_pads_init(ptr noundef %vdev, i16 noundef zeroext 1, ptr noundef %video_pad.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.body70.if.end.i_crit_edge

do.body70.if.end.i_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.body70.if.end.i_crit_edge
  %vbi_pad.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 68
  %flags3.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 68, i32 4
  %64 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %flags3.i, align 4
  %call6.i = tail call i32 @media_entity_pads_init(ptr noundef %vbi_dev, i16 noundef zeroext 1, ptr noundef %vbi_pad.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end11.i, %if.end.i.if.end14.i_crit_edge
  %media_dev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 66
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end14.i
  %i.088.i = phi i32 [ 0, %if.end14.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 %i.088.i
  %arrayidx16.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 %i.088.i
  %65 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp17.i = icmp eq i32 %66, 0
  br i1 %cmp17.i, label %for.body.i.au0828_analog_create_entities.exit_crit_edge, label %if.end19.i

for.body.i.au0828_analog_create_entities.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_analog_create_entities.exit

if.end19.i:                                       ; preds = %for.body.i
  %arrayidx24.i = getelementptr [6 x ptr], ptr @au0828_analog_create_entities.inames, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx24.i, align 4
  %name.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 %i.088.i, i32 1
  %69 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %name.i, align 4
  %flags25.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 %i.088.i, i32 4
  %70 = ptrtoint ptr %flags25.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %flags25.i, align 4
  %arrayidx26.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 71, i32 %i.088.i
  %flags27.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 71, i32 %i.088.i, i32 4
  %71 = ptrtoint ptr %flags27.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %flags27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %switch.selectcmp.i = icmp eq i32 %66, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 196610, i32 196609
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %switch.selectcmp90.i = icmp eq i32 %66, 1
  %switch.select91.i = select i1 %switch.selectcmp90.i, i32 196611, i32 %switch.select.i
  %function35.i = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 70, i32 %i.088.i, i32 3
  %72 = ptrtoint ptr %function35.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %switch.select91.i, ptr %function35.i, align 4
  %call38.i = tail call i32 @media_entity_pads_init(ptr noundef %arrayidx.i, i16 noundef zeroext 1, ptr noundef %arrayidx26.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %do.end43.i, label %if.end19.i.if.end46.i_crit_edge

if.end19.i.if.end46.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

do.end43.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %i.088.i) #12
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end43.i, %if.end19.i.if.end46.i_crit_edge
  %73 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %media_dev.i, align 4
  %call47.i = tail call i32 @media_device_register_entity(ptr noundef %74, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %do.end52.i, label %if.end46.i.for.inc.i_crit_edge

if.end46.i.for.inc.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end52.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, i32 noundef %i.088.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end52.i, %if.end46.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.au0828_analog_create_entities.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.au0828_analog_create_entities.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_analog_create_entities.exit

au0828_analog_create_entities.exit:               ; preds = %for.inc.i.au0828_analog_create_entities.exit_crit_edge, %for.body.i.au0828_analog_create_entities.exit_crit_edge
  %75 = ptrtoint ptr %vb_vidq to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %vb_vidq, align 4
  %io_modes.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18, i32 1
  %76 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 23, ptr %io_modes.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18, i32 13
  %77 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18, i32 10
  %78 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev, ptr %drv_priv.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18, i32 12
  %79 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 760, ptr %buf_struct_size.i, align 4
  %ops.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18, i32 7
  %80 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @au0828_video_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 18, i32 8
  %81 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops.i, align 4
  %call.i286 = tail call i32 @vb2_queue_init(ptr noundef %vb_vidq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %cmp.i287 = icmp slt i32 %call.i286, 0
  br i1 %cmp.i287, label %au0828_analog_create_entities.exit.do.body130_crit_edge, label %au0828_vb2_setup.exit

au0828_analog_create_entities.exit.do.body130_crit_edge: ; preds = %au0828_analog_create_entities.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body130

au0828_vb2_setup.exit:                            ; preds = %au0828_analog_create_entities.exit
  %82 = ptrtoint ptr %vb_vbiq to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 4, ptr %vb_vbiq, align 4
  %io_modes2.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19, i32 1
  %83 = ptrtoint ptr %io_modes2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 23, ptr %io_modes2.i, align 4
  %timestamp_flags3.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19, i32 13
  %84 = ptrtoint ptr %timestamp_flags3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8192, ptr %timestamp_flags3.i, align 4
  %drv_priv4.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19, i32 10
  %85 = ptrtoint ptr %drv_priv4.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev, ptr %drv_priv4.i, align 4
  %buf_struct_size5.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19, i32 12
  %86 = ptrtoint ptr %buf_struct_size5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 760, ptr %buf_struct_size5.i, align 4
  %ops6.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19, i32 7
  %87 = ptrtoint ptr %ops6.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @au0828_vbi_qops, ptr %ops6.i, align 4
  %mem_ops7.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 19, i32 8
  %88 = ptrtoint ptr %mem_ops7.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops7.i, align 4
  %call8.i = tail call i32 @vb2_queue_init(ptr noundef %vb_vbiq) #9
  %89 = tail call i32 @llvm.smin.i32(i32 %call8.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp127.not = icmp sgt i32 %call8.i, -1
  br i1 %cmp127.not, label %if.end142, label %au0828_vb2_setup.exit.do.body130_crit_edge

au0828_vb2_setup.exit.do.body130_crit_edge:       ; preds = %au0828_vb2_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body130

do.body130:                                       ; preds = %au0828_vb2_setup.exit.do.body130_crit_edge, %au0828_analog_create_entities.exit.do.body130_crit_edge
  %retval.0.i295 = phi i32 [ %89, %au0828_vb2_setup.exit.do.body130_crit_edge ], [ %call.i286, %au0828_analog_create_entities.exit.do.body130_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %90 = load i32, ptr @au0828_debug, align 4
  %and131 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %do.body130.cleanup_crit_edge, label %do.end136

do.body130.cleanup_crit_edge:                     ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end136:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %retval.0.i295) #12
  br label %cleanup

if.end142:                                        ; preds = %au0828_vb2_setup.exit
  %driver_data.i.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16, i32 5, i32 8
  %91 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %fops.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 16, i32 3
  %92 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fops.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %call.i289 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %cmp146.not = icmp eq i32 %call.i289, 0
  br i1 %cmp146.not, label %if.end161, label %do.body149

do.body149:                                       ; preds = %if.end142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %96 = load i32, ptr @au0828_debug, align 4
  %and150 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.cleanup_crit_edge, label %do.end155

do.body149.cleanup_crit_edge:                     ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call.i289) #12
  br label %cleanup

if.end161:                                        ; preds = %if.end142
  %driver_data.i.i290 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17, i32 5, i32 8
  %97 = ptrtoint ptr %driver_data.i.i290 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %dev, ptr %driver_data.i.i290, align 4
  %fops.i291 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 17, i32 3
  %98 = ptrtoint ptr %fops.i291 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fops.i291, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call.i292 = tail call i32 @__video_register_device(ptr noundef %vbi_dev, i32 noundef 1, i32 noundef -1, i32 noundef 1, ptr noundef %101) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %cmp165.not = icmp eq i32 %call.i292, 0
  br i1 %cmp165.not, label %if.end180, label %do.body168

do.body168:                                       ; preds = %if.end161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %102 = load i32, ptr @au0828_debug, align 4
  %and169 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body168.err_reg_vbi_dev_crit_edge, label %do.end174

do.body168.err_reg_vbi_dev_crit_edge:             ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_reg_vbi_dev

do.end174:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call.i292) #12
  br label %err_reg_vbi_dev

if.end180:                                        ; preds = %if.end161
  %103 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %media_dev.i, align 4
  %call181 = tail call i32 @v4l2_mc_create_media_graph(ptr noundef %104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %do.body190, label %do.end186

do.end186:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.27) #12
  br label %err_reg_vbi_dev

do.body190:                                       ; preds = %if.end180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %105 = load i32, ptr @au0828_debug, align 4
  %and191 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %do.body190.cleanup_crit_edge, label %do.end196

do.body190.cleanup_crit_edge:                     ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end196:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.27) #12
  br label %cleanup

err_reg_vbi_dev:                                  ; preds = %do.end186, %do.end174, %do.body168.err_reg_vbi_dev_crit_edge
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_reg_vbi_dev, %do.end196, %do.body190.cleanup_crit_edge, %do.end155, %do.body149.cleanup_crit_edge, %do.end136, %do.body130.cleanup_crit_edge, %do.end66, %do.end18, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end18 ], [ -19, %err_reg_vbi_dev ], [ -19, %do.end66 ], [ 0, %do.end4.cleanup_crit_edge ], [ -19, %do.end136 ], [ -19, %do.body130.cleanup_crit_edge ], [ -19, %do.end155 ], [ -19, %do.body149.cleanup_crit_edge ], [ 0, %do.end196 ], [ 0, %do.body190.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_vid_buffer_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vidq = getelementptr i8, ptr %t, i32 336
  %slock = getelementptr i8, ptr %t, i32 420
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %buf6 = getelementptr i8, ptr %t, i32 404
  %0 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf6, align 4
  %cmp7.not = icmp eq ptr %1, null
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call9 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %1, i32 noundef 0) #9
  %length = getelementptr inbounds %struct.au0828_buffer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %4 = call ptr @memset(ptr %call9, i32 0, i32 %3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.do.end4.i_crit_edge, label %do.end.i

if.then.do.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %top_field.i = getelementptr inbounds %struct.au0828_buffer, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %top_field.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top_field.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef nonnull %1, i32 noundef %9) #12
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then.do.end4.i_crit_edge
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %frame_count.i = getelementptr i8, ptr %t, i32 -8
  %12 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_count.i, align 8
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %frame_count.i, align 8
  br label %buffer_filled.exit

if.else.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %vbi_frame_count.i = getelementptr i8, ptr %t, i32 -4
  %14 = ptrtoint ptr %vbi_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbi_frame_count.i, align 4
  %inc6.i = add i32 %15, 1
  store i32 %inc6.i, ptr %vbi_frame_count.i, align 4
  br label %buffer_filled.exit

buffer_filled.exit:                               ; preds = %if.else.i, %if.then5.i
  %.sink.i = phi i32 [ %13, %if.then5.i ], [ %15, %if.else.i ]
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %16, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %field.i, align 4
  %call.i.i = tail call i64 @ktime_get() #9
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %1, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %buffer_filled.exit, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %vidq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %vidq, align 4
  %cmp.i.not.i = icmp eq ptr %21, %vidq
  br i1 %cmp.i.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.end
  %22 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i, label %do.body.i.get_next_buf.exit_crit_edge, label %do.end.i23

do.body.i.get_next_buf.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_next_buf.exit

do.end.i23:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.114) #12
  br label %get_next_buf.exit

if.end9.i:                                        ; preds = %if.end
  %add.ptr13.i = getelementptr i8, ptr %21, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.i.list_del.exit.i_crit_edge

if.end9.i.list_del.exit.i_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end9.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pos.i = getelementptr i8, ptr %t, i32 344
  %31 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %pos.i, align 4
  %mem.i = getelementptr i8, ptr %21, i32 8
  %32 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem.i, align 8
  %vb_buf.i = getelementptr i8, ptr %21, i32 20
  %34 = ptrtoint ptr %vb_buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %vb_buf.i, align 4
  br label %get_next_buf.exit

get_next_buf.exit:                                ; preds = %list_del.exit.i, %do.end.i23, %do.body.i.get_next_buf.exit_crit_edge
  %storemerge = phi ptr [ %add.ptr13.i, %list_del.exit.i ], [ null, %do.end.i23 ], [ null, %do.body.i.get_next_buf.exit_crit_edge ]
  %35 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %storemerge, ptr %buf6, align 4
  %vid_timeout_running = getelementptr i8, ptr %t, i32 48
  %36 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vid_timeout_running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp10 = icmp eq i32 %37, 1
  br i1 %cmp10, label %if.then12, label %get_next_buf.exit.if.end14_crit_edge

get_next_buf.exit.if.end14_crit_edge:             ; preds = %get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %38, 10
  %call13 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %get_next_buf.exit.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_vbi_buffer_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vbiq = getelementptr i8, ptr %t, i32 296
  %slock = getelementptr i8, ptr %t, i32 368
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %vbi_buf = getelementptr i8, ptr %t, i32 356
  %0 = ptrtoint ptr %vbi_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbi_buf, align 8
  %cmp6.not = icmp eq ptr %1, null
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call8 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %1, i32 noundef 0) #9
  %length = getelementptr inbounds %struct.au0828_buffer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %4 = call ptr @memset(ptr %call8, i32 0, i32 %3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.do.end4.i_crit_edge, label %do.end.i

if.then.do.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %top_field.i = getelementptr inbounds %struct.au0828_buffer, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %top_field.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top_field.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr noundef nonnull %1, i32 noundef %9) #12
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then.do.end4.i_crit_edge
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %frame_count.i = getelementptr i8, ptr %t, i32 -60
  %12 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_count.i, align 8
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %frame_count.i, align 8
  br label %buffer_filled.exit

if.else.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %vbi_frame_count.i = getelementptr i8, ptr %t, i32 -56
  %14 = ptrtoint ptr %vbi_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbi_frame_count.i, align 4
  %inc6.i = add i32 %15, 1
  store i32 %inc6.i, ptr %vbi_frame_count.i, align 4
  br label %buffer_filled.exit

buffer_filled.exit:                               ; preds = %if.else.i, %if.then5.i
  %.sink.i = phi i32 [ %13, %if.then5.i ], [ %15, %if.else.i ]
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %16, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %field.i, align 4
  %call.i.i = tail call i64 @ktime_get() #9
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %1, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %buffer_filled.exit, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not.i = icmp eq ptr %21, %vbiq
  br i1 %cmp.i.not.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %if.end
  %22 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i, label %do.body.i.vbi_get_next_buf.exit_crit_edge, label %do.end.i22

do.body.i.vbi_get_next_buf.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vbi_get_next_buf.exit

do.end.i22:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113) #12
  br label %vbi_get_next_buf.exit

if.end8.i:                                        ; preds = %if.end
  %add.ptr12.i = getelementptr i8, ptr %21, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.i.list_del.exit.i_crit_edge

if.end8.i.list_del.exit.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end8.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pos.i = getelementptr i8, ptr %t, i32 304
  %31 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %pos.i, align 4
  %mem.i = getelementptr i8, ptr %21, i32 8
  %32 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem.i, align 8
  %vb_buf.i = getelementptr i8, ptr %21, i32 20
  %34 = ptrtoint ptr %vb_buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %vb_buf.i, align 4
  br label %vbi_get_next_buf.exit

vbi_get_next_buf.exit:                            ; preds = %list_del.exit.i, %do.end.i22, %do.body.i.vbi_get_next_buf.exit_crit_edge
  %storemerge = phi ptr [ %add.ptr12.i, %list_del.exit.i ], [ null, %do.end.i22 ], [ null, %do.body.i.vbi_get_next_buf.exit_crit_edge ]
  %35 = ptrtoint ptr %vbi_buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %storemerge, ptr %vbi_buf, align 8
  %vbi_timeout_running = getelementptr i8, ptr %t, i32 48
  %36 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vbi_timeout_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp9 = icmp eq i32 %37, 1
  br i1 %cmp9, label %if.then11, label %vbi_get_next_buf.exit.if.end13_crit_edge

vbi_get_next_buf.exit.if.end13_crit_edge:         ; preds = %vbi_get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %vbi_get_next_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %38, 10
  %call12 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %vbi_get_next_buf.exit.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au0828_s_input(ptr noundef %dev, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 46
  %1 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 48
  %3 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_state, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.149, i32 noundef %2, i32 noundef %4) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %arrayidx = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 %index
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %6, label %do.body10 [
    i32 2, label %do.end3.sw.epilog_crit_edge
    i32 1, label %do.end3.sw.epilog_crit_edge206
    i32 4, label %sw.bb7
  ]

do.end3.sw.epilog_crit_edge206:                   ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body10:                                        ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %8 = load i32, ptr @au0828_debug, align 4
  %and11 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.cleanup133_crit_edge, label %do.end16

do.body10.cleanup133_crit_edge:                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %6) #12
  br label %cleanup133

sw.epilog:                                        ; preds = %sw.bb7, %do.end3.sw.epilog_crit_edge, %do.end3.sw.epilog_crit_edge206
  %.sink = phi i8 [ 0, %sw.bb7 ], [ 1, %do.end3.sw.epilog_crit_edge ], [ 1, %do.end3.sw.epilog_crit_edge206 ]
  %input_type8 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 45
  %9 = ptrtoint ptr %input_type8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %input_type8, align 4
  %ctrl_ainput9 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 40
  %10 = ptrtoint ptr %ctrl_ainput9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %ctrl_ainput9, align 8
  %ctrl_input = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 47
  %11 = ptrtoint ptr %ctrl_input to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %index, ptr %ctrl_input, align 4
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13, i32 2
  %12 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn188 = load ptr, ptr %subdevs, align 4
  %cmp.not190 = icmp eq ptr %.pn188, %subdevs
  br i1 %cmp.not190, label %sw.epilog.for.cond53.preheader_crit_edge, label %for.body.lr.ph

sw.epilog.for.cond53.preheader_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond53.preheader

for.body.lr.ph:                                   ; preds = %sw.epilog
  %vmux = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 %index, i32 1
  br label %for.body

for.cond53.preheader:                             ; preds = %for.inc.for.cond53.preheader_crit_edge, %sw.epilog.for.cond53.preheader_crit_edge
  %audio_setup79 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 %index, i32 3
  %audio_setup = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 0, i32 3
  %13 = ptrtoint ptr %audio_setup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %audio_setup, align 4
  %cmp59 = icmp eq ptr %14, null
  br i1 %cmp59, label %for.cond53.preheader.cleanup_crit_edge, label %if.end61

for.cond53.preheader.cleanup_crit_edge:           ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn191 = phi ptr [ %.pn188, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__sd.0192 = getelementptr i8, ptr %.pn191, i32 -80
  %ops = getelementptr i8, ptr %.pn191, i32 24
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %video, align 4
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool34.not = icmp eq ptr %20, null
  br i1 %tobool34.not, label %land.lhs.true.for.inc_crit_edge, label %if.then35

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %vmux to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vmux, align 4
  %call42 = tail call i32 %20(ptr noundef %__sd.0192, i32 noundef %22, i32 noundef 0, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn191 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn191, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.cond53.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond53.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond53.preheader

for.body105.lr.ph:                                ; preds = %cleanup.3
  %amux = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 %index, i32 2
  br label %for.body105

if.end61:                                         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp62 = icmp eq i32 %index, 0
  br i1 %cmp62, label %cleanup.thread, label %if.else71

if.else71:                                        ; preds = %if.end61
  %24 = ptrtoint ptr %audio_setup79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %audio_setup79, align 4
  %cmp80.not = icmp eq ptr %14, %25
  br i1 %cmp80.not, label %if.else71.cleanup_crit_edge, label %if.then81

if.else71.cleanup_crit_edge:                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %if.else71.cleanup_crit_edge, %for.cond53.preheader.cleanup_crit_edge
  %audio_setup.1 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 1, i32 3
  %26 = ptrtoint ptr %audio_setup.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %audio_setup.1, align 4
  %cmp59.1 = icmp eq ptr %27, null
  br i1 %cmp59.1, label %cleanup.cleanup.1_crit_edge, label %if.end61.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

cleanup.thread:                                   ; preds = %if.end61
  tail call void %14(ptr noundef %dev, i32 noundef 1) #9
  %audio_setup.1199 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 1, i32 3
  %28 = ptrtoint ptr %audio_setup.1199 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %audio_setup.1199, align 4
  %cmp59.1200 = icmp eq ptr %29, null
  br i1 %cmp59.1200, label %cleanup.thread.cleanup.1_crit_edge, label %cleanup.thread.if.else71.1_crit_edge

cleanup.thread.if.else71.1_crit_edge:             ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.1

cleanup.thread.cleanup.1_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.end61.1:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp62.1 = icmp eq i32 %index, 1
  br i1 %cmp62.1, label %if.then66.1, label %if.end61.1.if.else71.1_crit_edge

if.end61.1.if.else71.1_crit_edge:                 ; preds = %if.end61.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.1

if.else71.1:                                      ; preds = %if.end61.1.if.else71.1_crit_edge, %cleanup.thread.if.else71.1_crit_edge
  %30 = phi ptr [ %27, %if.end61.1.if.else71.1_crit_edge ], [ %29, %cleanup.thread.if.else71.1_crit_edge ]
  %31 = ptrtoint ptr %audio_setup79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %audio_setup79, align 4
  %cmp80.not.1 = icmp eq ptr %30, %32
  br i1 %cmp80.not.1, label %if.else71.1.cleanup.1_crit_edge, label %if.then81.1

if.else71.1.cleanup.1_crit_edge:                  ; preds = %if.else71.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1

if.then81.1:                                      ; preds = %if.else71.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %30(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup.1

if.then66.1:                                      ; preds = %if.end61.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %27(ptr noundef %dev, i32 noundef 1) #9
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then66.1, %if.then81.1, %if.else71.1.cleanup.1_crit_edge, %cleanup.thread.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %audio_setup.2 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 2, i32 3
  %33 = ptrtoint ptr %audio_setup.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %audio_setup.2, align 4
  %cmp59.2 = icmp eq ptr %34, null
  br i1 %cmp59.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end61.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

if.end61.2:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp62.2 = icmp eq i32 %index, 2
  br i1 %cmp62.2, label %cleanup.2.thread, label %if.else71.2

if.else71.2:                                      ; preds = %if.end61.2
  %35 = ptrtoint ptr %audio_setup79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %audio_setup79, align 4
  %cmp80.not.2 = icmp eq ptr %34, %36
  br i1 %cmp80.not.2, label %if.else71.2.cleanup.2_crit_edge, label %if.then81.2

if.else71.2.cleanup.2_crit_edge:                  ; preds = %if.else71.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.2

if.then81.2:                                      ; preds = %if.else71.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %34(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then81.2, %if.else71.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %audio_setup.3 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 3, i32 3
  %37 = ptrtoint ptr %audio_setup.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %audio_setup.3, align 4
  %cmp59.3 = icmp eq ptr %38, null
  br i1 %cmp59.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end61.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3

cleanup.2.thread:                                 ; preds = %if.end61.2
  tail call void %34(ptr noundef %dev, i32 noundef 1) #9
  %audio_setup.3202 = getelementptr %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5, i32 3, i32 3
  %39 = ptrtoint ptr %audio_setup.3202 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %audio_setup.3202, align 4
  %cmp59.3203 = icmp eq ptr %40, null
  br i1 %cmp59.3203, label %cleanup.2.thread.cleanup.3_crit_edge, label %cleanup.2.thread.if.else71.3_crit_edge

cleanup.2.thread.if.else71.3_crit_edge:           ; preds = %cleanup.2.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.3

cleanup.2.thread.cleanup.3_crit_edge:             ; preds = %cleanup.2.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3

if.end61.3:                                       ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp62.3 = icmp eq i32 %index, 3
  br i1 %cmp62.3, label %if.then66.3, label %if.end61.3.if.else71.3_crit_edge

if.end61.3.if.else71.3_crit_edge:                 ; preds = %if.end61.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else71.3

if.else71.3:                                      ; preds = %if.end61.3.if.else71.3_crit_edge, %cleanup.2.thread.if.else71.3_crit_edge
  %41 = phi ptr [ %38, %if.end61.3.if.else71.3_crit_edge ], [ %40, %cleanup.2.thread.if.else71.3_crit_edge ]
  %42 = ptrtoint ptr %audio_setup79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %audio_setup79, align 4
  %cmp80.not.3 = icmp eq ptr %41, %43
  br i1 %cmp80.not.3, label %if.else71.3.cleanup.3_crit_edge, label %if.then81.3

if.else71.3.cleanup.3_crit_edge:                  ; preds = %if.else71.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3

if.then81.3:                                      ; preds = %if.else71.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %41(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup.3

if.then66.3:                                      ; preds = %if.end61.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %38(ptr noundef %dev, i32 noundef 1) #9
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then66.3, %if.then81.3, %if.else71.3.cleanup.3_crit_edge, %cleanup.2.thread.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %44 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn187194 = load ptr, ptr %subdevs, align 4
  %cmp103.not196 = icmp eq ptr %.pn187194, %subdevs
  br i1 %cmp103.not196, label %cleanup.3.cleanup133_crit_edge, label %for.body105.lr.ph

cleanup.3.cleanup133_crit_edge:                   ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

for.body105:                                      ; preds = %for.inc122.for.body105_crit_edge, %for.body105.lr.ph
  %.pn187197 = phi ptr [ %.pn187194, %for.body105.lr.ph ], [ %.pn187, %for.inc122.for.body105_crit_edge ]
  %__sd91.0198 = getelementptr i8, ptr %.pn187197, i32 -80
  %ops106 = getelementptr i8, ptr %.pn187197, i32 24
  %45 = ptrtoint ptr %ops106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops106, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %audio, align 4
  %tobool107.not = icmp eq ptr %48, null
  br i1 %tobool107.not, label %for.body105.for.inc122_crit_edge, label %land.lhs.true108

for.body105.for.inc122_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc122

land.lhs.true108:                                 ; preds = %for.body105
  %s_routing111 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %s_routing111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_routing111, align 4
  %tobool112.not = icmp eq ptr %50, null
  br i1 %tobool112.not, label %land.lhs.true108.for.inc122_crit_edge, label %if.then113

land.lhs.true108.for.inc122_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc122

if.then113:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %amux, align 4
  %call120 = tail call i32 %50(ptr noundef %__sd91.0198, i32 noundef %52, i32 noundef 0, i32 noundef 0) #9
  br label %for.inc122

for.inc122:                                       ; preds = %if.then113, %land.lhs.true108.for.inc122_crit_edge, %for.body105.for.inc122_crit_edge
  %53 = ptrtoint ptr %.pn187197 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn187 = load ptr, ptr %.pn187197, align 4
  %cmp103.not = icmp eq ptr %.pn187, %subdevs
  br i1 %cmp103.not, label %for.inc122.cleanup133_crit_edge, label %for.inc122.for.body105_crit_edge

for.inc122.for.body105_crit_edge:                 ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body105

for.inc122.cleanup133_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup133

cleanup133:                                       ; preds = %for.inc122.cleanup133_crit_edge, %cleanup.3.cleanup133_crit_edge, %do.end16, %do.body10.cleanup133_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_mc_create_media_graph(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_usb_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_writereg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_irq_callback(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -9488
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %3, label %do.body6 [
    i32 0, label %entry.do.body19_crit_edge
    i32 -110, label %entry.do.body19_crit_edge76
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge77
    i32 -108, label %entry.do.body_crit_edge78
  ]

entry.do.body_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

entry.do.body19_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge77, %entry.do.body_crit_edge78
  %5 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #12
  br label %cleanup

do.body6:                                         ; preds = %entry
  %6 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %do.body6.do.body19_crit_edge, label %do.end11

do.body6.do.body19_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.82, i32 noundef %3) #12
  br label %do.body19

do.body19:                                        ; preds = %do.end11, %do.body6.do.body19_crit_edge, %entry.do.body19_crit_edge, %entry.do.body19_crit_edge76
  %slock = getelementptr i8, ptr %1, i32 84
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %isoc_copy = getelementptr i8, ptr %1, i32 80
  %7 = ptrtoint ptr %isoc_copy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %isoc_copy, align 8
  %call27 = tail call i32 %8(ptr noundef %add.ptr, ptr noundef %urb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call22) #9
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %9 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2974 = icmp sgt i32 %10, 0
  br i1 %cmp2974, label %do.body19.for.body_crit_edge, label %do.body19.for.end_crit_edge

do.body19.for.end_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body19.for.body_crit_edge:                     ; preds = %do.body19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body19.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body19.for.body_crit_edge ]
  %status31 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.075, i32 3
  %11 = ptrtoint ptr %status31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %status31, align 4
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.075, i32 2
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %actual_length, align 4
  %inc = add nuw nsw i32 %i.075, 1
  %13 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number_of_packets, align 4
  %cmp29 = icmp slt i32 %inc, %14
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body19.for.end_crit_edge
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status, align 4
  %call35 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call35, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool38.not = icmp eq i32 %call35, 0
  br i1 %tobool38.not, label %for.end.if.end52_crit_edge, label %do.body40

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body40:                                        ; preds = %for.end
  %17 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool41.not = icmp eq i32 %17, 0
  br i1 %tobool41.not, label %do.body40.if.end52_crit_edge, label %do.end45

do.body40.if.end52_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end45:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.82, i32 noundef %call35) #12
  br label %if.end52

if.end52:                                         ; preds = %do.end45, %do.body40.if.end52_crit_edge, %for.end.if.end52_crit_edge
  %stream_state = getelementptr i8, ptr %1, i32 -148
  %18 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %stream_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_v4l2_open(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %streaming_users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %streaming_users, align 4
  %users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %users, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 51
  %call5 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %call9 = tail call i32 @v4l2_fh_open(ptr noundef %filp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end24, label %do.body12

do.body12:                                        ; preds = %if.end8
  %11 = load i32, ptr @isoc_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %do.body12.cleanup.sink.split_crit_edge, label %do.end17

do.body12.cleanup.sink.split_crit_edge:           ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.154, i32 noundef %call9) #12
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end8
  %users25 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %users25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then26, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @au0828_analog_stream_enable(ptr noundef %1)
  tail call fastcc void @au0828_analog_stream_reset(ptr noundef %1)
  %stream_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 49
  %14 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %stream_state, align 4
  %dev_state28 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  tail call void @_set_bit(i32 noundef 0, ptr noundef %dev_state28) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %15 = ptrtoint ptr %users25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %users25, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %users25, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end29, %do.end17, %do.body12.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end29 ], [ %call9, %do.end17 ], [ %call9, %do.body12.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %do.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_v4l2_close(ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %filp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %streaming_users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %streaming_users, align 4
  %users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %users, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.158, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %lock = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 13
  %11 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vfl_type, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %12, label %do.end5.if.end18_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true12
  ]

do.end5.if.end18_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %do.end5
  %vid_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vid_timeout_running, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end18_crit_edge, label %if.then7

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %vid_timeout_running, align 8
  %vid_timeout = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 24
  br label %if.end18.sink.split

land.lhs.true12:                                  ; preds = %do.end5
  %vbi_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 27
  %17 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbi_timeout_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end18_crit_edge, label %if.then14

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %vbi_timeout_running to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %vbi_timeout_running, align 4
  %vbi_timeout = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 26
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.then14, %if.then7
  %vbi_timeout.sink = phi ptr [ %vbi_timeout, %if.then14 ], [ %vid_timeout, %if.then7 ]
  %call16 = tail call i32 @del_timer_sync(ptr noundef %vbi_timeout.sink) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %land.lhs.true12.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %do.end5.if.end18_crit_edge
  %dev_state19 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %20 = ptrtoint ptr %dev_state19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %dev_state19, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.end_crit_edge

if.end18.end_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end23:                                         ; preds = %if.end18
  %users24 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 28
  %23 = ptrtoint ptr %users24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %users24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp25 = icmp eq i32 %24, 1
  br i1 %cmp25, label %if.then26, label %if.end23.end_crit_edge

if.end23.end_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.then26:                                        ; preds = %if.end23
  %call27 = tail call i32 @v4l_enable_media_source(ptr noundef %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %do.body30, label %if.then26.if.end56_crit_edge

if.then26.if.end56_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.body30:                                        ; preds = %if.then26
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn101 = load ptr, ptr %subdevs, align 4
  %cmp35.not103 = icmp eq ptr %.pn101, %subdevs
  br i1 %cmp35.not103, label %do.body30.if.end56_crit_edge, label %do.body30.for.body_crit_edge

do.body30.for.body_crit_edge:                     ; preds = %do.body30
  br label %for.body

do.body30.if.end56_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body30.for.body_crit_edge
  %.pn104 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn101, %do.body30.for.body_crit_edge ]
  %__sd.0105 = getelementptr i8, ptr %.pn104, i32 -80
  %ops = getelementptr i8, ptr %.pn104, i32 24
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner, align 4
  %tobool36.not = icmp eq ptr %29, null
  br i1 %tobool36.not, label %for.body.for.inc_crit_edge, label %land.lhs.true37

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true37:                                  ; preds = %for.body
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %land.lhs.true37.for.inc_crit_edge, label %if.then41

land.lhs.true37.for.inc_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 %31(ptr noundef %__sd.0105) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %land.lhs.true37.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn104, align 4
  %cmp35.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp35.not, label %for.inc.if.end56_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end56_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end56:                                         ; preds = %for.inc.if.end56_crit_edge, %do.body30.if.end56_crit_edge, %if.then26.if.end56_crit_edge
  %std_set_in_tuner_core57 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %33 = ptrtoint ptr %std_set_in_tuner_core57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %std_set_in_tuner_core57, align 8
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usbdev, align 4
  %call58 = tail call i32 @usb_set_interface(ptr noundef %35, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %if.end56.end_crit_edge

if.end56.end_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #12
  br label %end

end:                                              ; preds = %do.end63, %if.end56.end_crit_edge, %if.end23.end_crit_edge, %if.end18.end_crit_edge
  %call68 = tail call i32 @_vb2_fop_release(ptr noundef %filp, ptr noundef null) #9
  %users69 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 28
  %36 = ptrtoint ptr %users69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %users69, align 8
  %dec = add i32 %37, -1
  store i32 %dec, ptr %users69, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l_enable_media_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.162, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.163, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %board = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board, align 4
  %call7 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %8, i32 noundef 32) #9
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usbdev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 1
  %call.i16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.164, ptr noundef %14, ptr noundef %devpath.i) #9
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %15 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2063400943, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1498831189, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %do.end5, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end5 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.167, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %width = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 31
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height7, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1498831189, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 38
  %14 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytesperline, align 8
  %bytesperline10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %bytesperline10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %bytesperline10, align 4
  %frame_size = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 37
  %17 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vbi_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.168, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vbi_width = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %vbi_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vbi_width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 13500000, ptr %fmt, align 4
  %vbi_height = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %vbi_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vbi_height, align 4
  %count = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %count, align 4
  %17 = load i32, ptr %vbi_height, align 4
  %arrayidx13 = getelementptr %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx13, align 4
  %start = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 21, ptr %start, align 4
  %arrayidx18 = getelementptr %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 284, ptr %arrayidx18, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %reserved, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.169, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dev_state.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %7 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dev_state.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end4.check_dev.exit.thread_crit_edge

do.end4.check_dev.exit.thread_crit_edge:          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_dev.exit.thread

if.end.i:                                         ; preds = %do.end4
  %10 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dev_state.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %if.end7, label %if.end.i.check_dev.exit.thread_crit_edge

if.end.i.check_dev.exit.thread_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_dev.exit.thread

check_dev.exit.thread:                            ; preds = %if.end.i.check_dev.exit.thread_crit_edge, %do.end4.check_dev.exit.thread_crit_edge
  %.str.176.sink.i = phi ptr [ @.str.173, %do.end4.check_dev.exit.thread_crit_edge ], [ @.str.176, %if.end.i.check_dev.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ -19, %do.end4.check_dev.exit.thread_crit_edge ], [ -5, %if.end.i.check_dev.exit.thread_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.176.sink.i) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %num_buffers.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 18, i32 21
  %13 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.169) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1498831189
  br i1 %cmp.not.i, label %if.end.i24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i24:                                       ; preds = %if.end15
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height3.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 720, ptr %fmt.i, align 4
  %18 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 480, ptr %height3.i, align 4
  %19 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1498831189, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1440, ptr %bytesperline.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 691200, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %field.i, align 4
  %width26.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 30
  %24 = ptrtoint ptr %width26.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 720, ptr %width26.i, align 8
  %height27.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 31
  %25 = ptrtoint ptr %height27.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 480, ptr %height27.i, align 4
  %frame_size.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 37
  %26 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 691200, ptr %frame_size.i, align 4
  %field_size.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 36
  %27 = ptrtoint ptr %field_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 345600, ptr %field_size.i, align 8
  %bytesperline32.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 38
  %28 = ptrtoint ptr %bytesperline32.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1440, ptr %bytesperline32.i, align 8
  %stream_state.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 49
  %29 = ptrtoint ptr %stream_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp33.i = icmp eq i32 %30, 2
  br i1 %cmp33.i, label %do.body.i, label %if.end.i24.if.end56.i_crit_edge

if.end.i24.if.end56.i_crit_edge:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

do.body.i:                                        ; preds = %if.end.i24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %31 = load i32, ptr @au0828_debug, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i25 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i25, label %do.body.i.do.end39.i_crit_edge, label %do.end.i

do.body.i.do.end39.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #12
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end.i, %do.body.i.do.end39.i_crit_edge
  %32 = ptrtoint ptr %stream_state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %stream_state.i, align 4
  %33 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %dev_state.i, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %do.end39.i.if.end56.i_crit_edge, label %do.body43.i

do.end39.i.if.end56.i_crit_edge:                  ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

do.body43.i:                                      ; preds = %do.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %36 = load i32, ptr @au0828_debug, align 4
  %and44.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %do.body43.i.cleanup_crit_edge, label %do.end49.i

do.body43.i.cleanup_crit_edge:                    ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end49.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #11
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #12
  br label %cleanup

if.end56.i:                                       ; preds = %do.end39.i.if.end56.i_crit_edge, %if.end.i24.if.end56.i_crit_edge
  tail call fastcc void @au0828_analog_stream_enable(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end56.i, %do.end49.i, %do.body43.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end12, %check_dev.exit.thread
  %retval.0 = phi i32 [ -16, %do.end12 ], [ %retval.0.ph.i, %check_dev.exit.thread ], [ 0, %if.end56.i ], [ -22, %if.end15.cleanup_crit_edge ], [ -19, %do.end49.i ], [ -19, %do.body43.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %2, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.183, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1498831189
  br i1 %cmp.not.i, label %if.end.i, label %do.end4.au0828_set_format.exit_crit_edge

do.end4.au0828_set_format.exit_crit_edge:         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %au0828_set_format.exit

if.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height3.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 720, ptr %fmt.i, align 4
  %10 = ptrtoint ptr %height3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 480, ptr %height3.i, align 4
  %11 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1498831189, ptr %pixelformat.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1440, ptr %bytesperline.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 691200, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %field.i, align 4
  br label %au0828_set_format.exit

au0828_set_format.exit:                           ; preds = %if.end.i, %do.end4.au0828_set_format.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end4.au0828_set_format.exit_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.184, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %std = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %std, align 8
  %9 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.185, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %std = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %norm)
  %cmp = icmp eq i64 %8, %norm
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %streaming_users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %streaming_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp sgt i32 %10, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %11 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %norm, ptr %std, align 8
  tail call fastcc void @au0828_init_tuner(ptr noundef %1)
  %frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end9.i2c_gate_ctrl.exit_crit_edge, label %land.lhs.true.i

if.end9.i2c_gate_ctrl.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

land.lhs.true.i:                                  ; preds = %if.end9
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 33, i32 7
  %14 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, label %if.then.i

land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i53 = tail call i32 %15(ptr noundef nonnull %13, i32 noundef 1) #9
  br label %i2c_gate_ctrl.exit

i2c_gate_ctrl.exit:                               ; preds = %if.then.i, %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, %if.end9.i2c_gate_ctrl.exit_crit_edge
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn62 = load ptr, ptr %subdevs, align 4
  %cmp16.not64 = icmp eq ptr %.pn62, %subdevs
  br i1 %cmp16.not64, label %i2c_gate_ctrl.exit.do.end33_crit_edge, label %i2c_gate_ctrl.exit.for.body_crit_edge

i2c_gate_ctrl.exit.for.body_crit_edge:            ; preds = %i2c_gate_ctrl.exit
  br label %for.body

i2c_gate_ctrl.exit.do.end33_crit_edge:            ; preds = %i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %i2c_gate_ctrl.exit.for.body_crit_edge
  %.pn65 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn62, %i2c_gate_ctrl.exit.for.body_crit_edge ]
  %__sd.066 = getelementptr i8, ptr %.pn65, i32 -80
  %ops = getelementptr i8, ptr %.pn65, i32 24
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %video, align 4
  %tobool17.not = icmp eq ptr %20, null
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_std, align 4
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %land.lhs.true.for.inc_crit_edge, label %if.then21

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 %22(ptr noundef %__sd.066, i64 noundef %norm) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn65, align 4
  %cmp16.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp16.not, label %for.inc.do.end33_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end33_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

do.end33:                                         ; preds = %for.inc.do.end33_crit_edge, %i2c_gate_ctrl.exit.do.end33_crit_edge
  %24 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i55 = icmp eq ptr %25, null
  br i1 %tobool.not.i55, label %do.end33.cleanup_crit_edge, label %land.lhs.true.i58

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i58:                                ; preds = %do.end33
  %i2c_gate_ctrl.i56 = getelementptr inbounds %struct.dvb_frontend, ptr %25, i32 0, i32 1, i32 33, i32 7
  %26 = ptrtoint ptr %i2c_gate_ctrl.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_gate_ctrl.i56, align 4
  %tobool3.not.i57 = icmp eq ptr %27, null
  br i1 %tobool3.not.i57, label %land.lhs.true.i58.cleanup_crit_edge, label %if.then.i60

land.lhs.true.i58.cleanup_crit_edge:              ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i60:                                      ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i59 = tail call i32 %27(ptr noundef nonnull %25, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i60, %land.lhs.true.i58.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end4.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ], [ 0, %do.end33.cleanup_crit_edge ], [ 0, %land.lhs.true.i58.cleanup_crit_edge ], [ 0, %if.then.i60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.192, i32 noundef %4, i32 noundef %6) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ugt i32 %8, 3
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %arrayidx = getelementptr %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 5, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %arrayidx17 = getelementptr [6 x ptr], ptr @vidioc_enum_input.inames, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx17, align 4
  %call18 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %12, i32 noundef 32) #9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %14, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %type30 = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %15 = ptrtoint ptr %type30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type30, align 4
  %. = select i1 %switch, i32 1, i32 2
  %or32 = or i32 %16, %.
  store i32 %or32, ptr %type30, align 4
  %17 = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %., ptr %17, align 8
  %tvnorms = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 16, i32 22
  %19 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 5
  %21 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %do.end5.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.193, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %ctrl_input = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 47
  %7 = ptrtoint ptr %ctrl_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl_input, align 4
  %9 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195, i32 noundef %index) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp ugt i32 %index, 3
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %arrayidx = getelementptr %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 5, i32 %index
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8 = icmp eq i32 %4, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %ctrl_input = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %ctrl_input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrl_input, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %index)
  %cmp11 = icmp eq i32 %6, %index
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @au0828_s_input(ptr noundef %1, i32 noundef %index)
  tail call void @v4l_disable_media_source(ptr noundef %call1) #9
  %call14 = tail call i32 @v4l_enable_media_source(ptr noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -22, %do.end5.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.196) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6 = icmp eq i32 %4, 0
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 1
  %.str.190..str.197 = select i1 %cmp6, ptr @.str.190, ptr @.str.197
  %call11 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %.str.190..str.197, i32 noundef 32) #9
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 2
  %5 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %capability, align 4
  br label %return

return:                                           ; preds = %do.end4, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end4 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_audio(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.198, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %ctrl_ainput = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %ctrl_ainput to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_ainput, align 8
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 1
  %.str.190..str.197 = select i1 %cmp, ptr @.str.190, ptr @.str.197
  %call11 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %.str.190..str.197, i32 noundef 32) #9
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 2
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %capability, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_audio(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  %ctrl_ainput = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %ctrl_ainput to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_ainput, align 8
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp eq i32 %3, %conv
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %6 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %7 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %9 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_state, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.199, i32 noundef %8, i32 noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.200, i32 noundef %4, i32 noundef %6) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %7 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 54, ptr %f, align 4
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 59, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 8
  %width3 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width3, align 4
  %height = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 31
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height5, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #9
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l_enable_media_source(ptr noundef %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %7 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_state, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.201, i32 noundef %6, i32 noundef %8) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call12 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.202, i32 noundef 32) #9
  tail call fastcc void @au0828_init_tuner(ptr noundef %1)
  %frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end11.i2c_gate_ctrl.exit_crit_edge, label %land.lhs.true.i

do.end11.i2c_gate_ctrl.exit_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

land.lhs.true.i:                                  ; preds = %do.end11
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 33, i32 7
  %11 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, label %if.then.i

land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 1) #9
  br label %i2c_gate_ctrl.exit

i2c_gate_ctrl.exit:                               ; preds = %if.then.i, %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, %do.end11.i2c_gate_ctrl.exit_crit_edge
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn65 = load ptr, ptr %subdevs, align 4
  %cmp18.not67 = icmp eq ptr %.pn65, %subdevs
  br i1 %cmp18.not67, label %i2c_gate_ctrl.exit.do.end35_crit_edge, label %i2c_gate_ctrl.exit.for.body_crit_edge

i2c_gate_ctrl.exit.for.body_crit_edge:            ; preds = %i2c_gate_ctrl.exit
  br label %for.body

i2c_gate_ctrl.exit.do.end35_crit_edge:            ; preds = %i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %i2c_gate_ctrl.exit.for.body_crit_edge
  %.pn68 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn65, %i2c_gate_ctrl.exit.for.body_crit_edge ]
  %__sd.069 = getelementptr i8, ptr %.pn68, i32 -80
  %ops = getelementptr i8, ptr %.pn68, i32 24
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tuner, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %g_tuner, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %land.lhs.true.for.inc_crit_edge, label %if.then23

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 %19(ptr noundef %__sd.069, ptr noundef %t) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn68, align 4
  %cmp18.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp18.not, label %for.inc.do.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %i2c_gate_ctrl.exit.do.end35_crit_edge
  %21 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i58 = icmp eq ptr %22, null
  br i1 %tobool.not.i58, label %do.end35.cleanup_crit_edge, label %land.lhs.true.i61

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i61:                                ; preds = %do.end35
  %i2c_gate_ctrl.i59 = getelementptr inbounds %struct.dvb_frontend, ptr %22, i32 0, i32 1, i32 33, i32 7
  %23 = ptrtoint ptr %i2c_gate_ctrl.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl.i59, align 4
  %tobool3.not.i60 = icmp eq ptr %24, null
  br i1 %tobool3.not.i60, label %land.lhs.true.i61.cleanup_crit_edge, label %if.then.i63

land.lhs.true.i61.cleanup_crit_edge:              ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i63:                                      ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = tail call i32 %24(ptr noundef nonnull %22, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i63, %land.lhs.true.i61.cleanup_crit_edge, %do.end35.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %do.end35.cleanup_crit_edge ], [ 0, %land.lhs.true.i61.cleanup_crit_edge ], [ 0, %if.then.i63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %7 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_state, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.203, i32 noundef %6, i32 noundef %8) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  tail call fastcc void @au0828_init_tuner(ptr noundef %1)
  %frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end6.i2c_gate_ctrl.exit_crit_edge, label %land.lhs.true.i

do.end6.i2c_gate_ctrl.exit_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

land.lhs.true.i:                                  ; preds = %do.end6
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 33, i32 7
  %11 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, label %if.then.i

land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i59 = tail call i32 %12(ptr noundef nonnull %10, i32 noundef 1) #9
  br label %i2c_gate_ctrl.exit

i2c_gate_ctrl.exit:                               ; preds = %if.then.i, %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, %do.end6.i2c_gate_ctrl.exit_crit_edge
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn68 = load ptr, ptr %subdevs, align 4
  %cmp12.not70 = icmp eq ptr %.pn68, %subdevs
  br i1 %cmp12.not70, label %i2c_gate_ctrl.exit.do.end29_crit_edge, label %i2c_gate_ctrl.exit.for.body_crit_edge

i2c_gate_ctrl.exit.for.body_crit_edge:            ; preds = %i2c_gate_ctrl.exit
  br label %for.body

i2c_gate_ctrl.exit.do.end29_crit_edge:            ; preds = %i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %i2c_gate_ctrl.exit.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %i2c_gate_ctrl.exit.for.body_crit_edge ]
  %__sd.072 = getelementptr i8, ptr %.pn71, i32 -80
  %ops = getelementptr i8, ptr %.pn71, i32 24
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tuner, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_tuner, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 %19(ptr noundef %__sd.072, ptr noundef %t) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp12.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp12.not, label %for.inc.do.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end29:                                         ; preds = %for.inc.do.end29_crit_edge, %i2c_gate_ctrl.exit.do.end29_crit_edge
  %21 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i61 = icmp eq ptr %22, null
  br i1 %tobool.not.i61, label %do.end29.i2c_gate_ctrl.exit67_crit_edge, label %land.lhs.true.i64

do.end29.i2c_gate_ctrl.exit67_crit_edge:          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit67

land.lhs.true.i64:                                ; preds = %do.end29
  %i2c_gate_ctrl.i62 = getelementptr inbounds %struct.dvb_frontend, ptr %22, i32 0, i32 1, i32 33, i32 7
  %23 = ptrtoint ptr %i2c_gate_ctrl.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl.i62, align 4
  %tobool3.not.i63 = icmp eq ptr %24, null
  br i1 %tobool3.not.i63, label %land.lhs.true.i64.i2c_gate_ctrl.exit67_crit_edge, label %if.then.i66

land.lhs.true.i64.i2c_gate_ctrl.exit67_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit67

if.then.i66:                                      ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #11
  %call.i65 = tail call i32 %24(ptr noundef nonnull %22, i32 noundef 0) #9
  br label %i2c_gate_ctrl.exit67

i2c_gate_ctrl.exit67:                             ; preds = %if.then.i66, %land.lhs.true.i64.i2c_gate_ctrl.exit67_crit_edge, %do.end29.i2c_gate_ctrl.exit67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %25 = load i32, ptr @au0828_debug, align 4
  %and33 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %i2c_gate_ctrl.exit67.cleanup_crit_edge, label %do.end38

i2c_gate_ctrl.exit67.cleanup_crit_edge:           ; preds = %i2c_gate_ctrl.exit67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end38:                                         ; preds = %i2c_gate_ctrl.exit67
  call void @__sanitizer_cov_trace_pc() #11
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 8
  %26 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signal, align 4
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 9
  %28 = ptrtoint ptr %afc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %afc, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef %27, i32 noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %i2c_gate_ctrl.exit67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end38 ], [ 0, %i2c_gate_ctrl.exit67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %7 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_state, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.207, i32 noundef %6, i32 noundef %8) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %ctrl_freq = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %ctrl_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl_freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %freq, i32 0, i32 2
  %11 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %freq) #0 align 64 {
entry:
  %new_freq = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %new_freq) #9
  %2 = call ptr @memcpy(ptr %new_freq, ptr %freq, i32 44)
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %5 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_state, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.208, i32 noundef %7, i32 noundef %9) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  tail call fastcc void @au0828_init_tuner(ptr noundef %1)
  %frontend.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end6.i2c_gate_ctrl.exit_crit_edge, label %land.lhs.true.i

do.end6.i2c_gate_ctrl.exit_crit_edge:             ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

land.lhs.true.i:                                  ; preds = %do.end6
  %i2c_gate_ctrl.i = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 1, i32 33, i32 7
  %12 = ptrtoint ptr %i2c_gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, label %if.then.i

land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i100 = tail call i32 %13(ptr noundef nonnull %11, i32 noundef 1) #9
  br label %i2c_gate_ctrl.exit

i2c_gate_ctrl.exit:                               ; preds = %if.then.i, %land.lhs.true.i.i2c_gate_ctrl.exit_crit_edge, %do.end6.i2c_gate_ctrl.exit_crit_edge
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn109 = load ptr, ptr %subdevs, align 4
  %cmp12.not111 = icmp eq ptr %.pn109, %subdevs
  br i1 %cmp12.not111, label %i2c_gate_ctrl.exit.for.cond42.preheader_crit_edge, label %i2c_gate_ctrl.exit.for.body_crit_edge

i2c_gate_ctrl.exit.for.body_crit_edge:            ; preds = %i2c_gate_ctrl.exit
  br label %for.body

i2c_gate_ctrl.exit.for.cond42.preheader_crit_edge: ; preds = %i2c_gate_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.inc.for.cond42.preheader_crit_edge, %i2c_gate_ctrl.exit.for.cond42.preheader_crit_edge
  %15 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn99114 = load ptr, ptr %subdevs, align 4
  %cmp46.not116 = icmp eq ptr %.pn99114, %subdevs
  br i1 %cmp46.not116, label %for.cond42.preheader.do.end70_crit_edge, label %for.cond42.preheader.for.body48_crit_edge

for.cond42.preheader.for.body48_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body48

for.cond42.preheader.do.end70_crit_edge:          ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %i2c_gate_ctrl.exit.for.body_crit_edge
  %.pn112 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn109, %i2c_gate_ctrl.exit.for.body_crit_edge ]
  %__sd.0113 = getelementptr i8, ptr %.pn112, i32 -80
  %ops = getelementptr i8, ptr %.pn112, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %tuner13 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tuner13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner13, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_frequency, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 %21(ptr noundef %__sd.0113, ptr noundef %freq) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn112, align 4
  %cmp12.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp12.not, label %for.inc.for.cond42.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond42.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond42.preheader

for.body48:                                       ; preds = %for.inc62.for.body48_crit_edge, %for.cond42.preheader.for.body48_crit_edge
  %.pn99117 = phi ptr [ %.pn99, %for.inc62.for.body48_crit_edge ], [ %.pn99114, %for.cond42.preheader.for.body48_crit_edge ]
  %__sd34.0118 = getelementptr i8, ptr %.pn99117, i32 -80
  %ops49 = getelementptr i8, ptr %.pn99117, i32 24
  %23 = ptrtoint ptr %ops49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops49, align 4
  %tuner50 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %tuner50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tuner50, align 4
  %tobool51.not = icmp eq ptr %26, null
  br i1 %tobool51.not, label %for.body48.for.inc62_crit_edge, label %land.lhs.true52

for.body48.for.inc62_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

land.lhs.true52:                                  ; preds = %for.body48
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %g_frequency, align 4
  %tobool55.not = icmp eq ptr %28, null
  br i1 %tobool55.not, label %land.lhs.true52.for.inc62_crit_edge, label %if.then56

land.lhs.true52.for.inc62_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

if.then56:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = call i32 %28(ptr noundef %__sd34.0118, ptr noundef nonnull %new_freq) #9
  br label %for.inc62

for.inc62:                                        ; preds = %if.then56, %land.lhs.true52.for.inc62_crit_edge, %for.body48.for.inc62_crit_edge
  %29 = ptrtoint ptr %.pn99117 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn99 = load ptr, ptr %.pn99117, align 4
  %cmp46.not = icmp eq ptr %.pn99, %subdevs
  br i1 %cmp46.not, label %for.inc62.do.end70_crit_edge, label %for.inc62.for.body48_crit_edge

for.inc62.for.body48_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body48

for.inc62.do.end70_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70

do.end70:                                         ; preds = %for.inc62.do.end70_crit_edge, %for.cond42.preheader.do.end70_crit_edge
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %new_freq, i32 0, i32 2
  %30 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frequency, align 4
  %ctrl_freq = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 44
  %32 = ptrtoint ptr %ctrl_freq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ctrl_freq, align 8
  %33 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %frontend.i, align 4
  %tobool.not.i102 = icmp eq ptr %34, null
  br i1 %tobool.not.i102, label %do.end70.i2c_gate_ctrl.exit108_crit_edge, label %land.lhs.true.i105

do.end70.i2c_gate_ctrl.exit108_crit_edge:         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit108

land.lhs.true.i105:                               ; preds = %do.end70
  %i2c_gate_ctrl.i103 = getelementptr inbounds %struct.dvb_frontend, ptr %34, i32 0, i32 1, i32 33, i32 7
  %35 = ptrtoint ptr %i2c_gate_ctrl.i103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_gate_ctrl.i103, align 4
  %tobool3.not.i104 = icmp eq ptr %36, null
  br i1 %tobool3.not.i104, label %land.lhs.true.i105.i2c_gate_ctrl.exit108_crit_edge, label %if.then.i107

land.lhs.true.i105.i2c_gate_ctrl.exit108_crit_edge: ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_gate_ctrl.exit108

if.then.i107:                                     ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #11
  %call.i106 = call i32 %36(ptr noundef nonnull %34, i32 noundef 0) #9
  br label %i2c_gate_ctrl.exit108

i2c_gate_ctrl.exit108:                            ; preds = %if.then.i107, %land.lhs.true.i105.i2c_gate_ctrl.exit108_crit_edge, %do.end70.i2c_gate_ctrl.exit108_crit_edge
  call fastcc void @au0828_analog_stream_reset(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %i2c_gate_ctrl.exit108, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %i2c_gate_ctrl.exit108 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %new_freq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr noundef %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.209) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @v4l2_ctrl_log_status(ptr noundef %file, ptr noundef %fh) #9
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v4l2_dev, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn38 = load ptr, ptr %subdevs, align 4
  %cmp.not41 = icmp eq ptr %.pn38, %subdevs
  br i1 %cmp.not41, label %do.end4.do.end27_crit_edge, label %do.end4.for.body_crit_edge

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

do.end4.do.end27_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end4.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn38, %do.end4.for.body_crit_edge ]
  %__sd.043 = getelementptr i8, ptr %.pn42, i32 -80
  %ops = getelementptr i8, ptr %.pn42, i32 24
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %land.lhs.true.for.inc_crit_edge, label %if.then15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 %9(ptr noundef %__sd.043) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn42, align 4
  %11 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l2_dev, align 4
  %subdevs10 = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %subdevs10
  br i1 %cmp.not, label %for.inc.do.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end27:                                         ; preds = %for.inc.do.end27_crit_edge, %do.end4.do.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.210, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %reg5 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %7 = ptrtoint ptr %reg5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %reg5, align 1
  %conv = trunc i64 %8 to i16
  %call6 = tail call i32 @au0828_readreg(ptr noundef %1, i16 noundef zeroext %conv) #9
  %conv7 = zext i32 %call6 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %conv7, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %std_set_in_tuner_core = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %std_set_in_tuner_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %std_set_in_tuner_core, align 8
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_state, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.211, i32 noundef %4, i32 noundef %6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %reg5 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %7 = ptrtoint ptr %reg5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %reg5, align 1
  %conv = trunc i64 %8 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %val, align 1
  %conv6 = trunc i64 %10 to i32
  %call7 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext %conv, i32 noundef %conv6) #9
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_disable_media_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_readreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %height = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %bytesperline = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytesperline, align 8
  %mul = mul i32 %5, %3
  %6 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul)
  %cmp = icmp ult i32 %9, %mul
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %nplanes, align 4
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %height = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %bytesperline = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 38
  %6 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytesperline, align 8
  %mul = mul i32 %7, %5
  %length = getelementptr inbounds %struct.au0828_buffer, ptr %vb, i32 0, i32 3
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %length, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not = icmp eq i32 %mul, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit27_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit27_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit27

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %cmp33 = icmp ult i32 %12, %mul
  br i1 %cmp33, label %vb2_plane_size.exit.thread.vb2_plane_size.exit27_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit27_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit27

vb2_plane_size.exit27:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit27_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit27_crit_edge
  %retval.0.i26 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit27_crit_edge ], [ %12, %vb2_plane_size.exit.thread.vb2_plane_size.exit27_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef %retval.0.i26, i32 noundef %mul) #12
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit27, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit27 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vidq1 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %streaming_users = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %3 = ptrtoint ptr %streaming_users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %streaming_users, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, i32 noundef %4) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %streaming_users6 = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %streaming_users6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %streaming_users6, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %streaming_users6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then7, label %do.end5.if.end33_crit_edge

do.end5.if.end33_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then7:                                         ; preds = %do.end5
  tail call fastcc void @au0828_uninit_isoc(ptr noundef %1)
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn87 = load ptr, ptr %subdevs, align 4
  %cmp13.not89 = icmp eq ptr %.pn87, %subdevs
  br i1 %cmp13.not89, label %if.then7.if.end33_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.if.end33_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then7.for.body_crit_edge
  %.pn90 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn87, %if.then7.for.body_crit_edge ]
  %__sd.091 = getelementptr i8, ptr %.pn90, i32 -80
  %ops = getelementptr i8, ptr %.pn90, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_stream, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 %13(ptr noundef %__sd.091, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp13.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp13.not, label %for.inc.if.end33_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end33_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end33:                                         ; preds = %for.inc.if.end33_crit_edge, %if.then7.if.end33_crit_edge, %do.end5.if.end33_crit_edge
  %vid_timeout_running = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %vid_timeout_running to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %vid_timeout_running, align 8
  %vid_timeout = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 24
  %call34 = tail call i32 @del_timer_sync(ptr noundef %vid_timeout) #9
  %slock = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 55
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %buf = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 54, i32 11
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %cmp45.not = icmp eq ptr %17, null
  br i1 %cmp45.not, label %if.end33.if.end52_crit_edge, label %if.then47

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then47:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %17, i32 noundef 6) #9
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %buf, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end33.if.end52_crit_edge
  %19 = ptrtoint ptr %vidq1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vidq1, align 4
  %cmp.i.not92 = icmp eq ptr %20, %vidq1
  br i1 %cmp.i.not92, label %if.end52.while.end_crit_edge, label %if.end52.while.body_crit_edge

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  br label %while.body

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end52.while.body_crit_edge
  %21 = phi ptr [ %31, %list_del.exit.while.body_crit_edge ], [ %20, %if.end52.while.body_crit_edge ]
  %add.ptr61 = getelementptr i8, ptr %21, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %add.ptr61, i32 noundef 6) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %30 = ptrtoint ptr %vidq1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %vidq1, align 4
  %cmp.i.not = icmp eq ptr %31, %vidq1
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end52.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call40) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %vidq4 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 52
  %call5 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #9
  %mem = getelementptr inbounds %struct.au0828_buffer, ptr %vb, i32 0, i32 2
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %mem, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %5 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  %length = getelementptr inbounds %struct.au0828_buffer, ptr %vb, i32 0, i32 3
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %length, align 4
  %slock = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 55
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %list = getelementptr inbounds %struct.au0828_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 52, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %11, ptr noundef %vidq4) #9
  br i1 %call.i.i, label %if.end.i.i, label %vb2_plane_size.exit.list_add_tail.exit_crit_edge

vb2_plane_size.exit.list_add_tail.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vidq4, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.au0828_buffer, ptr %vb, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %vb2_plane_size.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call10) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !281, !283, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !302, !303, !304, !306, !308, !310, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !334, !336, !337, !338, !340, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !363, !365, !367, !369, !371, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !386, !388, !389, !390, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !442, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !461, !462, !463, !464, !466, !467, !469, !470, !471}
!llvm.module.flags = !{!472, !473, !474, !475, !476, !477, !478, !479}
!llvm.ident = !{!480}

!0 = !{ptr @__param_isoc_debug, !1, !"__param_isoc_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_isoc_debugtype388, !1, !"__UNIQUE_ID_isoc_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_isoc_debug389, !4, !"__UNIQUE_ID_isoc_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 38, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 663, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @au0828_v4l2_device_register._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @au0828_v4l2_device_register._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @au0828_v4l2_device_register._key, !12, !"_key", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 671, i32 11}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 673, i32 3}
!16 = !{ptr @au0828_v4l2_device_register._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @au0828_v4l2_device_register._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 816, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @au0828_start_analog_streaming._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @au0828_start_analog_streaming._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 831, i32 4}
!25 = !{ptr @au0828_start_analog_streaming._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @au0828_start_analog_streaming._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 887, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @au0828_stop_vbi_streaming._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @au0828_stop_vbi_streaming._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 933, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @au0828_analog_unregister._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @au0828_analog_unregister._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1683, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @au0828_v4l2_suspend._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @au0828_v4l2_suspend._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1686, i32 3}
!44 = !{ptr @au0828_v4l2_suspend._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @au0828_v4l2_suspend._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1710, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @au0828_v4l2_resume._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @au0828_v4l2_resume._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1733, i32 5}
!53 = !{ptr @au0828_v4l2_resume._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @au0828_v4l2_resume._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1909, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @au0828_analog_register._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @au0828_analog_register._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1920, i32 3}
!62 = !{ptr @au0828_analog_register._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @au0828_analog_register._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1938, i32 4}
!66 = !{ptr @au0828_analog_register._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @au0828_analog_register._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1944, i32 3}
!70 = !{ptr @au0828_analog_register._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @au0828_analog_register._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @au0828_analog_register.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1948, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @au0828_analog_register.__key.38, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1949, i32 2}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @au0828_analog_register.__key.40, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1955, i32 2}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @au0828_analog_register.__key.42, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1956, i32 2}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @au0828_analog_register.__key.44, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1971, i32 2}
!86 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @au0828_analog_register.__key.46, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1972, i32 2}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1983, i32 26}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1994, i32 29}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 2002, i32 3}
!96 = !{ptr @au0828_analog_register._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @au0828_analog_register._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 2011, i32 3}
!100 = !{ptr @au0828_analog_register._entry.53, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @au0828_analog_register._entry_ptr.55, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 2020, i32 3}
!104 = !{ptr @au0828_analog_register._entry.56, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @au0828_analog_register._entry_ptr.58, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 2029, i32 3}
!108 = !{ptr @au0828_analog_register._entry.59, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @au0828_analog_register._entry_ptr.61, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 2036, i32 2}
!112 = !{ptr @au0828_analog_register._entry.62, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @au0828_analog_register._entry_ptr.64, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @isoc_debug, !115, !"isoc_debug", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 36, i32 21}
!116 = !{ptr @__param_str_isoc_debug, !1, !"__param_str_isoc_debug", i1 false, i1 false}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 206, i32 2}
!119 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @au0828_init_isoc._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @au0828_init_isoc._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 213, i32 3}
!124 = !{ptr @au0828_init_isoc._entry.67, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @au0828_init_isoc._entry_ptr.69, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 220, i32 3}
!128 = !{ptr @au0828_init_isoc._entry.70, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @au0828_init_isoc._entry_ptr.72, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.74, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 234, i32 4}
!132 = !{ptr @au0828_init_isoc._entry.73, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @au0828_init_isoc._entry_ptr.75, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 243, i32 4}
!136 = !{ptr @au0828_init_isoc._entry.76, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @au0828_init_isoc._entry_ptr.78, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @au0828_init_isoc._entry.79, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 272, i32 4}
!140 = !{ptr @au0828_init_isoc._entry_ptr.80, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 124, i32 3}
!143 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @au0828_irq_callback._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @au0828_irq_callback._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.84, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 127, i32 3}
!148 = !{ptr @au0828_irq_callback._entry.83, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @au0828_irq_callback._entry_ptr.85, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 145, i32 3}
!152 = !{ptr @au0828_irq_callback._entry.86, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @au0828_irq_callback._entry_ptr.88, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.89, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 538, i32 4}
!156 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @au0828_isoc_copy._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @au0828_isoc_copy._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.92, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 550, i32 4}
!161 = !{ptr @au0828_isoc_copy._entry.91, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @au0828_isoc_copy._entry_ptr.93, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.94, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.95, !160, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.96, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 57, i32 17}
!167 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 61, i32 12}
!169 = !{ptr @.str.98, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 64, i32 12}
!171 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 67, i32 12}
!173 = !{ptr @.str.100, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 70, i32 12}
!175 = !{ptr @.str.101, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 73, i32 12}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 76, i32 12}
!179 = !{ptr @.str.103, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 79, i32 12}
!181 = !{ptr @.str.104, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 82, i32 12}
!183 = !{ptr @.str.105, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 86, i32 3}
!185 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @print_err_status._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @print_err_status._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.108, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 88, i32 3}
!190 = !{ptr @print_err_status._entry.107, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @print_err_status._entry_ptr.109, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.110, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 293, i32 2}
!194 = !{ptr @.str.111, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @buffer_filled._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @buffer_filled._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 470, i32 3}
!199 = !{ptr @.str.113, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @vbi_get_next_buf._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @vbi_get_next_buf._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 395, i32 3}
!204 = !{ptr @get_next_buf._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @get_next_buf._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.115, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 423, i32 3}
!208 = !{ptr @.str.116, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @au0828_copy_vbi._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @au0828_copy_vbi._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 428, i32 3}
!213 = !{ptr @au0828_copy_vbi._entry.117, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @au0828_copy_vbi._entry_ptr.119, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.121, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 434, i32 3}
!217 = !{ptr @au0828_copy_vbi._entry.120, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @au0828_copy_vbi._entry_ptr.122, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 438, i32 3}
!221 = !{ptr @au0828_copy_vbi._entry.123, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @au0828_copy_vbi._entry_ptr.125, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.126, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 341, i32 3}
!225 = !{ptr @.str.127, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @au0828_copy_video._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @au0828_copy_video._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.129, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 363, i32 4}
!230 = !{ptr @au0828_copy_video._entry.128, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @au0828_copy_video._entry_ptr.130, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.131, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 159, i32 2}
!234 = !{ptr @.str.132, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @au0828_uninit_isoc._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @au0828_uninit_isoc._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.133, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 30, i32 8}
!239 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @au0828_sysfs_lock, !238, !"au0828_sysfs_lock", i1 false, i1 false}
!241 = !{ptr @.str.135, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 787, i32 2}
!243 = !{ptr @.str.136, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @au0828_analog_stream_disable._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @au0828_analog_stream_disable._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.137, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1115, i32 2}
!248 = !{ptr @.str.138, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @au0828_init_tuner._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @au0828_init_tuner._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.139, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 749, i32 2}
!253 = !{ptr @.str.140, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @au0828_analog_stream_enable._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @au0828_analog_stream_enable._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.142, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 756, i32 3}
!258 = !{ptr @au0828_analog_stream_enable._entry.141, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @au0828_analog_stream_enable._entry_ptr.143, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.145, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 760, i32 4}
!262 = !{ptr @au0828_analog_stream_enable._entry.144, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @au0828_analog_stream_enable._entry_ptr.146, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.147, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 794, i32 2}
!266 = !{ptr @.str.148, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @au0828_analog_stream_reset._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @au0828_analog_stream_reset._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.149, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1365, i32 2}
!271 = !{ptr @au0828_s_input._entry, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @au0828_s_input._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.151, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1382, i32 3}
!275 = !{ptr @au0828_s_input._entry.150, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @au0828_s_input._entry_ptr.152, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @au0828_video_template, !278, !"au0828_video_template", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1796, i32 34}
!279 = !{ptr @au0828_v4l_fops, !280, !"au0828_v4l_fops", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1741, i32 42}
!281 = !{ptr @.str.153, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1005, i32 2}
!283 = !{ptr @.str.154, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @au0828_v4l2_open._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @au0828_v4l2_open._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.156, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1015, i32 3}
!288 = !{ptr @au0828_v4l2_open._entry.155, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @au0828_v4l2_open._entry_ptr.157, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.158, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1038, i32 2}
!292 = !{ptr @au0828_v4l2_close._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @au0828_v4l2_close._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.160, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1098, i32 4}
!296 = !{ptr @au0828_v4l2_close._entry.159, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @au0828_v4l2_close._entry_ptr.161, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @video_ioctl_ops, !299, !"video_ioctl_ops", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1751, i32 36}
!300 = !{ptr @.str.162, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1185, i32 2}
!302 = !{ptr @vidioc_querycap._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @vidioc_querycap._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.163, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1188, i32 23}
!306 = !{ptr @.str.164, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../include/linux/usb.h", i32 912, i32 31}
!308 = !{ptr @.str.165, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1206, i32 2}
!310 = !{ptr @.str.166, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @vidioc_enum_fmt_vid_cap._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @vidioc_enum_fmt_vid_cap._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.167, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1218, i32 2}
!315 = !{ptr @vidioc_g_fmt_vid_cap._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @vidioc_g_fmt_vid_cap._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1584, i32 2}
!319 = !{ptr @vidioc_g_fmt_vbi_cap._entry, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @vidioc_g_fmt_vbi_cap._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.169, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1248, i32 2}
!323 = !{ptr @vidioc_s_fmt_vid_cap._entry, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.171, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1256, i32 3}
!327 = !{ptr @vidioc_s_fmt_vid_cap._entry.170, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr.172, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.173, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 96, i32 3}
!331 = !{ptr @.str.174, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @check_dev._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @check_dev._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.176, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 101, i32 3}
!336 = !{ptr @check_dev._entry.175, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @check_dev._entry_ptr.177, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.178, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1167, i32 3}
!340 = !{ptr @.str.179, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @au0828_set_format._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @au0828_set_format._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.181, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1170, i32 4}
!345 = !{ptr @au0828_set_format._entry.180, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @au0828_set_format._entry_ptr.182, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.183, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1236, i32 2}
!349 = !{ptr @vidioc_try_fmt_vid_cap._entry, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.184, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1302, i32 2}
!353 = !{ptr @vidioc_g_std._entry, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @vidioc_g_std._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.185, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1270, i32 2}
!357 = !{ptr @vidioc_s_std._entry, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @vidioc_s_std._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.186, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1316, i32 29}
!361 = !{ptr @.str.187, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1317, i32 29}
!363 = !{ptr @.str.188, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1318, i32 26}
!365 = !{ptr @.str.189, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1319, i32 25}
!367 = !{ptr @.str.190, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1320, i32 30}
!369 = !{ptr @.str.191, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1321, i32 23}
!371 = !{ptr @vidioc_enum_input.inames, !372, !"inames", i1 false, i1 false}
!372 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1315, i32 21}
!373 = !{ptr @.str.192, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1324, i32 2}
!375 = !{ptr @vidioc_enum_input._entry, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @vidioc_enum_input._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.193, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1354, i32 2}
!379 = !{ptr @vidioc_g_input._entry, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @vidioc_g_input._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.194, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1422, i32 2}
!383 = !{ptr @.str.195, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @vidioc_s_input._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @vidioc_s_input._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.196, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1448, i32 2}
!388 = !{ptr @vidioc_enumaudio._entry, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @vidioc_enumaudio._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.197, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1453, i32 20}
!392 = !{ptr @.str.198, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1463, i32 2}
!394 = !{ptr @vidioc_g_audio._entry, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @vidioc_g_audio._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.199, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1483, i32 2}
!398 = !{ptr @vidioc_s_audio._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @vidioc_s_audio._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.200, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1610, i32 2}
!402 = !{ptr @vidioc_g_pixelaspect._entry, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @vidioc_g_pixelaspect._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.201, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1501, i32 2}
!406 = !{ptr @vidioc_g_tuner._entry, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @vidioc_g_tuner._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.202, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1504, i32 19}
!410 = !{ptr @.str.203, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1521, i32 2}
!412 = !{ptr @vidioc_s_tuner._entry, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @vidioc_s_tuner._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.205, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1529, i32 2}
!416 = !{ptr @vidioc_s_tuner._entry.204, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @vidioc_s_tuner._entry_ptr.206, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.207, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1543, i32 2}
!420 = !{ptr @vidioc_g_frequency._entry, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @vidioc_g_frequency._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.208, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1558, i32 2}
!424 = !{ptr @vidioc_s_frequency._entry, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @vidioc_s_frequency._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.209, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1671, i32 2}
!428 = !{ptr @vidioc_log_status._entry, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @vidioc_log_status._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.210, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1647, i32 2}
!432 = !{ptr @vidioc_g_register._entry, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @vidioc_g_register._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.211, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1660, i32 2}
!436 = !{ptr @vidioc_s_register._entry, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @vidioc_s_register._entry_ptr, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @au0828_analog_create_entities.inames, !439, !"inames", i1 false, i1 false}
!439 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1842, i32 28}
!440 = !{ptr @.str.212, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1855, i32 3}
!442 = !{ptr @.str.213, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @au0828_analog_create_entities._entry, !441, !"_entry", i1 false, i1 false}
!444 = !{ptr @au0828_analog_create_entities._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.215, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1860, i32 3}
!447 = !{ptr @au0828_analog_create_entities._entry.214, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @au0828_analog_create_entities._entry_ptr.216, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.218, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1890, i32 4}
!451 = !{ptr @au0828_analog_create_entities._entry.217, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @au0828_analog_create_entities._entry_ptr.219, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.221, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 1894, i32 4}
!455 = !{ptr @au0828_analog_create_entities._entry.220, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @au0828_analog_create_entities._entry_ptr.222, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @au0828_video_qops, !458, !"au0828_video_qops", i1 false, i1 false}
!458 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 914, i32 29}
!459 = !{ptr @.str.223, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 707, i32 3}
!461 = !{ptr @.str.224, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @buffer_prepare._entry, !460, !"_entry", i1 false, i1 false}
!463 = !{ptr @buffer_prepare._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!464 = distinct !{null, !465, !"__already_done", i1 false, i1 false}
!465 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!466 = distinct !{null, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.226, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/media/usb/au0828/au0828-video.c", i32 855, i32 2}
!469 = !{ptr @.str.227, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @au0828_stop_streaming._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @au0828_stop_streaming._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{i32 1, !"wchar_size", i32 2}
!473 = !{i32 1, !"min_enum_size", i32 4}
!474 = !{i32 8, !"branch-target-enforcement", i32 0}
!475 = !{i32 8, !"sign-return-address", i32 0}
!476 = !{i32 8, !"sign-return-address-all", i32 0}
!477 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!478 = !{i32 7, !"uwtable", i32 1}
!479 = !{i32 7, !"frame-pointer", i32 2}
!480 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!481 = !{i64 619600}
