; ModuleID = '/llk/IR_all_yes/drivers/media/usb/hackrf/hackrf.c_pt.bc'
source_filename = "../drivers/media/usb/hackrf/hackrf.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hackrf_dev = type { i32, ptr, ptr, ptr, %struct.video_device, %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.mutex, %struct.mutex, [6 x ptr], i32, i32, [6 x ptr], [6 x i32], i32, i32, [24 x i8], i32, i32, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.hackrf_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
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
%struct.v4l2_modulator = type { i32, [32 x i8], i32, i32, i32, i32, i32, [3 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__param_str_enable_rf_gain_ctrl = internal constant [27 x i8] c"hackrf.enable_rf_gain_ctrl\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@hackrf_enable_rf_gain_ctrl = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_rf_gain_ctrl = internal constant %struct.kernel_param { ptr @__param_str_enable_rf_gain_ctrl, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @hackrf_enable_rf_gain_ctrl } }, section "__param", align 4
@__UNIQUE_ID_enable_rf_gain_ctrltype303 = internal constant [41 x i8] c"hackrf.parmtype=enable_rf_gain_ctrl:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_rf_gain_ctrl304 = internal constant [97 x i8] c"hackrf.parm=enable_rf_gain_ctrl:enable RX/TX RF amplifier control (warn: could damage amplifier)\00", section ".modinfo", align 1
@__initcall__kmod_hackrf__368_1545_hackrf_driver_init6 = internal global ptr @hackrf_driver_init, section ".initcall6.init", align 4
@hackrf_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @hackrf_probe, ptr @hackrf_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hackrf_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_hackrf_driver_exit = internal global ptr @hackrf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author369 = internal constant [45 x i8] c"hackrf.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description370 = internal constant [26 x i8] c"hackrf.description=HackRF\00", section ".modinfo", align 1
@__UNIQUE_ID_file371 = internal constant [44 x i8] c"hackrf.file=drivers/media/usb/hackrf/hackrf\00", section ".modinfo", align 1
@__UNIQUE_ID_license372 = internal constant [19 x i8] c"hackrf.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hackrf\00", [25 x i8] zeroinitializer }, align 32
@hackrf_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7504, i16 24713, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hackrf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->v4l2_lock\00", [16 x i8] zeroinitializer }, align 32
@hackrf_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->vb_queue_lock\00", [44 x i8] zeroinitializer }, align 32
@hackrf_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->buffer_list_lock\00", [41 x i8] zeroinitializer }, align 32
@bands_adc_dac = internal constant { [1 x %struct.v4l2_frequency_band], [32 x i8] } { [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 4, i32 0, i32 5120, i32 200000, i32 24000000, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@bands_rx_tx = internal constant { [1 x %struct.v4l2_frequency_band], [32 x i8] } { [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 1, i32 5, i32 0, i32 5120, i32 1, i32 -2, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@hackrf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1383, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not detect board\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hackrf_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/hackrf/hackrf.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr = internal global ptr @hackrf_probe._entry, section ".printk_index", align 4
@hackrf_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1388, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Board ID: %02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.14 = internal global ptr @hackrf_probe._entry.11, section ".printk_index", align 4
@hackrf_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 1389, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Firmware version: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.17 = internal global ptr @hackrf_probe._entry.15, section ".printk_index", align 4
@hackrf_vb2_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @hackrf_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hackrf_start_streaming, ptr @hackrf_stop_streaming, ptr @hackrf_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@hackrf_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 1402, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not initialize rx vb2 queue\0A\00", [61 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.20 = internal global ptr @hackrf_probe._entry.18, section ".printk_index", align 4
@hackrf_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.8, i32 1417, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not initialize tx vb2 queue\0A\00", [61 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.23 = internal global ptr @hackrf_probe._entry.21, section ".printk_index", align 4
@hackrf_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hackrf:1422:(&dev->rx_ctrl_handler)->_lock\00", [53 x i8] zeroinitializer }, align 32
@hackrf_ctrl_ops_rx = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hackrf_s_ctrl_rx }, [20 x i8] zeroinitializer }, align 32
@hackrf_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.8, i32 1438, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.27 = internal global ptr @hackrf_probe._entry.25, section ".printk_index", align 4
@hackrf_probe._key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hackrf:1445:(&dev->tx_ctrl_handler)->_lock\00", [53 x i8] zeroinitializer }, align 32
@hackrf_ctrl_ops_tx = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hackrf_s_ctrl_tx }, [20 x i8] zeroinitializer }, align 32
@hackrf_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.8, i32 1459, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.31 = internal global ptr @hackrf_probe._entry.30, section ".printk_index", align 4
@hackrf_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.7, ptr @.str.8, i32 1469, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register v4l2-device (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.34 = internal global ptr @hackrf_probe._entry.32, section ".printk_index", align 4
@hackrf_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @hackrf_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"HackRF One\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @hackrf_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@hackrf_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.7, ptr @.str.8, i32 1487, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register as video device (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.37 = internal global ptr @hackrf_probe._entry.35, section ".printk_index", align 4
@hackrf_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.7, ptr @.str.8, i32 1491, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Registered as %s\0A\00", [46 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.40 = internal global ptr @hackrf_probe._entry.38, section ".printk_index", align 4
@hackrf_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.7, ptr @.str.8, i32 1507, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.42 = internal global ptr @hackrf_probe._entry.41, section ".printk_index", align 4
@hackrf_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.7, ptr @.str.8, i32 1511, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.44 = internal global ptr @hackrf_probe._entry.43, section ".printk_index", align 4
@hackrf_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.7, ptr @.str.8, i32 1513, ptr @.str.47, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SDR API is still slightly experimental and functionality changes may follow\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@hackrf_probe._entry_ptr.48 = internal global ptr @hackrf_probe._entry.45, section ".printk_index", align 4
@hackrf_probe.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.49, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hackrf_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.8, i32 207, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown command %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hackrf_ctrl_msg\00", [16 x i8] zeroinitializer }, align 32
@hackrf_ctrl_msg._entry_ptr = internal global ptr @hackrf_ctrl_msg._entry, section ".printk_index", align 4
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@hackrf_ctrl_msg.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.8, ptr @.str.54, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%02x %02x %02x %02x %02x %02x %02x %02x %s %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@hackrf_ctrl_msg._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.8, i32 222, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"usb_control_msg() failed %d request %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@hackrf_ctrl_msg._entry_ptr.57 = internal global ptr @hackrf_ctrl_msg._entry.55, section ".printk_index", align 4
@hackrf_queue_setup.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.8, ptr @.str.59, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_queue_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbuffers=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@hackrf_queue_setup.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.8, ptr @.str.60, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nbuffers=%d sizes[0]=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@hackrf_start_streaming.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.8, ptr @.str.62, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hackrf_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"count=%i\0A\00", [22 x i8] zeroinitializer }, align 32
@hackrf_start_streaming.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.8, ptr @.str.49, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.8, ptr @.str.64, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hackrf_alloc_stream_bufs\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"all in all I will use %u bytes for streaming\0A\00", [50 x i8] zeroinitializer }, align 32
@hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.8, ptr @.str.65, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alloc buf=%d failed\0A\00", [43 x i8] zeroinitializer }, align 32
@hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.8, ptr @.str.66, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"alloc buf=%d %p (dma %llu)\0A\00", [36 x i8] zeroinitializer }, align 32
@hackrf_alloc_urbs.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.8, ptr @.str.68, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hackrf_alloc_urbs\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alloc urb=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_in._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_in.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.8, ptr @.str.71, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hackrf_urb_complete_in\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"status=%d length=%u/%u\0A\00", [40 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_in._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.8, i32 500, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"URB failed %d\0A\00", [17 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_in._entry_ptr = internal global ptr @hackrf_urb_complete_in._entry, section ".printk_index", align 4
@hackrf_urb_complete_in._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_in._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.70, ptr @.str.8, i32 510, ptr @.str.47, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"buffer is full - %u packets dropped\0A\00", [59 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_in._entry_ptr.77 = internal global ptr @hackrf_urb_complete_in._entry.75, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hackrf_copy_stream.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.8, ptr @.str.79, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_copy_stream\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"slen=%u samples=%u msecs=%u sample rate=%lu\0A\00", [51 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_out._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_out.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.8, ptr @.str.71, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hackrf_urb_complete_out\00", [40 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_out._rs.82 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.81, ptr @.str.8, i32 545, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_out._entry_ptr = internal global ptr @hackrf_urb_complete_out._entry, section ".printk_index", align 4
@hackrf_urb_complete_out._rs.83 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_out._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.81, ptr @.str.8, i32 554, ptr @.str.47, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"buffer is empty - %u packets dropped\0A\00", [58 x i8] zeroinitializer }, align 32
@hackrf_urb_complete_out._entry_ptr.86 = internal global ptr @hackrf_urb_complete_out._entry.84, section ".printk_index", align 4
@hackrf_submit_urbs.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.8, ptr @.str.88, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_submit_urbs\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"submit urb=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@hackrf_submit_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.8, i32 594, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Could not submit URB no. %d - get them all back\0A\00", [47 x i8] zeroinitializer }, align 32
@hackrf_submit_urbs._entry_ptr = internal global ptr @hackrf_submit_urbs._entry, section ".printk_index", align 4
@hackrf_set_params.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.91, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hackrf_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device is sleeping\0A\00", [44 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.92, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX ADC frequency=%u Hz\0A\00", [40 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.93, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX DAC frequency=%u Hz\0A\00", [40 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.94, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX bandwidth selected=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.95, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX bandwidth selected=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.96, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX RF frequency=%u Hz\0A\00", [41 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.97, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX RF frequency=%u Hz\0A\00", [41 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.98, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX RF gain val=%d->%d\0A\00", [41 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.99, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX RF gain val=%d->%d\0A\00", [41 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.100, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX LNA gain val=%d->%d\0A\00", [40 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.101, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IF gain val=%d->%d\0A\00", [44 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.102, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX LNA gain val=%d->%d\0A\00", [40 x i8] zeroinitializer }, align 32
@hackrf_set_params.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.8, ptr @.str.49, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hackrf_kill_urbs.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.8, ptr @.str.104, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hackrf_kill_urbs\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kill urb=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@hackrf_free_urbs.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.8, ptr @.str.106, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hackrf_free_urbs\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free urb=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.8, ptr @.str.108, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hackrf_free_stream_bufs\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free buf=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@hackrf_return_all_buffers.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.8, ptr @.str.110, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hackrf_return_all_buffers\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hackrf_return_all_buffers.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.8, ptr @.str.111, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_for_each_entry_safe\0A\00", [38 x i8] zeroinitializer }, align 32
@hackrf_stop_streaming.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.8, ptr @.str.110, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hackrf_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@hackrf_buf_queue._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hackrf_buf_queue.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.8, ptr @.str.110, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hackrf_buf_queue\00", [47 x i8] zeroinitializer }, align 32
@hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.8, ptr @.str.115, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hackrf_s_ctrl_rx\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown ctrl: id=%d name=%s\0A\00", [35 x i8] zeroinitializer }, align 32
@hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.8, ptr @.str.49, i8 1, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.8, ptr @.str.115, i8 1, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hackrf_s_ctrl_tx\00", [47 x i8] zeroinitializer }, align 32
@hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.8, ptr @.str.49, i8 1, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hackrf_video_release.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.8, ptr @.str.110, i8 1, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hackrf_video_release\00", [43 x i8] zeroinitializer }, align 32
@hackrf_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr @vb2_fop_write, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@hackrf_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @hackrf_querycap, ptr null, ptr null, ptr null, ptr @hackrf_enum_fmt_sdr, ptr @hackrf_enum_fmt_sdr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hackrf_g_fmt_sdr, ptr @hackrf_g_fmt_sdr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hackrf_s_fmt_sdr, ptr @hackrf_s_fmt_sdr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hackrf_try_fmt_sdr, ptr @hackrf_try_fmt_sdr, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hackrf_g_modulator, ptr @hackrf_s_modulator, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hackrf_g_tuner, ptr @hackrf_s_tuner, ptr @hackrf_g_frequency, ptr @hackrf_s_frequency, ptr @hackrf_enum_freq_bands, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@hackrf_querycap.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.8, ptr @.str.110, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hackrf_querycap\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@hackrf_enum_fmt_sdr.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.8, ptr @.str.121, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hackrf_enum_fmt_sdr\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"index=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@hackrf_g_fmt_sdr.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.8, ptr @.str.123, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hackrf_g_fmt_sdr\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pixelformat fourcc %4.4s\0A\00", [38 x i8] zeroinitializer }, align 32
@hackrf_s_fmt_sdr.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.8, ptr @.str.123, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hackrf_s_fmt_sdr\00", [47 x i8] zeroinitializer }, align 32
@hackrf_try_fmt_sdr.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.8, ptr @.str.123, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_try_fmt_sdr\00", [45 x i8] zeroinitializer }, align 32
@hackrf_g_modulator.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.8, ptr @.str.121, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_g_modulator\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HackRF DAC\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HackRF RF\00", [22 x i8] zeroinitializer }, align 32
@hackrf_s_modulator.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.8, ptr @.str.121, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_s_modulator\00", [45 x i8] zeroinitializer }, align 32
@hackrf_g_tuner.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.8, ptr @.str.121, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hackrf_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HackRF ADC\00", [21 x i8] zeroinitializer }, align 32
@hackrf_s_tuner.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.8, ptr @.str.121, i8 0, i8 -5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hackrf_s_tuner\00", [17 x i8] zeroinitializer }, align 32
@hackrf_g_frequency.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.8, ptr @.str.134, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_g_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tuner=%d type=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@hackrf_g_frequency.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.8, ptr @.str.49, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hackrf_s_frequency.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.8, ptr @.str.136, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hackrf_s_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tuner=%d type=%d frequency=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@hackrf_s_frequency.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.8, ptr @.str.49, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hackrf_enum_freq_bands.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.8, ptr @.str.138, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hackrf_enum_freq_bands\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner=%d type=%d index=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@hackrf_disconnect.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.8, ptr @.str.110, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hackrf_disconnect\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 1, i64 6, i64 7, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.140 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.141 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 32, i64 10619147, i64 10619148, i64 10619168, i64 10619178, i64 10619198]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 32, i64 10619147, i64 10619148, i64 10619168, i64 10619178]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"hackrf_enable_rf_gain_ctrl\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 23, i32 13 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"hackrf_driver\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1538, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1545, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"hackrf_id_table\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1531, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1358, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1359, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1360, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"bands_adc_dac\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 49, i32 41 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"bands_rx_tx\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 60, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1383, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1388, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1389, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"hackrf_vb2_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 885, i32 29 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1402, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1417, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1422, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"hackrf_ctrl_ops_rx\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1337, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1438, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1445, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"hackrf_ctrl_ops_tx\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1341, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1459, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1469, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [16 x i8] c"hackrf_template\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1245, i32 34 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1486, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1490, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1506, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1510, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1513, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1526, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 207, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 218, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 221, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 757, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 765, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 797, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 625, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 633, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 639, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 682, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 488, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 500, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 508, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 468, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1163, i32 7 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 533, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 545, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 552, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 590, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 593, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 265, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 271, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 276, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 312, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 328, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 347, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 352, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 375, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 387, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 399, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 410, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 421, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 576, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 656, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 609, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 735, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 744, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 864, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 778, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1286, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1321, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1256, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [12 x i8] c"hackrf_fops\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1234, i32 42 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"hackrf_ioctl_ops\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1195, i32 36 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 900, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 912, i32 31 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 990, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 954, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 921, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 969, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1062, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1065, i32 20 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1072, i32 20 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1051, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1023, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1026, i32 20 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1006, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1140, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1094, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1171, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.585 = private constant [37 x i8] c"../drivers/media/usb/hackrf/hackrf.c\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 710, i32 2 }
@llvm.compiler.used = appending global [176 x ptr] [ptr @__UNIQUE_ID_author369, ptr @__UNIQUE_ID_description370, ptr @__UNIQUE_ID_enable_rf_gain_ctrl304, ptr @__UNIQUE_ID_enable_rf_gain_ctrltype303, ptr @__UNIQUE_ID_file371, ptr @__UNIQUE_ID_license372, ptr @__exitcall_hackrf_driver_exit, ptr @__initcall__kmod_hackrf__368_1545_hackrf_driver_init6, ptr @__param_enable_rf_gain_ctrl, ptr @hackrf_ctrl_msg._entry, ptr @hackrf_ctrl_msg._entry.55, ptr @hackrf_ctrl_msg._entry_ptr, ptr @hackrf_ctrl_msg._entry_ptr.57, ptr @hackrf_driver_exit, ptr @hackrf_probe._entry, ptr @hackrf_probe._entry.11, ptr @hackrf_probe._entry.15, ptr @hackrf_probe._entry.18, ptr @hackrf_probe._entry.21, ptr @hackrf_probe._entry.25, ptr @hackrf_probe._entry.30, ptr @hackrf_probe._entry.32, ptr @hackrf_probe._entry.35, ptr @hackrf_probe._entry.38, ptr @hackrf_probe._entry.41, ptr @hackrf_probe._entry.43, ptr @hackrf_probe._entry.45, ptr @hackrf_probe._entry_ptr, ptr @hackrf_probe._entry_ptr.14, ptr @hackrf_probe._entry_ptr.17, ptr @hackrf_probe._entry_ptr.20, ptr @hackrf_probe._entry_ptr.23, ptr @hackrf_probe._entry_ptr.27, ptr @hackrf_probe._entry_ptr.31, ptr @hackrf_probe._entry_ptr.34, ptr @hackrf_probe._entry_ptr.37, ptr @hackrf_probe._entry_ptr.40, ptr @hackrf_probe._entry_ptr.42, ptr @hackrf_probe._entry_ptr.44, ptr @hackrf_probe._entry_ptr.48, ptr @hackrf_submit_urbs._entry, ptr @hackrf_submit_urbs._entry_ptr, ptr @hackrf_urb_complete_in._entry, ptr @hackrf_urb_complete_in._entry.75, ptr @hackrf_urb_complete_in._entry_ptr, ptr @hackrf_urb_complete_in._entry_ptr.77, ptr @hackrf_urb_complete_out._entry, ptr @hackrf_urb_complete_out._entry.84, ptr @hackrf_urb_complete_out._entry_ptr, ptr @hackrf_urb_complete_out._entry_ptr.86, ptr @hackrf_enable_rf_gain_ctrl, ptr @hackrf_driver, ptr @.str, ptr @hackrf_id_table, ptr @hackrf_probe.__key, ptr @.str.1, ptr @hackrf_probe.__key.2, ptr @.str.3, ptr @hackrf_probe.__key.4, ptr @.str.5, ptr @bands_adc_dac, ptr @bands_rx_tx, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @hackrf_vb2_ops, ptr @.str.19, ptr @.str.22, ptr @hackrf_probe._key, ptr @.str.24, ptr @hackrf_ctrl_ops_rx, ptr @.str.26, ptr @hackrf_probe._key.28, ptr @.str.29, ptr @hackrf_ctrl_ops_tx, ptr @.str.33, ptr @hackrf_template, ptr @.str.36, ptr @.str.39, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @hackrf_urb_complete_in._rs, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @hackrf_urb_complete_in._rs.72, ptr @.str.73, ptr @hackrf_urb_complete_in._rs.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @hackrf_urb_complete_out._rs, ptr @.str.81, ptr @hackrf_urb_complete_out._rs.82, ptr @hackrf_urb_complete_out._rs.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @hackrf_buf_queue._rs, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @hackrf_fops, ptr @hackrf_ioctl_ops, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_enable_rf_gain_ctrl to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands_adc_dac to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands_rx_tx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_vb2_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_ctrl_ops_rx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_ctrl_ops_tx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_ctrl_msg._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_in._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_in._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_in._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_in._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_out._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_out._rs.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_out._rs.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_urb_complete_out._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_submit_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_buf_queue._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hackrf_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @hackrf_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hackrf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @hackrf_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  %buf = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #9
  %0 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %u8tmp, align 1, !annotation !345
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #9
  %1 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 23
  %2 = call ptr @memset(ptr %buf, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4680) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body210_crit_edge, label %do.body

entry.do.body210_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body210

do.body:                                          ; preds = %entry
  %v4l2_lock = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %v4l2_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hackrf_probe.__key) #9
  %vb_queue_lock = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @hackrf_probe.__key.2) #9
  %buffer_list_lock = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %buffer_list_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @hackrf_probe.__key.4, i16 noundef signext 3) #9
  %rx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %rx_buffer_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %rx_buffer_list, ptr %rx_buffer_list, align 8
  %prev.i = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_buffer_list, ptr %prev.i, align 4
  %tx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %tx_buffer_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tx_buffer_list, ptr %tx_buffer_list, align 8
  %prev.i363 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i363 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx_buffer_list, ptr %prev.i363, align 4
  %intf8 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %intf8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %intf, ptr %intf8, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev10 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev9, ptr %dev10, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -128
  %udev = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %udev, align 4
  %pixelformat = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 29
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 942691139, ptr %pixelformat, align 8
  %buffersize = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 30
  %14 = ptrtoint ptr %buffersize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %buffersize, align 4
  %f_adc = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 25
  %15 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 200000, ptr %f_adc, align 8
  %f_dac = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 26
  %16 = ptrtoint ptr %f_dac to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 200000, ptr %f_dac, align 4
  %f_rx = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 27
  %17 = ptrtoint ptr %f_rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %f_rx, align 8
  %f_tx = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 28
  %18 = ptrtoint ptr %f_tx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %f_tx, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef nonnull %call7.i.i) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef nonnull %call7.i.i) #9
  tail call void @_set_bit(i32 noundef 15, ptr noundef nonnull %call7.i.i) #9
  tail call void @_set_bit(i32 noundef 16, ptr noundef nonnull %call7.i.i) #9
  %call15 = call fastcc i32 @hackrf_ctrl_msg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 14, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %if.end18, label %do.body.do.end23_crit_edge

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

