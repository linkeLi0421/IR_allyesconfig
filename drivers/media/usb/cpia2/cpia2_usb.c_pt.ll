; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cpia2/cpia2_usb.c_pt.bc'
source_filename = "../drivers/media/usb/cpia2/cpia2_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.camera_data = type { %struct.v4l2_device, %struct.mutex, %struct.v4l2_ctrl_handler, %struct.anon.92, ptr, i32, i32, i8, ptr, i8, i32, i32, %struct.camera_params, i32, %struct.video_device, i32, i32, i32, ptr, i8, i32, i32, [2 x %struct.cpia2_sbuf], %struct.wait_queue_head, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, [60 x i8], i32, [60 x i8] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.92 = type { ptr, ptr }
%struct.camera_params = type { %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102 }
%struct.anon.93 = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.94 = type { i32, i16, i16, i16 }
%struct.anon.95 = type { i8, i8, i8 }
%struct.anon.96 = type { i8, i8 }
%struct.anon.97 = type { i8, i8, i8, i8 }
%struct.anon.98 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.99 = type { i32, i32 }
%struct.anon.100 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.101 = type { i8, i8, i8, i8, i8, i8 }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cpia2_sbuf = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpia2_command = type { i32, i8, i8, i8, i8, %union.reg_types }
%union.reg_types = type { ptr, [60 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.framebuf = type { i64, i32, i32, i32, i32, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@cpia2_usb_transfer_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cpia2: %s: Internal driver error: udev is NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpia2_usb_transfer_cmd\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/cpia2/cpia2_usb.c\00", [60 x i8] zeroinitializer }, align 32
@cpia2_usb_transfer_cmd._entry_ptr = internal global ptr @cpia2_usb_transfer_cmd._entry, section ".printk_index", align 4
@cpia2_usb_transfer_cmd._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013cpia2: %s: Internal driver error: register array is NULL\0A\00", [36 x i8] zeroinitializer }, align 32
@cpia2_usb_transfer_cmd._entry_ptr.5 = internal global ptr @cpia2_usb_transfer_cmd._entry.3, section ".printk_index", align 4
@cpia2_usb_transfer_cmd._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cpia2: Control message failed, err val = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cpia2_usb_transfer_cmd._entry_ptr.8 = internal global ptr @cpia2_usb_transfer_cmd._entry.6, section ".printk_index", align 4
@cpia2_usb_transfer_cmd._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cpia2: Message: request = 0x%0X, start = 0x%0X\0A\00", [46 x i8] zeroinitializer }, align 32
@cpia2_usb_transfer_cmd._entry_ptr.11 = internal global ptr @cpia2_usb_transfer_cmd._entry.9, section ".printk_index", align 4
@cpia2_usb_transfer_cmd._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016cpia2: Message: count = %d, register[0] = 0x%0X\0A\00", [45 x i8] zeroinitializer }, align 32
@cpia2_usb_transfer_cmd._entry_ptr.14 = internal global ptr @cpia2_usb_transfer_cmd._entry.12, section ".printk_index", align 4
@cpia2_usb_transfer_cmd._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016cpia2: Unexpected first byte of direction: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cpia2_usb_transfer_cmd._entry_ptr.17 = internal global ptr @cpia2_usb_transfer_cmd._entry.15, section ".printk_index", align 4
@cpia2_usb_transfer_cmd._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cpia2: Unexpected error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cpia2_usb_transfer_cmd._entry_ptr.20 = internal global ptr @cpia2_usb_transfer_cmd._entry.18, section ".printk_index", align 4
@cpia2_usb_stream_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013cpia2: cpia2_usb_change_streaming_alternate() = %d!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpia2_usb_stream_start\00", [41 x i8] zeroinitializer }, align 32
@cpia2_usb_stream_start._entry_ptr = internal global ptr @cpia2_usb_stream_start._entry, section ".printk_index", align 4
@cpia2_usb_stream_start._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\013cpia2: cpia2_usb_change_streaming_alternate(%d) =%d has already failed. Then tried to call set_alternate(USBIF_CMDONLY) = %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@cpia2_usb_stream_start._entry_ptr.25 = internal global ptr @cpia2_usb_stream_start._entry.23, section ".printk_index", align 4
@cpia2_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.26, ptr @cpia2_usb_probe, ptr @cpia2_usb_disconnect, ptr null, ptr @cpia2_usb_suspend, ptr @cpia2_usb_resume, ptr @cpia2_usb_resume, ptr null, ptr null, ptr @cpia2_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpia2\00", [26 x i8] zeroinitializer }, align 32
@configure_transfer_mode.iso_regs = internal constant { [8 x [4 x i8]], [32 x i8] } { [8 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\B9\00\00~", [4 x i8] c"\B9\00\01~", [4 x i8] c"\B9\00\02~", [4 x i8] c"\B9\00\02\FE", [4 x i8] c"\B9\00\03~", [4 x i8] c"\B9\00\03\FD"], [32 x i8] zeroinitializer }, align 32
@frame_sizes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 128, i32 384, i32 640, i32 768, i32 896, i32 1023], [32 x i8] zeroinitializer }, align 32
@submit_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cpia2: usb_submit_urb[%d]() = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"submit_urbs\00", [20 x i8] zeroinitializer }, align 32
@submit_urbs._entry_ptr = internal global ptr @submit_urbs._entry, section ".printk_index", align 4
@cpia2_usb_complete.frame_ready = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cpia2_usb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016cpia2: Will now stop the streaming: streaming = %d, present=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpia2_usb_complete\00", [45 x i8] zeroinitializer }, align 32
@cpia2_usb_complete._entry_ptr = internal global ptr @cpia2_usb_complete._entry, section ".printk_index", align 4
@cpia2_usb_complete._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cpia2: cpia2 data error: [%d] len=%d, status = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cpia2_usb_complete._entry_ptr.33 = internal global ptr @cpia2_usb_complete._entry.31, section ".printk_index", align 4
@cpia2_usb_complete._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016cpia2: checksum mismatch: [%d] len=%d, calculated = %x, checksum = %x\0A\00", [55 x i8] zeroinitializer }, align 32
@cpia2_usb_complete._entry_ptr.36 = internal global ptr @cpia2_usb_complete._entry.34, section ".printk_index", align 4
@cpia2_usb_complete._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cpia2: buffer overflow! length: %d, n: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cpia2_usb_complete._entry_ptr.39 = internal global ptr @cpia2_usb_complete._entry.37, section ".printk_index", align 4
@cpia2_usb_complete._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cpia2: %s: usb_submit_urb ret %d!\0A\00", [59 x i8] zeroinitializer }, align 32
@cpia2_usb_complete._entry_ptr.42 = internal global ptr @cpia2_usb_complete._entry.40, section ".printk_index", align 4
@process_frame.frame_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cpia2_id_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1363, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1363, i16 320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1363, i16 337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016cpia2: CPiA2 USB camera found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpia2_usb_probe\00", [16 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry_ptr = internal global ptr @cpia2_usb_probe._entry, section ".printk_index", align 4
@cpia2_usb_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cpia2: %s: usb_set_interface error (ret = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry_ptr.47 = internal global ptr @cpia2_usb_probe._entry.45, section ".printk_index", align 4
@cpia2_usb_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013cpia2: %s: failed to initialize cpia2 camera (ret = %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry_ptr.50 = internal global ptr @cpia2_usb_probe._entry.48, section ".printk_index", align 4
@cpia2_usb_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cpia2:   CPiA Version: %d.%02d (%d.%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry_ptr.53 = internal global ptr @cpia2_usb_probe._entry.51, section ".printk_index", align 4
@cpia2_usb_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016cpia2:   CPiA PnP-ID: %04x:%04x:%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry_ptr.56 = internal global ptr @cpia2_usb_probe._entry.54, section ".printk_index", align 4
@cpia2_usb_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.2, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cpia2:   SensorID: %d.(version %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry_ptr.59 = internal global ptr @cpia2_usb_probe._entry.57, section ".printk_index", align 4
@cpia2_usb_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.44, ptr @.str.2, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cpia2: %s: Failed to register cpia2 camera (ret = %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@cpia2_usb_probe._entry_ptr.62 = internal global ptr @cpia2_usb_probe._entry.60, section ".printk_index", align 4
@cpia2_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cpia2: CPiA2 camera disconnected.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpia2_usb_disconnect\00", [43 x i8] zeroinitializer }, align 32
@cpia2_usb_disconnect._entry_ptr = internal global ptr @cpia2_usb_disconnect._entry, section ".printk_index", align 4
@cpia2_usb_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 925, ptr @.str.67, ptr @.str.68 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"going into suspend..\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpia2_usb_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpia2_usb_suspend._entry_ptr = internal global ptr @cpia2_usb_suspend._entry, section ".printk_index", align 4
@cpia2_usb_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 943, ptr @.str.67, ptr @.str.68 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"coming out of suspend..\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpia2_usb_resume\00", [47 x i8] zeroinitializer }, align 32
@cpia2_usb_resume._entry_ptr = internal global ptr @cpia2_usb_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 216, i64 255]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 216, i64 255]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 608, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 613, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 624, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 625, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 627, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 632, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 638, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 748, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 752, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"cpia2_driver\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 62, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 954, i32 9 }
@___asan_gen_.143 = private unnamed_addr constant [9 x i8] c"iso_regs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 373, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"frame_sizes\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 25, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 710, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"cpia2_usb_complete.frame_ready\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 214, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 259, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 274, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 297, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 362, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"frame_count\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 80, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"cpia2_id_table\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 54, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 835, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 846, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 852, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 855, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 860, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 864, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 872, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 911, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 925, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [39 x i8] c"../drivers/media/usb/cpia2/cpia2_usb.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 943, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @cpia2_usb_complete._entry, ptr @cpia2_usb_complete._entry.31, ptr @cpia2_usb_complete._entry.34, ptr @cpia2_usb_complete._entry.37, ptr @cpia2_usb_complete._entry.40, ptr @cpia2_usb_complete._entry_ptr, ptr @cpia2_usb_complete._entry_ptr.33, ptr @cpia2_usb_complete._entry_ptr.36, ptr @cpia2_usb_complete._entry_ptr.39, ptr @cpia2_usb_complete._entry_ptr.42, ptr @cpia2_usb_disconnect._entry, ptr @cpia2_usb_disconnect._entry_ptr, ptr @cpia2_usb_probe._entry, ptr @cpia2_usb_probe._entry.45, ptr @cpia2_usb_probe._entry.48, ptr @cpia2_usb_probe._entry.51, ptr @cpia2_usb_probe._entry.54, ptr @cpia2_usb_probe._entry.57, ptr @cpia2_usb_probe._entry.60, ptr @cpia2_usb_probe._entry_ptr, ptr @cpia2_usb_probe._entry_ptr.47, ptr @cpia2_usb_probe._entry_ptr.50, ptr @cpia2_usb_probe._entry_ptr.53, ptr @cpia2_usb_probe._entry_ptr.56, ptr @cpia2_usb_probe._entry_ptr.59, ptr @cpia2_usb_probe._entry_ptr.62, ptr @cpia2_usb_resume._entry, ptr @cpia2_usb_resume._entry_ptr, ptr @cpia2_usb_stream_start._entry, ptr @cpia2_usb_stream_start._entry.23, ptr @cpia2_usb_stream_start._entry_ptr, ptr @cpia2_usb_stream_start._entry_ptr.25, ptr @cpia2_usb_suspend._entry, ptr @cpia2_usb_suspend._entry_ptr, ptr @cpia2_usb_transfer_cmd._entry, ptr @cpia2_usb_transfer_cmd._entry.12, ptr @cpia2_usb_transfer_cmd._entry.15, ptr @cpia2_usb_transfer_cmd._entry.18, ptr @cpia2_usb_transfer_cmd._entry.3, ptr @cpia2_usb_transfer_cmd._entry.6, ptr @cpia2_usb_transfer_cmd._entry.9, ptr @cpia2_usb_transfer_cmd._entry_ptr, ptr @cpia2_usb_transfer_cmd._entry_ptr.11, ptr @cpia2_usb_transfer_cmd._entry_ptr.14, ptr @cpia2_usb_transfer_cmd._entry_ptr.17, ptr @cpia2_usb_transfer_cmd._entry_ptr.20, ptr @cpia2_usb_transfer_cmd._entry_ptr.5, ptr @cpia2_usb_transfer_cmd._entry_ptr.8, ptr @submit_urbs._entry, ptr @submit_urbs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @cpia2_driver, ptr @.str.26, ptr @configure_transfer_mode.iso_regs, ptr @frame_sizes, ptr @.str.27, ptr @.str.28, ptr @cpia2_usb_complete.frame_ready, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @process_frame.frame_count, ptr @cpia2_id_table, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_transfer_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_transfer_cmd._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_transfer_cmd._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_transfer_cmd._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_transfer_cmd._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_transfer_cmd._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_transfer_cmd._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_stream_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_stream_start._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_transfer_mode.iso_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frame_sizes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_complete.frame_ready to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_complete._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_complete._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_complete._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_complete._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_frame.frame_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpia2_usb_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_usb_change_streaming_alternate(ptr noundef %cam, i32 noundef %alt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %alt, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %0)
  %1 = icmp ult i32 %0, -6
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream_mode = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 2
  %2 = ptrtoint ptr %stream_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream_mode, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %alt)
  %cmp2 = icmp eq i32 %conv, %alt
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @cpia2_usb_stream_pause(ptr noundef %cam)
  tail call fastcc void @configure_transfer_mode(ptr noundef %cam, i32 noundef %alt)
  %conv7 = trunc i32 %alt to i8
  %4 = ptrtoint ptr %stream_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %stream_mode, align 1
  %call11 = tail call i32 @cpia2_reset_camera(ptr noundef %cam) #6
  %call12 = tail call i32 @cpia2_usb_stream_resume(ptr noundef %cam)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_usb_stream_pause(ptr nocapture noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 10
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 0
  %urb.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 0, i32 1
  %2 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %5) #6
  %6 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %urb.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %8, null
  br i1 %tobool12.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then13.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %8) #6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %if.end.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 1
  %urb.1.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 1, i32 1
  %10 = ptrtoint ptr %urb.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %11, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.end.1.i_crit_edge, label %if.then.1.i

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #6
  %12 = ptrtoint ptr %urb.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #6
  %14 = ptrtoint ptr %urb.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %urb.1.i, align 4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.inc.i.if.end.1.i_crit_edge
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool12.not.1.i = icmp eq ptr %16, null
  br i1 %tobool12.not.1.i, label %if.end.1.i.free_sbufs.exit_crit_edge, label %if.then13.1.i

if.end.1.i.free_sbufs.exit_crit_edge:             ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_sbufs.exit

if.then13.1.i:                                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %16) #6
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %free_sbufs.exit

free_sbufs.exit:                                  ; preds = %if.then13.1.i, %if.end.1.i.free_sbufs.exit_crit_edge
  %cur_alt.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 20
  %18 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_alt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %free_sbufs.exit.if.end_crit_edge, label %do.end.i

free_sbufs.exit.if.end_crit_edge:                 ; preds = %free_sbufs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %free_sbufs.exit
  %dev.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %iface.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 19
  %22 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iface.i, align 8
  %conv.i = zext i8 %23 to i32
  %call.i = tail call i32 @usb_set_interface(ptr noundef %21, i32 noundef %conv.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %if.end8.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end8.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_alt.i, align 4
  %old_alt.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 21
  %26 = ptrtoint ptr %old_alt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %old_alt.i, align 8
  store i32 0, ptr %cur_alt.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end8.i, %do.end.i.if.end_crit_edge, %free_sbufs.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %if.end8.i ], [ 0, %free_sbufs.exit.if.end_crit_edge ], [ %call.i, %do.end.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @configure_transfer_mode(ptr noundef %cam, i32 noundef %alt) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cpia2_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd) #6
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 72)
  %flags.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 14, i32 17
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %direction = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %direction, align 2
  %arrayidx = getelementptr [8 x [4 x i8]], ptr @configure_transfer_mode.iso_regs, i32 0, i32 %alt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %buffer = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buffer, align 4
  %arrayidx4 = getelementptr [8 x [4 x i8]], ptr @configure_transfer_mode.iso_regs, i32 0, i32 %alt, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr inbounds [64 x i8], ptr %buffer, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr [8 x [4 x i8]], ptr @configure_transfer_mode.iso_regs, i32 0, i32 %alt, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr inbounds [64 x i8], ptr %buffer, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx10, align 2
  %arrayidx12 = getelementptr [8 x [4 x i8]], ptr @configure_transfer_mode.iso_regs, i32 0, i32 %alt, i32 3
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr inbounds [64 x i8], ptr %buffer, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx14, align 1
  %req_mode = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %req_mode, align 4
  %start = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 4
  %17 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -80, ptr %start, align 1
  %reg_count = getelementptr inbounds %struct.cpia2_command, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %reg_count, align 1
  %call15 = call i32 @cpia2_send_command(ptr noundef %cam, ptr noundef nonnull %cmd) #6
  %19 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %direction, align 2
  %20 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %req_mode, align 4
  %21 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -87, ptr %start, align 1
  %22 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %reg_count, align 1
  %call20 = call i32 @cpia2_send_command(ptr noundef %cam, ptr noundef nonnull %cmd) #6
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buffer, align 4
  %25 = and i8 %24, -8
  %26 = zext i32 %alt to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %alt, label %do.end33 [
    i32 1, label %if.end.if.end39.sink.split_crit_edge
    i32 0, label %if.end.if.end39_crit_edge
  ]

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end.if.end39.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %do.end33, %if.end.if.end39.sink.split_crit_edge
  %.sink1 = phi i8 [ 1, %do.end33 ], [ 2, %if.end.if.end39.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %do.end33 ], [ %alt, %if.end.if.end39.sink.split_crit_edge ]
  %27 = or i8 %25, %.sink1
  %xfer_mode37 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 11
  %28 = ptrtoint ptr %xfer_mode37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %xfer_mode37, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.end.if.end39_crit_edge
  %reg.0 = phi i8 [ %25, %if.end.if.end39_crit_edge ], [ %27, %if.end39.sink.split ]
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %reg.0, ptr %buffer, align 4
  %30 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %direction, align 2
  %31 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -87, ptr %start, align 1
  %32 = ptrtoint ptr %reg_count to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %reg_count, align 1
  %33 = ptrtoint ptr %req_mode to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %req_mode, align 4
  %call46 = call i32 @cpia2_send_command(ptr noundef %cam, ptr noundef nonnull %cmd) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_reset_camera(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_usb_stream_resume(ptr noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 10
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %first_image_seen = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 5
  %2 = ptrtoint ptr %first_image_seen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %first_image_seen, align 8
  %stream_mode = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 2
  %3 = ptrtoint ptr %stream_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stream_mode, align 1
  %conv = zext i8 %4 to i32
  %cur_alt.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 20
  %5 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_alt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.i = icmp eq i32 %6, %conv
  br i1 %cmp.i, label %if.then.if.then2_crit_edge, label %if.end.i

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 0
  br i1 %cmp2.not.i, label %if.end.i.if.end8.i_crit_edge, label %do.end.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %iface.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 19
  %9 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iface.i, align 8
  %conv.i = zext i8 %10 to i32
  %call.i = tail call i32 @usb_set_interface(ptr noundef %8, i32 noundef %conv.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %do.end.i.if.end8.i_crit_edge, label %do.end.i.if.end6_crit_edge

do.end.i.if.end6_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end.i.if.end8.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9.not.i = icmp eq i8 %4, 0
  br i1 %cmp9.not.i, label %if.end8.i.if.end23.i_crit_edge, label %do.end14.i

if.end8.i.if.end23.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

do.end14.i:                                       ; preds = %if.end8.i
  %dev15.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %11 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15.i, align 4
  %iface16.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 19
  %13 = ptrtoint ptr %iface16.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %iface16.i, align 8
  %conv17.i = zext i8 %14 to i32
  %call18.i = tail call i32 @usb_set_interface(ptr noundef %12, i32 noundef %conv17.i, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.not.i, label %do.end14.i.if.end23.i_crit_edge, label %do.end14.i.if.end6_crit_edge

do.end14.i.if.end6_crit_edge:                     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end14.i.if.end23.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end14.i.if.end23.i_crit_edge, %if.end8.i.if.end23.i_crit_edge
  %15 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_alt.i, align 4
  %old_alt.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 21
  %17 = ptrtoint ptr %old_alt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old_alt.i, align 8
  store i32 %conv, ptr %cur_alt.i, align 4
  br label %if.then2

if.then2:                                         ; preds = %if.end23.i, %if.then.if.then2_crit_edge
  %user_effects = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 7, i32 10
  %18 = ptrtoint ptr %user_effects to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %user_effects, align 2
  %call4 = tail call i32 @cpia2_do_command(ptr noundef %cam, i32 noundef 52, i8 noundef zeroext 1, i8 noundef zeroext %19) #6
  %arrayidx.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i15, label %if.then2.for.inc.i_crit_edge

if.then2.for.inc.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i15:                                       ; preds = %if.then2
  %22 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_alt.i, align 4
  %arrayidx1.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1.i, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 10) #6
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kmalloc_array.exit.thread179.i, label %if.end7.i.i, !prof !134

kmalloc_array.exit.thread179.i:                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end6

if.end7.i.i:                                      ; preds = %if.end.i15
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #9
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i.if.end6_crit_edge, label %if.end7.i.i.for.inc.i_crit_edge

if.end7.i.i.for.inc.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end7.i.i.if.end6_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

while.body.i:                                     ; preds = %if.end7.i.1.i.while.body.i_crit_edge, %kmalloc_array.exit.1.thread.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %32) #6
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end6

for.inc.i:                                        ; preds = %if.end7.i.i.for.inc.i_crit_edge, %if.then2.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %35, null
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %36 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_alt.i, align 4
  %arrayidx1.1.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx1.1.i, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 10) #6
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kmalloc_array.exit.1.thread.i, label %if.end7.i.1.i, !prof !134

kmalloc_array.exit.1.thread.i:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %while.body.i

if.end7.i.1.i:                                    ; preds = %if.end.1.i
  %43 = extractvalue { i32, i1 } %40, 0
  %call8.i.1.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #9
  %44 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.1.i, ptr %arrayidx.1.i, align 4
  %tobool8.not.1.i = icmp eq ptr %call8.i.1.i, null
  br i1 %tobool8.not.1.i, label %if.end7.i.1.i.while.body.i_crit_edge, label %if.end7.i.1.i.for.inc.1.i_crit_edge

if.end7.i.1.i.for.inc.1.i_crit_edge:              ; preds = %if.end7.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end7.i.1.i.while.body.i_crit_edge:             ; preds = %if.end7.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

for.inc.1.i:                                      ; preds = %if.end7.i.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %dev.i16 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc78.i.for.body20.i_crit_edge, %for.inc.1.i
  %i.2168.i = phi i32 [ 0, %for.inc.1.i ], [ %inc79.i, %for.inc78.i.for.body20.i_crit_edge ]
  %arrayidx22.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 %i.2168.i
  %urb23.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 %i.2168.i, i32 1
  %45 = ptrtoint ptr %urb23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %urb23.i, align 4
  %tobool24.not.i = icmp eq ptr %46, null
  br i1 %tobool24.not.i, label %if.end26.i, label %for.body20.i.for.inc78.i_crit_edge

for.body20.i.for.inc78.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc78.i

if.end26.i:                                       ; preds = %for.body20.i
  %call27.i = tail call ptr @usb_alloc_urb(i32 noundef 10, i32 noundef 3264) #6
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %for.cond30.preheader.i, label %if.end51.i

for.cond30.preheader.i:                           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2168.i)
  %cmp31171.not.i = icmp eq i32 %i.2168.i, 0
  br i1 %cmp31171.not.i, label %for.cond30.preheader.i.for.cond39.preheader.i_crit_edge, label %for.body32.lr.ph.i

