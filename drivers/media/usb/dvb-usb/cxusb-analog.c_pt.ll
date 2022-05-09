; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/cxusb-analog.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/cxusb-analog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_io_pin_config = type { i32, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.169 = type { %struct.v4l2_input, i32 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.166, i16, i16, i16, [10 x i16] }
%union.anon.166 = type { i16 }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.113, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.110 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32 }
%struct.anon.113 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.cxusb_medion_dev = type { %struct.cxusb_state, ptr, i32, i32, %struct.mutex, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.vb2_queue, i32, i8, i32, i32, i32, %struct.cxusb_medion_auxbuf, i64, [5 x ptr], i32, %struct.work_struct, i32, %struct.cxusb_bt656_params, ptr, i32, %struct.list_head, %struct.completion }
%struct.cxusb_state = type { [3 x i8], [3 x i8], ptr, ptr, [80 x i8], %struct.mutex, i8, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cxusb_medion_auxbuf = type { ptr, i32, i32 }
%struct.cxusb_bt656_params = type { i32, i32, i32, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.108 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i32, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.105], %struct.media_entity_enum, i32 }
%struct.anon.105 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.120, i32 }
%union.anon.120 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.cxusb_medion_vbuffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.145 }
%union.anon.145 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.147, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.147 = type { i8 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@cxusb_medion_analog_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1474, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tuner analog switch failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxusb_medion_analog_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/dvb-usb/cxusb-analog.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxusb_medion_analog_init._entry_ptr = internal global ptr @cxusb_medion_analog_init._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cxusb_medion_analog_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1483, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx25840 reset failed (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@cxusb_medion_analog_init._entry_ptr.7 = internal global ptr @cxusb_medion_analog_init._entry.5, section ".printk_index", align 4
@cxusb_medion_analog_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cx25840 initial input setting failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@cxusb_medion_analog_init._entry_ptr.10 = internal global ptr @cxusb_medion_analog_init._entry.8, section ".printk_index", align 4
@cxusub_medion_pin_config = internal global { [3 x %struct.v4l2_subdev_io_pin_config], [40 x i8] } { [3 x %struct.v4l2_subdev_io_pin_config] [%struct.v4l2_subdev_io_pin_config zeroinitializer, %struct.v4l2_subdev_io_pin_config { i32 0, i8 11, i8 17, i8 0, i8 0 }, %struct.v4l2_subdev_io_pin_config { i32 0, i8 2, i8 1, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@cxusb_medion_analog_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1503, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cx25840 pin config failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cxusb_medion_analog_init._entry_ptr.13 = internal global ptr @cxusb_medion_analog_init._entry.11, section ".printk_index", align 4
@cxusb_medion_analog_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cx25840 format set failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cxusb_medion_analog_init._entry_ptr.16 = internal global ptr @cxusb_medion_analog_init._entry.14, section ".printk_index", align 4
@cxusb_medion_register_analog.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cxdev->dev_lock\00", [47 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1790, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"V4L2 device registration failed, ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxusb_medion_register_analog\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog._entry_ptr = internal global ptr @cxusb_medion_register_analog._entry, section ".printk_index", align 4
@cxusb_medion_register_analog.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&cxdev->urbwork)\00", [61 x i8] zeroinitializer }, align 32
@dvb_usb_cxusb_debug = external dso_local local_unnamed_addr global i32, align 4
@cxusb_medion_unregister_analog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: unregistering analog\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_medion_unregister_analog\00", [33 x i8] zeroinitializer }, align 32
@cxusb_medion_unregister_analog._entry_ptr = internal global ptr @cxusb_medion_unregister_analog._entry, section ".printk_index", align 4
@cxusb_medion_unregister_analog._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: analog unregistered\0A\00", [37 x i8] zeroinitializer }, align 32
@cxusb_medion_unregister_analog._entry_ptr.27 = internal global ptr @cxusb_medion_unregister_analog._entry.25, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cxusb_medion_v4l2_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: v4l2 device release\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxusb_medion_v4l2_release\00", [38 x i8] zeroinitializer }, align 32
@cxusb_medion_v4l2_release._entry_ptr = internal global ptr @cxusb_medion_v4l2_release._entry, section ".printk_index", align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx25840\00", [24 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1720, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx25840 not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cxusb_medion_register_analog_subdevs\00", [59 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_subdevs._entry_ptr = internal global ptr @cxusb_medion_register_analog_subdevs._entry, section ".printk_index", align 4
@cxusb_medion_register_analog_subdevs._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1744, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx25840 init failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_subdevs._entry_ptr.36 = internal global ptr @cxusb_medion_register_analog_subdevs._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_subdevs._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.2, i32 1753, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tuner not found\0A\00", [47 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_subdevs._entry_ptr.40 = internal global ptr @cxusb_medion_register_analog_subdevs._entry.38, section ".printk_index", align 4
@cxusb_medion_register_analog_subdevs._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.2, i32 1769, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda9887 not found\0A\00", [45 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_subdevs._entry_ptr.43 = internal global ptr @cxusb_medion_register_analog_subdevs._entry.41, section ".printk_index", align 4
@cxusb_medion_v_complete_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: worker called, stop_streaming = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxusb_medion_v_complete_work\00", [35 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete_work._entry_ptr = internal global ptr @cxusb_medion_v_complete_work._entry, section ".printk_index", align 4
@cxusb_medion_v_complete_work._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: rescheduling worker\0A\00", [37 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete_work._entry_ptr.48 = internal global ptr @cxusb_medion_v_complete_work._entry.46, section ".printk_index", align 4
@cxusb_medion_v_complete_handle_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: URB %u status = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cxusb_medion_v_complete_handle_urb\00", [61 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete_handle_urb._entry_ptr = internal global ptr @cxusb_medion_v_complete_handle_urb._entry, section ".printk_index", align 4
@cxusb_medion_v_complete_handle_urb._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: URB %u data len = %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete_handle_urb._entry_ptr.53 = internal global ptr @cxusb_medion_v_complete_handle_urb._entry.51, section ".printk_index", align 4
@cxusb_medion_v_complete_handle_urb._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: appending URB\0A\00", [43 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete_handle_urb._entry_ptr.56 = internal global ptr @cxusb_medion_v_complete_handle_urb._entry.54, section ".printk_index", align 4
@cxusb_medion_v_complete_handle_urb._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: URB %u resubmit\0A\00", [41 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete_handle_urb._entry_ptr.59 = internal global ptr @cxusb_medion_v_complete_handle_urb._entry.57, section ".printk_index", align 4
@cxusb_medion_v_complete_handle_urb._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.2, i32 592, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"unable to resubmit URB %u (%d), you'll have to restart streaming\0A\00", [62 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete_handle_urb._entry_ptr.62 = internal global ptr @cxusb_medion_v_complete_handle_urb._entry.60, section ".printk_index", align 4
@cxusb_auxbuf_make_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: freespace is %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxusb_auxbuf_make_space\00", [40 x i8] zeroinitializer }, align 32
@cxusb_auxbuf_make_space._entry_ptr = internal global ptr @cxusb_auxbuf_make_space._entry, section ".printk_index", align 4
@cxusb_auxbuf_make_space._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: will overwrite %u bytes of buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@cxusb_auxbuf_make_space._entry_ptr.67 = internal global ptr @cxusb_auxbuf_make_space._entry.65, section ".printk_index", align 4
@cxusb_auxbuf_head_trim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: trimming auxbuf len by %u to %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxusb_auxbuf_head_trim\00", [41 x i8] zeroinitializer }, align 32
@cxusb_auxbuf_head_trim._entry_ptr = internal global ptr @cxusb_auxbuf_head_trim._entry, section ".printk_index", align 4
@cxusb_medion_v_process_auxbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no free buffers\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxusb_medion_v_process_auxbuf\00", [34 x i8] zeroinitializer }, align 32
@cxusb_medion_v_process_auxbuf._entry_ptr = internal global ptr @cxusb_medion_v_process_auxbuf._entry, section ".printk_index", align 4
@cxusb_medion_v_process_auxbuf._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: will copy field 1\0A\00", [39 x i8] zeroinitializer }, align 32
@cxusb_medion_v_process_auxbuf._entry_ptr.74 = internal global ptr @cxusb_medion_v_process_auxbuf._entry.72, section ".printk_index", align 4
@cxusb_medion_v_process_auxbuf._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: will copy field 2\0A\00", [39 x i8] zeroinitializer }, align 32
@cxusb_medion_v_process_auxbuf._entry_ptr.77 = internal global ptr @cxusb_medion_v_process_auxbuf._entry.75, section ".printk_index", align 4
@cxusb_medion_v_process_auxbuf._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: frame done\0A\00", [46 x i8] zeroinitializer }, align 32
@cxusb_medion_v_process_auxbuf._entry_ptr.80 = internal global ptr @cxusb_medion_v_process_auxbuf._entry.78, section ".printk_index", align 4
@cxusb_medion_v_process_auxbuf._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.71, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: frame skipped\0A\00", [43 x i8] zeroinitializer }, align 32
@cxusb_medion_v_process_auxbuf._entry_ptr.83 = internal global ptr @cxusb_medion_v_process_auxbuf._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\FF\00\00\00", [28 x i8] zeroinitializer }, align 32
@cxusb_medion_copy_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: end of buffer pos = %u, line = %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxusb_medion_copy_field\00", [40 x i8] zeroinitializer }, align 32
@cxusb_medion_copy_field._entry_ptr = internal global ptr @cxusb_medion_copy_field._entry, section ".printk_index", align 4
@cxusb_medion_cf_refc_fld_chg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: field %c after line %u field change\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxusb_medion_cf_refc_fld_chg\00", [35 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_fld_chg._entry_ptr = internal global ptr @cxusb_medion_cf_refc_fld_chg._entry, section ".printk_index", align 4
@cxusb_medion_cf_refc_fld_chg._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: field %c line %u %u samples still remaining (of %u)\0A\00", [37 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_fld_chg._entry_ptr.91 = internal global ptr @cxusb_medion_cf_refc_fld_chg._entry.89, section ".printk_index", align 4
@cxusb_medion_cf_refc_fld_chg._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: field %c %u lines still remaining (of %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_fld_chg._entry_ptr.94 = internal global ptr @cxusb_medion_cf_refc_fld_chg._entry.92, section ".printk_index", align 4
@cxusb_medion_cf_refc_start_sch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: line start @ pos %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_medion_cf_refc_start_sch\00", [33 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_start_sch._entry_ptr = internal global ptr @cxusb_medion_cf_refc_start_sch._entry, section ".printk_index", align 4
@cxusb_medion_cf_refc_start_sch._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: VBI start @ pos %u\0A\00", [38 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_start_sch._entry_ptr.99 = internal global ptr @cxusb_medion_cf_refc_start_sch._entry.97, section ".printk_index", align 4
@cxusb_medion_cf_refc_line_smpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: SAV in line samples @ line %u, pos %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_medion_cf_refc_line_smpl\00", [33 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_line_smpl._entry_ptr = internal global ptr @cxusb_medion_cf_refc_line_smpl._entry, section ".printk_index", align 4
@cxusb_medion_cf_refc_line_smpl._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.101, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_line_smpl._entry_ptr.103 = internal global ptr @cxusb_medion_cf_refc_line_smpl._entry.102, section ".printk_index", align 4
@cxusb_medion_cf_refc_vbi_smpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: SAV in VBI samples @ pos %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxusb_medion_cf_refc_vbi_smpl\00", [34 x i8] zeroinitializer }, align 32
@cxusb_medion_cf_refc_vbi_smpl._entry_ptr = internal global ptr @cxusb_medion_cf_refc_vbi_smpl._entry, section ".printk_index", align 4
@cxusb_medion_cs_start_sch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: line %u early start, pos %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxusb_medion_cs_start_sch\00", [38 x i8] zeroinitializer }, align 32
@cxusb_medion_cs_start_sch._entry_ptr = internal global ptr @cxusb_medion_cs_start_sch._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cxdev_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @cxusb_medion_v_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @cxusb_medion_v_buf_init, ptr null, ptr null, ptr null, ptr @cxusb_medion_v_start_streaming, ptr @cxusb_medion_v_stop_streaming, ptr @cxusub_medion_v_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cxusb_medion_register_analog_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1641, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"video queue init failed, ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cxusb_medion_register_analog_video\00", [61 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_video._entry_ptr = internal global ptr @cxusb_medion_register_analog_video._entry, section ".printk_index", align 4
@cxusb_medion_register_analog_video._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 1647, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"video device alloc failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_video._entry_ptr.113 = internal global ptr @cxusb_medion_register_analog_video._entry.111, section ".printk_index", align 4
@cxusb_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @cxusb_videoradio_open, ptr @cxusb_videoradio_release }, [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cxusb\00", [26 x i8] zeroinitializer }, align 32
@cxusb_video_ioctl = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cxusb_medion_v_querycap, ptr @cxusb_medion_v_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxusb_medion_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxusb_medion_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxusb_medion_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @cxusb_medion_g_std, ptr @cxusb_medion_s_std, ptr @cxusb_medion_querystd, ptr @cxusb_medion_enum_input, ptr @cxusb_medion_g_input, ptr @cxusb_medion_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxusb_medion_g_tuner, ptr @cxusb_medion_s_tuner, ptr @cxusb_medion_g_frequency, ptr @cxusb_medion_s_frequency, ptr null, ptr null, ptr @cxusb_medion_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_video._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.110, ptr @.str.2, i32 1666, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"video device register failed, ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_video._entry_ptr.117 = internal global ptr @cxusb_medion_register_analog_video._entry.115, section ".printk_index", align 4
@cxusb_medion_v_buf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: buffer init\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxusb_medion_v_buf_init\00", [40 x i8] zeroinitializer }, align 32
@cxusb_medion_v_buf_init._entry_ptr = internal global ptr @cxusb_medion_v_buf_init._entry, section ".printk_index", align 4
@cxusb_medion_v_buf_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: buffer OK\0A\00", [47 x i8] zeroinitializer }, align 32
@cxusb_medion_v_buf_init._entry_ptr.122 = internal global ptr @cxusb_medion_v_buf_init._entry.120, section ".printk_index", align 4
@cxusb_medion_v_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: should start streaming\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_medion_v_start_streaming\00", [33 x i8] zeroinitializer }, align 32
@cxusb_medion_v_start_streaming._entry_ptr = internal global ptr @cxusb_medion_v_start_streaming._entry, section ".printk_index", align 4
@cxusb_medion_v_start_streaming._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 794, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to start stream (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@cxusb_medion_v_start_streaming._entry_ptr.127 = internal global ptr @cxusb_medion_v_start_streaming._entry.125, section ".printk_index", align 4
@cxusb_medion_v_start_streaming._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.2, i32 802, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to start streaming (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cxusb_medion_v_start_streaming._entry_ptr.130 = internal global ptr @cxusb_medion_v_start_streaming._entry.128, section ".printk_index", align 4
@cxusb_medion_v_start_streaming._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.124, ptr @.str.2, i32 875, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"URB %d submission failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@cxusb_medion_v_start_streaming._entry_ptr.133 = internal global ptr @cxusb_medion_v_start_streaming._entry.131, section ".printk_index", align 4
@cxusb_medion_field_order._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: cannot get current standard for input %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxusb_medion_field_order\00", [39 x i8] zeroinitializer }, align 32
@cxusb_medion_field_order._entry_ptr = internal global ptr @cxusb_medion_field_order._entry, section ".printk_index", align 4
@cxusb_medion_field_order._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"cannot determine field order for the current standard setup and received signal, using TB\0A\00", [37 x i8] zeroinitializer }, align 32
@cxusb_medion_field_order._entry_ptr.138 = internal global ptr @cxusb_medion_field_order._entry.136, section ".printk_index", align 4
@cxusb_medion_v_ss_auxbuf_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017%s: each URB will have %d packets for total of %u bytes (%u x %u @ %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_medion_v_ss_auxbuf_alloc\00", [33 x i8] zeroinitializer }, align 32
@cxusb_medion_v_ss_auxbuf_alloc._entry_ptr = internal global ptr @cxusb_medion_v_ss_auxbuf_alloc._entry, section ".printk_index", align 4
@cxusb_auxbuf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: initializing auxbuf of len %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxusb_auxbuf_init\00", [46 x i8] zeroinitializer }, align 32
@cxusb_auxbuf_init._entry_ptr = internal global ptr @cxusb_auxbuf_init._entry, section ".printk_index", align 4
@cxusb_medion_v_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 642, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"complete on unknown URB\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxusb_medion_v_complete\00", [40 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete._entry_ptr = internal global ptr @cxusb_medion_v_complete._entry, section ".printk_index", align 4
@cxusb_medion_v_complete._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: URB %u complete\0A\00", [41 x i8] zeroinitializer }, align 32
@cxusb_medion_v_complete._entry_ptr.147 = internal global ptr @cxusb_medion_v_complete._entry.145, section ".printk_index", align 4
@cxusb_medion_v_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: should stop streaming\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxusb_medion_v_stop_streaming\00", [34 x i8] zeroinitializer }, align 32
@cxusb_medion_v_stop_streaming._entry_ptr = internal global ptr @cxusb_medion_v_stop_streaming._entry, section ".printk_index", align 4
@cxusb_medion_v_stop_streaming._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 917, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to stop stream (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@cxusb_medion_v_stop_streaming._entry_ptr.152 = internal global ptr @cxusb_medion_v_stop_streaming._entry.150, section ".printk_index", align 4
@cxusb_videoradio_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: got open\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxusb_videoradio_open\00", [42 x i8] zeroinitializer }, align 32
@cxusb_videoradio_open._entry_ptr = internal global ptr @cxusb_videoradio_open._entry, section ".printk_index", align 4
@cxusb_videoradio_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: got release\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxusb_videoradio_release\00", [39 x i8] zeroinitializer }, align 32
@cxusb_videoradio_release._entry_ptr = internal global ptr @cxusb_videoradio_release._entry, section ".printk_index", align 4
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Medion 95700\00", [19 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@cxusb_medion_set_norm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 1138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: trying to set standard for input %u to %lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxusb_medion_set_norm\00", [42 x i8] zeroinitializer }, align 32
@cxusb_medion_set_norm._entry_ptr = internal global ptr @cxusb_medion_set_norm._entry, section ".printk_index", align 4
@cxusb_medion_set_norm._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 1161, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tda9887 norm setup failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cxusb_medion_set_norm._entry_ptr.163 = internal global ptr @cxusb_medion_set_norm._entry.161, section ".printk_index", align 4
@cxusb_medion_set_norm._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.2, i32 1169, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tuner norm setup failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@cxusb_medion_set_norm._entry_ptr.166 = internal global ptr @cxusb_medion_set_norm._entry.164, section ".printk_index", align 4
@cxusb_medion_set_norm._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.160, ptr @.str.2, i32 1177, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cx25840 norm setup failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cxusb_medion_set_norm._entry_ptr.169 = internal global ptr @cxusb_medion_set_norm._entry.167, section ".printk_index", align 4
@cxusb_medion_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: cannot get detected standard for input %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxusb_medion_querystd\00", [42 x i8] zeroinitializer }, align 32
@cxusb_medion_querystd._entry_ptr = internal global ptr @cxusb_medion_querystd._entry, section ".printk_index", align 4
@cxusb_medion_querystd._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: input %u detected standard is %lx\0A\00", [55 x i8] zeroinitializer }, align 32
@cxusb_medion_querystd._entry_ptr.174 = internal global ptr @cxusb_medion_querystd._entry.172, section ".printk_index", align 4
@cxusb_medion_inputs = internal constant { [3 x %struct.anon.169], [88 x i8] } { [3 x %struct.anon.169] [%struct.anon.169 { %struct.v4l2_input { i32 0, [32 x i8] c"TV tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i64 255, i32 0, i32 0, [3 x i32] zeroinitializer }, i32 2 }, %struct.anon.169 { %struct.v4l2_input { i32 0, [32 x i8] c"Composite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 0, [3 x i32] zeroinitializer }, i32 1 }, %struct.anon.169 { %struct.v4l2_input { i32 0, [32 x i8] c"S-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i64 16777215, i32 0, i32 0, [3 x i32] zeroinitializer }, i32 1072 }], [88 x i8] zeroinitializer }, align 32
@cxusb_medion_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 1110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cx25840 input status query failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxusb_medion_enum_input\00", [40 x i8] zeroinitializer }, align 32
@cxusb_medion_enum_input._entry_ptr = internal global ptr @cxusb_medion_enum_input._entry, section ".printk_index", align 4
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TV tuner\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Radio tuner\00", [20 x i8] zeroinitializer }, align 32
@cxusb_medion_videodev_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 1616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: video device release\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxusb_medion_videodev_release\00", [34 x i8] zeroinitializer }, align 32
@cxusb_medion_videodev_release._entry_ptr = internal global ptr @cxusb_medion_videodev_release._entry, section ".printk_index", align 4
@cxusb_medion_register_analog_radio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.2, i32 1684, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radio device alloc failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cxusb_medion_register_analog_radio\00", [61 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_radio._entry_ptr = internal global ptr @cxusb_medion_register_analog_radio._entry, section ".printk_index", align 4
@cxusb_radio_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr null, ptr @video_ioctl2, ptr null, ptr null, ptr @cxusb_videoradio_open, ptr @cxusb_videoradio_release }, [60 x i8] zeroinitializer }, align 32
@cxusb_radio_ioctl = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cxusb_medion_v_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxusb_medion_g_tuner, ptr @cxusb_medion_s_tuner, ptr @cxusb_medion_g_frequency, ptr @cxusb_medion_s_frequency, ptr null, ptr null, ptr @cxusb_medion_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_radio._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.2, i32 1701, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"radio device register failed, ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cxusb_medion_register_analog_radio._entry_ptr.185 = internal global ptr @cxusb_medion_register_analog_radio._entry.183, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967278]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1473, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1482, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1488, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [25 x i8] c"cxusub_medion_pin_config\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1451, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1502, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1520, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1781, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1789, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1799, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1829, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1837, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 87, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1600, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1718, i32 11 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1720, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1743, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1751, i32 9 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1753, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1769, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 609, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 622, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 554, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 563, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 567, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 586, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 590, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 123, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 130, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 99, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 463, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 468, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 492, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 521, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 523, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 397, i32 14 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 436, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 196, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 204, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 219, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 244, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 250, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 268, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 277, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 295, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 342, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1163, i32 7 }
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"cxdev_video_qops\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 953, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1640, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1647, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant [17 x i8] c"cxusb_video_fops\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1577, i32 42 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1655, i32 33 }
@___asan_gen_.531 = private unnamed_addr constant [18 x i8] c"cxusb_video_ioctl\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1411, i32 36 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1665, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 68, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 73, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 781, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 793, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 801, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 873, i32 5 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 758, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 767, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 708, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 82, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 641, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 646, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 905, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 916, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1549, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1565, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 974, i32 21 }
@___asan_gen_.667 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 912, i32 31 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1135, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1159, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1167, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1175, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1388, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1394, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [20 x i8] c"cxusb_medion_inputs\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1071, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1108, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1263, i32 24 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1265, i32 24 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1616, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1684, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant [17 x i8] c"cxusb_radio_fops\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1587, i32 42 }
@___asan_gen_.750 = private unnamed_addr constant [18 x i8] c"cxusb_radio_ioctl\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1438, i32 36 }
@___asan_gen_.753 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.757 = private constant [44 x i8] c"../drivers/media/usb/dvb-usb/cxusb-analog.c\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.757, i32 1700, i32 3 }
@llvm.compiler.used = appending global [257 x ptr] [ptr @cxusb_auxbuf_head_trim._entry, ptr @cxusb_auxbuf_head_trim._entry_ptr, ptr @cxusb_auxbuf_init._entry, ptr @cxusb_auxbuf_init._entry_ptr, ptr @cxusb_auxbuf_make_space._entry, ptr @cxusb_auxbuf_make_space._entry.65, ptr @cxusb_auxbuf_make_space._entry_ptr, ptr @cxusb_auxbuf_make_space._entry_ptr.67, ptr @cxusb_medion_analog_init._entry, ptr @cxusb_medion_analog_init._entry.11, ptr @cxusb_medion_analog_init._entry.14, ptr @cxusb_medion_analog_init._entry.5, ptr @cxusb_medion_analog_init._entry.8, ptr @cxusb_medion_analog_init._entry_ptr, ptr @cxusb_medion_analog_init._entry_ptr.10, ptr @cxusb_medion_analog_init._entry_ptr.13, ptr @cxusb_medion_analog_init._entry_ptr.16, ptr @cxusb_medion_analog_init._entry_ptr.7, ptr @cxusb_medion_cf_refc_fld_chg._entry, ptr @cxusb_medion_cf_refc_fld_chg._entry.89, ptr @cxusb_medion_cf_refc_fld_chg._entry.92, ptr @cxusb_medion_cf_refc_fld_chg._entry_ptr, ptr @cxusb_medion_cf_refc_fld_chg._entry_ptr.91, ptr @cxusb_medion_cf_refc_fld_chg._entry_ptr.94, ptr @cxusb_medion_cf_refc_line_smpl._entry, ptr @cxusb_medion_cf_refc_line_smpl._entry.102, ptr @cxusb_medion_cf_refc_line_smpl._entry_ptr, ptr @cxusb_medion_cf_refc_line_smpl._entry_ptr.103, ptr @cxusb_medion_cf_refc_start_sch._entry, ptr @cxusb_medion_cf_refc_start_sch._entry.97, ptr @cxusb_medion_cf_refc_start_sch._entry_ptr, ptr @cxusb_medion_cf_refc_start_sch._entry_ptr.99, ptr @cxusb_medion_cf_refc_vbi_smpl._entry, ptr @cxusb_medion_cf_refc_vbi_smpl._entry_ptr, ptr @cxusb_medion_copy_field._entry, ptr @cxusb_medion_copy_field._entry_ptr, ptr @cxusb_medion_cs_start_sch._entry, ptr @cxusb_medion_cs_start_sch._entry_ptr, ptr @cxusb_medion_enum_input._entry, ptr @cxusb_medion_enum_input._entry_ptr, ptr @cxusb_medion_field_order._entry, ptr @cxusb_medion_field_order._entry.136, ptr @cxusb_medion_field_order._entry_ptr, ptr @cxusb_medion_field_order._entry_ptr.138, ptr @cxusb_medion_querystd._entry, ptr @cxusb_medion_querystd._entry.172, ptr @cxusb_medion_querystd._entry_ptr, ptr @cxusb_medion_querystd._entry_ptr.174, ptr @cxusb_medion_register_analog._entry, ptr @cxusb_medion_register_analog._entry_ptr, ptr @cxusb_medion_register_analog_radio._entry, ptr @cxusb_medion_register_analog_radio._entry.183, ptr @cxusb_medion_register_analog_radio._entry_ptr, ptr @cxusb_medion_register_analog_radio._entry_ptr.185, ptr @cxusb_medion_register_analog_subdevs._entry, ptr @cxusb_medion_register_analog_subdevs._entry.34, ptr @cxusb_medion_register_analog_subdevs._entry.38, ptr @cxusb_medion_register_analog_subdevs._entry.41, ptr @cxusb_medion_register_analog_subdevs._entry_ptr, ptr @cxusb_medion_register_analog_subdevs._entry_ptr.36, ptr @cxusb_medion_register_analog_subdevs._entry_ptr.40, ptr @cxusb_medion_register_analog_subdevs._entry_ptr.43, ptr @cxusb_medion_register_analog_video._entry, ptr @cxusb_medion_register_analog_video._entry.111, ptr @cxusb_medion_register_analog_video._entry.115, ptr @cxusb_medion_register_analog_video._entry_ptr, ptr @cxusb_medion_register_analog_video._entry_ptr.113, ptr @cxusb_medion_register_analog_video._entry_ptr.117, ptr @cxusb_medion_set_norm._entry, ptr @cxusb_medion_set_norm._entry.161, ptr @cxusb_medion_set_norm._entry.164, ptr @cxusb_medion_set_norm._entry.167, ptr @cxusb_medion_set_norm._entry_ptr, ptr @cxusb_medion_set_norm._entry_ptr.163, ptr @cxusb_medion_set_norm._entry_ptr.166, ptr @cxusb_medion_set_norm._entry_ptr.169, ptr @cxusb_medion_unregister_analog._entry, ptr @cxusb_medion_unregister_analog._entry.25, ptr @cxusb_medion_unregister_analog._entry_ptr, ptr @cxusb_medion_unregister_analog._entry_ptr.27, ptr @cxusb_medion_v4l2_release._entry, ptr @cxusb_medion_v4l2_release._entry_ptr, ptr @cxusb_medion_v_buf_init._entry, ptr @cxusb_medion_v_buf_init._entry.120, ptr @cxusb_medion_v_buf_init._entry_ptr, ptr @cxusb_medion_v_buf_init._entry_ptr.122, ptr @cxusb_medion_v_complete._entry, ptr @cxusb_medion_v_complete._entry.145, ptr @cxusb_medion_v_complete._entry_ptr, ptr @cxusb_medion_v_complete._entry_ptr.147, ptr @cxusb_medion_v_complete_handle_urb._entry, ptr @cxusb_medion_v_complete_handle_urb._entry.51, ptr @cxusb_medion_v_complete_handle_urb._entry.54, ptr @cxusb_medion_v_complete_handle_urb._entry.57, ptr @cxusb_medion_v_complete_handle_urb._entry.60, ptr @cxusb_medion_v_complete_handle_urb._entry_ptr, ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.53, ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.56, ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.59, ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.62, ptr @cxusb_medion_v_complete_work._entry, ptr @cxusb_medion_v_complete_work._entry.46, ptr @cxusb_medion_v_complete_work._entry_ptr, ptr @cxusb_medion_v_complete_work._entry_ptr.48, ptr @cxusb_medion_v_process_auxbuf._entry, ptr @cxusb_medion_v_process_auxbuf._entry.72, ptr @cxusb_medion_v_process_auxbuf._entry.75, ptr @cxusb_medion_v_process_auxbuf._entry.78, ptr @cxusb_medion_v_process_auxbuf._entry.81, ptr @cxusb_medion_v_process_auxbuf._entry_ptr, ptr @cxusb_medion_v_process_auxbuf._entry_ptr.74, ptr @cxusb_medion_v_process_auxbuf._entry_ptr.77, ptr @cxusb_medion_v_process_auxbuf._entry_ptr.80, ptr @cxusb_medion_v_process_auxbuf._entry_ptr.83, ptr @cxusb_medion_v_ss_auxbuf_alloc._entry, ptr @cxusb_medion_v_ss_auxbuf_alloc._entry_ptr, ptr @cxusb_medion_v_start_streaming._entry, ptr @cxusb_medion_v_start_streaming._entry.125, ptr @cxusb_medion_v_start_streaming._entry.128, ptr @cxusb_medion_v_start_streaming._entry.131, ptr @cxusb_medion_v_start_streaming._entry_ptr, ptr @cxusb_medion_v_start_streaming._entry_ptr.127, ptr @cxusb_medion_v_start_streaming._entry_ptr.130, ptr @cxusb_medion_v_start_streaming._entry_ptr.133, ptr @cxusb_medion_v_stop_streaming._entry, ptr @cxusb_medion_v_stop_streaming._entry.150, ptr @cxusb_medion_v_stop_streaming._entry_ptr, ptr @cxusb_medion_v_stop_streaming._entry_ptr.152, ptr @cxusb_medion_videodev_release._entry, ptr @cxusb_medion_videodev_release._entry_ptr, ptr @cxusb_videoradio_open._entry, ptr @cxusb_videoradio_open._entry_ptr, ptr @cxusb_videoradio_release._entry, ptr @cxusb_videoradio_release._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @cxusub_medion_pin_config, ptr @.str.12, ptr @.str.15, ptr @cxusb_medion_register_analog.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @cxusb_medion_register_analog.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @init_completion.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @cxdev_video_qops, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @cxusb_video_fops, ptr @.str.114, ptr @cxusb_video_ioctl, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @cxusb_medion_inputs, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @cxusb_radio_fops, ptr @cxusb_radio_ioctl, ptr @.str.184], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_analog_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_analog_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_analog_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusub_medion_pin_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_analog_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_analog_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_unregister_analog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_unregister_analog._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v4l2_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_subdevs._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_subdevs._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_subdevs._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete_work._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete_handle_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete_handle_urb._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete_handle_urb._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete_handle_urb._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete_handle_urb._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_auxbuf_make_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_auxbuf_make_space._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_auxbuf_head_trim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_process_auxbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_process_auxbuf._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_process_auxbuf._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_process_auxbuf._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_process_auxbuf._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_copy_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_fld_chg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_fld_chg._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_fld_chg._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_start_sch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_start_sch._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_line_smpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_line_smpl._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cf_refc_vbi_smpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_cs_start_sch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxdev_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_video._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_video_ioctl to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_video._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_buf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_buf_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_start_streaming._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_start_streaming._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_start_streaming._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_field_order._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_field_order._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_ss_auxbuf_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_auxbuf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_complete._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_v_stop_streaming._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_videoradio_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_videoradio_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_norm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_norm._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_norm._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_norm._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_querystd._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_inputs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_videodev_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_radio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_radio_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_radio_ioctl to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_register_analog_radio._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxusb_medion_analog_init(ptr noundef %dvbdev) local_unnamed_addr #0 align 64 {
entry:
  %tuner_analog_msg_data = alloca [4 x i8], align 4
  %tuner_analog_msg = alloca %struct.i2c_msg, align 4
  %subfmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_analog_msg_data) #10
  %2 = ptrtoint ptr %tuner_analog_msg_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1671396012, ptr %tuner_analog_msg_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tuner_analog_msg) #10
  %3 = getelementptr inbounds i8, ptr %tuner_analog_msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %tuner_analog_msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 97, ptr %tuner_analog_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %tuner_analog_msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %tuner_analog_msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %tuner_analog_msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tuner_analog_msg_data, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %subfmt) #10
  %9 = call ptr @memset(ptr %subfmt, i32 255, i32 88)
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %tuner_analog_msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cx25840, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.do.end27_crit_edge, label %if.else

if.end.do.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %if.else.do.end27_crit_edge, label %land.lhs.true

if.else.do.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

land.lhs.true:                                    ; preds = %if.else
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %land.lhs.true.do.end27_crit_edge, label %if.else7

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %20 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %reset10 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %reset10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset10, align 4
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end22_crit_edge

land.lhs.true9.if.end22_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.else15, %land.lhs.true9.if.end22_crit_edge
  %.sink = phi ptr [ %19, %if.else15 ], [ %22, %land.lhs.true9.if.end22_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %13, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp23.not = icmp eq i32 %call19, 0
  br i1 %cmp23.not, label %if.end22.if.end30_crit_edge, label %if.end22.do.end27_crit_edge

if.end22.do.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end27:                                         ; preds = %if.end22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %if.else.do.end27_crit_edge, %if.end.do.end27_crit_edge
  %__result.0359 = phi i32 [ %call19, %if.end22.do.end27_crit_edge ], [ -515, %if.else.do.end27_crit_edge ], [ -515, %land.lhs.true.do.end27_crit_edge ], [ -19, %if.end.do.end27_crit_edge ]
  %udev28 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %23 = ptrtoint ptr %udev28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev28, align 4
  %dev29 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.6, i32 noundef %__result.0359) #13
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.end22.if.end30_crit_edge
  %25 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cx25840, align 4
  %tobool34.not = icmp eq ptr %26, null
  br i1 %tobool34.not, label %if.end30.do.end65_crit_edge, label %if.else36

if.end30.do.end65_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

if.else36:                                        ; preds = %if.end30
  %ops37 = getelementptr inbounds %struct.v4l2_subdev, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %ops37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops37, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %video, align 4
  %tobool38.not = icmp eq ptr %30, null
  br i1 %tobool38.not, label %if.else36.do.end65_crit_edge, label %land.lhs.true39

if.else36.do.end65_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

land.lhs.true39:                                  ; preds = %if.else36
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool42.not = icmp eq ptr %32, null
  br i1 %tobool42.not, label %land.lhs.true39.do.end65_crit_edge, label %if.else44

land.lhs.true39.do.end65_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

if.else44:                                        ; preds = %land.lhs.true39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool45.not = icmp eq ptr %33, null
  br i1 %tobool45.not, label %if.else44.if.else52_crit_edge, label %land.lhs.true46

if.else44.if.else52_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else52

land.lhs.true46:                                  ; preds = %if.else44
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool48.not = icmp eq ptr %35, null
  br i1 %tobool48.not, label %land.lhs.true46.if.else52_crit_edge, label %land.lhs.true46.if.end59_crit_edge

land.lhs.true46.if.end59_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true46.if.else52_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else52

if.else52:                                        ; preds = %land.lhs.true46.if.else52_crit_edge, %if.else44.if.else52_crit_edge
  br label %if.end59

if.end59:                                         ; preds = %if.else52, %land.lhs.true46.if.end59_crit_edge
  %.sink369 = phi ptr [ %32, %if.else52 ], [ %35, %land.lhs.true46.if.end59_crit_edge ]
  %call56 = call i32 %.sink369(ptr noundef nonnull %26, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp61.not = icmp eq i32 %call56, 0
  br i1 %cmp61.not, label %if.end59.if.end68_crit_edge, label %if.end59.do.end65_crit_edge

if.end59.do.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.end65:                                         ; preds = %if.end59.do.end65_crit_edge, %land.lhs.true39.do.end65_crit_edge, %if.else36.do.end65_crit_edge, %if.end30.do.end65_crit_edge
  %__result33.0362 = phi i32 [ %call56, %if.end59.do.end65_crit_edge ], [ -515, %if.else36.do.end65_crit_edge ], [ -515, %land.lhs.true39.do.end65_crit_edge ], [ -19, %if.end30.do.end65_crit_edge ]
  %udev66 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %36 = ptrtoint ptr %udev66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev66, align 4
  %dev67 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67, ptr noundef nonnull @.str.9, i32 noundef %__result33.0362) #13
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %if.end59.if.end68_crit_edge
  %input = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %input, align 4
  %videodev = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %videodev, align 8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 16777215, ptr %tvnorms, align 8
  %norm = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 255, ptr %norm, align 8
  %43 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cx25840, align 4
  %tobool72.not = icmp eq ptr %44, null
  br i1 %tobool72.not, label %if.end68.do.end104_crit_edge, label %if.else74

if.end68.do.end104_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

if.else74:                                        ; preds = %if.end68
  %ops75 = getelementptr inbounds %struct.v4l2_subdev, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %ops75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops75, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool77.not = icmp eq ptr %48, null
  br i1 %tobool77.not, label %if.else74.do.end104_crit_edge, label %land.lhs.true78

if.else74.do.end104_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

land.lhs.true78:                                  ; preds = %if.else74
  %s_io_pin_config = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %s_io_pin_config to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_io_pin_config, align 4
  %tobool81.not = icmp eq ptr %50, null
  br i1 %tobool81.not, label %land.lhs.true78.do.end104_crit_edge, label %if.else83

land.lhs.true78.do.end104_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

if.else83:                                        ; preds = %land.lhs.true78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %51 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool84.not = icmp eq ptr %51, null
  br i1 %tobool84.not, label %if.else83.if.else91_crit_edge, label %land.lhs.true85

if.else83.if.else91_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else91

land.lhs.true85:                                  ; preds = %if.else83
  %s_io_pin_config86 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %s_io_pin_config86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_io_pin_config86, align 4
  %tobool87.not = icmp eq ptr %53, null
  br i1 %tobool87.not, label %land.lhs.true85.if.else91_crit_edge, label %land.lhs.true85.if.end98_crit_edge

land.lhs.true85.if.end98_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true85.if.else91_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else91

if.else91:                                        ; preds = %land.lhs.true85.if.else91_crit_edge, %if.else83.if.else91_crit_edge
  br label %if.end98

if.end98:                                         ; preds = %if.else91, %land.lhs.true85.if.end98_crit_edge
  %.sink370 = phi ptr [ %50, %if.else91 ], [ %53, %land.lhs.true85.if.end98_crit_edge ]
  %call95 = call i32 %.sink370(ptr noundef nonnull %44, i32 noundef 3, ptr noundef nonnull @cxusub_medion_pin_config) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp100.not = icmp eq i32 %call95, 0
  br i1 %cmp100.not, label %if.end98.if.end107_crit_edge, label %if.end98.do.end104_crit_edge

if.end98.do.end104_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104

if.end98.if.end107_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

do.end104:                                        ; preds = %if.end98.do.end104_crit_edge, %land.lhs.true78.do.end104_crit_edge, %if.else74.do.end104_crit_edge, %if.end68.do.end104_crit_edge
  %__result71.0365 = phi i32 [ %call95, %if.end98.do.end104_crit_edge ], [ -515, %if.else74.do.end104_crit_edge ], [ -515, %land.lhs.true78.do.end104_crit_edge ], [ -19, %if.end68.do.end104_crit_edge ]
  %udev105 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %54 = ptrtoint ptr %udev105 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev105, align 4
  %dev106 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev106, ptr noundef nonnull @.str.12, i32 noundef %__result71.0365) #13
  br label %if.end107

if.end107:                                        ; preds = %do.end104, %if.end98.if.end107_crit_edge
  %tda9887 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %tda9887 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tda9887, align 4
  %tobool110.not = icmp eq ptr %57, null
  br i1 %tobool110.not, label %if.end107.if.end138_crit_edge, label %if.else112

if.end107.if.end138_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.else112:                                       ; preds = %if.end107
  %ops113 = getelementptr inbounds %struct.v4l2_subdev, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %ops113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops113, align 4
  %video114 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %video114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %video114, align 4
  %tobool115.not = icmp eq ptr %61, null
  br i1 %tobool115.not, label %if.else112.if.end138_crit_edge, label %land.lhs.true116

if.else112.if.end138_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

land.lhs.true116:                                 ; preds = %if.else112
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_std, align 4
  %tobool119.not = icmp eq ptr %63, null
  br i1 %tobool119.not, label %land.lhs.true116.if.end138_crit_edge, label %if.else121

land.lhs.true116.if.end138_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.else121:                                       ; preds = %land.lhs.true116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool122.not = icmp eq ptr %64, null
  br i1 %tobool122.not, label %if.else121.if.else130_crit_edge, label %land.lhs.true123

if.else121.if.else130_crit_edge:                  ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else130

land.lhs.true123:                                 ; preds = %if.else121
  %s_std124 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %s_std124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_std124, align 4
  %tobool125.not = icmp eq ptr %66, null
  br i1 %tobool125.not, label %land.lhs.true123.if.else130_crit_edge, label %land.lhs.true123.if.end138.sink.split_crit_edge

land.lhs.true123.if.end138.sink.split_crit_edge:  ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138.sink.split

land.lhs.true123.if.else130_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else130

if.else130:                                       ; preds = %land.lhs.true123.if.else130_crit_edge, %if.else121.if.else130_crit_edge
  br label %if.end138.sink.split

if.end138.sink.split:                             ; preds = %if.else130, %land.lhs.true123.if.end138.sink.split_crit_edge
  %.sink372 = phi ptr [ %63, %if.else130 ], [ %66, %land.lhs.true123.if.end138.sink.split_crit_edge ]
  %67 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %norm, align 8
  %call135 = call i32 %.sink372(ptr noundef nonnull %57, i64 noundef %68) #10
  br label %if.end138

if.end138:                                        ; preds = %if.end138.sink.split, %land.lhs.true116.if.end138_crit_edge, %if.else112.if.end138_crit_edge, %if.end107.if.end138_crit_edge
  %tuner = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 7
  %69 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tuner, align 8
  %tobool142.not = icmp eq ptr %70, null
  br i1 %tobool142.not, label %if.end138.if.end171_crit_edge, label %if.else144

if.end138.if.end171_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.else144:                                       ; preds = %if.end138
  %ops145 = getelementptr inbounds %struct.v4l2_subdev, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %ops145 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops145, align 4
  %video146 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %video146 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %video146, align 4
  %tobool147.not = icmp eq ptr %74, null
  br i1 %tobool147.not, label %if.else144.if.end171_crit_edge, label %land.lhs.true148

if.else144.if.end171_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

land.lhs.true148:                                 ; preds = %if.else144
  %s_std151 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %s_std151 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_std151, align 4
  %tobool152.not = icmp eq ptr %76, null
  br i1 %tobool152.not, label %land.lhs.true148.if.end171_crit_edge, label %if.else154

land.lhs.true148.if.end171_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.else154:                                       ; preds = %land.lhs.true148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool155.not = icmp eq ptr %77, null
  br i1 %tobool155.not, label %if.else154.if.else163_crit_edge, label %land.lhs.true156

if.else154.if.else163_crit_edge:                  ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else163

land.lhs.true156:                                 ; preds = %if.else154
  %s_std157 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %s_std157 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_std157, align 4
  %tobool158.not = icmp eq ptr %79, null
  br i1 %tobool158.not, label %land.lhs.true156.if.else163_crit_edge, label %land.lhs.true156.if.end171.sink.split_crit_edge

land.lhs.true156.if.end171.sink.split_crit_edge:  ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.sink.split

land.lhs.true156.if.else163_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else163

if.else163:                                       ; preds = %land.lhs.true156.if.else163_crit_edge, %if.else154.if.else163_crit_edge
  br label %if.end171.sink.split

if.end171.sink.split:                             ; preds = %if.else163, %land.lhs.true156.if.end171.sink.split_crit_edge
  %.sink374 = phi ptr [ %76, %if.else163 ], [ %79, %land.lhs.true156.if.end171.sink.split_crit_edge ]
  %80 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %norm, align 8
  %call168 = call i32 %.sink374(ptr noundef nonnull %70, i64 noundef %81) #10
  br label %if.end171

if.end171:                                        ; preds = %if.end171.sink.split, %land.lhs.true148.if.end171_crit_edge, %if.else144.if.end171_crit_edge, %if.end138.if.end171_crit_edge
  %82 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cx25840, align 4
  %tobool176.not = icmp eq ptr %83, null
  br i1 %tobool176.not, label %if.end171.if.end205_crit_edge, label %if.else178

if.end171.if.end205_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.else178:                                       ; preds = %if.end171
  %ops179 = getelementptr inbounds %struct.v4l2_subdev, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %ops179 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops179, align 4
  %video180 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %video180 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %video180, align 4
  %tobool181.not = icmp eq ptr %87, null
  br i1 %tobool181.not, label %if.else178.if.end205_crit_edge, label %land.lhs.true182

if.else178.if.end205_crit_edge:                   ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

land.lhs.true182:                                 ; preds = %if.else178
  %s_std185 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %s_std185 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_std185, align 4
  %tobool186.not = icmp eq ptr %89, null
  br i1 %tobool186.not, label %land.lhs.true182.if.end205_crit_edge, label %if.else188

land.lhs.true182.if.end205_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

if.else188:                                       ; preds = %land.lhs.true182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool189.not = icmp eq ptr %90, null
  br i1 %tobool189.not, label %if.else188.if.else197_crit_edge, label %land.lhs.true190

if.else188.if.else197_crit_edge:                  ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else197

land.lhs.true190:                                 ; preds = %if.else188
  %s_std191 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %s_std191 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_std191, align 4
  %tobool192.not = icmp eq ptr %92, null
  br i1 %tobool192.not, label %land.lhs.true190.if.else197_crit_edge, label %land.lhs.true190.if.end205.sink.split_crit_edge

land.lhs.true190.if.end205.sink.split_crit_edge:  ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205.sink.split

land.lhs.true190.if.else197_crit_edge:            ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else197

if.else197:                                       ; preds = %land.lhs.true190.if.else197_crit_edge, %if.else188.if.else197_crit_edge
  br label %if.end205.sink.split

if.end205.sink.split:                             ; preds = %if.else197, %land.lhs.true190.if.end205.sink.split_crit_edge
  %.sink376 = phi ptr [ %89, %if.else197 ], [ %92, %land.lhs.true190.if.end205.sink.split_crit_edge ]
  %93 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %norm, align 8
  %call202 = call i32 %.sink376(ptr noundef nonnull %83, i64 noundef %94) #10
  br label %if.end205

if.end205:                                        ; preds = %if.end205.sink.split, %land.lhs.true182.if.end205_crit_edge, %if.else178.if.end205_crit_edge, %if.end171.if.end205_crit_edge
  %95 = getelementptr inbounds i8, ptr %subfmt, i32 4
  %96 = call ptr @memset(ptr %95, i32 0, i32 84)
  %97 = ptrtoint ptr %subfmt to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %subfmt, align 4
  %width = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 15
  %98 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %width, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2
  %100 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %format, align 4
  %height = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 16
  %101 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height, align 8
  %height209 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %height209 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %height209, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 2
  %104 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %code, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 3
  %105 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 5, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 4
  %106 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %colorspace, align 4
  %107 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cx25840, align 4
  %tobool216.not = icmp eq ptr %108, null
  br i1 %tobool216.not, label %if.end205.do.end247_crit_edge, label %if.else218

if.end205.do.end247_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end247

if.else218:                                       ; preds = %if.end205
  %ops219 = getelementptr inbounds %struct.v4l2_subdev, ptr %108, i32 0, i32 6
  %109 = ptrtoint ptr %ops219 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops219, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pad, align 4
  %tobool220.not = icmp eq ptr %112, null
  br i1 %tobool220.not, label %if.else218.do.end247_crit_edge, label %land.lhs.true221

if.else218.do.end247_crit_edge:                   ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end247

land.lhs.true221:                                 ; preds = %if.else218
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %set_fmt, align 4
  %tobool224.not = icmp eq ptr %114, null
  br i1 %tobool224.not, label %land.lhs.true221.do.end247_crit_edge, label %if.else226

land.lhs.true221.do.end247_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end247

if.else226:                                       ; preds = %land.lhs.true221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool227.not = icmp eq ptr %115, null
  br i1 %tobool227.not, label %if.else226.if.else234_crit_edge, label %land.lhs.true228

if.else226.if.else234_crit_edge:                  ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else234

land.lhs.true228:                                 ; preds = %if.else226
  %set_fmt229 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %set_fmt229 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set_fmt229, align 4
  %tobool230.not = icmp eq ptr %117, null
  br i1 %tobool230.not, label %land.lhs.true228.if.else234_crit_edge, label %land.lhs.true228.if.end241_crit_edge

land.lhs.true228.if.end241_crit_edge:             ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241

land.lhs.true228.if.else234_crit_edge:            ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else234

if.else234:                                       ; preds = %land.lhs.true228.if.else234_crit_edge, %if.else226.if.else234_crit_edge
  br label %if.end241

if.end241:                                        ; preds = %if.else234, %land.lhs.true228.if.end241_crit_edge
  %.sink377 = phi ptr [ %114, %if.else234 ], [ %117, %land.lhs.true228.if.end241_crit_edge ]
  %call238 = call i32 %.sink377(ptr noundef nonnull %108, ptr noundef null, ptr noundef nonnull %subfmt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cond = icmp eq i32 %call238, 0
  br i1 %cond, label %if.then252, label %if.end241.do.end247_crit_edge

if.end241.do.end247_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end247

do.end247:                                        ; preds = %if.end241.do.end247_crit_edge, %land.lhs.true221.do.end247_crit_edge, %if.else218.do.end247_crit_edge, %if.end205.do.end247_crit_edge
  %__result215.0368 = phi i32 [ %call238, %if.end241.do.end247_crit_edge ], [ -515, %if.else218.do.end247_crit_edge ], [ -515, %land.lhs.true221.do.end247_crit_edge ], [ -19, %if.end205.do.end247_crit_edge ]
  %udev248 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %118 = ptrtoint ptr %udev248 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %udev248, align 4
  %dev249 = getelementptr inbounds %struct.usb_device, ptr %119, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev249, ptr noundef nonnull @.str.15, i32 noundef %__result215.0368) #13
  br label %if.end259

if.then252:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %format, align 4
  %122 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %width, align 4
  %123 = ptrtoint ptr %height209 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %height209, align 4
  %125 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %height, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.then252, %do.end247
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %subfmt) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tuner_analog_msg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_analog_msg_data) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxusb_medion_register_analog(ptr noundef %dvbdev) local_unnamed_addr #0 align 64 {
entry:
  %tun_setup.i = alloca %struct.tuner_setup, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev_lock = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %dev_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @cxusb_medion_register_analog.__key) #10
  %v4l2_release = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %v4l2_release to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %v4l2_release, align 4
  %wait.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 28, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #10
  %v4l2dev = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 5
  %release = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cxusb_medion_v4l2_release, ptr %release, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %call = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.18, i32 noundef %call) #13
  tail call void @mutex_destroy(ptr noundef %dev_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup.i) #10
  %v4l2dev.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %9, i32 0, i32 5
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 8
  %call.i = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2dev.i, ptr noundef %i2c_adap.i, ptr noundef nonnull @.str.31, i8 noundef zeroext 68, ptr noundef null) #10
  %cx25840.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %cx25840.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %cx25840.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #13
  br label %cxusb_medion_register_analog_subdevs.exit.thread

if.else.i:                                        ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %if.else.i.do.end29.i_crit_edge, label %land.lhs.true.i

if.else.i.do.end29.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %init.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init.i, align 4
  %tobool8.not.i = icmp eq ptr %18, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end29.i_crit_edge, label %if.else10.i

land.lhs.true.i.do.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i

if.else10.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %19 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %if.else10.i.if.else18.i_crit_edge, label %land.lhs.true12.i

if.else10.i.if.else18.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18.i

land.lhs.true12.i:                                ; preds = %if.else10.i
  %init13.i = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %init13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init13.i, align 4
  %tobool14.not.i = icmp eq ptr %21, null
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.else18.i_crit_edge, label %land.lhs.true12.i.if.end25.i_crit_edge

land.lhs.true12.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

land.lhs.true12.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true12.i.if.else18.i_crit_edge, %if.else10.i.if.else18.i_crit_edge
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else18.i, %land.lhs.true12.i.if.end25.i_crit_edge
  %.sink.i = phi ptr [ %18, %if.else18.i ], [ %21, %land.lhs.true12.i.if.end25.i_crit_edge ]
  %call22.i = tail call i32 %.sink.i(ptr noundef nonnull %call.i, i32 noundef 706730) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.not.i = icmp eq i32 %call22.i, 0
  br i1 %cmp.not.i, label %if.end32.i, label %if.end25.i.do.end29.i_crit_edge

if.end25.i.do.end29.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29.i

do.end29.i:                                       ; preds = %if.end25.i.do.end29.i_crit_edge, %land.lhs.true.i.do.end29.i_crit_edge, %if.else.i.do.end29.i_crit_edge
  %__result.0127.i = phi i32 [ %call22.i, %if.end25.i.do.end29.i_crit_edge ], [ -515, %land.lhs.true.i.do.end29.i_crit_edge ], [ -515, %if.else.i.do.end29.i_crit_edge ]
  %22 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev, align 4
  %dev31.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.35, i32 noundef %__result.0127.i) #13
  br label %cxusb_medion_register_analog_subdevs.exit.thread