if.end18:                                         ; preds = %do.body
  %call17 = call fastcc i32 @hackrf_ctrl_msg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 15, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end25, label %if.end18.do.end23_crit_edge

if.end18.do.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end23:                                         ; preds = %if.end18.do.end23_crit_edge, %do.body.do.end23_crit_edge
  %ret.0375 = phi i32 [ %call17, %if.end18.do.end23_crit_edge ], [ %call15, %do.body.do.end23_crit_edge ]
  %19 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6) #13
  br label %err_kfree

if.end25:                                         ; preds = %if.end18
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %1, align 1
  %22 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev10, align 8
  %24 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %u8tmp, align 1
  %conv = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %conv) #13
  %26 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev10, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.16, ptr noundef nonnull %buf) #13
  %rx_vb2_queue = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %rx_vb2_queue to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 11, ptr %rx_vb2_queue, align 8
  %io_modes = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 23, ptr %io_modes, align 4
  %ops = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7, i32 7
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hackrf_vb2_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7, i32 8
  %31 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %drv_priv = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7, i32 10
  %32 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7, i32 12
  %33 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 744, ptr %buf_struct_size, align 8
  %timestamp_flags = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7, i32 13
  %34 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8192, ptr %timestamp_flags, align 4
  %call42 = call i32 @vb2_queue_init(ptr noundef %rx_vb2_queue) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.19) #13
  br label %err_kfree

if.end49:                                         ; preds = %if.end25
  %tx_vb2_queue = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8
  %37 = ptrtoint ptr %tx_vb2_queue to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %tx_vb2_queue, align 8
  %io_modes52 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %io_modes52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 27, ptr %io_modes52, align 4
  %ops54 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8, i32 7
  %39 = ptrtoint ptr %ops54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @hackrf_vb2_ops, ptr %ops54, align 4
  %mem_ops56 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8, i32 8
  %40 = ptrtoint ptr %mem_ops56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops56, align 8
  %drv_priv58 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8, i32 10
  %41 = ptrtoint ptr %drv_priv58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %drv_priv58, align 8
  %buf_struct_size60 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8, i32 12
  %42 = ptrtoint ptr %buf_struct_size60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 744, ptr %buf_struct_size60, align 8
  %timestamp_flags62 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8, i32 13
  %43 = ptrtoint ptr %timestamp_flags62 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8192, ptr %timestamp_flags62, align 4
  %call64 = call i32 @vb2_queue_init(ptr noundef %tx_vb2_queue) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.22) #13
  br label %err_kfree

if.end71:                                         ; preds = %if.end49
  %rx_ctrl_handler = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 31
  %call72 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %rx_ctrl_handler, i32 noundef 5, ptr noundef nonnull @hackrf_probe._key, ptr noundef nonnull @.str.24) #9
  %call74 = call ptr @v4l2_ctrl_new_std(ptr noundef %rx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_rx, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 1) #9
  %rx_bandwidth_auto = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 32
  %46 = ptrtoint ptr %rx_bandwidth_auto to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call74, ptr %rx_bandwidth_auto, align 8
  %call76 = call ptr @v4l2_ctrl_new_std(ptr noundef %rx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_rx, i32 noundef 10619148, i64 noundef 1750000, i64 noundef 28000000, i64 noundef 50000, i64 noundef 1750000) #9
  %rx_bandwidth = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 33
  %47 = ptrtoint ptr %rx_bandwidth to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call76, ptr %rx_bandwidth, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %rx_bandwidth_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %call79 = call ptr @v4l2_ctrl_new_std(ptr noundef %rx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_rx, i32 noundef 10619168, i64 noundef 0, i64 noundef 12, i64 noundef 12, i64 noundef 0) #9
  %rx_rf_gain = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 34
  %48 = ptrtoint ptr %rx_rf_gain to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call79, ptr %rx_rf_gain, align 8
  %call81 = call ptr @v4l2_ctrl_new_std(ptr noundef %rx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_rx, i32 noundef 10619178, i64 noundef 0, i64 noundef 40, i64 noundef 8, i64 noundef 0) #9
  %rx_lna_gain = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 35
  %49 = ptrtoint ptr %rx_lna_gain to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call81, ptr %rx_lna_gain, align 4
  %call83 = call ptr @v4l2_ctrl_new_std(ptr noundef %rx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_rx, i32 noundef 10619198, i64 noundef 0, i64 noundef 62, i64 noundef 2, i64 noundef 0) #9
  %rx_if_gain = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 36
  %50 = ptrtoint ptr %rx_if_gain to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call83, ptr %rx_if_gain, align 8
  %error = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 31, i32 9
  %51 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool85.not = icmp eq i32 %52, 0
  br i1 %tobool85.not, label %if.end93, label %if.then86

if.then86:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.26) #13
  br label %err_v4l2_ctrl_handler_free_rx

if.end93:                                         ; preds = %if.end71
  %55 = ptrtoint ptr %rx_rf_gain to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_rf_gain, align 8
  %57 = load i8, ptr @hackrf_enable_rf_gain_ctrl, align 1, !range !346
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool95.not = icmp eq i8 %57, 0
  call fastcc void @v4l2_ctrl_grab(ptr noundef %56, i1 noundef zeroext %tobool95.not)
  %call97 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %rx_ctrl_handler) #9
  %tx_ctrl_handler = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 37
  %call99 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %tx_ctrl_handler, i32 noundef 4, ptr noundef nonnull @hackrf_probe._key.28, ptr noundef nonnull @.str.29) #9
  %call101 = call ptr @v4l2_ctrl_new_std(ptr noundef %tx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_tx, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 1) #9
  %tx_bandwidth_auto = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 38
  %58 = ptrtoint ptr %tx_bandwidth_auto to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call101, ptr %tx_bandwidth_auto, align 4
  %call103 = call ptr @v4l2_ctrl_new_std(ptr noundef %tx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_tx, i32 noundef 10619148, i64 noundef 1750000, i64 noundef 28000000, i64 noundef 50000, i64 noundef 1750000) #9
  %tx_bandwidth = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 39
  %59 = ptrtoint ptr %tx_bandwidth to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call103, ptr %tx_bandwidth, align 8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %tx_bandwidth_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %call106 = call ptr @v4l2_ctrl_new_std(ptr noundef %tx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_tx, i32 noundef 10619178, i64 noundef 0, i64 noundef 47, i64 noundef 1, i64 noundef 0) #9
  %tx_lna_gain = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 41
  %60 = ptrtoint ptr %tx_lna_gain to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call106, ptr %tx_lna_gain, align 8
  %call108 = call ptr @v4l2_ctrl_new_std(ptr noundef %tx_ctrl_handler, ptr noundef nonnull @hackrf_ctrl_ops_tx, i32 noundef 10619168, i64 noundef 0, i64 noundef 15, i64 noundef 15, i64 noundef 0) #9
  %tx_rf_gain = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 40
  %61 = ptrtoint ptr %tx_rf_gain to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call108, ptr %tx_rf_gain, align 4
  %error110 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 37, i32 9
  %62 = ptrtoint ptr %error110 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool111.not = icmp eq i32 %63, 0
  br i1 %tobool111.not, label %if.end119, label %if.then112

if.then112:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.26) #13
  br label %err_v4l2_ctrl_handler_free_tx

if.end119:                                        ; preds = %if.end93
  %66 = load i8, ptr @hackrf_enable_rf_gain_ctrl, align 1, !range !346
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool121.not = icmp eq i8 %66, 0
  call fastcc void @v4l2_ctrl_grab(ptr noundef %call108, i1 noundef zeroext %tobool121.not)
  %call124 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %tx_ctrl_handler) #9
  %v4l2_dev = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 6
  %release = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 6, i32 9
  %67 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @hackrf_video_release, ptr %release, align 4
  %call127 = call i32 @v4l2_device_register(ptr noundef %dev9, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end134, label %do.end132

do.end132:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33, i32 noundef %call127) #13
  br label %err_v4l2_ctrl_handler_free_tx

if.end134:                                        ; preds = %if.end119
  %rx_vdev = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4
  %70 = call ptr @memcpy(ptr %rx_vdev, ptr @hackrf_template, i32 1352)
  %queue = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 10
  %71 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %rx_vb2_queue, ptr %queue, align 8
  %lock = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 7, i32 5
  %72 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %vb_queue_lock, ptr %lock, align 4
  %v4l2_dev142 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 7
  %73 = ptrtoint ptr %v4l2_dev142 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %v4l2_dev, ptr %v4l2_dev142, align 4
  %ctrl_handler = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 9
  %74 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %rx_ctrl_handler, ptr %ctrl_handler, align 4
  %lock147 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 26
  %75 = ptrtoint ptr %lock147 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %v4l2_lock, ptr %lock147, align 8
  %vfl_dir = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 14
  %76 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 4
  %77 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 85000192, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %rx_vdev, i32 noundef 4, i32 noundef -1, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool153.not = icmp eq i32 %call.i, 0
  %79 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev10, align 8
  br i1 %tobool153.not, label %do.end162, label %do.end157

do.end157:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.36, i32 noundef %call.i) #13
  br label %err_v4l2_device_unregister

do.end162:                                        ; preds = %if.end134
  %init_name.i.i = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 3
  %81 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end162.video_device_node_name.exit_crit_edge

do.end162.video_device_node_name.exit_crit_edge:  ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 4, i32 5
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end162.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %84, %if.end.i.i ], [ %82, %do.end162.video_device_node_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i.i) #13
  %tx_vdev = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5
  %85 = call ptr @memcpy(ptr %tx_vdev, ptr @hackrf_template, i32 1352)
  %queue168 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 10
  %86 = ptrtoint ptr %queue168 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %tx_vb2_queue, ptr %queue168, align 8
  %lock172 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 8, i32 5
  %87 = ptrtoint ptr %lock172 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %vb_queue_lock, ptr %lock172, align 4
  %v4l2_dev175 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 7
  %88 = ptrtoint ptr %v4l2_dev175 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %v4l2_dev, ptr %v4l2_dev175, align 4
  %ctrl_handler178 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 9
  %89 = ptrtoint ptr %ctrl_handler178 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %tx_ctrl_handler, ptr %ctrl_handler178, align 4
  %lock181 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 26
  %90 = ptrtoint ptr %lock181 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %v4l2_lock, ptr %lock181, align 8
  %vfl_dir183 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 14
  %91 = ptrtoint ptr %vfl_dir183 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %vfl_dir183, align 4
  %device_caps185 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 4
  %92 = ptrtoint ptr %device_caps185 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 88604672, ptr %device_caps185, align 8
  %driver_data.i.i364 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 8
  %93 = ptrtoint ptr %driver_data.i.i364 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %driver_data.i.i364, align 4
  %call.i366 = call i32 @__video_register_device(ptr noundef %tx_vdev, i32 noundef 4, i32 noundef -1, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %tobool189.not = icmp eq i32 %call.i366, 0
  %94 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev10, align 8
  br i1 %tobool189.not, label %do.end198, label %do.end193

do.end193:                                        ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.36, i32 noundef %call.i366) #13
  call void @video_unregister_device(ptr noundef %rx_vdev) #9
  br label %err_v4l2_device_unregister

do.end198:                                        ; preds = %video_device_node_name.exit
  %init_name.i.i367 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 3
  %96 = ptrtoint ptr %init_name.i.i367 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i.i367, align 8
  %tobool.not.i.i368 = icmp eq ptr %97, null
  br i1 %tobool.not.i.i368, label %if.end.i.i370, label %do.end198.video_device_node_name.exit372_crit_edge

do.end198.video_device_node_name.exit372_crit_edge: ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit372

if.end.i.i370:                                    ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i369 = getelementptr inbounds %struct.hackrf_dev, ptr %call7.i.i, i32 0, i32 5, i32 5
  %98 = ptrtoint ptr %dev.i369 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i369, align 8
  br label %video_device_node_name.exit372

video_device_node_name.exit372:                   ; preds = %if.end.i.i370, %do.end198.video_device_node_name.exit372_crit_edge
  %retval.0.i.i371 = phi ptr [ %99, %if.end.i.i370 ], [ %97, %do.end198.video_device_node_name.exit372_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i.i371) #13
  %100 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev10, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %101, ptr noundef nonnull @.str.46) #13
  br label %cleanup

err_v4l2_device_unregister:                       ; preds = %do.end193, %do.end157
  %ret.1 = phi i32 [ %call.i, %do.end157 ], [ %call.i366, %do.end193 ]
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  br label %err_v4l2_ctrl_handler_free_tx

err_v4l2_ctrl_handler_free_tx:                    ; preds = %err_v4l2_device_unregister, %do.end132, %if.then112
  %ret.2 = phi i32 [ %63, %if.then112 ], [ %call127, %do.end132 ], [ %ret.1, %err_v4l2_device_unregister ]
  call void @v4l2_ctrl_handler_free(ptr noundef %tx_ctrl_handler) #9
  br label %err_v4l2_ctrl_handler_free_rx

err_v4l2_ctrl_handler_free_rx:                    ; preds = %err_v4l2_ctrl_handler_free_tx, %if.then86
  %ret.3 = phi i32 [ %52, %if.then86 ], [ %ret.2, %err_v4l2_ctrl_handler_free_tx ]
  call void @v4l2_ctrl_handler_free(ptr noundef %rx_ctrl_handler) #9
  br label %err_kfree

err_kfree:                                        ; preds = %err_v4l2_ctrl_handler_free_rx, %do.end69, %do.end47, %do.end23
  %ret.4 = phi i32 [ %ret.0375, %do.end23 ], [ %call42, %do.end47 ], [ %call64, %do.end69 ], [ %ret.3, %err_v4l2_ctrl_handler_free_rx ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body210

do.body210:                                       ; preds = %err_kfree, %entry.do.body210_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err_kfree ], [ -12, %entry.do.body210_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_probe.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_probe, %if.then217)) #9
          to label %cleanup [label %if.then217], !srcloc !347