for.cond30.preheader.i.for.cond39.preheader.i_crit_edge: ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond39.preheader.i

for.body32.lr.ph.i:                               ; preds = %for.cond30.preheader.i
  %urb35.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 22, i32 0, i32 1
  %cmp31.not.i = icmp eq i32 %i.2168.i, 1
  br label %for.body32.i

for.cond39.preheader.i:                           ; preds = %for.body32.i.for.cond39.preheader.i_crit_edge, %for.cond30.preheader.i.for.cond39.preheader.i_crit_edge
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %48) #6
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %51) #6
  %52 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %if.end6

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %for.body32.lr.ph.i
  %53 = ptrtoint ptr %urb35.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %urb35.i, align 4
  tail call void @usb_free_urb(ptr noundef %54) #6
  br i1 %cmp31.not.i, label %for.body32.i.for.cond39.preheader.i_crit_edge, label %for.body32.i.for.body32.i_crit_edge

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32.i

for.body32.i.for.cond39.preheader.i_crit_edge:    ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond39.preheader.i

if.end51.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %urb23.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call27.i, ptr %urb23.i, align 4
  %56 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i16, align 4
  %dev55.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 8
  %58 = ptrtoint ptr %dev55.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %dev55.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 27
  %59 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cam, ptr %context.i, align 4
  %60 = load ptr, ptr %dev.i16, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i = shl i32 %62, 8
  %or58.i = or i32 %shl.i.i, 32896
  %pipe.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 10
  %63 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or58.i, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 13
  %64 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %transfer_flags.i, align 4
  %65 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx22.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 14
  %67 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %transfer_buffer.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 28
  %68 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @cpia2_usb_complete, ptr %complete.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 24
  %69 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 10, ptr %number_of_packets.i, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 25
  %70 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %interval.i, align 4
  %71 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_alt.i, align 4
  %arrayidx63.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx63.i, align 4
  %mul.i = mul i32 %74, 10
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call27.i, i32 0, i32 19
  %75 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul.i, ptr %transfer_buffer_length.i, align 4
  %arrayidx70.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 0
  %76 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx70.i, align 4
  %77 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx72.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 0, i32 1
  %80 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %length.i, align 4
  %81 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.1.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx68.1.i, align 4
  %arrayidx70.1.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 1
  %84 = ptrtoint ptr %arrayidx70.1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx70.1.i, align 4
  %85 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.1.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx72.1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx72.1.i, align 4
  %length.1.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 1, i32 1
  %88 = ptrtoint ptr %length.1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %length.1.i, align 4
  %89 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.2.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx68.2.i, align 4
  %mul69.2.i = shl i32 %91, 1
  %arrayidx70.2.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 2
  %92 = ptrtoint ptr %arrayidx70.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %mul69.2.i, ptr %arrayidx70.2.i, align 4
  %93 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.2.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx72.2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx72.2.i, align 4
  %length.2.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 2, i32 1
  %96 = ptrtoint ptr %length.2.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %length.2.i, align 4
  %97 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.3.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx68.3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx68.3.i, align 4
  %mul69.3.i = mul i32 %99, 3
  %arrayidx70.3.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 3
  %100 = ptrtoint ptr %arrayidx70.3.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul69.3.i, ptr %arrayidx70.3.i, align 4
  %101 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.3.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx72.3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx72.3.i, align 4
  %length.3.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 3, i32 1
  %104 = ptrtoint ptr %length.3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %length.3.i, align 4
  %105 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.4.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx68.4.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx68.4.i, align 4
  %mul69.4.i = shl i32 %107, 2
  %arrayidx70.4.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 4
  %108 = ptrtoint ptr %arrayidx70.4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mul69.4.i, ptr %arrayidx70.4.i, align 4
  %109 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.4.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx72.4.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx72.4.i, align 4
  %length.4.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 4, i32 1
  %112 = ptrtoint ptr %length.4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %length.4.i, align 4
  %113 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.5.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx68.5.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx68.5.i, align 4
  %mul69.5.i = mul i32 %115, 5
  %arrayidx70.5.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 5
  %116 = ptrtoint ptr %arrayidx70.5.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %mul69.5.i, ptr %arrayidx70.5.i, align 4
  %117 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.5.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx72.5.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx72.5.i, align 4
  %length.5.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 5, i32 1
  %120 = ptrtoint ptr %length.5.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %length.5.i, align 4
  %121 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.6.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx68.6.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx68.6.i, align 4
  %mul69.6.i = mul i32 %123, 6
  %arrayidx70.6.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 6
  %124 = ptrtoint ptr %arrayidx70.6.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %mul69.6.i, ptr %arrayidx70.6.i, align 4
  %125 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.6.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %125
  %126 = ptrtoint ptr %arrayidx72.6.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx72.6.i, align 4
  %length.6.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 6, i32 1
  %128 = ptrtoint ptr %length.6.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %length.6.i, align 4
  %129 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.7.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %129
  %130 = ptrtoint ptr %arrayidx68.7.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx68.7.i, align 4
  %mul69.7.i = mul i32 %131, 7
  %arrayidx70.7.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 7
  %132 = ptrtoint ptr %arrayidx70.7.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %mul69.7.i, ptr %arrayidx70.7.i, align 4
  %133 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.7.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx72.7.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx72.7.i, align 4
  %length.7.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 7, i32 1
  %136 = ptrtoint ptr %length.7.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %length.7.i, align 4
  %137 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.8.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %137
  %138 = ptrtoint ptr %arrayidx68.8.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx68.8.i, align 4
  %mul69.8.i = shl i32 %139, 3
  %arrayidx70.8.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 8
  %140 = ptrtoint ptr %arrayidx70.8.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %mul69.8.i, ptr %arrayidx70.8.i, align 4
  %141 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.8.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx72.8.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx72.8.i, align 4
  %length.8.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 8, i32 1
  %144 = ptrtoint ptr %length.8.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %length.8.i, align 4
  %145 = load i32, ptr %cur_alt.i, align 4
  %arrayidx68.9.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %145
  %146 = ptrtoint ptr %arrayidx68.9.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx68.9.i, align 4
  %mul69.9.i = mul i32 %147, 9
  %arrayidx70.9.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 9
  %148 = ptrtoint ptr %arrayidx70.9.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %mul69.9.i, ptr %arrayidx70.9.i, align 4
  %149 = load i32, ptr %cur_alt.i, align 4
  %arrayidx72.9.i = getelementptr [8 x i32], ptr @frame_sizes, i32 0, i32 %149
  %150 = ptrtoint ptr %arrayidx72.9.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx72.9.i, align 4
  %length.9.i = getelementptr %struct.urb, ptr %call27.i, i32 0, i32 29, i32 9, i32 1
  %152 = ptrtoint ptr %length.9.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %length.9.i, align 4
  br label %for.inc78.i