if.end32.i:                                       ; preds = %if.end25.i
  %call35.i = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2dev.i, ptr noundef %i2c_adap.i, ptr noundef nonnull @.str.37, i8 noundef zeroext 97, ptr noundef null) #10
  %tuner.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %9, i32 0, i32 7
  %24 = ptrtoint ptr %tuner.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call35.i, ptr %tuner.i, align 8
  %tobool37.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool37.not.i, label %do.end41.i, label %if.else50.i

do.end41.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev, align 4
  %dev43.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.39) #13
  br label %cxusb_medion_register_analog_subdevs.exit.thread

if.else50.i:                                      ; preds = %if.end32.i
  %27 = call ptr @memset(ptr %tun_setup.i, i32 0, i32 20)
  %28 = ptrtoint ptr %tun_setup.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 97, ptr %tun_setup.i, align 4
  %type.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 1
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 63, ptr %type.i, align 4
  %mode_mask.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 2
  %30 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %mode_mask.i, align 4
  %ops51.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call35.i, i32 0, i32 6
  %31 = ptrtoint ptr %ops51.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops51.i, align 4
  %tuner52.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %tuner52.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tuner52.i, align 4
  %tobool53.not.i = icmp eq ptr %34, null
  br i1 %tobool53.not.i, label %if.else50.i.if.end74.i_crit_edge, label %land.lhs.true54.i

