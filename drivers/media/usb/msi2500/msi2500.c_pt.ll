; ModuleID = '/llk/IR_all_yes/drivers/media/usb/msi2500/msi2500.c_pt.bc'
source_filename = "../drivers/media/usb/msi2500/msi2500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.msi2500_format = type { i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi2500_dev = type { ptr, %struct.video_device, %struct.v4l2_device, ptr, ptr, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, [8 x ptr], %struct.v4l2_ctrl_handler, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi2500_frame_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
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
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__param_str_emulated_formats = internal constant [25 x i8] c"msi2500.emulated_formats\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@msi2500_emulated_fmt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_emulated_formats = internal constant %struct.kernel_param { ptr @__param_str_emulated_formats, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msi2500_emulated_fmt } }, section "__param", align 4
@__UNIQUE_ID_emulated_formatstype303 = internal constant [39 x i8] c"msi2500.parmtype=emulated_formats:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_emulated_formats304 = internal constant [77 x i8] c"msi2500.parm=emulated_formats:enable emulated formats (disappears in future)\00", section ".modinfo", align 1
@__initcall__kmod_msi2500__347_1305_msi2500_driver_init6 = internal global ptr @msi2500_driver_init, section ".initcall6.init", align 4
@msi2500_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @msi2500_probe, ptr @msi2500_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi2500_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_msi2500_driver_exit = internal global ptr @msi2500_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author348 = internal constant [46 x i8] c"msi2500.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [46 x i8] c"msi2500.description=Mirics MSi3101 SDR Dongle\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [47 x i8] c"msi2500.file=drivers/media/usb/msi2500/msi2500\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [20 x i8] c"msi2500.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msi2500\00", [24 x i8] zeroinitializer }, align 32
@msi2500_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7671, i16 9472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -11520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@msi2500_probe.board_info = internal global { %struct.spi_board_info, [36 x i8] } { %struct.spi_board_info { [32 x i8] c"msi001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, i32 0, i32 12000000, i16 0, i16 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@msi2500_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->v4l2_lock\00", [16 x i8] zeroinitializer }, align 32
@msi2500_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->vb_queue_lock\00", [44 x i8] zeroinitializer }, align 32
@msi2500_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->queued_bufs_lock\00", [41 x i8] zeroinitializer }, align 32
@bands = internal constant { [1 x %struct.v4l2_frequency_band], [32 x i8] } { [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 4, i32 0, i32 5120, i32 1200000, i32 15000000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@formats = internal constant { [4 x %struct.msi2500_format], [32 x i8] } { [4 x %struct.msi2500_format] [%struct.msi2500_format { i32 942691139, i32 3024 }, %struct.msi2500_format { i32 875647811, i32 3024 }, %struct.msi2500_format { i32 942691651, i32 3024 }, %struct.msi2500_format { i32 909202755, i32 3024 }], [32 x i8] zeroinitializer }, align 32
@msi2500_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @msi2500_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi2500_start_streaming, ptr @msi2500_stop_streaming, ptr @msi2500_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@msi2500_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1204, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not initialize vb2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msi2500_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/msi2500/msi2500.c\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msi2500_probe._entry_ptr = internal global ptr @msi2500_probe._entry, section ".printk_index", align 4
@msi2500_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @msi2500_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Mirics MSi3101 SDR Dongle\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @msi2500_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@msi2500_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1218, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register v4l2-device (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@msi2500_probe._entry_ptr.13 = internal global ptr @msi2500_probe._entry.11, section ".printk_index", align 4
@msi2500_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 1244, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get v4l2 subdevice\0A\00", [37 x i8] zeroinitializer }, align 32
@msi2500_probe._entry_ptr.16 = internal global ptr @msi2500_probe._entry.14, section ".printk_index", align 4
@msi2500_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"msi2500:1250:(&dev->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@msi2500_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 1253, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@msi2500_probe._entry_ptr.20 = internal global ptr @msi2500_probe._entry.18, section ".printk_index", align 4
@msi2500_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.8, i32 1269, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register as video device (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@msi2500_probe._entry_ptr.23 = internal global ptr @msi2500_probe._entry.21, section ".printk_index", align 4
@msi2500_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.8, i32 1273, ptr @.str.26, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Registered as %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@msi2500_probe._entry_ptr.27 = internal global ptr @msi2500_probe._entry.24, section ".printk_index", align 4
@msi2500_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.7, ptr @.str.8, i32 1275, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SDR API is still slightly experimental and functionality changes may follow\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@msi2500_probe._entry_ptr.31 = internal global ptr @msi2500_probe._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msi2500_queue_setup.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.8, ptr @.str.33, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msi2500_queue_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbuffers=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@msi2500_queue_setup.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.8, ptr @.str.34, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nbuffers=%d sizes[0]=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@msi2500_start_streaming.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.8, ptr @.str.36, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msi2500_start_streaming\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@msi2500_set_usb_adc.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.38, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msi2500_set_usb_adc\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"div_out=%u f_vco=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@msi2500_set_usb_adc.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.39, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"f_sr=%u f_vco=%u div_n=%u k=%u div_out=%u reg3=%08x reg4=%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@msi2500_isoc_init.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.8, ptr @.str.36, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msi2500_isoc_init\00", [46 x i8] zeroinitializer }, align 32
@msi2500_isoc_init.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.8, ptr @.str.41, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Allocated URB at 0x%p\0A\00", [41 x i8] zeroinitializer }, align 32
@msi2500_isoc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.8, i32 511, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate urb buffer %d\0A\00", [62 x i8] zeroinitializer }, align 32
@msi2500_isoc_init._entry_ptr = internal global ptr @msi2500_isoc_init._entry, section ".printk_index", align 4
@msi2500_isoc_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.8, i32 532, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"usb_submit_urb %d failed with error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@msi2500_isoc_init._entry_ptr.45 = internal global ptr @msi2500_isoc_init._entry.43, section ".printk_index", align 4
@msi2500_isoc_init.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.8, ptr @.str.46, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"URB 0x%p submitted.\0A\00", [43 x i8] zeroinitializer }, align 32
@msi2500_isoc_cleanup.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.8, ptr @.str.36, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msi2500_isoc_cleanup\00", [43 x i8] zeroinitializer }, align 32
@msi2500_iso_stop.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.8, ptr @.str.36, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msi2500_iso_stop\00", [47 x i8] zeroinitializer }, align 32
@msi2500_iso_stop.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.8, ptr @.str.49, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unlinking URB %p\0A\00", [46 x i8] zeroinitializer }, align 32
@msi2500_iso_free.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.8, ptr @.str.36, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msi2500_iso_free\00", [47 x i8] zeroinitializer }, align 32
@msi2500_iso_free.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.8, ptr @.str.51, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Freeing URB\0A\00", [19 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.53, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msi2500_isoc_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"URB (%p) unlinked %ssynchronously\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.56, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"called with status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.57, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Too many ISOC errors, bailing out\0A\00", [61 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.59, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"frame=%d/%d has error %d skipping\0A\00", [61 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler.descriptor.61 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.62, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"videobuf is full, %d packets dropped\0A\00", [58 x i8] zeroinitializer }, align 32
@msi2500_isoc_handler.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.63, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error (%d) re-submitting urb\0A\00", [34 x i8] zeroinitializer }, align 32
@msi2500_convert_stream._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@msi2500_convert_stream.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.8, ptr @.str.65, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msi2500_convert_stream\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d samples lost, %d %08x:%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@msi2500_convert_stream._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@msi2500_convert_stream.descriptor.67 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.8, ptr @.str.68, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@msi2500_convert_stream._rs.69 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@msi2500_convert_stream.descriptor.70 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.8, ptr @.str.68, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@msi2500_convert_stream.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.8, ptr @.str.71, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"size=%u samples=%u msecs=%u sample rate=%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@msi2500_cleanup_queued_bufs.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.8, ptr @.str.36, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"msi2500_cleanup_queued_bufs\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@msi2500_ctrl_msg.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.8, ptr @.str.77, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msi2500_ctrl_msg\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%02x %02x %02x %02x %02x %02x %02x %02x %s %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@msi2500_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.8, i32 665, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed %d, cmd %02x, data %04x\0A\00", [32 x i8] zeroinitializer }, align 32
@msi2500_ctrl_msg._entry_ptr = internal global ptr @msi2500_ctrl_msg._entry, section ".printk_index", align 4
@msi2500_stop_streaming.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.8, ptr @.str.36, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msi2500_stop_streaming\00", [41 x i8] zeroinitializer }, align 32
@msi2500_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@msi2500_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @msi2500_querycap, ptr null, ptr null, ptr null, ptr @msi2500_enum_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi2500_g_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi2500_s_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi2500_try_fmt_sdr_cap, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi2500_g_tuner, ptr @msi2500_s_tuner, ptr @msi2500_g_frequency, ptr @msi2500_s_frequency, ptr @msi2500_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@msi2500_querycap.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.8, ptr @.str.36, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msi2500_querycap\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@msi2500_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.8, ptr @.str.83, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msi2500_enum_fmt_sdr_cap\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"index=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@msi2500_g_fmt_sdr_cap.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.8, ptr @.str.85, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msi2500_g_fmt_sdr_cap\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pixelformat fourcc %4.4s\0A\00", [38 x i8] zeroinitializer }, align 32
@msi2500_s_fmt_sdr_cap.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.8, ptr @.str.85, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msi2500_s_fmt_sdr_cap\00", [42 x i8] zeroinitializer }, align 32
@msi2500_try_fmt_sdr_cap.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.8, ptr @.str.85, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msi2500_try_fmt_sdr_cap\00", [40 x i8] zeroinitializer }, align 32
@msi2500_g_tuner.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.8, ptr @.str.83, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msi2500_g_tuner\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mirics MSi2500\00", [17 x i8] zeroinitializer }, align 32
@msi2500_s_tuner.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.83, i8 0, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msi2500_s_tuner\00", [16 x i8] zeroinitializer }, align 32
@msi2500_g_frequency.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.8, ptr @.str.92, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msi2500_g_frequency\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tuner=%d type=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@msi2500_s_frequency.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.8, ptr @.str.94, i8 1, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msi2500_s_frequency\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tuner=%d type=%d frequency=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@msi2500_s_frequency.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.8, ptr @.str.95, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC frequency=%u Hz\0A\00", [43 x i8] zeroinitializer }, align 32
@msi2500_enum_freq_bands.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.8, ptr @.str.97, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msi2500_enum_freq_bands\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner=%d type=%d index=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@msi2500_transfer_one_message.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.8, ptr @.str.99, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"msi2500_transfer_one_message\00", [35 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msg=%*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@msi2500_disconnect.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.8, ptr @.str.36, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msi2500_disconnect\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 842093380, i64 875647811, i64 876098381, i64 909202755]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.102 = internal global [8 x i64] [i64 6, i64 32, i64 842093380, i64 875647811, i64 876098381, i64 909202755, i64 942691139, i64 942691651]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"msi2500_emulated_fmt\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 26, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"msi2500_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1298, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1305, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"msi2500_id_table\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1290, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"board_info\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1168, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1181, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1182, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1183, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 56, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 74, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"msi2500_vb2_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 881, i32 29 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1204, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"msi2500_template\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1123, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1218, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1244, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1250, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1253, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1268, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1272, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1274, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 605, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 611, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 831, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 775, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 789, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 484, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 500, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 510, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 530, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 536, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 472, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 436, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 441, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 451, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 456, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 373, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 379, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 382, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 396, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 413, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 429, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 255, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 266, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 309, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 351, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1163, i32 7 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 548, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 659, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 664, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 859, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [13 x i8] c"msi2500_fops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1113, i32 42 }
@___asan_gen_.363 = private unnamed_addr constant [18 x i8] c"msi2500_ioctl_ops\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1083, i32 36 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 589, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 912, i32 31 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 895, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 910, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 926, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 955, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 994, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 997, i32 20 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 977, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1018, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1039, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1046, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1063, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 1148, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.427 = private constant [39 x i8] c"../drivers/media/usb/msi2500/msi2500.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 569, i32 2 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_emulated_formats304, ptr @__UNIQUE_ID_emulated_formatstype303, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_msi2500_driver_exit, ptr @__initcall__kmod_msi2500__347_1305_msi2500_driver_init6, ptr @__param_emulated_formats, ptr @msi2500_ctrl_msg._entry, ptr @msi2500_ctrl_msg._entry_ptr, ptr @msi2500_driver_exit, ptr @msi2500_isoc_init._entry, ptr @msi2500_isoc_init._entry.43, ptr @msi2500_isoc_init._entry_ptr, ptr @msi2500_isoc_init._entry_ptr.45, ptr @msi2500_probe._entry, ptr @msi2500_probe._entry.11, ptr @msi2500_probe._entry.14, ptr @msi2500_probe._entry.18, ptr @msi2500_probe._entry.21, ptr @msi2500_probe._entry.24, ptr @msi2500_probe._entry.28, ptr @msi2500_probe._entry_ptr, ptr @msi2500_probe._entry_ptr.13, ptr @msi2500_probe._entry_ptr.16, ptr @msi2500_probe._entry_ptr.20, ptr @msi2500_probe._entry_ptr.23, ptr @msi2500_probe._entry_ptr.27, ptr @msi2500_probe._entry_ptr.31, ptr @msi2500_emulated_fmt, ptr @msi2500_driver, ptr @.str, ptr @msi2500_id_table, ptr @msi2500_probe.board_info, ptr @msi2500_probe.__key, ptr @.str.1, ptr @msi2500_probe.__key.2, ptr @.str.3, ptr @msi2500_probe.__key.4, ptr @.str.5, ptr @bands, ptr @formats, ptr @msi2500_vb2_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @msi2500_template, ptr @.str.12, ptr @.str.15, ptr @msi2500_probe._key, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @msi2500_isoc_handler._rs, ptr @.str.58, ptr @.str.59, ptr @msi2500_isoc_handler._rs.60, ptr @.str.62, ptr @.str.63, ptr @msi2500_convert_stream._rs, ptr @.str.64, ptr @.str.65, ptr @msi2500_convert_stream._rs.66, ptr @.str.68, ptr @msi2500_convert_stream._rs.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @msi2500_fops, ptr @msi2500_ioctl_ops, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_emulated_fmt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe.board_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_isoc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_isoc_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_isoc_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_isoc_handler._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_convert_stream._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_convert_stream._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_convert_stream._rs.69 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi2500_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @msi2500_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msi2500_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @msi2500_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2504) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %v4l2_lock = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %v4l2_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @msi2500_probe.__key) #8
  %vb_queue_lock = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @msi2500_probe.__key.2) #8
  %queued_bufs_lock = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %queued_bufs_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @msi2500_probe.__key.4, i16 noundef signext 3) #8
  %queued_bufs = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %queued_bufs, ptr %queued_bufs, align 8
  %prev.i = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queued_bufs, ptr %prev.i, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev8, ptr %call7.i.i, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %udev, align 4
  %f_adc = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1200000, ptr %f_adc, align 8
  %pixelformat = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 942691139, ptr %pixelformat, align 4
  %buffersize = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %buffersize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3024, ptr %buffersize, align 8
  %num_formats = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 14
  %10 = load i8, ptr @msi2500_emulated_fmt, align 1, !range !249
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  %spec.store.select = select i1 %tobool11.not, i32 2, i32 4
  %11 = ptrtoint ptr %num_formats to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %num_formats, align 4
  %vb_queue = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %vb_queue, align 8
  %io_modes = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5, i32 10
  %14 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5, i32 12
  %15 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 744, ptr %buf_struct_size, align 8
  %ops = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @msi2500_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5, i32 13
  %18 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8192, ptr %timestamp_flags, align 4
  %call22 = tail call i32 @vb2_queue_init(ptr noundef %vb_queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6) #12
  br label %err_free_mem