for.inc78.i:                                      ; preds = %if.end51.i, %for.body20.i.for.inc78.i_crit_edge
  %inc79.i = add nuw nsw i32 %i.2168.i, 1
  %exitcond.not.i = icmp eq i32 %inc79.i, 2
  br i1 %exitcond.not.i, label %for.body83.preheader.i, label %for.inc78.i.for.body20.i_crit_edge

for.inc78.i.for.body20.i_crit_edge:               ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20.i

for.body83.preheader.i:                           ; preds = %for.inc78.i
  %urb86.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 0, i32 1
  %153 = ptrtoint ptr %urb86.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %urb86.i, align 4
  %call87.i = tail call i32 @usb_submit_urb(ptr noundef %154, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %for.inc92.i, label %for.body83.preheader.i.do.end.i17_crit_edge

for.body83.preheader.i.do.end.i17_crit_edge:      ; preds = %for.body83.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i17

do.end.i17:                                       ; preds = %for.inc92.i.do.end.i17_crit_edge, %for.body83.preheader.i.do.end.i17_crit_edge
  %i.3170.lcssa.i = phi i32 [ 0, %for.body83.preheader.i.do.end.i17_crit_edge ], [ 1, %for.inc92.i.do.end.i17_crit_edge ]
  %call87.lcssa.i = phi i32 [ %call87.i, %for.body83.preheader.i.do.end.i17_crit_edge ], [ %call87.1.i, %for.inc92.i.do.end.i17_crit_edge ]
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.3170.lcssa.i, i32 noundef %call87.lcssa.i) #10
  br label %if.end6

for.inc92.i:                                      ; preds = %for.body83.preheader.i
  %urb86.1.i = getelementptr %struct.camera_data, ptr %cam, i32 0, i32 22, i32 1, i32 1
  %155 = ptrtoint ptr %urb86.1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %urb86.1.i, align 4
  %call87.1.i = tail call i32 @usb_submit_urb(ptr noundef %156, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.1.i)
  %tobool88.not.1.i = icmp eq i32 %call87.1.i, 0
  br i1 %tobool88.not.1.i, label %for.inc92.i.if.end6_crit_edge, label %for.inc92.i.do.end.i17_crit_edge

for.inc92.i.do.end.i17_crit_edge:                 ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i17

