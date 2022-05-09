; ModuleID = '/llk/IR_all_yes/drivers/media/usb/airspy/airspy.c_pt.bc'
source_filename = "../drivers/media/usb/airspy/airspy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.airspy = type { i32, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, i32, i32, %struct.mutex, %struct.mutex, [6 x ptr], i32, i32, [6 x ptr], [6 x i32], i32, i32, [128 x i8], i32, i32, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.airspy_frame_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
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
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_airspy__338_1090_airspy_driver_init6 = internal global ptr @airspy_driver_init, section ".initcall6.init", align 4
@airspy_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @airspy_probe, ptr @airspy_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @airspy_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_airspy_driver_exit = internal global ptr @airspy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author339 = internal constant [45 x i8] c"airspy.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [30 x i8] c"airspy.description=AirSpy SDR\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [44 x i8] c"airspy.file=drivers/media/usb/airspy/airspy\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [19 x i8] c"airspy.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"airspy\00", [25 x i8] zeroinitializer }, align 32
@airspy_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7504, i16 24737, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@airspy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not allocate memory for state\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"airspy_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/airspy/airspy.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr = internal global ptr @airspy_probe._entry, section ".printk_index", align 4
@airspy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&s->v4l2_lock\00", [18 x i8] zeroinitializer }, align 32
@airspy_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&s->vb_queue_lock\00", [46 x i8] zeroinitializer }, align 32
@airspy_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&s->queued_bufs_lock\00", [43 x i8] zeroinitializer }, align 32
@bands = internal constant { [1 x %struct.v4l2_frequency_band], [32 x i8] } { [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 4, i32 0, i32 5120, i32 20000000, i32 20000000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@bands_rf = internal constant { [1 x %struct.v4l2_frequency_band], [32 x i8] } { [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 1, i32 5, i32 0, i32 5120, i32 24000000, i32 1750000000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@airspy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 991, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not detect board\0A\00", [40 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.13 = internal global ptr @airspy_probe._entry.11, section ".printk_index", align 4
@airspy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 997, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Board ID: %02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.17 = internal global ptr @airspy_probe._entry.14, section ".printk_index", align 4
@airspy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 998, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Firmware version: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.20 = internal global ptr @airspy_probe._entry.18, section ".printk_index", align 4
@airspy_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @airspy_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @airspy_start_streaming, ptr @airspy_stop_streaming, ptr @airspy_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@airspy_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not initialize vb2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.23 = internal global ptr @airspy_probe._entry.21, section ".printk_index", align 4
@airspy_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @airspy_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"AirSpy SDR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @airspy_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@airspy_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1024, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register v4l2-device (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.26 = internal global ptr @airspy_probe._entry.24, section ".printk_index", align 4
@airspy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"airspy:1029:(&s->hdl)->_lock\00", [35 x i8] zeroinitializer }, align 32
@airspy_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @airspy_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@airspy_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1044, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.30 = internal global ptr @airspy_probe._entry.28, section ".printk_index", align 4
@airspy_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register as video device (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.33 = internal global ptr @airspy_probe._entry.31, section ".printk_index", align 4
@airspy_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1063, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Registered as %s\0A\00", [46 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.36 = internal global ptr @airspy_probe._entry.34, section ".printk_index", align 4
@airspy_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1064, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SDR API is still slightly experimental and functionality changes may follow\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@airspy_probe._entry_ptr.40 = internal global ptr @airspy_probe._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@airspy_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown command %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"airspy_ctrl_msg\00", [16 x i8] zeroinitializer }, align 32
@airspy_ctrl_msg._entry_ptr = internal global ptr @airspy_ctrl_msg._entry, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@airspy_ctrl_msg.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.45, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%02x %02x %02x %02x %02x %02x %02x %02x %s %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@airspy_ctrl_msg._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"usb_control_msg() failed %d request %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@airspy_ctrl_msg._entry_ptr.48 = internal global ptr @airspy_ctrl_msg._entry.46, section ".printk_index", align 4
@airspy_queue_setup.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"airspy_queue_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbuffers=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@airspy_queue_setup.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.51, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nbuffers=%d sizes[0]=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@airspy_start_streaming.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"airspy_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"airspy_alloc_stream_bufs\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"all in all I will use %u bytes for streaming\0A\00", [50 x i8] zeroinitializer }, align 32
@airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.56, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alloc buf=%d failed\0A\00", [43 x i8] zeroinitializer }, align 32
@airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.57, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"alloc buf=%d %p (dma %llu)\0A\00", [36 x i8] zeroinitializer }, align 32
@airspy_alloc_urbs.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"airspy_alloc_urbs\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alloc urb=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@airspy_urb_complete._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@airspy_urb_complete.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"airspy_urb_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"status=%d length=%d/%d errors=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@airspy_urb_complete._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@airspy_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"URB failed %d\0A\00", [17 x i8] zeroinitializer }, align 32
@airspy_urb_complete._entry_ptr = internal global ptr @airspy_urb_complete._entry, section ".printk_index", align 4
@airspy_urb_complete._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@airspy_urb_complete._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str.3, i32 298, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"videobuf is full, %d packets dropped\0A\00", [58 x i8] zeroinitializer }, align 32
@airspy_urb_complete._entry_ptr.68 = internal global ptr @airspy_urb_complete._entry.66, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@airspy_convert_stream.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"airspy_convert_stream\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"slen=%u samples=%u msecs=%u sample rate=%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@airspy_submit_urbs.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"airspy_submit_urbs\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"submit urb=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@airspy_submit_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Could not submit URB no. %d - get them all back\0A\00", [47 x i8] zeroinitializer }, align 32
@airspy_submit_urbs._entry_ptr = internal global ptr @airspy_submit_urbs._entry, section ".printk_index", align 4
@airspy_kill_urbs.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"airspy_kill_urbs\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kill urb=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@airspy_free_urbs.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"airspy_free_urbs\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free urb=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@airspy_free_stream_bufs.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"airspy_free_stream_bufs\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free buf=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@airspy_stop_streaming.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.53, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"airspy_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@airspy_cleanup_queued_bufs.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.53, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"airspy_cleanup_queued_bufs\00", [37 x i8] zeroinitializer }, align 32
@airspy_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@airspy_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @airspy_querycap, ptr null, ptr null, ptr null, ptr @airspy_enum_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @airspy_g_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @airspy_s_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @airspy_try_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @airspy_g_tuner, ptr @airspy_s_tuner, ptr @airspy_g_frequency, ptr @airspy_s_frequency, ptr @airspy_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AirSpy ADC\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AirSpy RF\00", [22 x i8] zeroinitializer }, align 32
@airspy_g_frequency.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"airspy_g_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC frequency=%u Hz\0A\00", [43 x i8] zeroinitializer }, align 32
@airspy_g_frequency.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.3, ptr @.str.88, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RF frequency=%u Hz\0A\00", [44 x i8] zeroinitializer }, align 32
@airspy_s_frequency.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.3, ptr @.str.87, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"airspy_s_frequency\00", [45 x i8] zeroinitializer }, align 32
@airspy_s_frequency.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.3, ptr @.str.88, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@airspy_s_ctrl.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"airspy_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown ctrl: id=%d name=%s\0A\00", [35 x i8] zeroinitializer }, align 32
@airspy_set_lna_gain.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"airspy_set_lna_gain\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lna auto=%d->%d val=%d->%d\0A\00", [36 x i8] zeroinitializer }, align 32
@airspy_set_lna_gain.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.3, ptr @.str.94, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@airspy_set_mixer_gain.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"airspy_set_mixer_gain\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mixer auto=%d->%d val=%d->%d\0A\00", [34 x i8] zeroinitializer }, align 32
@airspy_set_mixer_gain.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.94, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@airspy_set_if_gain.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.3, ptr @.str.98, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"airspy_set_if_gain\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"val=%d->%d\0A\00", [20 x i8] zeroinitializer }, align 32
@airspy_set_if_gain.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.3, ptr @.str.94, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@airspy_disconnect.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.3, ptr @.str.53, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"airspy_disconnect\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 9, i64 10, i64 11, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [7 x i64] [i64 5, i64 32, i64 10619177, i64 10619178, i64 10619187, i64 10619188, i64 10619198]
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"airspy_driver\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1083, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1090, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"airspy_id_table\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1076, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 970, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 974, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 975, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 976, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 50, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"bands_rf\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 61, i32 41 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 991, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 997, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 998, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"airspy_vb2_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 600, i32 29 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1010, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"airspy_template\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 846, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1024, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1029, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [16 x i8] c"airspy_ctrl_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 957, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1044, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1058, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1062, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 1064, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 185, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 196, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 199, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 486, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 494, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 522, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 369, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 377, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 382, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 415, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 272, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 285, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 296, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 252, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 1163, i32 7 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 334, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 337, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 320, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 399, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 353, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 582, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 445, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [12 x i8] c"airspy_fops\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 836, i32 42 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"airspy_ioctl_ops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 806, i32 36 }
@___asan_gen_.371 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 912, i32 31 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 707, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 714, i32 20 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 736, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 741, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 761, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 949, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 867, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 884, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 894, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 921, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.419 = private constant [37 x i8] c"../drivers/media/usb/airspy/airspy.c\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.419, i32 465, i32 2 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_airspy_driver_exit, ptr @__initcall__kmod_airspy__338_1090_airspy_driver_init6, ptr @airspy_ctrl_msg._entry, ptr @airspy_ctrl_msg._entry.46, ptr @airspy_ctrl_msg._entry_ptr, ptr @airspy_ctrl_msg._entry_ptr.48, ptr @airspy_driver_exit, ptr @airspy_probe._entry, ptr @airspy_probe._entry.11, ptr @airspy_probe._entry.14, ptr @airspy_probe._entry.18, ptr @airspy_probe._entry.21, ptr @airspy_probe._entry.24, ptr @airspy_probe._entry.28, ptr @airspy_probe._entry.31, ptr @airspy_probe._entry.34, ptr @airspy_probe._entry.37, ptr @airspy_probe._entry_ptr, ptr @airspy_probe._entry_ptr.13, ptr @airspy_probe._entry_ptr.17, ptr @airspy_probe._entry_ptr.20, ptr @airspy_probe._entry_ptr.23, ptr @airspy_probe._entry_ptr.26, ptr @airspy_probe._entry_ptr.30, ptr @airspy_probe._entry_ptr.33, ptr @airspy_probe._entry_ptr.36, ptr @airspy_probe._entry_ptr.40, ptr @airspy_submit_urbs._entry, ptr @airspy_submit_urbs._entry_ptr, ptr @airspy_urb_complete._entry, ptr @airspy_urb_complete._entry.66, ptr @airspy_urb_complete._entry_ptr, ptr @airspy_urb_complete._entry_ptr.68, ptr @airspy_driver, ptr @.str, ptr @airspy_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @airspy_probe.__key, ptr @.str.6, ptr @airspy_probe.__key.7, ptr @.str.8, ptr @airspy_probe.__key.9, ptr @.str.10, ptr @bands, ptr @bands_rf, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @airspy_vb2_ops, ptr @.str.22, ptr @airspy_template, ptr @.str.25, ptr @airspy_probe._key, ptr @.str.27, ptr @airspy_ctrl_ops, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @airspy_urb_complete._rs, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @airspy_urb_complete._rs.63, ptr @.str.64, ptr @airspy_urb_complete._rs.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @airspy_fops, ptr @airspy_ioctl_ops, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands_rf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_ctrl_msg._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_urb_complete._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_urb_complete._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_urb_complete._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_urb_complete._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_submit_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airspy_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @airspy_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @airspy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @airspy_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #11
  %0 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %u8tmp, align 1, !annotation !230
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #11
  %1 = call ptr @memset(ptr %buf, i32 255, i32 128)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2704) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %v4l2_lock = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %v4l2_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @airspy_probe.__key) #11
  %vb_queue_lock = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @airspy_probe.__key.7) #11
  %queued_bufs_lock = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %queued_bufs_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @airspy_probe.__key.9, i16 noundef signext 3) #11
  %queued_bufs = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queued_bufs, ptr %queued_bufs, align 8
  %prev.i = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queued_bufs, ptr %prev.i, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev12 = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev11, ptr %dev12, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %udev = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %udev, align 8
  %f_adc = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 20
  %9 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20000000, ptr %f_adc, align 4
  %f_rf = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 21
  %10 = ptrtoint ptr %f_rf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24000000, ptr %f_rf, align 8
  %pixelformat = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 22
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 842093906, ptr %pixelformat, align 4
  %buffersize = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 23
  %12 = ptrtoint ptr %buffersize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65536, ptr %buffersize, align 8
  %call14 = call fastcc i32 @airspy_ctrl_msg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.end18, label %do.body1.do.end22_crit_edge

