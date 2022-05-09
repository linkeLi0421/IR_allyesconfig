; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/rtl2832_sdr.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/rtl2832_sdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.rtl2832_sdr_format = type { ptr, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtl2832_sdr_platform_data = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.rtl2832_sdr_dev = type { i32, ptr, ptr, %struct.video_device, %struct.v4l2_device, ptr, %struct.vb2_queue, %struct.list_head, %struct.spinlock, i32, %struct.mutex, %struct.mutex, ptr, i32, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.162 }
%union.anon.162 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.130, %union.anon.131, i32, ptr, i32, %struct.anon.132, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.130 = type { i64 }
%union.anon.131 = type { ptr }
%struct.anon.132 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.160], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.160 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.161 }>
%union.anon.161 = type { i64 }
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl2832_sdr_frame_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.140, i32 }
%union.anon.140 = type { i32 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.141 }
%union.anon.141 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.143, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.143 = type { i8 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__param_str_emulated_formats = internal constant [29 x i8] c"rtl2832_sdr.emulated_formats\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl2832_sdr_emulated_fmt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_emulated_formats = internal constant %struct.kernel_param { ptr @__param_str_emulated_formats, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @rtl2832_sdr_emulated_fmt } }, section "__param", align 4
@__UNIQUE_ID_emulated_formatstype388 = internal constant [43 x i8] c"rtl2832_sdr.parmtype=emulated_formats:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_emulated_formats389 = internal constant [81 x i8] c"rtl2832_sdr.parm=emulated_formats:enable emulated formats (disappears in future)\00", section ".modinfo", align 1
@__initcall__kmod_rtl2832_sdr__439_1493_rtl2832_sdr_driver_init6 = internal global ptr @rtl2832_sdr_driver_init, section ".initcall6.init", align 4
@rtl2832_sdr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtl2832_sdr_probe, ptr @rtl2832_sdr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtl2832_sdr_driver_exit = internal global ptr @rtl2832_sdr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author440 = internal constant [50 x i8] c"rtl2832_sdr.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description441 = internal constant [51 x i8] c"rtl2832_sdr.description=Realtek RTL2832 SDR driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file442 = internal constant [57 x i8] c"rtl2832_sdr.file=drivers/media/dvb-frontends/rtl2832_sdr\00", section ".modinfo", align 1
@__UNIQUE_ID_license443 = internal constant [24 x i8] c"rtl2832_sdr.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtl2832_sdr\00", [20 x i8] zeroinitializer }, align 32
@rtl2832_sdr_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @rtl2832_sdr_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe.__UNIQUE_ID_ddebug436 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl2832_sdr_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/rtl2832_sdr.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot proceed without platform data\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr = internal global ptr @rtl2832_sdr_probe._entry, section ".printk_index", align 4
@rtl2832_sdr_probe.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No parent device\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Refcount fail\00", [18 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.10 = internal global ptr @rtl2832_sdr_probe._entry.8, section ".printk_index", align 4
@bands_adc = internal constant { [3 x %struct.v4l2_frequency_band], [32 x i8] } { [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 4, i32 0, i32 5120, i32 300000, i32 300000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 1, i32 5120, i32 900001, i32 2800000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 2, i32 5120, i32 3200000, i32 3200000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@bands_fm = internal constant { [1 x %struct.v4l2_frequency_band], [32 x i8] } { [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 1, i32 5, i32 0, i32 5120, i32 50000000, i32 2000000000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@formats = internal constant { [2 x %struct.rtl2832_sdr_format], [40 x i8] } { [2 x %struct.rtl2832_sdr_format] [%struct.rtl2832_sdr_format { ptr null, i32 942691651, i32 65536 }, %struct.rtl2832_sdr_format { ptr null, i32 909202755, i32 131072 }], [40 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->v4l2_lock\00", [16 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->vb_queue_lock\00", [44 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->queued_bufs_lock\00", [41 x i8] zeroinitializer }, align 32
@rtl2832_sdr_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rtl2832_sdr_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rtl2832_sdr_buf_prepare, ptr null, ptr null, ptr @rtl2832_sdr_start_streaming, ptr @rtl2832_sdr_stop_streaming, ptr @rtl2832_sdr_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@rtl2832_sdr_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not initialize vb2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.18 = internal global ptr @rtl2832_sdr_probe._entry.16, section ".printk_index", align 4
@rtl2832_sdr_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl2832_sdr:1376:(&dev->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl2832_sdr:1383:(&dev->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl2832_sdr:1394:(&dev->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl2832_sdr:1405:(&dev->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl2832_sdr:1411:(&dev->hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 1412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unsupported tuner\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.30 = internal global ptr @rtl2832_sdr_probe._entry.28, section ".printk_index", align 4
@rtl2832_sdr_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 1418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.33 = internal global ptr @rtl2832_sdr_probe._entry.31, section ".printk_index", align 4
@rtl2832_sdr_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @rtl2832_sdr_fops, i32 85000192, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Realtek RTL2832 SDR\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @rtl2832_sdr_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 1432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register v4l2-device %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.36 = internal global ptr @rtl2832_sdr_probe._entry.34, section ".printk_index", align 4
@rtl2832_sdr_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 1444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register as video device %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.39 = internal global ptr @rtl2832_sdr_probe._entry.37, section ".printk_index", align 4
@rtl2832_sdr_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 1448, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Registered as %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.43 = internal global ptr @rtl2832_sdr_probe._entry.40, section ".printk_index", align 4
@rtl2832_sdr_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 1449, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Realtek RTL2832 SDR attached\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.46 = internal global ptr @rtl2832_sdr_probe._entry.44, section ".printk_index", align 4
@rtl2832_sdr_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 1451, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SDR API is still slightly experimental and functionality changes may follow\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@rtl2832_sdr_probe._entry_ptr.50 = internal global ptr @rtl2832_sdr_probe._entry.47, section ".printk_index", align 4
@rtl2832_sdr_s_ctrl.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl2832_sdr_s_ctrl\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"id=%d name=%s val=%d min=%lld max=%lld step=%lld\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2832_sdr_queue_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbuffers=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nbuffers=%d sizes[0]=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtl2832_sdr_start_streaming.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.3, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl2832_sdr_start_streaming\00", [36 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rtl2832_sdr_set_tuner.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.3, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2832_sdr_set_tuner\00", [42 x i8] zeroinitializer }, align 32
@rtl2832_sdr_set_tuner_freq.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl2832_sdr_set_tuner_freq\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"frequency=%u bandwidth=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2832_sdr_set_adc\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_adc=%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } zeroinitializer, align 32
@rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"f_if=%u if_ctl=%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\CA\DC\D7\D8\E0\F2\0E5\06P\9C\0Dq\11\14qt\19A\A5\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\11\10\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\1B\16\0D\06\01\FF\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\F0\0F\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\E9\BF\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\E9\F4\00", [29 x i8] zeroinitializer }, align 32
@rtl2832_sdr_set_adc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.60, ptr @.str.2, i32 722, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtl2832_sdr_set_adc._entry_ptr = internal global ptr @rtl2832_sdr_set_adc._entry, section ".printk_index", align 4
@rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl2832_sdr_alloc_stream_bufs\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"all in all I will use %u bytes for streaming\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alloc buf=%d failed\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.74, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"alloc buf=%d %p (dma %llu)\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl2832_sdr_free_stream_bufs.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl2832_sdr_free_stream_bufs\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free buf=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl2832_sdr_alloc_urbs.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl2832_sdr_alloc_urbs\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alloc urb=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@rtl2832_sdr_urb_complete._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rtl2832_sdr_urb_complete.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl2832_sdr_urb_complete\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"status=%d length=%d/%d errors=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl2832_sdr_urb_complete._rs.82 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.2, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"urb failed=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@rtl2832_sdr_urb_complete._entry_ptr = internal global ptr @rtl2832_sdr_urb_complete._entry, section ".printk_index", align 4
@rtl2832_sdr_urb_complete._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_urb_complete._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.2, i32 249, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"videobuf is full, %d packets dropped\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl2832_sdr_urb_complete._entry_ptr.87 = internal global ptr @rtl2832_sdr_urb_complete._entry.85, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtl2832_sdr_convert_stream.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl2832_sdr_convert_stream\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"slen=%u samples=%u msecs=%u sample rate=%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@rtl2832_sdr_submit_urbs.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2832_sdr_submit_urbs\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"submit urb=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@rtl2832_sdr_submit_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Could not submit urb no. %d - get them all back\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl2832_sdr_submit_urbs._entry_ptr = internal global ptr @rtl2832_sdr_submit_urbs._entry, section ".printk_index", align 4
@rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2832_sdr_kill_urbs\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kill urb=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl2832_sdr_stop_streaming.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.3, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl2832_sdr_stop_streaming\00", [37 x i8] zeroinitializer }, align 32
@rtl2832_sdr_free_urbs.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2832_sdr_free_urbs\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free urb=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl2832_sdr_cleanup_queued_bufs.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtl2832_sdr_cleanup_queued_bufs\00", [32 x i8] zeroinitializer }, align 32
@rtl2832_sdr_unset_adc.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.3, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2832_sdr_unset_adc\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\FF\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"@\00\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\06?\CE\CC\00", [27 x i8] zeroinitializer }, align 32
@rtl2832_sdr_unset_tuner.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.3, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2832_sdr_unset_tuner\00", [40 x i8] zeroinitializer }, align 32
@rtl2832_sdr_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@rtl2832_sdr_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rtl2832_sdr_querycap, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_enum_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_g_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_s_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_try_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_sdr_g_tuner, ptr @rtl2832_sdr_s_tuner, ptr @rtl2832_sdr_g_frequency, ptr @rtl2832_sdr_s_frequency, ptr @rtl2832_sdr_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@rtl2832_sdr_querycap.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.3, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2832_sdr_querycap\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@rtl2832_sdr_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.2, ptr @.str.3, i8 1, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl2832_sdr_enum_fmt_sdr_cap\00", [35 x i8] zeroinitializer }, align 32
@rtl2832_sdr_g_fmt_sdr_cap.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.3, i8 1, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl2832_sdr_g_fmt_sdr_cap\00", [38 x i8] zeroinitializer }, align 32
@rtl2832_sdr_s_fmt_sdr_cap.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl2832_sdr_s_fmt_sdr_cap\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pixelformat fourcc %4.4s\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl2832_sdr_try_fmt_sdr_cap.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.110, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl2832_sdr_try_fmt_sdr_cap\00", [36 x i8] zeroinitializer }, align 32
@rtl2832_sdr_g_tuner.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2832_sdr_g_tuner\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"index=%d type=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC: Realtek RTL2832\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RF: <unknown>\00", [18 x i8] zeroinitializer }, align 32
@rtl2832_sdr_s_tuner.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.3, i8 0, i8 -8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2832_sdr_s_tuner\00", [44 x i8] zeroinitializer }, align 32
@rtl2832_sdr_g_frequency.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2832_sdr_g_frequency\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tuner=%d type=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2832_sdr_s_frequency\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tuner=%d type=%d frequency=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.121, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC frequency=%u Hz\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.122, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RF frequency=%u Hz\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl2832_sdr_enum_freq_bands.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl2832_sdr_enum_freq_bands\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner=%d type=%d index=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl2832_sdr_video_release.__UNIQUE_ID_ddebug435 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.3, i8 1, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl2832_sdr_video_release\00", [38 x i8] zeroinitializer }, align 32
@rtl2832_sdr_remove.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.2, ptr @.str.3, i8 1, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl2832_sdr_remove\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 33, i64 38, i64 39, i64 41, i64 42, i64 43]
@__sancov_gen_cov_switch_values.127 = internal global [8 x i64] [i64 6, i64 8, i64 33, i64 38, i64 39, i64 41, i64 42, i64 43]
@__sancov_gen_cov_switch_values.128 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 909202755, i64 942691651]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"rtl2832_sdr_emulated_fmt\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 26, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"rtl2832_sdr_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1486, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1488, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"rtl2832_sdr_ctrl_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1290, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1316, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1319, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1324, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1330, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"bands_adc\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 37, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant [9 x i8] c"bands_fm\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 64, i32 41 }
@___asan_gen_.183 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 82, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1354, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1355, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1356, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"rtl2832_sdr_vb2_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 943, i32 29 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1369, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1376, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1383, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1394, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1405, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1411, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1412, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1418, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"rtl2832_sdr_template\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1233, i32 28 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1432, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1443, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1447, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1449, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1450, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1253, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 443, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 450, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 855, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 825, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 805, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 495, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 505, i32 46 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 509, i32 46 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 529, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 574, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 579, i32 46 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 589, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 594, i32 46 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 663, i32 47 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 719, i32 47 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 722, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 327, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 335, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 341, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 309, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 376, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 223, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 236, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 247, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 202, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 1163, i32 7 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 287, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 290, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 272, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 915, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 359, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 407, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 742, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 759, i32 46 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 763, i32 46 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 767, i32 46 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 839, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c"rtl2832_sdr_fops\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1223, i32 42 }
@___asan_gen_.468 = private unnamed_addr constant [22 x i8] c"rtl2832_sdr_ioctl_ops\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1193, i32 36 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 427, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 912, i32 31 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1115, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1131, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1147, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1177, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 960, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 963, i32 20 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 973, i32 20 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 992, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1045, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1072, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1091, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1100, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1014, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1300, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.535 = private constant [45 x i8] c"../drivers/media/dvb-frontends/rtl2832_sdr.c\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 1470, i32 2 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_author440, ptr @__UNIQUE_ID_description441, ptr @__UNIQUE_ID_emulated_formats389, ptr @__UNIQUE_ID_emulated_formatstype388, ptr @__UNIQUE_ID_file442, ptr @__UNIQUE_ID_license443, ptr @__exitcall_rtl2832_sdr_driver_exit, ptr @__initcall__kmod_rtl2832_sdr__439_1493_rtl2832_sdr_driver_init6, ptr @__param_emulated_formats, ptr @rtl2832_sdr_driver_exit, ptr @rtl2832_sdr_probe._entry, ptr @rtl2832_sdr_probe._entry.16, ptr @rtl2832_sdr_probe._entry.28, ptr @rtl2832_sdr_probe._entry.31, ptr @rtl2832_sdr_probe._entry.34, ptr @rtl2832_sdr_probe._entry.37, ptr @rtl2832_sdr_probe._entry.40, ptr @rtl2832_sdr_probe._entry.44, ptr @rtl2832_sdr_probe._entry.47, ptr @rtl2832_sdr_probe._entry.8, ptr @rtl2832_sdr_probe._entry_ptr, ptr @rtl2832_sdr_probe._entry_ptr.10, ptr @rtl2832_sdr_probe._entry_ptr.18, ptr @rtl2832_sdr_probe._entry_ptr.30, ptr @rtl2832_sdr_probe._entry_ptr.33, ptr @rtl2832_sdr_probe._entry_ptr.36, ptr @rtl2832_sdr_probe._entry_ptr.39, ptr @rtl2832_sdr_probe._entry_ptr.43, ptr @rtl2832_sdr_probe._entry_ptr.46, ptr @rtl2832_sdr_probe._entry_ptr.50, ptr @rtl2832_sdr_set_adc._entry, ptr @rtl2832_sdr_set_adc._entry_ptr, ptr @rtl2832_sdr_submit_urbs._entry, ptr @rtl2832_sdr_submit_urbs._entry_ptr, ptr @rtl2832_sdr_urb_complete._entry, ptr @rtl2832_sdr_urb_complete._entry.85, ptr @rtl2832_sdr_urb_complete._entry_ptr, ptr @rtl2832_sdr_urb_complete._entry_ptr.87, ptr @rtl2832_sdr_emulated_fmt, ptr @rtl2832_sdr_driver, ptr @.str, ptr @rtl2832_sdr_ctrl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @bands_adc, ptr @bands_fm, ptr @formats, ptr @rtl2832_sdr_probe.__key, ptr @.str.11, ptr @rtl2832_sdr_probe.__key.12, ptr @.str.13, ptr @rtl2832_sdr_probe.__key.14, ptr @.str.15, ptr @rtl2832_sdr_vb2_ops, ptr @.str.17, ptr @rtl2832_sdr_probe._key, ptr @.str.19, ptr @rtl2832_sdr_probe._key.20, ptr @.str.21, ptr @rtl2832_sdr_probe._key.22, ptr @.str.23, ptr @rtl2832_sdr_probe._key.24, ptr @.str.25, ptr @rtl2832_sdr_probe._key.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @rtl2832_sdr_template, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @rtl2832_sdr_urb_complete._rs, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @rtl2832_sdr_urb_complete._rs.82, ptr @.str.83, ptr @rtl2832_sdr_urb_complete._rs.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @rtl2832_sdr_fops, ptr @rtl2832_sdr_ioctl_ops, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_emulated_fmt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands_adc to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands_fm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_set_adc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_urb_complete._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_urb_complete._rs.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_urb_complete._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_urb_complete._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_submit_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_sdr_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtl2832_sdr_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl2832_sdr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtl2832_sdr_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_probe.__UNIQUE_ID_ddebug436, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_probe.__UNIQUE_ID_ddebug436, ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.body15, label %if.end32

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_probe.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_probe, %if.then27)) #9
          to label %cleanup [label %if.then27], !srcloc !298

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_probe.__UNIQUE_ID_ddebug437, ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end11
  %owner = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %call36 = tail call zeroext i1 @try_module_get(ptr noundef %7) #9
  br i1 %call36, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2624) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end42.err_module_put_crit_edge, label %if.end45

if.end42.err_module_put_crit_edge:                ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_module_put

if.end45:                                         ; preds = %if.end42
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_subdev, align 4
  %v4l2_subdev47 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %v4l2_subdev47 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %v4l2_subdev47, align 8
  %pdev48 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %pdev48 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev48, align 4
  %regmap = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %regmap49 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %regmap49 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %regmap49, align 8
  %dvb_usb_device = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dvb_usb_device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvb_usb_device, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev, align 4
  %udev50 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %udev50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %udev50, align 4
  %f_adc = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 21
  %21 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 300000, ptr %f_adc, align 4
  %f_tuner = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 22
  %22 = ptrtoint ptr %f_tuner to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 50000000, ptr %f_tuner, align 8
  %pixelformat = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 23
  %23 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 942691651, ptr %pixelformat, align 4
  %buffersize = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 24
  %24 = ptrtoint ptr %buffersize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %buffersize, align 8
  %num_formats = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 25
  %25 = load i8, ptr @rtl2832_sdr_emulated_fmt, align 1, !range !299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool51.not = icmp eq i8 %25, 0
  %spec.store.select = select i1 %tobool51.not, i32 1, i32 2
  %26 = ptrtoint ptr %num_formats to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select, ptr %num_formats, align 4
  %v4l2_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %v4l2_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @rtl2832_sdr_probe.__key) #9
  %vb_queue_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @rtl2832_sdr_probe.__key.12) #9
  %queued_bufs_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %queued_bufs_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @rtl2832_sdr_probe.__key.14, i16 noundef signext 3) #9
  %queued_bufs = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %queued_bufs, ptr %queued_bufs, align 4
  %prev.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queued_bufs, ptr %prev.i, align 8
  %vb_queue = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 11, ptr %vb_queue, align 4
  %io_modes = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %io_modes, align 8
  %drv_priv = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6, i32 10
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6, i32 12
  %32 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 744, ptr %buf_struct_size, align 4
  %ops69 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6, i32 7
  %33 = ptrtoint ptr %ops69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @rtl2832_sdr_vb2_ops, ptr %ops69, align 8
  %mem_ops = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6, i32 8
  %34 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6, i32 13
  %35 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8192, ptr %timestamp_flags, align 8
  %call73 = tail call i32 @vb2_queue_init(ptr noundef %vb_queue) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %err_kfree

if.end80:                                         ; preds = %if.end45
  %tuner = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tuner, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %sw.default [
    i8 39, label %sw.bb
    i8 42, label %if.end80.sw.bb88_crit_edge
    i8 43, label %if.end80.sw.bb88_crit_edge301
    i8 38, label %if.end80.sw.bb97_crit_edge
    i8 41, label %if.end80.sw.bb97_crit_edge302
    i8 33, label %sw.bb108
  ]

if.end80.sw.bb97_crit_edge302:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb97

if.end80.sw.bb97_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb97

if.end80.sw.bb88_crit_edge301:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb88

if.end80.sw.bb88_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb88

sw.bb:                                            ; preds = %if.end80
  %hdl = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26
  %call82 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 9, ptr noundef nonnull @rtl2832_sdr_probe._key, ptr noundef nonnull @.str.19) #9
  %tobool83.not = icmp eq ptr %10, null
  br i1 %tobool83.not, label %sw.bb.sw.epilog_crit_edge, label %if.then84

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then84:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 8
  %39 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl_handler, align 4
  %call86 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %hdl, ptr noundef %40, ptr noundef null, i1 noundef zeroext true) #9
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end80.sw.bb88_crit_edge, %if.end80.sw.bb88_crit_edge301
  %hdl90 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26
  %call91 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl90, i32 noundef 2, ptr noundef nonnull @rtl2832_sdr_probe._key.20, ptr noundef nonnull @.str.21) #9
  %call93 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl90, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %bandwidth_auto = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 27
  %41 = ptrtoint ptr %bandwidth_auto to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call93, ptr %bandwidth_auto, align 8
  %call95 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl90, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619148, i64 noundef 0, i64 noundef 8000000, i64 noundef 100000, i64 noundef 0) #9
  %bandwidth = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 28
  %42 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call95, ptr %bandwidth, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %bandwidth_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end80.sw.bb97_crit_edge, %if.end80.sw.bb97_crit_edge302
  %hdl99 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26
  %call100 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl99, i32 noundef 2, ptr noundef nonnull @rtl2832_sdr_probe._key.22, ptr noundef nonnull @.str.23) #9
  %call102 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl99, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %bandwidth_auto103 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 27
  %43 = ptrtoint ptr %bandwidth_auto103 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call102, ptr %bandwidth_auto103, align 8
  %call105 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl99, ptr noundef nonnull @rtl2832_sdr_ctrl_ops, i32 noundef 10619148, i64 noundef 6000000, i64 noundef 8000000, i64 noundef 1000000, i64 noundef 6000000) #9
  %bandwidth106 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 28
  %44 = ptrtoint ptr %bandwidth106 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call105, ptr %bandwidth106, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %bandwidth_auto103, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end80
  %hdl110 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26
  %call111 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl110, i32 noundef 2, ptr noundef nonnull @rtl2832_sdr_probe._key.24, ptr noundef nonnull @.str.25) #9
  %tobool112.not = icmp eq ptr %10, null
  br i1 %tobool112.not, label %sw.bb108.sw.epilog_crit_edge, label %if.then113