if.end29:                                         ; preds = %do.body
  %vdev = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %vdev, ptr @msi2500_template, i32 1352)
  %queue = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 10
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vb_queue, ptr %queue, align 8
  %lock = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 5, i32 5
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vb_queue_lock, ptr %lock, align 4
  %driver_data.i.i = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %v4l2_dev = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 2
  %release = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 2, i32 9
  %25 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @msi2500_video_release, ptr %release, align 4
  %call38 = tail call i32 @v4l2_device_register(ptr noundef %dev8, ptr noundef %v4l2_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, i32 noundef %call38) #12
  br label %err_free_mem

if.end45:                                         ; preds = %if.end29
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %27, i32 noundef 0, i1 noundef zeroext false) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end45.err_unregister_v4l2_dev_crit_edge, label %if.end49

if.end45.err_unregister_v4l2_dev_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister_v4l2_dev

if.end49:                                         ; preds = %if.end45
  %master50 = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %master50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %master50, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %num_chipselect, align 2
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %31 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @msi2500_transfer_one_message, ptr %transfer_one_message, align 4
  %driver_data.i.i188 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i.i188 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i188, align 4
  %call51 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %call.i) #8
  br label %err_unregister_v4l2_dev

if.end54:                                         ; preds = %if.end49
  %call56 = tail call ptr @v4l2_spi_new_subdev(ptr noundef %v4l2_dev, ptr noundef nonnull %call.i, ptr noundef nonnull @msi2500_probe.board_info) #8
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call56, ptr %v4l2_subdev, align 8
  %cmp57 = icmp eq ptr %call56, null
  br i1 %cmp57, label %do.end61, label %if.end63

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.15) #12
  br label %err_unregister_master

if.end63:                                         ; preds = %if.end54
  %hdl = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 18
  %call64 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 0, ptr noundef nonnull @msi2500_probe._key, ptr noundef nonnull @.str.17) #8
  %error = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 18, i32 9
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool66.not = icmp eq i32 %37, 0
  br i1 %tobool66.not, label %if.end74, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.19) #12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  br label %err_unregister_master

if.end74:                                         ; preds = %if.end63
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call56, i32 0, i32 8
  %40 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl_handler, align 4
  %call76 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %hdl, ptr noundef %41, ptr noundef null, i1 noundef zeroext true) #8
  %ctrl_handler79 = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %ctrl_handler79 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %hdl, ptr %ctrl_handler79, align 4
  %v4l2_dev82 = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %v4l2_dev82 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %v4l2_dev, ptr %v4l2_dev82, align 4
  %lock85 = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 26
  %44 = ptrtoint ptr %lock85 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %v4l2_lock, ptr %lock85, align 8
  %device_caps = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 85000192, ptr %device_caps, align 8
  %fops.i = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fops.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call.i189 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 4, i32 noundef -1, i32 noundef 1, ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool89.not = icmp eq i32 %call.i189, 0
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool89.not, label %do.end98, label %do.end93

do.end93:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef %call.i189) #12
  br label %err_unregister_v4l2_dev

do.end98:                                         ; preds = %if.end74
  %init_name.i.i = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 3
  %52 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end98.video_device_node_name.exit_crit_edge

do.end98.video_device_node_name.exit_crit_edge:   ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.msi2500_dev, ptr %call7.i.i, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end98.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %55, %if.end.i.i ], [ %53, %do.end98.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i) #12
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %57, ptr noundef nonnull @.str.29) #12
  br label %cleanup

err_unregister_master:                            ; preds = %if.then67, %do.end61
  %ret.0 = phi i32 [ -19, %do.end61 ], [ %37, %if.then67 ]
  %58 = ptrtoint ptr %master50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %master50, align 4
  tail call void @spi_unregister_controller(ptr noundef %59) #8
  br label %err_unregister_v4l2_dev

err_unregister_v4l2_dev:                          ; preds = %err_unregister_master, %do.end93, %spi_controller_put.exit, %if.end45.err_unregister_v4l2_dev_crit_edge
  %ret.1 = phi i32 [ %call51, %spi_controller_put.exit ], [ %ret.0, %err_unregister_master ], [ %call.i189, %do.end93 ], [ -12, %if.end45.err_unregister_v4l2_dev_crit_edge ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_unregister_v4l2_dev, %do.end43, %do.end27
  %ret.2 = phi i32 [ %call22, %do.end27 ], [ %call38, %do.end43 ], [ %ret.1, %err_unregister_v4l2_dev ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %video_device_node_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %video_device_node_name.exit ], [ %ret.2, %err_free_mem ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi2500_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_disconnect.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_disconnect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %1, i32 -1360
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_disconnect.__UNIQUE_ID_ddebug319, ptr noundef %3, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vb_queue_lock = getelementptr i8, ptr %1, i32 792
  tail call void @mutex_lock_nested(ptr noundef %vb_queue_lock, i32 noundef 0) #8
  %v4l2_lock = getelementptr i8, ptr %1, i32 700
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #8
  %udev = getelementptr i8, ptr %1, i32 884
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %udev, align 4
  tail call void @v4l2_device_disconnect(ptr noundef %1) #8
  %vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #8
  %master = getelementptr i8, ptr %1, i32 132
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  tail call void @spi_unregister_controller(ptr noundef %6) #8
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #8
  tail call void @mutex_unlock(ptr noundef %vb_queue_lock) #8
  %call9 = tail call i32 @v4l2_device_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi2500_video_release(ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -1360
  %hdl = getelementptr i8, ptr %v, i32 944
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  tail call void @v4l2_device_unregister(ptr noundef %v) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_transfer_one_message(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn40 = load ptr, ptr %m, align 4
  %cmp.not42 = icmp eq ptr %.pn40, %m
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry.do.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %do.end.do.body_crit_edge ], [ %.pn40, %entry.do.body_crit_edge ]
  %t.044 = getelementptr i8, ptr %.pn43, i32 -84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_transfer_one_message.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_transfer_one_message, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %len = getelementptr i8, ptr %.pn43, i32 -76
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = ptrtoint ptr %t.044 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t.044, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_transfer_one_message.__UNIQUE_ID_ddebug346, ptr noundef %4, ptr noundef nonnull @.str.99, i32 noundef %6, ptr noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %9 = ptrtoint ptr %t.044 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t.044, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx10 = getelementptr i8, ptr %10, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %shl12 = shl nuw nsw i32 %conv11, 16
  %arrayidx15 = getelementptr i8, ptr %10, i32 2
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %shl17 = shl nuw i32 %conv16, 24
  %or = or i32 %shl, %shl12
  %or13 = or i32 %or, %shl17
  %or18 = or i32 %or13, 9
  %call19 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %1, i8 noundef zeroext 65, i32 noundef %or18)
  %17 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %do.end.for.end_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call19, %do.end.for.end_crit_edge ]
  %status = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ret.0.lcssa, ptr %status, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #8
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_spi_new_subdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_queue_setup.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_queue_setup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbuffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_queue_setup.__UNIQUE_ID_ddebug321, ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuffers, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 8)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 32)
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbuffers, align 4
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %buffersize = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffersize, align 8
  %add = add i32 %13, 4095
  %and = and i32 %add, -4096
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_queue_setup.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_queue_setup, %if.then24)) #8
          to label %do.end29 [label %if.then24], !srcloc !250

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %17 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbuffers, align 4
  %19 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_queue_setup.__UNIQUE_ID_ddebug326, ptr noundef %16, ptr noundef nonnull @.str.34, i32 noundef %18, i32 noundef %20) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_start_streaming.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_start_streaming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_start_streaming.__UNIQUE_ID_ddebug330, ptr noundef %3, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %v4l2_lock = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 8
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %v4l2_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v4l2_subdev, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end11.if.end34_crit_edge, label %if.else

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else:                                          ; preds = %if.end11
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.else.if.end34_crit_edge, label %land.lhs.true

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_power, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %land.lhs.true.if.end34_crit_edge, label %if.else19

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else19:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %14 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %if.else19.if.else27_crit_edge, label %land.lhs.true21