do.body1.do.end22_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

if.end18:                                         ; preds = %do.body1
  %call17 = call fastcc i32 @airspy_ctrl_msg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.end24, label %if.end18.do.end22_crit_edge

if.end18.do.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

do.end22:                                         ; preds = %if.end18.do.end22_crit_edge, %do.body1.do.end22_crit_edge
  %ret.0202 = phi i32 [ %call17, %if.end18.do.end22_crit_edge ], [ %call14, %do.body1.do.end22_crit_edge ]
  %13 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12) #15
  br label %err_free_mem

if.end24:                                         ; preds = %if.end18
  %arrayidx = getelementptr inbounds [128 x i8], ptr %buf, i32 0, i32 127
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  %18 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %u8tmp, align 1
  %conv = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.15, i32 noundef %conv) #15
  %20 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.19, ptr noundef nonnull %buf) #15
  %vb_queue = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 11, ptr %vb_queue, align 8
  %io_modes = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5, i32 10
  %24 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5, i32 12
  %25 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 744, ptr %buf_struct_size, align 8
  %ops = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5, i32 7
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @airspy_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5, i32 8
  %27 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5, i32 13
  %28 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8192, ptr %timestamp_flags, align 4
  %call41 = call i32 @vb2_queue_init(ptr noundef %vb_queue) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.22) #15
  br label %err_free_mem

if.end48:                                         ; preds = %if.end24
  %vdev = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %vdev, ptr @airspy_template, i32 1352)
  %queue = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 10
  %32 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vb_queue, ptr %queue, align 8
  %lock = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 5, i32 5
  %33 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vb_queue_lock, ptr %lock, align 4
  %driver_data.i.i = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %v4l2_dev = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 4
  %release = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 4, i32 9
  %35 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @airspy_video_release, ptr %release, align 4
  %call57 = call i32 @v4l2_device_register(ptr noundef %dev11, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.25, i32 noundef %call57) #15
  br label %err_free_mem

if.end64:                                         ; preds = %if.end48
  %hdl = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 24
  %call65 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 5, ptr noundef nonnull @airspy_probe._key, ptr noundef nonnull @.str.27) #11
  %call67 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @airspy_ctrl_ops, i32 noundef 10619177, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %lna_gain_auto = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 25
  %38 = ptrtoint ptr %lna_gain_auto to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call67, ptr %lna_gain_auto, align 4
  %call69 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @airspy_ctrl_ops, i32 noundef 10619178, i64 noundef 0, i64 noundef 14, i64 noundef 1, i64 noundef 8) #11
  %lna_gain = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 26
  %39 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call69, ptr %lna_gain, align 8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %lna_gain_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %call72 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @airspy_ctrl_ops, i32 noundef 10619187, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %mixer_gain_auto = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 27
  %40 = ptrtoint ptr %mixer_gain_auto to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call72, ptr %mixer_gain_auto, align 4
  %call74 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @airspy_ctrl_ops, i32 noundef 10619188, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 8) #11
  %mixer_gain = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 28
  %41 = ptrtoint ptr %mixer_gain to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call74, ptr %mixer_gain, align 8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %mixer_gain_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %call77 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @airspy_ctrl_ops, i32 noundef 10619198, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 0) #11
  %if_gain = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 29
  %42 = ptrtoint ptr %if_gain to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call77, ptr %if_gain, align 4
  %error = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 24, i32 9
  %43 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool79.not = icmp eq i32 %44, 0
  br i1 %tobool79.not, label %if.end87, label %if.then80

if.then80:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.29) #15
  br label %err_free_controls

if.end87:                                         ; preds = %if.end64
  %call89 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #11
  %ctrl_handler = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 4, i32 6
  %47 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %v4l2_dev94 = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %v4l2_dev94 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %v4l2_dev, ptr %v4l2_dev94, align 4
  %lock97 = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 26
  %49 = ptrtoint ptr %lock97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %v4l2_lock, ptr %lock97, align 8
  %device_caps = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 85000192, ptr %device_caps, align 8
  %fops.i = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fops.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 4, i32 noundef -1, i32 noundef 1, ptr noundef %54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool101.not = icmp eq i32 %call.i, 0
  %55 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev12, align 4
  br i1 %tobool101.not, label %do.end110, label %do.end105

do.end105:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.32, i32 noundef %call.i) #15
  br label %err_free_controls

do.end110:                                        ; preds = %if.end87
  %init_name.i.i = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 3
  %57 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end110.video_device_node_name.exit_crit_edge

do.end110.video_device_node_name.exit_crit_edge:  ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.airspy, ptr %call7.i.i, i32 0, i32 3, i32 5
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end110.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %60, %if.end.i.i ], [ %58, %do.end110.video_device_node_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i) #15
  %61 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %62, ptr noundef nonnull @.str.38) #15
  br label %cleanup