if.else50.i.if.end74.i_crit_edge:                 ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

land.lhs.true54.i:                                ; preds = %if.else50.i
  %s_type_addr.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %s_type_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_type_addr.i, align 4
  %tobool57.not.i = icmp eq ptr %36, null
  br i1 %tobool57.not.i, label %land.lhs.true54.i.if.end74.i_crit_edge, label %if.else59.i

land.lhs.true54.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.else59.i:                                      ; preds = %land.lhs.true54.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool60.not.i = icmp eq ptr %37, null
  br i1 %tobool60.not.i, label %if.else59.i.if.else67.i_crit_edge, label %land.lhs.true61.i

if.else59.i.if.else67.i_crit_edge:                ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else67.i

land.lhs.true61.i:                                ; preds = %if.else59.i
  %s_type_addr62.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %s_type_addr62.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_type_addr62.i, align 4
  %tobool63.not.i = icmp eq ptr %39, null
  br i1 %tobool63.not.i, label %land.lhs.true61.i.if.else67.i_crit_edge, label %land.lhs.true61.i.if.end74.sink.split.i_crit_edge

land.lhs.true61.i.if.end74.sink.split.i_crit_edge: ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.sink.split.i

land.lhs.true61.i.if.else67.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else67.i

if.else67.i:                                      ; preds = %land.lhs.true61.i.if.else67.i_crit_edge, %if.else59.i.if.else67.i_crit_edge
  br label %if.end74.sink.split.i

if.end74.sink.split.i:                            ; preds = %if.else67.i, %land.lhs.true61.i.if.end74.sink.split.i_crit_edge
  %.sink128.i = phi ptr [ %36, %if.else67.i ], [ %39, %land.lhs.true61.i.if.end74.sink.split.i_crit_edge ]
  %call71.i = call i32 %.sink128.i(ptr noundef nonnull %call35.i, ptr noundef nonnull %tun_setup.i) #10
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74.sink.split.i, %land.lhs.true54.i.if.end74.i_crit_edge, %if.else50.i.if.end74.i_crit_edge
  %call78.i = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2dev.i, ptr noundef %i2c_adap.i, ptr noundef nonnull @.str.37, i8 noundef zeroext 67, ptr noundef null) #10
  %tda9887.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %9, i32 0, i32 8
  %40 = ptrtoint ptr %tda9887.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call78.i, ptr %tda9887.i, align 4
  %tobool80.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool80.not.i, label %do.end84.i, label %do.body11

do.end84.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udev, align 4
  %dev86.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86.i, ptr noundef nonnull @.str.42) #13
  br label %cxusb_medion_register_analog_subdevs.exit.thread

cxusb_medion_register_analog_subdevs.exit.thread: ; preds = %do.end84.i, %do.end41.i, %do.end29.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end.i ], [ -19, %do.end41.i ], [ -19, %do.end84.i ], [ %__result.0127.i, %do.end29.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup.i) #10
  br label %ret_unregister

do.body11:                                        ; preds = %if.end74.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup.i) #10
  %urbwork = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 22
  call void @__init_work(ptr noundef %urbwork, i32 noundef 0) #10
  %43 = ptrtoint ptr %urbwork to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %urbwork, align 8
  %lockdep_map = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 22, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @cxusb_medion_register_analog.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry15 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 22, i32 1
  %44 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 22, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 22, i32 2
  %46 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @cxusb_medion_v_complete_work, ptr %func, align 4
  %buflist = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 27
  %47 = ptrtoint ptr %buflist to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %buflist, ptr %buflist, align 4
  %prev.i57 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 27, i32 1
  %48 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buflist, ptr %prev.i57, align 4
  %width = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 15
  %49 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 320, ptr %width, align 4
  %height = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 240, ptr %height, align 8
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %videoqueue.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %videoqueue.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %videoqueue.i, align 4
  %io_modes.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 23, ptr %io_modes.i, align 4
  %ops.i59 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 7
  %55 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @cxdev_video_qops, ptr %ops.i59, align 4
  %mem_ops.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 8
  %56 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 10
  %57 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dvbdev, ptr %drv_priv.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 12
  %58 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 744, ptr %buf_struct_size.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 13
  %59 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %min_buffers_needed.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 15
  %60 = ptrtoint ptr %min_buffers_needed.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %min_buffers_needed.i, align 4
  %dev_lock.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 12, i32 5
  %61 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dev_lock.i, ptr %lock.i, align 4
  %call.i60 = call i32 @vb2_queue_init(ptr noundef %videoqueue.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %if.end.i, label %do.end.i64

do.end.i64:                                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %udev, align 4
  %dev.i63 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i63, ptr noundef nonnull @.str.109, i32 noundef %call.i60) #13
  br label %ret_unregister

if.end.i:                                         ; preds = %do.body11
  %call10.i = call ptr @video_device_alloc() #10
  %videodev.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 9
  %64 = ptrtoint ptr %videodev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call10.i, ptr %videodev.i, align 8
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end19.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %udev, align 4
  %dev18.i = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.112) #13
  br label %ret_unregister

if.end19.i:                                       ; preds = %if.end.i
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %call10.i, i32 0, i32 4
  %67 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 83951617, ptr %device_caps.i, align 8
  %68 = ptrtoint ptr %videodev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %videodev.i, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @cxusb_video_fops, ptr %fops.i, align 4
  %v4l2dev.i65 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %52, i32 0, i32 5
  %71 = load ptr, ptr %videodev.i, align 8
  %v4l2_dev.i = getelementptr inbounds %struct.video_device, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %v4l2dev.i65, ptr %v4l2_dev.i, align 4
  %73 = load ptr, ptr %videodev.i, align 8
  %queue.i = getelementptr inbounds %struct.video_device, ptr %73, i32 0, i32 10
  %74 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %videoqueue.i, ptr %queue.i, align 8
  %75 = load ptr, ptr %videodev.i, align 8
  %name.i = getelementptr inbounds %struct.video_device, ptr %75, i32 0, i32 12
  %call26.i = call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.114, i32 noundef 32) #10
  %76 = ptrtoint ptr %videodev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %videodev.i, align 8
  %vfl_dir.i = getelementptr inbounds %struct.video_device, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %vfl_dir.i, align 4
  %79 = load ptr, ptr %videodev.i, align 8
  %ioctl_ops.i = getelementptr inbounds %struct.video_device, ptr %79, i32 0, i32 24
  %80 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @cxusb_video_ioctl, ptr %ioctl_ops.i, align 4
  %81 = load ptr, ptr %videodev.i, align 8
  %tvnorms.i = getelementptr inbounds %struct.video_device, ptr %81, i32 0, i32 22
  %82 = ptrtoint ptr %tvnorms.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 16777215, ptr %tvnorms.i, align 8
  %83 = load ptr, ptr %videodev.i, align 8
  %release.i = getelementptr inbounds %struct.video_device, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @cxusb_medion_videodev_release, ptr %release.i, align 8
  %85 = load ptr, ptr %videodev.i, align 8
  %lock33.i = getelementptr inbounds %struct.video_device, ptr %85, i32 0, i32 26
  %86 = ptrtoint ptr %lock33.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %dev_lock.i, ptr %lock33.i, align 8
  %87 = load ptr, ptr %videodev.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %87, i32 0, i32 5, i32 8
  %88 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dvbdev, ptr %driver_data.i.i.i, align 4
  %89 = load ptr, ptr %videodev.i, align 8
  %fops.i.i = getelementptr inbounds %struct.video_device, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fops.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %call.i.i = call i32 @__video_register_device(ptr noundef %89, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool37.not.i66 = icmp eq i32 %call.i.i, 0
  br i1 %tobool37.not.i66, label %if.end22, label %do.end41.i69

do.end41.i69:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %udev, align 4
  %dev43.i68 = getelementptr inbounds %struct.usb_device, ptr %95, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i68, ptr noundef nonnull @.str.116, i32 noundef %call.i.i) #13
  %96 = ptrtoint ptr %videodev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %videodev.i, align 8
  call void @video_device_release(ptr noundef %97) #10
  br label %ret_unregister

if.end22:                                         ; preds = %if.end19.i
  %98 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv, align 8
  %call.i72 = call ptr @video_device_alloc() #10
  %radiodev.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %radiodev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i72, ptr %radiodev.i, align 4
  %tobool.not.i73 = icmp eq ptr %call.i72, null
  br i1 %tobool.not.i73, label %do.end.i76, label %if.end.i91

do.end.i76:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %udev, align 4
  %dev.i75 = getelementptr inbounds %struct.usb_device, ptr %102, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i75, ptr noundef nonnull @.str.181) #13
  br label %ret_vunreg

if.end.i91:                                       ; preds = %if.end22
  %device_caps.i77 = getelementptr inbounds %struct.video_device, ptr %call.i72, i32 0, i32 4
  %103 = ptrtoint ptr %device_caps.i77 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 327680, ptr %device_caps.i77, align 8
  %104 = ptrtoint ptr %radiodev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %radiodev.i, align 4
  %fops.i78 = getelementptr inbounds %struct.video_device, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %fops.i78 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @cxusb_radio_fops, ptr %fops.i78, align 4
  %v4l2dev.i79 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %99, i32 0, i32 5
  %107 = load ptr, ptr %radiodev.i, align 4
  %v4l2_dev.i80 = getelementptr inbounds %struct.video_device, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %v4l2_dev.i80 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %v4l2dev.i79, ptr %v4l2_dev.i80, align 4
  %109 = load ptr, ptr %radiodev.i, align 4
  %name.i81 = getelementptr inbounds %struct.video_device, ptr %109, i32 0, i32 12
  %call6.i = call i32 @strscpy(ptr noundef %name.i81, ptr noundef nonnull @.str.114, i32 noundef 32) #10
  %110 = ptrtoint ptr %radiodev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %radiodev.i, align 4
  %vfl_dir.i82 = getelementptr inbounds %struct.video_device, ptr %111, i32 0, i32 14
  %112 = ptrtoint ptr %vfl_dir.i82 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %vfl_dir.i82, align 4
  %113 = load ptr, ptr %radiodev.i, align 4
  %ioctl_ops.i83 = getelementptr inbounds %struct.video_device, ptr %113, i32 0, i32 24
  %114 = ptrtoint ptr %ioctl_ops.i83 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @cxusb_radio_ioctl, ptr %ioctl_ops.i83, align 4
  %115 = load ptr, ptr %radiodev.i, align 4
  %release.i84 = getelementptr inbounds %struct.video_device, ptr %115, i32 0, i32 23
  %116 = ptrtoint ptr %release.i84 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @video_device_release, ptr %release.i84, align 8
  %dev_lock.i85 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %99, i32 0, i32 11
  %117 = load ptr, ptr %radiodev.i, align 4
  %lock.i86 = getelementptr inbounds %struct.video_device, ptr %117, i32 0, i32 26
  %118 = ptrtoint ptr %lock.i86 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %dev_lock.i85, ptr %lock.i86, align 8
  %119 = load ptr, ptr %radiodev.i, align 4
  %driver_data.i.i.i87 = getelementptr inbounds %struct.video_device, ptr %119, i32 0, i32 5, i32 8
  %120 = ptrtoint ptr %driver_data.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %dvbdev, ptr %driver_data.i.i.i87, align 4
  %121 = load ptr, ptr %radiodev.i, align 4
  %fops.i.i88 = getelementptr inbounds %struct.video_device, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %fops.i.i88 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fops.i.i88, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %call.i.i89 = call i32 @__video_register_device(ptr noundef %121, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef %125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool14.not.i90 = icmp eq i32 %call.i.i89, 0
  br i1 %tobool14.not.i90, label %if.end.i91.cleanup_crit_edge, label %do.end18.i

if.end.i91.cleanup_crit_edge:                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18.i:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %udev, align 4
  %dev20.i = getelementptr inbounds %struct.usb_device, ptr %127, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.184, i32 noundef %call.i.i89) #13
  %128 = ptrtoint ptr %radiodev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %radiodev.i, align 4
  call void @video_device_release(ptr noundef %129) #10
  br label %ret_vunreg

ret_vunreg:                                       ; preds = %do.end18.i, %do.end.i76
  %retval.0.i92.ph = phi i32 [ -12, %do.end.i76 ], [ %call.i.i89, %do.end18.i ]
  %videodev = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 9
  %130 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %videodev, align 8
  call void @vb2_video_unregister_device(ptr noundef %131) #10
  br label %ret_unregister

ret_unregister:                                   ; preds = %ret_vunreg, %do.end41.i69, %do.end16.i, %do.end.i64, %cxusb_medion_register_analog_subdevs.exit.thread
  %ret.0 = phi i32 [ %retval.0.i92.ph, %ret_vunreg ], [ %retval.0.i.ph, %cxusb_medion_register_analog_subdevs.exit.thread ], [ -12, %do.end16.i ], [ %call.i.i, %do.end41.i69 ], [ %call.i60, %do.end.i64 ]
  %call28 = call i32 @v4l2_device_put(ptr noundef %v4l2dev) #10
  call void @wait_for_completion(ptr noundef %v4l2_release) #10
  br label %cleanup

cleanup:                                          ; preds = %ret_unregister, %if.end.i91.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ %call, %do.end4 ], [ %ret.0, %ret_unregister ], [ 0, %if.end.i91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_medion_v4l2_release(ptr noundef %v4l2_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %0 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dvbdev1 = getelementptr i8, ptr %v4l2_dev, i32 -104
  %1 = ptrtoint ptr %dvbdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvbdev1, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %4, i32 0, i32 5, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  %dev_lock = getelementptr i8, ptr %v4l2_dev, i32 148
  tail call void @mutex_destroy(ptr noundef %dev_lock) #10
  %v4l2_release = getelementptr i8, ptr %v4l2_dev, i32 908
  %call713 = tail call zeroext i1 @completion_done(ptr noundef %v4l2_release) #10
  br i1 %call713, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  tail call void @schedule() #10
  %call7 = tail call zeroext i1 @completion_done(ptr noundef %v4l2_release) #10
  br i1 %call7, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @complete(ptr noundef %v4l2_release) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_medion_v_complete_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1120
  %dvbdev1 = getelementptr i8, ptr %work, i32 -924
  %0 = ptrtoint ptr %dvbdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvbdev1, align 4
  %videodev = getelementptr i8, ptr %work, i32 -680
  %2 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %videodev, align 8
  %lock = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 8
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #10
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %6 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %8, i32 0, i32 5, i32 4
  %stop_streaming = getelementptr i8, ptr %work, i32 -64
  %9 = ptrtoint ptr %stop_streaming to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stop_streaming, align 8, !range !353
  %11 = zext i8 %10 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %11) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stop_streaming7 = getelementptr i8, ptr %work, i32 -64
  %12 = ptrtoint ptr %stop_streaming7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stop_streaming7, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end10:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dvbdev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dvbdev1, align 4
  %nexturb.i = getelementptr i8, ptr %work, i32 44
  %16 = ptrtoint ptr %nexturb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nexturb.i, align 4
  %urbcomplete.i = getelementptr i8, ptr %work, i32 -4
  %div3.i.i = lshr i32 %17, 5
  %arrayidx.i.i = getelementptr i32, ptr %urbcomplete.i, i32 %div3.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %17, 31
  %20 = shl nuw i32 1, %and.i.i
  %21 = and i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end10.cxusb_medion_v_complete_handle_urb.exit_crit_edge, label %if.end.i

if.end10.cxusb_medion_v_complete_handle_urb.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_v_complete_handle_urb.exit

if.end.i:                                         ; preds = %if.end10
  tail call void @_clear_bit(i32 noundef %17, ptr noundef %urbcomplete.i) #10
  %22 = ptrtoint ptr %nexturb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %nexturb.promoted.i = load i32, ptr %nexturb.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i
  %rem137.i = phi i32 [ %rem.i, %do.body.i.do.body.i_crit_edge ], [ %nexturb.promoted.i, %if.end.i ]
  %inc.i = add i32 %rem137.i, 1
  %rem.i = urem i32 %inc.i, 5
  %arrayidx.i = getelementptr %struct.cxusb_medion_dev, ptr %add.ptr, i32 0, i32 20, i32 %rem.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %24, null
  br i1 %tobool6.not.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %25 = ptrtoint ptr %nexturb.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %rem.i, ptr %nexturb.i, align 4
  %arrayidx8.i = getelementptr %struct.cxusb_medion_dev, ptr %add.ptr, i32 0, i32 20, i32 %17
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %28 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %do.end.i.if.end16.i_crit_edge, label %do.end14.i

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i, align 8
  %name.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %30, i32 0, i32 5, i32 4
  %status.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 12
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status.i, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i, i32 noundef %17, i32 noundef %32) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end14.i, %do.end.i.if.end16.i_crit_edge
  %status19.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 12
  %33 = ptrtoint ptr %status19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status19.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.end16.i.do.body66.i_crit_edge [
    i32 0, label %if.end16.i.if.then22.i_crit_edge
    i32 -18, label %if.end16.i.if.then22.i_crit_edge62
  ]

if.end16.i.if.then22.i_crit_edge62:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.end16.i.if.then22.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.end16.i.do.body66.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66.i

if.then22.i:                                      ; preds = %if.end16.i.if.then22.i_crit_edge, %if.end16.i.if.then22.i_crit_edge62
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 24
  %36 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp23138.i = icmp sgt i32 %37, 0
  br i1 %cmp23138.i, label %if.then22.i.for.body.i_crit_edge, label %if.then22.i.do.body26.i_crit_edge

if.then22.i.do.body26.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

if.then22.i.for.body.i_crit_edge:                 ; preds = %if.then22.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then22.i.for.body.i_crit_edge
  %len.0140.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then22.i.for.body.i_crit_edge ]
  %i.0139.i = phi i32 [ %inc25.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then22.i.for.body.i_crit_edge ]
  %actual_length.i = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 %i.0139.i, i32 2
  %38 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual_length.i, align 4
  %add.i = add i32 %39, %len.0140.i
  %inc25.i = add nuw nsw i32 %i.0139.i, 1
  %exitcond.not.i = icmp eq i32 %inc25.i, %37
  br i1 %exitcond.not.i, label %for.body.i.do.body26.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.do.body26.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

do.body26.i:                                      ; preds = %for.body.i.do.body26.i_crit_edge, %if.then22.i.do.body26.i_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %if.then22.i.do.body26.i_crit_edge ], [ %add.i, %for.body.i.do.body26.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %40 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and29.i = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body26.i.if.end40.i_crit_edge, label %do.end34.i

do.body26.i.if.end40.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

do.end34.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i, align 8
  %name37.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %42, i32 0, i32 5, i32 4
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name37.i, i32 noundef %17, i32 noundef %len.0.lcssa.i) #13
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end34.i, %do.body26.i.if.end40.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa.i)
  %cmp43.not.i = icmp eq i32 %len.0.lcssa.i, 0
  br i1 %cmp43.not.i, label %if.end40.i.do.body66.i_crit_edge, label %do.body45.i

if.end40.i.do.body66.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66.i

do.body45.i:                                      ; preds = %if.end40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %43 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and48.i = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %do.body45.i.if.end59.i_crit_edge, label %do.end53.i

do.body45.i.if.end59.i_crit_edge:                 ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

do.end53.i:                                       ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i, align 8
  %name56.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %45, i32 0, i32 5, i32 4
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name56.i) #13
  br label %if.end59.i

if.end59.i:                                       ; preds = %do.end53.i, %do.body45.i.if.end59.i_crit_edge
  %auxbuf.i = getelementptr i8, ptr %work, i32 -48
  %46 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp32.i.i = icmp sgt i32 %47, 0
  br i1 %cmp32.i.i, label %if.end59.i.for.body.i.i_crit_edge, label %if.end59.i.for.end.i.i_crit_edge

if.end59.i.for.end.i.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.end59.i.for.body.i.i_crit_edge:                ; preds = %if.end59.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end59.i.for.body.i.i_crit_edge
  %len.034.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end59.i.for.body.i.i_crit_edge ]
  %i.033.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end59.i.for.body.i.i_crit_edge ]
  %actual_length.i.i = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 %i.033.i.i, i32 2
  %48 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %actual_length.i.i, align 4
  %add.i.i = add i32 %49, %len.034.i.i
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %47
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end59.i.for.end.i.i_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %if.end59.i.for.end.i.i_crit_edge ], [ %add.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %len.i.i.i = getelementptr i8, ptr %work, i32 -44
  %50 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %len.0.lcssa.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %51, %len.0.lcssa.i.i
  br i1 %cmp.not.i.i.i, label %for.end.i.i.if.end22.i.i.i_crit_edge, label %do.end.i.i.i, !prof !354

for.end.i.i.if.end22.i.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i.i

do.end.i.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 118, i32 noundef 9, ptr noundef null) #10
  %52 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i.i = add i32 %53, -1
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %do.end.i.i.i, %for.end.i.i.if.end22.i.i.i_crit_edge
  %howmuch.addr.0.i.i.i = phi i32 [ %sub.i.i.i, %do.end.i.i.i ], [ %len.0.lcssa.i.i, %for.end.i.i.if.end22.i.i.i_crit_edge ]
  %54 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i.i, align 4
  %paylen.i.i.i.i = getelementptr i8, ptr %work, i32 -40
  %56 = ptrtoint ptr %paylen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %paylen.i.i.i.i, align 4
  %sub24.i.i.i = sub i32 %55, %57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %58 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i.i.i = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.end22.i.i.i.if.end33.i.i.i_crit_edge, label %do.end30.i.i.i

if.end22.i.i.i.if.end33.i.i.i_crit_edge:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i.i

do.end30.i.i.i:                                   ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %60, i32 0, i32 5, i32 4
  %call32.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name.i.i.i, i32 noundef %sub24.i.i.i) #13
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %do.end30.i.i.i, %if.end22.i.i.i.if.end33.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %howmuch.addr.0.i.i.i, i32 %sub24.i.i.i)
  %cmp36.not.i.i.i = icmp ugt i32 %howmuch.addr.0.i.i.i, %sub24.i.i.i
  br i1 %cmp36.not.i.i.i, label %if.end38.i.i.i, label %if.end33.i.i.i.cxusb_auxbuf_make_space.exit.i.i_crit_edge

if.end33.i.i.i.cxusb_auxbuf_make_space.exit.i.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_auxbuf_make_space.exit.i.i

if.end38.i.i.i:                                   ; preds = %if.end33.i.i.i
  %sub39.i.i.i = sub i32 %howmuch.addr.0.i.i.i, %sub24.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %61 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and43.i.i.i = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %and43.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %if.end38.i.i.i.if.end54.i.i.i_crit_edge, label %do.end48.i.i.i

if.end38.i.i.i.if.end54.i.i.i_crit_edge:          ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i.i.i

do.end48.i.i.i:                                   ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i, align 8
  %name51.i.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %63, i32 0, i32 5, i32 4
  %call53.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name51.i.i.i, i32 noundef %sub39.i.i.i) #13
  br label %if.end54.i.i.i

if.end54.i.i.i:                                   ; preds = %do.end48.i.i.i, %if.end38.i.i.i.if.end54.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %howmuch.addr.0.i.i.i, i32 %sub24.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %howmuch.addr.0.i.i.i, %sub24.i.i.i
  br i1 %cmp.i.i.i.i, label %if.end54.i.i.i.cxusb_auxbuf_make_space.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end54.i.i.i.cxusb_auxbuf_make_space.exit.i.i_crit_edge: ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_auxbuf_make_space.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end54.i.i.i
  %64 = ptrtoint ptr %paylen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %paylen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %sub39.i.i.i)
  %cmp1.i.i.i.i = icmp ult i32 %65, %sub39.i.i.i
  br i1 %cmp1.i.i.i.i, label %do.end.i.i.i.i, label %do.body25.critedge.i.i.i.i, !prof !355

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 96, i32 noundef 9, ptr noundef null) #10
  br label %cxusb_auxbuf_make_space.exit.i.i

do.body25.critedge.i.i.i.i:                       ; preds = %if.end.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %66 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i.i.i.i = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool26.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool26.not.i.i.i.i, label %do.body25.critedge.i.i.i.i.if.end33.i.i.i.i_crit_edge, label %do.end30.i.i.i.i

do.body25.critedge.i.i.i.i.if.end33.i.i.i.i_crit_edge: ; preds = %do.body25.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i.i.i

do.end30.i.i.i.i:                                 ; preds = %do.body25.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i, align 8
  %name.i.i.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %68, i32 0, i32 5, i32 4
  %sub.i.i.i.i = sub i32 %65, %sub39.i.i.i
  %call.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i.i.i.i, i32 noundef %sub39.i.i.i, i32 noundef %sub.i.i.i.i) #13
  br label %if.end33.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %do.end30.i.i.i.i, %do.body25.critedge.i.i.i.i.if.end33.i.i.i.i_crit_edge
  %69 = ptrtoint ptr %auxbuf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %auxbuf.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %70, i32 %sub39.i.i.i
  %71 = ptrtoint ptr %paylen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %paylen.i.i.i.i, align 4
  %sub38.i.i.i.i = sub i32 %72, %sub39.i.i.i
  %73 = call ptr @memmove(ptr %70, ptr %add.ptr.i.i.i.i, i32 %sub38.i.i.i.i)
  %74 = load i32, ptr %paylen.i.i.i.i, align 4
  %sub40.i.i.i.i = sub i32 %74, %sub39.i.i.i
  store i32 %sub40.i.i.i.i, ptr %paylen.i.i.i.i, align 4
  br label %cxusb_auxbuf_make_space.exit.i.i