for.inc92.i.if.end6_crit_edge:                    ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %for.inc92.i.if.end6_crit_edge, %do.end.i17, %for.cond39.preheader.i, %while.body.i, %if.end7.i.i.if.end6_crit_edge, %kmalloc_array.exit.thread179.i, %do.end14.i.if.end6_crit_edge, %do.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end6_crit_edge ], [ %call.i, %do.end.i.if.end6_crit_edge ], [ %call18.i, %do.end14.i.if.end6_crit_edge ], [ %call87.lcssa.i, %do.end.i17 ], [ -12, %while.body.i ], [ -12, %for.cond39.preheader.i ], [ 0, %for.inc92.i.if.end6_crit_edge ], [ -12, %if.end7.i.i.if.end6_crit_edge ], [ -12, %kmalloc_array.exit.thread179.i ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_usb_transfer_cmd(ptr nocapture noundef readonly %cam, ptr noundef %registers, i8 noundef zeroext %request, i8 noundef zeroext %start, i8 noundef zeroext %count, i8 noundef zeroext %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %registers, null
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = zext i8 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %direction, label %do.end52 [
    i8 0, label %if.then10
    i8 1, label %if.then21
  ]

if.then10:                                        ; preds = %if.end8
  %conv11 = zext i8 %start to i16
  %conv12 = zext i8 %count to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count)
  %cmp.i = icmp eq i8 %count, 0
  br i1 %cmp.i, label %if.then10.do.end63_crit_edge, label %if.end8.i.i

if.then10.do.end63_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end8.i.i:                                      ; preds = %if.then10
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv12, i32 noundef 3264) #9
  %tobool1.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not.i, label %if.end8.i.i.do.end63_crit_edge, label %if.end3.i

if.end8.i.i.do.end63_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end3.i:                                        ; preds = %if.end8.i.i
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %4, 8
  %or5.i = or i32 %shl.i.i, -2147483520
  %conv.i = zext i8 %count to i16
  %call6.i = tail call i32 @usb_control_msg(ptr noundef nonnull %1, i32 noundef %or5.i, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %conv11, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv.i, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp7.i = icmp sgt i32 %call6.i, -1
  br i1 %cmp7.i, label %if.then9.i, label %if.end3.i.if.end57_crit_edge

if.end3.i.if.end57_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = call ptr @memcpy(ptr %registers, ptr %call9.i.i, i32 %conv12)
  br label %if.end57

if.then21:                                        ; preds = %if.end8
  %conv22 = zext i8 %start to i16
  %conv23 = zext i8 %count to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count)
  %cmp.i87 = icmp eq i8 %count, 0
  br i1 %cmp.i87, label %if.then21.if.end57.thread100_crit_edge, label %if.end.i90

if.then21.if.end57.thread100_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.thread100

if.end.i90:                                       ; preds = %if.then21
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull %registers, i32 noundef %conv23, i32 noundef 3264) #6
  %tobool1.not.i89 = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i89, label %if.end.i90.if.end57.thread100_crit_edge, label %write_packet.exit

if.end.i90.if.end57.thread100_crit_edge:          ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.thread100

write_packet.exit:                                ; preds = %if.end.i90
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i.i91 = shl i32 %7, 8
  %or.i = or i32 %shl.i.i91, -2147483648
  %conv.i92 = zext i8 %count to i16
  %call5.i = tail call i32 @usb_control_msg(ptr noundef nonnull %1, i32 noundef %or.i, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %conv22, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext %conv.i92, i32 noundef 1000) #6
  tail call void @kfree(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp25 = icmp slt i32 %call5.i, 0
  br i1 %cmp25, label %write_packet.exit.if.end57.thread100_crit_edge, label %write_packet.exit.cleanup_crit_edge

write_packet.exit.cleanup_crit_edge:              ; preds = %write_packet.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

write_packet.exit.if.end57.thread100_crit_edge:   ; preds = %write_packet.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.thread100

if.end57.thread100:                               ; preds = %write_packet.exit.if.end57.thread100_crit_edge, %if.end.i90.if.end57.thread100_crit_edge, %if.then21.if.end57.thread100_crit_edge
  %retval.0.i9497 = phi i32 [ %call5.i, %write_packet.exit.if.end57.thread100_crit_edge ], [ -12, %if.end.i90.if.end57.thread100_crit_edge ], [ -22, %if.then21.if.end57.thread100_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %retval.0.i9497) #10
  %conv37 = zext i8 %request to i32
  %conv38 = zext i8 %start to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv37, i32 noundef %conv38) #10
  %8 = ptrtoint ptr %registers to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %registers, align 1
  %conv45 = zext i8 %9 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv23, i32 noundef %conv45) #10
  br label %do.end63

do.end52:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %direction to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %cleanup

if.end57:                                         ; preds = %if.then9.i, %if.end3.i.if.end57_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp58.not = icmp sgt i32 %call6.i, -1
  br i1 %cmp58.not, label %if.end57.cleanup_crit_edge, label %if.end57.do.end63_crit_edge