err_free_controls:                                ; preds = %do.end105, %if.then80
  %ret.1 = phi i32 [ %44, %if.then80 ], [ %call.i, %do.end105 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #11
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_controls, %do.end62, %do.end46, %do.end22
  %ret.2 = phi i32 [ %ret.0202, %do.end22 ], [ %call41, %do.end46 ], [ %call57, %do.end62 ], [ %ret.1, %err_free_controls ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %video_device_node_name.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.2, %err_free_mem ], [ 0, %video_device_node_name.exit ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @airspy_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_disconnect.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_disconnect, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %1, i32 -1364
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_disconnect.__UNIQUE_ID_ddebug314, ptr noundef %3, ptr noundef nonnull @.str.53) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vb_queue_lock = getelementptr i8, ptr %1, i32 792
  tail call void @mutex_lock_nested(ptr noundef %vb_queue_lock, i32 noundef 0) #11
  %v4l2_lock = getelementptr i8, ptr %1, i32 700
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #11
  %udev = getelementptr i8, ptr %1, i32 -1360
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %udev, align 8
  tail call void @v4l2_device_disconnect(ptr noundef %1) #11
  %vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #11
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #11
  tail call void @mutex_unlock(ptr noundef %vb_queue_lock) #11
  %call8 = tail call i32 @v4l2_device_put(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @airspy_ctrl_msg(ptr noundef %s, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef %data, i16 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %request to i32
  %0 = zext i8 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %request, label %do.end [
    i8 1, label %entry._crit_edge
    i8 13, label %entry._crit_edge129
    i8 9, label %entry.if.end_crit_edge
    i8 10, label %entry.if.end_crit_edge130
    i8 11, label %entry.if.end_crit_edge131
    i8 14, label %entry.if.end_crit_edge132
    i8 15, label %entry.if.end_crit_edge133
    i8 16, label %entry.if.end_crit_edge134
    i8 17, label %entry.if.end_crit_edge135
    i8 18, label %entry.if.end_crit_edge136
  ]

entry.if.end_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry._crit_edge129:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %7

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge130, %entry.if.end_crit_edge131, %entry.if.end_crit_edge132, %entry.if.end_crit_edge133, %entry.if.end_crit_edge134, %entry.if.end_crit_edge135, %entry.if.end_crit_edge136
  %udev2106 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 2
  %3 = ptrtoint ptr %udev2106 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev2106, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i91107 = shl i32 %6, 8
  %or5108 = or i32 %shl.i91107, -2147483520
  %buf10 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 19
  %call12 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or5108, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %buf10, i16 noundef zeroext %size, i32 noundef 1000) #11
  br label %13

7:                                                ; preds = %entry._crit_edge, %entry._crit_edge129
  %udev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 2
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %buf = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 19
  %conv8 = zext i16 %size to i32
  %12 = call ptr @memcpy(ptr %buf, ptr %data, i32 %conv8)
  %call12118 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %buf, i16 noundef zeroext %size, i32 noundef 1000) #11
  br label %13

13:                                               ; preds = %7, %if.end
  %call12126 = phi i32 [ %call12118, %7 ], [ %call12, %if.end ]
  %buf10123 = phi ptr [ %buf, %7 ], [ %buf10, %if.end ]
  %conv7101121 = phi i32 [ 64, %7 ], [ 192, %if.end ]
  %tobool.not103119 = phi i1 [ true, %7 ], [ false, %if.end ]
  %14 = phi ptr [ @.str.44, %7 ], [ @.str.43, %if.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_ctrl_msg.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_ctrl_msg, %if.then23)) #11
          to label %do.end43 [label %if.then23], !srcloc !231

if.then23:                                        ; preds = %13
  call void @__sanitizer_cov_trace_pc() #13
  %dev24 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev24, align 4
  %17 = and i16 %value, 255
  %and28 = zext i16 %17 to i32
  %conv30 = zext i16 %index to i32
  %and31 = and i32 %conv30, 255
  %18 = lshr i32 %conv30, 8
  %conv34 = zext i16 %size to i32
  %and35 = and i32 %conv34, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_ctrl_msg.__UNIQUE_ID_ddebug303, ptr noundef %16, ptr noundef nonnull @.str.45, i32 noundef %conv7101121, i32 noundef %conv, i32 noundef %and28, i32 noundef 0, i32 noundef %and31, i32 noundef %18, i32 noundef %and35, i32 noundef 0, ptr noundef nonnull %14, i32 noundef %conv34, ptr noundef %buf10123) #11
  br label %do.end43

do.end43:                                         ; preds = %if.then23, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12126)
  %cmp = icmp slt i32 %call12126, 0
  br i1 %cmp, label %do.end48, label %if.end51

do.end48:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #13
  %dev49 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %19 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.47, i32 noundef %call12126, i32 noundef %conv) #15
  br label %cleanup

if.end51:                                         ; preds = %do.end43
  br i1 %tobool.not103119, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %conv58 = zext i16 %size to i32
  %21 = call ptr @memcpy(ptr %data, ptr %buf10123, i32 %conv58)
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %do.end48, %do.end
  %retval.0 = phi i32 [ 0, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ], [ -22, %do.end ], [ %call12126, %do.end48 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @airspy_video_release(ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -1368
  %hdl = getelementptr i8, ptr %v, i32 1116
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #11
  tail call void @v4l2_device_unregister(ptr noundef %v) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_queue_setup.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_queue_setup, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbuffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_queue_setup.__UNIQUE_ID_ddebug315, ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %5) #11
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
  br i1 %cmp, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 8, %7
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %buffersize = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffersize, align 8
  %add7 = add i32 %13, 4095
  %and = and i32 %add7, -4096
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_queue_setup.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_queue_setup, %if.then20)) #11
          to label %do.end25 [label %if.then20], !srcloc !231

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev21 = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev21, align 4
  %17 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbuffers, align 4
  %19 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_queue_setup.__UNIQUE_ID_ddebug316, ptr noundef %16, ptr noundef nonnull @.str.51, i32 noundef %18, i32 noundef %20) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %if.end6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_start_streaming.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_start_streaming, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_start_streaming.__UNIQUE_ID_ddebug317, ptr noundef %3, ptr noundef nonnull @.str.53) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %v4l2_lock = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #11
  %sequence = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sequence, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %1) #11
  %call7 = tail call fastcc i32 @airspy_alloc_stream_bufs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_clear_bit_crit_edge

if.end6.err_clear_bit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clear_bit

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc i32 @airspy_alloc_urbs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_free_stream_bufs_crit_edge

if.end10.err_free_stream_bufs_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_stream_bufs

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc i32 @airspy_submit_urbs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_free_urbs_crit_edge

if.end14.err_free_urbs_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_urbs

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @airspy_ctrl_msg(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.exit_mutex_unlock_crit_edge, label %err_kill_urbs

if.end18.exit_mutex_unlock_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_mutex_unlock

err_kill_urbs:                                    ; preds = %if.end18
  %urbs_submitted.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %urbs_submitted.i, align 8
  %i.02.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %err_kill_urbs.airspy_kill_urbs.exit_crit_edge

err_kill_urbs.airspy_kill_urbs.exit_crit_edge:    ; preds = %err_kill_urbs
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %err_kill_urbs
  %dev.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_kill_urbs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_start_streaming, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !231

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_kill_urbs.__UNIQUE_ID_ddebug305, ptr noundef %10, ptr noundef nonnull @.str.76, i32 noundef %i.04.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.airspy, ptr %1, i32 0, i32 12, i32 %i.04.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #11
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.airspy_kill_urbs.exit_crit_edge

do.end.i.airspy_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

airspy_kill_urbs.exit:                            ; preds = %do.end.i.airspy_kill_urbs.exit_crit_edge, %err_kill_urbs.airspy_kill_urbs.exit_crit_edge
  %13 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %urbs_submitted.i, align 8
  br label %err_free_urbs

err_free_urbs:                                    ; preds = %airspy_kill_urbs.exit, %if.end14.err_free_urbs_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.err_free_urbs_crit_edge ], [ %call19, %airspy_kill_urbs.exit ]
  tail call fastcc void @airspy_free_urbs(ptr noundef %1)
  br label %err_free_stream_bufs

err_free_stream_bufs:                             ; preds = %err_free_urbs, %if.end10.err_free_stream_bufs_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end10.err_free_stream_bufs_crit_edge ], [ %ret.0, %err_free_urbs ]
  tail call fastcc void @airspy_free_stream_bufs(ptr noundef %1)
  br label %err_clear_bit

err_clear_bit:                                    ; preds = %err_free_stream_bufs, %if.end6.err_clear_bit_crit_edge
  %ret.2 = phi i32 [ %call7, %if.end6.err_clear_bit_crit_edge ], [ %ret.1, %err_free_stream_bufs ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %1) #11
  %queued_bufs = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queued_bufs, align 8
  %cmp.not70 = icmp eq ptr %15, %queued_bufs
  br i1 %cmp.not70, label %err_clear_bit.exit_mutex_unlock_crit_edge, label %err_clear_bit.for.body_crit_edge

err_clear_bit.for.body_crit_edge:                 ; preds = %err_clear_bit
  br label %for.body

err_clear_bit.exit_mutex_unlock_crit_edge:        ; preds = %err_clear_bit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_mutex_unlock

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %err_clear_bit.for.body_crit_edge
  %.pn.in71 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %15, %err_clear_bit.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in71, i32 -736
  %16 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in71, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in71) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in71, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in71 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in71, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in71, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #11
  %cmp.not = icmp eq ptr %.pn, %queued_bufs
  br i1 %cmp.not, label %list_del.exit.exit_mutex_unlock_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.exit_mutex_unlock_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_mutex_unlock