if.then217:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #11
  %dev218 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_probe.__UNIQUE_ID_ddebug367, ptr noundef %dev218, ptr noundef nonnull @.str.49, i32 noundef %ret.5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then217, %do.body210, %video_device_node_name.exit372
  %retval.0 = phi i32 [ 0, %video_device_node_name.exit372 ], [ %ret.5, %if.then217 ], [ %ret.5, %do.body210 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hackrf_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_disconnect.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_disconnect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr i8, ptr %1, i32 -2712
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_disconnect.__UNIQUE_ID_ddebug332, ptr noundef %3, ptr noundef nonnull @.str.110) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vb_queue_lock = getelementptr i8, ptr %1, i32 1316
  tail call void @mutex_lock_nested(ptr noundef %vb_queue_lock, i32 noundef 0) #9
  %v4l2_lock = getelementptr i8, ptr %1, i32 1224
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #9
  %udev = getelementptr i8, ptr %1, i32 -2708
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %udev, align 4
  tail call void @v4l2_device_disconnect(ptr noundef %1) #9
  %tx_vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %tx_vdev) #9
  %rx_vdev = getelementptr i8, ptr %1, i32 -2704
  tail call void @video_unregister_device(ptr noundef %rx_vdev) #9
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  tail call void @mutex_unlock(ptr noundef %vb_queue_lock) #9
  %call9 = tail call i32 @v4l2_device_put(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef %data, i16 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %request to i32
  %0 = zext i8 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %request, label %do.end [
    i8 1, label %entry._crit_edge
    i8 16, label %entry._crit_edge130
    i8 17, label %entry._crit_edge131
    i8 6, label %entry._crit_edge132
    i8 7, label %entry._crit_edge133
    i8 14, label %entry.if.end_crit_edge
    i8 15, label %entry.if.end_crit_edge134
    i8 19, label %entry.if.end_crit_edge135
    i8 20, label %entry.if.end_crit_edge136
    i8 21, label %entry.if.end_crit_edge137
  ]

entry.if.end_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry._crit_edge133:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

entry._crit_edge132:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

entry._crit_edge131:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

entry._crit_edge130:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge134, %entry.if.end_crit_edge135, %entry.if.end_crit_edge136, %entry.if.end_crit_edge137
  %udev2107 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %udev2107 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev2107, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i92108 = shl i32 %6, 8
  %or5109 = or i32 %shl.i92108, -2147483520
  %buf11 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 24
  %call13 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or5109, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %buf11, i16 noundef zeroext %size, i32 noundef 1000) #9
  br label %13

7:                                                ; preds = %entry._crit_edge, %entry._crit_edge130, %entry._crit_edge131, %entry._crit_edge132, %entry._crit_edge133
  %udev = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %buf = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 24
  %conv9 = zext i16 %size to i32
  %12 = call ptr @memcpy(ptr %buf, ptr %data, i32 %conv9)
  %call13119 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %buf, i16 noundef zeroext %size, i32 noundef 1000) #9
  br label %13

13:                                               ; preds = %7, %if.end
  %call13127 = phi i32 [ %call13119, %7 ], [ %call13, %if.end ]
  %buf11124 = phi ptr [ %buf, %7 ], [ %buf11, %if.end ]
  %conv8102122 = phi i32 [ 64, %7 ], [ 192, %if.end ]
  %tobool.not104120 = phi i1 [ true, %7 ], [ false, %if.end ]
  %14 = phi ptr [ @.str.53, %7 ], [ @.str.52, %if.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_ctrl_msg.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_ctrl_msg, %if.then24)) #9
          to label %do.end44 [label %if.then24], !srcloc !347

if.then24:                                        ; preds = %13
  call void @__sanitizer_cov_trace_pc() #11
  %dev25 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev25, align 8
  %conv28 = zext i16 %value to i32
  %and29 = and i32 %conv28, 255
  %17 = lshr i32 %conv28, 8
  %conv31 = zext i16 %index to i32
  %and32 = and i32 %conv31, 255
  %18 = lshr i32 %conv31, 8
  %conv35 = zext i16 %size to i32
  %and36 = and i32 %conv35, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_ctrl_msg.__UNIQUE_ID_ddebug305, ptr noundef %16, ptr noundef nonnull @.str.54, i32 noundef %conv8102122, i32 noundef %conv, i32 noundef %and29, i32 noundef %17, i32 noundef %and32, i32 noundef %18, i32 noundef %and36, i32 noundef 0, ptr noundef nonnull %14, i32 noundef %conv35, ptr noundef %buf11124) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then24, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13127)
  %cmp = icmp slt i32 %call13127, 0
  br i1 %cmp, label %do.end49, label %if.end52

do.end49:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  %19 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.56, i32 noundef %call13127, i32 noundef %conv) #13
  br label %cleanup

if.end52:                                         ; preds = %do.end44
  br i1 %tobool.not104120, label %if.end52.cleanup_crit_edge, label %if.then56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %conv59 = zext i16 %size to i32
  %21 = call ptr @memcpy(ptr %data, ptr %buf11124, i32 %conv59)
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end52.cleanup_crit_edge, %do.end49, %do.end
  %retval.0 = phi i32 [ 0, %if.then56 ], [ 0, %if.end52.cleanup_crit_edge ], [ -22, %do.end ], [ %call13127, %do.end49 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v4l2_ctrl_grab(ptr noundef %ctrl, i1 noundef zeroext %grabbed) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %ctrl, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %ctrl, i1 noundef zeroext %grabbed) #9
  %4 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i, align 8
  %lock.i6 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lock.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i6, align 4
  tail call void @mutex_unlock(ptr noundef %7) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hackrf_video_release(ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_video_release.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_video_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr i8, ptr %v, i32 -2712
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_video_release.__UNIQUE_ID_ddebug362, ptr noundef %1, ptr noundef nonnull @.str.110) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %v, i32 -2720
  %rx_ctrl_handler = getelementptr i8, ptr %v, i32 1544
  tail call void @v4l2_ctrl_handler_free(ptr noundef %rx_ctrl_handler) #9
  %tx_ctrl_handler = getelementptr i8, ptr %v, i32 1748
  tail call void @v4l2_ctrl_handler_free(ptr noundef %tx_ctrl_handler) #9
  tail call void @v4l2_device_unregister(ptr noundef %v) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_queue_setup.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_queue_setup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %4 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbuffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_queue_setup.__UNIQUE_ID_ddebug335, ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %5) #9
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
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 8, %7
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nplanes, align 4
  %buffersize = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffersize, align 4
  %add8 = add i32 %13, 4095
  %and = and i32 %add8, -4096
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_queue_setup.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_queue_setup, %if.then21)) #9
          to label %do.end26 [label %if.then21], !srcloc !347

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev22, align 8
  %17 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbuffers, align 4
  %19 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_queue_setup.__UNIQUE_ID_ddebug336, ptr noundef %16, ptr noundef nonnull @.str.60, i32 noundef %18, i32 noundef %20) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %if.end7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_start_streaming.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_start_streaming, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_start_streaming.__UNIQUE_ID_ddebug337, ptr noundef %dev5, ptr noundef nonnull @.str.62, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %v4l2_lock = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp = icmp eq i32 %5, 11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %1, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.then6.if.end18_crit_edge, label %if.then6.err_hackrf_return_all_buffers_crit_edge

if.then6.err_hackrf_return_all_buffers_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_hackrf_return_all_buffers

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %do.end
  %9 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.else.if.end18_crit_edge, label %if.else.err_hackrf_return_all_buffers_crit_edge

if.else.err_hackrf_return_all_buffers_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_hackrf_return_all_buffers

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then6.if.end18_crit_edge
  %.sink = phi i32 [ 4, %if.then6.if.end18_crit_edge ], [ 5, %if.else.if.end18_crit_edge ]
  %mode.0 = phi i16 [ 1, %if.then6.if.end18_crit_edge ], [ 2, %if.else.if.end18_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %1) #9
  %sequence = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sequence, align 4
  %call19 = tail call fastcc i32 @hackrf_alloc_stream_bufs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end22:                                         ; preds = %if.end18
  %call24 = tail call fastcc i32 @hackrf_alloc_urbs(ptr noundef %1, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.err_crit_edge

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end27:                                         ; preds = %if.end22
  %call28 = tail call fastcc i32 @hackrf_submit_urbs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.err_crit_edge

if.end27.err_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end31:                                         ; preds = %if.end27
  %call32 = tail call fastcc i32 @hackrf_set_params(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.err_crit_edge

if.end31.err_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end35:                                         ; preds = %if.end31
  %call36 = tail call fastcc i32 @hackrf_ctrl_msg(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %mode.0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.err_crit_edge

if.end35.err_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  br label %cleanup

err:                                              ; preds = %if.end35.err_crit_edge, %if.end31.err_crit_edge, %if.end27.err_crit_edge, %if.end22.err_crit_edge, %if.end18.err_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end18.err_crit_edge ], [ %call24, %if.end22.err_crit_edge ], [ %call28, %if.end27.err_crit_edge ], [ %call32, %if.end31.err_crit_edge ], [ %call36, %if.end35.err_crit_edge ]
  %urbs_submitted.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %urbs_submitted.i, align 4
  %i.02.i = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %err.hackrf_kill_urbs.exit_crit_edge

err.hackrf_kill_urbs.exit_crit_edge:              ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %err
  %dev3.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_start_streaming, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !347

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, ptr noundef %14, ptr noundef nonnull @.str.104, i32 noundef %i.04.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.hackrf_dev, ptr %1, i32 0, i32 17, i32 %i.04.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #9
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.hackrf_kill_urbs.exit_crit_edge

do.end.i.hackrf_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

hackrf_kill_urbs.exit:                            ; preds = %do.end.i.hackrf_kill_urbs.exit_crit_edge, %err.hackrf_kill_urbs.exit_crit_edge
  %17 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %urbs_submitted.i, align 4
  tail call fastcc void @hackrf_free_urbs(ptr noundef %1)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %hackrf_kill_urbs.exit.hackrf_free_stream_bufs.exit_crit_edge, label %while.cond.preheader.i

hackrf_kill_urbs.exit.hackrf_free_stream_bufs.exit_crit_edge: ; preds = %hackrf_kill_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

while.cond.preheader.i:                           ; preds = %hackrf_kill_urbs.exit
  %buf_num.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not2.i = icmp eq i32 %21, 0
  br i1 %tobool1.not2.i, label %while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %dev7.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %udev.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 3
  %buf_size.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i101.while.body.i_crit_edge, %while.body.lr.ph.i
  %22 = phi i32 [ %21, %while.body.lr.ph.i ], [ %39, %do.end.i101.while.body.i_crit_edge ]
  %dec.i = add i32 %22, -1
  %23 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec.i, ptr %buf_num.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_start_streaming, %if.then6.i)) #9
          to label %do.end.i101 [label %if.then6.i], !srcloc !347

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev7.i, align 8
  %26 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_num.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326, ptr noundef %25, ptr noundef nonnull @.str.108, i32 noundef %27) #9
  br label %do.end.i101

do.end.i101:                                      ; preds = %if.then6.i, %while.body.i
  %28 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev.i, align 4
  %30 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_size.i, align 4
  %32 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_num.i, align 8
  %arrayidx.i100 = getelementptr %struct.hackrf_dev, ptr %1, i32 0, i32 20, i32 %33
  %34 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i100, align 4
  %arrayidx11.i = getelementptr %struct.hackrf_dev, ptr %1, i32 0, i32 21, i32 %33
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx11.i, align 4
  tail call void @usb_free_coherent(ptr noundef %29, i32 noundef %31, ptr noundef %35, i32 noundef %37) #9
  %38 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_num.i, align 8
  %tobool1.not.i = icmp eq i32 %39, 0
  br i1 %tobool1.not.i, label %do.end.i101.hackrf_free_stream_bufs.exit_crit_edge, label %do.end.i101.while.body.i_crit_edge

do.end.i101.while.body.i_crit_edge:               ; preds = %do.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end.i101.hackrf_free_stream_bufs.exit_crit_edge: ; preds = %do.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

hackrf_free_stream_bufs.exit:                     ; preds = %do.end.i101.hackrf_free_stream_bufs.exit_crit_edge, %while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge, %hackrf_kill_urbs.exit.hackrf_free_stream_bufs.exit_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 8
  %and14.i = and i32 %41, -2
  store i32 %and14.i, ptr %1, align 8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %1) #9
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %1) #9
  br label %err_hackrf_return_all_buffers

err_hackrf_return_all_buffers:                    ; preds = %hackrf_free_stream_bufs.exit, %if.else.err_hackrf_return_all_buffers_crit_edge, %if.then6.err_hackrf_return_all_buffers_crit_edge
  %ret.1 = phi i32 [ %ret.0, %hackrf_free_stream_bufs.exit ], [ -16, %if.then6.err_hackrf_return_all_buffers_crit_edge ], [ -16, %if.else.err_hackrf_return_all_buffers_crit_edge ]
  tail call fastcc void @hackrf_return_all_buffers(ptr noundef %vq, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_start_streaming.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_start_streaming, %if.then59)) #9
          to label %cleanup [label %if.then59], !srcloc !347

if.then59:                                        ; preds = %err_hackrf_return_all_buffers
  call void @__sanitizer_cov_trace_pc() #11
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_start_streaming.__UNIQUE_ID_ddebug338, ptr noundef %dev60, ptr noundef nonnull @.str.49, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %err_hackrf_return_all_buffers, %if.end39
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %ret.1, %if.then59 ], [ %ret.1, %err_hackrf_return_all_buffers ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hackrf_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_stop_streaming.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_stop_streaming, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_stop_streaming.__UNIQUE_ID_ddebug339, ptr noundef %dev5, ptr noundef nonnull @.str.110) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %v4l2_lock = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #9
  %call6 = tail call fastcc i32 @hackrf_ctrl_msg(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0)
  %urbs_submitted.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %urbs_submitted.i, align 4
  %i.02.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %do.end.hackrf_kill_urbs.exit_crit_edge

do.end.hackrf_kill_urbs.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %do.end
  %dev3.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_stop_streaming, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !347

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, ptr noundef %7, ptr noundef nonnull @.str.104, i32 noundef %i.04.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.hackrf_dev, ptr %1, i32 0, i32 17, i32 %i.04.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #9
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.hackrf_kill_urbs.exit_crit_edge

do.end.i.hackrf_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

hackrf_kill_urbs.exit:                            ; preds = %do.end.i.hackrf_kill_urbs.exit_crit_edge, %do.end.hackrf_kill_urbs.exit_crit_edge
  %10 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %urbs_submitted.i, align 4
  tail call fastcc void @hackrf_free_urbs(ptr noundef %1)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 8
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %hackrf_kill_urbs.exit.hackrf_free_stream_bufs.exit_crit_edge, label %while.cond.preheader.i

hackrf_kill_urbs.exit.hackrf_free_stream_bufs.exit_crit_edge: ; preds = %hackrf_kill_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

while.cond.preheader.i:                           ; preds = %hackrf_kill_urbs.exit
  %buf_num.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not2.i = icmp eq i32 %14, 0
  br i1 %tobool1.not2.i, label %while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %dev7.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %udev.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 3
  %buf_size.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i25.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi i32 [ %14, %while.body.lr.ph.i ], [ %32, %do.end.i25.while.body.i_crit_edge ]
  %dec.i = add i32 %15, -1
  %16 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %buf_num.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_stop_streaming, %if.then6.i)) #9
          to label %do.end.i25 [label %if.then6.i], !srcloc !347

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7.i, align 8
  %19 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_num.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326, ptr noundef %18, ptr noundef nonnull @.str.108, i32 noundef %20) #9
  br label %do.end.i25

do.end.i25:                                       ; preds = %if.then6.i, %while.body.i
  %21 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev.i, align 4
  %23 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_size.i, align 4
  %25 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_num.i, align 8
  %arrayidx.i24 = getelementptr %struct.hackrf_dev, ptr %1, i32 0, i32 20, i32 %26
  %27 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i24, align 4
  %arrayidx11.i = getelementptr %struct.hackrf_dev, ptr %1, i32 0, i32 21, i32 %26
  %29 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.i, align 4
  tail call void @usb_free_coherent(ptr noundef %22, i32 noundef %24, ptr noundef %28, i32 noundef %30) #9
  %31 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_num.i, align 8
  %tobool1.not.i = icmp eq i32 %32, 0
  br i1 %tobool1.not.i, label %do.end.i25.hackrf_free_stream_bufs.exit_crit_edge, label %do.end.i25.while.body.i_crit_edge

do.end.i25.while.body.i_crit_edge:                ; preds = %do.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end.i25.hackrf_free_stream_bufs.exit_crit_edge: ; preds = %do.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

hackrf_free_stream_bufs.exit:                     ; preds = %do.end.i25.hackrf_free_stream_bufs.exit_crit_edge, %while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge, %hackrf_kill_urbs.exit.hackrf_free_stream_bufs.exit_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 8
  %and14.i = and i32 %34, -2
  store i32 %and14.i, ptr %1, align 8
  tail call fastcc void @hackrf_return_all_buffers(ptr noundef %vq, i32 noundef 6)
  %35 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %36)
  %cmp = icmp eq i32 %36, 11
  %. = select i1 %cmp, i32 4, i32 5
  tail call void @_clear_bit(i32 noundef %., ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hackrf_buf_queue(ptr noundef %vb) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_buf_queue.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_buf_queue, %land.lhs.true)) #9
          to label %do.end [label %land.lhs.true], !srcloc !347

land.lhs.true:                                    ; preds = %entry
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @hackrf_buf_queue._rs, ptr noundef nonnull @.str.113) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.hackrf_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_buf_queue.descriptor, ptr noundef %dev10, ptr noundef nonnull @.str.110) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp = icmp eq i32 %7, 11
  %rx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %3, i32 0, i32 9
  %tx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %3, i32 0, i32 10
  %buffer_list.0 = select i1 %cmp, ptr %rx_buffer_list, ptr %tx_buffer_list
  %buffer_list_lock = getelementptr inbounds %struct.hackrf_dev, ptr %3, i32 0, i32 11
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_list_lock) #9
  %list = getelementptr inbounds %struct.hackrf_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %buffer_list.0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %buffer_list.0) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer_list.0, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.hackrf_buffer, ptr %vb, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_list_lock, i32 noundef %call18) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hackrf_alloc_stream_bufs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_num = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buf_num, align 8
  %buf_size = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65536, ptr %buf_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_alloc_stream_bufs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug327, ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef 393216) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf_num, align 8
  %dev47 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end56.for.body_crit_edge, %do.end
  %storemerge89 = phi i32 [ 0, %do.end ], [ %inc, %do.end56.for.body_crit_edge ]
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %arrayidx = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 21, i32 %storemerge89
  %call7 = tail call ptr @usb_alloc_coherent(ptr noundef %6, i32 noundef 65536, i32 noundef 3264, ptr noundef %arrayidx) #9
  %7 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_num, align 8
  %arrayidx9 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 20, i32 %8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %arrayidx9, align 4
  %10 = load i32, ptr %buf_num, align 8
  %arrayidx12 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 20, i32 %10
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %do.body15, label %do.body34

do.body15:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_alloc_stream_bufs, %if.then27)) #9
          to label %do.end31 [label %if.then27], !srcloc !347

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev47, align 8
  %15 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_num, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug328, ptr noundef %14, ptr noundef nonnull @.str.65, i32 noundef %16) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev, align 8
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end31.hackrf_free_stream_bufs.exit_crit_edge, label %while.cond.preheader.i