if.end57.do.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end63:                                         ; preds = %if.end57.do.end63_crit_edge, %if.end57.thread100, %if.end8.i.i.do.end63_crit_edge, %if.then10.do.end63_crit_edge
  %err.0103 = phi i32 [ %retval.0.i9497, %if.end57.thread100 ], [ %10, %if.end57.do.end63_crit_edge ], [ -12, %if.end8.i.i.do.end63_crit_edge ], [ -22, %if.then10.do.end63_crit_edge ]
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %err.0103) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.end57.cleanup_crit_edge, %do.end52, %write_packet.exit.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end52 ], [ -22, %do.end5 ], [ -22, %do.end ], [ %err.0103, %do.end63 ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %write_packet.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_usb_stream_start(ptr noundef %cam, i32 noundef %alternate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 10
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flush = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 7
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flush, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %for.cond.preheader

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.cond.preheader:                               ; preds = %if.end
  %num_frames = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 25
  %4 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp71 = icmp sgt i32 %5, 0
  br i1 %cmp71, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buffers = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffers, align 8
  %status = getelementptr %struct.framebuf, ptr %7, i32 %i.072, i32 5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %status, align 8
  %9 = load ptr, ptr %buffers, align 8
  %length = getelementptr %struct.framebuf, ptr %9, i32 %i.072, i32 3
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %length, align 8
  %inc = add nuw nsw i32 %i.072, 1
  %11 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_frames, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %buffers5 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 28
  %13 = ptrtoint ptr %buffers5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffers5, align 8
  %curbuff = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 29
  %15 = ptrtoint ptr %curbuff to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %14, ptr %curbuff, align 4
  %16 = load volatile ptr, ptr %curbuff, align 4
  %next = getelementptr inbounds %struct.framebuf, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next, align 8
  %workbuff = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 30
  %19 = ptrtoint ptr %workbuff to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %workbuff, align 8
  %20 = ptrtoint ptr %flush to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flush, align 8
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.end.if.end9_crit_edge
  %stream_mode = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 12, i32 9, i32 2
  %21 = ptrtoint ptr %stream_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stream_mode, align 1
  store i8 0, ptr %stream_mode, align 1
  %23 = add i32 %alternate, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %23)
  %24 = icmp ult i32 %23, -6
  br i1 %24, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef -22) #10
  %25 = ptrtoint ptr %stream_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %stream_mode, align 1
  %cur_alt.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 20
  %26 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_alt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %if.then15.cleanup_crit_edge, label %do.end.i

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then15
  %dev.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %iface.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 19
  %30 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %iface.i, align 8
  %conv.i64 = zext i8 %31 to i32
  %call.i65 = tail call i32 @usb_set_interface(ptr noundef %29, i32 noundef %conv.i64, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp4.not.i = icmp eq i32 %call.i65, 0
  br i1 %cmp4.not.i, label %if.end8.i, label %set_alternate.exit

if.end8.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %cur_alt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cur_alt.i, align 4
  %old_alt.i = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 21
  %34 = ptrtoint ptr %old_alt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %old_alt.i, align 8
  store i32 0, ptr %cur_alt.i, align 4
  br label %cleanup

set_alternate.exit:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp25 = icmp slt i32 %call.i65, 0
  br i1 %cmp25, label %do.end30, label %set_alternate.exit.cleanup_crit_edge

set_alternate.exit.cleanup_crit_edge:             ; preds = %set_alternate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %set_alternate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %alternate, i32 noundef -22, i32 noundef %call.i65) #10
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @cpia2_usb_stream_pause(ptr noundef %cam) #6
  tail call fastcc void @configure_transfer_mode(ptr noundef %cam, i32 noundef %alternate) #6
  %conv7.i = trunc i32 %alternate to i8
  %35 = ptrtoint ptr %stream_mode to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv7.i, ptr %stream_mode, align 1
  %call11.i = tail call i32 @cpia2_reset_camera(ptr noundef %cam) #6
  %call12.i = tail call i32 @cpia2_usb_stream_resume(ptr noundef %cam) #6
  %frame_count = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 26
  %36 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %frame_count, align 8
  %37 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %streaming, align 4
  %call35 = tail call i32 @cpia2_usb_stream_resume(ptr noundef %cam)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end30, %set_alternate.exit.cleanup_crit_edge, %if.end8.i, %if.then15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call35, %if.else ], [ -22, %do.end30 ], [ -22, %set_alternate.exit.cleanup_crit_edge ], [ -22, %if.end8.i ], [ -22, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_alternate(ptr nocapture noundef %cam, i32 noundef %alt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_alt = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 20
  %0 = ptrtoint ptr %cur_alt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_alt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %alt)
  %cmp = icmp eq i32 %1, %alt
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 19
  %4 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iface, align 8
  %conv = zext i8 %5 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef %conv, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %do.end.if.end8_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %do.end.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %cmp9.not = icmp eq i32 %alt, 0
  br i1 %cmp9.not, label %if.end8.if.end23_crit_edge, label %do.end14

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end14:                                         ; preds = %if.end8
  %dev15 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 18
  %6 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev15, align 4
  %iface16 = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 19
  %8 = ptrtoint ptr %iface16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iface16, align 8
  %conv17 = zext i8 %9 to i32
  %call18 = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef %conv17, i32 noundef %alt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %do.end14.if.end23_crit_edge, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14.if.end23_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end23:                                         ; preds = %do.end14.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %10 = ptrtoint ptr %cur_alt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_alt, align 4
  %old_alt = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 21
  %12 = ptrtoint ptr %old_alt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old_alt, align 8
  store i32 %alt, ptr %cur_alt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ], [ %call18, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_do_command(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_usb_stream_stop(ptr noundef %cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpia2_usb_stream_pause(ptr noundef %cam)
  %streaming = getelementptr inbounds %struct.camera_data, ptr %cam, i32 0, i32 10
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %streaming, align 4
  tail call fastcc void @configure_transfer_mode(ptr noundef %cam, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpia2_usb_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cpia2_driver, ptr noundef null, ptr noundef nonnull @.str.26) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpia2_usb_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @schedule_timeout(i32 noundef 200) #6
  tail call void @usb_deregister(ptr noundef nonnull @cpia2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_send_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpia2_usb_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end12, label %entry.cleanup361_crit_edge

entry.cleanup361_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup361

if.end12:                                         ; preds = %entry
  %streaming = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end12.do.end18_crit_edge, label %lor.lhs.false13

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lor.lhs.false13:                                  ; preds = %if.end12
  %flags.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 14, i32 17
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool14.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool14.not, label %lor.lhs.false13.do.end18_crit_edge, label %for.cond.preheader

lor.lhs.false13.do.end18_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

for.cond.preheader:                               ; preds = %lor.lhs.false13
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %8 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24535 = icmp sgt i32 %9, 0
  br i1 %cmp24535, label %for.body.lr.ph, label %for.cond.preheader.for.end345_crit_edge

for.cond.preheader.for.end345_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end345

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %workbuff = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 30
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %frame_count = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 26
  %frame_size = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 24
  %APP_len.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 32
  %APPn.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 31
  %APP_data.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 33
  %COM_len.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 34
  %COM_data.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 35
  %first_image_seen.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 5
  %mmapped.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 9
  %num_frames.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 25
  %curbuff.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 29
  %head.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 23, i32 1
  %wq_stream = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 23
  br label %for.body

do.end18:                                         ; preds = %lor.lhs.false13.do.end18_crit_edge, %if.end12.do.end18_crit_edge
  %flags.i491 = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 14, i32 17
  %10 = ptrtoint ptr %flags.i491 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i491, align 4
  %and1.i.i492 = and i32 %11, 1
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %5, i32 noundef %and1.i.i492) #10
  br label %cleanup361

for.body:                                         ; preds = %for.inc343.for.body_crit_edge, %for.body.lr.ph
  %i.0536 = phi i32 [ 0, %for.body.lr.ph ], [ %inc344, %for.inc343.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0536
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0536, i32 2
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  %status27 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0536, i32 3
  %14 = ptrtoint ptr %status27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status27, align 4
  %16 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workbuff, align 8
  %status28 = getelementptr inbounds %struct.framebuf, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %status28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %status28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp29 = icmp eq i32 %19, 2
  br i1 %cmp29, label %for.body.for.cond35_crit_edge, label %for.body.if.end50_crit_edge

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

for.body.for.cond35_crit_edge:                    ; preds = %for.body
  br label %for.cond35

for.cond35:                                       ; preds = %for.body38.for.cond35_crit_edge, %for.body.for.cond35_crit_edge
  %.pn = phi ptr [ %ptr.0, %for.body38.for.cond35_crit_edge ], [ %17, %for.body.for.cond35_crit_edge ]
  %ptr.0.in = getelementptr inbounds %struct.framebuf, ptr %.pn, i32 0, i32 7
  %20 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 8
  %cmp37.not = icmp eq ptr %ptr.0, %17
  br i1 %cmp37.not, label %for.cond35.for.end_crit_edge, label %for.body38

for.cond35.for.end_crit_edge:                     ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body38:                                       ; preds = %for.cond35
  %status39 = getelementptr inbounds %struct.framebuf, ptr %ptr.0, i32 0, i32 5
  %21 = ptrtoint ptr %status39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status39, align 8
  %cmp40 = icmp eq i32 %22, 0
  br i1 %cmp40, label %if.then41, label %for.body38.for.cond35_crit_edge

for.body38.for.cond35_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond35

if.then41:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  %status39.le = getelementptr inbounds %struct.framebuf, ptr %ptr.0, i32 0, i32 5
  %23 = ptrtoint ptr %status39.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %status39.le, align 8
  %length = getelementptr inbounds %struct.framebuf, ptr %ptr.0, i32 0, i32 3
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %length, align 8
  br label %for.end

for.end:                                          ; preds = %if.then41, %for.cond35.for.end_crit_edge
  %ptr.0539 = phi ptr [ %ptr.0, %if.then41 ], [ %17, %for.cond35.for.end_crit_edge ]
  %25 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %workbuff, align 8
  %cmp46 = icmp eq ptr %ptr.0539, %26
  br i1 %cmp46, label %for.end.for.end345_crit_edge, label %cleanup

for.end.for.end345_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end345

cleanup:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %workbuff to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ptr.0539, ptr %workbuff, align 8
  br label %if.end50

if.end50:                                         ; preds = %cleanup, %for.body.if.end50_crit_edge
  %28 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %workbuff, align 8
  %status52 = getelementptr inbounds %struct.framebuf, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %status52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %status52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp53 = icmp eq i32 %31, 0
  br i1 %cmp53, label %if.end50.if.then58_crit_edge, label %lor.lhs.false54

if.end50.if.then58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

lor.lhs.false54:                                  ; preds = %if.end50
  %32 = ptrtoint ptr %status52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %status52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp57 = icmp eq i32 %33, 3
  br i1 %cmp57, label %lor.lhs.false54.if.then58_crit_edge, label %lor.lhs.false54.if.end63_crit_edge

lor.lhs.false54.if.end63_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

lor.lhs.false54.if.then58_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false54.if.then58_crit_edge, %if.end50.if.then58_crit_edge
  %34 = ptrtoint ptr %status52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %status52, align 8
  %35 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %workbuff, align 8
  %length62 = getelementptr inbounds %struct.framebuf, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %length62 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %length62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %lor.lhs.false54.if.end63_crit_edge
  %38 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transfer_buffer, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool66.not = icmp eq i32 %15, 0
  br i1 %tobool66.not, label %if.end75, label %do.end70

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %i.0536, i32 noundef %13, i32 noundef %15) #10
  %42 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %workbuff, align 8
  %status74 = getelementptr inbounds %struct.framebuf, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %status74 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 3, ptr %status74, align 8
  br label %for.inc343

if.end75:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp76 = icmp slt i32 %13, 3
  br i1 %cmp76, label %if.end75.for.inc343_crit_edge, label %for.body81.preheader

if.end75.for.inc343_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

for.body81.preheader:                             ; preds = %if.end75
  %sub = add nsw i32 %13, -2
  br label %for.body81

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.body81.preheader
  %j.0532 = phi i32 [ %inc, %for.body81.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %checksum.0531 = phi i16 [ %add, %for.body81.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %arrayidx82 = getelementptr i8, ptr %add.ptr, i32 %j.0532
  %45 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx82, align 1
  %conv = zext i8 %46 to i16
  %add = add i16 %checksum.0531, %conv
  %inc = add nuw nsw i32 %j.0532, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.end86, label %for.body81.for.body81_crit_edge

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body81

for.end86:                                        ; preds = %for.body81
  %arrayidx87 = getelementptr i8, ptr %add.ptr, i32 %sub
  %47 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %48 to i32
  %add89 = add i32 %13, -1
  %arrayidx90 = getelementptr i8, ptr %add.ptr, i32 %add89
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %50 to i32
  %mul = shl nuw nsw i32 %conv91, 8
  %add92 = or i32 %mul, %conv88
  %conv94 = zext i16 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add92, i32 %conv94)
  %cmp96.not = icmp eq i32 %add92, %conv94
  br i1 %cmp96.not, label %if.end108, label %do.end101

do.end101:                                        ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #8
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %i.0536, i32 noundef %13, i32 noundef %conv94, i32 noundef %add92) #10
  %51 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %workbuff, align 8
  %status107 = getelementptr inbounds %struct.framebuf, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %status107 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 3, ptr %status107, align 8
  br label %for.inc343

if.end108:                                        ; preds = %for.end86
  %54 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %workbuff, align 8
  %status111 = getelementptr inbounds %struct.framebuf, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %status111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %status111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp112.not = icmp eq i32 %57, 1
  br i1 %cmp112.not, label %if.end144, label %if.then114

if.then114:                                       ; preds = %if.end108
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %59, label %if.then114.for.inc343_crit_edge [
    i8 -1, label %land.lhs.true
    i8 -40, label %land.lhs.true128
  ]

if.then114.for.inc343_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

land.lhs.true:                                    ; preds = %if.then114
  %arrayidx119 = getelementptr i8, ptr %add.ptr, i32 1
  %61 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %62)
  %cmp121 = icmp eq i8 %62, -40
  br i1 %cmp121, label %land.lhs.true.if.then138_crit_edge, label %land.lhs.true.for.inc343_crit_edge

land.lhs.true.for.inc343_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

land.lhs.true.if.then138_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then138

land.lhs.true128:                                 ; preds = %if.then114
  %arrayidx129 = getelementptr i8, ptr %add.ptr, i32 1
  %63 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp131 = icmp eq i8 %64, -1
  br i1 %cmp131, label %land.lhs.true133, label %land.lhs.true128.for.inc343_crit_edge

land.lhs.true128.for.inc343_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

land.lhs.true133:                                 ; preds = %land.lhs.true128
  %arrayidx134 = getelementptr i8, ptr %add.ptr, i32 2
  %65 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp136.not = icmp eq i8 %66, 0
  br i1 %cmp136.not, label %land.lhs.true133.for.inc343_crit_edge, label %land.lhs.true133.if.then138_crit_edge

land.lhs.true133.if.then138_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then138

land.lhs.true133.for.inc343_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

if.then138:                                       ; preds = %land.lhs.true133.if.then138_crit_edge, %land.lhs.true.if.then138_crit_edge
  %67 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %frame_count, align 8
  %inc139 = add i32 %68, 1
  store i32 %inc139, ptr %frame_count, align 8
  br label %for.inc343

if.end144:                                        ; preds = %if.end108
  %69 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %frame_size, align 8
  %length146 = getelementptr inbounds %struct.framebuf, ptr %55, i32 0, i32 3
  %71 = ptrtoint ptr %length146 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %length146, align 8
  %add147 = add i32 %72, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add147)
  %cmp148 = icmp ult i32 %70, %add147
  br i1 %cmp148, label %do.end153, label %if.end171

do.end153:                                        ; preds = %if.end144
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %72, i32 noundef %sub) #10
  %73 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %workbuff, align 8
  %status159 = getelementptr inbounds %struct.framebuf, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %status159 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 3, ptr %status159, align 8
  %76 = load ptr, ptr %workbuff, align 8
  %length161 = getelementptr inbounds %struct.framebuf, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %length161 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length161, align 8
  %max_length = getelementptr inbounds %struct.framebuf, ptr %76, i32 0, i32 4
  %79 = ptrtoint ptr %max_length to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp163 = icmp sgt i32 %78, %80
  br i1 %cmp163, label %if.then165, label %do.end153.for.inc343_crit_edge

do.end153.for.inc343_crit_edge:                   ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

if.then165:                                       ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %max_length to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %78, ptr %max_length, align 4
  br label %for.inc343

if.end171:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp174 = icmp eq i32 %72, 0
  br i1 %cmp174, label %if.then176, label %if.else237

if.then176:                                       ; preds = %if.end171
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr, align 1
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %83, label %if.then176.for.inc343_crit_edge [
    i8 -40, label %land.lhs.true181
    i8 -1, label %land.lhs.true191
  ]

if.then176.for.inc343_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

land.lhs.true181:                                 ; preds = %if.then176
  %arrayidx182 = getelementptr i8, ptr %add.ptr, i32 1
  %85 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx182, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %86)
  %cmp184 = icmp eq i8 %86, -1
  br i1 %cmp184, label %land.lhs.true181.do.end210_crit_edge, label %land.lhs.true181.for.inc343_crit_edge

land.lhs.true181.for.inc343_crit_edge:            ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

land.lhs.true181.do.end210_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end210

land.lhs.true191:                                 ; preds = %if.then176
  %arrayidx192 = getelementptr i8, ptr %add.ptr, i32 1
  %87 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %88)
  %cmp194 = icmp eq i8 %88, -40
  br i1 %cmp194, label %land.lhs.true196, label %land.lhs.true191.for.inc343_crit_edge