if.else19.if.else27_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

land.lhs.true21:                                  ; preds = %if.else19
  %s_power22 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %s_power22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_power22, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %land.lhs.true21.if.else27_crit_edge, label %land.lhs.true21.if.end34.sink.split_crit_edge

land.lhs.true21.if.end34.sink.split_crit_edge:    ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.sink.split

land.lhs.true21.if.else27_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

if.else27:                                        ; preds = %land.lhs.true21.if.else27_crit_edge, %if.else19.if.else27_crit_edge
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else27, %land.lhs.true21.if.end34.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.else27 ], [ %16, %land.lhs.true21.if.end34.sink.split_crit_edge ]
  %call31 = tail call i32 %.sink(ptr noundef nonnull %7, i32 noundef 1) #8
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %land.lhs.true.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.end11.if.end34_crit_edge
  %call36 = tail call fastcc i32 @msi2500_set_usb_adc(ptr noundef %1)
  %call37 = tail call fastcc i32 @msi2500_isoc_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end34.if.end40_crit_edge, label %if.then39

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msi2500_cleanup_queued_bufs(ptr noundef %1)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end34.if.end40_crit_edge
  %call41 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %1, i8 noundef zeroext 67, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end40 ], [ -19, %do.end.cleanup_crit_edge ], [ -512, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi2500_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_stop_streaming.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_stop_streaming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_stop_streaming.__UNIQUE_ID_ddebug331, ptr noundef %3, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %v4l2_lock = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #8
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msi2500_isoc_cleanup(ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  tail call fastcc void @msi2500_cleanup_queued_bufs(ptr noundef %1)
  tail call void @msleep(i32 noundef 20) #8
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %call10 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %1, i8 noundef zeroext 69, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %1, i8 noundef zeroext 65, i32 noundef 16777219)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v4l2_subdev, align 8
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end14.if.end38_crit_edge, label %if.else

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else:                                          ; preds = %if.end14
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.else.if.end38_crit_edge, label %land.lhs.true18

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true18:                                  ; preds = %if.else
  %s_power = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %s_power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_power, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %land.lhs.true18.if.end38_crit_edge, label %if.else23

land.lhs.true18.if.end38_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else23:                                        ; preds = %land.lhs.true18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %16 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %if.else23.if.else31_crit_edge, label %land.lhs.true25

if.else23.if.else31_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else23
  %s_power26 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_power26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_power26, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end38.sink.split_crit_edge

land.lhs.true25.if.end38.sink.split_crit_edge:    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else23.if.else31_crit_edge
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.else31, %land.lhs.true25.if.end38.sink.split_crit_edge
  %.sink = phi ptr [ %15, %if.else31 ], [ %18, %land.lhs.true25.if.end38.sink.split_crit_edge ]
  %call35 = tail call i32 %.sink(ptr noundef nonnull %9, i32 noundef 0) #8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %land.lhs.true18.if.end38_crit_edge, %if.else.if.end38_crit_edge, %if.end14.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi2500_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %do.body8, !prof !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #8
  br label %cleanup

do.body8:                                         ; preds = %entry
  %queued_bufs_lock = getelementptr inbounds %struct.msi2500_dev, ptr %3, i32 0, i32 7
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #8
  %list = getelementptr inbounds %struct.msi2500_frame_buf, ptr %vb, i32 0, i32 1
  %queued_bufs = getelementptr inbounds %struct.msi2500_dev, ptr %3, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.msi2500_dev, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %queued_bufs) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body8.list_add_tail.exit_crit_edge

do.body8.list_add_tail.exit_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queued_bufs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.msi2500_frame_buf, ptr %vb, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi2500_set_usb_adc(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_adc = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_adc, align 8
  %hdl = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 18
  %call = tail call ptr @v4l2_ctrl_find(ptr noundef %hdl, i32 noundef 10619147) #8
  %call1 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call ptr @v4l2_ctrl_find(ptr noundef %hdl, i32 noundef 10619148) #8
  %2 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_adc, align 8
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #8
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %call3, i32 noundef %3) #8
  %8 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pixelformat = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 12
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end.sw.epilog_crit_edge [
    i32 875647811, label %sw.bb10
    i32 909202755, label %sw.bb6
    i32 842093380, label %sw.bb9
    i32 876098381, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb6, %if.end.sw.epilog_crit_edge
  %reg7.0 = phi i32 [ 37895, %sw.bb10 ], [ 34055, %sw.bb9 ], [ 42247, %sw.bb8 ], [ 37895, %sw.bb6 ], [ 824327, %if.end.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %1)
  %cmp = icmp ult i32 %1, 6000000
  br i1 %cmp, label %sw.epilog.if.end23_crit_edge, label %if.else

sw.epilog.if.end23_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %1)
  %cmp12 = icmp ult i32 %1, 7000000
  br i1 %cmp12, label %if.else.if.end23_crit_edge, label %if.else15

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8500000, i32 %1)
  %cmp16 = icmp ult i32 %1, 8500000
  %. = select i1 %cmp16, i32 26215171, i32 30409475
  br label %if.end23

if.end23:                                         ; preds = %if.else15, %if.else.if.end23_crit_edge, %sw.epilog.if.end23_crit_edge
  %reg3.0 = phi i32 [ 17826563, %sw.epilog.if.end23_crit_edge ], [ 22020867, %if.else.if.end23_crit_edge ], [ %., %if.else15 ]
  %mul = mul i32 %1, 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end23
  %div_out.0149 = phi i32 [ 4, %if.end23 ], [ %add, %for.inc.for.body_crit_edge ]
  %mul25 = mul i32 %mul, %div_out.0149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_set_usb_adc.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_set_usb_adc, %if.then30)) #8
          to label %do.end [label %if.then30], !srcloc !250

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_set_usb_adc.__UNIQUE_ID_ddebug328, ptr noundef %16, ptr noundef nonnull @.str.38, i32 noundef %div_out.0149, i32 noundef %mul25) #8
  br label %do.end

do.end:                                           ; preds = %if.then30, %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 201999999, i32 %mul25)
  %cmp33 = icmp ugt i32 %mul25, 201999999
  br i1 %cmp33, label %do.end.for.end_crit_edge, label %for.inc

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %do.end
  %add = add nuw nsw i32 %div_out.0149, 2
  %cmp24 = icmp ult i32 %div_out.0149, 14
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %div_out.0.lcssa = phi i32 [ %div_out.0149, %do.end.for.end_crit_edge ], [ 16, %for.inc.for.end_crit_edge ]
  %conv = zext i32 %mul25 to i64
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %conv, i32 0) #13, !srcloc !252
  %asmresult.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %conv, i64 %asmresult.i.i, i32 %asmresult4.i.i) #13, !srcloc !253
  %asmresult10.i.i = extractvalue { i64, i32 } %18, 0
  %div1581.i = lshr i64 %asmresult10.i.i, 25
  %conv159.i = trunc i64 %div1581.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -48000000
  %sub161.i = add i32 %mul160.neg.i, %mul25
  %conv38 = zext i32 %sub161.i to i64
  %mul39 = shl nuw nsw i64 %conv38, 21
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %mul39, i32 0) #13, !srcloc !252
  %asmresult.i.i.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %mul39, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !253
  %asmresult10.i.i.i = extractvalue { i64, i32 } %20, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 25
  %conv41 = trunc i64 %div1581.i.i to i32
  %shl = shl i32 %conv159.i, 16
  %sub = shl i32 %div_out.0.lcssa, 9
  %shl43 = add i32 %sub, -1024
  %21 = lshr i32 %conv41, 5
  %shl45 = and i32 %21, 32768
  %or42 = or i32 %shl43, %reg3.0
  %or44 = or i32 %or42, %shl
  %or46 = or i32 %or44, %shl45
  %and48 = shl i32 %conv41, 8
  %shl49 = and i32 %and48, 268435200
  %or50 = or i32 %shl49, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_set_usb_adc.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_set_usb_adc, %if.then63)) #8
          to label %do.end67 [label %if.then63], !srcloc !250

if.then63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_set_usb_adc.__UNIQUE_ID_ddebug329, ptr noundef %23, ptr noundef nonnull @.str.39, i32 noundef %1, i32 noundef %mul25, i32 noundef %conv159.i, i32 noundef %sub161.i, i32 noundef %div_out.0.lcssa, i32 noundef %or46, i32 noundef %or50) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %for.end
  %call68 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 6324232)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %do.end67.err_crit_edge

do.end67.err_crit_edge:                           ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end71:                                         ; preds = %do.end67
  %call72 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 3077)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.err_crit_edge

if.end71.err_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end75:                                         ; preds = %if.end71
  %call76 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 131072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.err_crit_edge

if.end75.err_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end79:                                         ; preds = %if.end75
  %call80 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 4718850)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.err_crit_edge

if.end79.err_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end83:                                         ; preds = %if.end79
  %call84 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef 15958024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.err_crit_edge

if.end83.err_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end87:                                         ; preds = %if.end83
  %call88 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef %reg7.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.err_crit_edge

if.end87.err_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end91:                                         ; preds = %if.end87
  %call92 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef %or50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.err_crit_edge