sw.bb108.sw.epilog_crit_edge:                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then113:                                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl_handler115 = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 8
  %45 = ptrtoint ptr %ctrl_handler115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_handler115, align 4
  %call116 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %hdl110, ptr noundef %46, ptr noundef null, i1 noundef zeroext true) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %hdl119 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26
  %call120 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl119, i32 noundef 0, ptr noundef nonnull @rtl2832_sdr_probe._key.26, ptr noundef nonnull @.str.27) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  br label %err_v4l2_ctrl_handler_free

sw.epilog:                                        ; preds = %if.then113, %sw.bb108.sw.epilog_crit_edge, %sw.bb97, %sw.bb88, %if.then84, %sw.bb.sw.epilog_crit_edge
  %hdl125 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26
  %error = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26, i32 9
  %47 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool126.not = icmp eq i32 %48, 0
  br i1 %tobool126.not, label %if.end134, label %if.then127

if.then127:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #12
  br label %err_v4l2_ctrl_handler_free

if.end134:                                        ; preds = %sw.epilog
  %vdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3
  %49 = call ptr @memcpy(ptr %vdev, ptr @rtl2832_sdr_template, i32 1352)
  %queue = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 10
  %50 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %vb_queue, ptr %queue, align 8
  %lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 6, i32 5
  %51 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %vb_queue_lock, ptr %lock, align 8
  %driver_data.i.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %v4l2_dev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 4
  %release = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 4, i32 9
  %53 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rtl2832_sdr_video_release, ptr %release, align 4
  %call143 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end150, label %do.end148

do.end148:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call143) #12
  br label %err_v4l2_ctrl_handler_free

if.end150:                                        ; preds = %if.end134
  %ctrl_handler153 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 4, i32 6
  %54 = ptrtoint ptr %ctrl_handler153 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %hdl125, ptr %ctrl_handler153, align 4
  %v4l2_dev156 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 7
  %55 = ptrtoint ptr %v4l2_dev156 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %v4l2_dev, ptr %v4l2_dev156, align 4
  %lock159 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 26
  %56 = ptrtoint ptr %lock159 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %v4l2_lock, ptr %lock159, align 8
  %vfl_dir = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 14
  %57 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %vfl_dir, align 4
  %fops.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fops.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 4, i32 noundef -1, i32 noundef 1, ptr noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool163.not = icmp eq i32 %call.i, 0
  br i1 %tobool163.not, label %do.end172, label %do.end167

do.end167:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %call.i) #12
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  br label %err_v4l2_ctrl_handler_free

do.end172:                                        ; preds = %if.end150
  %init_name.i.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 3
  %62 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end172.video_device_node_name.exit_crit_edge

do.end172.video_device_node_name.exit_crit_edge:  ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 3, i32 5
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end172.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %65, %if.end.i.i ], [ %63, %do.end172.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i.i) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.45) #12
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.48) #12
  %driver_data.i.i298 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %66 = ptrtoint ptr %driver_data.i.i298 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %driver_data.i.i298, align 4
  br label %cleanup

err_v4l2_ctrl_handler_free:                       ; preds = %do.end167, %do.end148, %if.then127, %sw.default
  %ret.0 = phi i32 [ -19, %sw.default ], [ %48, %if.then127 ], [ %call143, %do.end148 ], [ %call.i, %do.end167 ]
  %hdl185 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %call7.i.i, i32 0, i32 26
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl185) #9
  br label %err_kfree

err_kfree:                                        ; preds = %err_v4l2_ctrl_handler_free, %do.end78
  %ret.1 = phi i32 [ %call73, %do.end78 ], [ %ret.0, %err_v4l2_ctrl_handler_free ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err_module_put

err_module_put:                                   ; preds = %err_kfree, %if.end42.err_module_put_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_kfree ], [ -12, %if.end42.err_module_put_crit_edge ]
  %67 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent, align 8
  %driver188 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %driver188 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver188, align 4
  %owner189 = getelementptr inbounds %struct.device_driver, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %owner189 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %owner189, align 4
  tail call void @module_put(ptr noundef %72) #9
  br label %cleanup

cleanup:                                          ; preds = %err_module_put, %video_device_node_name.exit, %do.end40, %if.then27, %do.body15, %do.end9
  %retval.0 = phi i32 [ 0, %video_device_node_name.exit ], [ %ret.2, %err_module_put ], [ -22, %do.end40 ], [ -22, %do.end9 ], [ -22, %if.then27 ], [ -22, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_remove.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_remove.__UNIQUE_ID_ddebug438, ptr noundef %dev4, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vb_queue_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %vb_queue_lock, i32 noundef 0) #9
  %v4l2_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #9
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %udev, align 4
  %v4l2_dev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 4
  tail call void @v4l2_device_disconnect(ptr noundef %v4l2_dev) #9
  %vdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  tail call void @mutex_unlock(ptr noundef %vb_queue_lock) #9
  %call8 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #9
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl2832_sdr_video_release(ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %v, i32 -1364
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_video_release.__UNIQUE_ID_ddebug435, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_video_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_video_release.__UNIQUE_ID_ddebug435, ptr noundef %dev5, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %v, i32 -1368
  %hdl = getelementptr i8, ptr %v, i32 1048
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  tail call void @v4l2_device_unregister(ptr noundef %v) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -2416
  %pdev1 = getelementptr i8, ptr %1, i32 -2412
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %dvb_frontend = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb_frontend, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_s_ctrl.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_s_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 11
  %14 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %minimum, align 8
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 12
  %16 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %maximum, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 18
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_s_ctrl.__UNIQUE_ID_ddebug430, ptr noundef %dev2, ptr noundef nonnull @.str.52, i32 noundef %9, ptr noundef %11, i32 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %20) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %21 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id7, align 8
  %.off = add i32 %22, -10619147
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %bandwidth_auto = getelementptr i8, ptr %1, i32 184
  %23 = ptrtoint ptr %bandwidth_auto to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bandwidth_auto, align 8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %sw.bb.if.end46_crit_edge, label %if.then10