land.lhs.true191.for.inc343_crit_edge:            ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

land.lhs.true196:                                 ; preds = %land.lhs.true191
  %arrayidx197 = getelementptr i8, ptr %add.ptr, i32 2
  %89 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx197, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %90)
  %cmp199 = icmp eq i8 %90, -1
  br i1 %cmp199, label %land.lhs.true196.do.end210_crit_edge, label %land.lhs.true196.for.inc343_crit_edge

land.lhs.true196.for.inc343_crit_edge:            ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

land.lhs.true196.do.end210_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end210

do.end210:                                        ; preds = %land.lhs.true196.do.end210_crit_edge, %land.lhs.true181.do.end210_crit_edge
  %data_offset.0 = phi i32 [ 1, %land.lhs.true181.do.end210_crit_edge ], [ 2, %land.lhs.true196.do.end210_crit_edge ]
  %call.i = tail call i64 @ktime_get() #6
  %91 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %workbuff, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %call.i, ptr %92, align 8
  %94 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %frame_count, align 8
  %inc214 = add i32 %95, 1
  store i32 %inc214, ptr %frame_count, align 8
  %96 = load ptr, ptr %workbuff, align 8
  %seq = getelementptr inbounds %struct.framebuf, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %seq, align 8
  %98 = load ptr, ptr %workbuff, align 8
  %data = getelementptr inbounds %struct.framebuf, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %100, align 1
  %102 = load ptr, ptr %workbuff, align 8
  %data219 = getelementptr inbounds %struct.framebuf, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %data219 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data219, align 4
  %arrayidx220 = getelementptr i8, ptr %104, i32 1
  %105 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -40, ptr %arrayidx220, align 1
  %106 = load ptr, ptr %workbuff, align 8
  %length222 = getelementptr inbounds %struct.framebuf, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %length222 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %length222, align 8
  %108 = ptrtoint ptr %APP_len.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %APP_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.i = icmp sgt i32 %109, 0
  br i1 %cmp.i, label %if.then.i, label %do.end210.add_APPn.exit_crit_edge

do.end210.add_APPn.exit_crit_edge:                ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_APPn.exit

if.then.i:                                        ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %workbuff, align 8
  %data.i = getelementptr inbounds %struct.framebuf, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data.i, align 4
  %length.i = getelementptr inbounds %struct.framebuf, ptr %111, i32 0, i32 3
  %114 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %length.i, align 8
  %inc.i = add i32 %115, 1
  store i32 %inc.i, ptr %length.i, align 8
  %arrayidx.i = getelementptr i8, ptr %113, i32 %115
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -1, ptr %arrayidx.i, align 1
  %117 = ptrtoint ptr %APPn.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %APPn.i, align 4
  %119 = trunc i32 %118 to i8
  %conv.i = add i8 %119, -32
  %120 = load ptr, ptr %workbuff, align 8
  %data3.i = getelementptr inbounds %struct.framebuf, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data3.i, align 4
  %length5.i = getelementptr inbounds %struct.framebuf, ptr %120, i32 0, i32 3
  %123 = ptrtoint ptr %length5.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %length5.i, align 8
  %inc6.i = add i32 %124, 1
  store i32 %inc6.i, ptr %length5.i, align 8
  %arrayidx7.i = getelementptr i8, ptr %122, i32 %124
  %125 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv.i, ptr %arrayidx7.i, align 1
  %126 = load ptr, ptr %workbuff, align 8
  %data9.i = getelementptr inbounds %struct.framebuf, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %data9.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data9.i, align 4
  %length11.i = getelementptr inbounds %struct.framebuf, ptr %126, i32 0, i32 3
  %129 = ptrtoint ptr %length11.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %length11.i, align 8
  %inc12.i = add i32 %130, 1
  store i32 %inc12.i, ptr %length11.i, align 8
  %arrayidx13.i = getelementptr i8, ptr %128, i32 %130
  %131 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %arrayidx13.i, align 1
  %132 = ptrtoint ptr %APP_len.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %APP_len.i, align 8
  %134 = trunc i32 %133 to i8
  %conv16.i = add i8 %134, 2
  %135 = load ptr, ptr %workbuff, align 8
  %data18.i = getelementptr inbounds %struct.framebuf, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %data18.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data18.i, align 4
  %length20.i = getelementptr inbounds %struct.framebuf, ptr %135, i32 0, i32 3
  %138 = ptrtoint ptr %length20.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %length20.i, align 8
  %inc21.i = add i32 %139, 1
  store i32 %inc21.i, ptr %length20.i, align 8
  %arrayidx22.i = getelementptr i8, ptr %137, i32 %139
  %140 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv16.i, ptr %arrayidx22.i, align 1
  %141 = load ptr, ptr %workbuff, align 8
  %data24.i = getelementptr inbounds %struct.framebuf, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %data24.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data24.i, align 4
  %length26.i = getelementptr inbounds %struct.framebuf, ptr %141, i32 0, i32 3
  %144 = ptrtoint ptr %length26.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %length26.i, align 8
  %add.ptr.i = getelementptr i8, ptr %143, i32 %145
  %146 = load i32, ptr %APP_len.i, align 8
  %147 = call ptr @memcpy(ptr %add.ptr.i, ptr %APP_data.i, i32 %146)
  %148 = load i32, ptr %APP_len.i, align 8
  %149 = load ptr, ptr %workbuff, align 8
  %length30.i = getelementptr inbounds %struct.framebuf, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %length30.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %length30.i, align 8
  %add31.i = add i32 %151, %148
  store i32 %add31.i, ptr %length30.i, align 8
  br label %add_APPn.exit

add_APPn.exit:                                    ; preds = %if.then.i, %do.end210.add_APPn.exit_crit_edge
  %152 = ptrtoint ptr %COM_len.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %COM_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp.i493 = icmp sgt i32 %153, 0
  br i1 %cmp.i493, label %if.then.i509, label %add_APPn.exit.cleanup234_crit_edge

add_APPn.exit.cleanup234_crit_edge:               ; preds = %add_APPn.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup234

if.then.i509:                                     ; preds = %add_APPn.exit
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %workbuff, align 8
  %data.i495 = getelementptr inbounds %struct.framebuf, ptr %155, i32 0, i32 6
  %156 = ptrtoint ptr %data.i495 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data.i495, align 4
  %length.i496 = getelementptr inbounds %struct.framebuf, ptr %155, i32 0, i32 3
  %158 = ptrtoint ptr %length.i496 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %length.i496, align 8
  %inc.i497 = add i32 %159, 1
  store i32 %inc.i497, ptr %length.i496, align 8
  %arrayidx.i498 = getelementptr i8, ptr %157, i32 %159
  %160 = ptrtoint ptr %arrayidx.i498 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %arrayidx.i498, align 1
  %161 = load ptr, ptr %workbuff, align 8
  %data3.i499 = getelementptr inbounds %struct.framebuf, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %data3.i499 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data3.i499, align 4
  %length5.i500 = getelementptr inbounds %struct.framebuf, ptr %161, i32 0, i32 3
  %164 = ptrtoint ptr %length5.i500 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %length5.i500, align 8
  %inc6.i501 = add i32 %165, 1
  store i32 %inc6.i501, ptr %length5.i500, align 8
  %arrayidx7.i502 = getelementptr i8, ptr %163, i32 %165
  %166 = ptrtoint ptr %arrayidx7.i502 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -2, ptr %arrayidx7.i502, align 1
  %167 = load ptr, ptr %workbuff, align 8
  %data9.i503 = getelementptr inbounds %struct.framebuf, ptr %167, i32 0, i32 6
  %168 = ptrtoint ptr %data9.i503 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data9.i503, align 4
  %length11.i504 = getelementptr inbounds %struct.framebuf, ptr %167, i32 0, i32 3
  %170 = ptrtoint ptr %length11.i504 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %length11.i504, align 8
  %inc12.i505 = add i32 %171, 1
  store i32 %inc12.i505, ptr %length11.i504, align 8
  %arrayidx13.i506 = getelementptr i8, ptr %169, i32 %171
  %172 = ptrtoint ptr %arrayidx13.i506 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %arrayidx13.i506, align 1
  %173 = ptrtoint ptr %COM_len.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %COM_len.i, align 8
  %175 = trunc i32 %174 to i8
  %conv.i507 = add i8 %175, 2
  %176 = load ptr, ptr %workbuff, align 8
  %data16.i = getelementptr inbounds %struct.framebuf, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %data16.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data16.i, align 4
  %length18.i = getelementptr inbounds %struct.framebuf, ptr %176, i32 0, i32 3
  %179 = ptrtoint ptr %length18.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %length18.i, align 8
  %inc19.i = add i32 %180, 1
  store i32 %inc19.i, ptr %length18.i, align 8
  %arrayidx20.i = getelementptr i8, ptr %178, i32 %180
  %181 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv.i507, ptr %arrayidx20.i, align 1
  %182 = load ptr, ptr %workbuff, align 8
  %data22.i = getelementptr inbounds %struct.framebuf, ptr %182, i32 0, i32 6
  %183 = ptrtoint ptr %data22.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data22.i, align 4
  %length24.i = getelementptr inbounds %struct.framebuf, ptr %182, i32 0, i32 3
  %185 = ptrtoint ptr %length24.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %length24.i, align 8
  %add.ptr.i508 = getelementptr i8, ptr %184, i32 %186
  %187 = load i32, ptr %COM_len.i, align 8
  %188 = call ptr @memcpy(ptr %add.ptr.i508, ptr %COM_data.i, i32 %187)
  %189 = load i32, ptr %COM_len.i, align 8
  %190 = load ptr, ptr %workbuff, align 8
  %length28.i = getelementptr inbounds %struct.framebuf, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %length28.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %length28.i, align 8
  %add29.i = add i32 %192, %189
  store i32 %add29.i, ptr %length28.i, align 8
  br label %cleanup234

cleanup234:                                       ; preds = %if.then.i509, %add_APPn.exit.cleanup234_crit_edge
  %193 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %workbuff, align 8
  %data224 = getelementptr inbounds %struct.framebuf, ptr %194, i32 0, i32 6
  %195 = ptrtoint ptr %data224 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data224, align 4
  %length226 = getelementptr inbounds %struct.framebuf, ptr %194, i32 0, i32 3
  %197 = ptrtoint ptr %length226 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %length226, align 8
  %add.ptr227 = getelementptr i8, ptr %196, i32 %198
  %add.ptr228 = getelementptr i8, ptr %add.ptr, i32 %data_offset.0
  %sub229 = sub i32 %sub, %data_offset.0
  %199 = call ptr @memcpy(ptr %add.ptr227, ptr %add.ptr228, i32 %sub229)
  br label %if.end252.sink.split

if.else237:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp240 = icmp sgt i32 %72, 0
  br i1 %cmp240, label %if.then242, label %if.else237.if.end252_crit_edge

if.else237.if.end252_crit_edge:                   ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.then242:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #8
  %data244 = getelementptr inbounds %struct.framebuf, ptr %55, i32 0, i32 6
  %200 = ptrtoint ptr %data244 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %data244, align 4
  %add.ptr247 = getelementptr i8, ptr %201, i32 %72
  %202 = call ptr @memcpy(ptr %add.ptr247, ptr %add.ptr, i32 %sub)
  br label %if.end252.sink.split