exit_mutex_unlock:                                ; preds = %list_del.exit.exit_mutex_unlock_crit_edge, %err_clear_bit.exit_mutex_unlock_crit_edge, %if.end18.exit_mutex_unlock_crit_edge
  %ret.3 = phi i32 [ 0, %if.end18.exit_mutex_unlock_crit_edge ], [ %ret.2, %err_clear_bit.exit_mutex_unlock_crit_edge ], [ %ret.2, %list_del.exit.exit_mutex_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %exit_mutex_unlock, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %exit_mutex_unlock ], [ -19, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @airspy_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_stop_streaming.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_stop_streaming, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_stop_streaming.__UNIQUE_ID_ddebug318, ptr noundef %3, ptr noundef nonnull @.str.53) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %v4l2_lock = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #11
  %call4 = tail call fastcc i32 @airspy_ctrl_msg(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0)
  %urbs_submitted.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %urbs_submitted.i, align 8
  %i.02.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %do.end.airspy_kill_urbs.exit_crit_edge

do.end.airspy_kill_urbs.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %do.end
  %dev.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_kill_urbs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_stop_streaming, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !231

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_kill_urbs.__UNIQUE_ID_ddebug305, ptr noundef %7, ptr noundef nonnull @.str.76, i32 noundef %i.04.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.airspy, ptr %1, i32 0, i32 12, i32 %i.04.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #11
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.airspy_kill_urbs.exit_crit_edge

do.end.i.airspy_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

airspy_kill_urbs.exit:                            ; preds = %do.end.i.airspy_kill_urbs.exit_crit_edge, %do.end.airspy_kill_urbs.exit_crit_edge
  %10 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %urbs_submitted.i, align 8
  tail call fastcc void @airspy_free_urbs(ptr noundef %1)
  tail call fastcc void @airspy_free_stream_bufs(ptr noundef %1)
  tail call fastcc void @airspy_cleanup_queued_bufs(ptr noundef %1)
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @airspy_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.airspy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %do.body8, !prof !232

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #11
  br label %cleanup

do.body8:                                         ; preds = %entry
  %queued_bufs_lock = getelementptr inbounds %struct.airspy, ptr %3, i32 0, i32 7
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #11
  %list = getelementptr inbounds %struct.airspy_frame_buf, ptr %vb, i32 0, i32 1
  %queued_bufs = getelementptr inbounds %struct.airspy, ptr %3, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.airspy, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %queued_bufs) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body8.list_add_tail.exit_crit_edge

do.body8.list_add_tail.exit_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queued_bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.airspy_frame_buf, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call11) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @airspy_alloc_stream_bufs(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_num = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 13
  %0 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buf_num, align 4
  %buf_size = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 14
  %1 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65536, ptr %buf_size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_alloc_stream_bufs, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef 393216) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf_num, align 4
  %dev46 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end55.for.body_crit_edge, %do.end
  %storemerge88 = phi i32 [ 0, %do.end ], [ %inc, %do.end55.for.body_crit_edge ]
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 8
  %arrayidx = getelementptr %struct.airspy, ptr %s, i32 0, i32 16, i32 %storemerge88
  %call6 = tail call ptr @usb_alloc_coherent(ptr noundef %6, i32 noundef 65536, i32 noundef 2592, ptr noundef %arrayidx) #11
  %7 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_num, align 4
  %arrayidx8 = getelementptr %struct.airspy, ptr %s, i32 0, i32 15, i32 %8
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %arrayidx8, align 4
  %10 = load i32, ptr %buf_num, align 4
  %arrayidx11 = getelementptr %struct.airspy, ptr %s, i32 0, i32 15, i32 %10
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.body14, label %do.body33

do.body14:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_alloc_stream_bufs, %if.then26)) #11
          to label %do.end30 [label %if.then26], !srcloc !231

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev46, align 4
  %15 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug309, ptr noundef %14, ptr noundef nonnull @.str.56, i32 noundef %16) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  tail call fastcc void @airspy_free_stream_bufs(ptr noundef %s)
  br label %return

do.body33:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_alloc_stream_bufs, %if.then45)) #11
          to label %do.end55 [label %if.then45], !srcloc !231

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev46, align 4
  %19 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_num, align 4
  %arrayidx50 = getelementptr %struct.airspy, ptr %s, i32 0, i32 15, i32 %20
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx50, align 4
  %arrayidx53 = getelementptr %struct.airspy, ptr %s, i32 0, i32 16, i32 %20
  %23 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx53, align 4
  %conv = zext i32 %24 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug310, ptr noundef %18, ptr noundef nonnull @.str.57, i32 noundef %20, ptr noundef %22, i64 noundef %conv) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then45, %do.body33
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s) #11
  %25 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_num, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %buf_num, align 4
  %cmp = icmp slt i32 %inc, 6
  br i1 %cmp, label %do.end55.for.body_crit_edge, label %do.end55.return_crit_edge

do.end55.return_crit_edge:                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end55.for.body_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

return:                                           ; preds = %do.end55.return_crit_edge, %do.end30
  %retval.0 = phi i32 [ -12, %do.end30 ], [ 0, %do.end55.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @airspy_alloc_urbs(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %udev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 2
  %urbs_initialized27 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %inc30, %if.end15.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_alloc_urbs.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_alloc_urbs, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_alloc_urbs.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %i.062) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %arrayidx = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 %i.062
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %for.cond8.preheader, label %if.end15

for.cond8.preheader:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.062)
  %cmp963.not = icmp eq i32 %i.062, 0
  br i1 %cmp963.not, label %for.cond8.preheader.for.end_crit_edge, label %for.body10

for.cond8.preheader.for.end_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body10:                                       ; preds = %for.cond8.preheader
  %arrayidx12 = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 0
  %3 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx12, align 4
  tail call void @usb_free_urb(ptr noundef %4) #11
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.062)
  %exitcond66.not = icmp eq i32 %i.062, 1
  br i1 %exitcond66.not, label %for.body10.for.end_crit_edge, label %for.body10.1

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body10.1:                                     ; preds = %for.body10
  %arrayidx12.1 = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12.1, align 4
  tail call void @usb_free_urb(ptr noundef %7) #11
  %8 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx12.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.062)
  %exitcond66.not.1 = icmp eq i32 %i.062, 2
  br i1 %exitcond66.not.1, label %for.body10.1.for.end_crit_edge, label %for.body10.2

for.body10.1.for.end_crit_edge:                   ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body10.2:                                     ; preds = %for.body10.1
  %arrayidx12.2 = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12.2, align 4
  tail call void @usb_free_urb(ptr noundef %10) #11
  %11 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx12.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.062)
  %exitcond66.not.2 = icmp eq i32 %i.062, 3
  br i1 %exitcond66.not.2, label %for.body10.2.for.end_crit_edge, label %for.body10.3

for.body10.2.for.end_crit_edge:                   ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body10.3:                                     ; preds = %for.body10.2
  %arrayidx12.3 = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 3
  %12 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12.3, align 4
  tail call void @usb_free_urb(ptr noundef %13) #11
  %14 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx12.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.062)
  %exitcond66.not.3 = icmp eq i32 %i.062, 4
  br i1 %exitcond66.not.3, label %for.body10.3.for.end_crit_edge, label %for.body10.4

for.body10.3.for.end_crit_edge:                   ; preds = %for.body10.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body10.4:                                     ; preds = %for.body10.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12.4 = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 4
  %15 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12.4, align 4
  tail call void @usb_free_urb(ptr noundef %16) #11
  %17 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx12.4, align 4
  br label %for.end

for.end:                                          ; preds = %for.body10.4, %for.body10.3.for.end_crit_edge, %for.body10.2.for.end_crit_edge, %for.body10.1.for.end_crit_edge, %for.body10.for.end_crit_edge, %for.cond8.preheader.for.end_crit_edge
  %18 = ptrtoint ptr %urbs_initialized27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %urbs_initialized27, align 4
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i = shl i32 %22, 8
  %or20 = or i32 %shl.i, -1069514624
  %arrayidx21 = getelementptr %struct.airspy, ptr %s, i32 0, i32 15, i32 %i.062
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx21, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 8
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %20, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 10
  %26 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or20, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65536, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @airspy_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %s, ptr %context4.i, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %transfer_flags, align 4
  %arrayidx24 = getelementptr %struct.airspy, ptr %s, i32 0, i32 16, i32 %i.062
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx24, align 4
  %36 = load ptr, ptr %arrayidx, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %transfer_dma, align 4
  %38 = ptrtoint ptr %urbs_initialized27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %urbs_initialized27, align 4
  %inc28 = add i32 %39, 1
  store i32 %inc28, ptr %urbs_initialized27, align 4
  %inc30 = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc30, 6
  br i1 %exitcond.not, label %if.end15.cleanup_crit_edge, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ -12, %for.end ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @airspy_submit_urbs(ptr nocapture noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_initialized = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 17
  %0 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26 = icmp sgt i32 %1, 0
  br i1 %cmp26, label %do.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %urbs_submitted = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 18
  br label %do.body

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %do.body.lr.ph
  %i.027 = phi i32 [ 0, %do.body.lr.ph ], [ %inc12, %if.end11.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_submit_urbs.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_submit_urbs, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_submit_urbs.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.73, i32 noundef %i.027) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %arrayidx = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.74, i32 noundef %i.027) #15
  %8 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urbs_submitted, align 8
  %i.02.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.end8.do.body.i_crit_edge, label %do.end8.airspy_kill_urbs.exit_crit_edge