sw.bb.if.end46_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth = getelementptr i8, ptr %1, i32 188
  %27 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bandwidth, align 4
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 18
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %minimum15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 11
  %32 = ptrtoint ptr %minimum15 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %minimum15, align 8
  %f_adc = getelementptr i8, ptr %1, i32 -20
  %34 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_adc, align 4
  %shr.i.i = lshr i64 %31, 1
  %36 = trunc i64 %shr.i.i to i32
  %conv13 = add i32 %35, %36
  %conv16 = trunc i64 %33 to i32
  %37 = tail call i32 @llvm.smax.i32(i32 %conv13, i32 %conv16)
  %maximum20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 12
  %38 = ptrtoint ptr %maximum20 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %maximum20, align 8
  %conv21 = trunc i64 %39 to i32
  %40 = tail call i32 @llvm.smin.i32(i32 %37, i32 %conv21)
  %conv32 = sub i32 %40, %conv16
  %conv36 = trunc i64 %31 to i32
  %div172.i.i = udiv i32 %conv32, %conv36
  %conv173.i.i = zext i32 %div172.i.i to i64
  %mul = mul i64 %31, %conv173.i.i
  %add42 = add i64 %mul, %33
  %conv43 = trunc i64 %add42 to i32
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %41 = ptrtoint ptr %val45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv43, ptr %val45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then10, %sw.bb.if.end46_crit_edge
  %bandwidth47 = getelementptr i8, ptr %1, i32 188
  %42 = ptrtoint ptr %bandwidth47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bandwidth47, align 4
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val48, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 8, i32 7
  %46 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %bandwidth_hz, align 4
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %add.ptr, align 4
  %and1.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool50.not = icmp eq i32 %and1.i, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32, i32 6
  %49 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_params, align 4
  %tobool53.not = icmp eq ptr %50, null
  br i1 %tobool53.not, label %if.end52.cleanup_crit_edge, label %if.then54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 %50(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end52.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46.cleanup_crit_edge ], [ %call58, %if.then54 ], [ 0, %if.end52.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_queue_setup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbuffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug401, ptr noundef %dev5, ptr noundef nonnull @.str.54, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers, align 4
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbuffers, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp = icmp ult i32 %add, 8
  br i1 %cmp, label %if.then6, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 8, %7
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %buffersize = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffersize, align 8
  %add9 = add i32 %13, 4095
  %and = and i32 %add9, -4096
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_queue_setup, %if.then22)) #9
          to label %do.end27 [label %if.then22], !srcloc !298

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbuffers, align 4
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug402, ptr noundef %dev23, ptr noundef nonnull @.str.55, i32 noundef %16, i32 noundef %18) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %if.end8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl2832_sdr_buf_prepare(ptr nocapture noundef readonly %vb) #6 align 64 {
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
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %5, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %dvb_usb_device = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dvb_usb_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb_usb_device, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_start_streaming.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_start_streaming, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_start_streaming.__UNIQUE_ID_ddebug409, ptr noundef %dev2, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %v4l2_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 10
  %call10 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l2_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %power_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %power_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power_ctrl, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 %13(ptr noundef %7, i32 noundef 1) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 8
  %frontend_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %frontend_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frontend_ctrl, align 4
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %if.end19.if.end26_crit_edge, label %if.then22

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_frontend = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvb_frontend, align 4
  %call25 = tail call i32 %17(ptr noundef %19, i32 noundef 1) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end19.if.end26_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #9
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v4l2_subdev, align 8
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %if.end26.if.else69_crit_edge, label %land.lhs.true

if.end26.if.else69_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69

land.lhs.true:                                    ; preds = %if.end26
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %land.lhs.true.if.else69_crit_edge, label %land.lhs.true30

land.lhs.true.if.else69_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69

land.lhs.true30:                                  ; preds = %land.lhs.true
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %land.lhs.true30.if.else69_crit_edge, label %land.lhs.true34

land.lhs.true30.if.else69_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_power, align 4
  %tobool38.not = icmp eq ptr %27, null
  br i1 %tobool38.not, label %land.lhs.true34.if.else69_crit_edge, label %if.else52

land.lhs.true34.if.else69_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69

if.else52:                                        ; preds = %land.lhs.true34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %28 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool53.not = icmp eq ptr %28, null
  br i1 %tobool53.not, label %if.else52.if.else60_crit_edge, label %land.lhs.true54

if.else52.if.else60_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else60

land.lhs.true54:                                  ; preds = %if.else52
  %s_power55 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %s_power55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_power55, align 4
  %tobool56.not = icmp eq ptr %30, null
  br i1 %tobool56.not, label %land.lhs.true54.if.else60_crit_edge, label %land.lhs.true54.if.end71_crit_edge

land.lhs.true54.if.end71_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true54.if.else60_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else60

if.else60:                                        ; preds = %land.lhs.true54.if.else60_crit_edge, %if.else52.if.else60_crit_edge
  br label %if.end71

if.else69:                                        ; preds = %land.lhs.true34.if.else69_crit_edge, %land.lhs.true30.if.else69_crit_edge, %land.lhs.true.if.else69_crit_edge, %if.end26.if.else69_crit_edge
  %31 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev1, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data.i, align 8
  %dvb_frontend.i = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dvb_frontend.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_set_tuner.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_start_streaming, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !298

if.then.i:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_set_tuner.__UNIQUE_ID_ddebug407, ptr noundef %dev2.i, ptr noundef nonnull @.str.3) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.else69
  %init.i = getelementptr inbounds %struct.dvb_frontend, ptr %36, i32 0, i32 1, i32 32, i32 2
  %37 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init.i, align 4
  %tobool6.not.i = icmp eq ptr %38, null
  br i1 %tobool6.not.i, label %do.end.i.if.end74_crit_edge, label %if.then7.i

do.end.i.if.end74_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 %38(ptr noundef %36) #9
  br label %if.end74

if.end71:                                         ; preds = %if.else60, %land.lhs.true54.if.end71_crit_edge
  %.sink = phi ptr [ %27, %if.else60 ], [ %30, %land.lhs.true54.if.end71_crit_edge ]
  %call59 = tail call i32 %.sink(ptr noundef nonnull %21, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool72.not = icmp eq i32 %call59, 0
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.end71.err_crit_edge

if.end71.err_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.end74:                                         ; preds = %if.end71.if.end74_crit_edge, %if.then7.i, %do.end.i.if.end74_crit_edge
  tail call fastcc void @rtl2832_sdr_set_tuner_freq(ptr noundef %1)
  %call79 = tail call fastcc i32 @rtl2832_sdr_set_adc(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end74.err_crit_edge

if.end74.err_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end82:                                         ; preds = %if.end74
  %call83 = tail call fastcc i32 @rtl2832_sdr_alloc_stream_bufs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.err_crit_edge

if.end82.err_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end86:                                         ; preds = %if.end82
  %call87 = tail call fastcc i32 @rtl2832_sdr_alloc_urbs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.err_crit_edge

if.end86.err_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end90:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %sequence = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %sequence, align 8
  %call91 = tail call fastcc i32 @rtl2832_sdr_submit_urbs(ptr noundef %1)
  br label %err

err:                                              ; preds = %if.end90, %if.end86.err_crit_edge, %if.end82.err_crit_edge, %if.end74.err_crit_edge, %if.end71.err_crit_edge
  %ret.1 = phi i32 [ %call59, %if.end71.err_crit_edge ], [ %call79, %if.end74.err_crit_edge ], [ %call83, %if.end82.err_crit_edge ], [ %call87, %if.end86.err_crit_edge ], [ %call91, %if.end90 ]
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ -19, %do.end.cleanup_crit_edge ], [ -512, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl2832_sdr_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %dvb_usb_device = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dvb_usb_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb_usb_device, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_stop_streaming.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_stop_streaming, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_stop_streaming.__UNIQUE_ID_ddebug410, ptr noundef %dev2, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %v4l2_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #9
  %urbs_submitted.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urbs_submitted.i, align 8
  %i.02.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %do.end.rtl2832_sdr_kill_urbs.exit_crit_edge

do.end.rtl2832_sdr_kill_urbs.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl2832_sdr_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %do.end
  %10 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_stop_streaming, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !298

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391, ptr noundef %dev4.i, ptr noundef nonnull @.str.95, i32 noundef %i.04.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 14, i32 %i.04.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge

do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl2832_sdr_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

rtl2832_sdr_kill_urbs.exit:                       ; preds = %do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge, %do.end.rtl2832_sdr_kill_urbs.exit_crit_edge
  %14 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %urbs_submitted.i, align 8
  tail call fastcc void @rtl2832_sdr_free_urbs(ptr noundef %1)
  tail call fastcc void @rtl2832_sdr_free_stream_bufs(ptr noundef %1)
  tail call fastcc void @rtl2832_sdr_cleanup_queued_bufs(ptr noundef %1)
  tail call fastcc void @rtl2832_sdr_unset_adc(ptr noundef %1)
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_subdev, align 8
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %rtl2832_sdr_kill_urbs.exit.if.else52_crit_edge, label %land.lhs.true

rtl2832_sdr_kill_urbs.exit.if.else52_crit_edge:   ; preds = %rtl2832_sdr_kill_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else52

land.lhs.true:                                    ; preds = %rtl2832_sdr_kill_urbs.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %land.lhs.true.if.else52_crit_edge, label %land.lhs.true13

land.lhs.true.if.else52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else52

land.lhs.true13:                                  ; preds = %land.lhs.true
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %land.lhs.true13.if.else52_crit_edge, label %land.lhs.true17

land.lhs.true13.if.else52_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else52

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_power, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %land.lhs.true17.if.else52_crit_edge, label %if.else35

land.lhs.true17.if.else52_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else52

if.else35:                                        ; preds = %land.lhs.true17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %23 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool36.not = icmp eq ptr %23, null
  br i1 %tobool36.not, label %if.else35.if.else43_crit_edge, label %land.lhs.true37

if.else35.if.else43_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43

land.lhs.true37:                                  ; preds = %if.else35
  %s_power38 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_power38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_power38, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %land.lhs.true37.if.else43_crit_edge, label %if.then40

land.lhs.true37.if.else43_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else43

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 %25(ptr noundef nonnull %16, i32 noundef 0) #9
  br label %if.end53

if.else43:                                        ; preds = %land.lhs.true37.if.else43_crit_edge, %if.else35.if.else43_crit_edge
  %call47 = tail call i32 %22(ptr noundef nonnull %16, i32 noundef 0) #9
  br label %if.end53

if.else52:                                        ; preds = %land.lhs.true17.if.else52_crit_edge, %land.lhs.true13.if.else52_crit_edge, %land.lhs.true.if.else52_crit_edge, %rtl2832_sdr_kill_urbs.exit.if.else52_crit_edge
  %26 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev1, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3, i32 7
  %28 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform_data.i, align 8
  %dvb_frontend.i = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dvb_frontend.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dvb_frontend.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_unset_tuner.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_stop_streaming, %if.then.i100)) #9
          to label %do.end.i101 [label %if.then.i100], !srcloc !298

if.then.i100:                                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_unset_tuner.__UNIQUE_ID_ddebug408, ptr noundef %dev2.i, ptr noundef nonnull @.str.3) #9
  br label %do.end.i101

do.end.i101:                                      ; preds = %if.then.i100, %if.else52
  %sleep.i = getelementptr inbounds %struct.dvb_frontend, ptr %31, i32 0, i32 1, i32 32, i32 3
  %32 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sleep.i, align 4
  %tobool6.not.i = icmp eq ptr %33, null
  br i1 %tobool6.not.i, label %do.end.i101.if.end53_crit_edge, label %if.then7.i

do.end.i101.if.end53_crit_edge:                   ; preds = %do.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then7.i:                                       ; preds = %do.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 %33(ptr noundef %31) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then7.i, %do.end.i101.if.end53_crit_edge, %if.else43, %if.then40
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %1) #9
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 8
  %frontend_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %35, i32 0, i32 24
  %36 = ptrtoint ptr %frontend_ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %frontend_ctrl, align 4
  %tobool54.not = icmp eq ptr %37, null
  br i1 %tobool54.not, label %if.end53.if.end59_crit_edge, label %if.then55

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_frontend = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dvb_frontend, align 4
  %call58 = tail call i32 %37(ptr noundef %39, i32 noundef 0) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end53.if.end59_crit_edge
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 8
  %power_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %power_ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %power_ctrl, align 4
  %tobool61.not = icmp eq ptr %43, null
  br i1 %tobool61.not, label %if.end59.if.end66_crit_edge, label %if.then62

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 %43(ptr noundef %7, i32 noundef 0) #9
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end59.if.end66_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl2832_sdr_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %do.body5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #9
  br label %cleanup

do.body5:                                         ; preds = %entry
  %queued_bufs_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 8
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #9
  %list = getelementptr inbounds %struct.rtl2832_sdr_frame_buf, ptr %vb, i32 0, i32 1
  %queued_bufs = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %3, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %queued_bufs) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body5.list_add_tail.exit_crit_edge

do.body5.list_add_tail.exit_crit_edge:            ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queued_bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rtl2832_sdr_frame_buf, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body5.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl2832_sdr_set_tuner_freq(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %dvb_frontend = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb_frontend, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8
  %f_tuner = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 22
  %6 = ptrtoint ptr %f_tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_tuner, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdl = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 26
  %call = tail call ptr @v4l2_ctrl_find(ptr noundef %hdl, i32 noundef 10619147) #9
  %call4 = tail call ptr @v4l2_ctrl_find(ptr noundef %hdl, i32 noundef 10619148) #9
  %call5 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %f_adc = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_adc, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 7
  %10 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bandwidth_hz, align 4
  %11 = load i32, ptr %f_adc, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call4, i32 0, i32 2
  %12 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %15, i32 noundef 0) #9
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %call4, i32 noundef %11) #9
  %16 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %19) #9
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %call4) #9
  %bandwidth_hz10 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 7
  %20 = ptrtoint ptr %bandwidth_hz10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call9, ptr %bandwidth_hz10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %21 = ptrtoint ptr %f_tuner to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_tuner, align 8
  %23 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dtv_property_cache, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 15
  %24 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %delivery_system, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_set_tuner_freq.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_set_tuner_freq, %if.then17)) #9
          to label %do.end [label %if.then17], !srcloc !298

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz20 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 7
  %27 = ptrtoint ptr %bandwidth_hz20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bandwidth_hz20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_set_tuner_freq.__UNIQUE_ID_ddebug406, ptr noundef %dev2, ptr noundef nonnull @.str.59, i32 noundef %26, i32 noundef %28) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end11
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %dev, align 4
  %and1.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool23.not = icmp eq i32 %and1.i, 0
  br i1 %tobool23.not, label %do.end.cleanup_crit_edge, label %if.end25

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 5
  %31 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %v4l2_subdev, align 8
  %tobool26.not = icmp eq ptr %32, null
  br i1 %tobool26.not, label %if.end25.if.then38_crit_edge, label %land.lhs.true

if.end25.if.then38_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.lhs.true:                                    ; preds = %if.end25
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %tobool28.not = icmp eq ptr %34, null
  br i1 %tobool28.not, label %land.lhs.true.if.then38_crit_edge, label %land.lhs.true29

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.lhs.true29:                                  ; preds = %land.lhs.true
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tuner, align 4
  %tobool32.not = icmp eq ptr %36, null
  br i1 %tobool32.not, label %land.lhs.true29.if.then38_crit_edge, label %land.lhs.true33