if.end91.err_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end95:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = tail call fastcc i32 @msi2500_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 65, i32 noundef %or46)
  br label %err

err:                                              ; preds = %if.end95, %if.end91.err_crit_edge, %if.end87.err_crit_edge, %if.end83.err_crit_edge, %if.end79.err_crit_edge, %if.end75.err_crit_edge, %if.end71.err_crit_edge, %do.end67.err_crit_edge
  %ret.0 = phi i32 [ %call68, %do.end67.err_crit_edge ], [ %call72, %if.end71.err_crit_edge ], [ %call76, %if.end75.err_crit_edge ], [ %call80, %if.end79.err_crit_edge ], [ %call84, %if.end83.err_crit_edge ], [ %call88, %if.end87.err_crit_edge ], [ %call92, %if.end91.err_crit_edge ], [ %call96, %if.end95 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi2500_isoc_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_init.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_init.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %isoc_errors = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %isoc_errors to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %isoc_errors, align 8
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %call4 = tail call i32 @usb_set_interface(ptr noundef %4, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.for.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0152 = phi i32 [ %inc51, %if.end43.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %call8 = tail call ptr @usb_alloc_urb(i32 noundef 8, i32 noundef 3264) #8
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %for.body.cleanup.sink.split_crit_edge, label %if.end11

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end11:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.msi2500_dev, ptr %dev, i32 0, i32 17, i32 %i.0152
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_init.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_init, %if.then24)) #8
          to label %do.end28 [label %if.then24], !srcloc !250

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_init.__UNIQUE_ID_ddebug316, ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef nonnull %call8) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %if.end11
  %interval = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 25
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %interval, align 4
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %dev30 = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 8
  %11 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev30, align 4
  %12 = load ptr, ptr %udev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or33 = or i32 %shl.i, 4227200
  %pipe = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 10
  %15 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or33, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 13
  %16 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %transfer_flags, align 4
  %17 = load ptr, ptr %udev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 15
  %call35 = tail call ptr @usb_alloc_coherent(ptr noundef %17, i32 noundef 24576, i32 noundef 3264, ptr noundef %transfer_dma) #8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call35, ptr %transfer_buffer, align 4
  %cmp37 = icmp eq ptr %call35, null
  br i1 %cmp37, label %do.end41, label %if.end43

do.end41:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.42, i32 noundef %i.0152) #12
  br label %cleanup.sink.split

if.end43:                                         ; preds = %do.end28
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 24576, ptr %transfer_buffer_length, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 28
  %22 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @msi2500_isoc_handler, ptr %complete, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 27
  %23 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %context, align 4
  %start_frame = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 23
  %24 = ptrtoint ptr %start_frame to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %start_frame, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call8, i32 0, i32 24
  %25 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %number_of_packets, align 4
  %arrayidx47 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 0
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx47, align 4
  %length = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 0, i32 1
  %27 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3072, ptr %length, align 4
  %arrayidx47.1 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 1
  %28 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3072, ptr %arrayidx47.1, align 4
  %length.1 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 1, i32 1
  %29 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3072, ptr %length.1, align 4
  %arrayidx47.2 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 2
  %30 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6144, ptr %arrayidx47.2, align 4
  %length.2 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 2, i32 1
  %31 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3072, ptr %length.2, align 4
  %arrayidx47.3 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 3
  %32 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 9216, ptr %arrayidx47.3, align 4
  %length.3 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 3, i32 1
  %33 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3072, ptr %length.3, align 4
  %arrayidx47.4 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 4
  %34 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12288, ptr %arrayidx47.4, align 4
  %length.4 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 4, i32 1
  %35 = ptrtoint ptr %length.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3072, ptr %length.4, align 4
  %arrayidx47.5 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 5
  %36 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 15360, ptr %arrayidx47.5, align 4
  %length.5 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 5, i32 1
  %37 = ptrtoint ptr %length.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3072, ptr %length.5, align 4
  %arrayidx47.6 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 6
  %38 = ptrtoint ptr %arrayidx47.6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 18432, ptr %arrayidx47.6, align 4
  %length.6 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 6, i32 1
  %39 = ptrtoint ptr %length.6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3072, ptr %length.6, align 4
  %arrayidx47.7 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 7
  %40 = ptrtoint ptr %arrayidx47.7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 21504, ptr %arrayidx47.7, align 4
  %length.7 = getelementptr %struct.urb, ptr %call8, i32 0, i32 29, i32 7, i32 1
  %41 = ptrtoint ptr %length.7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3072, ptr %length.7, align 4
  %inc51 = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc51, 8
  br i1 %exitcond.not, label %if.end43.for.body55_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end43.for.body55_crit_edge:                    ; preds = %if.end43
  br label %for.body55

for.body55:                                       ; preds = %for.inc85.for.body55_crit_edge, %if.end43.for.body55_crit_edge
  %i.1153 = phi i32 [ %inc86, %for.inc85.for.body55_crit_edge ], [ 0, %if.end43.for.body55_crit_edge ]
  %arrayidx57 = getelementptr %struct.msi2500_dev, ptr %dev, i32 0, i32 17, i32 %i.1153
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx57, align 4
  %call58 = tail call i32 @usb_submit_urb(ptr noundef %43, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.body66, label %do.end63

do.end63:                                         ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.44, i32 noundef %i.1153, i32 noundef %call58) #12
  br label %cleanup.sink.split

do.body66:                                        ; preds = %for.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_init.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_init, %if.then78)) #8
          to label %for.inc85 [label %if.then78], !srcloc !250

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %48 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_init.__UNIQUE_ID_ddebug317, ptr noundef %47, ptr noundef nonnull @.str.46, ptr noundef %49) #8
  br label %for.inc85

for.inc85:                                        ; preds = %if.then78, %do.body66
  %inc86 = add nuw nsw i32 %i.1153, 1
  %exitcond158.not = icmp eq i32 %inc86, 8
  br i1 %exitcond158.not, label %for.inc85.cleanup_crit_edge, label %for.inc85.for.body55_crit_edge

for.inc85.for.body55_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

for.inc85.cleanup_crit_edge:                      ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end63, %do.end41, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call58, %do.end63 ], [ -12, %do.end41 ], [ -12, %for.body.cleanup.sink.split_crit_edge ]
  tail call fastcc void @msi2500_isoc_cleanup(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc85.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msi2500_cleanup_queued_bufs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_cleanup_queued_bufs.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_cleanup_queued_bufs, %if.then)) #8
          to label %do.body5 [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_cleanup_queued_bufs.__UNIQUE_ID_ddebug318, ptr noundef %1, ptr noundef nonnull @.str.36) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %queued_bufs_lock = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 7
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #8
  %queued_bufs = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not26 = icmp eq ptr %3, %queued_bufs
  br i1 %cmp.i.not26, label %do.body5.while.end_crit_edge, label %do.body5.while.body_crit_edge

do.body5.while.body_crit_edge:                    ; preds = %do.body5
  br label %while.body

do.body5.while.end_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body5.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %3, %do.body5.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #8
  %13 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not = icmp eq ptr %14, %queued_bufs
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body5.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi2500_ctrl_msg(ptr nocapture noundef readonly %dev, i8 noundef zeroext %cmd, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i16
  %shr1 = lshr i32 %data, 16
  %conv3 = trunc i32 %shr1 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_ctrl_msg.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_ctrl_msg, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !250

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %conv12 = zext i8 %cmd to i32
  %and14 = and i32 %data, 255
  %conv13 = lshr i32 %data, 8
  %2 = and i32 %conv13, 255
  %and18 = and i32 %shr1, 255
  %3 = lshr i32 %data, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_ctrl_msg.__UNIQUE_ID_ddebug327, ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef 64, i32 noundef %conv12, i32 noundef %and14, i32 noundef %2, i32 noundef %and18, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef null) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %entry
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %call24 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext %cmd, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end.if.end32_crit_edge, label %do.end29

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %conv31 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.78, i32 noundef %call24, i32 noundef %conv31, i32 noundef %data) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %do.end.if.end32_crit_edge
  ret i32 %call24
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
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msi2500_isoc_cleanup(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_cleanup.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_cleanup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_cleanup.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_iso_stop.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_cleanup, %if.then.i)) #8
          to label %for.body.i [label %if.then.i], !srcloc !250

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_iso_stop.__UNIQUE_ID_ddebug310, ptr noundef %3, ptr noundef nonnull @.str.36) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i, %do.end
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.i ], [ 0, %do.end ]
  %arrayidx.i = getelementptr %struct.msi2500_dev, ptr %dev, i32 0, i32 17, i32 %i.041.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.body6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.body6.i:                                       ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_iso_stop.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_cleanup, %if.then18.i)) #8
          to label %do.end24.i [label %if.then18.i], !srcloc !250

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_iso_stop.__UNIQUE_ID_ddebug311, ptr noundef %7, ptr noundef nonnull @.str.49, ptr noundef %9) #8
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then18.i, %do.body6.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end24.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %msi2500_iso_stop.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

msi2500_iso_stop.exit:                            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msi2500_iso_free(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi2500_isoc_handler(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %3, label %do.body27 [
    i32 -2, label %entry.do.body_crit_edge
    i32 -104, label %entry.do.body_crit_edge251
    i32 -108, label %entry.do.body_crit_edge252
    i32 0, label %if.else
  ], !prof !254

entry.do.body_crit_edge252:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge251:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge251, %entry.do.body_crit_edge252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_handler, %if.then13)) #8
          to label %cleanup177 [label %if.then13], !srcloc !250

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %8)
  %cmp16 = icmp eq i32 %8, -2
  %cond = select i1 %cmp16, ptr @.str.54, ptr @.str.55
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_handler.__UNIQUE_ID_ddebug306, ptr noundef %6, ptr noundef nonnull @.str.53, ptr noundef %urb, ptr noundef nonnull %cond) #8
  br label %cleanup177

do.body27:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_handler, %if.then39)) #8
          to label %do.end44 [label %if.then39], !srcloc !250

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_handler.__UNIQUE_ID_ddebug307, ptr noundef %10, ptr noundef nonnull @.str.56, i32 noundef %12) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body27
  %isoc_errors = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %isoc_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %isoc_errors, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %isoc_errors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %cmp45 = icmp ugt i32 %inc, 20
  br i1 %cmp45, label %do.body47, label %do.end44.handler_end_crit_edge

do.end44.handler_end_crit_edge:                   ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_end

do.body47:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_handler, %if.then59)) #8
          to label %handler_end [label %if.then59], !srcloc !250

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_handler.__UNIQUE_ID_ddebug308, ptr noundef %16, ptr noundef nonnull @.str.57) #8
  br label %handler_end

if.else:                                          ; preds = %entry
  %isoc_errors65 = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %isoc_errors65 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %isoc_errors65, align 8
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %18 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp67248 = icmp sgt i32 %19, 0
  br i1 %cmp67248, label %for.body.lr.ph, label %if.else.handler_end_crit_edge

if.else.handler_end_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_end