cxusb_auxbuf_make_space.exit.i.i:                 ; preds = %if.end33.i.i.i.i, %do.end.i.i.i.i, %if.end54.i.i.i.cxusb_auxbuf_make_space.exit.i.i_crit_edge, %if.end33.i.i.i.cxusb_auxbuf_make_space.exit.i.i_crit_edge
  %75 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp335.i.i = icmp sgt i32 %76, 0
  br i1 %cmp335.i.i, label %for.body4.lr.ph.i.i, label %cxusb_auxbuf_make_space.exit.i.i.cxusb_auxbuf_append_urb.exit.i_crit_edge

cxusb_auxbuf_make_space.exit.i.i.cxusb_auxbuf_append_urb.exit.i_crit_edge: ; preds = %cxusb_auxbuf_make_space.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_auxbuf_append_urb.exit.i

for.body4.lr.ph.i.i:                              ; preds = %cxusb_auxbuf_make_space.exit.i.i
  %transfer_buffer.i.i = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 14
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %i.136.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %inc14.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ]
  %arrayidx6.i.i = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 %i.136.i.i
  %actual_length7.i.i = getelementptr %struct.urb, ptr %27, i32 0, i32 29, i32 %i.136.i.i, i32 2
  %77 = ptrtoint ptr %actual_length7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %actual_length7.i.i, align 4
  %79 = ptrtoint ptr %auxbuf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %auxbuf.i, align 4
  %81 = ptrtoint ptr %paylen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %paylen.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 %82
  %83 = ptrtoint ptr %transfer_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %transfer_buffer.i.i, align 4
  %85 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx6.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %84, i32 %86
  %87 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr10.i.i, i32 %78)
  %88 = load i32, ptr %paylen.i.i.i.i, align 4
  %add12.i.i = add i32 %88, %78
  store i32 %add12.i.i, ptr %paylen.i.i.i.i, align 4
  %inc14.i.i = add nuw nsw i32 %i.136.i.i, 1
  %89 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %number_of_packets.i, align 4
  %cmp3.i.i = icmp slt i32 %inc14.i.i, %90
  br i1 %cmp3.i.i, label %for.body4.i.i.for.body4.i.i_crit_edge, label %for.body4.i.i.cxusb_auxbuf_append_urb.exit.i_crit_edge

for.body4.i.i.cxusb_auxbuf_append_urb.exit.i_crit_edge: ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_auxbuf_append_urb.exit.i

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.i

cxusb_auxbuf_append_urb.exit.i:                   ; preds = %for.body4.i.i.cxusb_auxbuf_append_urb.exit.i_crit_edge, %cxusb_auxbuf_make_space.exit.i.i.cxusb_auxbuf_append_urb.exit.i_crit_edge
  %frombool.i = zext i1 %cmp36.not.i.i.i to i8
  br label %do.body66.i

do.body66.i:                                      ; preds = %cxusb_auxbuf_append_urb.exit.i, %if.end40.i.do.body66.i_crit_edge, %if.end16.i.do.body66.i_crit_edge
  %auxbuf_reset.0 = phi i8 [ 0, %if.end16.i.do.body66.i_crit_edge ], [ 0, %if.end40.i.do.body66.i_crit_edge ], [ %frombool.i, %cxusb_auxbuf_append_urb.exit.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %91 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and69.i = and i32 %91, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %do.body66.i.if.end80.i_crit_edge, label %do.end74.i

do.body66.i.if.end80.i_crit_edge:                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

do.end74.i:                                       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv.i, align 8
  %name77.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %93, i32 0, i32 5, i32 4
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name77.i, i32 noundef %17) #13
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.end74.i, %do.body66.i.if.end80.i_crit_edge
  %call83.i = tail call i32 @usb_submit_urb(ptr noundef %27, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.not.i = icmp eq i32 %call83.i, 0
  br i1 %cmp84.not.i, label %if.end80.i.if.end89.i_crit_edge, label %do.end88.i

if.end80.i.if.end89.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i

do.end88.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 2
  %94 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %95, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %17, i32 noundef %call83.i) #13
  br label %if.end89.i

if.end89.i:                                       ; preds = %do.end88.i, %if.end80.i.if.end89.i_crit_edge
  %96 = ptrtoint ptr %nexturb.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nexturb.i, align 4
  %div3.i132.i = lshr i32 %97, 5
  %arrayidx.i133.i = getelementptr i32, ptr %urbcomplete.i, i32 %div3.i132.i
  %98 = ptrtoint ptr %arrayidx.i133.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %arrayidx.i133.i, align 4
  %and.i134.i = and i32 %97, 31
  %100 = shl nuw i32 1, %and.i134.i
  %101 = and i32 %100, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool93.i = icmp ne i32 %101, 0
  br label %cxusb_medion_v_complete_handle_urb.exit

cxusb_medion_v_complete_handle_urb.exit:          ; preds = %if.end89.i, %if.end10.cxusb_medion_v_complete_handle_urb.exit_crit_edge
  %auxbuf_reset.1 = phi i8 [ 0, %if.end10.cxusb_medion_v_complete_handle_urb.exit_crit_edge ], [ %auxbuf_reset.0, %if.end89.i ]
  %retval.0.i = phi i1 [ false, %if.end10.cxusb_medion_v_complete_handle_urb.exit_crit_edge ], [ %tobool93.i, %if.end89.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %auxbuf_reset.1)
  %tobool12 = icmp ne i8 %auxbuf_reset.1, 0
  %102 = ptrtoint ptr %dvbdev1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dvbdev1, align 4
  %bt6562.i = getelementptr i8, ptr %work, i32 48
  %104 = ptrtoint ptr %bt6562.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bt6562.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i = icmp eq i32 %105, 0
  br i1 %cmp.i, label %if.then.i, label %cxusb_medion_v_complete_handle_urb.exit.if.end6.i_crit_edge

cxusb_medion_v_complete_handle_urb.exit.if.end6.i_crit_edge: ; preds = %cxusb_medion_v_complete_handle_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i:                                        ; preds = %cxusb_medion_v_complete_handle_urb.exit
  %buflist.i = getelementptr i8, ptr %work, i32 80
  %106 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %buflist.i, align 4
  %cmp.i.not.i = icmp eq ptr %107, %buflist.i
  br i1 %cmp.i.not.i, label %do.end.i50, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %add.ptr.i = getelementptr i8, ptr %107, i32 -736
  %vbuf.i = getelementptr i8, ptr %work, i32 72
  %108 = ptrtoint ptr %vbuf.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr.i, ptr %vbuf.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %107) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.i.list_del.exit.i_crit_edge

if.then3.i.list_del.exit.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %prev.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %107, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %110, ptr %prev1.i.i.i.i, align 4
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %112, ptr %110, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then3.i.list_del.exit.i_crit_edge
  %115 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 256 to ptr), ptr %107, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end6.i

do.end.i50:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %udev.i48 = getelementptr inbounds %struct.dvb_usb_device, ptr %103, i32 0, i32 2
  %117 = ptrtoint ptr %udev.i48 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %udev.i48, align 4
  %dev.i49 = getelementptr inbounds %struct.usb_device, ptr %118, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i49, ptr noundef nonnull @.str.70) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i50, %list_del.exit.i, %cxusb_medion_v_complete_handle_urb.exit.if.end6.i_crit_edge
  %119 = ptrtoint ptr %bt6562.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bt6562.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp8.i = icmp eq i32 %120, 0
  %brmerge.i = or i1 %tobool12, %cmp8.i
  br i1 %brmerge.i, label %do.body11.i, label %if.end6.i.if.end33.i_crit_edge

if.end6.i.if.end33.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

do.body11.i:                                      ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %121 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i51 = and i32 %121, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool12.not.i = icmp eq i32 %and.i51, 0
  br i1 %tobool12.not.i, label %do.body11.i.if.end19.i_crit_edge, label %do.end16.i

do.body11.i.if.end19.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

do.end16.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i52 = getelementptr inbounds %struct.dvb_usb_device, ptr %103, i32 0, i32 18
  %122 = ptrtoint ptr %priv.i52 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv.i52, align 8
  %name.i53 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %123, i32 0, i32 5, i32 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.i53) #13
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end16.i, %do.body11.i.if.end19.i_crit_edge
  %pos.i = getelementptr i8, ptr %work, i32 56
  %124 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %pos.i, align 4
  %125 = ptrtoint ptr %bt6562.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %bt6562.i, align 4
  %fmode.i = getelementptr i8, ptr %work, i32 52
  %126 = ptrtoint ptr %fmode.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %fmode.i, align 4
  %line.i = getelementptr i8, ptr %work, i32 60
  %127 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %line.i, align 4
  %vbuf23.i = getelementptr i8, ptr %work, i32 72
  %128 = ptrtoint ptr %vbuf23.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vbuf23.i, align 8
  %tobool24.not.i = icmp eq ptr %129, null
  br i1 %tobool24.not.i, label %if.end19.i.if.end33thread-pre-split.i_crit_edge, label %if.then25.i

if.end19.i.if.end33thread-pre-split.i_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33thread-pre-split.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i64 @ktime_get() #10
  %130 = ptrtoint ptr %vbuf23.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vbuf23.i, align 8
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %133 = load ptr, ptr %vbuf23.i, align 8
  %call31.i = tail call ptr @vb2_plane_vaddr(ptr noundef %133, i32 noundef 0) #10
  %buf.i = getelementptr i8, ptr %work, i32 68
  %134 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call31.i, ptr %buf.i, align 4
  br label %if.end33thread-pre-split.i

if.end33thread-pre-split.i:                       ; preds = %if.then25.i, %if.end19.i.if.end33thread-pre-split.i_crit_edge
  %135 = ptrtoint ptr %bt6562.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pr.i = load i32, ptr %bt6562.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33thread-pre-split.i, %if.end6.i.if.end33.i_crit_edge
  %136 = phi i32 [ %.pr.i, %if.end33thread-pre-split.i ], [ %120, %if.end6.i.if.end33.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp35.i = icmp eq i32 %136, 1
  br i1 %cmp35.i, label %if.then36.i, label %if.end60.i

if.then36.i:                                      ; preds = %if.end33.i
  %auxbuf.i54 = getelementptr i8, ptr %work, i32 -48
  %height.i = getelementptr i8, ptr %work, i32 -56
  %137 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %height.i, align 8
  %div185.i = lshr i32 %138, 1
  %width.i = getelementptr i8, ptr %work, i32 -60
  %139 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %width.i, align 4
  %mul.i = shl i32 %140, 1
  %call37.i = tail call fastcc zeroext i1 @cxusb_medion_copy_field(ptr noundef %103, ptr noundef %auxbuf.i54, ptr noundef %bt6562.i, i1 noundef zeroext true, i32 noundef %div185.i, i32 noundef %mul.i) #10
  br i1 %call37.i, label %do.body40.i, label %if.then36.i.cxusb_medion_v_process_auxbuf.exit_crit_edge

if.then36.i.cxusb_medion_v_process_auxbuf.exit_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_v_process_auxbuf.exit

do.body40.i:                                      ; preds = %if.then36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %141 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and43.i = and i32 %141, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body40.i.if.end60.thread.i_crit_edge, label %do.end48.i

do.body40.i.if.end60.thread.i_crit_edge:          ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.thread.i

do.end48.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv42.i = getelementptr inbounds %struct.dvb_usb_device, ptr %103, i32 0, i32 18
  %142 = ptrtoint ptr %priv42.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %priv42.i, align 8
  %name51.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %143, i32 0, i32 5, i32 4
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name51.i) #13
  br label %if.end60.thread.i

if.end60.thread.i:                                ; preds = %do.end48.i, %do.body40.i.if.end60.thread.i_crit_edge
  %144 = ptrtoint ptr %bt6562.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %bt6562.i, align 4
  %fmode58.i = getelementptr i8, ptr %work, i32 52
  %145 = ptrtoint ptr %fmode58.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %fmode58.i, align 4
  %line59.i = getelementptr i8, ptr %work, i32 60
  %146 = ptrtoint ptr %line59.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %line59.i, align 4
  br label %if.then63.i

if.end60.i:                                       ; preds = %if.end33.i
  %147 = ptrtoint ptr %bt6562.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr189.i = load i32, ptr %bt6562.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr189.i)
  %cmp62.i = icmp eq i32 %.pr189.i, 2
  br i1 %cmp62.i, label %if.end60.i.if.then63.i_crit_edge, label %if.end60.i.do.body18_crit_edge

if.end60.i.do.body18_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.end60.i.if.then63.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then63.i

if.then63.i:                                      ; preds = %if.end60.i.if.then63.i_crit_edge, %if.end60.thread.i
  %auxbuf64.i = getelementptr i8, ptr %work, i32 -48
  %height65.i = getelementptr i8, ptr %work, i32 -56
  %148 = ptrtoint ptr %height65.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %height65.i, align 8
  %div66184.i = lshr i32 %149, 1
  %width67.i = getelementptr i8, ptr %work, i32 -60
  %150 = ptrtoint ptr %width67.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %width67.i, align 4
  %mul68.i = shl i32 %151, 1
  %call69.i = tail call fastcc zeroext i1 @cxusb_medion_copy_field(ptr noundef %103, ptr noundef %auxbuf64.i, ptr noundef %bt6562.i, i1 noundef zeroext false, i32 noundef %div66184.i, i32 noundef %mul68.i) #10
  br i1 %call69.i, label %if.end71.i, label %if.then63.i.cxusb_medion_v_process_auxbuf.exit_crit_edge

if.then63.i.cxusb_medion_v_process_auxbuf.exit_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_v_process_auxbuf.exit

if.end71.i:                                       ; preds = %if.then63.i
  %pos73.i = getelementptr i8, ptr %work, i32 56
  %152 = ptrtoint ptr %pos73.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pos73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp.i186.i = icmp eq i32 %153, 0
  br i1 %cmp.i186.i, label %if.end71.i.cxusb_auxbuf_head_trim.exit.i_crit_edge, label %if.end.i.i

if.end71.i.cxusb_auxbuf_head_trim.exit.i_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_auxbuf_head_trim.exit.i

if.end.i.i:                                       ; preds = %if.end71.i
  %paylen.i.i = getelementptr i8, ptr %work, i32 -40
  %154 = ptrtoint ptr %paylen.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %paylen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %153)
  %cmp1.i.i = icmp ult i32 %155, %153
  br i1 %cmp1.i.i, label %do.end.i.i, label %do.body25.critedge.i.i, !prof !355

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 96, i32 noundef 9, ptr noundef null) #10
  br label %cxusb_auxbuf_head_trim.exit.i

do.body25.critedge.i.i:                           ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %156 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i.i55 = and i32 %156, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool26.not.i.i = icmp eq i32 %and.i.i55, 0
  br i1 %tobool26.not.i.i, label %do.body25.critedge.i.i.if.end33.i.i_crit_edge, label %do.end30.i.i

do.body25.critedge.i.i.if.end33.i.i_crit_edge:    ; preds = %do.body25.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

do.end30.i.i:                                     ; preds = %do.body25.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %103, i32 0, i32 18
  %157 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %priv.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %158, i32 0, i32 5, i32 4
  %sub.i.i = sub i32 %155, %153
  %call.i187.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i.i, i32 noundef %153, i32 noundef %sub.i.i) #13
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %do.end30.i.i, %do.body25.critedge.i.i.if.end33.i.i_crit_edge
  %159 = ptrtoint ptr %auxbuf64.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %auxbuf64.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %160, i32 %153
  %161 = ptrtoint ptr %paylen.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %paylen.i.i, align 4
  %sub38.i.i = sub i32 %162, %153
  %163 = call ptr @memmove(ptr %160, ptr %add.ptr.i.i56, i32 %sub38.i.i)
  %164 = load i32, ptr %paylen.i.i, align 4
  %sub40.i.i = sub i32 %164, %153
  store i32 %sub40.i.i, ptr %paylen.i.i, align 4
  br label %cxusb_auxbuf_head_trim.exit.i

cxusb_auxbuf_head_trim.exit.i:                    ; preds = %if.end33.i.i, %do.end.i.i, %if.end71.i.cxusb_auxbuf_head_trim.exit.i_crit_edge
  %165 = ptrtoint ptr %bt6562.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %bt6562.i, align 4
  %vbuf75.i = getelementptr i8, ptr %work, i32 72
  %166 = ptrtoint ptr %vbuf75.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %vbuf75.i, align 8
  %tobool76.not.i = icmp eq ptr %167, null
  br i1 %tobool76.not.i, label %do.body113.i, label %if.then77.i

if.then77.i:                                      ; preds = %cxusb_auxbuf_head_trim.exit.i
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp.not.i.i = icmp eq i32 %169, 0
  br i1 %cmp.not.i.i, label %if.then77.i.vb2_set_plane_payload.exit.i_crit_edge, label %if.then.i.i

if.then77.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit.i

if.then.i.i:                                      ; preds = %if.then77.i
  %170 = ptrtoint ptr %width67.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %width67.i, align 4
  %172 = ptrtoint ptr %height65.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %height65.i, align 8
  %mul83.i = shl i32 %171, 1
  %mul84.i = mul i32 %mul83.i, %173
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %167, i32 0, i32 10, i32 0, i32 4
  %174 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %mul84.i)
  %cmp1.i188.i = icmp ult i32 %175, %mul84.i
  br i1 %cmp1.i188.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b1.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !354

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.108, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %176 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %177, %if.then38.i.i ], [ %mul84.i, %if.then.i.i.if.end42.i.i_crit_edge ]
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %167, i32 0, i32 10, i32 0, i32 3
  %178 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %if.then77.i.vb2_set_plane_payload.exit.i_crit_edge
  %field_order.i = getelementptr i8, ptr %work, i32 -52
  %179 = ptrtoint ptr %field_order.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %field_order.i, align 4
  %181 = ptrtoint ptr %vbuf75.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %vbuf75.i, align 8
  %field.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %180, ptr %field.i, align 4
  %vbuf_sequence.i = getelementptr i8, ptr %work, i32 76
  %184 = ptrtoint ptr %vbuf_sequence.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %vbuf_sequence.i, align 4
  %inc.i57 = add i32 %185, 1
  store i32 %inc.i57, ptr %vbuf_sequence.i, align 4
  %186 = load ptr, ptr %vbuf75.i, align 8
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %185, ptr %sequence.i, align 8
  %188 = load ptr, ptr %vbuf75.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %188, i32 noundef 5) #10
  %189 = ptrtoint ptr %vbuf75.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %vbuf75.i, align 8
  %buf94.i = getelementptr i8, ptr %work, i32 68
  %190 = ptrtoint ptr %buf94.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %buf94.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %191 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and98.i = and i32 %191, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %vb2_set_plane_payload.exit.i.do.body18_crit_edge, label %do.end103.i

vb2_set_plane_payload.exit.i.do.body18_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.end103.i:                                      ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv97.i = getelementptr inbounds %struct.dvb_usb_device, ptr %103, i32 0, i32 18
  %192 = ptrtoint ptr %priv97.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %priv97.i, align 8
  %name106.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %193, i32 0, i32 5, i32 4
  %call108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name106.i) #13
  br label %do.body18

do.body113.i:                                     ; preds = %cxusb_auxbuf_head_trim.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %194 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and116.i = and i32 %194, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %do.body113.i.if.end127.i_crit_edge, label %do.end121.i

do.body113.i.if.end127.i_crit_edge:               ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127.i

do.end121.i:                                      ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv115.i = getelementptr inbounds %struct.dvb_usb_device, ptr %103, i32 0, i32 18
  %195 = ptrtoint ptr %priv115.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %priv115.i, align 8
  %name124.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %196, i32 0, i32 5, i32 4
  %call126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name124.i) #13
  br label %if.end127.i

if.end127.i:                                      ; preds = %do.end121.i, %do.body113.i.if.end127.i_crit_edge
  %vbuf_sequence130.i = getelementptr i8, ptr %work, i32 76
  %197 = ptrtoint ptr %vbuf_sequence130.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vbuf_sequence130.i, align 4
  %inc131.i = add i32 %198, 1
  store i32 %inc131.i, ptr %vbuf_sequence130.i, align 4
  br label %do.body18

cxusb_medion_v_process_auxbuf.exit:               ; preds = %if.then63.i.cxusb_medion_v_process_auxbuf.exit_crit_edge, %if.then36.i.cxusb_medion_v_process_auxbuf.exit_crit_edge
  br i1 %retval.0.i, label %cxusb_medion_v_process_auxbuf.exit.do.body18_crit_edge, label %cxusb_medion_v_process_auxbuf.exit.unlock_crit_edge

cxusb_medion_v_process_auxbuf.exit.unlock_crit_edge: ; preds = %cxusb_medion_v_process_auxbuf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

cxusb_medion_v_process_auxbuf.exit.do.body18_crit_edge: ; preds = %cxusb_medion_v_process_auxbuf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.body18:                                        ; preds = %cxusb_medion_v_process_auxbuf.exit.do.body18_crit_edge, %if.end127.i, %do.end103.i, %vb2_set_plane_payload.exit.i.do.body18_crit_edge, %if.end60.i.do.body18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %199 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and21 = and i32 %199, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body18.if.end32_crit_edge, label %do.end26

do.body18.if.end32_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end26:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %priv, align 8
  %name29 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %201, i32 0, i32 5, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name29) #13
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %do.body18.if.end32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %202 = load ptr, ptr @system_wq, align 4
  %call.i.i59 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %202, ptr noundef %work) #10
  br label %unlock

unlock:                                           ; preds = %if.end32, %cxusb_medion_v_process_auxbuf.exit.unlock_crit_edge, %if.end.unlock_crit_edge
  %203 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %videodev, align 8
  %lock38 = getelementptr inbounds %struct.video_device, ptr %204, i32 0, i32 26
  %205 = ptrtoint ptr %lock38 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %lock38, align 8
  tail call void @mutex_unlock(ptr noundef %206) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxusb_medion_unregister_analog(ptr nocapture noundef readonly %dvbdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %2 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 5, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %radiodev = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %radiodev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %radiodev, align 4
  tail call void @video_unregister_device(ptr noundef %4) #10
  %videodev = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %videodev, align 8
  tail call void @vb2_video_unregister_device(ptr noundef %6) #10
  %v4l2dev5 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 5
  %call6 = tail call i32 @v4l2_device_put(ptr noundef %v4l2dev5) #10
  %v4l2_release = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 28
  tail call void @wait_for_completion(ptr noundef %v4l2_release) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %7 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and10 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end21_crit_edge, label %do.end15

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %name18 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %9, i32 0, i32 5, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name18) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end15, %if.end.if.end21_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cxusb_medion_copy_field(ptr nocapture noundef readonly %dvbdev, ptr nocapture noundef readonly %auxbuf, ptr noundef %bt656, i1 noundef zeroext %firstfield, i32 noundef %maxlines, i32 noundef %maxlinesmpls) unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %line = getelementptr inbounds %struct.cxusb_bt656_params, ptr %bt656, i32 0, i32 3
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %maxlines)
  %cmp133 = icmp ult i32 %1, %maxlines
  br i1 %cmp133, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pos = getelementptr inbounds %struct.cxusb_bt656_params, ptr %bt656, i32 0, i32 2
  %paylen.i = getelementptr inbounds %struct.cxusb_medion_auxbuf, ptr %auxbuf, i32 0, i32 2
  %fmode.i85 = getelementptr inbounds %struct.cxusb_bt656_params, ptr %bt656, i32 0, i32 1
  %buf.i13.i = getelementptr inbounds %struct.cxusb_bt656_params, ptr %bt656, i32 0, i32 5
  %linesamples.i15.i = getelementptr inbounds %struct.cxusb_bt656_params, ptr %bt656, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %maxlinesmpls)
  %cmp.i.i87 = icmp ugt i32 %maxlinesmpls, 15
  %div40.i.i = lshr i32 %maxlinesmpls, 2
  %2 = tail call i32 @llvm.umin.i32(i32 %div40.i.i, i32 64) #10
  %3 = select i1 %cmp.i.i87, i32 %2, i32 3
  %sub.i.i90 = add nsw i32 %3, -3
  %priv.i.i95 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %4 = zext i1 %firstfield to i8
  %cond.i.i = select i1 %firstfield, i32 49, i32 50
  %conv16.i.i = zext i1 %firstfield to i32
  br label %while.body

while.body:                                       ; preds = %cleanup36.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %1, %while.body.lr.ph ], [ %129, %cleanup36.while.body_crit_edge ]
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos, align 4
  %add.i = add i32 %7, 1
  %8 = ptrtoint ptr %paylen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paylen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i = icmp ugt i32 %add.i, %9
  br i1 %cmp.i, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %auxbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %auxbuf, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %val.0.copyload = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %val.0.copyload)
  %cmp2 = icmp eq i8 %val.0.copyload, -1
  br i1 %cmp2, label %if.then4, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then4:                                         ; preds = %if.end
  %add.i75 = add i32 %7, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i75, i32 %9)
  %cmp.i77 = icmp ugt i32 %add.i75, %9
  br i1 %cmp.i77, label %if.then4.while.end_crit_edge, label %if.end8

if.then4.while.end_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end8:                                          ; preds = %if.then4
  %13 = ptrtoint ptr %auxbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %auxbuf, align 4
  %add.ptr.i78 = getelementptr i8, ptr %14, i32 %add.i
  %15 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_load1_noabort(i32 %15)
  %buf.sroa.4.1.copyload = load i8, ptr %add.ptr.i78, align 1
  %buf.sroa.7.1.add.ptr.i78.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i78, i32 1
  %16 = ptrtoint ptr %buf.sroa.7.1.add.ptr.i78.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %buf.sroa.7.1.copyload = load i8, ptr %buf.sroa.7.1.add.ptr.i78.sroa_idx, align 1
  %buf.sroa.9.1.add.ptr.i78.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i78, i32 2
  %17 = ptrtoint ptr %buf.sroa.9.1.add.ptr.i78.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %buf.sroa.9.1.copyload = load i8, ptr %buf.sroa.9.1.add.ptr.i78.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %buf.sroa.4.1.copyload)
  %cmp12 = icmp eq i8 %buf.sroa.4.1.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %buf.sroa.7.1.copyload)
  %cmp17 = icmp eq i8 %buf.sroa.7.1.copyload, 0
  %or.cond = select i1 %cmp12, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.then19, label %if.end8.if.end32_crit_edge

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp eq i32 %5, 0
  br i1 %cmp3.i, label %if.then19.if.end23_crit_edge, label %lor.lhs.false.i

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

lor.lhs.false.i:                                  ; preds = %if.then19
  %18 = lshr i8 %buf.sroa.9.1.copyload, 6
  %.lobit.i = and i8 %18, 1
  %19 = xor i8 %.lobit.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %4)
  %cmp8.i = icmp eq i8 %19, %4
  br i1 %cmp8.i, label %lor.lhs.false.i.if.end23_crit_edge, label %if.end.i81

lor.lhs.false.i.if.end23_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i81:                                       ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmode.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp10.i = icmp eq i32 %21, 1
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i81.if.end53.i_crit_edge

if.end.i81.if.end53.i_crit_edge:                  ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then12.i:                                      ; preds = %if.end.i81
  %22 = ptrtoint ptr %linesamples.i15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %linesamples.i15.i, align 4
  %sub.i = sub i32 %maxlinesmpls, %23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %24 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and13.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end20.i_crit_edge, label %do.end.i

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