land.lhs.true29.if.then38_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_frequency, align 4
  %tobool37.not = icmp eq ptr %38, null
  br i1 %tobool37.not, label %land.lhs.true33.if.then38_crit_edge, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true33.if.then38_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true33.if.then38_crit_edge, %land.lhs.true29.if.then38_crit_edge, %land.lhs.true.if.then38_crit_edge, %if.end25.if.then38_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 32, i32 6
  %39 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_params, align 4
  %tobool40.not = icmp eq ptr %40, null
  br i1 %tobool40.not, label %if.then38.cleanup_crit_edge, label %if.then41

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 %40(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then38.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_set_adc(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %f_if = alloca i32, align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %dvb_frontend = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvb_frontend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_if) #9
  %6 = ptrtoint ptr %f_if to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %f_if, align 4, !annotation !300
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %7 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %9 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_set_adc, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %f_adc = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 21
  %11 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_adc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug403, ptr noundef %dev2, ptr noundef nonnull @.str.61, i32 noundef %12) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev, align 4
  %and1.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %f_adc10 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 21
  %15 = ptrtoint ptr %f_adc10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_adc10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %regmap = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 8
  %call14 = tail call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef 318, ptr noundef nonnull @.str.62, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 8
  %call19 = tail call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef 277, ptr noundef nonnull @.str.63, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 32, i32 11
  %21 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_if_frequency, align 4
  %tobool23.not = icmp eq ptr %22, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call28 = call i32 %22(ptr noundef %5, ptr noundef nonnull %f_if) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %23 = ptrtoint ptr %f_if to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_if, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %rem = urem i32 %24, %26
  %conv = zext i32 %rem to i64
  %mul = shl nuw nsw i64 %conv, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rem)
  %cmp164.i.i = icmp ult i32 %rem, 1024
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !301

if.then168.i.i:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %26
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %27 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %mul) #14, !srcloc !302
  %asmresult1.i.i.i = extractvalue { i64, i64 } %27, 1
  %extract.t672 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t672, %if.else174.i.i ]
  %28 = sub i32 0, %dividend.addr.0.i.i.off0
  %conv35 = and i32 %28, 4194303
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_set_adc, %if.then48)) #9
          to label %do.end52 [label %if.then48], !srcloc !298

if.then48:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %f_if to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_if, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug404, ptr noundef %dev2, ptr noundef nonnull @.str.64, i32 noundef %30, i32 noundef %conv35) #9
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %div_u64.exit
  %shr = lshr i32 %conv35, 16
  %conv54 = trunc i32 %shr to i8
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv54, ptr %buf, align 4
  %shr55 = lshr i32 %28, 8
  %conv57 = trunc i32 %shr55 to i8
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv57, ptr %7, align 1
  %conv61 = trunc i32 %28 to i8
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv61, ptr %8, align 2
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 8
  %call64 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 281, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %do.end52.cleanup_crit_edge

do.end52.cleanup_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %do.end52
  %36 = ptrtoint ptr %f_if to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool68.not = icmp eq i32 %37, 0
  %. = select i1 %tobool68.not, i32 27, i32 26
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 8
  %call74 = call i32 @regmap_write(ptr noundef %39, i32 noundef 433, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77:                                         ; preds = %if.end67
  %.548 = select i1 %tobool68.not, i32 205, i32 141
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 8
  %call80 = call i32 @regmap_write(ptr noundef %41, i32 noundef 8, i32 noundef %.548) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 8
  %call85 = call i32 @regmap_write(ptr noundef %43, i32 noundef 6, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %if.end83
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %3, align 4
  %conv90 = zext i32 %45 to i64
  %mul91 = shl nuw nsw i64 %conv90, 22
  %mul92 = shl i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %45)
  %cmp164.i.i656 = icmp ult i32 %45, 1024
  br i1 %cmp164.i.i656, label %if.then168.i.i661, label %if.else174.i.i663, !prof !301

if.then168.i.i661:                                ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i658 = trunc i64 %mul91 to i32
  %div172.i.i659 = udiv i32 %conv169.i.i658, %mul92
  br label %div_u64.exit665

if.else174.i.i663:                                ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %46 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul92, i64 %mul91) #14, !srcloc !302
  %asmresult1.i.i.i662 = extractvalue { i64, i64 } %46, 1
  %extract.t676 = trunc i64 %asmresult1.i.i.i662 to i32
  br label %div_u64.exit665