for.body.lr.ph:                                   ; preds = %if.else
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %queued_bufs_lock.i = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 7
  %queued_bufs.i = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 6
  %vb_full = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc149, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0249
  %status68 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0249, i32 3
  %20 = ptrtoint ptr %status68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool69.not = icmp eq i32 %21, 0
  br i1 %tobool69.not, label %if.end97, label %do.body77, !prof !255

do.body77:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_handler.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_handler, %land.lhs.true)) #8
          to label %cleanup [label %land.lhs.true], !srcloc !250

land.lhs.true:                                    ; preds = %do.body77
  %call89 = tail call i32 @___ratelimit(ptr noundef nonnull @msi2500_isoc_handler._rs, ptr noundef nonnull @.str.52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.lhs.true.cleanup_crit_edge, label %if.then91

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then91:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number_of_packets, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_handler.descriptor, ptr noundef %23, ptr noundef nonnull @.str.59, i32 noundef %i.0249, i32 noundef %25, i32 noundef %21) #8
  br label %cleanup

if.end97:                                         ; preds = %for.body
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0249, i32 2
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp100 = icmp eq i32 %27, 0
  br i1 %cmp100, label %if.end97.cleanup_crit_edge, label %if.end108, !prof !251

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end108:                                        ; preds = %if.end97
  %28 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transfer_buffer, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock.i) #8
  %32 = ptrtoint ptr %queued_bufs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %queued_bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %33, %queued_bufs.i
  br i1 %cmp.i.not.i, label %msi2500_get_next_fill_buf.exit.thread, label %if.end.i

msi2500_get_next_fill_buf.exit.thread:            ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #8
  br label %if.then119

if.end.i:                                         ; preds = %if.end108
  %add.ptr.i = getelementptr i8, ptr %33, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.msi2500_get_next_fill_buf.exit_crit_edge

if.end.i.msi2500_get_next_fill_buf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msi2500_get_next_fill_buf.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %msi2500_get_next_fill_buf.exit

msi2500_get_next_fill_buf.exit:                   ; preds = %if.end.i.i.i, %if.end.i.msi2500_get_next_fill_buf.exit_crit_edge
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock.i, i32 noundef %call2.i) #8
  %cmp112 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp112, label %msi2500_get_next_fill_buf.exit.if.then119_crit_edge, label %if.end142, !prof !251

msi2500_get_next_fill_buf.exit.if.then119_crit_edge: ; preds = %msi2500_get_next_fill_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then119:                                       ; preds = %msi2500_get_next_fill_buf.exit.if.then119_crit_edge, %msi2500_get_next_fill_buf.exit.thread
  %42 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vb_full, align 4
  %inc120 = add i32 %43, 1
  store i32 %inc120, ptr %vb_full, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_handler.descriptor.61, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_handler, %land.lhs.true133)) #8
          to label %cleanup [label %land.lhs.true133], !srcloc !250

land.lhs.true133:                                 ; preds = %if.then119
  %call134 = tail call i32 @___ratelimit(ptr noundef nonnull @msi2500_isoc_handler._rs.60, ptr noundef nonnull @.str.52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %land.lhs.true133.cleanup_crit_edge, label %if.then136

land.lhs.true133.cleanup_crit_edge:               ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then136:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %46 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vb_full, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_handler.descriptor.61, ptr noundef %45, ptr noundef nonnull @.str.62, i32 noundef %47) #8
  br label %cleanup

if.end142:                                        ; preds = %msi2500_get_next_fill_buf.exit
  %add.ptr = getelementptr i8, ptr %29, i32 %31
  %call143 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #8
  %call144 = tail call fastcc i32 @msi2500_convert_stream(ptr noundef %1, ptr noundef %call143, ptr noundef %add.ptr, i32 noundef %27)
  %num_planes.i = getelementptr i8, ptr %33, i32 -720
  %48 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.not.i = icmp eq i32 %49, 0
  br i1 %cmp.not.i, label %if.end142.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.end142.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.end142
  %length.i = getelementptr i8, ptr %33, i32 -648
  %50 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %call144)
  %cmp1.i = icmp ult i32 %51, %call144
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !255

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %52 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %53, %if.then38.i ], [ %call144, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %33, i32 -652
  %54 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end142.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %if.then136, %land.lhs.true133.cleanup_crit_edge, %if.then119, %if.end97.cleanup_crit_edge, %if.then91, %land.lhs.true.cleanup_crit_edge, %do.body77
  %inc149 = add nuw nsw i32 %i.0249, 1
  %55 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %number_of_packets, align 4
  %cmp67 = icmp slt i32 %inc149, %56
  br i1 %cmp67, label %cleanup.for.body_crit_edge, label %cleanup.handler_end_crit_edge

cleanup.handler_end_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %handler_end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

handler_end:                                      ; preds = %cleanup.handler_end_crit_edge, %if.else.handler_end_crit_edge, %if.then59, %do.body47, %do.end44.handler_end_crit_edge
  %call150 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151.not = icmp eq i32 %call150, 0
  br i1 %cmp151.not, label %handler_end.cleanup177_crit_edge, label %do.body159, !prof !255

handler_end.cleanup177_crit_edge:                 ; preds = %handler_end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup177

do.body159:                                       ; preds = %handler_end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_isoc_handler, %if.then171)) #8
          to label %cleanup177 [label %if.then171], !srcloc !250

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_isoc_handler.__UNIQUE_ID_ddebug309, ptr noundef %58, ptr noundef nonnull @.str.63, i32 noundef %call150) #8
  br label %cleanup177

cleanup177:                                       ; preds = %if.then171, %do.body159, %handler_end.cleanup177_crit_edge, %if.then13, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msi2500_iso_free(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_iso_free.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_iso_free, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_iso_free.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.062 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msi2500_dev, ptr %dev, i32 0, i32 17, i32 %i.062
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %do.body6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body6:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_iso_free.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_iso_free, %if.then18)) #8
          to label %do.end22 [label %if.then18], !srcloc !250

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_iso_free.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.51) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %do.end22.if.end34_crit_edge, label %if.then26

do.end22.if.end34_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then26:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 15
  %14 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %9, i32 noundef %15) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %do.end22.if.end34_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %17) #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi2500_convert_stream(ptr nocapture noundef %dev, ptr nocapture noundef writeonly %dst, ptr noundef %src, i32 noundef %src_len) unnamed_addr #2 align 64 {
entry:
  %sample = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sample) #8
  %0 = ptrtoint ptr %sample to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sample, align 4, !annotation !256
  %1 = getelementptr inbounds [3 x i32], ptr %sample, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !256
  %3 = getelementptr inbounds [3 x i32], ptr %sample, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %src_len)
  %cmp274.not = icmp ult i32 %src_len, 1024
  br i1 %cmp274.not, label %entry.for.end137_crit_edge, label %for.body.lr.ph

entry.for.end137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end137

for.body.lr.ph:                                   ; preds = %entry
  %div252 = lshr i32 %src_len, 10
  %next_sample = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 19
  %pixelformat = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc135.for.body_crit_edge, %for.body.lr.ph
  %dst.addr.0279 = phi ptr [ %dst, %for.body.lr.ph ], [ %dst.addr.1, %for.inc135.for.body_crit_edge ]
  %src.addr.0277 = phi ptr [ %src, %for.body.lr.ph ], [ %src.addr.1, %for.inc135.for.body_crit_edge ]
  %i.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %inc136, %for.inc135.for.body_crit_edge ]
  %dst_len.0275 = phi i32 [ 0, %for.body.lr.ph ], [ %dst_len.1, %for.inc135.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %src.addr.0277, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr i8, ptr %src.addr.0277, i32 2
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %8 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr i8, ptr %src.addr.0277, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %10 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %11 = ptrtoint ptr %src.addr.0277 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %src.addr.0277, align 1
  %conv9 = zext i8 %12 to i32
  %or11 = or i32 %or7, %conv9
  %arrayidx12 = getelementptr [3 x i32], ptr %sample, i32 0, i32 %i.0276
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or11, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0276)
  %cmp13 = icmp eq i32 %i.0276, 0
  br i1 %cmp13, label %land.lhs.true, label %for.body.do.body30_crit_edge

for.body.do.body30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

land.lhs.true:                                    ; preds = %for.body
  %14 = ptrtoint ptr %next_sample to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_sample, align 8
  %16 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sample, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp16.not = icmp eq i32 %15, %17
  br i1 %cmp16.not, label %land.lhs.true.do.body30_crit_edge, label %do.body

land.lhs.true.do.body30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_convert_stream.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_convert_stream, %land.lhs.true20)) #8
          to label %do.body30 [label %land.lhs.true20], !srcloc !250

land.lhs.true20:                                  ; preds = %do.body
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @msi2500_convert_stream._rs, ptr noundef nonnull @.str.64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.body30_crit_edge, label %if.then23

land.lhs.true20.do.body30_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = ptrtoint ptr %next_sample to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next_sample, align 8
  %sub = sub i32 %17, %21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_convert_stream.descriptor, ptr noundef %19, ptr noundef nonnull @.str.65, i32 noundef %sub, i32 noundef %src_len, i32 noundef %21, i32 noundef %17) #8
  br label %do.body30

do.body30:                                        ; preds = %if.then23, %land.lhs.true20.do.body30_crit_edge, %do.body, %land.lhs.true.do.body30_crit_edge, %for.body.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_convert_stream.descriptor.67, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_convert_stream, %land.lhs.true42)) #8
          to label %do.end50 [label %land.lhs.true42], !srcloc !250

land.lhs.true42:                                  ; preds = %do.body30
  %call43 = tail call i32 @___ratelimit(ptr noundef nonnull @msi2500_convert_stream._rs.66, ptr noundef nonnull @.str.64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end50_crit_edge, label %if.then45

land.lhs.true42.do.end50_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %arrayidx47 = getelementptr i8, ptr %src.addr.0277, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_convert_stream.descriptor.67, ptr noundef %23, ptr noundef nonnull @.str.68, i32 noundef 12, ptr noundef %arrayidx47) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %land.lhs.true42.do.end50_crit_edge, %do.body30
  %add.ptr = getelementptr i8, ptr %src.addr.0277, i32 16
  %24 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixelformat, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %25, label %do.end50.for.inc135_crit_edge [
    i32 942691651, label %do.end50.for.body54_crit_edge
    i32 909202755, label %do.end50.for.body68_crit_edge
    i32 876098381, label %do.body87
    i32 942691139, label %sw.bb114
    i32 842093380, label %sw.bb121
    i32 875647811, label %sw.bb128
  ]

do.end50.for.body68_crit_edge:                    ; preds = %do.end50
  br label %for.body68

do.end50.for.body54_crit_edge:                    ; preds = %do.end50
  br label %for.body54