do.end31.hackrf_free_stream_bufs.exit_crit_edge:  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

while.cond.preheader.i:                           ; preds = %do.end31
  %19 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not2.i = icmp eq i32 %20, 0
  br i1 %tobool1.not2.i, label %while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %21 = phi i32 [ %38, %do.end.i.while.body.i_crit_edge ], [ %20, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %21, -1
  %22 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec.i, ptr %buf_num, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_alloc_stream_bufs, %if.then6.i)) #9
          to label %do.end.i [label %if.then6.i], !srcloc !347

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev47, align 8
  %25 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_num, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326, ptr noundef %24, ptr noundef nonnull @.str.108, i32 noundef %26) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %while.body.i
  %27 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev, align 4
  %29 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_size, align 4
  %31 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_num, align 8
  %arrayidx.i = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 20, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 21, i32 %32
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11.i, align 4
  tail call void @usb_free_coherent(ptr noundef %28, i32 noundef %30, ptr noundef %34, i32 noundef %36) #9
  %37 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_num, align 8
  %tobool1.not.i = icmp eq i32 %38, 0
  br i1 %tobool1.not.i, label %do.end.i.hackrf_free_stream_bufs.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end.i.hackrf_free_stream_bufs.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_free_stream_bufs.exit

hackrf_free_stream_bufs.exit:                     ; preds = %do.end.i.hackrf_free_stream_bufs.exit_crit_edge, %while.cond.preheader.i.hackrf_free_stream_bufs.exit_crit_edge, %do.end31.hackrf_free_stream_bufs.exit_crit_edge
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dev, align 8
  %and14.i = and i32 %40, -2
  store i32 %and14.i, ptr %dev, align 8
  br label %return

do.body34:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_alloc_stream_bufs, %if.then46)) #9
          to label %do.end56 [label %if.then46], !srcloc !347

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev47, align 8
  %43 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf_num, align 8
  %arrayidx51 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 20, i32 %44
  %45 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx51, align 4
  %arrayidx54 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 21, i32 %44
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx54, align 4
  %conv = zext i32 %48 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug329, ptr noundef %42, ptr noundef nonnull @.str.66, i32 noundef %44, ptr noundef %46, i64 noundef %conv) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then46, %do.body34
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dev, align 8
  %or = or i32 %50, 1
  store i32 %or, ptr %dev, align 8
  %51 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_num, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %buf_num, align 8
  %cmp = icmp slt i32 %inc, 6
  br i1 %cmp, label %do.end56.for.body_crit_edge, label %do.end56.return_crit_edge

do.end56.return_crit_edge:                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end56.for.body_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

return:                                           ; preds = %do.end56.return_crit_edge, %hackrf_free_stream_bufs.exit
  %retval.0 = phi i32 [ -12, %hackrf_free_stream_bufs.exit ], [ 0, %do.end56.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hackrf_alloc_urbs(ptr noundef %dev, i1 noundef zeroext %rcv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %. = select i1 %rcv, i32 -1069514624, i32 -1073676288
  %hackrf_urb_complete_in.hackrf_urb_complete_out = select i1 %rcv, ptr @hackrf_urb_complete_in, ptr @hackrf_urb_complete_out
  %or4 = or i32 %shl.i, %.
  %dev11 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  %udev26 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 3
  %urbs_initialized = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %if.end23.do.body_crit_edge, %entry
  %i.070 = phi i32 [ 0, %entry ], [ %inc35, %if.end23.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_alloc_urbs.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_alloc_urbs, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !347

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_alloc_urbs.__UNIQUE_ID_ddebug331, ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef %i.070) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call13 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %arrayidx = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 %i.070
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %for.cond18.preheader, label %if.end23

for.cond18.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.070)
  %cmp1971.not = icmp eq i32 %i.070, 0
  br i1 %cmp1971.not, label %for.cond18.preheader.cleanup_crit_edge, label %for.body20

for.cond18.preheader.cleanup_crit_edge:           ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body20:                                       ; preds = %for.cond18.preheader
  %arrayidx22 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 0
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx22, align 4
  tail call void @usb_free_urb(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.070)
  %exitcond75.not = icmp eq i32 %i.070, 1
  br i1 %exitcond75.not, label %for.body20.cleanup_crit_edge, label %for.body20.1

for.body20.cleanup_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body20.1:                                     ; preds = %for.body20
  %arrayidx22.1 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx22.1, align 4
  tail call void @usb_free_urb(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.070)
  %exitcond75.not.1 = icmp eq i32 %i.070, 2
  br i1 %exitcond75.not.1, label %for.body20.1.cleanup_crit_edge, label %for.body20.2

for.body20.1.cleanup_crit_edge:                   ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body20.2:                                     ; preds = %for.body20.1
  %arrayidx22.2 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx22.2, align 4
  tail call void @usb_free_urb(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.070)
  %exitcond75.not.2 = icmp eq i32 %i.070, 3
  br i1 %exitcond75.not.2, label %for.body20.2.cleanup_crit_edge, label %for.body20.3

for.body20.2.cleanup_crit_edge:                   ; preds = %for.body20.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body20.3:                                     ; preds = %for.body20.2
  %arrayidx22.3 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 3
  %13 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx22.3, align 4
  tail call void @usb_free_urb(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.070)
  %exitcond75.not.3 = icmp eq i32 %i.070, 4
  br i1 %exitcond75.not.3, label %for.body20.3.cleanup_crit_edge, label %for.body20.4

for.body20.3.cleanup_crit_edge:                   ; preds = %for.body20.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body20.4:                                     ; preds = %for.body20.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.4 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 4
  %15 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx22.4, align 4
  tail call void @usb_free_urb(ptr noundef %16) #9
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %17 = ptrtoint ptr %udev26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev26, align 4
  %arrayidx27 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 20, i32 %i.070
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx27, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 8
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 10
  %22 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or4, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 19
  %24 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65536, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 28
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %hackrf_urb_complete_in.hackrf_urb_complete_out, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 27
  %26 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %context4.i, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %transfer_flags, align 4
  %arrayidx30 = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 21, i32 %i.070
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30, align 4
  %32 = load ptr, ptr %arrayidx, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %transfer_dma, align 4
  %34 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %urbs_initialized, align 8
  %inc33 = add i32 %35, 1
  store i32 %inc33, ptr %urbs_initialized, align 8
  %inc35 = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc35, 6
  br i1 %exitcond.not, label %if.end23.cleanup_crit_edge, label %if.end23.do.body_crit_edge

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %for.body20.4, %for.body20.3.cleanup_crit_edge, %for.body20.2.cleanup_crit_edge, %for.body20.1.cleanup_crit_edge, %for.body20.cleanup_crit_edge, %for.cond18.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.cond18.preheader.cleanup_crit_edge ], [ -12, %for.body20.4 ], [ -12, %for.body20.3.cleanup_crit_edge ], [ -12, %for.body20.2.cleanup_crit_edge ], [ -12, %for.body20.1.cleanup_crit_edge ], [ -12, %for.body20.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hackrf_submit_urbs(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_initialized = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27 = icmp sgt i32 %1, 0
  br i1 %cmp27, label %do.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %dev3 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  %urbs_submitted = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 23
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %do.body.lr.ph
  %i.028 = phi i32 [ 0, %do.body.lr.ph ], [ %inc13, %if.end12.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_submit_urbs.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_submit_urbs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_submit_urbs.__UNIQUE_ID_ddebug325, ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef %i.028) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %arrayidx = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 %i.028
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %do.end
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.89, i32 noundef %i.028) #13
  %8 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urbs_submitted, align 4
  %i.02.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.end9.do.body.i_crit_edge, label %do.end9.hackrf_kill_urbs.exit_crit_edge

do.end9.hackrf_kill_urbs.exit_crit_edge:          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.end9.do.body.i_crit_edge:                      ; preds = %do.end9
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.end9.do.body.i_crit_edge
  %i.04.i = phi i32 [ %i.0.i, %do.end.i.do.body.i_crit_edge ], [ %i.02.i, %do.end9.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_submit_urbs, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !347

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, ptr noundef %11, ptr noundef nonnull @.str.104, i32 noundef %i.04.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 %i.04.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #9
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.hackrf_kill_urbs.exit_crit_edge

do.end.i.hackrf_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

hackrf_kill_urbs.exit:                            ; preds = %do.end.i.hackrf_kill_urbs.exit_crit_edge, %do.end9.hackrf_kill_urbs.exit_crit_edge
  %14 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %urbs_submitted, align 4
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %15 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %urbs_submitted, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %urbs_submitted, align 4
  %inc13 = add nuw nsw i32 %i.028, 1
  %17 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %urbs_initialized, align 8
  %cmp = icmp slt i32 %inc13, %18
  br i1 %cmp, label %if.end12.do.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %hackrf_kill_urbs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %hackrf_kill_urbs.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hackrf_set_params(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %u8tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #9
  %10 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %u8tmp, align 1, !annotation !345
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dev, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dev, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not = icmp eq i32 %16, 0
  %17 = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %17, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then13)) #9
          to label %cleanup [label %if.then13], !srcloc !347

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug306, ptr noundef %dev14, ptr noundef nonnull @.str.91) #9
  br label %cleanup

if.end15:                                         ; preds = %entry
  br i1 %tobool.not, label %if.end15.if.else_crit_edge, label %land.lhs.true17

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true17:                                  ; preds = %if.end15
  %call19 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true17.if.else_crit_edge, label %do.body22

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body22:                                        ; preds = %land.lhs.true17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then34)) #9
          to label %do.end38 [label %if.then34], !srcloc !347

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %f_adc = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 25
  %18 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_adc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug307, ptr noundef %dev35, ptr noundef nonnull @.str.92, i32 noundef %19) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body22
  %f_adc39 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 25
  br label %if.then71

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %if.end15.if.else_crit_edge
  br i1 %tobool4.not, label %if.else.if.end104_crit_edge, label %land.lhs.true42

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

land.lhs.true42:                                  ; preds = %if.else
  %call44 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true42.if.end104_crit_edge, label %do.body47

land.lhs.true42.if.end104_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

do.body47:                                        ; preds = %land.lhs.true42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then59)) #9
          to label %do.end63 [label %if.then59], !srcloc !347

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %f_dac = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 26
  %20 = ptrtoint ptr %f_dac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_dac, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug308, ptr noundef %dev60, ptr noundef nonnull @.str.93, i32 noundef %21) #9
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  %f_dac64 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 26
  br label %if.then71

if.then71:                                        ; preds = %do.end63, %do.end38
  %.sink = phi i32 [ 12, %do.end38 ], [ 11, %do.end63 ]
  %uitmp1.0735.in = phi ptr [ %f_adc39, %do.end38 ], [ %f_dac64, %do.end63 ]
  %22 = ptrtoint ptr %uitmp1.0735.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %uitmp1.0735 = load i32, ptr %uitmp1.0735.in, align 4
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %dev) #9
  %conv = trunc i32 %uitmp1.0735 to i8
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %buf, align 8
  %shr72 = lshr i32 %uitmp1.0735, 8
  %conv74 = trunc i32 %shr72 to i8
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv74, ptr %2, align 1
  %shr76 = lshr i32 %uitmp1.0735, 16
  %conv78 = trunc i32 %shr76 to i8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv78, ptr %3, align 2
  %shr80 = lshr i32 %uitmp1.0735, 24
  %conv82 = trunc i32 %shr80 to i8
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv82, ptr %4, align 1
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %5, align 4
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %6, align 1
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %7, align 2
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %8, align 1
  %call100 = call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then71.if.end104_crit_edge, label %if.then71.do.body518_crit_edge

if.then71.do.body518_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

if.then71.if.end104_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.end104:                                        ; preds = %if.then71.if.end104_crit_edge, %land.lhs.true42.if.end104_crit_edge, %if.else.if.end104_crit_edge
  br i1 %tobool.not, label %if.end104.if.else149_crit_edge, label %land.lhs.true107

if.end104.if.else149_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else149

land.lhs.true107:                                 ; preds = %if.end104
  %call109 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %land.lhs.true107.if.else149_crit_edge, label %if.then111

land.lhs.true107.if.else149_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else149

if.then111:                                       ; preds = %land.lhs.true107
  %rx_bandwidth_auto = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 32
  %31 = ptrtoint ptr %rx_bandwidth_auto to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_bandwidth_auto, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp = icmp eq i32 %34, 1
  br i1 %cmp, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %f_adc114 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 25
  br label %if.end117

if.else115:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %rx_bandwidth = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 33
  %35 = ptrtoint ptr %rx_bandwidth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_bandwidth, align 4
  %val116 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then113
  %uitmp.0.in = phi ptr [ %f_adc114, %if.then113 ], [ %val116, %if.else115 ]
  %37 = ptrtoint ptr %uitmp.0.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %uitmp.0 = load i32, ptr %uitmp.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1750000, i32 %uitmp.0)
  %cmp121.not = icmp ugt i32 %uitmp.0, 1750000
  br i1 %cmp121.not, label %for.cond, label %if.end117.for.end_crit_edge

if.end117.for.end_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %uitmp.0)
  %cmp121.not.1 = icmp ugt i32 %uitmp.0, 2500000
  br i1 %cmp121.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500000, i32 %uitmp.0)
  %cmp121.not.2 = icmp ugt i32 %uitmp.0, 3500000
  br i1 %cmp121.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %uitmp.0)
  %cmp121.not.3 = icmp ugt i32 %uitmp.0, 5000000
  br i1 %cmp121.not.3, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5500000, i32 %uitmp.0)
  %cmp121.not.4 = icmp ugt i32 %uitmp.0, 5500000
  br i1 %cmp121.not.4, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %uitmp.0)
  %cmp121.not.5 = icmp ugt i32 %uitmp.0, 6000000
  br i1 %cmp121.not.5, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %uitmp.0)
  %cmp121.not.6 = icmp ugt i32 %uitmp.0, 7000000
  br i1 %cmp121.not.6, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %uitmp.0)
  %cmp121.not.7 = icmp ugt i32 %uitmp.0, 8000000
  br i1 %cmp121.not.7, label %for.cond.7, label %for.cond.6.for.end_crit_edge

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000000, i32 %uitmp.0)
  %cmp121.not.8 = icmp ugt i32 %uitmp.0, 9000000
  br i1 %cmp121.not.8, label %for.cond.8, label %for.cond.7.for.end_crit_edge

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %uitmp.0)
  %cmp121.not.9 = icmp ugt i32 %uitmp.0, 10000000
  br i1 %cmp121.not.9, label %for.cond.9, label %for.cond.8.for.end_crit_edge

for.cond.8.for.end_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.9:                                       ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %uitmp.0)
  %cmp121.not.10 = icmp ugt i32 %uitmp.0, 12000000
  br i1 %cmp121.not.10, label %for.cond.10, label %for.cond.9.for.end_crit_edge

for.cond.9.for.end_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.10:                                      ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %uitmp.0)
  %cmp121.not.11 = icmp ugt i32 %uitmp.0, 14000000
  br i1 %cmp121.not.11, label %for.cond.11, label %for.cond.10.for.end_crit_edge

for.cond.10.for.end_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.11:                                      ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %uitmp.0)
  %cmp121.not.12 = icmp ugt i32 %uitmp.0, 15000000
  br i1 %cmp121.not.12, label %for.cond.12, label %for.cond.11.for.end_crit_edge

for.cond.11.for.end_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.12:                                      ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %uitmp.0)
  %cmp121.not.13 = icmp ugt i32 %uitmp.0, 20000000
  br i1 %cmp121.not.13, label %for.cond.13, label %for.cond.12.for.end_crit_edge

for.cond.12.for.end_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.13:                                      ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %uitmp.0)
  %cmp121.not.14 = icmp ugt i32 %uitmp.0, 24000000
  %38 = call i32 @llvm.umax.i32(i32 %uitmp.0, i32 28000000)
  %spec.select = select i1 %cmp121.not.14, i32 %38, i32 24000000
  br label %for.end

for.end:                                          ; preds = %for.cond.13, %for.cond.12.for.end_crit_edge, %for.cond.11.for.end_crit_edge, %for.cond.10.for.end_crit_edge, %for.cond.9.for.end_crit_edge, %for.cond.8.for.end_crit_edge, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end117.for.end_crit_edge
  %uitmp.1 = phi i32 [ 1750000, %if.end117.for.end_crit_edge ], [ 2500000, %for.cond.for.end_crit_edge ], [ 3500000, %for.cond.1.for.end_crit_edge ], [ 5000000, %for.cond.2.for.end_crit_edge ], [ 5500000, %for.cond.3.for.end_crit_edge ], [ 6000000, %for.cond.4.for.end_crit_edge ], [ 7000000, %for.cond.5.for.end_crit_edge ], [ 8000000, %for.cond.6.for.end_crit_edge ], [ 9000000, %for.cond.7.for.end_crit_edge ], [ 10000000, %for.cond.8.for.end_crit_edge ], [ 12000000, %for.cond.9.for.end_crit_edge ], [ 14000000, %for.cond.10.for.end_crit_edge ], [ 15000000, %for.cond.11.for.end_crit_edge ], [ 20000000, %for.cond.12.for.end_crit_edge ], [ %spec.select, %for.cond.13 ]
  %rx_bandwidth127 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 33
  %39 = ptrtoint ptr %rx_bandwidth127 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_bandwidth127, align 4
  %val128 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %val128 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %uitmp.1, ptr %val128, align 4
  %42 = load ptr, ptr %rx_bandwidth127, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 23
  %43 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %uitmp.1, ptr %cur, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then143)) #9
          to label %if.then207 [label %if.then143], !srcloc !347

if.then143:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev144 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug309, ptr noundef %dev144, ptr noundef nonnull @.str.94, i32 noundef %uitmp.1) #9
  br label %if.then207

if.else149:                                       ; preds = %land.lhs.true107.if.else149_crit_edge, %if.end104.if.else149_crit_edge
  br i1 %tobool4.not, label %if.else149.if.end228_crit_edge, label %land.lhs.true152

if.else149.if.end228_crit_edge:                   ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