div_u64.exit665:                                  ; preds = %if.else174.i.i663, %if.then168.i.i661
  %dividend.addr.0.i.i664.off0 = phi i32 [ %div172.i.i659, %if.then168.i.i661 ], [ %extract.t676, %if.else174.i.i663 ]
  %shl = shl i32 %dividend.addr.0.i.i664.off0, 2
  %shr95 = lshr i32 %shl, 24
  %conv97 = trunc i32 %shr95 to i8
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv97, ptr %buf, align 4
  %shr99 = lshr i32 %shl, 16
  %conv101 = trunc i32 %shr99 to i8
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv101, ptr %7, align 1
  %shr103 = lshr i32 %shl, 8
  %conv105 = trunc i32 %shr103 to i8
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv105, ptr %8, align 2
  %conv109 = trunc i32 %shl to i8
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv109, ptr %9, align 1
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 8
  %call113 = call i32 @regmap_bulk_write(ptr noundef %52, i32 noundef 415, ptr noundef nonnull %buf, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %div_u64.exit665.cleanup_crit_edge

div_u64.exit665.cleanup_crit_edge:                ; preds = %div_u64.exit665
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end116:                                        ; preds = %div_u64.exit665
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 8
  %call118 = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef 284, ptr noundef nonnull @.str.65, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121:                                        ; preds = %if.end116
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 8
  %call123 = call i32 @regmap_bulk_write(ptr noundef %56, i32 noundef 23, ptr noundef nonnull @.str.66, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end126:                                        ; preds = %if.end121
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 8
  %call128 = call i32 @regmap_write(ptr noundef %58, i32 noundef 25, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end126.cleanup_crit_edge

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end131:                                        ; preds = %if.end126
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 8
  %call133 = call i32 @regmap_bulk_write(ptr noundef %60, i32 noundef 26, ptr noundef nonnull @.str.67, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end131.cleanup_crit_edge

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end136:                                        ; preds = %if.end131
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 8
  %call138 = call i32 @regmap_bulk_write(ptr noundef %62, i32 noundef 402, ptr noundef nonnull @.str.68, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end141:                                        ; preds = %if.end136
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 8
  %call143 = call i32 @regmap_write(ptr noundef %64, i32 noundef 97, i32 noundef 96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end146:                                        ; preds = %if.end141
  %tuner = getelementptr inbounds %struct.rtl2832_sdr_platform_data, ptr %3, i32 0, i32 1
  %65 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tuner, align 4
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %66, label %do.end365 [
    i8 39, label %sw.bb
    i8 38, label %if.end146.sw.bb216_crit_edge
    i8 41, label %if.end146.sw.bb216_crit_edge678
    i8 42, label %if.end146.sw.bb275_crit_edge
    i8 43, label %if.end146.sw.bb275_crit_edge679
    i8 33, label %sw.bb320
  ]

if.end146.sw.bb275_crit_edge679:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb275

if.end146.sw.bb275_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb275

if.end146.sw.bb216_crit_edge678:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb216

if.end146.sw.bb216_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb216

sw.bb:                                            ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 8
  %call149 = call i32 @regmap_write(ptr noundef %69, i32 noundef 274, i32 noundef 90) #9
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 8
  %call151 = call i32 @regmap_write(ptr noundef %71, i32 noundef 258, i32 noundef 64) #9
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 8
  %call153 = call i32 @regmap_write(ptr noundef %73, i32 noundef 259, i32 noundef 90) #9
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 8
  %call155 = call i32 @regmap_write(ptr noundef %75, i32 noundef 455, i32 noundef 48) #9
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 8
  %call157 = call i32 @regmap_write(ptr noundef %77, i32 noundef 260, i32 noundef 208) #9
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 8
  %call159 = call i32 @regmap_write(ptr noundef %79, i32 noundef 261, i32 noundef 190) #9
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 8
  %call161 = call i32 @regmap_write(ptr noundef %81, i32 noundef 456, i32 noundef 24) #9
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 8
  %call163 = call i32 @regmap_write(ptr noundef %83, i32 noundef 262, i32 noundef 53) #9
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 8
  %call165 = call i32 @regmap_write(ptr noundef %85, i32 noundef 457, i32 noundef 33) #9
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 8
  %call167 = call i32 @regmap_write(ptr noundef %87, i32 noundef 458, i32 noundef 33) #9
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 8
  %call169 = call i32 @regmap_write(ptr noundef %89, i32 noundef 459, i32 noundef 0) #9
  %90 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap, align 8
  %call171 = call i32 @regmap_write(ptr noundef %91, i32 noundef 263, i32 noundef 64) #9
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 8
  %call173 = call i32 @regmap_write(ptr noundef %93, i32 noundef 461, i32 noundef 16) #9
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 8
  %call175 = call i32 @regmap_write(ptr noundef %95, i32 noundef 462, i32 noundef 16) #9
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 8
  %call177 = call i32 @regmap_write(ptr noundef %97, i32 noundef 264, i32 noundef 128) #9
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 8
  %call179 = call i32 @regmap_write(ptr noundef %99, i32 noundef 265, i32 noundef 127) #9
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 8
  %call181 = call i32 @regmap_write(ptr noundef %101, i32 noundef 266, i32 noundef 128) #9
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 8
  %call183 = call i32 @regmap_write(ptr noundef %103, i32 noundef 267, i32 noundef 127) #9
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 8
  %call185 = call i32 @regmap_write(ptr noundef %105, i32 noundef 14, i32 noundef 252) #9
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 8
  %call187 = call i32 @regmap_write(ptr noundef %107, i32 noundef 14, i32 noundef 252) #9
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 8
  %call189 = call i32 @regmap_write(ptr noundef %109, i32 noundef 17, i32 noundef 212) #9
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 8
  %call191 = call i32 @regmap_write(ptr noundef %111, i32 noundef 485, i32 noundef 240) #9
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 8
  %call193 = call i32 @regmap_write(ptr noundef %113, i32 noundef 473, i32 noundef 0) #9
  %114 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap, align 8
  %call195 = call i32 @regmap_write(ptr noundef %115, i32 noundef 475, i32 noundef 0) #9
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 8
  %call197 = call i32 @regmap_write(ptr noundef %117, i32 noundef 477, i32 noundef 20) #9
  %118 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap, align 8
  %call199 = call i32 @regmap_write(ptr noundef %119, i32 noundef 478, i32 noundef 236) #9
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 8
  %call201 = call i32 @regmap_write(ptr noundef %121, i32 noundef 472, i32 noundef 12) #9
  %122 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap, align 8
  %call203 = call i32 @regmap_write(ptr noundef %123, i32 noundef 486, i32 noundef 2) #9
  %124 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap, align 8
  %call205 = call i32 @regmap_write(ptr noundef %125, i32 noundef 471, i32 noundef 9) #9
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 8
  %call207 = call i32 @regmap_write(ptr noundef %127, i32 noundef 13, i32 noundef 131) #9
  %128 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap, align 8
  %call209 = call i32 @regmap_write(ptr noundef %129, i32 noundef 16, i32 noundef 73) #9
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 8
  %call211 = call i32 @regmap_write(ptr noundef %131, i32 noundef 13, i32 noundef 135) #9
  %132 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap, align 8
  %call213 = call i32 @regmap_write(ptr noundef %133, i32 noundef 13, i32 noundef 133) #9
  %134 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap, align 8
  %call215 = call i32 @regmap_write(ptr noundef %135, i32 noundef 19, i32 noundef 2) #9
  br label %sw.epilog

sw.bb216:                                         ; preds = %if.end146.sw.bb216_crit_edge, %if.end146.sw.bb216_crit_edge678
  %136 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap, align 8
  %call218 = call i32 @regmap_write(ptr noundef %137, i32 noundef 274, i32 noundef 90) #9
  %138 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap, align 8
  %call220 = call i32 @regmap_write(ptr noundef %139, i32 noundef 258, i32 noundef 64) #9
  %140 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap, align 8
  %call222 = call i32 @regmap_write(ptr noundef %141, i32 noundef 259, i32 noundef 90) #9
  %142 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap, align 8
  %call224 = call i32 @regmap_write(ptr noundef %143, i32 noundef 455, i32 noundef 44) #9
  %144 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap, align 8
  %call226 = call i32 @regmap_write(ptr noundef %145, i32 noundef 260, i32 noundef 204) #9
  %146 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regmap, align 8
  %call228 = call i32 @regmap_write(ptr noundef %147, i32 noundef 261, i32 noundef 190) #9
  %148 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap, align 8
  %call230 = call i32 @regmap_write(ptr noundef %149, i32 noundef 456, i32 noundef 22) #9
  %150 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap, align 8
  %call232 = call i32 @regmap_write(ptr noundef %151, i32 noundef 262, i32 noundef 53) #9
  %152 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap, align 8
  %call234 = call i32 @regmap_write(ptr noundef %153, i32 noundef 457, i32 noundef 33) #9
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 8
  %call236 = call i32 @regmap_write(ptr noundef %155, i32 noundef 458, i32 noundef 33) #9
  %156 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap, align 8
  %call238 = call i32 @regmap_write(ptr noundef %157, i32 noundef 459, i32 noundef 0) #9
  %158 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap, align 8
  %call240 = call i32 @regmap_write(ptr noundef %159, i32 noundef 263, i32 noundef 64) #9
  %160 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regmap, align 8
  %call242 = call i32 @regmap_write(ptr noundef %161, i32 noundef 461, i32 noundef 16) #9
  %162 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap, align 8
  %call244 = call i32 @regmap_write(ptr noundef %163, i32 noundef 462, i32 noundef 16) #9
  %164 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regmap, align 8
  %call246 = call i32 @regmap_write(ptr noundef %165, i32 noundef 264, i32 noundef 128) #9
  %166 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap, align 8
  %call248 = call i32 @regmap_write(ptr noundef %167, i32 noundef 265, i32 noundef 127) #9
  %168 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regmap, align 8
  %call250 = call i32 @regmap_write(ptr noundef %169, i32 noundef 266, i32 noundef 128) #9
  %170 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regmap, align 8
  %call252 = call i32 @regmap_write(ptr noundef %171, i32 noundef 267, i32 noundef 127) #9
  %172 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regmap, align 8
  %call254 = call i32 @regmap_write(ptr noundef %173, i32 noundef 14, i32 noundef 252) #9
  %174 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regmap, align 8
  %call256 = call i32 @regmap_write(ptr noundef %175, i32 noundef 14, i32 noundef 252) #9
  %176 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regmap, align 8
  %call258 = call i32 @regmap_bulk_write(ptr noundef %177, i32 noundef 17, ptr noundef nonnull @.str.69, i32 noundef 2) #9
  %178 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regmap, align 8
  %call260 = call i32 @regmap_write(ptr noundef %179, i32 noundef 485, i32 noundef 240) #9
  %180 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regmap, align 8
  %call262 = call i32 @regmap_write(ptr noundef %181, i32 noundef 473, i32 noundef 0) #9
  %182 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regmap, align 8
  %call264 = call i32 @regmap_write(ptr noundef %183, i32 noundef 475, i32 noundef 0) #9
  %184 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regmap, align 8
  %call266 = call i32 @regmap_write(ptr noundef %185, i32 noundef 477, i32 noundef 17) #9
  %186 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regmap, align 8
  %call268 = call i32 @regmap_write(ptr noundef %187, i32 noundef 478, i32 noundef 239) #9
  %188 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regmap, align 8
  %call270 = call i32 @regmap_write(ptr noundef %189, i32 noundef 472, i32 noundef 12) #9
  %190 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regmap, align 8
  %call272 = call i32 @regmap_write(ptr noundef %191, i32 noundef 486, i32 noundef 2) #9
  %192 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap, align 8
  %call274 = call i32 @regmap_write(ptr noundef %193, i32 noundef 471, i32 noundef 9) #9
  br label %sw.epilog

sw.bb275:                                         ; preds = %if.end146.sw.bb275_crit_edge, %if.end146.sw.bb275_crit_edge679
  %194 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regmap, align 8
  %call277 = call i32 @regmap_write(ptr noundef %195, i32 noundef 274, i32 noundef 90) #9
  %196 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap, align 8
  %call279 = call i32 @regmap_write(ptr noundef %197, i32 noundef 258, i32 noundef 64) #9
  %198 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regmap, align 8
  %call281 = call i32 @regmap_write(ptr noundef %199, i32 noundef 277, i32 noundef 1) #9
  %200 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regmap, align 8
  %call283 = call i32 @regmap_write(ptr noundef %201, i32 noundef 259, i32 noundef 128) #9
  %202 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regmap, align 8
  %call285 = call i32 @regmap_write(ptr noundef %203, i32 noundef 455, i32 noundef 36) #9
  %204 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regmap, align 8
  %call287 = call i32 @regmap_write(ptr noundef %205, i32 noundef 260, i32 noundef 204) #9
  %206 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regmap, align 8
  %call289 = call i32 @regmap_write(ptr noundef %207, i32 noundef 261, i32 noundef 190) #9
  %208 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regmap, align 8
  %call291 = call i32 @regmap_write(ptr noundef %209, i32 noundef 456, i32 noundef 20) #9
  %210 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regmap, align 8
  %call293 = call i32 @regmap_write(ptr noundef %211, i32 noundef 262, i32 noundef 53) #9
  %212 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regmap, align 8
  %call295 = call i32 @regmap_write(ptr noundef %213, i32 noundef 457, i32 noundef 33) #9
  %214 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regmap, align 8
  %call297 = call i32 @regmap_write(ptr noundef %215, i32 noundef 458, i32 noundef 33) #9
  %216 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regmap, align 8
  %call299 = call i32 @regmap_write(ptr noundef %217, i32 noundef 459, i32 noundef 0) #9
  %218 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regmap, align 8
  %call301 = call i32 @regmap_write(ptr noundef %219, i32 noundef 263, i32 noundef 64) #9
  %220 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regmap, align 8
  %call303 = call i32 @regmap_write(ptr noundef %221, i32 noundef 461, i32 noundef 16) #9
  %222 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap, align 8
  %call305 = call i32 @regmap_write(ptr noundef %223, i32 noundef 462, i32 noundef 16) #9
  %224 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regmap, align 8
  %call307 = call i32 @regmap_write(ptr noundef %225, i32 noundef 264, i32 noundef 128) #9
  %226 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regmap, align 8
  %call309 = call i32 @regmap_write(ptr noundef %227, i32 noundef 265, i32 noundef 127) #9
  %228 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regmap, align 8
  %call311 = call i32 @regmap_write(ptr noundef %229, i32 noundef 266, i32 noundef 128) #9
  %230 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regmap, align 8
  %call313 = call i32 @regmap_write(ptr noundef %231, i32 noundef 267, i32 noundef 127) #9
  %232 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regmap, align 8
  %call315 = call i32 @regmap_write(ptr noundef %233, i32 noundef 14, i32 noundef 252) #9
  %234 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regmap, align 8
  %call317 = call i32 @regmap_write(ptr noundef %235, i32 noundef 14, i32 noundef 252) #9
  %236 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regmap, align 8
  %call319 = call i32 @regmap_write(ptr noundef %237, i32 noundef 17, i32 noundef 244) #9
  br label %sw.epilog

sw.bb320:                                         ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %238 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regmap, align 8
  %call322 = call i32 @regmap_write(ptr noundef %239, i32 noundef 274, i32 noundef 57) #9
  %240 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regmap, align 8
  %call324 = call i32 @regmap_write(ptr noundef %241, i32 noundef 258, i32 noundef 64) #9
  %242 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regmap, align 8
  %call326 = call i32 @regmap_write(ptr noundef %243, i32 noundef 259, i32 noundef 90) #9
  %244 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regmap, align 8
  %call328 = call i32 @regmap_write(ptr noundef %245, i32 noundef 455, i32 noundef 44) #9
  %246 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regmap, align 8
  %call330 = call i32 @regmap_write(ptr noundef %247, i32 noundef 260, i32 noundef 204) #9
  %248 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regmap, align 8
  %call332 = call i32 @regmap_write(ptr noundef %249, i32 noundef 261, i32 noundef 190) #9
  %250 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regmap, align 8
  %call334 = call i32 @regmap_write(ptr noundef %251, i32 noundef 456, i32 noundef 22) #9
  %252 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regmap, align 8
  %call336 = call i32 @regmap_write(ptr noundef %253, i32 noundef 262, i32 noundef 53) #9
  %254 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regmap, align 8
  %call338 = call i32 @regmap_write(ptr noundef %255, i32 noundef 457, i32 noundef 33) #9
  %256 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regmap, align 8
  %call340 = call i32 @regmap_write(ptr noundef %257, i32 noundef 458, i32 noundef 33) #9
  %258 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regmap, align 8
  %call342 = call i32 @regmap_write(ptr noundef %259, i32 noundef 459, i32 noundef 0) #9
  %260 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regmap, align 8
  %call344 = call i32 @regmap_write(ptr noundef %261, i32 noundef 263, i32 noundef 64) #9
  %262 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regmap, align 8
  %call346 = call i32 @regmap_write(ptr noundef %263, i32 noundef 461, i32 noundef 16) #9
  %264 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %regmap, align 8
  %call348 = call i32 @regmap_write(ptr noundef %265, i32 noundef 462, i32 noundef 16) #9
  %266 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %regmap, align 8
  %call350 = call i32 @regmap_write(ptr noundef %267, i32 noundef 264, i32 noundef 128) #9
  %268 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %regmap, align 8
  %call352 = call i32 @regmap_write(ptr noundef %269, i32 noundef 265, i32 noundef 127) #9
  %270 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regmap, align 8
  %call354 = call i32 @regmap_write(ptr noundef %271, i32 noundef 266, i32 noundef 156) #9
  %272 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regmap, align 8
  %call356 = call i32 @regmap_write(ptr noundef %273, i32 noundef 267, i32 noundef 127) #9
  %274 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regmap, align 8
  %call358 = call i32 @regmap_write(ptr noundef %275, i32 noundef 14, i32 noundef 252) #9
  %276 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %regmap, align 8
  %call360 = call i32 @regmap_write(ptr noundef %277, i32 noundef 14, i32 noundef 252) #9
  %278 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regmap, align 8
  %call362 = call i32 @regmap_bulk_write(ptr noundef %279, i32 noundef 17, ptr noundef nonnull @.str.70, i32 noundef 2) #9
  br label %sw.epilog

do.end365:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev2, ptr noundef nonnull @.str.29) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end365, %sw.bb320, %sw.bb275, %sw.bb216, %sw.bb
  %280 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regmap, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %281, i32 noundef 257, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool369.not = icmp eq i32 %call.i, 0
  br i1 %tobool369.not, label %if.end371, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end371:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %282 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regmap, align 8
  %call.i666 = call i32 @regmap_update_bits_base(ptr noundef %283, i32 noundef 257, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end371, %sw.epilog.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.end126.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %div_u64.exit665.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end52.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call28, %if.end29.cleanup_crit_edge ], [ %call64, %do.end52.cleanup_crit_edge ], [ %call74, %if.end67.cleanup_crit_edge ], [ %call80, %if.end77.cleanup_crit_edge ], [ %call85, %if.end83.cleanup_crit_edge ], [ %call113, %div_u64.exit665.cleanup_crit_edge ], [ %call118, %if.end116.cleanup_crit_edge ], [ %call123, %if.end121.cleanup_crit_edge ], [ %call128, %if.end126.cleanup_crit_edge ], [ %call133, %if.end131.cleanup_crit_edge ], [ %call138, %if.end136.cleanup_crit_edge ], [ %call143, %if.end141.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call.i666, %if.end371 ], [ -22, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_if) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_alloc_stream_bufs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %buf_num = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf_num, align 4
  %buf_size = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %buf_size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_alloc_stream_bufs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug394, ptr noundef %dev4, ptr noundef nonnull @.str.72, i32 noundef 655360) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf_num, align 4
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end59.for.body_crit_edge, %do.end
  %storemerge92 = phi i32 [ 0, %do.end ], [ %inc, %do.end59.for.body_crit_edge ]
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %arrayidx = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 18, i32 %storemerge92
  %call8 = tail call ptr @usb_alloc_coherent(ptr noundef %6, i32 noundef 65536, i32 noundef 3264, ptr noundef %arrayidx) #9
  %7 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_num, align 4
  %arrayidx10 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 17, i32 %8
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %arrayidx10, align 4
  %10 = load i32, ptr %buf_num, align 4
  %arrayidx13 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 17, i32 %10
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %do.body16, label %do.body36

do.body16:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_alloc_stream_bufs, %if.then28)) #9
          to label %do.end33 [label %if.then28], !srcloc !298

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug395, ptr noundef %dev49, ptr noundef nonnull @.str.73, i32 noundef %14) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body16
  tail call fastcc void @rtl2832_sdr_free_stream_bufs(ptr noundef %dev)
  br label %cleanup

do.body36:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_alloc_stream_bufs, %if.then48)) #9
          to label %do.end59 [label %if.then48], !srcloc !298

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_num, align 4
  %arrayidx53 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 17, i32 %16
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx53, align 4
  %arrayidx56 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 18, i32 %16
  %19 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx56, align 4
  %conv = zext i32 %20 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug396, ptr noundef %dev49, ptr noundef nonnull @.str.74, i32 noundef %16, ptr noundef %18, i64 noundef %conv) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then48, %do.body36
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dev) #9
  %21 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_num, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %buf_num, align 4
  %cmp = icmp slt i32 %inc, 10
  br i1 %cmp, label %do.end59.for.body_crit_edge, label %do.end59.cleanup_crit_edge

do.end59.cleanup_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end59.for.body_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %do.end59.cleanup_crit_edge, %do.end33
  %retval.0 = phi i32 [ -12, %do.end33 ], [ 0, %do.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_alloc_urbs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 12
  %urbs_initialized29 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 19
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %entry
  %i.065 = phi i32 [ 0, %entry ], [ %inc32, %if.end17.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_alloc_urbs.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_alloc_urbs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_alloc_urbs.__UNIQUE_ID_ddebug398, ptr noundef %dev4, ptr noundef nonnull @.str.78, i32 noundef %i.065) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 14, i32 %i.065
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %for.cond10.preheader, label %if.end17

for.cond10.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp1166.not = icmp eq i32 %i.065, 0
  br i1 %cmp1166.not, label %for.cond10.preheader.for.end_crit_edge, label %for.cond10.preheader.for.body12_crit_edge

for.cond10.preheader.for.body12_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body12

for.cond10.preheader.for.end_crit_edge:           ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond10.preheader.for.body12_crit_edge
  %j.067 = phi i32 [ %inc, %for.body12.for.body12_crit_edge ], [ 0, %for.cond10.preheader.for.body12_crit_edge ]
  %arrayidx14 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 14, i32 %j.067
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx14, align 4
  tail call void @usb_free_urb(ptr noundef %4) #9
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx14, align 4
  %inc = add nuw nsw i32 %j.067, 1
  %exitcond69.not = icmp eq i32 %inc, %i.065
  br i1 %exitcond69.not, label %for.body12.for.end_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.body12.for.end_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body12.for.end_crit_edge, %for.cond10.preheader.for.end_crit_edge
  %6 = ptrtoint ptr %urbs_initialized29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %urbs_initialized29, align 4
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i = shl i32 %10, 8
  %or22 = or i32 %shl.i, -1069514624
  %arrayidx23 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 17, i32 %i.065
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx23, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 8
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 10
  %14 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or22, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65536, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 28
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtl2832_sdr_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 27
  %18 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %context4.i, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %transfer_flags, align 4
  %arrayidx26 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 18, i32 %i.065
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx26, align 4
  %24 = load ptr, ptr %arrayidx, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %transfer_dma, align 4
  %26 = ptrtoint ptr %urbs_initialized29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %urbs_initialized29, align 4
  %inc30 = add i32 %27, 1
  store i32 %inc30, ptr %urbs_initialized29, align 4
  %inc32 = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc32, 10
  br i1 %exitcond.not, label %if.end17.cleanup_crit_edge, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ -12, %for.end ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_submit_urbs(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %urbs_initialized = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29 = icmp sgt i32 %1, 0
  br i1 %cmp29, label %do.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %urbs_submitted = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 20
  br label %do.body

do.body:                                          ; preds = %if.end13.do.body_crit_edge, %do.body.lr.ph
  %i.030 = phi i32 [ 0, %do.body.lr.ph ], [ %inc14, %if.end13.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_submit_urbs.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_submit_urbs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_submit_urbs.__UNIQUE_ID_ddebug392, ptr noundef %dev4, ptr noundef nonnull @.str.92, i32 noundef %i.030) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %arrayidx = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 14, i32 %i.030
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %do.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.93, i32 noundef %i.030) #12
  %6 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %urbs_submitted, align 8
  %i.02.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %do.end10.rtl2832_sdr_kill_urbs.exit_crit_edge

do.end10.rtl2832_sdr_kill_urbs.exit_crit_edge:    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl2832_sdr_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %do.end10
  %8 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_submit_urbs, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !298

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391, ptr noundef %dev4.i, ptr noundef nonnull @.str.95, i32 noundef %i.04.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 14, i32 %i.04.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #9
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge

do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl2832_sdr_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

rtl2832_sdr_kill_urbs.exit:                       ; preds = %do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge, %do.end10.rtl2832_sdr_kill_urbs.exit_crit_edge
  %12 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %urbs_submitted, align 8
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %13 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %urbs_submitted, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %urbs_submitted, align 8
  %inc14 = add nuw nsw i32 %i.030, 1
  %15 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %urbs_initialized, align 4
  %cmp = icmp slt i32 %inc14, %16
  br i1 %cmp, label %if.end13.do.body_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %rtl2832_sdr_kill_urbs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %rtl2832_sdr_kill_urbs.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl2832_sdr_free_stream_bufs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %while.cond.preheader

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

while.cond.preheader:                             ; preds = %entry
  %buf_num = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not2 = icmp eq i32 %6, 0
  br i1 %tobool2.not2, label %while.cond.preheader.if.end14_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end14_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 12
  %buf_size = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %6, %while.body.lr.ph ], [ %22, %do.end.while.body_crit_edge ]
  %dec = add i32 %7, -1
  %8 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec, ptr %buf_num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_free_stream_bufs.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_free_stream_bufs, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !298

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_free_stream_bufs.__UNIQUE_ID_ddebug393, ptr noundef %dev9, ptr noundef nonnull @.str.76, i32 noundef %10) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %while.body
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %13 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_size, align 8
  %15 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_num, align 4
  %arrayidx = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 17, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 18, i32 %16
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13, align 4
  tail call void @usb_free_coherent(ptr noundef %12, i32 noundef %14, ptr noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_num, align 4
  %tobool2.not = icmp eq i32 %22, 0
  br i1 %tobool2.not, label %do.end.if.end14_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %do.end.if.end14_crit_edge, %while.cond.preheader.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl2832_sdr_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_urb_complete.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_urb_complete, %land.lhs.true)) #9
          to label %do.end [label %land.lhs.true], !srcloc !298

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @rtl2832_sdr_urb_complete._rs, ptr noundef nonnull @.str.80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_buffer_length, align 4
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %10 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_urb_complete.descriptor, ptr noundef %dev6, ptr noundef nonnull @.str.81, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %status7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %12 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status7, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %13, label %do.body9 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 -110, label %do.end.sw.epilog_crit_edge97
    i32 -104, label %do.end.cleanup67_crit_edge
    i32 -2, label %do.end.cleanup67_crit_edge98
    i32 -108, label %do.end.cleanup67_crit_edge99
  ]