do.end8.airspy_kill_urbs.exit_crit_edge:          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.end8.do.body.i_crit_edge:                      ; preds = %do.end8
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.end8.do.body.i_crit_edge
  %i.04.i = phi i32 [ %i.0.i, %do.end.i.do.body.i_crit_edge ], [ %i.02.i, %do.end8.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_kill_urbs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_submit_urbs, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !231

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_kill_urbs.__UNIQUE_ID_ddebug305, ptr noundef %11, ptr noundef nonnull @.str.76, i32 noundef %i.04.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 %i.04.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #11
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.airspy_kill_urbs.exit_crit_edge

do.end.i.airspy_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

airspy_kill_urbs.exit:                            ; preds = %do.end.i.airspy_kill_urbs.exit_crit_edge, %do.end8.airspy_kill_urbs.exit_crit_edge
  %14 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %urbs_submitted, align 8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %15 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %urbs_submitted, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %urbs_submitted, align 8
  %inc12 = add nuw nsw i32 %i.027, 1
  %17 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %urbs_initialized, align 4
  %cmp = icmp slt i32 %inc12, %18
  br i1 %cmp, label %if.end11.do.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %airspy_kill_urbs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %airspy_kill_urbs.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @airspy_free_urbs(ptr nocapture noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_submitted.i = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 18
  %0 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_submitted.i, align 8
  %i.02.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %entry.airspy_kill_urbs.exit_crit_edge

entry.airspy_kill_urbs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %dev.i = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_kill_urbs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_free_urbs, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !231

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_kill_urbs.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.76, i32 noundef %i.04.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 %i.04.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.airspy_kill_urbs.exit_crit_edge

do.end.i.airspy_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

airspy_kill_urbs.exit:                            ; preds = %do.end.i.airspy_kill_urbs.exit_crit_edge, %entry.airspy_kill_urbs.exit_crit_edge
  %6 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %urbs_submitted.i, align 8
  %urbs_initialized = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 17
  %7 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %urbs_initialized, align 4
  %i.02 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02)
  %cmp3 = icmp sgt i32 %i.02, -1
  br i1 %cmp3, label %for.body.lr.ph, label %airspy_kill_urbs.exit.for.end_crit_edge

airspy_kill_urbs.exit.for.end_crit_edge:          ; preds = %airspy_kill_urbs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %airspy_kill_urbs.exit
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ %i.02, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.airspy, ptr %s, i32 0, i32 12, i32 %i.04
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_free_urbs.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_free_urbs, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !231

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_free_urbs.__UNIQUE_ID_ddebug311, ptr noundef %12, ptr noundef nonnull @.str.78, i32 noundef %i.04) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %14) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.04, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %airspy_kill_urbs.exit.for.end_crit_edge
  %15 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %urbs_initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @airspy_free_stream_bufs(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %s, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %while.cond.preheader

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

while.cond.preheader:                             ; preds = %entry
  %buf_num = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 13
  %3 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not2 = icmp eq i32 %4, 0
  br i1 %tobool1.not2, label %while.cond.preheader.if.end12_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end12_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %udev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 2
  %buf_size = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %22, %do.end.while.body_crit_edge ]
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %buf_num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_free_stream_bufs.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_free_stream_bufs, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !231

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_free_stream_bufs.__UNIQUE_ID_ddebug307, ptr noundef %8, ptr noundef nonnull @.str.80, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %while.body
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 8
  %13 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_size, align 8
  %15 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_num, align 4
  %arrayidx = getelementptr %struct.airspy, ptr %s, i32 0, i32 15, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr %struct.airspy, ptr %s, i32 0, i32 16, i32 %16
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 4
  tail call void @usb_free_coherent(ptr noundef %12, i32 noundef %14, ptr noundef %18, i32 noundef %20) #11
  %21 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_num, align 4
  %tobool1.not = icmp eq i32 %22, 0
  br i1 %tobool1.not, label %do.end.if.end12_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %do.end.if.end12_crit_edge, %while.cond.preheader.if.end12_crit_edge, %entry.if.end12_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %s) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @airspy_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_urb_complete.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_urb_complete, %land.lhs.true)) #11
          to label %do.end [label %land.lhs.true], !srcloc !231

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @airspy_urb_complete._rs, ptr noundef nonnull @.str.61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_urb_complete.descriptor, ptr noundef %3, ptr noundef nonnull @.str.62, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %status5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %12 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status5, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %13, label %do.body7 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 -110, label %do.end.sw.epilog_crit_edge97
    i32 -104, label %do.end.cleanup65_crit_edge
    i32 -2, label %do.end.cleanup65_crit_edge98
    i32 -108, label %do.end.cleanup65_crit_edge99
  ]

do.end.cleanup65_crit_edge99:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup65

do.end.cleanup65_crit_edge98:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup65

do.end.cleanup65_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup65

do.end.sw.epilog_crit_edge97:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body7:                                         ; preds = %do.end
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @airspy_urb_complete._rs.63, ptr noundef nonnull @.str.61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body7.sw.epilog_crit_edge, label %do.end13

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %dev14 = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev14, align 4
  %17 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.64, i32 noundef %18) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %do.body7.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge97
  %actual_length19 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %sw.epilog.skip_crit_edge, label %if.then26, !prof !232

sw.epilog.skip_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

if.then26:                                        ; preds = %sw.epilog
  %queued_bufs_lock.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #11
  %queued_bufs.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %queued_bufs.i
  br i1 %cmp.i.not.i, label %airspy_get_next_fill_buf.exit.thread, label %if.end.i

airspy_get_next_fill_buf.exit.thread:             ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #11
  br label %if.then35

if.end.i:                                         ; preds = %if.then26
  %add.ptr.i = getelementptr i8, ptr %22, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.airspy_get_next_fill_buf.exit_crit_edge

if.end.i.airspy_get_next_fill_buf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_get_next_fill_buf.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %airspy_get_next_fill_buf.exit

airspy_get_next_fill_buf.exit:                    ; preds = %if.end.i.i.i, %if.end.i.airspy_get_next_fill_buf.exit_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #11
  %cmp28 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp28, label %airspy_get_next_fill_buf.exit.if.then35_crit_edge, label %if.end48, !prof !232

airspy_get_next_fill_buf.exit.if.then35_crit_edge: ; preds = %airspy_get_next_fill_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then35:                                        ; preds = %airspy_get_next_fill_buf.exit.if.then35_crit_edge, %airspy_get_next_fill_buf.exit.thread
  %vb_full = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vb_full, align 8
  %inc = add i32 %32, 1
  store i32 %inc, ptr %vb_full, align 8
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @airspy_urb_complete._rs.65, ptr noundef nonnull @.str.61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.skip_crit_edge, label %do.end42

if.then35.skip_crit_edge:                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

do.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %dev43 = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev43, align 4
  %35 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vb_full, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %34, ptr noundef nonnull @.str.67, i32 noundef %36) #15
  br label %skip

if.end48:                                         ; preds = %airspy_get_next_fill_buf.exit
  %call49 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #11
  %37 = ptrtoint ptr %actual_length19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual_length19, align 4
  %pixelformat.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 22
  %39 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093906, i32 %40)
  %cmp.i = icmp eq i32 %40, 842093906
  br i1 %cmp.i, label %if.then.i, label %if.end48.if.end.i91_crit_edge

if.end48.if.end.i91_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i91

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %41 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %transfer_buffer, align 4
  %43 = call ptr @memcpy(ptr %call49, ptr %42, i32 %38)
  br label %if.end.i91

if.end.i91:                                       ; preds = %if.then.i, %if.end48.if.end.i91_crit_edge
  %dst_len.0.i = phi i32 [ %38, %if.then.i ], [ 0, %if.end48.if.end.i91_crit_edge ]
  %jiffies_next.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 30
  %44 = ptrtoint ptr %jiffies_next.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %jiffies_next.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i91.airspy_convert_stream.exit_crit_edge, !prof !232

if.end.i91.airspy_convert_stream.exit_crit_edge:  ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_convert_stream.exit

if.then3.i:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub5.i = sub i32 1000, %45
  %add.i = add i32 %sub5.i, %47
  %call6.i = tail call i32 @jiffies_to_msecs(i32 noundef %add.i) #11
  %sample.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 31
  %48 = ptrtoint ptr %sample.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sample.i, align 4
  %sample_measured.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 32
  %50 = ptrtoint ptr %sample_measured.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sample_measured.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add9.i = add i32 %52, 1000
  %53 = ptrtoint ptr %jiffies_next.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add9.i, ptr %jiffies_next.i, align 8
  store i32 %49, ptr %sample_measured.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_convert_stream.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_urb_complete, %if.then21.i)) #11
          to label %airspy_convert_stream.exit [label %if.then21.i], !srcloc !231