land.lhs.true152:                                 ; preds = %if.else149
  %call154 = tail call i32 @_test_and_clear_bit(i32 noundef 14, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %land.lhs.true152.if.end228_crit_edge, label %if.then156

land.lhs.true152.if.end228_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then156:                                       ; preds = %land.lhs.true152
  %tx_bandwidth_auto = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 38
  %44 = ptrtoint ptr %tx_bandwidth_auto to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_bandwidth_auto, align 4
  %val157 = getelementptr inbounds %struct.v4l2_ctrl, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %val157 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp158 = icmp eq i32 %47, 1
  br i1 %cmp158, label %if.then160, label %if.else162

if.then160:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  %f_dac161 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 26
  br label %if.end164

if.else162:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  %tx_bandwidth = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 39
  %48 = ptrtoint ptr %tx_bandwidth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_bandwidth, align 8
  %val163 = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 22
  br label %if.end164

if.end164:                                        ; preds = %if.else162, %if.then160
  %uitmp.2.in = phi ptr [ %f_dac161, %if.then160 ], [ %val163, %if.else162 ]
  %50 = ptrtoint ptr %uitmp.2.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %uitmp.2 = load i32, ptr %uitmp.2.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1750000, i32 %uitmp.2)
  %cmp171.not = icmp ugt i32 %uitmp.2, 1750000
  br i1 %cmp171.not, label %for.cond165, label %if.end164.for.end179_crit_edge

if.end164.for.end179_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165:                                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %uitmp.2)
  %cmp171.not.1 = icmp ugt i32 %uitmp.2, 2500000
  br i1 %cmp171.not.1, label %for.cond165.1, label %for.cond165.for.end179_crit_edge

for.cond165.for.end179_crit_edge:                 ; preds = %for.cond165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.1:                                    ; preds = %for.cond165
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500000, i32 %uitmp.2)
  %cmp171.not.2 = icmp ugt i32 %uitmp.2, 3500000
  br i1 %cmp171.not.2, label %for.cond165.2, label %for.cond165.1.for.end179_crit_edge

for.cond165.1.for.end179_crit_edge:               ; preds = %for.cond165.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.2:                                    ; preds = %for.cond165.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %uitmp.2)
  %cmp171.not.3 = icmp ugt i32 %uitmp.2, 5000000
  br i1 %cmp171.not.3, label %for.cond165.3, label %for.cond165.2.for.end179_crit_edge

for.cond165.2.for.end179_crit_edge:               ; preds = %for.cond165.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.3:                                    ; preds = %for.cond165.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5500000, i32 %uitmp.2)
  %cmp171.not.4 = icmp ugt i32 %uitmp.2, 5500000
  br i1 %cmp171.not.4, label %for.cond165.4, label %for.cond165.3.for.end179_crit_edge

for.cond165.3.for.end179_crit_edge:               ; preds = %for.cond165.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.4:                                    ; preds = %for.cond165.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %uitmp.2)
  %cmp171.not.5 = icmp ugt i32 %uitmp.2, 6000000
  br i1 %cmp171.not.5, label %for.cond165.5, label %for.cond165.4.for.end179_crit_edge

for.cond165.4.for.end179_crit_edge:               ; preds = %for.cond165.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.5:                                    ; preds = %for.cond165.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %uitmp.2)
  %cmp171.not.6 = icmp ugt i32 %uitmp.2, 7000000
  br i1 %cmp171.not.6, label %for.cond165.6, label %for.cond165.5.for.end179_crit_edge

for.cond165.5.for.end179_crit_edge:               ; preds = %for.cond165.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.6:                                    ; preds = %for.cond165.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %uitmp.2)
  %cmp171.not.7 = icmp ugt i32 %uitmp.2, 8000000
  br i1 %cmp171.not.7, label %for.cond165.7, label %for.cond165.6.for.end179_crit_edge

for.cond165.6.for.end179_crit_edge:               ; preds = %for.cond165.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.7:                                    ; preds = %for.cond165.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000000, i32 %uitmp.2)
  %cmp171.not.8 = icmp ugt i32 %uitmp.2, 9000000
  br i1 %cmp171.not.8, label %for.cond165.8, label %for.cond165.7.for.end179_crit_edge

for.cond165.7.for.end179_crit_edge:               ; preds = %for.cond165.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.8:                                    ; preds = %for.cond165.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %uitmp.2)
  %cmp171.not.9 = icmp ugt i32 %uitmp.2, 10000000
  br i1 %cmp171.not.9, label %for.cond165.9, label %for.cond165.8.for.end179_crit_edge

for.cond165.8.for.end179_crit_edge:               ; preds = %for.cond165.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.9:                                    ; preds = %for.cond165.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %uitmp.2)
  %cmp171.not.10 = icmp ugt i32 %uitmp.2, 12000000
  br i1 %cmp171.not.10, label %for.cond165.10, label %for.cond165.9.for.end179_crit_edge

for.cond165.9.for.end179_crit_edge:               ; preds = %for.cond165.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.10:                                   ; preds = %for.cond165.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %uitmp.2)
  %cmp171.not.11 = icmp ugt i32 %uitmp.2, 14000000
  br i1 %cmp171.not.11, label %for.cond165.11, label %for.cond165.10.for.end179_crit_edge

for.cond165.10.for.end179_crit_edge:              ; preds = %for.cond165.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.11:                                   ; preds = %for.cond165.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %uitmp.2)
  %cmp171.not.12 = icmp ugt i32 %uitmp.2, 15000000
  br i1 %cmp171.not.12, label %for.cond165.12, label %for.cond165.11.for.end179_crit_edge

for.cond165.11.for.end179_crit_edge:              ; preds = %for.cond165.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.12:                                   ; preds = %for.cond165.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %uitmp.2)
  %cmp171.not.13 = icmp ugt i32 %uitmp.2, 20000000
  br i1 %cmp171.not.13, label %for.cond165.13, label %for.cond165.12.for.end179_crit_edge

for.cond165.12.for.end179_crit_edge:              ; preds = %for.cond165.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end179

for.cond165.13:                                   ; preds = %for.cond165.12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %uitmp.2)
  %cmp171.not.14 = icmp ugt i32 %uitmp.2, 24000000
  %51 = call i32 @llvm.umax.i32(i32 %uitmp.2, i32 28000000)
  %spec.select755 = select i1 %cmp171.not.14, i32 %51, i32 24000000
  br label %for.end179

for.end179:                                       ; preds = %for.cond165.13, %for.cond165.12.for.end179_crit_edge, %for.cond165.11.for.end179_crit_edge, %for.cond165.10.for.end179_crit_edge, %for.cond165.9.for.end179_crit_edge, %for.cond165.8.for.end179_crit_edge, %for.cond165.7.for.end179_crit_edge, %for.cond165.6.for.end179_crit_edge, %for.cond165.5.for.end179_crit_edge, %for.cond165.4.for.end179_crit_edge, %for.cond165.3.for.end179_crit_edge, %for.cond165.2.for.end179_crit_edge, %for.cond165.1.for.end179_crit_edge, %for.cond165.for.end179_crit_edge, %if.end164.for.end179_crit_edge
  %uitmp.3 = phi i32 [ 1750000, %if.end164.for.end179_crit_edge ], [ 2500000, %for.cond165.for.end179_crit_edge ], [ 3500000, %for.cond165.1.for.end179_crit_edge ], [ 5000000, %for.cond165.2.for.end179_crit_edge ], [ 5500000, %for.cond165.3.for.end179_crit_edge ], [ 6000000, %for.cond165.4.for.end179_crit_edge ], [ 7000000, %for.cond165.5.for.end179_crit_edge ], [ 8000000, %for.cond165.6.for.end179_crit_edge ], [ 9000000, %for.cond165.7.for.end179_crit_edge ], [ 10000000, %for.cond165.8.for.end179_crit_edge ], [ 12000000, %for.cond165.9.for.end179_crit_edge ], [ 14000000, %for.cond165.10.for.end179_crit_edge ], [ 15000000, %for.cond165.11.for.end179_crit_edge ], [ 20000000, %for.cond165.12.for.end179_crit_edge ], [ %spec.select755, %for.cond165.13 ]
  %tx_bandwidth180 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 39
  %52 = ptrtoint ptr %tx_bandwidth180 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_bandwidth180, align 8
  %val181 = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 22
  %54 = ptrtoint ptr %val181 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %uitmp.3, ptr %val181, align 4
  %55 = load ptr, ptr %tx_bandwidth180, align 8
  %cur183 = getelementptr inbounds %struct.v4l2_ctrl, ptr %55, i32 0, i32 23
  %56 = ptrtoint ptr %cur183 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %uitmp.3, ptr %cur183, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then197)) #9
          to label %if.then207 [label %if.then197], !srcloc !347

if.then197:                                       ; preds = %for.end179
  call void @__sanitizer_cov_trace_pc() #11
  %dev198 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug310, ptr noundef %dev198, ptr noundef nonnull @.str.95, i32 noundef %uitmp.3) #9
  br label %if.then207

if.then207:                                       ; preds = %if.then197, %for.end179, %if.then143, %for.end
  %.sink751 = phi i32 [ 14, %for.end ], [ 14, %if.then143 ], [ 13, %for.end179 ], [ 13, %if.then197 ]
  %uitmp.4 = phi i32 [ %uitmp.1, %for.end ], [ %uitmp.1, %if.then143 ], [ %uitmp.3, %for.end179 ], [ %uitmp.3, %if.then197 ]
  tail call void @_set_bit(i32 noundef %.sink751, ptr noundef %dev) #9
  %shr214 = lshr i32 %uitmp.4, 16
  %conv222 = trunc i32 %uitmp.4 to i16
  %conv223 = trunc i32 %shr214 to i16
  %call224 = tail call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext %conv222, i16 noundef zeroext %conv223, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then207.if.end228_crit_edge, label %if.then207.do.body518_crit_edge

if.then207.do.body518_crit_edge:                  ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

if.then207.if.end228_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.end228:                                        ; preds = %if.then207.if.end228_crit_edge, %land.lhs.true152.if.end228_crit_edge, %if.else149.if.end228_crit_edge
  br i1 %tobool.not, label %if.end228.if.else256_crit_edge, label %land.lhs.true231

if.end228.if.else256_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else256

land.lhs.true231:                                 ; preds = %if.end228
  %call233 = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %land.lhs.true231.if.else256_crit_edge, label %do.body236

land.lhs.true231.if.else256_crit_edge:            ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else256

do.body236:                                       ; preds = %land.lhs.true231
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then248)) #9
          to label %do.end252 [label %if.then248], !srcloc !347

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  %dev249 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %f_rx = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 27
  %57 = ptrtoint ptr %f_rx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %f_rx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug311, ptr noundef %dev249, ptr noundef nonnull @.str.96, i32 noundef %58) #9
  br label %do.end252

do.end252:                                        ; preds = %if.then248, %do.body236
  %f_rx253 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 27
  br label %if.end288.sink.split

if.else256:                                       ; preds = %land.lhs.true231.if.else256_crit_edge, %if.end228.if.else256_crit_edge
  br i1 %tobool4.not, label %if.else256.if.end288_crit_edge, label %land.lhs.true259

if.else256.if.end288_crit_edge:                   ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end288

land.lhs.true259:                                 ; preds = %if.else256
  %call261 = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %land.lhs.true259.if.end288_crit_edge, label %do.body264

land.lhs.true259.if.end288_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end288

do.body264:                                       ; preds = %land.lhs.true259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then276)) #9
          to label %do.end280 [label %if.then276], !srcloc !347

if.then276:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #11
  %dev277 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %f_tx = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 28
  %59 = ptrtoint ptr %f_tx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f_tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug312, ptr noundef %dev277, ptr noundef nonnull @.str.97, i32 noundef %60) #9
  br label %do.end280

do.end280:                                        ; preds = %if.then276, %do.body264
  %f_tx281 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 28
  br label %if.end288.sink.split

if.end288.sink.split:                             ; preds = %do.end280, %do.end252
  %.sink754.in = phi ptr [ %f_tx281, %do.end280 ], [ %f_rx253, %do.end252 ]
  %.sink752 = phi i32 [ 15, %do.end280 ], [ 16, %do.end252 ]
  %61 = ptrtoint ptr %.sink754.in to i32
  call void @__asan_load4_noabort(i32 %61)
  %.sink754 = load i32, ptr %.sink754.in, align 4
  %.sink754.frozen = freeze i32 %.sink754
  %div282 = udiv i32 %.sink754.frozen, 1000000
  %62 = mul i32 %div282, 1000000
  %rem284.decomposed = sub i32 %.sink754.frozen, %62
  tail call void @_set_bit(i32 noundef %.sink752, ptr noundef %dev) #9
  br label %if.end288

if.end288:                                        ; preds = %if.end288.sink.split, %land.lhs.true259.if.end288_crit_edge, %if.else256.if.end288_crit_edge
  %uitmp2.1 = phi i32 [ 0, %land.lhs.true259.if.end288_crit_edge ], [ 0, %if.else256.if.end288_crit_edge ], [ %rem284.decomposed, %if.end288.sink.split ]
  %uitmp1.1 = phi i32 [ 0, %land.lhs.true259.if.end288_crit_edge ], [ 0, %if.else256.if.end288_crit_edge ], [ %div282, %if.end288.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uitmp1.1)
  %tobool289.not = icmp eq i32 %uitmp1.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uitmp2.1)
  %tobool291.not = icmp eq i32 %uitmp2.1, 0
  %or.cond = select i1 %tobool289.not, i1 %tobool291.not, i1 false
  br i1 %or.cond, label %if.end288.if.end330_crit_edge, label %if.then292

if.end288.if.end330_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end330

if.then292:                                       ; preds = %if.end288
  %conv295 = trunc i32 %uitmp1.1 to i8
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv295, ptr %buf, align 8
  %shr297 = lshr i32 %uitmp1.1, 8
  %conv299 = trunc i32 %shr297 to i8
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv299, ptr %2, align 1
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %3, align 2
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %4, align 1
  %conv311 = trunc i32 %uitmp2.1 to i8
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv311, ptr %5, align 4
  %shr313 = lshr i32 %uitmp2.1, 8
  %conv315 = trunc i32 %shr313 to i8
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv315, ptr %6, align 1
  %shr317 = lshr i32 %uitmp2.1, 16
  %conv319 = trunc i32 %shr317 to i8
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv319, ptr %7, align 2
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %8, align 1
  %call326 = call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 16, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i16 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.then292.if.end330_crit_edge, label %if.then292.do.body518_crit_edge

if.then292.do.body518_crit_edge:                  ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

if.then292.if.end330_crit_edge:                   ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end330

if.end330:                                        ; preds = %if.then292.if.end330_crit_edge, %if.end288.if.end330_crit_edge
  br i1 %tobool.not, label %if.end330.if.end369_crit_edge, label %land.lhs.true333

if.end330.if.end369_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end369

land.lhs.true333:                                 ; preds = %if.end330
  %call335 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %land.lhs.true333.if.end369_crit_edge, label %do.body338

land.lhs.true333.if.end369_crit_edge:             ; preds = %land.lhs.true333
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end369

do.body338:                                       ; preds = %land.lhs.true333
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then350)) #9
          to label %do.end358 [label %if.then350], !srcloc !347

if.then350:                                       ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #11
  %dev351 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %rx_rf_gain = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 34
  %71 = ptrtoint ptr %rx_rf_gain to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rx_rf_gain, align 8
  %cur352 = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 23
  %73 = ptrtoint ptr %cur352 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cur352, align 8
  %val355 = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 22
  %75 = ptrtoint ptr %val355 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val355, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug313, ptr noundef %dev351, ptr noundef nonnull @.str.98, i32 noundef %74, i32 noundef %76) #9
  br label %do.end358

do.end358:                                        ; preds = %if.then350, %do.body338
  %rx_rf_gain359 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 34
  %77 = ptrtoint ptr %rx_rf_gain359 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_rf_gain359, align 8
  %val360 = getelementptr inbounds %struct.v4l2_ctrl, ptr %78, i32 0, i32 22
  %79 = ptrtoint ptr %val360 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val360, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool361.not = icmp ne i32 %80, 0
  %conv362 = zext i1 %tobool361.not to i8
  %81 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv362, ptr %u8tmp, align 1
  %conv363 = zext i1 %tobool361.not to i16
  %call364 = tail call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 17, i16 noundef zeroext %conv363, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %if.end367, label %do.end358.do.body518_crit_edge

do.end358.do.body518_crit_edge:                   ; preds = %do.end358
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

if.end367:                                        ; preds = %do.end358
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 18, ptr noundef %dev) #9
  br label %if.end369

if.end369:                                        ; preds = %if.end367, %land.lhs.true333.if.end369_crit_edge, %if.end330.if.end369_crit_edge
  br i1 %tobool4.not, label %if.end369.if.end409_crit_edge, label %land.lhs.true372

if.end369.if.end409_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end409

land.lhs.true372:                                 ; preds = %if.end369
  %call374 = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %land.lhs.true372.if.end409_crit_edge, label %do.body377

land.lhs.true372.if.end409_crit_edge:             ; preds = %land.lhs.true372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end409

do.body377:                                       ; preds = %land.lhs.true372
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then389)) #9
          to label %do.end397 [label %if.then389], !srcloc !347

if.then389:                                       ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #11
  %dev390 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %tx_rf_gain = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 40
  %82 = ptrtoint ptr %tx_rf_gain to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_rf_gain, align 4
  %cur391 = getelementptr inbounds %struct.v4l2_ctrl, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %cur391 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur391, align 8
  %val394 = getelementptr inbounds %struct.v4l2_ctrl, ptr %83, i32 0, i32 22
  %86 = ptrtoint ptr %val394 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %val394, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug314, ptr noundef %dev390, ptr noundef nonnull @.str.99, i32 noundef %85, i32 noundef %87) #9
  br label %do.end397

do.end397:                                        ; preds = %if.then389, %do.body377
  %tx_rf_gain398 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 40
  %88 = ptrtoint ptr %tx_rf_gain398 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_rf_gain398, align 4
  %val399 = getelementptr inbounds %struct.v4l2_ctrl, ptr %89, i32 0, i32 22
  %90 = ptrtoint ptr %val399 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val399, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool400.not = icmp ne i32 %91, 0
  %conv402 = zext i1 %tobool400.not to i8
  %92 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv402, ptr %u8tmp, align 1
  %conv403 = zext i1 %tobool400.not to i16
  %call404 = tail call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 17, i16 noundef zeroext %conv403, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %if.end407, label %do.end397.do.body518_crit_edge

do.end397.do.body518_crit_edge:                   ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

if.end407:                                        ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 17, ptr noundef %dev) #9
  br label %if.end409