do.end.cleanup67_crit_edge99:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup67

do.end.cleanup67_crit_edge98:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup67

do.end.cleanup67_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup67

do.end.sw.epilog_crit_edge97:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9:                                         ; preds = %do.end
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @rtl2832_sdr_urb_complete._rs.82, ptr noundef nonnull @.str.80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body9.sw.epilog_crit_edge, label %do.end15

do.body9.sw.epilog_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.83, i32 noundef %16) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end15, %do.body9.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge97
  %actual_length21 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %17 = ptrtoint ptr %actual_length21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %sw.epilog.skip_crit_edge, label %if.then28, !prof !303

sw.epilog.skip_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

if.then28:                                        ; preds = %sw.epilog
  %queued_bufs_lock.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #9
  %queued_bufs.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %queued_bufs.i
  br i1 %cmp.i.not.i, label %rtl2832_sdr_get_next_fill_buf.exit.thread, label %if.end.i

rtl2832_sdr_get_next_fill_buf.exit.thread:        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #9
  br label %if.then37

if.end.i:                                         ; preds = %if.then28
  %add.ptr.i = getelementptr i8, ptr %20, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.rtl2832_sdr_get_next_fill_buf.exit_crit_edge

if.end.i.rtl2832_sdr_get_next_fill_buf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl2832_sdr_get_next_fill_buf.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %rtl2832_sdr_get_next_fill_buf.exit

rtl2832_sdr_get_next_fill_buf.exit:               ; preds = %if.end.i.i.i, %if.end.i.rtl2832_sdr_get_next_fill_buf.exit_crit_edge
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #9
  %cmp30 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp30, label %rtl2832_sdr_get_next_fill_buf.exit.if.then37_crit_edge, label %if.end50, !prof !303

rtl2832_sdr_get_next_fill_buf.exit.if.then37_crit_edge: ; preds = %rtl2832_sdr_get_next_fill_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.then37:                                        ; preds = %rtl2832_sdr_get_next_fill_buf.exit.if.then37_crit_edge, %rtl2832_sdr_get_next_fill_buf.exit.thread
  %vb_full = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vb_full, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %vb_full, align 8
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @rtl2832_sdr_urb_complete._rs.84, ptr noundef nonnull @.str.80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then37.skip_crit_edge, label %do.end44

if.then37.skip_crit_edge:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vb_full, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev45, ptr noundef nonnull @.str.86, i32 noundef %32) #12
  br label %skip

if.end50:                                         ; preds = %rtl2832_sdr_get_next_fill_buf.exit
  %call51 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #9
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer, align 4
  %35 = ptrtoint ptr %actual_length21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual_length21, align 4
  %call53 = tail call fastcc i32 @rtl2832_sdr_convert_stream(ptr noundef %1, ptr noundef %call51, ptr noundef %34, i32 noundef %36)
  %num_planes.i = getelementptr i8, ptr %20, i32 -720
  %37 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not.i = icmp eq i32 %38, 0
  br i1 %cmp.not.i, label %if.end50.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.end50.vb2_set_plane_payload.exit_crit_edge:    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.end50
  %length.i = getelementptr i8, ptr %20, i32 -648
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %call53)
  %cmp1.i = icmp ult i32 %40, %call53
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !301

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %41 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %42, %if.then38.i ], [ %call53, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %20, i32 -652
  %43 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end50.vb2_set_plane_payload.exit_crit_edge
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr i8, ptr %20, i32 -712
  %44 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sequence, align 8
  %inc59 = add i32 %46, 1
  store i32 %inc59, ptr %sequence, align 8
  %sequence61 = getelementptr i8, ptr %20, i32 -272
  %47 = ptrtoint ptr %sequence61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sequence61, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef 5) #9
  br label %skip

skip:                                             ; preds = %vb2_set_plane_payload.exit, %do.end44, %if.then37.skip_crit_edge, %sw.epilog.skip_crit_edge
  %call66 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  br label %cleanup67

cleanup67:                                        ; preds = %skip, %do.end.cleanup67_crit_edge, %do.end.cleanup67_crit_edge98, %do.end.cleanup67_crit_edge99
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_sdr_convert_stream(ptr nocapture noundef %dev, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %src_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %pixelformat = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %3, label %entry.if.end10_crit_edge [
    i32 942691651, label %if.then
    i32 909202755, label %for.cond.preheader
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_len)
  %cmp565.not = icmp eq i32 %src_len, 0
  br i1 %cmp565.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %dst, ptr %src, i32 %src_len)
  br label %if.end10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %u16dst.067 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %dst, %for.cond.preheader.for.body_crit_edge ]
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %src, i32 %i.066
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv
  %conv8 = trunc i32 %or to i16
  %incdec.ptr = getelementptr i16, ptr %u16dst.067, i32 1
  %8 = ptrtoint ptr %u16dst.067 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv8, ptr %u16dst.067, align 2
  %inc = add nuw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %src_len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mul = shl i32 %src_len, 1
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.then, %entry.if.end10_crit_edge
  %dst_len.0 = phi i32 [ %src_len, %if.then ], [ %mul, %for.end ], [ 0, %entry.if.end10_crit_edge ]
  %jiffies_next = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 31
  %9 = ptrtoint ptr %jiffies_next to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jiffies_next, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %if.then14, label %if.end10.if.end36_crit_edge, !prof !303

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub16 = sub i32 1000, %10
  %add = add i32 %sub16, %12
  %call17 = tail call i32 @jiffies_to_msecs(i32 noundef %add) #9
  %sample = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 29
  %13 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sample, align 8
  %sample_measured = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 30
  %15 = ptrtoint ptr %sample_measured to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sample_measured, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add20 = add i32 %17, 1000
  %18 = ptrtoint ptr %jiffies_next to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add20, ptr %jiffies_next, align 8
  store i32 %14, ptr %sample_measured, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_convert_stream.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_convert_stream, %if.then32)) #9
          to label %if.end36 [label %if.then32], !srcloc !298

if.then32:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %sub18 = sub i32 %14, %16
  %dev33 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mul34 = mul i32 %sub18, 1000
  %div = udiv i32 %mul34, %call17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_convert_stream.__UNIQUE_ID_ddebug390, ptr noundef %dev33, ptr noundef nonnull @.str.89, i32 noundef %src_len, i32 noundef %sub18, i32 noundef %call17, i32 noundef %div) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then14, %if.end10.if.end36_crit_edge
  %div3763 = lshr i32 %src_len, 1
  %sample38 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 29
  %19 = ptrtoint ptr %sample38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sample38, align 8
  %add39 = add i32 %20, %div3763
  store i32 %add39, ptr %sample38, align 8
  ret i32 %dst_len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl2832_sdr_free_urbs(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %urbs_submitted.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %urbs_submitted.i, align 8
  %i.02.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %entry.rtl2832_sdr_kill_urbs.exit_crit_edge

entry.rtl2832_sdr_kill_urbs.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl2832_sdr_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_free_urbs, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !298

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391, ptr noundef %dev4.i, ptr noundef nonnull @.str.95, i32 noundef %i.04.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 14, i32 %i.04.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge

do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtl2832_sdr_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

rtl2832_sdr_kill_urbs.exit:                       ; preds = %do.end.i.rtl2832_sdr_kill_urbs.exit_crit_edge, %entry.rtl2832_sdr_kill_urbs.exit_crit_edge
  %6 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %urbs_submitted.i, align 8
  %urbs_initialized = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %urbs_initialized, align 4
  %i.02 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02)
  %cmp3 = icmp sgt i32 %i.02, -1
  br i1 %cmp3, label %for.body.lr.ph, label %rtl2832_sdr_kill_urbs.exit.for.end_crit_edge

rtl2832_sdr_kill_urbs.exit.for.end_crit_edge:     ; preds = %rtl2832_sdr_kill_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %rtl2832_sdr_kill_urbs.exit
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ %i.02, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 14, i32 %i.04
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_free_urbs.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_free_urbs, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !298

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_free_urbs.__UNIQUE_ID_ddebug397, ptr noundef %dev7, ptr noundef nonnull @.str.98, i32 noundef %i.04) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %12) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.04, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rtl2832_sdr_kill_urbs.exit.for.end_crit_edge
  %13 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %urbs_initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl2832_sdr_cleanup_queued_bufs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_cleanup_queued_bufs.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_cleanup_queued_bufs, %if.then)) #9
          to label %do.body6 [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_cleanup_queued_bufs.__UNIQUE_ID_ddebug399, ptr noundef %dev4, ptr noundef nonnull @.str.3) #9
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %queued_bufs_lock = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 8
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #9
  %queued_bufs = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not27 = icmp eq ptr %3, %queued_bufs
  br i1 %cmp.i.not27, label %do.body6.while.end_crit_edge, label %do.body6.while.body_crit_edge

do.body6.while.body_crit_edge:                    ; preds = %do.body6
  br label %while.body

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body6.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %3, %do.body6.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #9
  %13 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not = icmp eq ptr %14, %queued_bufs
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body6.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl2832_sdr_unset_adc(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_unset_adc.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_unset_adc, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_unset_adc.__UNIQUE_ID_ddebug405, ptr noundef %dev4, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call5 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 97, i32 noundef 224) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.err_crit_edge

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end8:                                          ; preds = %do.end
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call10 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 25, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.err_crit_edge

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end13:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call15 = tail call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 23, ptr noundef nonnull @.str.66, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.err_crit_edge

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end18:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call20 = tail call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef 402, ptr noundef nonnull @.str.101, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end23:                                         ; preds = %if.end18
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call25 = tail call i32 @regmap_bulk_write(ptr noundef %11, i32 noundef 318, ptr noundef nonnull @.str.102, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.err_crit_edge

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %call30 = tail call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef 277, ptr noundef nonnull @.str.103, i32 noundef 4) #9
  br label %err

err:                                              ; preds = %if.end28, %if.end23.err_crit_edge, %if.end18.err_crit_edge, %if.end13.err_crit_edge, %if.end8.err_crit_edge, %do.end.err_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_querycap.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_querycap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_querycap.__UNIQUE_ID_ddebug400, ptr noundef %dev5, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 3, i32 12
  %call9 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #9
  %udev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 1
  %call.i16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.106, ptr noundef %9, ptr noundef %devpath.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_enum_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_enum_fmt_sdr_cap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug426, ptr noundef %dev5, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %num_formats = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %pixelformat = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %5, i32 1
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat, align 4
  %pixelformat9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_g_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_g_fmt_sdr_cap.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_g_fmt_sdr_cap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_g_fmt_sdr_cap.__UNIQUE_ID_ddebug427, ptr noundef %dev5, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pixelformat = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffersize, align 8
  %buffersize8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %buffersize8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buffersize8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_s_fmt_sdr_cap.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_s_fmt_sdr_cap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_s_fmt_sdr_cap.__UNIQUE_ID_ddebug428, ptr noundef %dev5, ptr noundef nonnull @.str.110, ptr noundef %fmt) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_buffers.i = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 6, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %for.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %num_formats = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp50.not = icmp eq i32 %7, 0
  br i1 %cmp50.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fmt10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %fmt10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt10, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pixelformat9 = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %i.051, i32 1
  %10 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp12 = icmp eq i32 %11, %9
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %pixelformat16 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %pixelformat16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %pixelformat16, align 4
  %buffersize = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %i.051, i32 2
  %13 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffersize, align 4
  %buffersize18 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %buffersize18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buffersize18, align 8
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pixelformat24 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 23
  %16 = ptrtoint ptr %pixelformat24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 942691651, ptr %pixelformat24, align 4
  %buffersize25 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %buffersize25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65536, ptr %buffersize25, align 8
  %fmt26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %18 = ptrtoint ptr %fmt26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 942691651, ptr %fmt26, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.then13
  %.sink = phi i32 [ 65536, %for.end ], [ %14, %if.then13 ]
  %buffersize29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %buffersize29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %buffersize29, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_try_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_try_fmt_sdr_cap.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_try_fmt_sdr_cap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_try_fmt_sdr_cap.__UNIQUE_ID_ddebug429, ptr noundef %dev5, ptr noundef nonnull @.str.110, ptr noundef %fmt) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_formats = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.not = icmp eq i32 %5, 0
  br i1 %cmp31.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %fmt7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt7, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pixelformat6 = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %i.032, i32 1
  %8 = ptrtoint ptr %pixelformat6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp9 = icmp eq i32 %9, %7
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %buffersize = getelementptr [2 x %struct.rtl2832_sdr_format], ptr @formats, i32 0, i32 %i.032, i32 2
  %10 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffersize, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %fmt15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %12 = ptrtoint ptr %fmt15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 942691651, ptr %fmt15, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then10
  %.sink = phi i32 [ 65536, %for.end ], [ %11, %if.then10 ]
  %buffersize18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %buffersize18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %buffersize18, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_g_tuner.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_g_tuner, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_g_tuner.__UNIQUE_ID_ddebug411, ptr noundef %dev5, ptr noundef nonnull @.str.113, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %9, label %do.end.if.end70_crit_edge [
    i32 0, label %if.then7
    i32 1, label %land.lhs.true
  ]