do.end.i:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i.i95, align 8
  %name.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %26, i32 0, i32 5, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name.i, i32 noundef %cond.i.i, i32 noundef %5) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.then12.i.if.end20.i_crit_edge
  %27 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf.i13.i, align 4
  %tobool24.not.i = icmp eq ptr %28, null
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %maxlinesmpls)
  %cmp25.not.i = icmp eq i32 %23, %maxlinesmpls
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %cmp25.not.i
  br i1 %or.cond.i, label %if.end20.i.if.end51.i_crit_edge, label %if.then27.i

if.end20.i.if.end51.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then27.i:                                      ; preds = %if.end20.i
  %29 = call ptr @memset(ptr %28, i32 0, i32 %sub.i)
  %30 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf.i13.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %31, i32 %sub.i
  store ptr %add.ptr.i82, ptr %buf.i13.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %32 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and33.i = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.then27.i.if.end51.i_crit_edge, label %do.end38.i

if.then27.i.if.end51.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

do.end38.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i.i95, align 8
  %name41.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %34, i32 0, i32 5, i32 4
  %35 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %line, align 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name41.i, i32 noundef %cond.i.i, i32 noundef %36, i32 noundef %sub.i, i32 noundef %maxlinesmpls) #13
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end38.i, %if.then27.i.if.end51.i_crit_edge, %if.end20.i.if.end51.i_crit_edge
  %37 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %line, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %line, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end51.i, %if.end.i81.if.end53.i_crit_edge
  %39 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %line, align 4
  %sub55.i = sub i32 %maxlines, %40
  %41 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf.i13.i, align 4
  %tobool57.not.i = icmp eq ptr %42, null
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %maxlines)
  %cmp59.not.i = icmp eq i32 %40, %maxlines
  %or.cond117.i = select i1 %tobool57.not.i, i1 true, i1 %cmp59.not.i
  br i1 %or.cond117.i, label %if.end53.i.return_crit_edge, label %if.then61.i

if.end53.i.return_crit_edge:                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then61.i:                                      ; preds = %if.end53.i
  %mul.i = mul i32 %sub55.i, %maxlinesmpls
  %43 = call ptr @memset(ptr %42, i32 0, i32 %mul.i)
  %44 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf.i13.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %45, i32 %mul.i
  store ptr %add.ptr65.i, ptr %buf.i13.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %46 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and69.i = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.then61.i.return_crit_edge, label %do.end74.i

if.then61.i.return_crit_edge:                     ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end74.i:                                       ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i.i95, align 8
  %name77.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %48, i32 0, i32 5, i32 4
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name77.i, i32 noundef %cond.i.i, i32 noundef %sub55.i, i32 noundef %maxlines) #13
  br label %return

if.end23:                                         ; preds = %lor.lhs.false.i.if.end23_crit_edge, %if.then19.if.end23_crit_edge
  %49 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fmode.i85, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %50, label %if.end23.if.then27_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
    i32 2, label %if.then8.i
  ]

if.end23.if.then27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then.i:                                        ; preds = %if.end23
  %conv.i.i = zext i8 %buf.sroa.9.1.copyload to i32
  %and5.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %cmp6.i.i = icmp eq i32 %and5.i.i, 0
  %and11.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %cmp12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %cmp6.i.i, label %lor.lhs.false.i.i, label %if.then.i.if.then27_crit_edge

if.then.i.if.then27_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %and.i.i = lshr i32 %conv.i.i, 6
  %and.lobit.i.i = and i32 %and.i.i, 1
  %52 = xor i32 %and.lobit.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv16.i.i)
  %cmp19.not.i.i = icmp eq i32 %52, %conv16.i.i
  br i1 %cmp19.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.then27_crit_edge

lor.lhs.false.i.i.if.then27_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %53 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and23.i.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %cmp12.not.i.i, label %do.body.i.i, label %do.body30.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  br i1 %tobool24.not.i.i, label %do.body.i.i.if.end27.i.i_crit_edge, label %do.end.i.i

do.body.i.i.if.end27.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv.i.i95, align 8
  %name.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %55, i32 0, i32 5, i32 4
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pos, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name.i.i, i32 noundef %57) #13
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.if.end27.i.i_crit_edge
  %58 = ptrtoint ptr %linesamples.i15.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %linesamples.i15.i, align 4
  br label %cleanup.sink.split.i.i

do.body30.i.i:                                    ; preds = %if.end.i.i
  br i1 %tobool24.not.i.i, label %do.body30.i.i.cleanup.sink.split.i.i_crit_edge, label %do.end38.i.i

do.body30.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

do.end38.i.i:                                     ; preds = %do.body30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv.i.i95, align 8
  %name41.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %60, i32 0, i32 5, i32 4
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pos, align 4
  %call44.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name41.i.i, i32 noundef %62) #13
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %do.end38.i.i, %do.body30.i.i.cleanup.sink.split.i.i_crit_edge, %if.end27.i.i
  %.sink.i.i = phi i32 [ 1, %if.end27.i.i ], [ 2, %do.end38.i.i ], [ 2, %do.body30.i.i.cleanup.sink.split.i.i_crit_edge ]
  %63 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink.i.i, ptr %fmode.i85, align 4
  br label %if.then27

if.then3.i:                                       ; preds = %if.end23
  %64 = and i8 %buf.sroa.9.1.copyload, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp.i.i = icmp eq i8 %64, 0
  br i1 %cmp.i.i, label %do.body.i2.i, label %if.then3.i.if.end9.i.i_crit_edge

if.then3.i.if.end9.i.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

do.body.i2.i:                                     ; preds = %if.then3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %65 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and3.i.i = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i2.i.if.end9.i.i_crit_edge, label %do.end.i7.i

do.body.i2.i.if.end9.i.i_crit_edge:               ; preds = %do.body.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

do.end.i7.i:                                      ; preds = %do.body.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv.i.i95, align 8
  %name.i4.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %67, i32 0, i32 5, i32 4
  %68 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %line, align 4
  %70 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pos, align 4
  %call.i6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name.i4.i, i32 noundef %69, i32 noundef %71) #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %do.end.i7.i, %do.body.i2.i.if.end9.i.i_crit_edge, %if.then3.i.if.end9.i.i_crit_edge
  %72 = ptrtoint ptr %linesamples.i15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %linesamples.i15.i, align 4
  %sub.i.i = sub i32 %maxlinesmpls, %73
  %74 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf.i13.i, align 4
  %tobool11.not.i.i = icmp eq ptr %75, null
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %maxlinesmpls)
  %cmp12.not.i9.i = icmp eq i32 %73, %maxlinesmpls
  %or.cond.i.i = select i1 %tobool11.not.i.i, i1 true, i1 %cmp12.not.i9.i
  br i1 %or.cond.i.i, label %if.end9.i.i.cxusb_medion_cf_refc_line_smpl.exit.i_crit_edge, label %if.then14.i.i

if.end9.i.i.cxusb_medion_cf_refc_line_smpl.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_cf_refc_line_smpl.exit.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  %76 = call ptr @memset(ptr %75, i32 0, i32 %sub.i.i)
  %77 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf.i13.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 %sub.i.i
  store ptr %add.ptr.i.i, ptr %buf.i13.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %79 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and20.i.i = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then14.i.i.cxusb_medion_cf_refc_line_smpl.exit.i_crit_edge, label %do.end25.i.i

if.then14.i.i.cxusb_medion_cf_refc_line_smpl.exit.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_cf_refc_line_smpl.exit.i

do.end25.i.i:                                     ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv.i.i95, align 8
  %name28.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %81, i32 0, i32 5, i32 4
  %82 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %line, align 4
  %call33.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name28.i.i, i32 noundef %cond.i.i, i32 noundef %83, i32 noundef %sub.i.i, i32 noundef %maxlinesmpls) #13
  br label %cxusb_medion_cf_refc_line_smpl.exit.i

cxusb_medion_cf_refc_line_smpl.exit.i:            ; preds = %do.end25.i.i, %if.then14.i.i.cxusb_medion_cf_refc_line_smpl.exit.i_crit_edge, %if.end9.i.i.cxusb_medion_cf_refc_line_smpl.exit.i_crit_edge
  %84 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %fmode.i85, align 4
  %85 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %line, align 4
  %inc.i.i = add i32 %86, 1
  store i32 %inc.i.i, ptr %line, align 4
  br label %cleanup36

if.then8.i:                                       ; preds = %if.end23
  %87 = and i8 %buf.sroa.9.1.copyload, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp.i12.i = icmp eq i8 %87, 0
  br i1 %cmp.i12.i, label %do.body.i13.i, label %if.then8.i.cxusb_medion_cf_refc_vbi_smpl.exit.i_crit_edge

if.then8.i.cxusb_medion_cf_refc_vbi_smpl.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_cf_refc_vbi_smpl.exit.i

do.body.i13.i:                                    ; preds = %if.then8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %88 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and2.i.i = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i13.i.cxusb_medion_cf_refc_vbi_smpl.exit.i_crit_edge, label %do.end.i18.i

do.body.i13.i.cxusb_medion_cf_refc_vbi_smpl.exit.i_crit_edge: ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_cf_refc_vbi_smpl.exit.i

do.end.i18.i:                                     ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv.i.i95, align 8
  %name.i15.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %90, i32 0, i32 5, i32 4
  %91 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pos, align 4
  %call.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name.i15.i, i32 noundef %92) #13
  br label %cxusb_medion_cf_refc_vbi_smpl.exit.i

cxusb_medion_cf_refc_vbi_smpl.exit.i:             ; preds = %do.end.i18.i, %do.body.i13.i.cxusb_medion_cf_refc_vbi_smpl.exit.i_crit_edge, %if.then8.i.cxusb_medion_cf_refc_vbi_smpl.exit.i_crit_edge
  %93 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %fmode.i85, align 4
  br label %cleanup36

if.then27:                                        ; preds = %cleanup.sink.split.i.i, %lor.lhs.false.i.i.if.then27_crit_edge, %if.then.i.if.then27_crit_edge, %if.end23.if.then27_crit_edge
  %94 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pos, align 4
  %add29 = add i32 %95, 4
  store i32 %add29, ptr %pos, align 4
  br label %cleanup36

if.end32:                                         ; preds = %if.end8.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %96 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fmode.i85, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %97, label %if.end32.if.else5.i_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %if.then4.i
  ]

if.end32.if.else5.i_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else5.i

land.lhs.true.i:                                  ; preds = %if.end32
  %99 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp1.not.i = icmp eq i32 %100, 0
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.else5.i_crit_edge, label %if.then.i89

land.lhs.true.i.if.else5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else5.i

if.then.i89:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #10
  %101 = call ptr @memset(ptr %buf.i.i, i32 255, i32 64)
  %102 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pos, align 4
  %add.i.i = add i32 %103, 1
  %add.i.i.i = add i32 %add.i.i, %3
  %104 = ptrtoint ptr %paylen.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %paylen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %105)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %105
  br i1 %cmp.i.i.i, label %cxusb_medion_copy_samples.exit.thread120, label %cxusb_auxbuf_copy.exit.i.i

cxusb_medion_copy_samples.exit.thread120:         ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #10
  br label %while.end

cxusb_auxbuf_copy.exit.i.i:                       ; preds = %if.then.i89
  %106 = ptrtoint ptr %auxbuf to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %auxbuf, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %107, i32 %add.i.i
  %108 = call ptr @memcpy(ptr %buf.i.i, ptr %add.ptr.i.i.i, i32 %3)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %cxusb_auxbuf_copy.exit.i.i
  %idx.042.i.i = phi i32 [ 0, %cxusb_auxbuf_copy.exit.i.i ], [ %inc.i.i92, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i91 = getelementptr i8, ptr %buf.i.i, i32 %idx.042.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr.i.i91, ptr noundef nonnull dereferenceable(3) @.str.84, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp10.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp10.i.i, label %if.then11.i.i, label %for.inc.i.i

if.then11.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add14.i.i = add i32 %idx.042.i.i, %add.i.i
  %109 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add14.i.i, ptr %pos, align 4
  br label %cxusb_medion_copy_samples.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i92 = add i32 %idx.042.i.i, 1
  %cmp7.not.i.i = icmp ugt i32 %inc.i.i92, %sub.i.i90
  br i1 %cmp7.not.i.i, label %do.body.i.i94, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.body.i.i94:                                    ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %110 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i.i93 = and i32 %110, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i93)
  %tobool.not.i.i = icmp eq i32 %and.i.i93, 0
  br i1 %tobool.not.i.i, label %do.body.i.i94.if.end22.i.i_crit_edge, label %do.end.i.i97

do.body.i.i94.if.end22.i.i_crit_edge:             ; preds = %do.body.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

do.end.i.i97:                                     ; preds = %do.body.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %priv.i.i95 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv.i.i95, align 8
  %name.i.i96 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %112, i32 0, i32 5, i32 4
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name.i.i96, i32 noundef %100, i32 noundef %103) #13
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %do.end.i.i97, %do.body.i.i94.if.end22.i.i_crit_edge
  %113 = ptrtoint ptr %linesamples.i15.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %linesamples.i15.i, align 4
  %114 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %fmode.i85, align 4
  br label %cxusb_medion_copy_samples.exit

if.then4.i:                                       ; preds = %if.end32
  %115 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buf.i13.i, align 4
  %tobool.not.i14.i = icmp eq ptr %116, null
  br i1 %tobool.not.i14.i, label %if.then4.i.if.end.i.i99_crit_edge, label %if.then.i.i

if.then4.i.if.end.i.i99_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i99

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.i = getelementptr i8, ptr %116, i32 1
  %117 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %incdec.ptr.i.i, ptr %buf.i13.i, align 4
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %val.0.copyload, ptr %116, align 1
  br label %if.end.i.i99

if.end.i.i99:                                     ; preds = %if.then.i.i, %if.then4.i.if.end.i.i99_crit_edge
  %119 = ptrtoint ptr %linesamples.i15.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %linesamples.i15.i, align 4
  %inc.i16.i = add i32 %120, 1
  store i32 %inc.i16.i, ptr %linesamples.i15.i, align 4
  %121 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pos, align 4
  %inc2.i.i = add i32 %122, 1
  store i32 %inc2.i.i, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i16.i, i32 %maxlinesmpls)
  %cmp.not.i.i = icmp ult i32 %inc.i16.i, %maxlinesmpls
  br i1 %cmp.not.i.i, label %if.end.i.i99.cleanup36_crit_edge, label %if.then4.i.i

if.end.i.i99.cleanup36_crit_edge:                 ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

if.then4.i.i:                                     ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %fmode.i85 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %fmode.i85, align 4
  %124 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %line, align 4
  %inc5.i.i = add i32 %125, 1
  store i32 %inc5.i.i, ptr %line, align 4
  br label %cleanup36

if.else5.i:                                       ; preds = %land.lhs.true.i.if.else5.i_crit_edge, %if.end32.if.else5.i_crit_edge
  %126 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pos, align 4
  %inc.i100 = add i32 %127, 1
  store i32 %inc.i100, ptr %pos, align 4
  br label %cleanup36

cxusb_medion_copy_samples.exit:                   ; preds = %if.end22.i.i, %if.then11.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #10
  br label %cleanup36

cleanup36:                                        ; preds = %cxusb_medion_copy_samples.exit, %if.else5.i, %if.then4.i.i, %if.end.i.i99.cleanup36_crit_edge, %if.then27, %cxusb_medion_cf_refc_vbi_smpl.exit.i, %cxusb_medion_cf_refc_line_smpl.exit.i
  %128 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %line, align 4
  %cmp = icmp ult i32 %129, %maxlines
  br i1 %cmp, label %cleanup36.while.body_crit_edge, label %cleanup36.while.end_crit_edge

cleanup36.while.end_crit_edge:                    ; preds = %cleanup36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup36.while.body_crit_edge:                   ; preds = %cleanup36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup36.while.end_crit_edge, %cxusb_medion_copy_samples.exit.thread120, %if.then4.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %130 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %maxlines)
  %cmp40 = icmp ult i32 %131, %maxlines
  br i1 %cmp40, label %do.body, label %while.end.return_crit_edge

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body:                                          ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %132 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %132, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %134, i32 0, i32 5, i32 4
  %pos47 = getelementptr inbounds %struct.cxusb_bt656_params, ptr %bt656, i32 0, i32 2
  %135 = ptrtoint ptr %pos47 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pos47, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name, i32 noundef %136, i32 noundef %131) #13
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %while.end.return_crit_edge, %do.end74.i, %if.then61.i.return_crit_edge, %if.end53.i.return_crit_edge
  %retval.4 = phi i1 [ false, %do.end ], [ false, %do.body.return_crit_edge ], [ true, %while.end.return_crit_edge ], [ true, %if.then61.i.return_crit_edge ], [ true, %do.end74.i ], [ true, %if.end53.i.return_crit_edge ]
  ret i1 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_medion_videodev_release(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %0 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %4, i32 0, i32 5, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @video_device_release(ptr noundef %vdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxusb_medion_v_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %width = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 8
  %mul = shl i32 %5, 1
  %mul1 = mul i32 %mul, %7
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 0, label %if.else
    i32 1, label %if.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul1)
  %cmp4 = icmp ult i32 %12, %mul1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_planes, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul1, ptr %sizes, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_v_buf_init(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %6 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %5, i32 0, i32 5, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end.vb2_plane_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then.i ], [ 0, %if.end.vb2_plane_size.exit_crit_edge ]
  %width = getelementptr inbounds %struct.cxusb_medion_dev, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.cxusb_medion_dev, ptr %5, i32 0, i32 16
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 8
  %mul = shl i32 %12, 1
  %mul7 = mul i32 %mul, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %mul7)
  %cmp = icmp ult i32 %retval.0.i, %mul7
  br i1 %cmp, label %vb2_plane_size.exit.cleanup_crit_edge, label %do.body10

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body10:                                        ; preds = %vb2_plane_size.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %15 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and13 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body10.cleanup_crit_edge, label %do.end18

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %name21 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %17, i32 0, i32 5, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name21) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.body10.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %do.end18 ], [ 0, %do.body10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_v_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %streamon_params = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %streamon_params) #10
  %4 = ptrtoint ptr %streamon_params to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 768, ptr %streamon_params, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %5 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 5, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stop_streaming = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %stop_streaming to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stop_streaming, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.ret_retbufs_crit_edge

if.end.ret_retbufs_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_retbufs

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @cxusb_medion_field_order(ptr noundef %3)
  %field_order = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %field_order to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call9, ptr %field_order, align 4
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cx25840, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.end8.do.end37_crit_edge, label %if.else

if.end8.do.end37_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.else:                                          ; preds = %if.end8
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.else.do.end37_crit_edge, label %land.lhs.true

if.else.do.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_stream, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %land.lhs.true.do.end37_crit_edge, label %if.else17

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.else17:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.else17.if.else25_crit_edge, label %land.lhs.true19

if.else17.if.else25_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else25

land.lhs.true19:                                  ; preds = %if.else17
  %s_stream20 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream20, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %land.lhs.true19.if.else25_crit_edge, label %land.lhs.true19.if.end32_crit_edge

land.lhs.true19.if.end32_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true19.if.else25_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else25

if.else25:                                        ; preds = %land.lhs.true19.if.else25_crit_edge, %if.else17.if.else25_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %land.lhs.true19.if.end32_crit_edge
  %.sink = phi ptr [ %16, %if.else25 ], [ %19, %land.lhs.true19.if.end32_crit_edge ]
  %call29 = tail call i32 %.sink(ptr noundef nonnull %10, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp.not = icmp eq i32 %call29, 0
  br i1 %cmp.not, label %if.end38, label %if.end32.do.end37_crit_edge

if.end32.do.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end37:                                         ; preds = %if.end32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %if.else.do.end37_crit_edge, %if.end8.do.end37_crit_edge
  %__result.0233 = phi i32 [ %call29, %if.end32.do.end37_crit_edge ], [ -515, %if.else.do.end37_crit_edge ], [ -515, %land.lhs.true.do.end37_crit_edge ], [ -19, %if.end8.do.end37_crit_edge ]
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %__result.0233) #13
  br label %ret_retbufs

if.end38:                                         ; preds = %if.end32
  %call40 = call i32 @cxusb_ctrl_msg(ptr noundef %1, i8 noundef zeroext 54, ptr noundef nonnull %streamon_params, i32 noundef 2, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %udev46 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %udev46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev46, align 4
  %dev47 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.129, i32 noundef %call40) #13
  br label %ret_unstream_cx

if.end48:                                         ; preds = %if.end38
  %dvbdev1.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %dvbdev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvbdev1.i, align 4
  %width.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 15
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width.i, align 4
  %mul.i = shl i32 %27, 1
  %add2.i = add i32 %mul.i, 8
  %height.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 16
  %28 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height.i, align 8
  %add3.i = add i32 %29, 50
  %mul4.i = mul i32 %add2.i, %add3.i
  %sub.i = add i32 %mul4.i, 3029
  call void @__sanitizer_cov_trace_const_cmp4(i32 524190, i32 %sub.i)
  %cmp.i223 = icmp ult i32 %sub.i, 524190
  %div.i = udiv i32 %sub.i, 3030
  %cond.i = select i1 %cmp.i223, i32 %div.i, i32 173
  %mul6.i = mul nuw i32 %cond.i, 3030
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %30 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end48.if.end.i224_crit_edge, label %do.end10.i

if.end48.if.end.i224_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i224

do.end10.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %25, i32 0, i32 18
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %name.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %32, i32 0, i32 5, i32 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name.i, i32 noundef %cond.i, i32 noundef %mul6.i, i32 noundef %27, i32 noundef %29, i32 noundef %mul4.i) #13
  br label %if.end.i224

if.end.i224:                                      ; preds = %do.end10.i, %if.end48.if.end.i224_crit_edge
  %add16.i = add i32 %mul6.i, %mul4.i
  %call17.i = call noalias ptr @vmalloc(i32 noundef %add16.i) #15
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.end.i224.ret_unstream_md_crit_edge, label %if.end20.i

if.end.i224.ret_unstream_md_crit_edge:            ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_unstream_md

if.end20.i:                                       ; preds = %if.end.i224
  %auxbuf.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %33 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and.i.i = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i225 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i225, label %if.end20.i.cxusb_medion_v_ss_auxbuf_alloc.exit_crit_edge, label %do.end.i.i

if.end20.i.cxusb_medion_v_ss_auxbuf_alloc.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_v_ss_auxbuf_alloc.exit

do.end.i.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %25, i32 0, i32 18
  %34 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %35, i32 0, i32 5, i32 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %name.i.i, i32 noundef %add16.i) #13
  br label %cxusb_medion_v_ss_auxbuf_alloc.exit

cxusb_medion_v_ss_auxbuf_alloc.exit:              ; preds = %do.end.i.i, %if.end20.i.cxusb_medion_v_ss_auxbuf_alloc.exit_crit_edge
  %36 = ptrtoint ptr %auxbuf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call17.i, ptr %auxbuf.i, align 4
  %len5.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add16.i, ptr %len5.i.i, align 4
  %paylen.i.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 18, i32 2
  %38 = ptrtoint ptr %paylen.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %paylen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not.i.i = icmp eq i32 %cond.i, 0
  %udev65 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.inc80.if.end8.i_crit_edge, %cxusb_medion_v_ss_auxbuf_alloc.exit
  %i.0254 = phi i32 [ 0, %cxusb_medion_v_ss_auxbuf_alloc.exit ], [ %inc81, %for.inc80.if.end8.i_crit_edge ]
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul6.i, i32 noundef 3264) #15
  %tobool55.not = icmp eq ptr %call9.i, null
  br i1 %tobool55.not, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0254)
  %cmp57 = icmp ult i32 %i.0254, 2
  br i1 %cmp57, label %if.then56.ret_freeab_crit_edge, label %if.then56.for.end82_crit_edge

if.then56.for.end82_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end82

if.then56.ret_freeab_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_freeab

if.end60:                                         ; preds = %if.end8.i
  %call61 = call ptr @usb_alloc_urb(i32 noundef %cond.i, i32 noundef 3264) #10
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %ret_freeu, label %if.end64

if.end64:                                         ; preds = %if.end60
  %arrayidx = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 %i.0254
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call61, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev65, align 4
  %dev66 = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 8
  %42 = ptrtoint ptr %dev66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %dev66, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 27
  %43 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %1, ptr %context, align 4
  %44 = load ptr, ptr %udev65, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i = shl i32 %46, 8
  %or69 = or i32 %shl.i, 65664
  %pipe = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 10
  %47 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or69, ptr %pipe, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 25
  %48 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %interval, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 13
  %49 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %transfer_flags, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 14
  %50 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call9.i, ptr %transfer_buffer, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 28
  %51 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @cxusb_medion_v_complete, ptr %complete, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 24
  %52 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %number_of_packets, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call61, i32 0, i32 19
  %53 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul6.i, ptr %transfer_buffer_length, align 4
  br i1 %tobool.not.i.i, label %if.end64.for.inc80_crit_edge, label %if.end64.for.body73_crit_edge

if.end64.for.body73_crit_edge:                    ; preds = %if.end64
  br label %for.body73

if.end64.for.inc80_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %if.end64.for.body73_crit_edge
  %framen.0253 = phi i32 [ %inc, %for.body73.for.body73_crit_edge ], [ 0, %if.end64.for.body73_crit_edge ]
  %mul74 = mul i32 %framen.0253, 3030
  %arrayidx75 = getelementptr %struct.urb, ptr %call61, i32 0, i32 29, i32 %framen.0253
  %54 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul74, ptr %arrayidx75, align 4
  %length = getelementptr %struct.urb, ptr %call61, i32 0, i32 29, i32 %framen.0253, i32 1
  %55 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3030, ptr %length, align 4
  %inc = add nuw nsw i32 %framen.0253, 1
  %exitcond.not = icmp eq i32 %inc, %cond.i
  br i1 %exitcond.not, label %for.body73.for.inc80_crit_edge, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body73

for.body73.for.inc80_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc80

for.inc80:                                        ; preds = %for.body73.for.inc80_crit_edge, %if.end64.for.inc80_crit_edge
  %inc81 = add nuw nsw i32 %i.0254, 1
  %exitcond263.not = icmp eq i32 %inc81, 5
  br i1 %exitcond263.not, label %for.inc80.for.end82_crit_edge, label %for.inc80.if.end8.i_crit_edge

for.inc80.if.end8.i_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.inc80.for.end82_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end82

for.end82:                                        ; preds = %for.inc80.for.end82_crit_edge, %if.then56.for.end82_crit_edge
  %urbcomplete = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 21
  %56 = ptrtoint ptr %urbcomplete to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %urbcomplete, align 4
  %nexturb = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 23
  %57 = ptrtoint ptr %nexturb to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %nexturb, align 4
  %vbuf_sequence = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 26
  %58 = ptrtoint ptr %vbuf_sequence to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %vbuf_sequence, align 4
  %vbuf = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 25
  %59 = ptrtoint ptr %vbuf to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %vbuf, align 8
  %bt656 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 24
  %60 = ptrtoint ptr %bt656 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %bt656, align 8
  %buf = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 24, i32 5
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %buf, align 4
  %arrayidx88 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 0
  %62 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx88, align 4
  %tobool89.not = icmp eq ptr %63, null
  br i1 %tobool89.not, label %for.end82.for.inc103_crit_edge, label %if.then90

for.end82.for.inc103_crit_edge:                   ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

if.then90:                                        ; preds = %for.end82
  %call93 = call i32 @usb_submit_urb(ptr noundef nonnull %63, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %if.then90.for.inc103_crit_edge, label %do.end98

if.then90.for.inc103_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103

do.end98:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev65, align 4
  %dev100 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.132, i32 noundef 0, i32 noundef %call93) #13
  br label %for.inc103