if.then21.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub7.i = sub i32 %49, %51
  %dev.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %mul.i = mul i32 %sub7.i, 1000
  %div.i = udiv i32 %mul.i, %call6.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_convert_stream.__UNIQUE_ID_ddebug304, ptr noundef %55, ptr noundef nonnull @.str.70, i32 noundef %38, i32 noundef %sub7.i, i32 noundef %call6.i, i32 noundef %div.i) #11
  br label %airspy_convert_stream.exit

airspy_convert_stream.exit:                       ; preds = %if.then21.i, %if.then3.i, %if.end.i91.airspy_convert_stream.exit_crit_edge
  %div2441.i = lshr i32 %38, 1
  %sample25.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 31
  %56 = ptrtoint ptr %sample25.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sample25.i, align 4
  %add26.i = add i32 %57, %div2441.i
  store i32 %add26.i, ptr %sample25.i, align 4
  %num_planes.i = getelementptr i8, ptr %22, i32 -720
  %58 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i, label %airspy_convert_stream.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i93

airspy_convert_stream.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %airspy_convert_stream.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

if.then.i93:                                      ; preds = %airspy_convert_stream.exit
  %length.i = getelementptr i8, ptr %22, i32 -648
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %dst_len.0.i)
  %cmp1.i92 = icmp ult i32 %61, %dst_len.0.i
  br i1 %cmp1.i92, label %land.rhs.i, label %if.then.i93.if.end42.i_crit_edge

if.then.i93.if.end42.i_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i93
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !233

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %62 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i93.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %63, %if.then38.i ], [ %dst_len.0.i, %if.then.i93.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %22, i32 -652
  %64 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %airspy_convert_stream.exit.vb2_set_plane_payload.exit_crit_edge
  %call.i = tail call i64 @ktime_get() #11
  %timestamp = getelementptr i8, ptr %22, i32 -712
  %65 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 8
  %66 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sequence, align 4
  %inc57 = add i32 %67, 1
  store i32 %inc57, ptr %sequence, align 4
  %sequence59 = getelementptr i8, ptr %22, i32 -272
  %68 = ptrtoint ptr %sequence59 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %sequence59, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef 5) #11
  br label %skip

skip:                                             ; preds = %vb2_set_plane_payload.exit, %do.end42, %if.then35.skip_crit_edge, %sw.epilog.skip_crit_edge
  %call64 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  br label %cleanup65

cleanup65:                                        ; preds = %skip, %do.end.cleanup65_crit_edge, %do.end.cleanup65_crit_edge98, %do.end.cleanup65_crit_edge99
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @airspy_cleanup_queued_bufs(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_cleanup_queued_bufs.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_cleanup_queued_bufs, %if.then)) #11
          to label %do.body4 [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_cleanup_queued_bufs.__UNIQUE_ID_ddebug313, ptr noundef %1, ptr noundef nonnull @.str.53) #11
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %queued_bufs_lock = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #11
  %queued_bufs = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not25 = icmp eq ptr %3, %queued_bufs
  br i1 %cmp.i.not25, label %do.body4.while.end_crit_edge, label %do.body4.while.body_crit_edge

do.body4.while.body_crit_edge:                    ; preds = %do.body4
  br label %while.body

do.body4.while.end_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body4.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %3, %do.body4.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #11
  %13 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not = icmp eq ptr %14, %queued_bufs
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body4.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call7) #11
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
define internal i32 @airspy_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 3, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #11
  %udev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.83, ptr noundef %7, ptr noundef %devpath.i) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @airspy_enum_fmt_sdr_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pixelformat2 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 842093906, ptr %pixelformat2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_g_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixelformat = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buffersize, align 8
  %buffersize3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %buffersize3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buffersize3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_s_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 5, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %for.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093906, i32 %5)
  %cmp3 = icmp eq i32 %5, 842093906
  %pixelformat7 = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %pixelformat7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 842093906, ptr %pixelformat7, align 4
  %buffersize9 = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %buffersize9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %buffersize9, align 8
  br i1 %cmp3, label %for.body.cleanup.sink.split_crit_edge, label %for.end

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 842093906, ptr %fmt, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %for.body.cleanup.sink.split_crit_edge
  %buffersize20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %buffersize20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65536, ptr %buffersize20, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @airspy_try_fmt_sdr_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093906, i32 %1)
  %cmp2 = icmp eq i32 %1, 842093906
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 842093906, ptr %fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %3, align 4
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
define internal i32 @airspy_g_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %1, label %entry.if.end12_crit_edge [
    i32 0, label %entry.if.end12.sink.split_crit_edge
    i32 1, label %if.then3
  ]

entry.if.end12.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then3, %entry.if.end12.sink.split_crit_edge
  %.str.85.sink = phi ptr [ @.str.85, %if.then3 ], [ @.str.84, %entry.if.end12.sink.split_crit_edge ]
  %.sink25 = phi i32 [ 5, %if.then3 ], [ 4, %entry.if.end12.sink.split_crit_edge ]
  %.sink24 = phi i32 [ 24000000, %if.then3 ], [ 20000000, %entry.if.end12.sink.split_crit_edge ]
  %.sink = phi i32 [ 1750000000, %if.then3 ], [ 20000000, %entry.if.end12.sink.split_crit_edge ]
  %name4 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name4, ptr noundef nonnull %.str.85.sink, i32 noundef 32) #11
  %type7 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %3 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink25, ptr %type7, align 4
  %capability8 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %4 = ptrtoint ptr %capability8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5120, ptr %capability8, align 4
  %rangelow9 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %5 = ptrtoint ptr %rangelow9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink24, ptr %rangelow9, align 4
  %rangehigh10 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %6 = ptrtoint ptr %rangehigh10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %rangehigh10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %entry.if.end12_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end12_crit_edge ], [ 0, %if.end12.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @airspy_s_tuner(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  %spec.select = select i1 %switch, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %3, label %entry.if.end31_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then8
  ]

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %type, align 4
  %f_adc = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_adc, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_g_frequency.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_g_frequency, %if.then4)) #11
          to label %if.end31 [label %if.then4], !srcloc !231

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_adc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_g_frequency.__UNIQUE_ID_ddebug319, ptr noundef %10, ptr noundef nonnull @.str.87, i32 noundef %12) #11
  br label %if.end31

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %type9 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %type9, align 4
  %f_rf = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %f_rf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_rf, align 8
  %frequency10 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %16 = ptrtoint ptr %frequency10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %frequency10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_g_frequency.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_g_frequency, %if.then23)) #11
          to label %if.end31 [label %if.then23], !srcloc !231

if.then23:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %dev24 = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev24, align 4
  %19 = ptrtoint ptr %f_rf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_rf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_g_frequency.__UNIQUE_ID_ddebug320, ptr noundef %18, ptr noundef nonnull @.str.88, i32 noundef %20) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.then8, %if.then4, %if.then, %entry.if.end31_crit_edge
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then23 ], [ -22, %entry.if.end31_crit_edge ], [ 0, %if.then ], [ 0, %if.then8 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #11
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %6, label %entry.if.end67_crit_edge [
    i32 0, label %cond.end6
    i32 1, label %if.then16
  ]

entry.if.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

cond.end6:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_adc = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20000000, ptr %f_adc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_s_frequency.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_s_frequency, %if.then12)) #11
          to label %if.end67 [label %if.then12], !srcloc !231

if.then12:                                        ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_adc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_s_frequency.__UNIQUE_ID_ddebug325, ptr noundef %10, ptr noundef nonnull @.str.87, i32 noundef %12) #11
  br label %if.end67

if.then16:                                        ; preds = %entry
  %frequency17 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %frequency17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency17, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 24000000)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 1750000000)
  %f_rf = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %f_rf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %f_rf, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_s_frequency.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_s_frequency, %if.then42)) #11
          to label %do.end47 [label %if.then42], !srcloc !231

if.then42:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %dev43 = getelementptr inbounds %struct.airspy, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev43, align 4
  %20 = ptrtoint ptr %f_rf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_rf, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_s_frequency.__UNIQUE_ID_ddebug330, ptr noundef %19, ptr noundef nonnull @.str.88, i32 noundef %21) #11
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %if.then16
  %22 = ptrtoint ptr %f_rf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_rf, align 8
  %conv = trunc i32 %23 to i8
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %buf, align 1
  %shr50 = lshr i32 %23, 8
  %conv52 = trunc i32 %shr50 to i8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv52, ptr %2, align 1
  %shr55 = lshr i32 %23, 16
  %conv57 = trunc i32 %shr55 to i8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv57, ptr %3, align 1
  %shr60 = lshr i32 %23, 24
  %conv62 = trunc i32 %shr60 to i8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv62, ptr %4, align 1
  %call64 = call fastcc i32 @airspy_ctrl_msg(ptr noundef %1, i8 noundef zeroext 13, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 4)
  br label %if.end67