do.end.if.end70_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call8 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.114, i32 noundef 32) #9
  %type9 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %11 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %type9, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %12 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5120, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %13 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 300000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %14 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3200000, ptr %rangehigh, align 4
  br label %if.end70

land.lhs.true:                                    ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_subdev, align 8
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true.if.then59_crit_edge, label %land.lhs.true13

land.lhs.true.if.then59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

land.lhs.true13:                                  ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %land.lhs.true13.if.then59_crit_edge, label %land.lhs.true16

land.lhs.true13.if.then59_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tuner, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %land.lhs.true16.if.then59_crit_edge, label %land.lhs.true20

land.lhs.true16.if.then59_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %g_tuner, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %land.lhs.true20.if.then59_crit_edge, label %if.else39

land.lhs.true20.if.then59_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

if.else39:                                        ; preds = %land.lhs.true20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %if.else39.if.else47_crit_edge, label %land.lhs.true41

if.else39.if.else47_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else47

land.lhs.true41:                                  ; preds = %if.else39
  %g_tuner42 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %g_tuner42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %g_tuner42, align 4
  %tobool43.not = icmp eq ptr %25, null
  br i1 %tobool43.not, label %land.lhs.true41.if.else47_crit_edge, label %if.then44

land.lhs.true41.if.else47_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else47

if.then44:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 %25(ptr noundef nonnull %16, ptr noundef %v) #9
  br label %if.end70

if.else47:                                        ; preds = %land.lhs.true41.if.else47_crit_edge, %if.else39.if.else47_crit_edge
  %call51 = tail call i32 %22(ptr noundef nonnull %16, ptr noundef %v) #9
  br label %if.end70

if.then59:                                        ; preds = %land.lhs.true20.if.then59_crit_edge, %land.lhs.true16.if.then59_crit_edge, %land.lhs.true13.if.then59_crit_edge, %land.lhs.true.if.then59_crit_edge
  %name60 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call62 = tail call i32 @strscpy(ptr noundef %name60, ptr noundef nonnull @.str.115, i32 noundef 32) #9
  %type63 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %26 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %type63, align 4
  %capability64 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %27 = ptrtoint ptr %capability64 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5120, ptr %capability64, align 4
  %rangelow65 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %28 = ptrtoint ptr %rangelow65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 50000000, ptr %rangelow65, align 4
  %rangehigh66 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %29 = ptrtoint ptr %rangehigh66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2000000000, ptr %rangehigh66, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then59, %if.else47, %if.then44, %if.then7, %do.end.if.end70_crit_edge
  %ret.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then59 ], [ %call46, %if.then44 ], [ %call51, %if.else47 ], [ -22, %do.end.if.end70_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_s_tuner.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_s_tuner, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_s_tuner.__UNIQUE_ID_ddebug412, ptr noundef %dev5, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %5, label %do.end.if.else53_crit_edge [
    i32 0, label %do.end.if.end60_crit_edge
    i32 1, label %land.lhs.true
  ]

do.end.if.end60_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end.if.else53_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true:                                    ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l2_subdev, align 8
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %land.lhs.true.if.else53_crit_edge, label %land.lhs.true10

land.lhs.true.if.else53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true10:                                  ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else53_crit_edge, label %land.lhs.true13

land.lhs.true10.if.else53_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %land.lhs.true13.if.else53_crit_edge, label %land.lhs.true17

land.lhs.true13.if.else53_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_tuner, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %land.lhs.true17.if.else53_crit_edge, label %if.else36

land.lhs.true17.if.else53_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

if.else36:                                        ; preds = %land.lhs.true17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool37.not = icmp eq ptr %15, null
  br i1 %tobool37.not, label %if.else36.if.else44_crit_edge, label %land.lhs.true38

if.else36.if.else44_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44

land.lhs.true38:                                  ; preds = %if.else36
  %s_tuner39 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %s_tuner39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_tuner39, align 4
  %tobool40.not = icmp eq ptr %17, null
  br i1 %tobool40.not, label %land.lhs.true38.if.else44_crit_edge, label %if.then41

land.lhs.true38.if.else44_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else44

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 %17(ptr noundef nonnull %8, ptr noundef %v) #9
  br label %if.end60

if.else44:                                        ; preds = %land.lhs.true38.if.else44_crit_edge, %if.else36.if.else44_crit_edge
  %call48 = tail call i32 %14(ptr noundef nonnull %8, ptr noundef %v) #9
  br label %if.end60

if.else53:                                        ; preds = %land.lhs.true17.if.else53_crit_edge, %land.lhs.true13.if.else53_crit_edge, %land.lhs.true10.if.else53_crit_edge, %land.lhs.true.if.else53_crit_edge, %do.end.if.else53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp55 = icmp eq i32 %5, 1
  %. = select i1 %cmp55, i32 0, i32 -22
  br label %if.end60

if.end60:                                         ; preds = %if.else53, %if.else44, %if.then41, %do.end.if.end60_crit_edge
  %ret.0 = phi i32 [ %5, %do.end.if.end60_crit_edge ], [ %call43, %if.then41 ], [ %call48, %if.else44 ], [ %., %if.else53 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_g_frequency.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_g_frequency, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_g_frequency.__UNIQUE_ID_ddebug414, ptr noundef %dev5, ptr noundef nonnull @.str.118, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %9, label %do.end.if.end66_crit_edge [
    i32 0, label %if.then7
    i32 1, label %land.lhs.true
  ]

do.end.if.end66_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %f_adc = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_adc, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %frequency, align 4
  %type8 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %14 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %type8, align 4
  br label %if.end66

land.lhs.true:                                    ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_subdev, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true.if.then60_crit_edge, label %land.lhs.true12

land.lhs.true.if.then60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

land.lhs.true12:                                  ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true12.if.then60_crit_edge, label %land.lhs.true15

land.lhs.true12.if.then60_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %tuner18 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %tuner18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tuner18, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %land.lhs.true15.if.then60_crit_edge, label %land.lhs.true20

land.lhs.true15.if.then60_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %g_frequency, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %land.lhs.true20.if.then60_crit_edge, label %if.then25

land.lhs.true20.if.then60_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.then25:                                        ; preds = %land.lhs.true20
  %type26 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %23 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %type26, align 4
  %24 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v4l2_subdev, align 8
  %tobool28.not = icmp eq ptr %25, null
  br i1 %tobool28.not, label %if.then25.if.end66_crit_edge, label %if.else30

if.then25.if.end66_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.else30:                                        ; preds = %if.then25
  %ops31 = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops31, align 4
  %tuner32 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %tuner32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner32, align 4
  %tobool33.not = icmp eq ptr %29, null
  br i1 %tobool33.not, label %if.else30.if.end66_crit_edge, label %land.lhs.true34

if.else30.if.end66_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true34:                                  ; preds = %if.else30
  %g_frequency37 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %g_frequency37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %g_frequency37, align 4
  %tobool38.not = icmp eq ptr %31, null
  br i1 %tobool38.not, label %land.lhs.true34.if.end66_crit_edge, label %if.else40

land.lhs.true34.if.end66_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.else40:                                        ; preds = %land.lhs.true34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %if.else40.if.else48_crit_edge, label %land.lhs.true42

if.else40.if.else48_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

land.lhs.true42:                                  ; preds = %if.else40
  %g_frequency43 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %g_frequency43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %g_frequency43, align 4
  %tobool44.not = icmp eq ptr %34, null
  br i1 %tobool44.not, label %land.lhs.true42.if.else48_crit_edge, label %if.then45

land.lhs.true42.if.else48_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else48

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 %34(ptr noundef nonnull %25, ptr noundef %f) #9
  br label %if.end66

if.else48:                                        ; preds = %land.lhs.true42.if.else48_crit_edge, %if.else40.if.else48_crit_edge
  %call52 = tail call i32 %31(ptr noundef nonnull %25, ptr noundef %f) #9
  br label %if.end66

if.then60:                                        ; preds = %land.lhs.true20.if.then60_crit_edge, %land.lhs.true15.if.then60_crit_edge, %land.lhs.true12.if.then60_crit_edge, %land.lhs.true.if.then60_crit_edge
  %f_tuner = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %f_tuner to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_tuner, align 8
  %frequency61 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %37 = ptrtoint ptr %frequency61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %frequency61, align 4
  %type62 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %38 = ptrtoint ptr %type62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %type62, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.else48, %if.then45, %land.lhs.true34.if.end66_crit_edge, %if.else30.if.end66_crit_edge, %if.then25.if.end66_crit_edge, %if.then7, %do.end.if.end66_crit_edge
  %ret.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then60 ], [ %call47, %if.then45 ], [ %call52, %if.else48 ], [ -19, %if.then25.if.end66_crit_edge ], [ -515, %land.lhs.true34.if.end66_crit_edge ], [ -515, %if.else30.if.end66_crit_edge ], [ -22, %do.end.if.end66_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_s_frequency, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug415, ptr noundef %dev5, ptr noundef nonnull @.str.120, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %11, label %do.end.if.end138_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true53
  ]

do.end.if.end138_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

land.lhs.true:                                    ; preds = %do.end
  %type7 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp8 = icmp eq i32 %14, 4
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end138_crit_edge

land.lhs.true.if.end138_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then9:                                         ; preds = %land.lhs.true
  %frequency10 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %15 = ptrtoint ptr %frequency10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frequency10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %16)
  %cmp11 = icmp ult i32 %16, 600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %16)
  %cmp16 = icmp ult i32 %16, 3000000
  %. = select i1 %cmp16, i32 1, i32 2
  %band.0 = select i1 %cmp11, i32 0, i32 %.
  %rangelow = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %band.0, i32 4
  %17 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rangelow, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %16, i32 %18)
  %rangehigh = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %band.0, i32 5
  %20 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rangehigh, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %21)
  %f_adc = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %f_adc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_s_frequency, %if.then43)) #9
          to label %do.end48 [label %if.then43], !srcloc !298

if.then43:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_adc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug420, ptr noundef %dev44, ptr noundef nonnull @.str.121, i32 noundef %25) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %if.then9
  %call49 = tail call fastcc i32 @rtl2832_sdr_set_adc(ptr noundef %1)
  br label %if.end138

land.lhs.true53:                                  ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v4l2_subdev, align 8
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %land.lhs.true53.if.then102_crit_edge, label %land.lhs.true55

land.lhs.true53.if.then102_crit_edge:             ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102

land.lhs.true55:                                  ; preds = %land.lhs.true53
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %tobool57.not = icmp eq ptr %29, null
  br i1 %tobool57.not, label %land.lhs.true55.if.then102_crit_edge, label %land.lhs.true58

land.lhs.true55.if.then102_crit_edge:             ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %tuner61 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %tuner61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tuner61, align 4
  %tobool62.not = icmp eq ptr %31, null
  br i1 %tobool62.not, label %land.lhs.true58.if.then102_crit_edge, label %land.lhs.true63

land.lhs.true58.if.then102_crit_edge:             ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_frequency, align 4
  %tobool67.not = icmp eq ptr %33, null
  br i1 %tobool67.not, label %land.lhs.true63.if.then102_crit_edge, label %if.else82

land.lhs.true63.if.then102_crit_edge:             ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102

if.else82:                                        ; preds = %land.lhs.true63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool83.not = icmp eq ptr %34, null
  br i1 %tobool83.not, label %if.else82.if.else90_crit_edge, label %land.lhs.true84

if.else82.if.else90_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else90

land.lhs.true84:                                  ; preds = %if.else82
  %s_frequency85 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %s_frequency85 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_frequency85, align 4
  %tobool86.not = icmp eq ptr %36, null
  br i1 %tobool86.not, label %land.lhs.true84.if.else90_crit_edge, label %if.then87

land.lhs.true84.if.else90_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else90

if.then87:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 %36(ptr noundef nonnull %27, ptr noundef %f) #9
  br label %if.end138

if.else90:                                        ; preds = %land.lhs.true84.if.else90_crit_edge, %if.else82.if.else90_crit_edge
  %call94 = tail call i32 %33(ptr noundef nonnull %27, ptr noundef %f) #9
  br label %if.end138

if.then102:                                       ; preds = %land.lhs.true63.if.then102_crit_edge, %land.lhs.true58.if.then102_crit_edge, %land.lhs.true55.if.then102_crit_edge, %land.lhs.true53.if.then102_crit_edge
  %frequency103 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %37 = ptrtoint ptr %frequency103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frequency103, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 50000000)
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 2000000000)
  %f_tuner = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 22
  %41 = ptrtoint ptr %f_tuner to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %f_tuner, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_s_frequency, %if.then128)) #9
          to label %do.end133 [label %if.then128], !srcloc !298

if.then128:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #11
  %dev129 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %frequency103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frequency103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug425, ptr noundef %dev129, ptr noundef nonnull @.str.122, i32 noundef %43) #9
  br label %do.end133

do.end133:                                        ; preds = %if.then128, %if.then102
  tail call fastcc void @rtl2832_sdr_set_tuner_freq(ptr noundef %1)
  br label %if.end138