do.end50.for.inc135_crit_edge:                    ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc135

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %do.end50.for.body54_crit_edge
  %j.0273 = phi i32 [ %inc, %for.body54.for.body54_crit_edge ], [ 0, %do.end50.for.body54_crit_edge ]
  %u8dst.0272 = phi ptr [ %incdec.ptr57, %for.body54.for.body54_crit_edge ], [ %dst.addr.0279, %do.end50.for.body54_crit_edge ]
  %s8src.0271 = phi ptr [ %incdec.ptr, %for.body54.for.body54_crit_edge ], [ %add.ptr, %do.end50.for.body54_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %s8src.0271, i32 1
  %27 = ptrtoint ptr %s8src.0271 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %s8src.0271, align 1
  %add = xor i8 %28, -128
  %incdec.ptr57 = getelementptr i8, ptr %u8dst.0272, i32 1
  %29 = ptrtoint ptr %u8dst.0272 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %add, ptr %u8dst.0272, align 1
  %inc = add nuw nsw i32 %j.0273, 1
  %exitcond.not = icmp eq i32 %inc, 1008
  br i1 %exitcond.not, label %for.end, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.end:                                          ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr59 = getelementptr i8, ptr %dst.addr.0279, i32 1008
  %add60 = add i32 %dst_len.0275, 1008
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12, align 4
  %add62 = add i32 %31, 504
  br label %for.inc135.sink.split

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %do.end50.for.body68_crit_edge
  %j.1270 = phi i32 [ %add78, %for.body68.for.body68_crit_edge ], [ 0, %do.end50.for.body68_crit_edge ]
  %u16dst.0268 = phi ptr [ %incdec.ptr76, %for.body68.for.body68_crit_edge ], [ %dst.addr.0279, %do.end50.for.body68_crit_edge ]
  %s16src.0267 = phi ptr [ %incdec.ptr69, %for.body68.for.body68_crit_edge ], [ %add.ptr, %do.end50.for.body68_crit_edge ]
  %incdec.ptr69 = getelementptr i16, ptr %s16src.0267, i32 1
  %32 = ptrtoint ptr %s16src.0267 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s16src.0267, align 2
  %bf.shl = shl i16 %33, 2
  %bf.ashr = ashr exact i16 %bf.shl, 2
  %narrow = add nsw i16 %bf.ashr, 8192
  %shl73 = shl nuw i16 %narrow, 2
  %shr = lshr i16 %narrow, 12
  %or74 = or i16 %shl73, %shr
  %incdec.ptr76 = getelementptr i16, ptr %u16dst.0268, i32 1
  %34 = ptrtoint ptr %u16dst.0268 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or74, ptr %u16dst.0268, align 2
  %add78 = add nuw nsw i32 %j.1270, 2
  %cmp66 = icmp ult i32 %j.1270, 1006
  br i1 %cmp66, label %for.body68.for.body68_crit_edge, label %for.end79

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body68

for.end79:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr81 = getelementptr i8, ptr %dst.addr.0279, i32 1008
  %add82 = add i32 %dst_len.0275, 1008
  %35 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx12, align 4
  %add84 = add i32 %36, 252
  br label %for.inc135.sink.split

do.body87:                                        ; preds = %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_convert_stream.descriptor.70, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_convert_stream, %land.lhs.true99)) #8
          to label %do.end107 [label %land.lhs.true99], !srcloc !250

land.lhs.true99:                                  ; preds = %do.body87
  %call100 = tail call i32 @___ratelimit(ptr noundef nonnull @msi2500_convert_stream._rs.69, ptr noundef nonnull @.str.64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %land.lhs.true99.do.end107_crit_edge, label %if.then102

land.lhs.true99.do.end107_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

if.then102:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %arrayidx104 = getelementptr i8, ptr %src.addr.0277, i32 1016
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_convert_stream.descriptor.70, ptr noundef %38, ptr noundef nonnull @.str.68, i32 noundef 24, ptr noundef %arrayidx104) #8
  br label %do.end107

do.end107:                                        ; preds = %if.then102, %land.lhs.true99.do.end107_crit_edge, %do.body87
  %39 = call ptr @memcpy(ptr %dst.addr.0279, ptr %add.ptr, i32 984)
  %add.ptr109 = getelementptr i8, ptr %dst.addr.0279, i32 984
  %add110 = add i32 %dst_len.0275, 984
  %add112 = add i32 %or11, 384
  br label %for.inc135.sink.split

sw.bb114:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call ptr @memcpy(ptr %dst.addr.0279, ptr %add.ptr, i32 1008)
  %add.ptr116 = getelementptr i8, ptr %dst.addr.0279, i32 1008
  %add117 = add i32 %dst_len.0275, 1008
  %add119 = add i32 %or11, 504
  br label %for.inc135.sink.split

sw.bb121:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %41 = call ptr @memcpy(ptr %dst.addr.0279, ptr %add.ptr, i32 1008)
  %add.ptr123 = getelementptr i8, ptr %dst.addr.0279, i32 1008
  %add124 = add i32 %dst_len.0275, 1008
  %add126 = add i32 %or11, 336
  br label %for.inc135.sink.split

sw.bb128:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %42 = call ptr @memcpy(ptr %dst.addr.0279, ptr %add.ptr, i32 1008)
  %add.ptr130 = getelementptr i8, ptr %dst.addr.0279, i32 1008
  %add131 = add i32 %dst_len.0275, 1008
  %add133 = add i32 %or11, 252
  br label %for.inc135.sink.split

for.inc135.sink.split:                            ; preds = %sw.bb128, %sw.bb121, %sw.bb114, %do.end107, %for.end79, %for.end
  %add62.sink = phi i32 [ %add62, %for.end ], [ %add84, %for.end79 ], [ %add112, %do.end107 ], [ %add119, %sw.bb114 ], [ %add126, %sw.bb121 ], [ %add133, %sw.bb128 ]
  %dst_len.1.ph = phi i32 [ %add60, %for.end ], [ %add82, %for.end79 ], [ %add110, %do.end107 ], [ %add117, %sw.bb114 ], [ %add124, %sw.bb121 ], [ %add131, %sw.bb128 ]
  %dst.addr.1.ph = phi ptr [ %add.ptr59, %for.end ], [ %add.ptr81, %for.end79 ], [ %add.ptr109, %do.end107 ], [ %add.ptr116, %sw.bb114 ], [ %add.ptr123, %sw.bb121 ], [ %add.ptr130, %sw.bb128 ]
  %src.addr.1.ph = getelementptr i8, ptr %src.addr.0277, i32 1024
  %43 = ptrtoint ptr %next_sample to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add62.sink, ptr %next_sample, align 8
  br label %for.inc135

for.inc135:                                       ; preds = %for.inc135.sink.split, %do.end50.for.inc135_crit_edge
  %dst_len.1 = phi i32 [ %dst_len.0275, %do.end50.for.inc135_crit_edge ], [ %dst_len.1.ph, %for.inc135.sink.split ]
  %src.addr.1 = phi ptr [ %add.ptr, %do.end50.for.inc135_crit_edge ], [ %src.addr.1.ph, %for.inc135.sink.split ]
  %dst.addr.1 = phi ptr [ %dst.addr.0279, %do.end50.for.inc135_crit_edge ], [ %dst.addr.1.ph, %for.inc135.sink.split ]
  %inc136 = add nuw nsw i32 %i.0276, 1
  %exitcond280.not = icmp eq i32 %inc136, %div252
  br i1 %exitcond280.not, label %for.inc135.for.end137_crit_edge, label %for.inc135.for.body_crit_edge

for.inc135.for.body_crit_edge:                    ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc135.for.end137_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end137

for.end137:                                       ; preds = %for.inc135.for.end137_crit_edge, %entry.for.end137_crit_edge
  %dst_len.0.lcssa = phi i32 [ 0, %entry.for.end137_crit_edge ], [ %dst_len.1, %for.inc135.for.end137_crit_edge ]
  %jiffies_next = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 21
  %44 = ptrtoint ptr %jiffies_next to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %jiffies_next, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub138 = sub i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub138)
  %cmp139 = icmp slt i32 %sub138, 0
  br i1 %cmp139, label %if.then147, label %for.end137.if.end179_crit_edge, !prof !251

for.end137.if.end179_crit_edge:                   ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

if.then147:                                       ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub149 = sub i32 1000, %45
  %add151 = add i32 %sub149, %47
  %call152 = tail call i32 @jiffies_to_msecs(i32 noundef %add151) #8
  %next_sample153 = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 19
  %48 = ptrtoint ptr %next_sample153 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %next_sample153, align 8
  %sample154 = getelementptr inbounds %struct.msi2500_dev, ptr %dev, i32 0, i32 20
  %50 = ptrtoint ptr %sample154 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sample154, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add157 = add i32 %52, 1000
  %53 = ptrtoint ptr %jiffies_next to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add157, ptr %jiffies_next, align 8
  store i32 %49, ptr %sample154, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_convert_stream.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_convert_stream, %if.then173)) #8
          to label %if.end179 [label %if.then173], !srcloc !250

if.then173:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  %sub155 = sub i32 %49, %51
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %mul = mul i32 %sub155, 1000
  %div175 = udiv i32 %mul, %call152
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_convert_stream.__UNIQUE_ID_ddebug305, ptr noundef %55, ptr noundef nonnull @.str.71, i32 noundef %src_len, i32 noundef %sub155, i32 noundef %call152, i32 noundef %div175) #8
  br label %if.end179

if.end179:                                        ; preds = %if.then173, %if.then147, %for.end137.if.end179_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sample) #8
  ret i32 %dst_len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
define internal i32 @msi2500_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_querycap.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_querycap, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_querycap.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 1, i32 12
  %call8 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #8
  %udev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 10
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
  %call.i15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.81, ptr noundef %9, ptr noundef %devpath.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_enum_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_enum_fmt_sdr_cap, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug332, ptr noundef %3, ptr noundef nonnull @.str.83, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %num_formats = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x %struct.msi2500_format], ptr @formats, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %pixelformat9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_g_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_g_fmt_sdr_cap.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_g_fmt_sdr_cap, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pixelformat = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_g_fmt_sdr_cap.__UNIQUE_ID_ddebug333, ptr noundef %3, ptr noundef nonnull @.str.85, ptr noundef %pixelformat) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pixelformat5 = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat5, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 13
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
define internal i32 @msi2500_s_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_s_fmt_sdr_cap.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_s_fmt_sdr_cap, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_s_fmt_sdr_cap.__UNIQUE_ID_ddebug334, ptr noundef %3, ptr noundef nonnull @.str.85, ptr noundef %fmt) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_buffers.i = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 5, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %for.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %num_formats = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp48.not = icmp eq i32 %7, 0
  br i1 %cmp48.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fmt9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %fmt9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt9, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.msi2500_format], ptr @formats, i32 0, i32 %i.049
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp11 = icmp eq i32 %11, %9
  br i1 %cmp11, label %if.then12, label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %pixelformat15 = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %pixelformat15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %pixelformat15, align 4
  %buffersize = getelementptr [4 x %struct.msi2500_format], ptr @formats, i32 0, i32 %i.049, i32 1
  %13 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffersize, align 4
  %buffersize17 = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %buffersize17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buffersize17, align 8
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pixelformat23 = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %pixelformat23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 942691139, ptr %pixelformat23, align 4
  %buffersize24 = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %buffersize24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3024, ptr %buffersize24, align 8
  %fmt25 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %18 = ptrtoint ptr %fmt25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 942691139, ptr %fmt25, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.then12
  %.sink = phi i32 [ 3024, %for.end ], [ %14, %if.then12 ]
  %buffersize28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %buffersize28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %buffersize28, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_try_fmt_sdr_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_try_fmt_sdr_cap.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_try_fmt_sdr_cap, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_try_fmt_sdr_cap.__UNIQUE_ID_ddebug335, ptr noundef %3, ptr noundef nonnull @.str.85, ptr noundef %fmt) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_formats = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %fmt6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt6, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.msi2500_format], ptr @formats, i32 0, i32 %i.030
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp8 = icmp eq i32 %9, %7
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %buffersize = getelementptr [4 x %struct.msi2500_format], ptr @formats, i32 0, i32 %i.030, i32 1
  %10 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffersize, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %fmt14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %12 = ptrtoint ptr %fmt14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 942691139, ptr %fmt14, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9
  %.sink = phi i32 [ 3024, %for.end ], [ %11, %if.then9 ]
  %buffersize17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %buffersize17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %buffersize17, align 4
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
define internal i32 @msi2500_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_g_tuner.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_g_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_g_tuner.__UNIQUE_ID_ddebug337, ptr noundef %3, ptr noundef nonnull @.str.83, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %7, label %do.end.if.end38_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then10
  ]

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call7 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.89, i32 noundef 32) #8
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5120, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %11 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1200000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %12 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 15000000, ptr %rangehigh, align 4
  br label %if.end38