if.end67:                                         ; preds = %do.end47, %if.then12, %cond.end6, %entry.if.end67_crit_edge
  %ret.0 = phi i32 [ %call64, %do.end47 ], [ 0, %if.then12 ], [ -22, %entry.if.end67_crit_edge ], [ 0, %cond.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #11
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @airspy_enum_freq_bands(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %band) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %1, label %entry.if.end17_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then7
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %if.else, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %band, ptr @bands, i32 64)
  br label %if.end17

if.then7:                                         ; preds = %entry
  %index8 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %6 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.not = icmp eq i32 %7, 0
  br i1 %cmp9.not, label %if.else11, label %if.then7.if.end17_crit_edge

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %8 = call ptr @memcpy(ptr %band, ptr @bands_rf, i32 64)
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.then7.if.end17_crit_edge, %if.else, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ 0, %if.else11 ], [ -22, %if.then.if.end17_crit_edge ], [ -22, %if.then7.if.end17_crit_edge ], [ -22, %entry.if.end17_crit_edge ]
  ret i32 %ret.0
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
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airspy_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %u8tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -2484
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %3, label %do.body [
    i32 10619177, label %entry.sw.bb_crit_edge
    i32 10619178, label %entry.sw.bb_crit_edge17
    i32 10619187, label %entry.sw.bb1_crit_edge
    i32 10619188, label %entry.sw.bb1_crit_edge18
    i32 10619198, label %sw.bb3
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17
  %call = tail call fastcc i32 @airspy_set_lna_gain(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge18
  %call2 = tail call fastcc i32 @airspy_set_mixer_gain(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp.i) #11
  %5 = ptrtoint ptr %u8tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %u8tmp.i, align 1, !annotation !230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_set_if_gain.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_s_ctrl, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !231

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr i8, ptr %1, i32 -2480
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %if_gain.i = getelementptr i8, ptr %1, i32 200
  %8 = ptrtoint ptr %if_gain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %if_gain.i, align 4
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur.i, align 8
  %val4.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %12 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_set_if_gain.__UNIQUE_ID_ddebug335, ptr noundef %7, ptr noundef nonnull @.str.98, i32 noundef %11, i32 noundef %13) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb3
  %if_gain5.i = getelementptr i8, ptr %1, i32 200
  %14 = ptrtoint ptr %if_gain5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %if_gain5.i, align 4
  %val6.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val6.i, align 4
  %conv.i = trunc i32 %17 to i16
  %call7.i = call fastcc i32 @airspy_ctrl_msg(ptr noundef %add.ptr, i8 noundef zeroext 16, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %u8tmp.i, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.end.i.airspy_set_if_gain.exit_crit_edge, label %do.body10.i

do.end.i.airspy_set_if_gain.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %airspy_set_if_gain.exit

do.body10.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_set_if_gain.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_s_ctrl, %if.then22.i)) #11
          to label %airspy_set_if_gain.exit [label %if.then22.i], !srcloc !231

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev23.i = getelementptr i8, ptr %1, i32 -2480
  %18 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev23.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_set_if_gain.__UNIQUE_ID_ddebug336, ptr noundef %19, ptr noundef nonnull @.str.94, i32 noundef %call7.i) #11
  br label %airspy_set_if_gain.exit