if.end409:                                        ; preds = %if.end407, %land.lhs.true372.if.end409_crit_edge, %if.end369.if.end409_crit_edge
  br i1 %tobool.not, label %if.end409.if.end481_crit_edge, label %land.lhs.true412

if.end409.if.end481_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end481

land.lhs.true412:                                 ; preds = %if.end409
  %call414 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414)
  %tobool415.not = icmp eq i32 %call414, 0
  br i1 %tobool415.not, label %land.lhs.true412.land.lhs.true448_crit_edge, label %do.body417

land.lhs.true412.land.lhs.true448_crit_edge:      ; preds = %land.lhs.true412
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true448

do.body417:                                       ; preds = %land.lhs.true412
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then429)) #9
          to label %do.end437 [label %if.then429], !srcloc !347

if.then429:                                       ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #11
  %dev430 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  %93 = ptrtoint ptr %dev430 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev430, align 8
  %rx_lna_gain = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 35
  %95 = ptrtoint ptr %rx_lna_gain to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_lna_gain, align 4
  %cur431 = getelementptr inbounds %struct.v4l2_ctrl, ptr %96, i32 0, i32 23
  %97 = ptrtoint ptr %cur431 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cur431, align 8
  %val434 = getelementptr inbounds %struct.v4l2_ctrl, ptr %96, i32 0, i32 22
  %99 = ptrtoint ptr %val434 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val434, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug315, ptr noundef %94, ptr noundef nonnull @.str.100, i32 noundef %98, i32 noundef %100) #9
  br label %do.end437

do.end437:                                        ; preds = %if.then429, %do.body417
  %rx_lna_gain438 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 35
  %101 = ptrtoint ptr %rx_lna_gain438 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_lna_gain438, align 4
  %val439 = getelementptr inbounds %struct.v4l2_ctrl, ptr %102, i32 0, i32 22
  %103 = ptrtoint ptr %val439 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val439, align 4
  %conv440 = trunc i32 %104 to i16
  %call441 = call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 19, i16 noundef zeroext 0, i16 noundef zeroext %conv440, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call441)
  %tobool442.not = icmp eq i32 %call441, 0
  br i1 %tobool442.not, label %do.end437.land.lhs.true448_crit_edge, label %do.end437.do.body518_crit_edge

do.end437.do.body518_crit_edge:                   ; preds = %do.end437
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

do.end437.land.lhs.true448_crit_edge:             ; preds = %do.end437
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true448

land.lhs.true448:                                 ; preds = %do.end437.land.lhs.true448_crit_edge, %land.lhs.true412.land.lhs.true448_crit_edge
  %call450 = tail call i32 @_test_and_clear_bit(i32 noundef 19, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call450)
  %tobool451.not = icmp eq i32 %call450, 0
  br i1 %tobool451.not, label %land.lhs.true448.if.end481_crit_edge, label %do.body453

land.lhs.true448.if.end481_crit_edge:             ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end481

do.body453:                                       ; preds = %land.lhs.true448
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then465)) #9
          to label %do.end473 [label %if.then465], !srcloc !347

if.then465:                                       ; preds = %do.body453
  call void @__sanitizer_cov_trace_pc() #11
  %dev466 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %rx_if_gain = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 36
  %105 = ptrtoint ptr %rx_if_gain to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rx_if_gain, align 8
  %cur467 = getelementptr inbounds %struct.v4l2_ctrl, ptr %106, i32 0, i32 23
  %107 = ptrtoint ptr %cur467 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cur467, align 8
  %val470 = getelementptr inbounds %struct.v4l2_ctrl, ptr %106, i32 0, i32 22
  %109 = ptrtoint ptr %val470 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val470, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug316, ptr noundef %dev466, ptr noundef nonnull @.str.101, i32 noundef %108, i32 noundef %110) #9
  br label %do.end473

do.end473:                                        ; preds = %if.then465, %do.body453
  %rx_if_gain474 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 36
  %111 = ptrtoint ptr %rx_if_gain474 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rx_if_gain474, align 8
  %val475 = getelementptr inbounds %struct.v4l2_ctrl, ptr %112, i32 0, i32 22
  %113 = ptrtoint ptr %val475 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val475, align 4
  %conv476 = trunc i32 %114 to i16
  %call477 = call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext %conv476, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call477)
  %tobool478.not = icmp eq i32 %call477, 0
  br i1 %tobool478.not, label %do.end473.if.end481_crit_edge, label %do.end473.do.body518_crit_edge

do.end473.do.body518_crit_edge:                   ; preds = %do.end473
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

do.end473.if.end481_crit_edge:                    ; preds = %do.end473
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end481

if.end481:                                        ; preds = %do.end473.if.end481_crit_edge, %land.lhs.true448.if.end481_crit_edge, %if.end409.if.end481_crit_edge
  br i1 %tobool4.not, label %if.end481.cleanup_crit_edge, label %land.lhs.true484

if.end481.cleanup_crit_edge:                      ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true484:                                 ; preds = %if.end481
  %call486 = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call486)
  %tobool487.not = icmp eq i32 %call486, 0
  br i1 %tobool487.not, label %land.lhs.true484.cleanup_crit_edge, label %do.body489

land.lhs.true484.cleanup_crit_edge:               ; preds = %land.lhs.true484
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body489:                                       ; preds = %land.lhs.true484
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then501)) #9
          to label %do.end509 [label %if.then501], !srcloc !347

if.then501:                                       ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #11
  %dev502 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %tx_lna_gain = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 41
  %115 = ptrtoint ptr %tx_lna_gain to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_lna_gain, align 8
  %cur503 = getelementptr inbounds %struct.v4l2_ctrl, ptr %116, i32 0, i32 23
  %117 = ptrtoint ptr %cur503 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cur503, align 8
  %val506 = getelementptr inbounds %struct.v4l2_ctrl, ptr %116, i32 0, i32 22
  %119 = ptrtoint ptr %val506 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val506, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug317, ptr noundef %dev502, ptr noundef nonnull @.str.102, i32 noundef %118, i32 noundef %120) #9
  br label %do.end509

do.end509:                                        ; preds = %if.then501, %do.body489
  %tx_lna_gain510 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 41
  %121 = ptrtoint ptr %tx_lna_gain510 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_lna_gain510, align 8
  %val511 = getelementptr inbounds %struct.v4l2_ctrl, ptr %122, i32 0, i32 22
  %123 = ptrtoint ptr %val511 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val511, align 4
  %conv512 = trunc i32 %124 to i16
  %call513 = call fastcc i32 @hackrf_ctrl_msg(ptr noundef %dev, i8 noundef zeroext 21, i16 noundef zeroext 0, i16 noundef zeroext %conv512, ptr noundef nonnull %u8tmp, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call513)
  %tobool514.not = icmp eq i32 %call513, 0
  br i1 %tobool514.not, label %do.end509.cleanup_crit_edge, label %do.end509.do.body518_crit_edge

do.end509.do.body518_crit_edge:                   ; preds = %do.end509
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body518

do.end509.cleanup_crit_edge:                      ; preds = %do.end509
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body518:                                       ; preds = %do.end509.do.body518_crit_edge, %do.end473.do.body518_crit_edge, %do.end437.do.body518_crit_edge, %do.end397.do.body518_crit_edge, %do.end358.do.body518_crit_edge, %if.then292.do.body518_crit_edge, %if.then207.do.body518_crit_edge, %if.then71.do.body518_crit_edge
  %ret.0 = phi i32 [ %call100, %if.then71.do.body518_crit_edge ], [ %call224, %if.then207.do.body518_crit_edge ], [ %call326, %if.then292.do.body518_crit_edge ], [ %call364, %do.end358.do.body518_crit_edge ], [ %call404, %do.end397.do.body518_crit_edge ], [ %call441, %do.end437.do.body518_crit_edge ], [ %call477, %do.end473.do.body518_crit_edge ], [ %call513, %do.end509.do.body518_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_set_params.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_set_params, %if.then530)) #9
          to label %cleanup [label %if.then530], !srcloc !347

if.then530:                                       ; preds = %do.body518
  call void @__sanitizer_cov_trace_pc() #11
  %dev531 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_set_params.__UNIQUE_ID_ddebug318, ptr noundef %dev531, ptr noundef nonnull @.str.49, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then530, %do.body518, %do.end509.cleanup_crit_edge, %land.lhs.true484.cleanup_crit_edge, %if.end481.cleanup_crit_edge, %if.then13, %do.body
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %do.end509.cleanup_crit_edge ], [ 0, %land.lhs.true484.cleanup_crit_edge ], [ 0, %if.end481.cleanup_crit_edge ], [ %ret.0, %if.then530 ], [ 0, %do.body ], [ %ret.0, %do.body518 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hackrf_free_urbs(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_submitted.i = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_submitted.i, align 4
  %i.02.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02.i)
  %cmp3.i = icmp sgt i32 %i.02.i, -1
  br i1 %cmp3.i, label %do.body.lr.ph.i, label %entry.hackrf_kill_urbs.exit_crit_edge

entry.hackrf_kill_urbs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.body.lr.ph.i:                                  ; preds = %entry
  %dev3.i = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.04.i = phi i32 [ %i.02.i, %do.body.lr.ph.i ], [ %i.0.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_free_urbs, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !347

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, ptr noundef %3, ptr noundef nonnull @.str.104, i32 noundef %i.04.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 %i.04.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #9
  %i.0.i = add i32 %i.04.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.hackrf_kill_urbs.exit_crit_edge

do.end.i.hackrf_kill_urbs.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_kill_urbs.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

hackrf_kill_urbs.exit:                            ; preds = %do.end.i.hackrf_kill_urbs.exit_crit_edge, %entry.hackrf_kill_urbs.exit_crit_edge
  %6 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %urbs_submitted.i, align 4
  %urbs_initialized = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 22
  %7 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %urbs_initialized, align 8
  %i.02 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02)
  %cmp3 = icmp sgt i32 %i.02, -1
  br i1 %cmp3, label %for.body.lr.ph, label %hackrf_kill_urbs.exit.for.end_crit_edge

hackrf_kill_urbs.exit.for.end_crit_edge:          ; preds = %hackrf_kill_urbs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %hackrf_kill_urbs.exit
  %dev6 = getelementptr inbounds %struct.hackrf_dev, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ %i.02, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hackrf_dev, ptr %dev, i32 0, i32 17, i32 %i.04
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_free_urbs.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_free_urbs, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !347

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_free_urbs.__UNIQUE_ID_ddebug330, ptr noundef %12, ptr noundef nonnull @.str.106, i32 noundef %i.04) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %14) #9
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

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %hackrf_kill_urbs.exit.for.end_crit_edge
  %15 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %urbs_initialized, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hackrf_return_all_buffers(ptr nocapture noundef readonly %vq, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_return_all_buffers.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_return_all_buffers, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_return_all_buffers.__UNIQUE_ID_ddebug333, ptr noundef %dev5, ptr noundef nonnull @.str.110) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp = icmp eq i32 %5, 11
  %rx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 9
  %tx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 10
  %buffer_list.0 = select i1 %cmp, ptr %rx_buffer_list, ptr %tx_buffer_list
  %buffer_list_lock = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 11
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_list_lock) #9
  %6 = ptrtoint ptr %buffer_list.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_list.0, align 4
  %cmp24.not71 = icmp eq ptr %7, %buffer_list.0
  br i1 %cmp24.not71, label %do.end.for.end_crit_edge, label %do.body28.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body28.lr.ph:                                  ; preds = %do.end
  %dev41 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  br label %do.body28

do.body28:                                        ; preds = %list_del.exit.do.body28_crit_edge, %do.body28.lr.ph
  %.pn.in72 = phi ptr [ %7, %do.body28.lr.ph ], [ %.pn75, %list_del.exit.do.body28_crit_edge ]
  %buffer.074 = getelementptr i8, ptr %.pn.in72, i32 -736
  %8 = ptrtoint ptr %.pn.in72 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn75 = load ptr, ptr %.pn.in72, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_return_all_buffers.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_return_all_buffers, %if.then40)) #9
          to label %do.end44 [label %if.then40], !srcloc !347

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_return_all_buffers.__UNIQUE_ID_ddebug334, ptr noundef %dev41, ptr noundef nonnull @.str.111) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  tail call void @vb2_buffer_done(ptr noundef %buffer.074, i32 noundef %state) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in72) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end44.list_del.exit_crit_edge

do.end44.list_del.exit_crit_edge:                 ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in72, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in72 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in72, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end44.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in72 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in72, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in72, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp24.not = icmp eq ptr %.pn75, %buffer_list.0
  br i1 %cmp24.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.do.body28_crit_edge

list_del.exit.do.body28_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_list_lock, i32 noundef %call13) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hackrf_urb_complete_in(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_urb_complete_in.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_urb_complete_in, %land.lhs.true)) #9
          to label %do.end [label %land.lhs.true], !srcloc !347

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hackrf_urb_complete_in._rs, ptr noundef nonnull @.str.70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_urb_complete_in.descriptor, ptr noundef %dev6, ptr noundef nonnull @.str.71, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %status7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status7, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %11, label %do.body9 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 -110, label %do.end.sw.epilog_crit_edge97
    i32 -104, label %do.end.cleanup_crit_edge
    i32 -2, label %do.end.cleanup_crit_edge98
    i32 -108, label %do.end.cleanup_crit_edge99
  ]

do.end.cleanup_crit_edge99:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.cleanup_crit_edge98:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.sw.epilog_crit_edge97:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9:                                         ; preds = %do.end
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @hackrf_urb_complete_in._rs.72, ptr noundef nonnull @.str.70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body9.exit_usb_submit_urb_crit_edge, label %do.end15

do.body9.exit_usb_submit_urb_crit_edge:           ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_usb_submit_urb

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.73, i32 noundef %14) #13
  br label %exit_usb_submit_urb

sw.epilog:                                        ; preds = %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge97
  %rx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 9
  %buffer_list_lock.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_list_lock.i) #9
  %15 = ptrtoint ptr %rx_buffer_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %rx_buffer_list, align 4
  %cmp.i.not.i = icmp eq ptr %16, %rx_buffer_list
  br i1 %cmp.i.not.i, label %hackrf_get_next_buffer.exit.thread, label %if.end.i

hackrf_get_next_buffer.exit.thread:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_list_lock.i, i32 noundef %call2.i) #9
  br label %if.then28

if.end.i:                                         ; preds = %sw.epilog
  %add.ptr.i = getelementptr i8, ptr %16, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.hackrf_get_next_buffer.exit_crit_edge

if.end.i.hackrf_get_next_buffer.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_get_next_buffer.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %hackrf_get_next_buffer.exit

hackrf_get_next_buffer.exit:                      ; preds = %if.end.i.i.i, %if.end.i.hackrf_get_next_buffer.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_list_lock.i, i32 noundef %call2.i) #9
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %hackrf_get_next_buffer.exit.if.then28_crit_edge, label %if.end41, !prof !348

hackrf_get_next_buffer.exit.if.then28_crit_edge:  ; preds = %hackrf_get_next_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %hackrf_get_next_buffer.exit.if.then28_crit_edge, %hackrf_get_next_buffer.exit.thread
  %vb_full = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vb_full, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %vb_full, align 8
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @hackrf_urb_complete_in._rs.74, ptr noundef nonnull @.str.70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then28.exit_usb_submit_urb_crit_edge, label %do.end35

if.then28.exit_usb_submit_urb_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_usb_submit_urb

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %vb_full to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vb_full, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev36, ptr noundef nonnull @.str.76, i32 noundef %28) #13
  br label %exit_usb_submit_urb

if.end41:                                         ; preds = %hackrf_get_next_buffer.exit
  %num_planes.i = getelementptr i8, ptr %16, i32 -720
  %29 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %if.end41.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end41.vb2_plane_size.exit_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr i8, ptr %16, i32 -648
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end41.vb2_plane_size.exit_crit_edge
  %retval.0.i88 = phi i32 [ %32, %if.then.i ], [ 0, %if.end41.vb2_plane_size.exit_crit_edge ]
  %actual_length43 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %33 = ptrtoint ptr %actual_length43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual_length43, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %retval.0.i88, i32 %34)
  %call48 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #9
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transfer_buffer, align 4
  %38 = call ptr @memcpy(ptr %call48, ptr %37, i32 %35)
  %jiffies_next.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 42
  %39 = ptrtoint ptr %jiffies_next.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %jiffies_next.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %40, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i89, label %vb2_plane_size.exit.hackrf_copy_stream.exit_crit_edge, !prof !348

vb2_plane_size.exit.hackrf_copy_stream.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_copy_stream.exit

if.then.i89:                                      ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub3.i = sub i32 1000, %40
  %add.i = add i32 %sub3.i, %42
  %call4.i = tail call i32 @jiffies_to_msecs(i32 noundef %add.i) #9
  %sample.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 43
  %43 = ptrtoint ptr %sample.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sample.i, align 8
  %sample_measured.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 44
  %45 = ptrtoint ptr %sample_measured.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sample_measured.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add7.i = add i32 %47, 1000
  %48 = ptrtoint ptr %jiffies_next.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add7.i, ptr %jiffies_next.i, align 4
  store i32 %44, ptr %sample_measured.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_copy_stream.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_urb_complete_in, %if.then19.i)) #9
          to label %hackrf_copy_stream.exit [label %if.then19.i], !srcloc !347

if.then19.i:                                      ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #11
  %sub5.i = sub i32 %44, %46
  %dev20.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev20.i, align 8
  %mul.i = mul i32 %sub5.i, 1000
  %div.i = udiv i32 %mul.i, %call4.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_copy_stream.__UNIQUE_ID_ddebug319, ptr noundef %50, ptr noundef nonnull @.str.79, i32 noundef %35, i32 noundef %sub5.i, i32 noundef %call4.i, i32 noundef %div.i) #9
  br label %hackrf_copy_stream.exit

hackrf_copy_stream.exit:                          ; preds = %if.then19.i, %if.then.i89, %vb2_plane_size.exit.hackrf_copy_stream.exit_crit_edge
  %div2237.i = lshr i32 %35, 1
  %sample23.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 43
  %51 = ptrtoint ptr %sample23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sample23.i, align 8
  %add24.i = add i32 %52, %div2237.i
  store i32 %add24.i, ptr %sample23.i, align 8
  %53 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i91 = icmp eq i32 %54, 0
  br i1 %cmp.not.i91, label %hackrf_copy_stream.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i93