if.then10:                                        ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_subdev, align 8
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.then10.if.end38_crit_edge, label %if.else13

if.then10.if.end38_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else13:                                        ; preds = %if.then10
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tuner, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %if.else13.if.end38_crit_edge, label %land.lhs.true

if.else13.if.end38_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true:                                    ; preds = %if.else13
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g_tuner, align 4
  %tobool17.not = icmp eq ptr %20, null
  br i1 %tobool17.not, label %land.lhs.true.if.end38_crit_edge, label %if.else19

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else19:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %if.else19.if.else27_crit_edge, label %land.lhs.true21

if.else19.if.else27_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

land.lhs.true21:                                  ; preds = %if.else19
  %g_tuner22 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %g_tuner22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %g_tuner22, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %land.lhs.true21.if.else27_crit_edge, label %if.then24

land.lhs.true21.if.else27_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 %23(ptr noundef nonnull %14, ptr noundef %v) #8
  br label %if.end38

if.else27:                                        ; preds = %land.lhs.true21.if.else27_crit_edge, %if.else19.if.else27_crit_edge
  %call31 = tail call i32 %20(ptr noundef nonnull %14, ptr noundef %v) #8
  br label %if.end38

if.end38:                                         ; preds = %if.else27, %if.then24, %land.lhs.true.if.end38_crit_edge, %if.else13.if.end38_crit_edge, %if.then10.if.end38_crit_edge, %if.then6, %do.end.if.end38_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6 ], [ %call26, %if.then24 ], [ %call31, %if.else27 ], [ -19, %if.then10.if.end38_crit_edge ], [ -515, %land.lhs.true.if.end38_crit_edge ], [ -515, %if.else13.if.end38_crit_edge ], [ -22, %do.end.if.end38_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_s_tuner.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_s_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_s_tuner.__UNIQUE_ID_ddebug336, ptr noundef %3, ptr noundef nonnull @.str.83, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %7, label %if.else35 [
    i32 0, label %do.end.if.end37_crit_edge
    i32 1, label %if.then9
  ]

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then9:                                         ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_subdev, align 8
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.then9.if.end37_crit_edge, label %if.else12

if.then9.if.end37_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else12:                                        ; preds = %if.then9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tuner, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.else12.if.end37_crit_edge, label %land.lhs.true

if.else12.if.end37_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true:                                    ; preds = %if.else12
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_tuner, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %land.lhs.true.if.end37_crit_edge, label %if.else18

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else18:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %if.else18.if.else26_crit_edge, label %land.lhs.true20

if.else18.if.else26_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

land.lhs.true20:                                  ; preds = %if.else18
  %s_tuner21 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %s_tuner21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_tuner21, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %land.lhs.true20.if.else26_crit_edge, label %if.then23

land.lhs.true20.if.else26_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 %19(ptr noundef nonnull %10, ptr noundef %v) #8
  br label %if.end37

if.else26:                                        ; preds = %land.lhs.true20.if.else26_crit_edge, %if.else18.if.else26_crit_edge
  %call30 = tail call i32 %16(ptr noundef nonnull %10, ptr noundef %v) #8
  br label %if.end37

if.else35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.else26, %if.then23, %land.lhs.true.if.end37_crit_edge, %if.else12.if.end37_crit_edge, %if.then9.if.end37_crit_edge, %do.end.if.end37_crit_edge
  %ret.0 = phi i32 [ -22, %if.else35 ], [ %7, %do.end.if.end37_crit_edge ], [ %call25, %if.then23 ], [ %call30, %if.else26 ], [ -19, %if.then9.if.end37_crit_edge ], [ -515, %land.lhs.true.if.end37_crit_edge ], [ -515, %if.else12.if.end37_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_g_frequency.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_g_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_g_frequency.__UNIQUE_ID_ddebug338, ptr noundef %3, ptr noundef nonnull @.str.92, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %9, label %do.end.if.end39_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then9
  ]

do.end.if.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %f_adc = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_adc, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %frequency, align 4
  br label %if.end39

if.then9:                                         ; preds = %do.end
  %type10 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %14 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %type10, align 4
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %v4l2_subdev, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.then9.if.end39_crit_edge, label %if.else13

if.then9.if.end39_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.else13:                                        ; preds = %if.then9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %tuner14 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %tuner14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tuner14, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %if.else13.if.end39_crit_edge, label %land.lhs.true

if.else13.if.end39_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true:                                    ; preds = %if.else13
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %g_frequency, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %land.lhs.true.if.end39_crit_edge, label %if.else20

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.else20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %if.else20.if.else28_crit_edge, label %land.lhs.true22

if.else20.if.else28_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %g_frequency23 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %g_frequency23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %g_frequency23, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %land.lhs.true22.if.else28_crit_edge, label %if.then25

land.lhs.true22.if.else28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else28

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 %25(ptr noundef nonnull %16, ptr noundef %f) #8
  br label %if.end39

if.else28:                                        ; preds = %land.lhs.true22.if.else28_crit_edge, %if.else20.if.else28_crit_edge
  %call32 = tail call i32 %22(ptr noundef nonnull %16, ptr noundef %f) #8
  br label %if.end39

if.end39:                                         ; preds = %if.else28, %if.then25, %land.lhs.true.if.end39_crit_edge, %if.else13.if.end39_crit_edge, %if.then9.if.end39_crit_edge, %if.then6, %do.end.if.end39_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6 ], [ %call27, %if.then25 ], [ %call32, %if.else28 ], [ -19, %if.then9.if.end39_crit_edge ], [ -515, %land.lhs.true.if.end39_crit_edge ], [ -515, %if.else13.if.end39_crit_edge ], [ -22, %do.end.if.end39_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_s_frequency.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_s_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_s_frequency.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.94, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %11, label %do.end.if.end66_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then37
  ]

do.end.if.end66_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then6:                                         ; preds = %do.end
  %frequency7 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %frequency7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency7, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 1200000)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 15000000)
  %f_adc = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %f_adc, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_s_frequency.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_s_frequency, %if.then28)) #8
          to label %do.end33 [label %if.then28], !srcloc !250

if.then28:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_adc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_s_frequency.__UNIQUE_ID_ddebug344, ptr noundef %19, ptr noundef nonnull @.str.95, i32 noundef %21) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %if.then6
  %call34 = tail call fastcc i32 @msi2500_set_usb_adc(ptr noundef %1)
  br label %if.end66

if.then37:                                        ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v4l2_subdev, align 8
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %if.then37.if.end66_crit_edge, label %if.else40

if.then37.if.end66_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else40:                                        ; preds = %if.then37
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %tuner41 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %tuner41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner41, align 4
  %tobool42.not = icmp eq ptr %27, null
  br i1 %tobool42.not, label %if.else40.if.end66_crit_edge, label %land.lhs.true

if.else40.if.end66_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.lhs.true:                                    ; preds = %if.else40
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_frequency, align 4
  %tobool45.not = icmp eq ptr %29, null
  br i1 %tobool45.not, label %land.lhs.true.if.end66_crit_edge, label %if.else47

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else47:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool48.not = icmp eq ptr %30, null
  br i1 %tobool48.not, label %if.else47.if.else55_crit_edge, label %land.lhs.true49

if.else47.if.else55_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else55

land.lhs.true49:                                  ; preds = %if.else47
  %s_frequency50 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %s_frequency50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_frequency50, align 4
  %tobool51.not = icmp eq ptr %32, null
  br i1 %tobool51.not, label %land.lhs.true49.if.else55_crit_edge, label %if.then52

land.lhs.true49.if.else55_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else55

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 %32(ptr noundef nonnull %23, ptr noundef %f) #8
  br label %if.end66

if.else55:                                        ; preds = %land.lhs.true49.if.else55_crit_edge, %if.else47.if.else55_crit_edge
  %call59 = tail call i32 %29(ptr noundef nonnull %23, ptr noundef %f) #8
  br label %if.end66