for.inc103:                                       ; preds = %do.end98, %if.then90.for.inc103_crit_edge, %for.end82.for.inc103_crit_edge
  %arrayidx88.1 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 1
  %66 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx88.1, align 4
  %tobool89.not.1 = icmp eq ptr %67, null
  br i1 %tobool89.not.1, label %for.inc103.for.inc103.1_crit_edge, label %if.then90.1

for.inc103.for.inc103.1_crit_edge:                ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.1

if.then90.1:                                      ; preds = %for.inc103
  %call93.1 = call i32 @usb_submit_urb(ptr noundef nonnull %67, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.1)
  %cmp94.not.1 = icmp eq i32 %call93.1, 0
  br i1 %cmp94.not.1, label %if.then90.1.for.inc103.1_crit_edge, label %do.end98.1

if.then90.1.for.inc103.1_crit_edge:               ; preds = %if.then90.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.1

do.end98.1:                                       ; preds = %if.then90.1
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udev65, align 4
  %dev100.1 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100.1, ptr noundef nonnull @.str.132, i32 noundef 1, i32 noundef %call93.1) #13
  br label %for.inc103.1

for.inc103.1:                                     ; preds = %do.end98.1, %if.then90.1.for.inc103.1_crit_edge, %for.inc103.for.inc103.1_crit_edge
  %arrayidx88.2 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 2
  %70 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx88.2, align 4
  %tobool89.not.2 = icmp eq ptr %71, null
  br i1 %tobool89.not.2, label %for.inc103.1.for.inc103.2_crit_edge, label %if.then90.2

for.inc103.1.for.inc103.2_crit_edge:              ; preds = %for.inc103.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.2

if.then90.2:                                      ; preds = %for.inc103.1
  %call93.2 = call i32 @usb_submit_urb(ptr noundef nonnull %71, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.2)
  %cmp94.not.2 = icmp eq i32 %call93.2, 0
  br i1 %cmp94.not.2, label %if.then90.2.for.inc103.2_crit_edge, label %do.end98.2

if.then90.2.for.inc103.2_crit_edge:               ; preds = %if.then90.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.2

do.end98.2:                                       ; preds = %if.then90.2
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %udev65, align 4
  %dev100.2 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100.2, ptr noundef nonnull @.str.132, i32 noundef 2, i32 noundef %call93.2) #13
  br label %for.inc103.2

for.inc103.2:                                     ; preds = %do.end98.2, %if.then90.2.for.inc103.2_crit_edge, %for.inc103.1.for.inc103.2_crit_edge
  %arrayidx88.3 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 3
  %74 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx88.3, align 4
  %tobool89.not.3 = icmp eq ptr %75, null
  br i1 %tobool89.not.3, label %for.inc103.2.for.inc103.3_crit_edge, label %if.then90.3

for.inc103.2.for.inc103.3_crit_edge:              ; preds = %for.inc103.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.3

if.then90.3:                                      ; preds = %for.inc103.2
  %call93.3 = call i32 @usb_submit_urb(ptr noundef nonnull %75, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.3)
  %cmp94.not.3 = icmp eq i32 %call93.3, 0
  br i1 %cmp94.not.3, label %if.then90.3.for.inc103.3_crit_edge, label %do.end98.3

if.then90.3.for.inc103.3_crit_edge:               ; preds = %if.then90.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.3

do.end98.3:                                       ; preds = %if.then90.3
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udev65, align 4
  %dev100.3 = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100.3, ptr noundef nonnull @.str.132, i32 noundef 3, i32 noundef %call93.3) #13
  br label %for.inc103.3

for.inc103.3:                                     ; preds = %do.end98.3, %if.then90.3.for.inc103.3_crit_edge, %for.inc103.2.for.inc103.3_crit_edge
  %arrayidx88.4 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 4
  %78 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx88.4, align 4
  %tobool89.not.4 = icmp eq ptr %79, null
  br i1 %tobool89.not.4, label %for.inc103.3.cleanup140_crit_edge, label %if.then90.4

for.inc103.3.cleanup140_crit_edge:                ; preds = %for.inc103.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup140

if.then90.4:                                      ; preds = %for.inc103.3
  %call93.4 = call i32 @usb_submit_urb(ptr noundef nonnull %79, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.4)
  %cmp94.not.4 = icmp eq i32 %call93.4, 0
  br i1 %cmp94.not.4, label %if.then90.4.cleanup140_crit_edge, label %do.end98.4

if.then90.4.cleanup140_crit_edge:                 ; preds = %if.then90.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup140

do.end98.4:                                       ; preds = %if.then90.4
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %udev65, align 4
  %dev100.4 = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100.4, ptr noundef nonnull @.str.132, i32 noundef 4, i32 noundef %call93.4) #13
  br label %cleanup140

ret_freeu:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call9.i) #10
  call fastcc void @cxusb_medion_urbs_free(ptr noundef %3)
  br label %ret_freeab

ret_freeab:                                       ; preds = %ret_freeu, %if.then56.ret_freeab_crit_edge
  %82 = ptrtoint ptr %auxbuf.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %auxbuf.i, align 8
  call void @vfree(ptr noundef %83) #10
  br label %ret_unstream_md

ret_unstream_md:                                  ; preds = %ret_freeab, %if.end.i224.ret_unstream_md_crit_edge
  %call107 = call i32 @cxusb_ctrl_msg(ptr noundef %1, i8 noundef zeroext 55, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %ret_unstream_cx

ret_unstream_cx:                                  ; preds = %ret_unstream_md, %do.end45
  %ret.3 = phi i32 [ %call40, %do.end45 ], [ -12, %ret_unstream_md ]
  %84 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cx25840, align 4
  %tobool111.not = icmp eq ptr %85, null
  br i1 %tobool111.not, label %ret_unstream_cx.ret_retbufs_crit_edge, label %if.else113

ret_unstream_cx.ret_retbufs_crit_edge:            ; preds = %ret_unstream_cx
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_retbufs

if.else113:                                       ; preds = %ret_unstream_cx
  %ops114 = getelementptr inbounds %struct.v4l2_subdev, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %ops114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops114, align 4
  %video115 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %video115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %video115, align 4
  %tobool116.not = icmp eq ptr %89, null
  br i1 %tobool116.not, label %if.else113.ret_retbufs_crit_edge, label %land.lhs.true117

if.else113.ret_retbufs_crit_edge:                 ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_retbufs

land.lhs.true117:                                 ; preds = %if.else113
  %s_stream120 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %89, i32 0, i32 10
  %90 = ptrtoint ptr %s_stream120 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_stream120, align 4
  %tobool121.not = icmp eq ptr %91, null
  br i1 %tobool121.not, label %land.lhs.true117.ret_retbufs_crit_edge, label %if.else123

land.lhs.true117.ret_retbufs_crit_edge:           ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_retbufs

if.else123:                                       ; preds = %land.lhs.true117
  br i1 %tobool18.not, label %if.else123.if.else131_crit_edge, label %land.lhs.true125

if.else123.if.else131_crit_edge:                  ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else131

land.lhs.true125:                                 ; preds = %if.else123
  %s_stream126 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %92 = ptrtoint ptr %s_stream126 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_stream126, align 4
  %tobool127.not = icmp eq ptr %93, null
  br i1 %tobool127.not, label %land.lhs.true125.if.else131_crit_edge, label %if.then128

land.lhs.true125.if.else131_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else131

if.then128:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #12
  %call130 = call i32 %93(ptr noundef nonnull %85, i32 noundef 0) #10
  br label %ret_retbufs

if.else131:                                       ; preds = %land.lhs.true125.if.else131_crit_edge, %if.else123.if.else131_crit_edge
  %call135 = call i32 %91(ptr noundef nonnull %85, i32 noundef 0) #10
  br label %ret_retbufs

ret_retbufs:                                      ; preds = %if.else131, %if.then128, %land.lhs.true117.ret_retbufs_crit_edge, %if.else113.ret_retbufs_crit_edge, %ret_unstream_cx.ret_retbufs_crit_edge, %do.end37, %if.end.ret_retbufs_crit_edge
  %ret.4 = phi i32 [ %__result.0233, %do.end37 ], [ -16, %if.end.ret_retbufs_crit_edge ], [ %ret.3, %if.else113.ret_retbufs_crit_edge ], [ %ret.3, %land.lhs.true117.ret_retbufs_crit_edge ], [ %ret.3, %ret_unstream_cx.ret_retbufs_crit_edge ], [ %ret.3, %if.else131 ], [ %ret.3, %if.then128 ]
  %buflist.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 27
  %94 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %buflist.i, align 8
  %cmp.not32.i = icmp eq ptr %95, %buflist.i
  br i1 %cmp.not32.i, label %ret_retbufs.for.end.i_crit_edge, label %ret_retbufs.for.body.i_crit_edge

ret_retbufs.for.body.i_crit_edge:                 ; preds = %ret_retbufs
  br label %for.body.i

ret_retbufs.for.end.i_crit_edge:                  ; preds = %ret_retbufs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %ret_retbufs.for.body.i_crit_edge
  %.pn.in33.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %95, %ret_retbufs.for.body.i_crit_edge ]
  %vbuf.0.i = getelementptr i8, ptr %.pn.in33.i, i32 -736
  %96 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn.i = load ptr, ptr %.pn.in33.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i, align 4
  %99 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %.pn.in33.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev1.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %98, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %103 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @vb2_buffer_done(ptr noundef %vbuf.0.i, i32 noundef 3) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %buflist.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %ret_retbufs.for.end.i_crit_edge
  %vbuf13.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 25
  %105 = ptrtoint ptr %vbuf13.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vbuf13.i, align 8
  %tobool14.not.i = icmp eq ptr %106, null
  br i1 %tobool14.not.i, label %for.end.i.cleanup140_crit_edge, label %if.then.i226

for.end.i.cleanup140_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup140

if.then.i226:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @vb2_buffer_done(ptr noundef nonnull %106, i32 noundef 3) #10
  %107 = ptrtoint ptr %vbuf13.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %vbuf13.i, align 8
  %buf.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 24, i32 5
  %108 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %buf.i, align 4
  br label %cleanup140

cleanup140:                                       ; preds = %if.then.i226, %for.end.i.cleanup140_crit_edge, %do.end98.4, %if.then90.4.cleanup140_crit_edge, %for.inc103.3.cleanup140_crit_edge
  %retval.0 = phi i32 [ %ret.4, %for.end.i.cleanup140_crit_edge ], [ %ret.4, %if.then.i226 ], [ 0, %do.end98.4 ], [ 0, %if.then90.4.cleanup140_crit_edge ], [ 0, %for.inc103.3.cleanup140_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %streamon_params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_medion_v_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %4 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 5, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stop_streaming = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %stop_streaming to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stop_streaming, align 8, !range !353
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end34, label %do.end18, !prof !354

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 907, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %7 = ptrtoint ptr %stop_streaming to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %stop_streaming, align 8
  %call36 = tail call i32 @cxusb_ctrl_msg(ptr noundef %1, i8 noundef zeroext 55, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cx25840, align 4
  %tobool37.not = icmp eq ptr %9, null
  br i1 %tobool37.not, label %if.end34.do.end64_crit_edge, label %if.else

if.end34.do.end64_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

if.else:                                          ; preds = %if.end34
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %if.else.do.end64_crit_edge, label %land.lhs.true

if.else.do.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_stream, align 4
  %tobool42.not = icmp eq ptr %15, null
  br i1 %tobool42.not, label %land.lhs.true.do.end64_crit_edge, label %if.else44

land.lhs.true.do.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

if.else44:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool45.not = icmp eq ptr %16, null
  br i1 %tobool45.not, label %if.else44.if.else52_crit_edge, label %land.lhs.true46

if.else44.if.else52_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else52

land.lhs.true46:                                  ; preds = %if.else44
  %s_stream47 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_stream47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_stream47, align 4
  %tobool48.not = icmp eq ptr %18, null
  br i1 %tobool48.not, label %land.lhs.true46.if.else52_crit_edge, label %land.lhs.true46.if.end59_crit_edge

land.lhs.true46.if.end59_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true46.if.else52_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else52

if.else52:                                        ; preds = %land.lhs.true46.if.else52_crit_edge, %if.else44.if.else52_crit_edge
  br label %if.end59

if.end59:                                         ; preds = %if.else52, %land.lhs.true46.if.end59_crit_edge
  %.sink = phi ptr [ %15, %if.else52 ], [ %18, %land.lhs.true46.if.end59_crit_edge ]
  %call56 = tail call i32 %.sink(ptr noundef nonnull %9, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp.not = icmp eq i32 %call56, 0
  br i1 %cmp.not, label %if.end59.if.end65_crit_edge, label %if.end59.do.end64_crit_edge

if.end59.do.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.end64:                                         ; preds = %if.end59.do.end64_crit_edge, %land.lhs.true.do.end64_crit_edge, %if.else.do.end64_crit_edge, %if.end34.do.end64_crit_edge
  %__result.0109 = phi i32 [ %call56, %if.end59.do.end64_crit_edge ], [ -515, %if.else.do.end64_crit_edge ], [ -515, %land.lhs.true.do.end64_crit_edge ], [ -19, %if.end34.do.end64_crit_edge ]
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.151, i32 noundef %__result.0109) #13
  br label %if.end65

if.end65:                                         ; preds = %do.end64, %if.end59.if.end65_crit_edge
  %videodev = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %videodev, align 8
  %lock = getelementptr inbounds %struct.video_device, ptr %22, i32 0, i32 26
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %24) #10
  %arrayidx = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool67.not = icmp eq ptr %26, null
  br i1 %tobool67.not, label %if.end65.for.inc_crit_edge, label %if.then68

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %26) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then68, %if.end65.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.1, align 4
  %tobool67.not.1 = icmp eq ptr %28, null
  br i1 %tobool67.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then68.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then68.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %28) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then68.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2, align 4
  %tobool67.not.2 = icmp eq ptr %30, null
  br i1 %tobool67.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then68.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then68.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %30) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then68.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3, align 4
  %tobool67.not.3 = icmp eq ptr %32, null
  br i1 %tobool67.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then68.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then68.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %32) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then68.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 4
  %33 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.4, align 4
  %tobool67.not.4 = icmp eq ptr %34, null
  br i1 %tobool67.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then68.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then68.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %34) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then68.4, %for.inc.3.for.inc.4_crit_edge
  %urbwork = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 22
  %call72 = tail call zeroext i1 @flush_work(ptr noundef %urbwork) #10
  %35 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %videodev, align 8
  %lock74 = getelementptr inbounds %struct.video_device, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %lock74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock74, align 8
  tail call void @mutex_lock_nested(ptr noundef %38, i32 noundef 0) #10
  %auxbuf = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 18
  %39 = ptrtoint ptr %auxbuf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %auxbuf, align 8
  tail call void @vfree(ptr noundef %40) #10
  tail call fastcc void @cxusb_medion_urbs_free(ptr noundef %3)
  %buflist.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 27
  %41 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buflist.i, align 8
  %cmp.not32.i = icmp eq ptr %42, %buflist.i
  br i1 %cmp.not32.i, label %for.inc.4.for.end.i_crit_edge, label %for.inc.4.for.body.i_crit_edge

for.inc.4.for.body.i_crit_edge:                   ; preds = %for.inc.4
  br label %for.body.i

for.inc.4.for.end.i_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.inc.4.for.body.i_crit_edge
  %.pn.in33.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %42, %for.inc.4.for.body.i_crit_edge ]
  %vbuf.0.i = getelementptr i8, ptr %.pn.in33.i, i32 -736
  %43 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn.in33.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %.pn.in33.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %50 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %vbuf.0.i, i32 noundef 6) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %buflist.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %for.inc.4.for.end.i_crit_edge
  %vbuf13.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 25
  %52 = ptrtoint ptr %vbuf13.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vbuf13.i, align 8
  %tobool14.not.i = icmp eq ptr %53, null
  br i1 %tobool14.not.i, label %for.end.i.cxusb_medion_return_buffers.exit_crit_edge, label %if.then.i

for.end.i.cxusb_medion_return_buffers.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxusb_medion_return_buffers.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %53, i32 noundef 6) #10
  %54 = ptrtoint ptr %vbuf13.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %vbuf13.i, align 8
  %buf.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 24, i32 5
  %55 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %buf.i, align 4
  br label %cxusb_medion_return_buffers.exit

cxusb_medion_return_buffers.exit:                 ; preds = %if.then.i, %for.end.i.cxusb_medion_return_buffers.exit_crit_edge
  %56 = ptrtoint ptr %stop_streaming to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %stop_streaming, align 8
  br label %cleanup

cleanup:                                          ; preds = %cxusb_medion_return_buffers.exit, %do.end18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusub_medion_v_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %list = getelementptr inbounds %struct.cxusb_medion_vbuffer, ptr %vb, i32 0, i32 1
  %buflist = getelementptr inbounds %struct.cxusb_medion_dev, ptr %5, i32 0, i32 27
  %prev.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %5, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %buflist) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buflist, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cxusb_medion_vbuffer, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxusb_medion_field_order(ptr nocapture noundef readonly %cxdev) unnamed_addr #0 align 64 {
entry:
  %norm = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dvbdev1 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 1
  %0 = ptrtoint ptr %dvbdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvbdev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %norm) #10
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %norm, align 8, !annotation !356
  %input = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 13
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %norm2 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 19
  %5 = ptrtoint ptr %norm2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %norm2, align 8
  %and.i = and i64 %6, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %and1.i = and i64 %6, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %7 = and i64 %6, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %8 = icmp ne i64 %7, 0
  %brmerge18.i = or i1 %tobool.not.i, %tobool2.not.i
  %or.cond.i = and i1 %8, %brmerge18.i
  %..i = select i1 %tobool.not.i, i32 6, i32 5
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 6
  %9 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cx25840, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end5.do.body_crit_edge, label %if.else

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else:                                          ; preds = %if.end5
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.else.do.body_crit_edge, label %land.lhs.true

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.else
  %g_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %g_std to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_std, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %land.lhs.true.do.body_crit_edge, label %if.else12

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %g_std15 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %g_std15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %g_std15, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %land.lhs.true14.if.end27_crit_edge
  %.sink = phi ptr [ %16, %if.else20 ], [ %19, %land.lhs.true14.if.end27_crit_edge ]
  %call24 = call i32 %.sink(ptr noundef nonnull %10, ptr noundef nonnull %norm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp28.not = icmp eq i32 %call24, 0
  br i1 %cmp28.not, label %if.else39, label %if.end27.do.body_crit_edge

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end27.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.else.do.body_crit_edge, %if.end5.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %20 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.body.do.end47_crit_edge, label %do.end

do.body.do.end47_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %22, i32 0, i32 5, i32 4
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %input, align 4
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name, i32 noundef %24) #13
  br label %do.end47

if.else39:                                        ; preds = %if.end27
  %25 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %norm, align 8
  %and.i67 = and i64 %26, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i67)
  %tobool.not.i68 = icmp eq i64 %and.i67, 0
  %and1.i69 = and i64 %26, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i69)
  %tobool2.not.i70 = icmp eq i64 %and1.i69, 0
  %27 = and i64 %26, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %28 = icmp ne i64 %27, 0
  %brmerge18.i71 = or i1 %tobool.not.i68, %tobool2.not.i70
  %or.cond.i72 = and i1 %28, %brmerge18.i71
  %..i73 = select i1 %tobool.not.i68, i32 6, i32 5
  br i1 %or.cond.i72, label %if.else39.cleanup_crit_edge, label %if.else39.do.end47_crit_edge

if.else39.do.end47_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

if.else39.cleanup_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end47:                                         ; preds = %if.else39.do.end47_crit_edge, %do.end, %do.body.do.end47_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.137) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.else39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %do.end47 ], [ 5, %entry.cleanup_crit_edge ], [ %..i, %if.end.cleanup_crit_edge ], [ %..i73, %if.else39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %norm) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxusb_ctrl_msg(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_medion_v_complete(ptr noundef readonly %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %arrayidx = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %5, %u
  br i1 %cmp1, label %entry.do.body5_crit_edge, label %for.inc

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.1 = icmp eq ptr %7, %u
  br i1 %cmp1.1, label %for.inc.do.body5_crit_edge, label %for.inc.1

for.inc.do.body5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.2 = icmp eq ptr %9, %u
  br i1 %cmp1.2, label %for.inc.1.do.body5_crit_edge, label %for.inc.2

for.inc.1.do.body5_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.3 = icmp eq ptr %11, %u
  br i1 %cmp1.3, label %for.inc.2.do.body5_crit_edge, label %for.inc.3

for.inc.2.do.body5_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.cxusb_medion_dev, ptr %3, i32 0, i32 20, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %cmp1.4 = icmp eq ptr %13, %u
  br i1 %cmp1.4, label %for.inc.3.do.body5_crit_edge, label %for.inc.4

for.inc.3.do.body5_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.143) #13
  br label %cleanup

do.body5:                                         ; preds = %for.inc.3.do.body5_crit_edge, %for.inc.2.do.body5_crit_edge, %for.inc.1.do.body5_crit_edge, %for.inc.do.body5_crit_edge, %entry.do.body5_crit_edge
  %i.030.lcssa = phi i32 [ 0, %entry.do.body5_crit_edge ], [ 1, %for.inc.do.body5_crit_edge ], [ 2, %for.inc.1.do.body5_crit_edge ], [ 3, %for.inc.2.do.body5_crit_edge ], [ 4, %for.inc.3.do.body5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %16 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5.if.end11_crit_edge, label %do.end10

do.body5.if.end11_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 5, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %name, i32 noundef %i.030.lcssa) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %do.body5.if.end11_crit_edge
  %urbcomplete = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 21
  tail call void @_set_bit(i32 noundef %i.030.lcssa, ptr noundef %urbcomplete) #10
  %urbwork = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %urbwork) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.inc.4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxusb_medion_urbs_free(ptr nocapture noundef %cxdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 20, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %5) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer.1 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer.1, align 4
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %12) #10
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer.2 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transfer_buffer.2, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %19) #10
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %22, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer.3 = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer_buffer.3, align 4
  tail call void @kfree(ptr noundef %24) #10
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %26) #10
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 20, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %29, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer.4 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer.4, align 4
  tail call void @kfree(ptr noundef %31) #10
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_free_urb(ptr noundef %33) #10
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_videoradio_open(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %f) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @cxusb_medion_get(ptr noundef %1, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %f) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %do.body, label %ret_release

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %2 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %4, i32 0, i32 5, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %name) #13
  br label %cleanup