airspy_set_if_gain.exit:                          ; preds = %if.then22.i, %do.body10.i, %do.end.i.airspy_set_if_gain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp.i) #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_s_ctrl.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_s_ctrl, %if.then)) #11
          to label %sw.epilog [label %if.then], !srcloc !231

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %1, i32 -2480
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_s_ctrl.__UNIQUE_ID_ddebug337, ptr noundef %21, ptr noundef nonnull @.str.91, i32 noundef %23, ptr noundef %25) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %airspy_set_if_gain.exit, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %call7.i, %airspy_set_if_gain.exit ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @airspy_set_lna_gain(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #11
  %0 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %u8tmp, align 1, !annotation !230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_set_lna_gain.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_set_lna_gain, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %lna_gain_auto = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 25
  %3 = ptrtoint ptr %lna_gain_auto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lna_gain_auto, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur, align 8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 22
  %7 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val4, align 4
  %lna_gain = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 26
  %9 = ptrtoint ptr %lna_gain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lna_gain, align 8
  %cur5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur5, align 8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_set_lna_gain.__UNIQUE_ID_ddebug331, ptr noundef %2, ptr noundef nonnull @.str.93, i32 noundef %6, i32 noundef %8, i32 noundef %12, i32 noundef %14) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lna_gain_auto9 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 25
  %15 = ptrtoint ptr %lna_gain_auto9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lna_gain_auto9, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val10, align 4
  %conv = trunc i32 %18 to i16
  %call11 = call fastcc i32 @airspy_ctrl_msg(ptr noundef %s, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end.do.body29_crit_edge

do.end.do.body29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

if.end14:                                         ; preds = %do.end
  %19 = ptrtoint ptr %lna_gain_auto9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lna_gain_auto9, align 4
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %err, label %if.end14.if.end46_crit_edge

if.end14.if.end46_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

err:                                              ; preds = %if.end14
  %lna_gain19 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 26
  %23 = ptrtoint ptr %lna_gain19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lna_gain19, align 8
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val20, align 4
  %conv21 = trunc i32 %26 to i16
  %call22 = call fastcc i32 @airspy_ctrl_msg(ptr noundef %s, i8 noundef zeroext 14, i16 noundef zeroext 0, i16 noundef zeroext %conv21, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %err.if.end46_crit_edge, label %err.do.body29_crit_edge

err.do.body29_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

err.if.end46_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.body29:                                        ; preds = %err.do.body29_crit_edge, %do.end.do.body29_crit_edge
  %ret.070 = phi i32 [ %call22, %err.do.body29_crit_edge ], [ %call11, %do.end.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_set_lna_gain.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_set_lna_gain, %if.then41)) #11
          to label %if.end46 [label %if.then41], !srcloc !231

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %dev42 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %27 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_set_lna_gain.__UNIQUE_ID_ddebug332, ptr noundef %28, ptr noundef nonnull @.str.94, i32 noundef %ret.070) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %do.body29, %err.if.end46_crit_edge, %if.end14.if.end46_crit_edge
  %ret.066 = phi i32 [ %ret.070, %if.then41 ], [ 0, %err.if.end46_crit_edge ], [ %ret.070, %do.body29 ], [ 0, %if.end14.if.end46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #11
  ret i32 %ret.066
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @airspy_set_mixer_gain(ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #11
  %0 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %u8tmp, align 1, !annotation !230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_set_mixer_gain.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_set_mixer_gain, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !231

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %mixer_gain_auto = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 27
  %3 = ptrtoint ptr %mixer_gain_auto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mixer_gain_auto, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur, align 8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 22
  %7 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val4, align 4
  %mixer_gain = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 28
  %9 = ptrtoint ptr %mixer_gain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mixer_gain, align 8
  %cur5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur5, align 8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_set_mixer_gain.__UNIQUE_ID_ddebug333, ptr noundef %2, ptr noundef nonnull @.str.96, i32 noundef %6, i32 noundef %8, i32 noundef %12, i32 noundef %14) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mixer_gain_auto9 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 27
  %15 = ptrtoint ptr %mixer_gain_auto9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mixer_gain_auto9, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val10, align 4
  %conv = trunc i32 %18 to i16
  %call11 = call fastcc i32 @airspy_ctrl_msg(ptr noundef %s, i8 noundef zeroext 18, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end.do.body29_crit_edge

do.end.do.body29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

if.end14:                                         ; preds = %do.end
  %19 = ptrtoint ptr %mixer_gain_auto9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mixer_gain_auto9, align 4
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %err, label %if.end14.if.end46_crit_edge

if.end14.if.end46_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

err:                                              ; preds = %if.end14
  %mixer_gain19 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 28
  %23 = ptrtoint ptr %mixer_gain19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mixer_gain19, align 8
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val20, align 4
  %conv21 = trunc i32 %26 to i16
  %call22 = call fastcc i32 @airspy_ctrl_msg(ptr noundef %s, i8 noundef zeroext 15, i16 noundef zeroext 0, i16 noundef zeroext %conv21, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %err.if.end46_crit_edge, label %err.do.body29_crit_edge

err.do.body29_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29

err.if.end46_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.body29:                                        ; preds = %err.do.body29_crit_edge, %do.end.do.body29_crit_edge
  %ret.070 = phi i32 [ %call22, %err.do.body29_crit_edge ], [ %call11, %do.end.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @airspy_set_mixer_gain.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@airspy_set_mixer_gain, %if.then41)) #11
          to label %if.end46 [label %if.then41], !srcloc !231

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %dev42 = getelementptr inbounds %struct.airspy, ptr %s, i32 0, i32 1
  %27 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @airspy_set_mixer_gain.__UNIQUE_ID_ddebug334, ptr noundef %28, ptr noundef nonnull @.str.94, i32 noundef %ret.070) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %do.body29, %err.if.end46_crit_edge, %if.end14.if.end46_crit_edge
  %ret.066 = phi i32 [ %ret.070, %if.then41 ], [ 0, %err.if.end46_crit_edge ], [ %ret.070, %do.body29 ], [ 0, %if.end14.if.end46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #11
  ret i32 %ret.066
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !169, !171, !173, !175, !177, !179, !181, !182, !183, !185, !186, !188, !189, !191, !193, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !212, !213, !214, !216, !218, !219}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__initcall__kmod_airspy__338_1090_airspy_driver_init6, !1, !"__initcall__kmod_airspy__338_1090_airspy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1090, i32 1}
!2 = !{ptr @__exitcall_airspy_driver_exit, !1, !"__exitcall_airspy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author339, !4, !"__UNIQUE_ID_author339", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1092, i32 1}
!5 = !{ptr @__UNIQUE_ID_description340, !6, !"__UNIQUE_ID_description340", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1093, i32 1}
!7 = !{ptr @__UNIQUE_ID_file341, !8, !"__UNIQUE_ID_file341", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1094, i32 1}
!9 = !{ptr @__UNIQUE_ID_license342, !8, !"__UNIQUE_ID_license342", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @airspy_driver, !12, !"airspy_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1083, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/airspy/airspy.c", i32 970, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @airspy_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @airspy_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @airspy_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/airspy/airspy.c", i32 974, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @airspy_probe.__key.7, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/airspy/airspy.c", i32 975, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @airspy_probe.__key.9, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/airspy/airspy.c", i32 976, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/airspy/airspy.c", i32 991, i32 3}
!32 = !{ptr @airspy_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @airspy_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/airspy/airspy.c", i32 997, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @airspy_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @airspy_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/airspy/airspy.c", i32 998, i32 2}
!41 = !{ptr @airspy_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @airspy_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1010, i32 3}
!45 = !{ptr @airspy_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @airspy_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1024, i32 3}
!49 = !{ptr @airspy_probe._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @airspy_probe._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @airspy_probe._key, !52, !"_key", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1029, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1044, i32 3}
!56 = !{ptr @airspy_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @airspy_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1058, i32 3}
!60 = !{ptr @airspy_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @airspy_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1062, i32 2}
!64 = !{ptr @airspy_probe._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @airspy_probe._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1064, i32 2}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @airspy_probe._entry.37, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @airspy_probe._entry_ptr.40, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @bands, !72, !"bands", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/airspy/airspy.c", i32 50, i32 41}
!73 = !{ptr @bands_rf, !74, !"bands_rf", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/airspy/airspy.c", i32 61, i32 41}
!75 = distinct !{null, !76, !"formats", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/airspy/airspy.c", i32 79, i32 29}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/airspy/airspy.c", i32 185, i32 3}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @airspy_ctrl_msg._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @airspy_ctrl_msg._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/airspy/airspy.c", i32 196, i32 2}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @airspy_ctrl_msg.__UNIQUE_ID_ddebug303, !83, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/airspy/airspy.c", i32 199, i32 3}
!89 = !{ptr @airspy_ctrl_msg._entry.46, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @airspy_ctrl_msg._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @airspy_vb2_ops, !92, !"airspy_vb2_ops", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/airspy/airspy.c", i32 600, i32 29}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/airspy/airspy.c", i32 486, i32 2}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @airspy_queue_setup.__UNIQUE_ID_ddebug315, !94, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/airspy/airspy.c", i32 494, i32 2}
!99 = !{ptr @airspy_queue_setup.__UNIQUE_ID_ddebug316, !98, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/airspy/airspy.c", i32 522, i32 2}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @airspy_start_streaming.__UNIQUE_ID_ddebug317, !101, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/airspy/airspy.c", i32 369, i32 2}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug308, !105, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/airspy/airspy.c", i32 377, i32 4}
!110 = !{ptr @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug309, !109, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/airspy/airspy.c", i32 382, i32 3}
!113 = !{ptr @airspy_alloc_stream_bufs.__UNIQUE_ID_ddebug310, !112, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/airspy/airspy.c", i32 415, i32 3}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @airspy_alloc_urbs.__UNIQUE_ID_ddebug312, !115, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/airspy/airspy.c", i32 272, i32 2}
!120 = !{ptr @airspy_urb_complete._rs, !119, !"_rs", i1 false, i1 false}
!121 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @airspy_urb_complete.descriptor, !119, !"descriptor", i1 false, i1 false}
!124 = !{ptr @airspy_urb_complete._rs.63, !125, !"_rs", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/airspy/airspy.c", i32 285, i32 3}
!126 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @airspy_urb_complete._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @airspy_urb_complete._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @airspy_urb_complete._rs.65, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/airspy/airspy.c", i32 296, i32 4}
!131 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @airspy_urb_complete._entry.66, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @airspy_urb_complete._entry_ptr.68, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/airspy/airspy.c", i32 252, i32 3}
!136 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @airspy_convert_stream.__UNIQUE_ID_ddebug304, !135, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!140 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/airspy/airspy.c", i32 334, i32 3}
!143 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @airspy_submit_urbs.__UNIQUE_ID_ddebug306, !142, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/airspy/airspy.c", i32 337, i32 4}
!147 = !{ptr @airspy_submit_urbs._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @airspy_submit_urbs._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/airspy/airspy.c", i32 320, i32 3}
!151 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @airspy_kill_urbs.__UNIQUE_ID_ddebug305, !150, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/airspy/airspy.c", i32 399, i32 4}
!155 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @airspy_free_urbs.__UNIQUE_ID_ddebug311, !154, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/airspy/airspy.c", i32 353, i32 4}
!159 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @airspy_free_stream_bufs.__UNIQUE_ID_ddebug307, !158, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/airspy/airspy.c", i32 582, i32 2}
!163 = !{ptr @airspy_stop_streaming.__UNIQUE_ID_ddebug318, !162, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/airspy/airspy.c", i32 445, i32 2}
!166 = !{ptr @airspy_cleanup_queued_bufs.__UNIQUE_ID_ddebug313, !165, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!167 = !{ptr @airspy_template, !168, !"airspy_template", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/airspy/airspy.c", i32 846, i32 34}
!169 = !{ptr @airspy_fops, !170, !"airspy_fops", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/airspy/airspy.c", i32 836, i32 42}
!171 = !{ptr @airspy_ioctl_ops, !172, !"airspy_ioctl_ops", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/airspy/airspy.c", i32 806, i32 36}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/usb.h", i32 912, i32 31}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/airspy/airspy.c", i32 707, i32 20}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/airspy/airspy.c", i32 714, i32 20}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/airspy/airspy.c", i32 736, i32 3}
!181 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @airspy_g_frequency.__UNIQUE_ID_ddebug319, !180, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/airspy/airspy.c", i32 741, i32 3}
!185 = !{ptr @airspy_g_frequency.__UNIQUE_ID_ddebug320, !184, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/airspy/airspy.c", i32 761, i32 3}
!188 = !{ptr @airspy_s_frequency.__UNIQUE_ID_ddebug325, !187, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!189 = !{ptr @airspy_s_frequency.__UNIQUE_ID_ddebug330, !190, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/airspy/airspy.c", i32 767, i32 3}
!191 = !{ptr @airspy_ctrl_ops, !192, !"airspy_ctrl_ops", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/airspy/airspy.c", i32 957, i32 35}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/airspy/airspy.c", i32 949, i32 3}
!195 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @airspy_s_ctrl.__UNIQUE_ID_ddebug337, !194, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/airspy/airspy.c", i32 867, i32 2}
!199 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @airspy_set_lna_gain.__UNIQUE_ID_ddebug331, !198, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/airspy/airspy.c", i32 884, i32 3}
!203 = !{ptr @airspy_set_lna_gain.__UNIQUE_ID_ddebug332, !202, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/airspy/airspy.c", i32 894, i32 2}
!206 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @airspy_set_mixer_gain.__UNIQUE_ID_ddebug333, !205, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!208 = !{ptr @airspy_set_mixer_gain.__UNIQUE_ID_ddebug334, !209, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/airspy/airspy.c", i32 911, i32 3}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/airspy/airspy.c", i32 921, i32 2}
!212 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @airspy_set_if_gain.__UNIQUE_ID_ddebug335, !211, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!214 = !{ptr @airspy_set_if_gain.__UNIQUE_ID_ddebug336, !215, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/airspy/airspy.c", i32 926, i32 3}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/airspy/airspy.c", i32 465, i32 2}
!218 = !{ptr @airspy_disconnect.__UNIQUE_ID_ddebug314, !217, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!219 = !{ptr @airspy_id_table, !220, !"airspy_id_table", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/airspy/airspy.c", i32 1076, i32 35}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{!"auto-init"}
!231 = !{i64 2148978930, i64 2148978935, i64 2148978948, i64 2148978992, i64 2148979026, i64 2148979047}
!232 = !{!"branch_weights", i32 1, i32 2000}
!233 = !{!"branch_weights", i32 2000, i32 1}