if.end66:                                         ; preds = %if.else55, %if.then52, %land.lhs.true.if.end66_crit_edge, %if.else40.if.end66_crit_edge, %if.then37.if.end66_crit_edge, %do.end33, %do.end.if.end66_crit_edge
  %ret.0 = phi i32 [ %call34, %do.end33 ], [ %call54, %if.then52 ], [ %call59, %if.else55 ], [ -19, %if.then37.if.end66_crit_edge ], [ -515, %land.lhs.true.if.end66_crit_edge ], [ -515, %if.else40.if.end66_crit_edge ], [ -22, %do.end.if.end66_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi2500_enum_freq_bands(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msi2500_enum_freq_bands.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msi2500_enum_freq_bands, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msi2500_enum_freq_bands.__UNIQUE_ID_ddebug345, ptr noundef %3, ptr noundef nonnull @.str.97, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %band, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %11, label %do.end.if.end44_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then15
  ]

do.end.if.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then6:                                         ; preds = %do.end
  %index7 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %13 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.not = icmp eq i32 %14, 0
  br i1 %cmp8.not, label %if.else, label %if.then6.if.end44_crit_edge

if.then6.if.end44_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memcpy(ptr %band, ptr @bands, i32 64)
  br label %if.end44

if.then15:                                        ; preds = %do.end
  %v4l2_subdev = getelementptr inbounds %struct.msi2500_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v4l2_subdev, align 8
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.then15.if.end44_crit_edge, label %if.else18

if.then15.if.end44_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.else18:                                        ; preds = %if.then15
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %tuner19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tuner19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner19, align 4
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %if.else18.if.end44_crit_edge, label %land.lhs.true

if.else18.if.end44_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true:                                    ; preds = %if.else18
  %enum_freq_bands = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %enum_freq_bands to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enum_freq_bands, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %land.lhs.true.if.end44_crit_edge, label %if.else25

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.else25:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %if.else25.if.else33_crit_edge, label %land.lhs.true27

if.else25.if.else33_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else33

land.lhs.true27:                                  ; preds = %if.else25
  %enum_freq_bands28 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %enum_freq_bands28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enum_freq_bands28, align 4
  %tobool29.not = icmp eq ptr %26, null
  br i1 %tobool29.not, label %land.lhs.true27.if.else33_crit_edge, label %if.then30

land.lhs.true27.if.else33_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else33

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 %26(ptr noundef nonnull %17, ptr noundef %band) #8
  br label %if.end44

if.else33:                                        ; preds = %land.lhs.true27.if.else33_crit_edge, %if.else25.if.else33_crit_edge
  %call37 = tail call i32 %23(ptr noundef nonnull %17, ptr noundef %band) #8
  br label %if.end44

if.end44:                                         ; preds = %if.else33, %if.then30, %land.lhs.true.if.end44_crit_edge, %if.else18.if.end44_crit_edge, %if.then15.if.end44_crit_edge, %if.else, %if.then6.if.end44_crit_edge, %do.end.if.end44_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %if.then6.if.end44_crit_edge ], [ %call32, %if.then30 ], [ %call37, %if.else33 ], [ -19, %if.then15.if.end44_crit_edge ], [ -515, %land.lhs.true.if.end44_crit_edge ], [ -515, %if.else18.if.end44_crit_edge ], [ -22, %do.end.if.end44_crit_edge ]
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
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !129, !130, !131, !133, !134, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !174, !175, !176, !178, !179, !180, !182, !183, !185, !187, !189, !191, !192, !194, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !210, !211, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__param_emulated_formats, !1, !"__param_emulated_formats", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_emulated_formatstype303, !1, !"__UNIQUE_ID_emulated_formatstype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_emulated_formats304, !4, !"__UNIQUE_ID_emulated_formats304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 28, i32 1}
!5 = !{ptr @__initcall__kmod_msi2500__347_1305_msi2500_driver_init6, !6, !"__initcall__kmod_msi2500__347_1305_msi2500_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1305, i32 1}
!7 = !{ptr @__exitcall_msi2500_driver_exit, !6, !"__exitcall_msi2500_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author348, !9, !"__UNIQUE_ID_author348", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1307, i32 1}
!10 = !{ptr @__UNIQUE_ID_description349, !11, !"__UNIQUE_ID_description349", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1308, i32 1}
!12 = !{ptr @__UNIQUE_ID_file350, !13, !"__UNIQUE_ID_file350", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1309, i32 1}
!14 = !{ptr @__UNIQUE_ID_license351, !13, !"__UNIQUE_ID_license351", i1 false, i1 false}
!15 = !{ptr @msi2500_emulated_fmt, !16, !"msi2500_emulated_fmt", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 26, i32 13}
!17 = !{ptr @__param_str_emulated_formats, !1, !"__param_str_emulated_formats", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @msi2500_driver, !20, !"msi2500_driver", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1298, i32 26}
!21 = !{ptr @msi2500_probe.board_info, !22, !"board_info", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1168, i32 31}
!23 = !{ptr @msi2500_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1181, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @msi2500_probe.__key.2, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1182, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @msi2500_probe.__key.4, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1183, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1204, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @msi2500_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @msi2500_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1218, i32 3}
!42 = !{ptr @msi2500_probe._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @msi2500_probe._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1244, i32 3}
!46 = !{ptr @msi2500_probe._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @msi2500_probe._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @msi2500_probe._key, !49, !"_key", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1250, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1253, i32 3}
!53 = !{ptr @msi2500_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @msi2500_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1268, i32 3}
!57 = !{ptr @msi2500_probe._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @msi2500_probe._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1272, i32 2}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @msi2500_probe._entry.24, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @msi2500_probe._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1274, i32 2}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @msi2500_probe._entry.28, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @msi2500_probe._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @bands, !70, !"bands", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 56, i32 41}
!71 = !{ptr @formats, !72, !"formats", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 74, i32 30}
!73 = !{ptr @msi2500_vb2_ops, !74, !"msi2500_vb2_ops", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 881, i32 29}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 605, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @msi2500_queue_setup.__UNIQUE_ID_ddebug321, !76, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 611, i32 2}
!81 = !{ptr @msi2500_queue_setup.__UNIQUE_ID_ddebug326, !80, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 831, i32 2}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @msi2500_start_streaming.__UNIQUE_ID_ddebug330, !83, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 775, i32 3}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @msi2500_set_usb_adc.__UNIQUE_ID_ddebug328, !87, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 789, i32 2}
!92 = !{ptr @msi2500_set_usb_adc.__UNIQUE_ID_ddebug329, !91, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 484, i32 2}
!95 = !{ptr @msi2500_isoc_init.__UNIQUE_ID_ddebug315, !94, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 500, i32 3}
!98 = !{ptr @msi2500_isoc_init.__UNIQUE_ID_ddebug316, !97, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 510, i32 4}
!101 = !{ptr @msi2500_isoc_init._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @msi2500_isoc_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 530, i32 4}
!105 = !{ptr @msi2500_isoc_init._entry.43, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @msi2500_isoc_init._entry_ptr.45, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 536, i32 3}
!109 = !{ptr @msi2500_isoc_init.__UNIQUE_ID_ddebug317, !108, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 472, i32 2}
!112 = !{ptr @msi2500_isoc_cleanup.__UNIQUE_ID_ddebug314, !111, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 436, i32 2}
!115 = !{ptr @msi2500_iso_stop.__UNIQUE_ID_ddebug310, !114, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 441, i32 4}
!118 = !{ptr @msi2500_iso_stop.__UNIQUE_ID_ddebug311, !117, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 451, i32 2}
!121 = !{ptr @msi2500_iso_free.__UNIQUE_ID_ddebug312, !120, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 456, i32 4}
!124 = !{ptr @msi2500_iso_free.__UNIQUE_ID_ddebug313, !123, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 373, i32 3}
!127 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug306, !126, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!129 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 379, i32 3}
!133 = !{ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug307, !132, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 382, i32 4}
!136 = !{ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug308, !135, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 396, i32 4}
!139 = !{ptr @msi2500_isoc_handler._rs, !138, !"_rs", i1 false, i1 false}
!140 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @msi2500_isoc_handler.descriptor, !138, !"descriptor", i1 false, i1 false}
!142 = !{ptr @msi2500_isoc_handler._rs.60, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 413, i32 4}
!144 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @msi2500_isoc_handler.descriptor.61, !143, !"descriptor", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 429, i32 3}
!148 = !{ptr @msi2500_isoc_handler.__UNIQUE_ID_ddebug309, !147, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!149 = !{ptr @msi2500_convert_stream._rs, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 255, i32 4}
!151 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @msi2500_convert_stream.descriptor, !150, !"descriptor", i1 false, i1 false}
!154 = !{ptr @msi2500_convert_stream._rs.66, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 266, i32 3}
!156 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @msi2500_convert_stream.descriptor.67, !155, !"descriptor", i1 false, i1 false}
!158 = !{ptr @msi2500_convert_stream._rs.69, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 309, i32 4}
!160 = !{ptr @msi2500_convert_stream.descriptor.70, !159, !"descriptor", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 351, i32 3}
!163 = !{ptr @msi2500_convert_stream.__UNIQUE_ID_ddebug305, !162, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!166 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 548, i32 2}
!169 = !{ptr @msi2500_cleanup_queued_bufs.__UNIQUE_ID_ddebug318, !168, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 659, i32 2}
!172 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @msi2500_ctrl_msg.__UNIQUE_ID_ddebug327, !171, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 664, i32 3}
!178 = !{ptr @msi2500_ctrl_msg._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @msi2500_ctrl_msg._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 859, i32 2}
!182 = !{ptr @msi2500_stop_streaming.__UNIQUE_ID_ddebug331, !181, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!183 = !{ptr @msi2500_template, !184, !"msi2500_template", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1123, i32 34}
!185 = !{ptr @msi2500_fops, !186, !"msi2500_fops", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1113, i32 42}
!187 = !{ptr @msi2500_ioctl_ops, !188, !"msi2500_ioctl_ops", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1083, i32 36}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 589, i32 2}
!191 = !{ptr @msi2500_querycap.__UNIQUE_ID_ddebug320, !190, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/linux/usb.h", i32 912, i32 31}
!194 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 895, i32 2}
!196 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @msi2500_enum_fmt_sdr_cap.__UNIQUE_ID_ddebug332, !195, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 910, i32 2}
!200 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @msi2500_g_fmt_sdr_cap.__UNIQUE_ID_ddebug333, !199, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 926, i32 2}
!204 = !{ptr @msi2500_s_fmt_sdr_cap.__UNIQUE_ID_ddebug334, !203, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 955, i32 2}
!207 = !{ptr @msi2500_try_fmt_sdr_cap.__UNIQUE_ID_ddebug335, !206, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 994, i32 2}
!210 = !{ptr @msi2500_g_tuner.__UNIQUE_ID_ddebug337, !209, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!211 = !{ptr @.str.89, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 997, i32 20}
!213 = !{ptr @.str.90, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 977, i32 2}
!215 = !{ptr @msi2500_s_tuner.__UNIQUE_ID_ddebug336, !214, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1018, i32 2}
!218 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @msi2500_g_frequency.__UNIQUE_ID_ddebug338, !217, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!220 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1039, i32 2}
!222 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @msi2500_s_frequency.__UNIQUE_ID_ddebug339, !221, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!224 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1046, i32 3}
!226 = !{ptr @msi2500_s_frequency.__UNIQUE_ID_ddebug344, !225, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1063, i32 2}
!229 = !{ptr @.str.97, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @msi2500_enum_freq_bands.__UNIQUE_ID_ddebug345, !228, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1148, i32 3}
!233 = !{ptr @.str.99, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @msi2500_transfer_one_message.__UNIQUE_ID_ddebug346, !232, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!235 = !{ptr @.str.100, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 569, i32 2}
!237 = !{ptr @msi2500_disconnect.__UNIQUE_ID_ddebug319, !236, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!238 = !{ptr @msi2500_id_table, !239, !"msi2500_id_table", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/msi2500/msi2500.c", i32 1290, i32 35}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i8 0, i8 2}
!250 = !{i64 2148988131, i64 2148988136, i64 2148988149, i64 2148988193, i64 2148988227, i64 2148988248}
!251 = !{!"branch_weights", i32 1, i32 2000}
!252 = !{i64 735634, i64 735661, i64 735683, i64 735711}
!253 = !{i64 736042, i64 736069, i64 736102, i64 736123, i64 736150, i64 736176}
!254 = !{!"branch_weights", i32 2000000, i32 4004001, i32 4002000, i32 -292967296, i32 -294967296}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{!"auto-init"}