if.end252.sink.split:                             ; preds = %if.then242, %cleanup234
  %sub229.sink = phi i32 [ %sub229, %cleanup234 ], [ %sub, %if.then242 ]
  %203 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %workbuff, align 8
  %length249 = getelementptr inbounds %struct.framebuf, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %length249 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %length249, align 8
  %add233 = add i32 %206, %sub229.sink
  store i32 %add233, ptr %length249, align 8
  br label %if.end252

if.end252:                                        ; preds = %if.end252.sink.split, %if.else237.if.end252_crit_edge
  %207 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %workbuff, align 8
  %length254 = getelementptr inbounds %struct.framebuf, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %length254 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %length254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %cmp255 = icmp sgt i32 %210, 2
  br i1 %cmp255, label %land.lhs.true257, label %if.else297

land.lhs.true257:                                 ; preds = %if.end252
  %data259 = getelementptr inbounds %struct.framebuf, ptr %208, i32 0, i32 6
  %211 = ptrtoint ptr %data259 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %data259, align 4
  %sub262 = add nsw i32 %210, -3
  %arrayidx263 = getelementptr i8, ptr %212, i32 %sub262
  %213 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %214)
  %cmp265 = icmp eq i8 %214, -1
  br i1 %cmp265, label %land.lhs.true267, label %land.lhs.true257.land.lhs.true302_crit_edge

land.lhs.true257.land.lhs.true302_crit_edge:      ; preds = %land.lhs.true257
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true302

land.lhs.true267:                                 ; preds = %land.lhs.true257
  %sub272 = add nsw i32 %210, -2
  %arrayidx273 = getelementptr i8, ptr %212, i32 %sub272
  %215 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx273, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %216)
  %cmp275 = icmp eq i8 %216, -39
  br i1 %cmp275, label %land.lhs.true277, label %land.lhs.true267.land.lhs.true302_crit_edge

land.lhs.true267.land.lhs.true302_crit_edge:      ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true302

land.lhs.true277:                                 ; preds = %land.lhs.true267
  %sub282 = add nsw i32 %210, -1
  %arrayidx283 = getelementptr i8, ptr %212, i32 %sub282
  %217 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx283, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %218)
  %cmp285 = icmp eq i8 %218, -1
  br i1 %cmp285, label %if.then287, label %land.lhs.true277.land.lhs.true302_crit_edge

land.lhs.true277.land.lhs.true302_crit_edge:      ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true302

if.then287:                                       ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpia2_usb_complete.frame_ready, align 1
  %219 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %arrayidx283, align 1
  %220 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %workbuff, align 8
  %length295 = getelementptr inbounds %struct.framebuf, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %length295 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %length295, align 8
  %sub296 = add i32 %223, -1
  store i32 %sub296, ptr %length295, align 8
  br label %if.end324

if.else297:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %cmp300 = icmp eq i32 %210, 2
  br i1 %cmp300, label %if.else297.land.lhs.true302_crit_edge, label %if.else297.if.end324_crit_edge

if.else297.if.end324_crit_edge:                   ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

if.else297.land.lhs.true302_crit_edge:            ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true302

land.lhs.true302:                                 ; preds = %if.else297.land.lhs.true302_crit_edge, %land.lhs.true277.land.lhs.true302_crit_edge, %land.lhs.true267.land.lhs.true302_crit_edge, %land.lhs.true257.land.lhs.true302_crit_edge
  %data304 = getelementptr inbounds %struct.framebuf, ptr %208, i32 0, i32 6
  %224 = ptrtoint ptr %data304 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %data304, align 4
  %sub307 = add nsw i32 %210, -2
  %arrayidx308 = getelementptr i8, ptr %225, i32 %sub307
  %226 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx308, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %227)
  %cmp310 = icmp eq i8 %227, -1
  br i1 %cmp310, label %land.lhs.true312, label %land.lhs.true302.if.end324_crit_edge

land.lhs.true302.if.end324_crit_edge:             ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

land.lhs.true312:                                 ; preds = %land.lhs.true302
  %sub317 = add nsw i32 %210, -1
  %arrayidx318 = getelementptr i8, ptr %225, i32 %sub317
  %228 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx318, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %229)
  %cmp320 = icmp eq i8 %229, -39
  br i1 %cmp320, label %if.end324.thread, label %land.lhs.true312.if.end324_crit_edge

land.lhs.true312.if.end324_crit_edge:             ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

if.end324.thread:                                 ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpia2_usb_complete.frame_ready, align 1
  br label %do.end329

if.end324:                                        ; preds = %land.lhs.true312.if.end324_crit_edge, %land.lhs.true302.if.end324_crit_edge, %if.else297.if.end324_crit_edge, %if.then287
  %.b490.pr = load i1, ptr @cpia2_usb_complete.frame_ready, align 1
  br i1 %.b490.pr, label %if.end324.do.end329_crit_edge, label %if.end324.for.inc343_crit_edge

if.end324.for.inc343_crit_edge:                   ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

if.end324.do.end329_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end329

do.end329:                                        ; preds = %if.end324.do.end329_crit_edge, %if.end324.thread
  %230 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %workbuff, align 8
  %data.i511 = getelementptr inbounds %struct.framebuf, ptr %231, i32 0, i32 6
  %232 = ptrtoint ptr %data.i511 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %data.i511, align 4
  %length.i512 = getelementptr inbounds %struct.framebuf, ptr %231, i32 0, i32 3
  %234 = ptrtoint ptr %length.i512 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %length.i512, align 8
  %max_length.i = getelementptr inbounds %struct.framebuf, ptr %231, i32 0, i32 4
  %236 = ptrtoint ptr %max_length.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %max_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %237)
  %cmp.i513 = icmp sgt i32 %235, %237
  br i1 %cmp.i513, label %if.then.i514, label %do.end329.if.end.i_crit_edge

do.end329.if.end.i_crit_edge:                     ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i514:                                     ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #8
  %238 = ptrtoint ptr %max_length.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %235, ptr %max_length.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i514, %do.end329.if.end.i_crit_edge
  %239 = ptrtoint ptr %233 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %233, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %240)
  %cmp7.i = icmp eq i8 %240, -1
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx9.i = getelementptr i8, ptr %233, i32 1
  %241 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %242)
  %cmp11.i = icmp eq i8 %242, -40
  br i1 %cmp11.i, label %if.then13.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %243 = load i32, ptr @process_frame.frame_count, align 4
  %inc.i515 = add i32 %243, 1
  store i32 %inc.i515, ptr @process_frame.frame_count, align 4
  %244 = ptrtoint ptr %first_image_seen.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %first_image_seen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i = icmp eq i32 %245, 0
  br i1 %tobool.not.i, label %if.then19.i, label %if.end23.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %246 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %workbuff, align 8
  %status.i = getelementptr inbounds %struct.framebuf, ptr %247, i32 0, i32 5
  %248 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile i32 3, ptr %status.i, align 8
  br label %process_frame.exit

if.then19.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %249 = ptrtoint ptr %first_image_seen.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1, ptr %first_image_seen.i, align 8
  %250 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %workbuff, align 8
  %status22.i = getelementptr inbounds %struct.framebuf, ptr %251, i32 0, i32 5
  %252 = ptrtoint ptr %status22.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile i32 0, ptr %status22.i, align 8
  br label %process_frame.exit

if.end23.i:                                       ; preds = %if.then13.i
  %253 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %workbuff, align 8
  %length25.i = getelementptr inbounds %struct.framebuf, ptr %254, i32 0, i32 3
  %255 = ptrtoint ptr %length25.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %length25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %256)
  %cmp26.i = icmp sgt i32 %256, 3
  br i1 %cmp26.i, label %if.then28.i, label %if.end73.i

if.then28.i:                                      ; preds = %if.end23.i
  %257 = ptrtoint ptr %mmapped.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %mmapped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool30.not.i = icmp eq i8 %258, 0
  br i1 %tobool30.not.i, label %if.then28.i.if.end47.i_crit_edge, label %land.lhs.true31.i

if.then28.i.if.end47.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

land.lhs.true31.i:                                ; preds = %if.then28.i
  %max_length35.i = getelementptr inbounds %struct.framebuf, ptr %254, i32 0, i32 4
  %259 = ptrtoint ptr %max_length35.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %max_length35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %260, i32 %256)
  %cmp36.i = icmp sgt i32 %260, %256
  br i1 %cmp36.i, label %if.then38.i, label %land.lhs.true31.i.if.end47.i_crit_edge

land.lhs.true31.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.then38.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  %data40.i = getelementptr inbounds %struct.framebuf, ptr %254, i32 0, i32 6
  %261 = ptrtoint ptr %data40.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %data40.i, align 4
  %add.ptr.i516 = getelementptr i8, ptr %262, i32 %256
  %sub.i = sub i32 %260, %256
  %263 = call ptr @memset(ptr %add.ptr.i516, i32 0, i32 %sub.i)
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then38.i, %land.lhs.true31.i.if.end47.i_crit_edge, %if.then28.i.if.end47.i_crit_edge
  %264 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %workbuff, align 8
  %length49.i = getelementptr inbounds %struct.framebuf, ptr %265, i32 0, i32 3
  %266 = ptrtoint ptr %length49.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %length49.i, align 8
  %max_length51.i = getelementptr inbounds %struct.framebuf, ptr %265, i32 0, i32 4
  %268 = ptrtoint ptr %max_length51.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %max_length51.i, align 4
  %269 = load ptr, ptr %workbuff, align 8
  %status53.i = getelementptr inbounds %struct.framebuf, ptr %269, i32 0, i32 5
  %270 = ptrtoint ptr %status53.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store volatile i32 2, ptr %status53.i, align 8
  %271 = ptrtoint ptr %mmapped.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %mmapped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %272)
  %tobool55.not.i = icmp eq i8 %272, 0
  br i1 %tobool55.not.i, label %land.lhs.true56.i, label %if.end47.i.if.end61.i_crit_edge

if.end47.i.if.end61.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

land.lhs.true56.i:                                ; preds = %if.end47.i
  %273 = ptrtoint ptr %num_frames.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %num_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %274)
  %cmp57.i = icmp sgt i32 %274, 2
  br i1 %cmp57.i, label %if.then59.i, label %land.lhs.true56.i.if.end61.i_crit_edge

land.lhs.true56.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.then59.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #8
  %275 = ptrtoint ptr %curbuff.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile ptr, ptr %curbuff.i, align 4
  %status60.i = getelementptr inbounds %struct.framebuf, ptr %276, i32 0, i32 5
  %277 = ptrtoint ptr %status60.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile i32 0, ptr %status60.i, align 8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then59.i, %land.lhs.true56.i.if.end61.i_crit_edge, %if.end47.i.if.end61.i_crit_edge
  %278 = ptrtoint ptr %workbuff to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %workbuff, align 8
  %280 = ptrtoint ptr %curbuff.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store volatile ptr %279, ptr %curbuff.i, align 4
  %next.i = getelementptr inbounds %struct.framebuf, ptr %279, i32 0, i32 7
  %281 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %next.i, align 8
  store ptr %282, ptr %workbuff, align 8
  br label %process_frame.exit