ret_release:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxusb_medion_put(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %ret_release, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %ret_release ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_videoradio_release(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %f) #10
  %call.i = tail call ptr @video_devdata(ptr noundef %f) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %2 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %4, i32 0, i32 5, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %name) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @vb2_fop_release(ptr noundef %f) #10
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @v4l2_fh_release(ptr noundef %f) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %call7, %if.then6 ], [ %call8, %if.else ]
  tail call void @cxusb_medion_put(ptr noundef %1) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxusb_medion_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxusb_medion_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_v_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %driver1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 6
  %4 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %7, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.157, i32 noundef 32) #10
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 1
  %call.i12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.158, ptr noundef %13, ptr noundef %devpath.i) #10
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2063269887, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxusb_medion_v_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1498831189, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %width = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 8
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height3, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1498831189, ptr %pixelformat, align 4
  %start_streaming_called.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 12, i32 28
  %11 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %12 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not = icmp eq i16 %12, 0
  br i1 %tobool.i.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %field_order = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %field_order to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field_order, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @cxusb_medion_field_order(ptr noundef %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %call6, %cond.false ]
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %field, align 4
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %mul = shl i32 %17, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %bytesperline, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %colorspace, align 4
  %20 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height3, align 4
  %mul15 = mul i32 %21, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul15, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cxusb_medion_try_s_fmt_vid_cap(ptr noundef %file, ptr noundef %f, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cxusb_medion_try_s_fmt_vid_cap(ptr noundef %file, ptr noundef %f, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

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
define internal i32 @cxusb_medion_g_std(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %norm1 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %norm1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %norm1, align 8
  %6 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %norm, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  %. = select i1 %cmp, i32 -61, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_s_std(ptr noundef %file, ptr nocapture noundef readnone %fh, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call fastcc i32 @cxusb_medion_set_norm(ptr noundef %3, i64 noundef %norm)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_querystd(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %input = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i64 255, i64 16777215
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cx25840, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.else2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else2:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.else2.do.body_crit_edge, label %land.lhs.true

if.else2.do.body_crit_edge:                       ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.else2
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %querystd, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %land.lhs.true.do.body_crit_edge, label %if.else8

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.else8.if.else16_crit_edge, label %land.lhs.true10

if.else8.if.else16_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

land.lhs.true10:                                  ; preds = %if.else8
  %querystd11 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %querystd11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %querystd11, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else16_crit_edge, label %land.lhs.true10.if.end23_crit_edge

land.lhs.true10.if.end23_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true10.if.else16_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true10.if.else16_crit_edge, %if.else8.if.else16_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else16, %land.lhs.true10.if.end23_crit_edge
  %.sink = phi ptr [ %13, %if.else16 ], [ %16, %land.lhs.true10.if.end23_crit_edge ]
  %call20 = tail call i32 %.sink(ptr noundef nonnull %7, ptr noundef %norm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp24.not = icmp eq i32 %call20, 0
  br i1 %cmp24.not, label %do.body37, label %if.end23.do.body_crit_edge

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end23.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.else2.do.body_crit_edge, %entry.do.body_crit_edge
  %__result.078 = phi i32 [ %call20, %if.end23.do.body_crit_edge ], [ -515, %if.else2.do.body_crit_edge ], [ -515, %land.lhs.true.do.body_crit_edge ], [ -19, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %17 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %19, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %input, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef %name, i32 noundef %21) #13
  br label %cleanup

do.body37:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %22 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and40 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body37.if.end52_crit_edge, label %do.end45

do.body37.if.end52_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.end45:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %name48 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %24, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %input, align 4
  %27 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %norm, align 8
  %conv = trunc i64 %28 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name48, i32 noundef %26, i32 noundef %conv) #13
  br label %if.end52

if.end52:                                         ; preds = %do.end45, %do.body37.if.end52_crit_edge
  %29 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %norm, align 8
  %and55 = and i64 %30, %.
  store i64 %and55, ptr %norm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ %__result.078, %do.end ], [ %__result.078, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_enum_input(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %inp) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.anon.169], ptr @cxusb_medion_inputs, i32 0, i32 %5
  %6 = call ptr @memcpy(ptr %inp, ptr %arrayidx, i32 80)
  %7 = ptrtoint ptr %inp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %inp, align 8
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 7
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capabilities, align 4
  %or = or i32 %9, 4
  store i32 %or, ptr %capabilities, align 4
  %input3 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %input3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp4 = icmp eq i32 %5, %11
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %status, align 4
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cx25840, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.then5.do.end_crit_edge, label %if.else

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else:                                          ; preds = %if.then5
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %video, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.else.do.end_crit_edge, label %land.lhs.true

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.else
  %g_input_status = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %g_input_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g_input_status, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %if.else12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %g_input_status15 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %g_input_status15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %g_input_status15, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %land.lhs.true14.if.end27_crit_edge
  %.sink = phi ptr [ %20, %if.else20 ], [ %23, %land.lhs.true14.if.end27_crit_edge ]
  %call24 = call i32 %.sink(ptr noundef nonnull %14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp28.not = icmp eq i32 %call24, 0
  br i1 %cmp28.not, label %if.else30, label %if.end27.do.end_crit_edge

if.end27.do.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end27.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge, %if.then5.do.end_crit_edge
  %__result.057 = phi i32 [ %call24, %if.end27.do.end_crit_edge ], [ -515, %if.else.do.end_crit_edge ], [ -515, %land.lhs.true.do.end_crit_edge ], [ -19, %if.then5.do.end_crit_edge ]
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.175, i32 noundef %__result.057) #13
  br label %if.end32

if.else30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  %status31 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %28 = ptrtoint ptr %status31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %status31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end32 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_g_input(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %input = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 4
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_s_input(ptr noundef %file, ptr nocapture noundef readnone %fh, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i)
  %cmp = icmp ugt i32 %i, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cx25840, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.else7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end24_crit_edge

land.lhs.true9.if.end24_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else15, %land.lhs.true9.if.end24_crit_edge
  %.sink66 = phi ptr [ %11, %if.else15 ], [ %14, %land.lhs.true9.if.end24_crit_edge ]
  %inputcfg20 = getelementptr [3 x %struct.anon.169], ptr @cxusb_medion_inputs, i32 0, i32 %i, i32 1
  %15 = ptrtoint ptr %inputcfg20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inputcfg20, align 8
  %call21 = tail call i32 %.sink66(ptr noundef nonnull %5, i32 noundef %16, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp25.not = icmp eq i32 %call21, 0
  br i1 %cmp25.not, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %input = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i, ptr %input, align 4
  %std = getelementptr [3 x %struct.anon.169], ptr @cxusb_medion_inputs, i32 0, i32 %i, i32 0, i32 5
  %18 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %std, align 8
  %videodev = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %videodev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %videodev, align 8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %tvnorms, align 8
  %norm30 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 19
  %23 = ptrtoint ptr %norm30 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %norm30, align 8
  %and = and i64 %24, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp34 = icmp eq i64 %and, 0
  %spec.select = select i1 %cmp34, i64 %19, i64 %and
  %call40 = tail call fastcc i32 @cxusb_medion_set_norm(ptr noundef %3, i64 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ %call21, %if.end24.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %tuner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %4 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 13
  %6 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %spec.select = select i1 %cmp2, i32 2, i32 1
  %8 = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 3
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %capability, align 4
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 9
  %11 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %afc, align 4
  %tda9887 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %tda9887 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tda9887, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else7:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %tuner8 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %tuner8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tuner8, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.else7.cleanup_crit_edge, label %land.lhs.true

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else7
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %g_tuner, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.else14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %g_tuner17 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %g_tuner17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %g_tuner17, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.if.end29_crit_edge

land.lhs.true16.if.end29_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %land.lhs.true16.if.end29_crit_edge
  %.sink = phi ptr [ %19, %if.else22 ], [ %22, %land.lhs.true16.if.end29_crit_edge ]
  %call26 = tail call i32 %.sink(ptr noundef nonnull %13, ptr noundef %tuner) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp30.not = icmp eq i32 %call26, 0
  br i1 %cmp30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %tuner34 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %tuner34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tuner34, align 8
  %tobool36.not = icmp eq ptr %24, null
  br i1 %tobool36.not, label %if.end32.cleanup_crit_edge, label %if.else38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else38:                                        ; preds = %if.end32
  %ops39 = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %ops39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops39, align 4
  %tuner40 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %tuner40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tuner40, align 4
  %tobool41.not = icmp eq ptr %28, null
  br i1 %tobool41.not, label %if.else38.cleanup_crit_edge, label %land.lhs.true42

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true42:                                  ; preds = %if.else38
  %g_tuner45 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %g_tuner45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %g_tuner45, align 4
  %tobool46.not = icmp eq ptr %30, null
  br i1 %tobool46.not, label %land.lhs.true42.cleanup_crit_edge, label %if.else48

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else48:                                        ; preds = %land.lhs.true42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool49.not = icmp eq ptr %31, null
  br i1 %tobool49.not, label %if.else48.if.else56_crit_edge, label %land.lhs.true50

if.else48.if.else56_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else56

land.lhs.true50:                                  ; preds = %if.else48
  %g_tuner51 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %g_tuner51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %g_tuner51, align 4
  %tobool52.not = icmp eq ptr %33, null
  br i1 %tobool52.not, label %land.lhs.true50.if.else56_crit_edge, label %land.lhs.true50.if.end63_crit_edge

land.lhs.true50.if.end63_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true50.if.else56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else56

if.else56:                                        ; preds = %land.lhs.true50.if.else56_crit_edge, %if.else48.if.else56_crit_edge
  br label %if.end63

if.end63:                                         ; preds = %if.else56, %land.lhs.true50.if.end63_crit_edge
  %.sink170 = phi ptr [ %30, %if.else56 ], [ %33, %land.lhs.true50.if.end63_crit_edge ]
  %call60 = tail call i32 %.sink170(ptr noundef nonnull %24, ptr noundef %tuner) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp65.not = icmp eq i32 %call60, 0
  br i1 %cmp65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 8
  %34 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %signal, align 4
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %35 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cx25840, align 4
  %tobool70.not = icmp eq ptr %36, null
  br i1 %tobool70.not, label %if.end67.cleanup_crit_edge, label %if.else72

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else72:                                        ; preds = %if.end67
  %ops73 = getelementptr inbounds %struct.v4l2_subdev, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %ops73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops73, align 4
  %tuner74 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %tuner74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tuner74, align 4
  %tobool75.not = icmp eq ptr %40, null
  br i1 %tobool75.not, label %if.else72.cleanup_crit_edge, label %land.lhs.true76

if.else72.cleanup_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true76:                                  ; preds = %if.else72
  %g_tuner79 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %g_tuner79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %g_tuner79, align 4
  %tobool80.not = icmp eq ptr %42, null
  br i1 %tobool80.not, label %land.lhs.true76.cleanup_crit_edge, label %if.else82

land.lhs.true76.cleanup_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else82:                                        ; preds = %land.lhs.true76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool83.not = icmp eq ptr %43, null
  br i1 %tobool83.not, label %if.else82.if.else90_crit_edge, label %land.lhs.true84

if.else82.if.else90_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else90

land.lhs.true84:                                  ; preds = %if.else82
  %g_tuner85 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %g_tuner85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %g_tuner85, align 4
  %tobool86.not = icmp eq ptr %45, null
  br i1 %tobool86.not, label %land.lhs.true84.if.else90_crit_edge, label %land.lhs.true84.if.end97_crit_edge

land.lhs.true84.if.end97_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

land.lhs.true84.if.else90_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else90

if.else90:                                        ; preds = %land.lhs.true84.if.else90_crit_edge, %if.else82.if.else90_crit_edge
  br label %if.end97

if.end97:                                         ; preds = %if.else90, %land.lhs.true84.if.end97_crit_edge
  %.sink171 = phi ptr [ %42, %if.else90 ], [ %45, %land.lhs.true84.if.end97_crit_edge ]
  %call94 = tail call i32 %.sink171(ptr noundef nonnull %36, ptr noundef %tuner) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp99.not = icmp eq i32 %call94, 0
  br i1 %cmp99.not, label %if.end101, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp103 = icmp eq i32 %47, 0
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 1
  %.str.177..str.178 = select i1 %cmp103, ptr @.str.177, ptr @.str.178
  %call109 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %.str.177..str.178, i32 noundef 32) #10
  %reserved = getelementptr inbounds %struct.v4l2_tuner, ptr %tuner, i32 0, i32 10
  %48 = call ptr @memset(ptr %reserved, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.end97.cleanup_crit_edge, %land.lhs.true76.cleanup_crit_edge, %if.else72.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %if.else38.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end101 ], [ -22, %entry.cleanup_crit_edge ], [ %call26, %if.end29.cleanup_crit_edge ], [ %call60, %if.end63.cleanup_crit_edge ], [ %call94, %if.end97.cleanup_crit_edge ], [ -515, %if.else7.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %if.else38.cleanup_crit_edge ], [ -515, %land.lhs.true42.cleanup_crit_edge ], [ -19, %if.end32.cleanup_crit_edge ], [ -515, %if.else72.cleanup_crit_edge ], [ -515, %land.lhs.true76.cleanup_crit_edge ], [ -19, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %tuner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %4 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tda9887 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %tda9887 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tda9887, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tuner3 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tuner3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tuner3, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_tuner, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.else9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else9:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.else9.if.else17_crit_edge, label %land.lhs.true11

if.else9.if.else17_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

land.lhs.true11:                                  ; preds = %if.else9
  %s_tuner12 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %s_tuner12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_tuner12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %land.lhs.true11.if.else17_crit_edge, label %land.lhs.true11.if.end24_crit_edge

land.lhs.true11.if.end24_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true11.if.else17_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true11.if.else17_crit_edge, %if.else9.if.else17_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %land.lhs.true11.if.end24_crit_edge
  %.sink = phi ptr [ %13, %if.else17 ], [ %16, %land.lhs.true11.if.end24_crit_edge ]
  %call21 = tail call i32 %.sink(ptr noundef nonnull %7, ptr noundef %tuner) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp25.not = icmp eq i32 %call21, 0
  br i1 %cmp25.not, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %tuner29 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %tuner29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tuner29, align 8
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.else33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else33:                                        ; preds = %if.end27
  %ops34 = getelementptr inbounds %struct.v4l2_subdev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops34, align 4
  %tuner35 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %tuner35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tuner35, align 4
  %tobool36.not = icmp eq ptr %22, null
  br i1 %tobool36.not, label %if.else33.cleanup_crit_edge, label %land.lhs.true37

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.else33
  %s_tuner40 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %s_tuner40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_tuner40, align 4
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %land.lhs.true37.cleanup_crit_edge, label %if.else43

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else43:                                        ; preds = %land.lhs.true37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool44.not = icmp eq ptr %25, null
  br i1 %tobool44.not, label %if.else43.if.else51_crit_edge, label %land.lhs.true45

if.else43.if.else51_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

land.lhs.true45:                                  ; preds = %if.else43
  %s_tuner46 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %s_tuner46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_tuner46, align 4
  %tobool47.not = icmp eq ptr %27, null
  br i1 %tobool47.not, label %land.lhs.true45.if.else51_crit_edge, label %land.lhs.true45.if.end58_crit_edge

land.lhs.true45.if.end58_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true45.if.else51_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

if.else51:                                        ; preds = %land.lhs.true45.if.else51_crit_edge, %if.else43.if.else51_crit_edge
  br label %if.end58

if.end58:                                         ; preds = %if.else51, %land.lhs.true45.if.end58_crit_edge
  %.sink227 = phi ptr [ %24, %if.else51 ], [ %27, %land.lhs.true45.if.end58_crit_edge ]
  %call55 = tail call i32 %.sink227(ptr noundef nonnull %18, ptr noundef %tuner) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp60.not = icmp eq i32 %call55, 0
  br i1 %cmp60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 13
  %28 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp63 = icmp eq i32 %29, 0
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cx25840, align 4
  %tobool67.not = icmp eq ptr %31, null
  br i1 %cmp63, label %if.then64, label %if.else95

if.then64:                                        ; preds = %if.end62
  br i1 %tobool67.not, label %if.then64.if.end127_crit_edge, label %if.else69

if.then64.if.end127_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else69:                                        ; preds = %if.then64
  %ops70 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %ops70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops70, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %video, align 4
  %tobool71.not = icmp eq ptr %35, null
  br i1 %tobool71.not, label %if.else69.if.end127_crit_edge, label %land.lhs.true72

if.else69.if.end127_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true72:                                  ; preds = %if.else69
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_std, align 4
  %tobool75.not = icmp eq ptr %37, null
  br i1 %tobool75.not, label %land.lhs.true72.if.end127_crit_edge, label %if.else77

land.lhs.true72.if.end127_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else77:                                        ; preds = %land.lhs.true72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool78.not = icmp eq ptr %38, null
  br i1 %tobool78.not, label %if.else77.if.else85_crit_edge, label %land.lhs.true79

if.else77.if.else85_crit_edge:                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85

land.lhs.true79:                                  ; preds = %if.else77
  %s_std80 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %s_std80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_std80, align 4
  %tobool81.not = icmp eq ptr %40, null
  br i1 %tobool81.not, label %land.lhs.true79.if.else85_crit_edge, label %if.then82

land.lhs.true79.if.else85_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  %norm = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 19
  %41 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %norm, align 8
  %call84 = tail call i32 %40(ptr noundef nonnull %31, i64 noundef %42) #10
  br label %if.end127

if.else85:                                        ; preds = %land.lhs.true79.if.else85_crit_edge, %if.else77.if.else85_crit_edge
  %norm89 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 19
  %43 = ptrtoint ptr %norm89 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %norm89, align 8
  %call90 = tail call i32 %37(ptr noundef nonnull %31, i64 noundef %44) #10
  br label %if.end127

if.else95:                                        ; preds = %if.end62
  br i1 %tobool67.not, label %if.else95.if.end127_crit_edge, label %if.else101

if.else95.if.end127_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else101:                                       ; preds = %if.else95
  %ops102 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %45 = ptrtoint ptr %ops102 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops102, align 4
  %tuner103 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %tuner103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner103, align 4
  %tobool104.not = icmp eq ptr %48, null
  br i1 %tobool104.not, label %if.else101.if.end127_crit_edge, label %land.lhs.true105

if.else101.if.end127_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true105:                                 ; preds = %if.else101
  %s_radio = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %s_radio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_radio, align 4
  %tobool108.not = icmp eq ptr %50, null
  br i1 %tobool108.not, label %land.lhs.true105.if.end127_crit_edge, label %if.else110

land.lhs.true105.if.end127_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else110:                                       ; preds = %land.lhs.true105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool111.not = icmp eq ptr %51, null
  br i1 %tobool111.not, label %if.else110.if.else118_crit_edge, label %land.lhs.true112

if.else110.if.else118_crit_edge:                  ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else118

land.lhs.true112:                                 ; preds = %if.else110
  %s_radio113 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %s_radio113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_radio113, align 4
  %tobool114.not = icmp eq ptr %53, null
  br i1 %tobool114.not, label %land.lhs.true112.if.else118_crit_edge, label %if.then115

land.lhs.true112.if.else118_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else118

if.then115:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  %call117 = tail call i32 %53(ptr noundef nonnull %31) #10
  br label %if.end127

if.else118:                                       ; preds = %land.lhs.true112.if.else118_crit_edge, %if.else110.if.else118_crit_edge
  %call122 = tail call i32 %50(ptr noundef nonnull %31) #10
  br label %if.end127

if.end127:                                        ; preds = %if.else118, %if.then115, %land.lhs.true105.if.end127_crit_edge, %if.else101.if.end127_crit_edge, %if.else95.if.end127_crit_edge, %if.else85, %if.then82, %land.lhs.true72.if.end127_crit_edge, %if.else69.if.end127_crit_edge, %if.then64.if.end127_crit_edge
  %cx25840129 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %cx25840129 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cx25840129, align 4
  %tobool131.not = icmp eq ptr %55, null
  br i1 %tobool131.not, label %if.end127.cleanup_crit_edge, label %if.else133

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else133:                                       ; preds = %if.end127
  %ops134 = getelementptr inbounds %struct.v4l2_subdev, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %ops134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops134, align 4
  %tuner135 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %tuner135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tuner135, align 4
  %tobool136.not = icmp eq ptr %59, null
  br i1 %tobool136.not, label %if.else133.cleanup_crit_edge, label %land.lhs.true137

if.else133.cleanup_crit_edge:                     ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true137:                                 ; preds = %if.else133
  %s_tuner140 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %s_tuner140 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_tuner140, align 4
  %tobool141.not = icmp eq ptr %61, null
  br i1 %tobool141.not, label %land.lhs.true137.cleanup_crit_edge, label %if.else143

land.lhs.true137.cleanup_crit_edge:               ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else143:                                       ; preds = %land.lhs.true137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool144.not = icmp eq ptr %62, null
  br i1 %tobool144.not, label %if.else143.if.else151_crit_edge, label %land.lhs.true145

if.else143.if.else151_crit_edge:                  ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else151

land.lhs.true145:                                 ; preds = %if.else143
  %s_tuner146 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %s_tuner146 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_tuner146, align 4
  %tobool147.not = icmp eq ptr %64, null
  br i1 %tobool147.not, label %land.lhs.true145.if.else151_crit_edge, label %land.lhs.true145.cleanup.sink.split_crit_edge

land.lhs.true145.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true145.if.else151_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else151

if.else151:                                       ; preds = %land.lhs.true145.if.else151_crit_edge, %if.else143.if.else151_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else151, %land.lhs.true145.cleanup.sink.split_crit_edge
  %.sink228 = phi ptr [ %61, %if.else151 ], [ %64, %land.lhs.true145.cleanup.sink.split_crit_edge ]
  %call150 = tail call i32 %.sink228(ptr noundef nonnull %55, ptr noundef %tuner) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true137.cleanup_crit_edge, %if.else133.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %if.else33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call21, %if.end24.cleanup_crit_edge ], [ %call55, %if.end58.cleanup_crit_edge ], [ -19, %if.end127.cleanup_crit_edge ], [ -515, %land.lhs.true137.cleanup_crit_edge ], [ -515, %if.else133.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %if.else33.cleanup_crit_edge ], [ -515, %land.lhs.true37.cleanup_crit_edge ], [ -19, %if.end27.cleanup_crit_edge ], [ %call150, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %tuner1 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %tuner1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner1, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tuner3 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tuner3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tuner3, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %g_frequency, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.else9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else9:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.else9.if.else17_crit_edge, label %land.lhs.true11

if.else9.if.else17_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

land.lhs.true11:                                  ; preds = %if.else9
  %g_frequency12 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %g_frequency12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %g_frequency12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %land.lhs.true11.if.else17_crit_edge, label %land.lhs.true11.cleanup.sink.split_crit_edge

land.lhs.true11.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true11.if.else17_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true11.if.else17_crit_edge, %if.else9.if.else17_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else17, %land.lhs.true11.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.else17 ], [ %16, %land.lhs.true11.cleanup.sink.split_crit_edge ]
  %call16 = tail call i32 %.sink(ptr noundef nonnull %7, ptr noundef %freq) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ %call16, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #10
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tda9887 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %tda9887 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tda9887, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tuner3 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tuner3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tuner3, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_frequency, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.else9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else9:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.else9.if.else17_crit_edge, label %land.lhs.true11

if.else9.if.else17_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

land.lhs.true11:                                  ; preds = %if.else9
  %s_frequency12 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_frequency12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_frequency12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %land.lhs.true11.if.else17_crit_edge, label %land.lhs.true11.if.end24_crit_edge

land.lhs.true11.if.end24_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true11.if.else17_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true11.if.else17_crit_edge, %if.else9.if.else17_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %land.lhs.true11.if.end24_crit_edge
  %.sink = phi ptr [ %13, %if.else17 ], [ %16, %land.lhs.true11.if.end24_crit_edge ]
  %call21 = tail call i32 %.sink(ptr noundef nonnull %7, ptr noundef %freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp25.not = icmp eq i32 %call21, 0
  br i1 %cmp25.not, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %tuner29 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %tuner29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tuner29, align 8
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.else33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else33:                                        ; preds = %if.end27
  %ops34 = getelementptr inbounds %struct.v4l2_subdev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops34, align 4
  %tuner35 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %tuner35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tuner35, align 4
  %tobool36.not = icmp eq ptr %22, null
  br i1 %tobool36.not, label %if.else33.cleanup_crit_edge, label %land.lhs.true37

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.else33
  %s_frequency40 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %s_frequency40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_frequency40, align 4
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %land.lhs.true37.cleanup_crit_edge, label %if.else43

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else43:                                        ; preds = %land.lhs.true37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool44.not = icmp eq ptr %25, null
  br i1 %tobool44.not, label %if.else43.if.else51_crit_edge, label %land.lhs.true45

if.else43.if.else51_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

land.lhs.true45:                                  ; preds = %if.else43
  %s_frequency46 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %s_frequency46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_frequency46, align 4
  %tobool47.not = icmp eq ptr %27, null
  br i1 %tobool47.not, label %land.lhs.true45.if.else51_crit_edge, label %land.lhs.true45.if.end58_crit_edge

land.lhs.true45.if.end58_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true45.if.else51_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

if.else51:                                        ; preds = %land.lhs.true45.if.else51_crit_edge, %if.else43.if.else51_crit_edge
  br label %if.end58

if.end58:                                         ; preds = %if.else51, %land.lhs.true45.if.end58_crit_edge
  %.sink227 = phi ptr [ %24, %if.else51 ], [ %27, %land.lhs.true45.if.end58_crit_edge ]
  %call55 = tail call i32 %.sink227(ptr noundef nonnull %18, ptr noundef %freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp60.not = icmp eq i32 %call55, 0
  br i1 %cmp60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 13
  %28 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp63 = icmp eq i32 %29, 0
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cx25840, align 4
  %tobool67.not = icmp eq ptr %31, null
  br i1 %cmp63, label %if.then64, label %if.else95

if.then64:                                        ; preds = %if.end62
  br i1 %tobool67.not, label %if.then64.if.end127_crit_edge, label %if.else69

if.then64.if.end127_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else69:                                        ; preds = %if.then64
  %ops70 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %ops70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops70, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %video, align 4
  %tobool71.not = icmp eq ptr %35, null
  br i1 %tobool71.not, label %if.else69.if.end127_crit_edge, label %land.lhs.true72

if.else69.if.end127_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true72:                                  ; preds = %if.else69
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_std, align 4
  %tobool75.not = icmp eq ptr %37, null
  br i1 %tobool75.not, label %land.lhs.true72.if.end127_crit_edge, label %if.else77

land.lhs.true72.if.end127_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else77:                                        ; preds = %land.lhs.true72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool78.not = icmp eq ptr %38, null
  br i1 %tobool78.not, label %if.else77.if.else85_crit_edge, label %land.lhs.true79

if.else77.if.else85_crit_edge:                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85

land.lhs.true79:                                  ; preds = %if.else77
  %s_std80 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %s_std80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_std80, align 4
  %tobool81.not = icmp eq ptr %40, null
  br i1 %tobool81.not, label %land.lhs.true79.if.else85_crit_edge, label %if.then82

land.lhs.true79.if.else85_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else85

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  %norm = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 19
  %41 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %norm, align 8
  %call84 = tail call i32 %40(ptr noundef nonnull %31, i64 noundef %42) #10
  br label %if.end127

if.else85:                                        ; preds = %land.lhs.true79.if.else85_crit_edge, %if.else77.if.else85_crit_edge
  %norm89 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 19
  %43 = ptrtoint ptr %norm89 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %norm89, align 8
  %call90 = tail call i32 %37(ptr noundef nonnull %31, i64 noundef %44) #10
  br label %if.end127

if.else95:                                        ; preds = %if.end62
  br i1 %tobool67.not, label %if.else95.if.end127_crit_edge, label %if.else101

if.else95.if.end127_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else101:                                       ; preds = %if.else95
  %ops102 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %45 = ptrtoint ptr %ops102 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops102, align 4
  %tuner103 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %tuner103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner103, align 4
  %tobool104.not = icmp eq ptr %48, null
  br i1 %tobool104.not, label %if.else101.if.end127_crit_edge, label %land.lhs.true105

if.else101.if.end127_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true105:                                 ; preds = %if.else101
  %s_radio = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %s_radio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_radio, align 4
  %tobool108.not = icmp eq ptr %50, null
  br i1 %tobool108.not, label %land.lhs.true105.if.end127_crit_edge, label %if.else110

land.lhs.true105.if.end127_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.else110:                                       ; preds = %land.lhs.true105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool111.not = icmp eq ptr %51, null
  br i1 %tobool111.not, label %if.else110.if.else118_crit_edge, label %land.lhs.true112

if.else110.if.else118_crit_edge:                  ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else118

land.lhs.true112:                                 ; preds = %if.else110
  %s_radio113 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %s_radio113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_radio113, align 4
  %tobool114.not = icmp eq ptr %53, null
  br i1 %tobool114.not, label %land.lhs.true112.if.else118_crit_edge, label %if.then115

land.lhs.true112.if.else118_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else118

if.then115:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  %call117 = tail call i32 %53(ptr noundef nonnull %31) #10
  br label %if.end127

if.else118:                                       ; preds = %land.lhs.true112.if.else118_crit_edge, %if.else110.if.else118_crit_edge
  %call122 = tail call i32 %50(ptr noundef nonnull %31) #10
  br label %if.end127

if.end127:                                        ; preds = %if.else118, %if.then115, %land.lhs.true105.if.end127_crit_edge, %if.else101.if.end127_crit_edge, %if.else95.if.end127_crit_edge, %if.else85, %if.then82, %land.lhs.true72.if.end127_crit_edge, %if.else69.if.end127_crit_edge, %if.then64.if.end127_crit_edge
  %cx25840129 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %cx25840129 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cx25840129, align 4
  %tobool131.not = icmp eq ptr %55, null
  br i1 %tobool131.not, label %if.end127.cleanup_crit_edge, label %if.else133

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else133:                                       ; preds = %if.end127
  %ops134 = getelementptr inbounds %struct.v4l2_subdev, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %ops134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops134, align 4
  %tuner135 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %tuner135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tuner135, align 4
  %tobool136.not = icmp eq ptr %59, null
  br i1 %tobool136.not, label %if.else133.cleanup_crit_edge, label %land.lhs.true137

if.else133.cleanup_crit_edge:                     ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true137:                                 ; preds = %if.else133
  %s_frequency140 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %s_frequency140 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_frequency140, align 4
  %tobool141.not = icmp eq ptr %61, null
  br i1 %tobool141.not, label %land.lhs.true137.cleanup_crit_edge, label %if.else143

land.lhs.true137.cleanup_crit_edge:               ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else143:                                       ; preds = %land.lhs.true137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool144.not = icmp eq ptr %62, null
  br i1 %tobool144.not, label %if.else143.if.else151_crit_edge, label %land.lhs.true145

if.else143.if.else151_crit_edge:                  ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else151

land.lhs.true145:                                 ; preds = %if.else143
  %s_frequency146 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %s_frequency146 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_frequency146, align 4
  %tobool147.not = icmp eq ptr %64, null
  br i1 %tobool147.not, label %land.lhs.true145.if.else151_crit_edge, label %land.lhs.true145.cleanup.sink.split_crit_edge

land.lhs.true145.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true145.if.else151_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else151

if.else151:                                       ; preds = %land.lhs.true145.if.else151_crit_edge, %if.else143.if.else151_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else151, %land.lhs.true145.cleanup.sink.split_crit_edge
  %.sink228 = phi ptr [ %61, %if.else151 ], [ %64, %land.lhs.true145.cleanup.sink.split_crit_edge ]
  %call150 = tail call i32 %.sink228(ptr noundef nonnull %55, ptr noundef %freq) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true137.cleanup_crit_edge, %if.else133.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %if.else33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call21, %if.end24.cleanup_crit_edge ], [ %call55, %if.end58.cleanup_crit_edge ], [ -19, %if.end127.cleanup_crit_edge ], [ -515, %land.lhs.true137.cleanup_crit_edge ], [ -515, %if.else133.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -515, %if.else33.cleanup_crit_edge ], [ -515, %land.lhs.true37.cleanup_crit_edge ], [ -19, %if.end27.cleanup_crit_edge ], [ %call150, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_log_status(ptr noundef %file, ptr nocapture noundef readnone %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %subdevs = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn25 = load ptr, ptr %subdevs, align 4
  %cmp.not27 = icmp eq ptr %.pn25, %subdevs
  br i1 %cmp.not27, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn25, %entry.for.body_crit_edge ]
  %__sd.029 = getelementptr i8, ptr %.pn28, i32 -80
  %ops = getelementptr i8, ptr %.pn28, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 %10(ptr noundef %__sd.029) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxusb_medion_try_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef %f, i1 noundef zeroext %isset) unnamed_addr #0 align 64 {
entry:
  %subfmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %subfmt) #10
  br i1 %isset, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 12, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %start_streaming_called.i = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 12, i32 28
  %6 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %7 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %field_order = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %field_order to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field_order, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @cxusb_medion_field_order(ptr noundef %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %call4, %cond.false ]
  %10 = getelementptr inbounds i8, ptr %subfmt, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 84)
  %cond6 = zext i1 %isset to i32
  %12 = ptrtoint ptr %subfmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond6, ptr %subfmt, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 4
  %and = and i32 %14, -2
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2
  %15 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %and9 = and i32 %17, -2
  %height11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and9, ptr %height11, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %code, align 4
  %field14 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %field14, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %subfmt, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %colorspace, align 4
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cx25840, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %cond.end.cleanup_crit_edge, label %if.else

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pad, align 4
  %tobool18.not = icmp eq ptr %27, null
  br i1 %tobool18.not, label %if.else.cleanup_crit_edge, label %land.lhs.true19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_fmt, align 4
  %tobool22.not = icmp eq ptr %29, null
  br i1 %tobool22.not, label %land.lhs.true19.cleanup_crit_edge, label %if.else24

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else24:                                        ; preds = %land.lhs.true19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool25.not = icmp eq ptr %30, null
  br i1 %tobool25.not, label %if.else24.if.else32_crit_edge, label %land.lhs.true26

if.else24.if.else32_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

land.lhs.true26:                                  ; preds = %if.else24
  %set_fmt27 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %set_fmt27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_fmt27, align 4
  %tobool28.not = icmp eq ptr %32, null
  br i1 %tobool28.not, label %land.lhs.true26.if.else32_crit_edge, label %land.lhs.true26.if.end39_crit_edge

land.lhs.true26.if.end39_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true26.if.else32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else32

if.else32:                                        ; preds = %land.lhs.true26.if.else32_crit_edge, %if.else24.if.else32_crit_edge
  br label %if.end39

if.end39:                                         ; preds = %if.else32, %land.lhs.true26.if.end39_crit_edge
  %.sink = phi ptr [ %29, %if.else32 ], [ %32, %land.lhs.true26.if.end39_crit_edge ]
  %call36 = call i32 %.sink(ptr noundef nonnull %23, ptr noundef null, ptr noundef nonnull %subfmt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp.not = icmp eq i32 %call36, 0
  br i1 %cmp.not, label %if.end41, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end39
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %format, align 4
  %35 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fmt, align 4
  %36 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height11, align 4
  %38 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1498831189, ptr %pixelformat, align 4
  %field52 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %field52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond, ptr %field52, align 4
  %mul = shl i32 %34, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %41 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul, ptr %bytesperline, align 4
  %mul60 = mul i32 %37, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %42 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul60, ptr %sizeimage, align 4
  %colorspace63 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %colorspace63 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %colorspace63, align 4
  br i1 %isset, label %if.then65, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then65:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %width68 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 15
  %44 = ptrtoint ptr %width68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %34, ptr %width68, align 4
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %height71 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 16
  %47 = ptrtoint ptr %height71 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %height71, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end41.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ %call36, %if.end39.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %if.end41.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true19.cleanup_crit_edge ], [ -19, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %subfmt) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxusb_medion_set_norm(ptr nocapture noundef %cxdev, i64 noundef %norm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dvbdev1 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 1
  %0 = ptrtoint ptr %dvbdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvbdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32))
  %2 = load i32, ptr @dvb_usb_cxusb_debug, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %name = getelementptr inbounds %struct.cxusb_medion_dev, ptr %4, i32 0, i32 5, i32 4
  %input = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 13
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input, align 4
  %conv = trunc i64 %norm to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name, i32 noundef %6, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %norm)
  %cmp = icmp eq i64 %norm, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %input8 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 13
  %7 = ptrtoint ptr %input8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.not = icmp eq i32 %8, 0
  br i1 %cmp9.not, label %if.end39, label %if.then11

if.then11:                                        ; preds = %if.end7
  %cx25840 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 6
  %9 = ptrtoint ptr %cx25840 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cx25840, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.then11.cleanup_crit_edge, label %if.else

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then11
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_std, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %if.else19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else19:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.else19.if.else27_crit_edge, label %land.lhs.true21

if.else19.if.else27_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else27

land.lhs.true21:                                  ; preds = %if.else19
  %s_std22 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %s_std22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_std22, align 4
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %land.lhs.true21.if.else27_crit_edge, label %land.lhs.true21.if.end34_crit_edge

land.lhs.true21.if.end34_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true21.if.else27_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else27

if.else27:                                        ; preds = %land.lhs.true21.if.else27_crit_edge, %if.else19.if.else27_crit_edge
  br label %if.end34

if.end34:                                         ; preds = %if.else27, %land.lhs.true21.if.end34_crit_edge
  %.sink = phi ptr [ %16, %if.else27 ], [ %19, %land.lhs.true21.if.end34_crit_edge ]
  %call31 = tail call i32 %.sink(ptr noundef nonnull %10, i64 noundef %norm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool36.not = icmp eq i32 %call31, 0
  br i1 %tobool36.not, label %if.end34.ret_savenorm_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34.ret_savenorm_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_savenorm

if.end39:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %norm)
  %cmp41.not = icmp ult i64 %norm, 256
  br i1 %cmp41.not, label %if.end44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %tda9887 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 8
  %20 = ptrtoint ptr %tda9887 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tda9887, align 4
  %tobool47.not = icmp eq ptr %21, null
  br i1 %tobool47.not, label %if.end44.do.end81_crit_edge, label %if.else49

if.end44.do.end81_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81

if.else49:                                        ; preds = %if.end44
  %ops50 = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %ops50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops50, align 4
  %video51 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %video51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %video51, align 4
  %tobool52.not = icmp eq ptr %25, null
  br i1 %tobool52.not, label %if.else49.do.end81_crit_edge, label %land.lhs.true53

if.else49.do.end81_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81

land.lhs.true53:                                  ; preds = %if.else49
  %s_std56 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %s_std56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_std56, align 4
  %tobool57.not = icmp eq ptr %27, null
  br i1 %tobool57.not, label %land.lhs.true53.do.end81_crit_edge, label %if.else59

land.lhs.true53.do.end81_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81

if.else59:                                        ; preds = %land.lhs.true53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool60.not = icmp eq ptr %28, null
  br i1 %tobool60.not, label %if.else59.if.else67_crit_edge, label %land.lhs.true61

if.else59.if.else67_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else67

land.lhs.true61:                                  ; preds = %if.else59
  %s_std62 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %s_std62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_std62, align 4
  %tobool63.not = icmp eq ptr %30, null
  br i1 %tobool63.not, label %land.lhs.true61.if.else67_crit_edge, label %land.lhs.true61.if.end74_crit_edge

land.lhs.true61.if.end74_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.lhs.true61.if.else67_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else67

if.else67:                                        ; preds = %land.lhs.true61.if.else67_crit_edge, %if.else59.if.else67_crit_edge
  br label %if.end74

if.end74:                                         ; preds = %if.else67, %land.lhs.true61.if.end74_crit_edge
  %.sink243 = phi ptr [ %27, %if.else67 ], [ %30, %land.lhs.true61.if.end74_crit_edge ]
  %call71 = tail call i32 %.sink243(ptr noundef nonnull %21, i64 noundef %norm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp76.not = icmp eq i32 %call71, 0
  br i1 %cmp76.not, label %if.end82, label %if.end74.do.end81_crit_edge

if.end74.do.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end81

do.end81:                                         ; preds = %if.end74.do.end81_crit_edge, %land.lhs.true53.do.end81_crit_edge, %if.else49.do.end81_crit_edge, %if.end44.do.end81_crit_edge
  %__result46.0236 = phi i32 [ %call71, %if.end74.do.end81_crit_edge ], [ -515, %if.else49.do.end81_crit_edge ], [ -515, %land.lhs.true53.do.end81_crit_edge ], [ -19, %if.end44.do.end81_crit_edge ]
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.162, i32 noundef %__result46.0236) #13
  br label %cleanup

if.end82:                                         ; preds = %if.end74
  %tuner = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 7
  %33 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tuner, align 8
  %tobool85.not = icmp eq ptr %34, null
  br i1 %tobool85.not, label %if.end82.do.end119_crit_edge, label %if.else87

if.end82.do.end119_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

if.else87:                                        ; preds = %if.end82
  %ops88 = getelementptr inbounds %struct.v4l2_subdev, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %ops88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops88, align 4
  %video89 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %video89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %video89, align 4
  %tobool90.not = icmp eq ptr %38, null
  br i1 %tobool90.not, label %if.else87.do.end119_crit_edge, label %land.lhs.true91

if.else87.do.end119_crit_edge:                    ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

land.lhs.true91:                                  ; preds = %if.else87
  %s_std94 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %s_std94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_std94, align 4
  %tobool95.not = icmp eq ptr %40, null
  br i1 %tobool95.not, label %land.lhs.true91.do.end119_crit_edge, label %if.else97

land.lhs.true91.do.end119_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

if.else97:                                        ; preds = %land.lhs.true91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool98.not = icmp eq ptr %41, null
  br i1 %tobool98.not, label %if.else97.if.else105_crit_edge, label %land.lhs.true99

if.else97.if.else105_crit_edge:                   ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else105

land.lhs.true99:                                  ; preds = %if.else97
  %s_std100 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %s_std100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_std100, align 4
  %tobool101.not = icmp eq ptr %43, null
  br i1 %tobool101.not, label %land.lhs.true99.if.else105_crit_edge, label %land.lhs.true99.if.end112_crit_edge

land.lhs.true99.if.end112_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

land.lhs.true99.if.else105_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else105

if.else105:                                       ; preds = %land.lhs.true99.if.else105_crit_edge, %if.else97.if.else105_crit_edge
  br label %if.end112

if.end112:                                        ; preds = %if.else105, %land.lhs.true99.if.end112_crit_edge
  %.sink244 = phi ptr [ %40, %if.else105 ], [ %43, %land.lhs.true99.if.end112_crit_edge ]
  %call109 = tail call i32 %.sink244(ptr noundef nonnull %34, i64 noundef %norm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp114.not = icmp eq i32 %call109, 0
  br i1 %cmp114.not, label %if.end122, label %if.end112.do.end119_crit_edge

if.end112.do.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

do.end119:                                        ; preds = %if.end112.do.end119_crit_edge, %land.lhs.true91.do.end119_crit_edge, %if.else87.do.end119_crit_edge, %if.end82.do.end119_crit_edge
  %__result84.0239 = phi i32 [ %call109, %if.end112.do.end119_crit_edge ], [ -515, %if.else87.do.end119_crit_edge ], [ -515, %land.lhs.true91.do.end119_crit_edge ], [ -19, %if.end82.do.end119_crit_edge ]
  %udev120 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %udev120 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev120, align 4
  %dev121 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev121, ptr noundef nonnull @.str.165, i32 noundef %__result84.0239) #13
  br label %cleanup

if.end122:                                        ; preds = %if.end112
  %cx25840124 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 6
  %46 = ptrtoint ptr %cx25840124 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cx25840124, align 4
  %tobool126.not = icmp eq ptr %47, null
  br i1 %tobool126.not, label %if.end122.do.end160_crit_edge, label %if.else128

if.end122.do.end160_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end160

if.else128:                                       ; preds = %if.end122
  %ops129 = getelementptr inbounds %struct.v4l2_subdev, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %ops129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops129, align 4
  %video130 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %video130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %video130, align 4
  %tobool131.not = icmp eq ptr %51, null
  br i1 %tobool131.not, label %if.else128.do.end160_crit_edge, label %land.lhs.true132

if.else128.do.end160_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end160

land.lhs.true132:                                 ; preds = %if.else128
  %s_std135 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %s_std135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_std135, align 4
  %tobool136.not = icmp eq ptr %53, null
  br i1 %tobool136.not, label %land.lhs.true132.do.end160_crit_edge, label %if.else138

land.lhs.true132.do.end160_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end160

if.else138:                                       ; preds = %land.lhs.true132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool139.not = icmp eq ptr %54, null
  br i1 %tobool139.not, label %if.else138.if.else146_crit_edge, label %land.lhs.true140

if.else138.if.else146_crit_edge:                  ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else146

land.lhs.true140:                                 ; preds = %if.else138
  %s_std141 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %s_std141 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_std141, align 4
  %tobool142.not = icmp eq ptr %56, null
  br i1 %tobool142.not, label %land.lhs.true140.if.else146_crit_edge, label %land.lhs.true140.if.end153_crit_edge

land.lhs.true140.if.end153_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

land.lhs.true140.if.else146_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else146

if.else146:                                       ; preds = %land.lhs.true140.if.else146_crit_edge, %if.else138.if.else146_crit_edge
  br label %if.end153

if.end153:                                        ; preds = %if.else146, %land.lhs.true140.if.end153_crit_edge
  %.sink245 = phi ptr [ %53, %if.else146 ], [ %56, %land.lhs.true140.if.end153_crit_edge ]
  %call150 = tail call i32 %.sink245(ptr noundef nonnull %47, i64 noundef %norm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp155.not = icmp eq i32 %call150, 0
  br i1 %cmp155.not, label %if.end153.ret_savenorm_crit_edge, label %if.end153.do.end160_crit_edge

if.end153.do.end160_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end160

if.end153.ret_savenorm_crit_edge:                 ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret_savenorm

do.end160:                                        ; preds = %if.end153.do.end160_crit_edge, %land.lhs.true132.do.end160_crit_edge, %if.else128.do.end160_crit_edge, %if.end122.do.end160_crit_edge
  %__result125.0242 = phi i32 [ %call150, %if.end153.do.end160_crit_edge ], [ -515, %if.else128.do.end160_crit_edge ], [ -515, %land.lhs.true132.do.end160_crit_edge ], [ -19, %if.end122.do.end160_crit_edge ]
  %udev161 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %udev161 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udev161, align 4
  %dev162 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev162, ptr noundef nonnull @.str.168, i32 noundef %__result125.0242) #13
  br label %cleanup

ret_savenorm:                                     ; preds = %if.end153.ret_savenorm_crit_edge, %if.end34.ret_savenorm_crit_edge
  %norm164 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %cxdev, i32 0, i32 19
  %59 = ptrtoint ptr %norm164 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %norm, ptr %norm164, align 8
  br label %cleanup

cleanup:                                          ; preds = %ret_savenorm, %do.end160, %do.end119, %do.end81, %if.end39.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ret_savenorm ], [ %__result46.0236, %do.end81 ], [ %__result84.0239, %do.end119 ], [ %__result125.0242, %do.end160 ], [ -22, %if.end.cleanup_crit_edge ], [ %call31, %if.end34.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !204, !205, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !287, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !324, !326, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1473, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cxusb_medion_analog_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cxusb_medion_analog_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1482, i32 3}
!10 = !{ptr @cxusb_medion_analog_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cxusb_medion_analog_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1488, i32 3}
!14 = !{ptr @cxusb_medion_analog_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cxusb_medion_analog_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1502, i32 3}
!18 = !{ptr @cxusb_medion_analog_init._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cxusb_medion_analog_init._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1520, i32 3}
!22 = !{ptr @cxusb_medion_analog_init._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cxusb_medion_analog_init._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cxusb_medion_register_analog.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1781, i32 2}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1789, i32 3}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cxusb_medion_register_analog._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @cxusb_medion_register_analog._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @cxusb_medion_register_analog.__key.21, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1799, i32 2}
!35 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1829, i32 2}
!38 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cxusb_medion_unregister_analog._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cxusb_medion_unregister_analog._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1837, i32 2}
!43 = !{ptr @cxusb_medion_unregister_analog._entry.25, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cxusb_medion_unregister_analog._entry_ptr.27, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @cxusub_medion_pin_config, !46, !"cxusub_medion_pin_config", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1451, i32 41}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1600, i32 2}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cxusb_medion_v4l2_release._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @cxusb_medion_v4l2_release._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1718, i32 11}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1720, i32 3}
!59 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cxusb_medion_register_analog_subdevs._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cxusb_medion_register_analog_subdevs._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1743, i32 3}
!64 = !{ptr @cxusb_medion_register_analog_subdevs._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cxusb_medion_register_analog_subdevs._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1751, i32 9}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1753, i32 3}
!70 = !{ptr @cxusb_medion_register_analog_subdevs._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cxusb_medion_register_analog_subdevs._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1769, i32 3}
!74 = !{ptr @cxusb_medion_register_analog_subdevs._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cxusb_medion_register_analog_subdevs._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 609, i32 2}
!78 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cxusb_medion_v_complete_work._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @cxusb_medion_v_complete_work._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 622, i32 3}
!83 = !{ptr @cxusb_medion_v_complete_work._entry.46, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cxusb_medion_v_complete_work._entry_ptr.48, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 554, i32 2}
!87 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cxusb_medion_v_complete_handle_urb._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @cxusb_medion_v_complete_handle_urb._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 563, i32 3}
!92 = !{ptr @cxusb_medion_v_complete_handle_urb._entry.51, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 567, i32 4}
!96 = !{ptr @cxusb_medion_v_complete_handle_urb._entry.54, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 586, i32 2}
!100 = !{ptr @cxusb_medion_v_complete_handle_urb._entry.57, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.59, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 590, i32 3}
!104 = !{ptr @cxusb_medion_v_complete_handle_urb._entry.60, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cxusb_medion_v_complete_handle_urb._entry_ptr.62, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.63, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 123, i32 2}
!108 = !{ptr @.str.64, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cxusb_auxbuf_make_space._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @cxusb_auxbuf_make_space._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 130, i32 2}
!113 = !{ptr @cxusb_auxbuf_make_space._entry.65, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cxusb_auxbuf_make_space._entry_ptr.67, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 99, i32 2}
!117 = !{ptr @.str.69, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @cxusb_auxbuf_head_trim._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @cxusb_auxbuf_head_trim._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 463, i32 4}
!122 = !{ptr @.str.71, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cxusb_medion_v_process_auxbuf._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @cxusb_medion_v_process_auxbuf._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.73, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 468, i32 3}
!127 = !{ptr @cxusb_medion_v_process_auxbuf._entry.72, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cxusb_medion_v_process_auxbuf._entry_ptr.74, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.76, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 492, i32 3}
!131 = !{ptr @cxusb_medion_v_process_auxbuf._entry.75, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @cxusb_medion_v_process_auxbuf._entry_ptr.77, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.79, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 521, i32 4}
!135 = !{ptr @cxusb_medion_v_process_auxbuf._entry.78, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cxusb_medion_v_process_auxbuf._entry_ptr.80, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.82, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 523, i32 4}
!139 = !{ptr @cxusb_medion_v_process_auxbuf._entry.81, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cxusb_medion_v_process_auxbuf._entry_ptr.83, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.84, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 397, i32 14}
!143 = !{ptr @.str.85, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 436, i32 3}
!145 = !{ptr @.str.86, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cxusb_medion_copy_field._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @cxusb_medion_copy_field._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 196, i32 3}
!150 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cxusb_medion_cf_refc_fld_chg._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @cxusb_medion_cf_refc_fld_chg._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.90, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 204, i32 4}
!155 = !{ptr @cxusb_medion_cf_refc_fld_chg._entry.89, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cxusb_medion_cf_refc_fld_chg._entry_ptr.91, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.93, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 219, i32 3}
!159 = !{ptr @cxusb_medion_cf_refc_fld_chg._entry.92, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cxusb_medion_cf_refc_fld_chg._entry_ptr.94, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 244, i32 3}
!163 = !{ptr @.str.96, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @cxusb_medion_cf_refc_start_sch._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @cxusb_medion_cf_refc_start_sch._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 250, i32 3}
!168 = !{ptr @cxusb_medion_cf_refc_start_sch._entry.97, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @cxusb_medion_cf_refc_start_sch._entry_ptr.99, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.100, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 268, i32 3}
!172 = !{ptr @.str.101, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @cxusb_medion_cf_refc_line_smpl._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @cxusb_medion_cf_refc_line_smpl._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @cxusb_medion_cf_refc_line_smpl._entry.102, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 277, i32 3}
!177 = !{ptr @cxusb_medion_cf_refc_line_smpl._entry_ptr.103, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.104, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 295, i32 3}
!180 = !{ptr @.str.105, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @cxusb_medion_cf_refc_vbi_smpl._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @cxusb_medion_cf_refc_vbi_smpl._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.106, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 342, i32 2}
!185 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @cxusb_medion_cs_start_sch._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @cxusb_medion_cs_start_sch._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!190 = !{ptr @.str.108, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.109, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1640, i32 3}
!193 = !{ptr @.str.110, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @cxusb_medion_register_analog_video._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @cxusb_medion_register_analog_video._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.112, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1647, i32 3}
!198 = !{ptr @cxusb_medion_register_analog_video._entry.111, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cxusb_medion_register_analog_video._entry_ptr.113, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1655, i32 33}
!202 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1665, i32 3}
!204 = !{ptr @cxusb_medion_register_analog_video._entry.115, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @cxusb_medion_register_analog_video._entry_ptr.117, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @cxdev_video_qops, !207, !"cxdev_video_qops", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 953, i32 29}
!208 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 68, i32 2}
!210 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @cxusb_medion_v_buf_init._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @cxusb_medion_v_buf_init._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 73, i32 2}
!215 = !{ptr @cxusb_medion_v_buf_init._entry.120, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @cxusb_medion_v_buf_init._entry_ptr.122, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.123, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 781, i32 2}
!219 = !{ptr @.str.124, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @cxusb_medion_v_start_streaming._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @cxusb_medion_v_start_streaming._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.126, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 793, i32 3}
!224 = !{ptr @cxusb_medion_v_start_streaming._entry.125, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @cxusb_medion_v_start_streaming._entry_ptr.127, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.129, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 801, i32 3}
!228 = !{ptr @cxusb_medion_v_start_streaming._entry.128, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @cxusb_medion_v_start_streaming._entry_ptr.130, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.132, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 873, i32 5}
!232 = !{ptr @cxusb_medion_v_start_streaming._entry.131, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @cxusb_medion_v_start_streaming._entry_ptr.133, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.134, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 758, i32 3}
!236 = !{ptr @.str.135, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @cxusb_medion_field_order._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @cxusb_medion_field_order._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.137, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 767, i32 2}
!241 = !{ptr @cxusb_medion_field_order._entry.136, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @cxusb_medion_field_order._entry_ptr.138, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.139, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 708, i32 2}
!245 = !{ptr @.str.140, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @cxusb_medion_v_ss_auxbuf_alloc._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @cxusb_medion_v_ss_auxbuf_alloc._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.141, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 82, i32 2}
!250 = !{ptr @.str.142, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @cxusb_auxbuf_init._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @cxusb_auxbuf_init._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.143, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 641, i32 3}
!255 = !{ptr @.str.144, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @cxusb_medion_v_complete._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @cxusb_medion_v_complete._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.146, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 646, i32 2}
!260 = !{ptr @cxusb_medion_v_complete._entry.145, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @cxusb_medion_v_complete._entry_ptr.147, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.148, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 905, i32 2}
!264 = !{ptr @.str.149, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @cxusb_medion_v_stop_streaming._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @cxusb_medion_v_stop_streaming._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.151, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 916, i32 3}
!269 = !{ptr @cxusb_medion_v_stop_streaming._entry.150, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @cxusb_medion_v_stop_streaming._entry_ptr.152, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @cxusb_video_fops, !272, !"cxusb_video_fops", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1577, i32 42}
!273 = !{ptr @.str.153, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1549, i32 2}
!275 = !{ptr @.str.154, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @cxusb_videoradio_open._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @cxusb_videoradio_open._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.155, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1565, i32 2}
!280 = !{ptr @.str.156, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @cxusb_videoradio_release._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @cxusb_videoradio_release._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @cxusb_video_ioctl, !284, !"cxusb_video_ioctl", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1411, i32 36}
!285 = !{ptr @.str.157, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 974, i32 21}
!287 = !{ptr @.str.158, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../include/linux/usb.h", i32 912, i32 31}
!289 = !{ptr @.str.159, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1135, i32 2}
!291 = !{ptr @.str.160, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @cxusb_medion_set_norm._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @cxusb_medion_set_norm._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.162, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1159, i32 3}
!296 = !{ptr @cxusb_medion_set_norm._entry.161, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @cxusb_medion_set_norm._entry_ptr.163, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.165, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1167, i32 3}
!300 = !{ptr @cxusb_medion_set_norm._entry.164, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @cxusb_medion_set_norm._entry_ptr.166, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.168, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1175, i32 3}
!304 = !{ptr @cxusb_medion_set_norm._entry.167, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @cxusb_medion_set_norm._entry_ptr.169, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.170, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1388, i32 3}
!308 = !{ptr @.str.171, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @cxusb_medion_querystd._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @cxusb_medion_querystd._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.173, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1394, i32 2}
!313 = !{ptr @cxusb_medion_querystd._entry.172, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @cxusb_medion_querystd._entry_ptr.174, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.175, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1108, i32 4}
!317 = !{ptr @.str.176, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @cxusb_medion_enum_input._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @cxusb_medion_enum_input._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @cxusb_medion_inputs, !321, !"cxusb_medion_inputs", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1071, i32 3}
!322 = !{ptr @.str.177, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1263, i32 24}
!324 = !{ptr @.str.178, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1265, i32 24}
!326 = !{ptr @.str.179, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1616, i32 2}
!328 = !{ptr @.str.180, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @cxusb_medion_videodev_release._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @cxusb_medion_videodev_release._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.181, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1684, i32 3}
!333 = !{ptr @.str.182, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @cxusb_medion_register_analog_radio._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @cxusb_medion_register_analog_radio._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.184, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1700, i32 3}
!338 = !{ptr @cxusb_medion_register_analog_radio._entry.183, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @cxusb_medion_register_analog_radio._entry_ptr.185, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @cxusb_radio_fops, !341, !"cxusb_radio_fops", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1587, i32 42}
!342 = !{ptr @cxusb_radio_ioctl, !343, !"cxusb_radio_ioctl", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/dvb-usb/cxusb-analog.c", i32 1438, i32 36}
!344 = !{i32 1, !"wchar_size", i32 2}
!345 = !{i32 1, !"min_enum_size", i32 4}
!346 = !{i32 8, !"branch-target-enforcement", i32 0}
!347 = !{i32 8, !"sign-return-address", i32 0}
!348 = !{i32 8, !"sign-return-address-all", i32 0}
!349 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"uwtable", i32 1}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!353 = !{i8 0, i8 2}
!354 = !{!"branch_weights", i32 2000, i32 1}
!355 = !{!"branch_weights", i32 1, i32 2000}
!356 = !{!"auto-init"}