if.end138:                                        ; preds = %do.end133, %if.else90, %if.then87, %do.end48, %land.lhs.true.if.end138_crit_edge, %do.end.if.end138_crit_edge
  %ret.0 = phi i32 [ %call49, %do.end48 ], [ 0, %do.end133 ], [ %call89, %if.then87 ], [ %call94, %if.else90 ], [ -22, %land.lhs.true.if.end138_crit_edge ], [ -22, %do.end.if.end138_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sdr_enum_freq_bands(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sdr_enum_freq_bands.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sdr_enum_freq_bands, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !298

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %band, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sdr_enum_freq_bands.__UNIQUE_ID_ddebug413, ptr noundef %dev5, ptr noundef nonnull @.str.124, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %band, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %11, label %do.end.cleanup_crit_edge [
    i32 0, label %if.then7
    i32 1, label %land.lhs.true
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %do.end
  %index8 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %13 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp9 = icmp ugt i32 %14, 2
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %14
  %15 = call ptr @memcpy(ptr %band, ptr %arrayidx, i32 64)
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.rtl2832_sdr_dev, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v4l2_subdev, align 8
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true.if.then63_crit_edge, label %land.lhs.true16

land.lhs.true.if.then63_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

land.lhs.true16:                                  ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %land.lhs.true16.if.then63_crit_edge, label %land.lhs.true19

land.lhs.true16.if.then63_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %tuner22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tuner22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner22, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %land.lhs.true19.if.then63_crit_edge, label %land.lhs.true24

land.lhs.true19.if.then63_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %enum_freq_bands = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %enum_freq_bands to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enum_freq_bands, align 4
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %land.lhs.true24.if.then63_crit_edge, label %if.else43

land.lhs.true24.if.then63_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.else43:                                        ; preds = %land.lhs.true24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool44.not = icmp eq ptr %24, null
  br i1 %tobool44.not, label %if.else43.if.else51_crit_edge, label %land.lhs.true45

if.else43.if.else51_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else51

land.lhs.true45:                                  ; preds = %if.else43
  %enum_freq_bands46 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %enum_freq_bands46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enum_freq_bands46, align 4
  %tobool47.not = icmp eq ptr %26, null
  br i1 %tobool47.not, label %land.lhs.true45.if.else51_crit_edge, label %if.then48

land.lhs.true45.if.else51_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else51

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call i32 %26(ptr noundef nonnull %17, ptr noundef %band) #9
  br label %cleanup

if.else51:                                        ; preds = %land.lhs.true45.if.else51_crit_edge, %if.else43.if.else51_crit_edge
  %call55 = tail call i32 %23(ptr noundef nonnull %17, ptr noundef %band) #9
  br label %cleanup

if.then63:                                        ; preds = %land.lhs.true24.if.then63_crit_edge, %land.lhs.true19.if.then63_crit_edge, %land.lhs.true16.if.then63_crit_edge, %land.lhs.true.if.then63_crit_edge
  %index64 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %27 = ptrtoint ptr %index64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp65.not = icmp eq i32 %28, 0
  br i1 %cmp65.not, label %if.end67, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %29 = call ptr @memcpy(ptr %band, ptr @bands_fm, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then63.cleanup_crit_edge, %if.else51, %if.then48, %if.end11, %if.then7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7.cleanup_crit_edge ], [ -22, %if.then63.cleanup_crit_edge ], [ 0, %if.end11 ], [ 0, %if.end67 ], [ %call50, %if.then48 ], [ %call55, %if.else51 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !215, !217, !218, !220, !221, !223, !225, !227, !229, !230, !232, !234, !236, !238, !239, !241, !243, !244, !246, !247, !249, !250, !251, !253, !254, !256, !257, !258, !260, !262, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !279, !281, !282, !283, !285, !286, !288}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !{ptr @__param_emulated_formats, !1, !"__param_emulated_formats", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_emulated_formatstype388, !1, !"__UNIQUE_ID_emulated_formatstype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_emulated_formats389, !4, !"__UNIQUE_ID_emulated_formats389", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 28, i32 1}
!5 = !{ptr @__initcall__kmod_rtl2832_sdr__439_1493_rtl2832_sdr_driver_init6, !6, !"__initcall__kmod_rtl2832_sdr__439_1493_rtl2832_sdr_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1493, i32 1}
!7 = !{ptr @__exitcall_rtl2832_sdr_driver_exit, !6, !"__exitcall_rtl2832_sdr_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author440, !9, !"__UNIQUE_ID_author440", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1495, i32 1}
!10 = !{ptr @__UNIQUE_ID_description441, !11, !"__UNIQUE_ID_description441", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1496, i32 1}
!12 = !{ptr @__UNIQUE_ID_file442, !13, !"__UNIQUE_ID_file442", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1497, i32 1}
!14 = !{ptr @__UNIQUE_ID_license443, !13, !"__UNIQUE_ID_license443", i1 false, i1 false}
!15 = !{ptr @rtl2832_sdr_emulated_fmt, !16, !"rtl2832_sdr_emulated_fmt", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 26, i32 13}
!17 = !{ptr @__param_str_emulated_formats, !1, !"__param_str_emulated_formats", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1488, i32 13}
!20 = !{ptr @rtl2832_sdr_driver, !21, !"rtl2832_sdr_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1486, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1316, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rtl2832_sdr_probe.__UNIQUE_ID_ddebug436, !23, !"__UNIQUE_ID_ddebug436", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1319, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rtl2832_sdr_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @rtl2832_sdr_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1324, i32 3}
!35 = !{ptr @rtl2832_sdr_probe.__UNIQUE_ID_ddebug437, !34, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1330, i32 3}
!38 = !{ptr @rtl2832_sdr_probe._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rtl2832_sdr_probe._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @rtl2832_sdr_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1354, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rtl2832_sdr_probe.__key.12, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1355, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rtl2832_sdr_probe.__key.14, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1356, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1369, i32 3}
!51 = !{ptr @rtl2832_sdr_probe._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rtl2832_sdr_probe._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @rtl2832_sdr_probe._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1376, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rtl2832_sdr_probe._key.20, !57, !"_key", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1383, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rtl2832_sdr_probe._key.22, !60, !"_key", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1394, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @rtl2832_sdr_probe._key.24, !63, !"_key", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1405, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtl2832_sdr_probe._key.26, !66, !"_key", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1411, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1412, i32 3}
!70 = !{ptr @rtl2832_sdr_probe._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rtl2832_sdr_probe._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1418, i32 3}
!74 = !{ptr @rtl2832_sdr_probe._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rtl2832_sdr_probe._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1432, i32 3}
!78 = !{ptr @rtl2832_sdr_probe._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtl2832_sdr_probe._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1443, i32 3}
!82 = !{ptr @rtl2832_sdr_probe._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rtl2832_sdr_probe._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1447, i32 2}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rtl2832_sdr_probe._entry.40, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtl2832_sdr_probe._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1449, i32 2}
!91 = !{ptr @rtl2832_sdr_probe._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rtl2832_sdr_probe._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1450, i32 2}
!95 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rtl2832_sdr_probe._entry.47, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @rtl2832_sdr_probe._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @rtl2832_sdr_ctrl_ops, !99, !"rtl2832_sdr_ctrl_ops", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1290, i32 35}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1253, i32 2}
!102 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @rtl2832_sdr_s_ctrl.__UNIQUE_ID_ddebug430, !101, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!104 = !{ptr @bands_adc, !105, !"bands_adc", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 37, i32 41}
!106 = !{ptr @bands_fm, !107, !"bands_fm", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 64, i32 41}
!108 = !{ptr @formats, !109, !"formats", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 82, i32 34}
!110 = !{ptr @rtl2832_sdr_vb2_ops, !111, !"rtl2832_sdr_vb2_ops", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 943, i32 29}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 443, i32 2}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug401, !113, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 450, i32 2}
!118 = !{ptr @rtl2832_sdr_queue_setup.__UNIQUE_ID_ddebug402, !117, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 855, i32 2}
!121 = !{ptr @rtl2832_sdr_start_streaming.__UNIQUE_ID_ddebug409, !120, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 825, i32 2}
!124 = !{ptr @rtl2832_sdr_set_tuner.__UNIQUE_ID_ddebug407, !123, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 805, i32 2}
!127 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @rtl2832_sdr_set_tuner_freq.__UNIQUE_ID_ddebug406, !126, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 495, i32 2}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug403, !130, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 505, i32 46}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 509, i32 46}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 529, i32 2}
!139 = !{ptr @rtl2832_sdr_set_adc.__UNIQUE_ID_ddebug404, !138, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 574, i32 5}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 579, i32 46}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 589, i32 5}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 594, i32 46}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 663, i32 47}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 719, i32 47}
!152 = !{ptr @rtl2832_sdr_set_adc._entry, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 722, i32 3}
!154 = !{ptr @rtl2832_sdr_set_adc._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 327, i32 2}
!157 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug394, !156, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 335, i32 4}
!161 = !{ptr @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug395, !160, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 341, i32 3}
!164 = !{ptr @rtl2832_sdr_alloc_stream_bufs.__UNIQUE_ID_ddebug396, !163, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 309, i32 4}
!167 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @rtl2832_sdr_free_stream_bufs.__UNIQUE_ID_ddebug393, !166, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 376, i32 3}
!171 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rtl2832_sdr_alloc_urbs.__UNIQUE_ID_ddebug398, !170, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 223, i32 2}
!175 = !{ptr @rtl2832_sdr_urb_complete._rs, !174, !"_rs", i1 false, i1 false}
!176 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @rtl2832_sdr_urb_complete.descriptor, !174, !"descriptor", i1 false, i1 false}
!179 = !{ptr @rtl2832_sdr_urb_complete._rs.82, !180, !"_rs", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 236, i32 3}
!181 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @rtl2832_sdr_urb_complete._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @rtl2832_sdr_urb_complete._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @rtl2832_sdr_urb_complete._rs.84, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 247, i32 4}
!186 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @rtl2832_sdr_urb_complete._entry.85, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @rtl2832_sdr_urb_complete._entry_ptr.87, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 202, i32 3}
!191 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @rtl2832_sdr_convert_stream.__UNIQUE_ID_ddebug390, !190, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!193 = distinct !{null, !194, !"__already_done", i1 false, i1 false}
!194 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!195 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 287, i32 3}
!198 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @rtl2832_sdr_submit_urbs.__UNIQUE_ID_ddebug392, !197, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 290, i32 4}
!202 = !{ptr @rtl2832_sdr_submit_urbs._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @rtl2832_sdr_submit_urbs._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 272, i32 3}
!206 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @rtl2832_sdr_kill_urbs.__UNIQUE_ID_ddebug391, !205, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 915, i32 2}
!210 = !{ptr @rtl2832_sdr_stop_streaming.__UNIQUE_ID_ddebug410, !209, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 359, i32 4}
!213 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @rtl2832_sdr_free_urbs.__UNIQUE_ID_ddebug397, !212, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 407, i32 2}
!217 = !{ptr @rtl2832_sdr_cleanup_queued_bufs.__UNIQUE_ID_ddebug399, !216, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!218 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 742, i32 2}
!220 = !{ptr @rtl2832_sdr_unset_adc.__UNIQUE_ID_ddebug405, !219, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 759, i32 46}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 763, i32 46}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 767, i32 46}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 839, i32 2}
!229 = !{ptr @rtl2832_sdr_unset_tuner.__UNIQUE_ID_ddebug408, !228, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!230 = !{ptr @rtl2832_sdr_template, !231, !"rtl2832_sdr_template", i1 false, i1 false}
!231 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1233, i32 28}
!232 = !{ptr @rtl2832_sdr_fops, !233, !"rtl2832_sdr_fops", i1 false, i1 false}
!233 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1223, i32 42}
!234 = !{ptr @rtl2832_sdr_ioctl_ops, !235, !"rtl2832_sdr_ioctl_ops", i1 false, i1 false}
!235 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1193, i32 36}
!236 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 427, i32 2}
!238 = !{ptr @rtl2832_sdr_querycap.__UNIQUE_ID_ddebug400, !237, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!239 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../include/linux/usb.h", i32 912, i32 31}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1115, i32 2}
!243 = !{ptr @rtl2832_sdr_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug426, !242, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!244 = !{ptr @.str.108, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1131, i32 2}
!246 = !{ptr @rtl2832_sdr_g_fmt_sdr_cap.__UNIQUE_ID_ddebug427, !245, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!247 = !{ptr @.str.109, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1147, i32 2}
!249 = !{ptr @.str.110, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @rtl2832_sdr_s_fmt_sdr_cap.__UNIQUE_ID_ddebug428, !248, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!251 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1177, i32 2}
!253 = !{ptr @rtl2832_sdr_try_fmt_sdr_cap.__UNIQUE_ID_ddebug429, !252, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!254 = !{ptr @.str.112, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 960, i32 2}
!256 = !{ptr @.str.113, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @rtl2832_sdr_g_tuner.__UNIQUE_ID_ddebug411, !255, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!258 = !{ptr @.str.114, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 963, i32 20}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 973, i32 20}
!262 = !{ptr @.str.116, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 992, i32 2}
!264 = !{ptr @rtl2832_sdr_s_tuner.__UNIQUE_ID_ddebug412, !263, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1045, i32 2}
!267 = !{ptr @.str.118, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @rtl2832_sdr_g_frequency.__UNIQUE_ID_ddebug414, !266, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!269 = !{ptr @.str.119, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1072, i32 2}
!271 = !{ptr @.str.120, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug415, !270, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!273 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1091, i32 3}
!275 = !{ptr @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug420, !274, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!276 = !{ptr @.str.122, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1100, i32 3}
!278 = !{ptr @rtl2832_sdr_s_frequency.__UNIQUE_ID_ddebug425, !277, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!279 = !{ptr @.str.123, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1014, i32 2}
!281 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @rtl2832_sdr_enum_freq_bands.__UNIQUE_ID_ddebug413, !280, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!283 = !{ptr @.str.125, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1300, i32 2}
!285 = !{ptr @rtl2832_sdr_video_release.__UNIQUE_ID_ddebug435, !284, !"__UNIQUE_ID_ddebug435", i1 false, i1 false}
!286 = !{ptr @.str.126, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/dvb-frontends/rtl2832_sdr.c", i32 1470, i32 2}
!288 = !{ptr @rtl2832_sdr_remove.__UNIQUE_ID_ddebug438, !287, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"min_enum_size", i32 4}
!291 = !{i32 8, !"branch-target-enforcement", i32 0}
!292 = !{i32 8, !"sign-return-address", i32 0}
!293 = !{i32 8, !"sign-return-address-all", i32 0}
!294 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 2}
!297 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!298 = !{i64 2149028342, i64 2149028347, i64 2149028360, i64 2149028404, i64 2149028438, i64 2149028459}
!299 = !{i8 0, i8 2}
!300 = !{!"auto-init"}
!301 = !{!"branch_weights", i32 2000, i32 1}
!302 = !{i64 2149053529, i64 2149053809, i64 2149054143, i64 2149054477}
!303 = !{!"branch_weights", i32 1, i32 2000}