if.end73.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %status75.i = getelementptr inbounds %struct.framebuf, ptr %254, i32 0, i32 5
  %283 = ptrtoint ptr %status75.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile i32 3, ptr %status75.i, align 8
  br label %process_frame.exit

process_frame.exit:                               ; preds = %if.end73.i, %if.end61.i, %if.then19.i, %if.else.i
  store i1 false, ptr @cpia2_usb_complete.frame_ready, align 1
  %284 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %285, %head.i
  br i1 %cmp.i.i.not, label %process_frame.exit.for.inc343_crit_edge, label %if.then332

process_frame.exit.for.inc343_crit_edge:          ; preds = %process_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc343

if.then332:                                       ; preds = %process_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef %wq_stream, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %for.inc343

for.inc343:                                       ; preds = %if.then332, %process_frame.exit.for.inc343_crit_edge, %if.end324.for.inc343_crit_edge, %land.lhs.true196.for.inc343_crit_edge, %land.lhs.true191.for.inc343_crit_edge, %land.lhs.true181.for.inc343_crit_edge, %if.then176.for.inc343_crit_edge, %if.then165, %do.end153.for.inc343_crit_edge, %if.then138, %land.lhs.true133.for.inc343_crit_edge, %land.lhs.true128.for.inc343_crit_edge, %land.lhs.true.for.inc343_crit_edge, %if.then114.for.inc343_crit_edge, %do.end101, %if.end75.for.inc343_crit_edge, %do.end70
  %inc344 = add nuw nsw i32 %i.0536, 1
  %286 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %number_of_packets, align 4
  %cmp24 = icmp slt i32 %inc344, %287
  br i1 %cmp24, label %for.inc343.for.body_crit_edge, label %for.inc343.for.end345_crit_edge

for.inc343.for.end345_crit_edge:                  ; preds = %for.inc343
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end345

for.inc343.for.body_crit_edge:                    ; preds = %for.inc343
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end345:                                       ; preds = %for.inc343.for.end345_crit_edge, %for.end.for.end345_crit_edge, %for.cond.preheader.for.end345_crit_edge
  %288 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool347.not = icmp eq i32 %289, 0
  br i1 %tobool347.not, label %for.end345.cleanup361_crit_edge, label %if.then348

for.end345.cleanup361_crit_edge:                  ; preds = %for.end345
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup361

if.then348:                                       ; preds = %for.end345
  %dev = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 18
  %290 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev, align 4
  %dev349 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %292 = ptrtoint ptr %dev349 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %291, ptr %dev349, align 4
  %call350 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %cmp351.not = icmp eq i32 %call350, 0
  br i1 %cmp351.not, label %if.then348.cleanup361_crit_edge, label %do.end356

if.then348.cleanup361_crit_edge:                  ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup361

do.end356:                                        ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #8
  %call358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30, i32 noundef %call350) #10
  br label %cleanup361

cleanup361:                                       ; preds = %do.end356, %if.then348.cleanup361_crit_edge, %for.end345.cleanup361_crit_edge, %do.end18, %entry.cleanup361_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %bNumConfigurations = getelementptr i8, ptr %1, i32 945
  %2 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #10
  %call3 = tail call ptr @cpia2_init_camera_struct(ptr noundef %intf) #6
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 18
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %dev, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 1
  %iface = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 19
  %9 = ptrtoint ptr %iface to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %iface, align 8
  %call8 = tail call fastcc i32 @set_alternate(ptr noundef nonnull %call3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %call8) #10
  br label %alt_err

if.end17:                                         ; preds = %if.end7
  %call18 = tail call i32 @cpia2_init_camera(ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end24, label %do.end30

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, i32 noundef %call18) #10
  br label %alt_err

do.end30:                                         ; preds = %if.end17
  %params = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %params, align 4
  %conv32 = zext i8 %11 to i32
  %firmware_revision_lo = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 0, i32 1
  %12 = ptrtoint ptr %firmware_revision_lo to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %firmware_revision_lo, align 1
  %conv35 = zext i8 %13 to i32
  %asic_id = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 0, i32 2
  %14 = ptrtoint ptr %asic_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %asic_id, align 2
  %conv38 = zext i8 %15 to i32
  %asic_rev = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 0, i32 3
  %16 = ptrtoint ptr %asic_rev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %asic_rev, align 1
  %conv41 = zext i8 %17 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41) #10
  %vendor = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 1, i32 1
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor, align 4
  %conv48 = zext i16 %19 to i32
  %product = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 1, i32 2
  %20 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %product, align 2
  %conv51 = zext i16 %21 to i32
  %device_revision = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 1, i32 3
  %22 = ptrtoint ptr %device_revision to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device_revision, align 4
  %conv54 = zext i16 %23 to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv48, i32 noundef %conv51, i32 noundef %conv54) #10
  %sensor_flags = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 0, i32 6
  %24 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sensor_flags, align 2
  %conv62 = zext i8 %25 to i32
  %sensor_rev = getelementptr inbounds %struct.camera_data, ptr %call3, i32 0, i32 12, i32 0, i32 7
  %26 = ptrtoint ptr %sensor_rev to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sensor_rev, align 1
  %conv65 = zext i8 %27 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv62, i32 noundef %conv65) #10
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %call67 = tail call i32 @cpia2_register_camera(ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end73, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end73:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.44, i32 noundef %call67) #10
  br label %alt_err

alt_err:                                          ; preds = %do.end73, %do.end24, %do.end14
  %ret.0 = phi i32 [ %call8, %do.end14 ], [ %call18, %do.end24 ], [ %call67, %do.end73 ]
  tail call void @cpia2_deinit_camera_struct(ptr noundef nonnull %call3, ptr noundef %intf) #6
  br label %cleanup

cleanup:                                          ; preds = %alt_err, %do.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %alt_err ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpia2_usb_disconnect(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @cpia2_usb_stream_pause(ptr noundef %1) #6
  %streaming.i = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %streaming.i, align 4
  tail call fastcc void @configure_transfer_mode(ptr noundef %1, i32 noundef 0) #6
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #6
  tail call void @cpia2_unregister_camera(ptr noundef %1) #6
  tail call void @v4l2_device_disconnect(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #6
  %buffers = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 28
  %3 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffers, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end8

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %curbuff = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %curbuff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %curbuff, align 4
  %status = getelementptr inbounds %struct.framebuf, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 2, ptr %status, align 8
  %8 = load volatile ptr, ptr %curbuff, align 4
  %length = getelementptr inbounds %struct.framebuf, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %length, align 8
  %wq_stream = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %wq_stream, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end8, %entry.if.end_crit_edge
  %call11 = tail call i32 @v4l2_device_put(ptr noundef %1) #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_usb_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #6
  %streaming = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @cpia2_usb_stream_pause(ptr noundef %1) #6
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %streaming, align 4
  tail call fastcc void @configure_transfer_mode(ptr noundef %1, i32 noundef 0) #6
  %5 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %streaming, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #6
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.65) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpia2_usb_resume(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %v4l2_lock = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %v4l2_lock, i32 noundef 0) #6
  %hdl = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #6
  %streaming = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %streaming, align 4
  %stream_mode = getelementptr inbounds %struct.camera_data, ptr %1, i32 0, i32 12, i32 9, i32 2
  %5 = ptrtoint ptr %stream_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stream_mode, align 1
  %conv = zext i8 %6 to i32
  %call3 = tail call i32 @cpia2_usb_stream_start(ptr noundef %1, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %v4l2_lock) #6
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.69) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpia2_init_camera_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_init_camera(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpia2_register_camera(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_deinit_camera_struct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpia2_unregister_camera(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !117, !118, !120, !121, !122, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 608, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cpia2_usb_transfer_cmd._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cpia2_usb_transfer_cmd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 613, i32 3}
!8 = !{ptr @cpia2_usb_transfer_cmd._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cpia2_usb_transfer_cmd._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 624, i32 4}
!12 = !{ptr @cpia2_usb_transfer_cmd._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cpia2_usb_transfer_cmd._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 625, i32 4}
!16 = !{ptr @cpia2_usb_transfer_cmd._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cpia2_usb_transfer_cmd._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 627, i32 4}
!20 = !{ptr @cpia2_usb_transfer_cmd._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cpia2_usb_transfer_cmd._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 632, i32 3}
!24 = !{ptr @cpia2_usb_transfer_cmd._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cpia2_usb_transfer_cmd._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 638, i32 3}
!28 = !{ptr @cpia2_usb_transfer_cmd._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cpia2_usb_transfer_cmd._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 748, i32 3}
!32 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cpia2_usb_stream_start._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cpia2_usb_stream_start._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 752, i32 4}
!37 = !{ptr @cpia2_usb_stream_start._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cpia2_usb_stream_start._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 954, i32 9}
!41 = !{ptr @configure_transfer_mode.iso_regs, !42, !"iso_regs", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 373, i32 23}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 710, i32 4}
!45 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @submit_urbs._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @submit_urbs._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @frame_sizes, !49, !"frame_sizes", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 25, i32 12}
!50 = distinct !{null, !51, !"frame_ready", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 199, i32 14}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 214, i32 3}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cpia2_usb_complete._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cpia2_usb_complete._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 259, i32 4}
!59 = !{ptr @cpia2_usb_complete._entry.31, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cpia2_usb_complete._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 274, i32 4}
!63 = !{ptr @cpia2_usb_complete._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cpia2_usb_complete._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 297, i32 4}
!67 = !{ptr @cpia2_usb_complete._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cpia2_usb_complete._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 362, i32 4}
!71 = !{ptr @cpia2_usb_complete._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cpia2_usb_complete._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @process_frame.frame_count, !74, !"frame_count", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 80, i32 13}
!75 = !{ptr @cpia2_driver, !76, !"cpia2_driver", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 62, i32 26}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 835, i32 2}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cpia2_usb_probe._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cpia2_usb_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 846, i32 3}
!84 = !{ptr @cpia2_usb_probe._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cpia2_usb_probe._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 852, i32 3}
!88 = !{ptr @cpia2_usb_probe._entry.48, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cpia2_usb_probe._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 855, i32 2}
!92 = !{ptr @cpia2_usb_probe._entry.51, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cpia2_usb_probe._entry_ptr.53, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 860, i32 2}
!96 = !{ptr @cpia2_usb_probe._entry.54, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cpia2_usb_probe._entry_ptr.56, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 864, i32 2}
!100 = !{ptr @cpia2_usb_probe._entry.57, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cpia2_usb_probe._entry_ptr.59, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 872, i32 3}
!104 = !{ptr @cpia2_usb_probe._entry.60, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cpia2_usb_probe._entry_ptr.62, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.63, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 911, i32 2}
!108 = !{ptr @.str.64, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cpia2_usb_disconnect._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @cpia2_usb_disconnect._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 925, i32 2}
!113 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cpia2_usb_suspend._entry, !112, !"_entry", i1 false, i1 false}
!117 = !{ptr @cpia2_usb_suspend._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 943, i32 2}
!120 = !{ptr @.str.70, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cpia2_usb_resume._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @cpia2_usb_resume._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @cpia2_id_table, !124, !"cpia2_id_table", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/cpia2/cpia2_usb.c", i32 54, i32 35}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"branch_weights", i32 1, i32 2000}