hackrf_copy_stream.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %hackrf_copy_stream.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i93:                                      ; preds = %hackrf_copy_stream.exit
  %length.i92 = getelementptr i8, ptr %16, i32 -648
  %55 = ptrtoint ptr %length.i92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %length.i92, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %35)
  %cmp1.i = icmp ult i32 %56, %35
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i93.if.end42.i_crit_edge

if.then.i93.if.end42.i_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i93
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !349

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %57 = ptrtoint ptr %length.i92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i92, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i93.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %58, %if.then38.i ], [ %35, %if.then.i93.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %16, i32 -652
  %59 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %hackrf_copy_stream.exit.vb2_set_plane_payload.exit_crit_edge
  %sequence = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 12
  %60 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sequence, align 4
  %inc51 = add i32 %61, 1
  store i32 %inc51, ptr %sequence, align 4
  %sequence53 = getelementptr i8, ptr %16, i32 -272
  %62 = ptrtoint ptr %sequence53 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %sequence53, align 8
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr i8, ptr %16, i32 -712
  %63 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %call.i, ptr %timestamp, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef 5) #9
  br label %exit_usb_submit_urb

exit_usb_submit_urb:                              ; preds = %vb2_set_plane_payload.exit, %do.end35, %if.then28.exit_usb_submit_urb_crit_edge, %do.end15, %do.body9.exit_usb_submit_urb_crit_edge
  %call59 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_usb_submit_urb, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge98, %do.end.cleanup_crit_edge99
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hackrf_urb_complete_out(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_urb_complete_out.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_urb_complete_out, %land.lhs.true)) #9
          to label %do.end [label %land.lhs.true], !srcloc !347

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @hackrf_urb_complete_out._rs, ptr noundef nonnull @.str.81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_urb_complete_out.descriptor, ptr noundef %dev6, ptr noundef nonnull @.str.71, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %status7 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status7, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %11, label %do.body9 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 -110, label %do.end.sw.epilog_crit_edge94
    i32 -104, label %do.end.cleanup_crit_edge
    i32 -2, label %do.end.cleanup_crit_edge95
    i32 -108, label %do.end.cleanup_crit_edge96
  ]

do.end.cleanup_crit_edge96:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.cleanup_crit_edge95:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.sw.epilog_crit_edge94:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9:                                         ; preds = %do.end
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @hackrf_urb_complete_out._rs.82, ptr noundef nonnull @.str.81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body9.sw.epilog_crit_edge, label %do.end15

do.body9.sw.epilog_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.73, i32 noundef %14) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end15, %do.body9.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge94
  %tx_buffer_list = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 10
  %buffer_list_lock.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buffer_list_lock.i) #9
  %15 = ptrtoint ptr %tx_buffer_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %tx_buffer_list, align 4
  %cmp.i.not.i = icmp eq ptr %16, %tx_buffer_list
  br i1 %cmp.i.not.i, label %hackrf_get_next_buffer.exit.thread, label %if.end.i

hackrf_get_next_buffer.exit.thread:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_list_lock.i, i32 noundef %call2.i) #9
  br label %if.then28

if.end.i:                                         ; preds = %sw.epilog
  %add.ptr.i = getelementptr i8, ptr %16, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.hackrf_get_next_buffer.exit_crit_edge

if.end.i.hackrf_get_next_buffer.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_get_next_buffer.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %hackrf_get_next_buffer.exit

hackrf_get_next_buffer.exit:                      ; preds = %if.end.i.i.i, %if.end.i.hackrf_get_next_buffer.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buffer_list_lock.i, i32 noundef %call2.i) #9
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %hackrf_get_next_buffer.exit.if.then28_crit_edge, label %if.end42, !prof !348

hackrf_get_next_buffer.exit.if.then28_crit_edge:  ; preds = %hackrf_get_next_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.then28:                                        ; preds = %hackrf_get_next_buffer.exit.if.then28_crit_edge, %hackrf_get_next_buffer.exit.thread
  %vb_empty = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %vb_empty to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vb_empty, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %vb_empty, align 4
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @hackrf_urb_complete_out._rs.83, ptr noundef nonnull @.str.81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then28.do.end40_crit_edge, label %do.end35

if.then28.do.end40_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %vb_empty to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vb_empty, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev36, ptr noundef nonnull @.str.85, i32 noundef %28) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %if.then28.do.end40_crit_edge
  %actual_length41 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %29 = ptrtoint ptr %actual_length41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %actual_length41, align 4
  br label %exit_usb_submit_urb

if.end42:                                         ; preds = %hackrf_get_next_buffer.exit
  %transfer_buffer_length43 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_buffer_length43, align 4
  %num_planes.i = getelementptr i8, ptr %16, i32 -720
  %32 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 0
  br i1 %cmp.not.i, label %if.end42.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end42.vb2_get_plane_payload.exit_crit_edge:    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused.i = getelementptr i8, ptr %16, i32 -652
  %34 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end42.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i89 = phi i32 [ %35, %if.then.i ], [ 0, %if.end42.vb2_get_plane_payload.exit_crit_edge ]
  %36 = tail call i32 @llvm.umin.i32(i32 %31, i32 %retval.0.i89)
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %transfer_buffer, align 4
  %call49 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #9
  %39 = call ptr @memcpy(ptr %38, ptr %call49, i32 %36)
  %jiffies_next.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 42
  %40 = ptrtoint ptr %jiffies_next.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %jiffies_next.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i90, label %vb2_get_plane_payload.exit.hackrf_copy_stream.exit_crit_edge, !prof !348

vb2_get_plane_payload.exit.hackrf_copy_stream.exit_crit_edge: ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hackrf_copy_stream.exit

if.then.i90:                                      ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub3.i = sub i32 1000, %41
  %add.i = add i32 %sub3.i, %43
  %call4.i = tail call i32 @jiffies_to_msecs(i32 noundef %add.i) #9
  %sample.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 43
  %44 = ptrtoint ptr %sample.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sample.i, align 8
  %sample_measured.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 44
  %46 = ptrtoint ptr %sample_measured.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sample_measured.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add7.i = add i32 %48, 1000
  %49 = ptrtoint ptr %jiffies_next.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add7.i, ptr %jiffies_next.i, align 4
  store i32 %45, ptr %sample_measured.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_copy_stream.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_urb_complete_out, %if.then19.i)) #9
          to label %hackrf_copy_stream.exit [label %if.then19.i], !srcloc !347

if.then19.i:                                      ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #11
  %sub5.i = sub i32 %45, %47
  %dev20.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev20.i, align 8
  %mul.i = mul i32 %sub5.i, 1000
  %div.i = udiv i32 %mul.i, %call4.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_copy_stream.__UNIQUE_ID_ddebug319, ptr noundef %51, ptr noundef nonnull @.str.79, i32 noundef %36, i32 noundef %sub5.i, i32 noundef %call4.i, i32 noundef %div.i) #9
  br label %hackrf_copy_stream.exit

hackrf_copy_stream.exit:                          ; preds = %if.then19.i, %if.then.i90, %vb2_get_plane_payload.exit.hackrf_copy_stream.exit_crit_edge
  %div2237.i = lshr i32 %36, 1
  %sample23.i = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 43
  %52 = ptrtoint ptr %sample23.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sample23.i, align 8
  %add24.i = add i32 %53, %div2237.i
  store i32 %add24.i, ptr %sample23.i, align 8
  %actual_length50 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %54 = ptrtoint ptr %actual_length50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %36, ptr %actual_length50, align 4
  %sequence = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 12
  %55 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sequence, align 4
  %inc51 = add i32 %56, 1
  store i32 %inc51, ptr %sequence, align 4
  %sequence53 = getelementptr i8, ptr %16, i32 -272
  %57 = ptrtoint ptr %sequence53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %sequence53, align 8
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr i8, ptr %16, i32 -712
  %58 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %call.i, ptr %timestamp, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr.i, i32 noundef 5) #9
  br label %exit_usb_submit_urb

exit_usb_submit_urb:                              ; preds = %hackrf_copy_stream.exit, %do.end40
  %call59 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_usb_submit_urb, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge95, %do.end.cleanup_crit_edge96
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_s_ctrl_rx(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4264
  %intf1 = getelementptr i8, ptr %1, i32 -4260
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %5, label %do.body [
    i32 10619147, label %entry.sw.epilog_crit_edge
    i32 10619148, label %entry.sw.epilog_crit_edge52
    i32 10619168, label %sw.bb2
    i32 10619178, label %sw.bb4
    i32 10619198, label %sw.bb6
  ]

entry.sw.epilog_crit_edge52:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_ctrl_rx, %if.then)) #9
          to label %do.body17 [label %if.then], !srcloc !347

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug363, ptr noundef %dev11, ptr noundef nonnull @.str.115, i32 noundef %8, ptr noundef %10) #9
  br label %do.body17

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge52
  %.sink = phi i32 [ 19, %sw.bb6 ], [ 20, %sw.bb4 ], [ 17, %sw.bb2 ], [ 13, %entry.sw.epilog_crit_edge ], [ 13, %entry.sw.epilog_crit_edge52 ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %add.ptr) #9
  %call13 = tail call fastcc i32 @hackrf_set_params(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.body17_crit_edge

sw.epilog.do.body17_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body17:                                        ; preds = %sw.epilog.do.body17_crit_edge, %if.then, %do.body
  %ret.0 = phi i32 [ %call13, %sw.epilog.do.body17_crit_edge ], [ -22, %if.then ], [ -22, %do.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_ctrl_rx, %if.then29)) #9
          to label %cleanup [label %if.then29], !srcloc !347

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug364, ptr noundef %dev30, ptr noundef nonnull @.str.49, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.then29 ], [ %ret.0, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_s_ctrl_tx(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4468
  %intf1 = getelementptr i8, ptr %1, i32 -4464
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %5, label %do.body [
    i32 10619147, label %entry.sw.epilog_crit_edge
    i32 10619148, label %entry.sw.epilog_crit_edge49
    i32 10619178, label %sw.bb2
    i32 10619168, label %sw.bb4
  ]

entry.sw.epilog_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_ctrl_tx, %if.then)) #9
          to label %do.body15 [label %if.then], !srcloc !347

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug365, ptr noundef %dev9, ptr noundef nonnull @.str.115, i32 noundef %8, ptr noundef %10) #9
  br label %do.body15

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge49
  %.sink = phi i32 [ 18, %sw.bb4 ], [ 21, %sw.bb2 ], [ 14, %entry.sw.epilog_crit_edge ], [ 14, %entry.sw.epilog_crit_edge49 ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %add.ptr) #9
  %call11 = tail call fastcc i32 @hackrf_set_params(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.body15_crit_edge

sw.epilog.do.body15_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body15:                                        ; preds = %sw.epilog.do.body15_crit_edge, %if.then, %do.body
  %ret.0 = phi i32 [ %call11, %sw.epilog.do.body15_crit_edge ], [ -22, %if.then ], [ -22, %do.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_ctrl_tx, %if.then27)) #9
          to label %cleanup [label %if.then27], !srcloc !347

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug366, ptr noundef %dev28, ptr noundef nonnull @.str.49, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.then27 ], [ %ret.0, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

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
define internal i32 @hackrf_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_querycap.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_querycap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_querycap.__UNIQUE_ID_ddebug340, ptr noundef %dev5, ptr noundef nonnull @.str.110) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2057764864, ptr %capabilities, align 4
  %call6 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 4, i32 12
  %call9 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #9
  %udev = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 1
  %call.i17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.119, ptr noundef %10, ptr noundef %devpath.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_enum_fmt_sdr(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_enum_fmt_sdr.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_enum_fmt_sdr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_enum_fmt_sdr.__UNIQUE_ID_ddebug344, ptr noundef %3, ptr noundef nonnull @.str.121, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %pixelformat9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 942691139, ptr %pixelformat9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_g_fmt_sdr(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_g_fmt_sdr.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_g_fmt_sdr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %pixelformat = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 29
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_g_fmt_sdr.__UNIQUE_ID_ddebug342, ptr noundef %3, ptr noundef nonnull @.str.123, ptr noundef %pixelformat) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pixelformat5 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat5, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %buffersize = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %buffersize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffersize, align 4
  %buffersize8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %buffersize8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buffersize8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_s_fmt_sdr(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_fmt_sdr.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_fmt_sdr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_fmt_sdr.__UNIQUE_ID_ddebug341, ptr noundef %3, ptr noundef nonnull @.str.123, ptr noundef %fmt) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call1, i32 0, i32 14
  %4 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %rx_vb2_queue = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 7
  %tx_vb2_queue = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 8
  %q.0 = select i1 %cmp, ptr %rx_vb2_queue, ptr %tx_vb2_queue
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %q.0, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %for.body, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %do.end
  %fmt12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %fmt12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 942691139, i32 %9)
  %cmp15 = icmp eq i32 %9, 942691139
  %pixelformat19 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %pixelformat19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 942691139, ptr %pixelformat19, align 8
  %buffersize21 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 30
  %11 = ptrtoint ptr %buffersize21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65536, ptr %buffersize21, align 4
  br i1 %cmp15, label %for.body.cleanup.sink.split_crit_edge, label %for.end

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %fmt12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 942691139, ptr %fmt12, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %for.body.cleanup.sink.split_crit_edge
  %buffersize32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %buffersize32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %buffersize32, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_try_fmt_sdr(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_try_fmt_sdr.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_try_fmt_sdr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_try_fmt_sdr.__UNIQUE_ID_ddebug343, ptr noundef %3, ptr noundef nonnull @.str.123, ptr noundef %fmt) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fmt6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 942691139, i32 %5)
  %cmp8 = icmp eq i32 %5, 942691139
  br i1 %cmp8, label %do.end.cleanup_crit_edge, label %for.end

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %fmt6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 942691139, ptr %fmt6, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

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
define internal i32 @hackrf_g_modulator(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_g_modulator.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_g_modulator, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_g_modulator.__UNIQUE_ID_ddebug348, ptr noundef %3, ptr noundef nonnull @.str.121, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %7, label %do.end.if.end20_crit_edge [
    i32 0, label %do.end.if.end20.sink.split_crit_edge
    i32 1, label %if.then10
  ]

do.end.if.end20.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.sink.split

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then10, %do.end.if.end20.sink.split_crit_edge
  %.str.128.sink = phi ptr [ @.str.128, %if.then10 ], [ @.str.127, %do.end.if.end20.sink.split_crit_edge ]
  %.sink35 = phi i32 [ 5, %if.then10 ], [ 4, %do.end.if.end20.sink.split_crit_edge ]
  %.sink34 = phi i32 [ 1, %if.then10 ], [ 200000, %do.end.if.end20.sink.split_crit_edge ]
  %.sink = phi i32 [ -2, %if.then10 ], [ 24000000, %do.end.if.end20.sink.split_crit_edge ]
  %name11 = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 1
  %call13 = tail call i32 @strscpy(ptr noundef %name11, ptr noundef nonnull %.str.128.sink, i32 noundef 32) #9
  %type14 = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 6
  %9 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink35, ptr %type14, align 4
  %capability15 = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 2
  %10 = ptrtoint ptr %capability15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5120, ptr %capability15, align 4
  %rangelow16 = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 3
  %11 = ptrtoint ptr %rangelow16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink34, ptr %rangelow16, align 4
  %rangehigh17 = getelementptr inbounds %struct.v4l2_modulator, ptr %a, i32 0, i32 4
  %12 = ptrtoint ptr %rangehigh17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %rangehigh17, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %do.end.if.end20_crit_edge
  %ret.0 = phi i32 [ -22, %do.end.if.end20_crit_edge ], [ 0, %if.end20.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_s_modulator(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_modulator.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_modulator, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_modulator.__UNIQUE_ID_ddebug347, ptr noundef %3, ptr noundef nonnull @.str.121, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  %cond = select i1 %cmp, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_g_tuner.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_g_tuner, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_g_tuner.__UNIQUE_ID_ddebug346, ptr noundef %3, ptr noundef nonnull @.str.121, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %7, label %do.end.if.end20_crit_edge [
    i32 0, label %do.end.if.end20.sink.split_crit_edge
    i32 1, label %if.then10
  ]

do.end.if.end20.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.sink.split

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then10, %do.end.if.end20.sink.split_crit_edge
  %.str.128.sink = phi ptr [ @.str.128, %if.then10 ], [ @.str.131, %do.end.if.end20.sink.split_crit_edge ]
  %.sink35 = phi i32 [ 5, %if.then10 ], [ 4, %do.end.if.end20.sink.split_crit_edge ]
  %.sink34 = phi i32 [ 1, %if.then10 ], [ 200000, %do.end.if.end20.sink.split_crit_edge ]
  %.sink = phi i32 [ -2, %if.then10 ], [ 24000000, %do.end.if.end20.sink.split_crit_edge ]
  %name11 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call13 = tail call i32 @strscpy(ptr noundef %name11, ptr noundef nonnull %.str.128.sink, i32 noundef 32) #9
  %type14 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %9 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink35, ptr %type14, align 4
  %capability15 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %10 = ptrtoint ptr %capability15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5120, ptr %capability15, align 4
  %rangelow16 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %11 = ptrtoint ptr %rangelow16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink34, ptr %rangelow16, align 4
  %rangehigh17 = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %12 = ptrtoint ptr %rangehigh17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %rangehigh17, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %do.end.if.end20_crit_edge
  %ret.0 = phi i32 [ -22, %do.end.if.end20_crit_edge ], [ 0, %if.end20.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_tuner.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_tuner, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_tuner.__UNIQUE_ID_ddebug345, ptr noundef %3, ptr noundef nonnull @.str.121, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  %spec.select = select i1 %switch, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  %call2 = tail call ptr @video_devdata(ptr noundef %file) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_g_frequency.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_g_frequency, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 8
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_g_frequency.__UNIQUE_ID_ddebug359, ptr noundef %5, ptr noundef nonnull @.str.134, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %11, label %if.else26 [
    i32 0, label %if.then8
    i32 1, label %if.then17
  ]

if.then8:                                         ; preds = %do.end
  %type9 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %type9, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call2, i32 0, i32 14
  %14 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %f_adc = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %f_adc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_adc, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %18 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %frequency, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %f_dac = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %f_dac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_dac, align 4
  %frequency12 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %21 = ptrtoint ptr %frequency12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %frequency12, align 4
  br label %cleanup

if.then17:                                        ; preds = %do.end
  %type18 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %22 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %type18, align 4
  %vfl_dir19 = getelementptr inbounds %struct.video_device, ptr %call2, i32 0, i32 14
  %23 = ptrtoint ptr %vfl_dir19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vfl_dir19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp20 = icmp eq i32 %24, 0
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %f_rx = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 27
  %25 = ptrtoint ptr %f_rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_rx, align 8
  %frequency22 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %27 = ptrtoint ptr %frequency22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %frequency22, align 4
  br label %cleanup

if.else23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %f_tx = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 28
  %28 = ptrtoint ptr %f_tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_tx, align 4
  %frequency24 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %30 = ptrtoint ptr %frequency24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %frequency24, align 4
  br label %cleanup

if.else26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_g_frequency.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_g_frequency, %if.then41)) #9
          to label %cleanup [label %if.then41], !srcloc !347

if.then41:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_g_frequency.__UNIQUE_ID_ddebug360, ptr noundef %dev42, ptr noundef nonnull @.str.49, i32 noundef -22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.else26, %if.else23, %if.then21, %if.else, %if.then11
  %retval.0 = phi i32 [ 0, %if.else23 ], [ 0, %if.then21 ], [ 0, %if.then11 ], [ 0, %if.else ], [ -22, %if.then41 ], [ -22, %if.else26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %intf1 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf1, align 4
  %call2 = tail call ptr @video_devdata(ptr noundef %file) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_frequency.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_frequency, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_frequency.__UNIQUE_ID_ddebug349, ptr noundef %dev6, ptr noundef nonnull @.str.136, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %11, label %do.end.do.body53_crit_edge [
    i32 0, label %if.then8
    i32 1, label %if.then25
  ]

do.end.do.body53_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

if.then8:                                         ; preds = %do.end
  %frequency9 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %frequency9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency9, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 200000)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 24000000)
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call2, i32 0, i32 14
  %17 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vfl_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18 = icmp eq i32 %18, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %f_adc = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %f_adc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %f_adc, align 8
  br label %if.end48

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %f_dac = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %f_dac to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %f_dac, align 4
  br label %if.end48

if.then25:                                        ; preds = %do.end
  %frequency26 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %21 = ptrtoint ptr %frequency26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frequency26, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 1)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 -2)
  %vfl_dir39 = getelementptr inbounds %struct.video_device, ptr %call2, i32 0, i32 14
  %25 = ptrtoint ptr %vfl_dir39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vfl_dir39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp40 = icmp eq i32 %26, 0
  br i1 %cmp40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %f_rx = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 27
  %27 = ptrtoint ptr %f_rx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %f_rx, align 8
  br label %if.end48

if.else43:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %f_tx = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 28
  %28 = ptrtoint ptr %f_tx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %24, ptr %f_tx, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else43, %if.then41, %if.else, %if.then19
  %.sink = phi i32 [ 16, %if.else43 ], [ 15, %if.then41 ], [ 11, %if.then19 ], [ 12, %if.else ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %1) #9
  %call49 = tail call fastcc i32 @hackrf_set_params(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %if.end48.do.body53_crit_edge

if.end48.do.body53_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body53:                                        ; preds = %if.end48.do.body53_crit_edge, %do.end.do.body53_crit_edge
  %ret.0 = phi i32 [ %call49, %if.end48.do.body53_crit_edge ], [ -22, %do.end.do.body53_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_s_frequency.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_s_frequency, %if.then65)) #9
          to label %cleanup [label %if.then65], !srcloc !347

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_s_frequency.__UNIQUE_ID_ddebug358, ptr noundef %dev66, ptr noundef nonnull @.str.49, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body53, %if.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48.cleanup_crit_edge ], [ %ret.0, %if.then65 ], [ %ret.0, %do.body53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hackrf_enum_freq_bands(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hackrf_enum_freq_bands.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hackrf_enum_freq_bands, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.hackrf_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hackrf_enum_freq_bands.__UNIQUE_ID_ddebug361, ptr noundef %3, ptr noundef nonnull @.str.138, i32 noundef %5, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %band, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %11, label %do.end.if.end25_crit_edge [
    i32 0, label %if.then6
    i32 1, label %if.then15
  ]

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then6:                                         ; preds = %do.end
  %index7 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %13 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.not = icmp eq i32 %14, 0
  br i1 %cmp8.not, label %if.else, label %if.then6.if.end25_crit_edge

if.then6.if.end25_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %15 = call ptr @memcpy(ptr %band, ptr @bands_adc_dac, i32 64)
  br label %if.end25

if.then15:                                        ; preds = %do.end
  %index16 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %16 = ptrtoint ptr %index16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17.not = icmp eq i32 %17, 0
  br i1 %cmp17.not, label %if.else19, label %if.then15.if.end25_crit_edge

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %18 = call ptr @memcpy(ptr %band, ptr @bands_rx_tx, i32 64)
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.then15.if.end25_crit_edge, %if.else, %if.then6.if.end25_crit_edge, %do.end.if.end25_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ 0, %if.else19 ], [ -22, %if.then6.if.end25_crit_edge ], [ -22, %if.then15.if.end25_crit_edge ], [ -22, %do.end.if.end25_crit_edge ]
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
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !249, !250, !252, !253, !254, !256, !258, !259, !260, !262, !264, !266, !267, !269, !271, !272, !274, !276, !278, !280, !281, !283, !285, !286, !287, !289, !290, !291, !293, !294, !296, !297, !299, !300, !302, !304, !306, !307, !309, !310, !312, !314, !315, !317, !318, !319, !321, !323, !324, !325, !327, !329, !330, !331, !333, !334}
!llvm.module.flags = !{!336, !337, !338, !339, !340, !341, !342, !343}
!llvm.ident = !{!344}

!0 = !{ptr @__param_enable_rf_gain_ctrl, !1, !"__param_enable_rf_gain_ctrl", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_rf_gain_ctrltype303, !1, !"__UNIQUE_ID_enable_rf_gain_ctrltype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable_rf_gain_ctrl304, !4, !"__UNIQUE_ID_enable_rf_gain_ctrl304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 25, i32 1}
!5 = !{ptr @__initcall__kmod_hackrf__368_1545_hackrf_driver_init6, !6, !"__initcall__kmod_hackrf__368_1545_hackrf_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1545, i32 1}
!7 = !{ptr @__exitcall_hackrf_driver_exit, !6, !"__exitcall_hackrf_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author369, !9, !"__UNIQUE_ID_author369", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1547, i32 1}
!10 = !{ptr @__UNIQUE_ID_description370, !11, !"__UNIQUE_ID_description370", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1548, i32 1}
!12 = !{ptr @__UNIQUE_ID_file371, !13, !"__UNIQUE_ID_file371", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1549, i32 1}
!14 = !{ptr @__UNIQUE_ID_license372, !13, !"__UNIQUE_ID_license372", i1 false, i1 false}
!15 = !{ptr @hackrf_enable_rf_gain_ctrl, !16, !"hackrf_enable_rf_gain_ctrl", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 23, i32 13}
!17 = !{ptr @__param_str_enable_rf_gain_ctrl, !1, !"__param_str_enable_rf_gain_ctrl", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hackrf_driver, !20, !"hackrf_driver", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1538, i32 26}
!21 = !{ptr @hackrf_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1358, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hackrf_probe.__key.2, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1359, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hackrf_probe.__key.4, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1360, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1383, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hackrf_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @hackrf_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1388, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hackrf_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @hackrf_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1389, i32 2}
!45 = !{ptr @hackrf_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @hackrf_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1402, i32 3}
!49 = !{ptr @hackrf_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @hackrf_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1417, i32 3}
!53 = !{ptr @hackrf_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hackrf_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @hackrf_probe._key, !56, !"_key", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1422, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1438, i32 3}
!60 = !{ptr @hackrf_probe._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hackrf_probe._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @hackrf_probe._key.28, !63, !"_key", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1445, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hackrf_probe._entry.30, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1459, i32 3}
!67 = !{ptr @hackrf_probe._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1469, i32 3}
!70 = !{ptr @hackrf_probe._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @hackrf_probe._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1486, i32 3}
!74 = !{ptr @hackrf_probe._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hackrf_probe._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1490, i32 2}
!78 = !{ptr @hackrf_probe._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @hackrf_probe._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @hackrf_probe._entry.41, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1506, i32 3}
!82 = !{ptr @hackrf_probe._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @hackrf_probe._entry.43, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1510, i32 2}
!85 = !{ptr @hackrf_probe._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1513, i32 2}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @hackrf_probe._entry.45, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @hackrf_probe._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1526, i32 2}
!93 = !{ptr @hackrf_probe.__UNIQUE_ID_ddebug367, !92, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!94 = distinct !{null, !95, !"formats", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 78, i32 29}
!96 = !{ptr @bands_adc_dac, !97, !"bands_adc_dac", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 49, i32 41}
!98 = !{ptr @bands_rx_tx, !99, !"bands_rx_tx", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 60, i32 41}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 207, i32 3}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @hackrf_ctrl_msg._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @hackrf_ctrl_msg._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 218, i32 2}
!107 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @hackrf_ctrl_msg.__UNIQUE_ID_ddebug305, !106, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 221, i32 3}
!112 = !{ptr @hackrf_ctrl_msg._entry.55, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @hackrf_ctrl_msg._entry_ptr.57, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @hackrf_vb2_ops, !115, !"hackrf_vb2_ops", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 885, i32 29}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 757, i32 2}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @hackrf_queue_setup.__UNIQUE_ID_ddebug335, !117, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 765, i32 2}
!122 = !{ptr @hackrf_queue_setup.__UNIQUE_ID_ddebug336, !121, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 797, i32 2}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @hackrf_start_streaming.__UNIQUE_ID_ddebug337, !124, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!127 = !{ptr @hackrf_start_streaming.__UNIQUE_ID_ddebug338, !128, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 855, i32 2}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 625, i32 2}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug327, !130, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 633, i32 4}
!135 = !{ptr @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug328, !134, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 639, i32 3}
!138 = !{ptr @hackrf_alloc_stream_bufs.__UNIQUE_ID_ddebug329, !137, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 682, i32 3}
!141 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @hackrf_alloc_urbs.__UNIQUE_ID_ddebug331, !140, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 488, i32 2}
!145 = !{ptr @hackrf_urb_complete_in._rs, !144, !"_rs", i1 false, i1 false}
!146 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @hackrf_urb_complete_in.descriptor, !144, !"descriptor", i1 false, i1 false}
!149 = !{ptr @hackrf_urb_complete_in._rs.72, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 500, i32 3}
!151 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @hackrf_urb_complete_in._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @hackrf_urb_complete_in._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @hackrf_urb_complete_in._rs.74, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 508, i32 3}
!156 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @hackrf_urb_complete_in._entry.75, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @hackrf_urb_complete_in._entry_ptr.77, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 468, i32 3}
!161 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @hackrf_copy_stream.__UNIQUE_ID_ddebug319, !160, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!165 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @hackrf_urb_complete_out._rs, !167, !"_rs", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 533, i32 2}
!168 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @hackrf_urb_complete_out.descriptor, !167, !"descriptor", i1 false, i1 false}
!170 = !{ptr @hackrf_urb_complete_out._rs.82, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 545, i32 3}
!172 = !{ptr @hackrf_urb_complete_out._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @hackrf_urb_complete_out._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @hackrf_urb_complete_out._rs.83, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 552, i32 3}
!176 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @hackrf_urb_complete_out._entry.84, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @hackrf_urb_complete_out._entry_ptr.86, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 590, i32 3}
!181 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @hackrf_submit_urbs.__UNIQUE_ID_ddebug325, !180, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 593, i32 4}
!185 = !{ptr @hackrf_submit_urbs._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @hackrf_submit_urbs._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = distinct !{null, !188, !"bandwidth_lut", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 245, i32 4}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 265, i32 3}
!191 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug306, !190, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 271, i32 3}
!195 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug307, !194, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 276, i32 3}
!198 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug308, !197, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 312, i32 3}
!201 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug309, !200, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 328, i32 3}
!204 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug310, !203, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 347, i32 3}
!207 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug311, !206, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 352, i32 3}
!210 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug312, !209, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 375, i32 3}
!213 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug313, !212, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 387, i32 3}
!216 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug314, !215, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 399, i32 3}
!219 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug315, !218, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 410, i32 3}
!222 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug316, !221, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 421, i32 3}
!225 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug317, !224, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!226 = !{ptr @hackrf_set_params.__UNIQUE_ID_ddebug318, !227, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 432, i32 2}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 576, i32 3}
!230 = !{ptr @.str.104, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @hackrf_kill_urbs.__UNIQUE_ID_ddebug324, !229, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 656, i32 4}
!234 = !{ptr @.str.106, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @hackrf_free_urbs.__UNIQUE_ID_ddebug330, !233, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 609, i32 4}
!238 = !{ptr @.str.108, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @hackrf_free_stream_bufs.__UNIQUE_ID_ddebug326, !237, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 735, i32 2}
!242 = !{ptr @.str.110, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @hackrf_return_all_buffers.__UNIQUE_ID_ddebug333, !241, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 744, i32 3}
!246 = !{ptr @hackrf_return_all_buffers.__UNIQUE_ID_ddebug334, !245, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 864, i32 2}
!249 = !{ptr @hackrf_stop_streaming.__UNIQUE_ID_ddebug339, !248, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!250 = !{ptr @hackrf_buf_queue._rs, !251, !"_rs", i1 false, i1 false}
!251 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 778, i32 2}
!252 = !{ptr @.str.113, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @hackrf_buf_queue.descriptor, !251, !"descriptor", i1 false, i1 false}
!254 = !{ptr @hackrf_ctrl_ops_rx, !255, !"hackrf_ctrl_ops_rx", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1337, i32 35}
!256 = !{ptr @.str.114, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1286, i32 3}
!258 = !{ptr @.str.115, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug363, !257, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!260 = !{ptr @hackrf_s_ctrl_rx.__UNIQUE_ID_ddebug364, !261, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1298, i32 2}
!262 = !{ptr @hackrf_ctrl_ops_tx, !263, !"hackrf_ctrl_ops_tx", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1341, i32 35}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1321, i32 3}
!266 = !{ptr @hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug365, !265, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!267 = !{ptr @hackrf_s_ctrl_tx.__UNIQUE_ID_ddebug366, !268, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1333, i32 2}
!269 = !{ptr @.str.117, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1256, i32 2}
!271 = !{ptr @hackrf_video_release.__UNIQUE_ID_ddebug362, !270, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!272 = !{ptr @hackrf_template, !273, !"hackrf_template", i1 false, i1 false}
!273 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1245, i32 34}
!274 = !{ptr @hackrf_fops, !275, !"hackrf_fops", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1234, i32 42}
!276 = !{ptr @hackrf_ioctl_ops, !277, !"hackrf_ioctl_ops", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1195, i32 36}
!278 = !{ptr @.str.118, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 900, i32 2}
!280 = !{ptr @hackrf_querycap.__UNIQUE_ID_ddebug340, !279, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!281 = !{ptr @.str.119, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../include/linux/usb.h", i32 912, i32 31}
!283 = !{ptr @.str.120, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 990, i32 2}
!285 = !{ptr @.str.121, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @hackrf_enum_fmt_sdr.__UNIQUE_ID_ddebug344, !284, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!287 = !{ptr @.str.122, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 954, i32 2}
!289 = !{ptr @.str.123, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @hackrf_g_fmt_sdr.__UNIQUE_ID_ddebug342, !288, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!291 = !{ptr @.str.124, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 921, i32 2}
!293 = !{ptr @hackrf_s_fmt_sdr.__UNIQUE_ID_ddebug341, !292, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!294 = !{ptr @.str.125, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 969, i32 2}
!296 = !{ptr @hackrf_try_fmt_sdr.__UNIQUE_ID_ddebug343, !295, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!297 = !{ptr @.str.126, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1062, i32 2}
!299 = !{ptr @hackrf_g_modulator.__UNIQUE_ID_ddebug348, !298, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!300 = !{ptr @.str.127, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1065, i32 20}
!302 = !{ptr @.str.128, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1072, i32 20}
!304 = !{ptr @.str.129, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1051, i32 2}
!306 = !{ptr @hackrf_s_modulator.__UNIQUE_ID_ddebug347, !305, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!307 = !{ptr @.str.130, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1023, i32 2}
!309 = !{ptr @hackrf_g_tuner.__UNIQUE_ID_ddebug346, !308, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!310 = !{ptr @.str.131, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1026, i32 20}
!312 = !{ptr @.str.132, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1006, i32 2}
!314 = !{ptr @hackrf_s_tuner.__UNIQUE_ID_ddebug345, !313, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!315 = !{ptr @.str.133, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1140, i32 2}
!317 = !{ptr @.str.134, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @hackrf_g_frequency.__UNIQUE_ID_ddebug359, !316, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!319 = !{ptr @hackrf_g_frequency.__UNIQUE_ID_ddebug360, !320, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1161, i32 2}
!321 = !{ptr @.str.135, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1094, i32 2}
!323 = !{ptr @.str.136, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @hackrf_s_frequency.__UNIQUE_ID_ddebug349, !322, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!325 = !{ptr @hackrf_s_frequency.__UNIQUE_ID_ddebug358, !326, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!326 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1128, i32 2}
!327 = !{ptr @.str.137, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1171, i32 2}
!329 = !{ptr @.str.138, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @hackrf_enum_freq_bands.__UNIQUE_ID_ddebug361, !328, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!331 = !{ptr @.str.139, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 710, i32 2}
!333 = !{ptr @hackrf_disconnect.__UNIQUE_ID_ddebug332, !332, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!334 = !{ptr @hackrf_id_table, !335, !"hackrf_id_table", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/hackrf/hackrf.c", i32 1531, i32 35}
!336 = !{i32 1, !"wchar_size", i32 2}
!337 = !{i32 1, !"min_enum_size", i32 4}
!338 = !{i32 8, !"branch-target-enforcement", i32 0}
!339 = !{i32 8, !"sign-return-address", i32 0}
!340 = !{i32 8, !"sign-return-address-all", i32 0}
!341 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!342 = !{i32 7, !"uwtable", i32 1}
!343 = !{i32 7, !"frame-pointer", i32 2}
!344 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!345 = !{!"auto-init"}
!346 = !{i8 0, i8 2}
!347 = !{i64 2148994538, i64 2148994543, i64 2148994556, i64 2148994600, i64 2148994634, i64 2148994655}
!348 = !{!"branch_weights", i32 1, i32 2000}
!349 = !{!"branch_weights", i32 2000, i32 1}
