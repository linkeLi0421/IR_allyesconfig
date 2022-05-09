; ModuleID = '/llk/IR_all_yes/drivers/media/usb/hdpvr/hdpvr-video.c_pt.bc'
source_filename = "../drivers/media/usb/hdpvr/hdpvr-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdpvr_device = type { %struct.video_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_device, %struct.anon.111, i32, i32, i32, i8, i8, %struct.hdpvr_options, i64, %struct.v4l2_dv_timings, i32, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.i2c_adapter, %struct.mutex, [128 x i8], %struct.IR_i2c_init_data, %struct.mutex, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.anon.111 = type { ptr, ptr, ptr }
%struct.hdpvr_options = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8 }
%struct.v4l2_dv_timings = type { i32, %union.anon.87 }
%union.anon.87 = type { [32 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.hdpvr_buffer = type { %struct.list_head, ptr, ptr, i32, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.hdpvr_fh = type { %struct.v4l2_fh, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.hdpvr_video_info = type { i16, i16, i8, i8 }
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
%struct.v4l2_format = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.94, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.94 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_encoder_cmd = type { i32, i32, %union.anon.102 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [8 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.89 }
%union.anon.89 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }

@hdpvr_debug = external dso_local local_unnamed_addr global i32, align 4
@hdpvr_alloc_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: allocating %u buffers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdpvr_alloc_buffers\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/hdpvr/hdpvr-video.c\00", [58 x i8] zeroinitializer }, align 32
@hdpvr_alloc_buffers._entry_ptr = internal global ptr @hdpvr_alloc_buffers._entry, section ".printk_index", align 4
@hdpvr_alloc_buffers._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: cannot allocate buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@hdpvr_alloc_buffers._entry_ptr.5 = internal global ptr @hdpvr_alloc_buffers._entry.3, section ".printk_index", align 4
@hdpvr_alloc_buffers._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: cannot allocate usb transfer buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@hdpvr_alloc_buffers._entry_ptr.8 = internal global ptr @hdpvr_alloc_buffers._entry.6, section ".printk_index", align 4
@hdpvr_register_videodev._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hdpvr_video:1172:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@hdpvr_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @hdpvr_try_ctrl, ptr @hdpvr_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@hdpvr_register_videodev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Could not register controls\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hdpvr_register_videodev\00", [40 x i8] zeroinitializer }, align 32
@hdpvr_register_videodev._entry_ptr = internal global ptr @hdpvr_register_videodev._entry, section ".printk_index", align 4
@hdpvr_register_videodev._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Could not setup controls\0A\00", [32 x i8] zeroinitializer }, align 32
@hdpvr_register_videodev._entry_ptr.14 = internal global ptr @hdpvr_register_videodev._entry.12, section ".printk_index", align 4
@hdpvr_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @hdpvr_fops, i32 16908289, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @hdpvr_device_release, ptr @hdpvr_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Hauppauge HD PVR\00", [47 x i8] zeroinitializer }, align 32
@hdpvr_register_videodev._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: video_device registration failed\0A\00", [56 x i8] zeroinitializer }, align 32
@hdpvr_register_videodev._entry_ptr.18 = internal global ptr @hdpvr_register_videodev._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hdpvr_dv_timings = internal constant { [8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], [256 x i8] } { [8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }] [{ i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 1, i32 0, i64 13500000, i32 19, i32 62, i32 57, i32 4, i32 3, i32 15, i32 4, i32 3, i32 16, i32 1, i32 216, %struct.v4l2_fract { i32 4, i32 3 }, i8 6, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 1, i32 0, i64 13500000, i32 12, i32 63, i32 69, i32 2, i32 3, i32 19, i32 2, i32 3, i32 20, i32 1, i32 216, %struct.v4l2_fract { i32 4, i32 3 }, i8 21, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 0, i32 0, i64 27000000, i32 16, i32 62, i32 60, i32 9, i32 6, i32 30, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 2, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 152, %struct.v4l2_fract zeroinitializer, i8 20, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 154, %struct.v4l2_fract zeroinitializer, i8 5, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }], [256 x i8] zeroinitializer }, align 32
@hdpvr_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @hdpvr_read, ptr null, ptr @hdpvr_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @hdpvr_open, ptr @hdpvr_release }, [60 x i8] zeroinitializer }, align 32
@hdpvr_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr @vidioc_querystd, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enumaudio, ptr @vidioc_g_audio, ptr @vidioc_s_audio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_encoder_cmd, ptr @vidioc_try_encoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_dv_timings, ptr @vidioc_g_dv_timings, ptr @vidioc_query_dv_timings, ptr @vidioc_enum_dv_timings, ptr @vidioc_dv_timings_cap, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@hdpvr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: start_streaming failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdpvr_read\00", [21 x i8] zeroinitializer }, align 32
@hdpvr_read._entry_ptr = internal global ptr @hdpvr_read._entry, section ".printk_index", align 4
@hdpvr_read._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s:%d buffer stat: %d free, %d proc\0A\00", [53 x i8] zeroinitializer }, align 32
@hdpvr_read._entry_ptr.24 = internal global ptr @hdpvr_read._entry.22, section ".printk_index", align 4
@hdpvr_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: timeout: restart streaming\0A\00", [62 x i8] zeroinitializer }, align 32
@hdpvr_read._entry_ptr.27 = internal global ptr @hdpvr_read._entry.25, section ".printk_index", align 4
@hdpvr_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: read: copy_to_user failed\0A\00", [63 x i8] zeroinitializer }, align 32
@hdpvr_read._entry_ptr.30 = internal global ptr @hdpvr_read._entry.28, section ".printk_index", align 4
@hdpvr_read._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hdpvr_read._entry_ptr.32 = internal global ptr @hdpvr_read._entry.31, section ".printk_index", align 4
@hdpvr_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: no video signal at input %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdpvr_start_streaming\00", [42 x i8] zeroinitializer }, align 32
@hdpvr_start_streaming._entry_ptr = internal global ptr @hdpvr_start_streaming._entry, section ".printk_index", align 4
@hdpvr_start_streaming._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: video signal: %dx%d@%dhz\0A\00", [32 x i8] zeroinitializer }, align 32
@hdpvr_start_streaming._entry_ptr.37 = internal global ptr @hdpvr_start_streaming._entry.35, section ".printk_index", align 4
@hdpvr_start_streaming._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: encoder start control request returned %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hdpvr_start_streaming._entry_ptr.40 = internal global ptr @hdpvr_start_streaming._entry.38, section ".printk_index", align 4
@hdpvr_start_streaming.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&dev->worker)\00", [32 x i8] zeroinitializer }, align 32
@hdpvr_start_streaming._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.34, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: streaming started\0A\00", [39 x i8] zeroinitializer }, align 32
@hdpvr_start_streaming._entry_ptr.44 = internal global ptr @hdpvr_start_streaming._entry.42, section ".printk_index", align 4
@hdpvr_transmit_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: couldn't submit buffers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hdpvr_transmit_buffers\00", [41 x i8] zeroinitializer }, align 32
@hdpvr_transmit_buffers._entry_ptr = internal global ptr @hdpvr_transmit_buffers._entry, section ".printk_index", align 4
@hdpvr_transmit_buffers._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: transmit worker exited\0A\00", [34 x i8] zeroinitializer }, align 32
@hdpvr_transmit_buffers._entry_ptr.49 = internal global ptr @hdpvr_transmit_buffers._entry.47, section ".printk_index", align 4
@hdpvr_transmit_buffers._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: transmit buffers errored\0A\00", [32 x i8] zeroinitializer }, align 32
@hdpvr_transmit_buffers._entry_ptr.52 = internal global ptr @hdpvr_transmit_buffers._entry.50, section ".printk_index", align 4
@hdpvr_submit_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: buffer not marked as available\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdpvr_submit_buffers\00", [43 x i8] zeroinitializer }, align 32
@hdpvr_submit_buffers._entry_ptr = internal global ptr @hdpvr_submit_buffers._entry, section ".printk_index", align 4
@hdpvr_submit_buffers._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: usb_submit_urb in %s returned %d\0A\00", [56 x i8] zeroinitializer }, align 32
@hdpvr_submit_buffers._entry_ptr.57 = internal global ptr @hdpvr_submit_buffers._entry.55, section ".printk_index", align 4
@hdpvr_submit_buffers._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.54, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hdpvr_submit_buffers._entry_ptr.59 = internal global ptr @hdpvr_submit_buffers._entry.58, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hdpvr_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"\013%s: failed to allocate temporary buffer for emptying the internal device buffer. Next capture start will be slow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdpvr_stop_streaming\00", [43 x i8] zeroinitializer }, align 32
@hdpvr_stop_streaming._entry_ptr = internal global ptr @hdpvr_stop_streaming._entry, section ".printk_index", align 4
@hdpvr_stop_streaming._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %2d: got %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@hdpvr_stop_streaming._entry_ptr.64 = internal global ptr @hdpvr_stop_streaming._entry.62, section ".printk_index", align 4
@hdpvr_stop_streaming._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: used %d urbs to empty device buffers\0A\00", [52 x i8] zeroinitializer }, align 32
@hdpvr_stop_streaming._entry_ptr.67 = internal global ptr @hdpvr_stop_streaming._entry.65, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hdpvr_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.71, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdpvr_poll\00", [21 x i8] zeroinitializer }, align 32
@hdpvr_poll._entry_ptr = internal global ptr @hdpvr_poll._entry, section ".printk_index", align 4
@hdpvr_poll._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.71, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hdpvr_poll._entry_ptr.73 = internal global ptr @hdpvr_poll._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hdpvr\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@iname = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78], [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Component\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@audio_iname = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81], [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RCA back\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RCA front\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@vidioc_encoder_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Unsupported encoder cmd %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_encoder_cmd\00", [45 x i8] zeroinitializer }, align 32
@vidioc_encoder_cmd._entry_ptr = internal global ptr @vidioc_encoder_cmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963803, i64 10029312, i64 10029413, i64 10029512, i64 10029518]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 480, i64 576]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 140, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 147, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 160, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1172, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [15 x i8] c"hdpvr_ctrl_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1156, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1224, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1230, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"hdpvr_video_template\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1147, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1236, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1243, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"hdpvr_dv_timings\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 36, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant [11 x i8] c"hdpvr_fops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 565, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"hdpvr_ioctl_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1099, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 422, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 431, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 464, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 493, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 512, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 287, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 292, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 300, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 311, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 314, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 252, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 261, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 265, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 199, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 210, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 221, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 335, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 357, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 361, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 230, i32 6 }
@___asan_gen_.284 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 214, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 174, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 541, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 548, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 584, i32 23 }
@___asan_gen_.302 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 912, i32 31 }
@___asan_gen_.304 = private unnamed_addr constant [6 x i8] c"iname\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 756, i32 20 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 757, i32 22 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 758, i32 22 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 759, i32 22 }
@___asan_gen_.316 = private unnamed_addr constant [12 x i8] c"audio_iname\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 826, i32 20 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 828, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 827, i32 22 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 829, i32 22 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.335 = private constant [41 x i8] c"../drivers/media/usb/hdpvr/hdpvr-video.c\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1076, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @hdpvr_alloc_buffers._entry, ptr @hdpvr_alloc_buffers._entry.3, ptr @hdpvr_alloc_buffers._entry.6, ptr @hdpvr_alloc_buffers._entry_ptr, ptr @hdpvr_alloc_buffers._entry_ptr.5, ptr @hdpvr_alloc_buffers._entry_ptr.8, ptr @hdpvr_poll._entry, ptr @hdpvr_poll._entry.72, ptr @hdpvr_poll._entry_ptr, ptr @hdpvr_poll._entry_ptr.73, ptr @hdpvr_read._entry, ptr @hdpvr_read._entry.22, ptr @hdpvr_read._entry.25, ptr @hdpvr_read._entry.28, ptr @hdpvr_read._entry.31, ptr @hdpvr_read._entry_ptr, ptr @hdpvr_read._entry_ptr.24, ptr @hdpvr_read._entry_ptr.27, ptr @hdpvr_read._entry_ptr.30, ptr @hdpvr_read._entry_ptr.32, ptr @hdpvr_register_videodev._entry, ptr @hdpvr_register_videodev._entry.12, ptr @hdpvr_register_videodev._entry.16, ptr @hdpvr_register_videodev._entry_ptr, ptr @hdpvr_register_videodev._entry_ptr.14, ptr @hdpvr_register_videodev._entry_ptr.18, ptr @hdpvr_start_streaming._entry, ptr @hdpvr_start_streaming._entry.35, ptr @hdpvr_start_streaming._entry.38, ptr @hdpvr_start_streaming._entry.42, ptr @hdpvr_start_streaming._entry_ptr, ptr @hdpvr_start_streaming._entry_ptr.37, ptr @hdpvr_start_streaming._entry_ptr.40, ptr @hdpvr_start_streaming._entry_ptr.44, ptr @hdpvr_stop_streaming._entry, ptr @hdpvr_stop_streaming._entry.62, ptr @hdpvr_stop_streaming._entry.65, ptr @hdpvr_stop_streaming._entry_ptr, ptr @hdpvr_stop_streaming._entry_ptr.64, ptr @hdpvr_stop_streaming._entry_ptr.67, ptr @hdpvr_submit_buffers._entry, ptr @hdpvr_submit_buffers._entry.55, ptr @hdpvr_submit_buffers._entry.58, ptr @hdpvr_submit_buffers._entry_ptr, ptr @hdpvr_submit_buffers._entry_ptr.57, ptr @hdpvr_submit_buffers._entry_ptr.59, ptr @hdpvr_transmit_buffers._entry, ptr @hdpvr_transmit_buffers._entry.47, ptr @hdpvr_transmit_buffers._entry.50, ptr @hdpvr_transmit_buffers._entry_ptr, ptr @hdpvr_transmit_buffers._entry_ptr.49, ptr @hdpvr_transmit_buffers._entry_ptr.52, ptr @vidioc_encoder_cmd._entry, ptr @vidioc_encoder_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @hdpvr_register_videodev._key, ptr @.str.9, ptr @hdpvr_ctrl_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @hdpvr_video_template, ptr @.str.15, ptr @.str.17, ptr @hdpvr_dv_timings, ptr @hdpvr_fops, ptr @hdpvr_ioctl_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @hdpvr_start_streaming.__key, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @iname, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @audio_iname, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_alloc_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_alloc_buffers._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_alloc_buffers._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_register_videodev._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_register_videodev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_register_videodev._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_register_videodev._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_dv_timings to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_read._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_read._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_start_streaming._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_start_streaming._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_start_streaming.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_start_streaming._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_transmit_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_transmit_buffers._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_transmit_buffers._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_submit_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_submit_buffers._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_submit_buffers._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_stop_streaming._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_stop_streaming._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdpvr_poll._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_iname to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_encoder_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_cancel_queue(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rec_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %rec_buff_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.014 = load ptr, ptr %rec_buff_list, align 4
  %cmp.not15 = icmp eq ptr %buf.014, %rec_buff_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf.016 = phi ptr [ %buf.0, %for.body.for.body_crit_edge ], [ %buf.014, %entry.for.body_crit_edge ]
  %urb = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.016, i32 0, i32 1
  %1 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %2) #10
  %status = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.016, i32 0, i32 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %status, align 4
  %4 = ptrtoint ptr %buf.016 to i32
  call void @__asan_load4_noabort(i32 %4)
  %buf.0 = load ptr, ptr %buf.016, align 4
  %cmp.not = icmp eq ptr %buf.0, %rec_buff_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %prev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  %7 = ptrtoint ptr %rec_buff_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rec_buff_list, align 4
  %cmp.i.not.i = icmp eq ptr %8, %rec_buff_list
  br i1 %cmp.i.not.i, label %for.end.list_splice_init.exit_crit_edge, label %if.then.i

for.end.list_splice_init.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev2.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %prev3.i.i, align 4
  store ptr %8, ptr %6, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %12, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev6.i.i, align 4
  %16 = ptrtoint ptr %rec_buff_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %rec_buff_list, ptr %rec_buff_list, align 4
  store ptr %rec_buff_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %for.end.list_splice_init.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_free_buffers(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rec_buff_list.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.014.i = load ptr, ptr %rec_buff_list.i, align 4
  %cmp.not15.i = icmp eq ptr %buf.014.i, %rec_buff_list.i
  br i1 %cmp.not15.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %buf.016.i = phi ptr [ %buf.0.i, %for.body.i.for.body.i_crit_edge ], [ %buf.014.i, %entry.for.body.i_crit_edge ]
  %urb.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.016.i, i32 0, i32 1
  %1 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %2) #10
  %status.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.016.i, i32 0, i32 4
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %status.i, align 4
  %4 = ptrtoint ptr %buf.016.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %buf.0.i = load ptr, ptr %buf.016.i, align 4
  %cmp.not.i = icmp eq ptr %buf.0.i, %rec_buff_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %prev.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %7 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rec_buff_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %8, %rec_buff_list.i
  br i1 %cmp.i.not.i.i, label %for.end.i.hdpvr_cancel_queue.exit_crit_edge, label %if.then.i.i

for.end.i.hdpvr_cancel_queue.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdpvr_cancel_queue.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %prev3.i.i.i, align 4
  store ptr %8, ptr %6, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %12, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev6.i.i.i, align 4
  %16 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %rec_buff_list.i, ptr %rec_buff_list.i, align 4
  store ptr %rec_buff_list.i, ptr %prev2.i.i.i, align 4
  br label %hdpvr_cancel_queue.exit

hdpvr_cancel_queue.exit:                          ; preds = %if.then.i.i, %for.end.i.hdpvr_cancel_queue.exit_crit_edge
  %free_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %free_buff_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free_buff_list, align 4
  %cmp.not1.i = icmp eq ptr %18, %free_buff_list
  br i1 %cmp.not1.i, label %hdpvr_cancel_queue.exit.hdpvr_free_queue.exit_crit_edge, label %hdpvr_cancel_queue.exit.for.body.i5_crit_edge

hdpvr_cancel_queue.exit.for.body.i5_crit_edge:    ; preds = %hdpvr_cancel_queue.exit
  br label %for.body.i5

hdpvr_cancel_queue.exit.hdpvr_free_queue.exit_crit_edge: ; preds = %hdpvr_cancel_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdpvr_free_queue.exit

for.body.i5:                                      ; preds = %list_del.exit.i.for.body.i5_crit_edge, %hdpvr_cancel_queue.exit.for.body.i5_crit_edge
  %p.02.i = phi ptr [ %30, %list_del.exit.i.for.body.i5_crit_edge ], [ %18, %hdpvr_cancel_queue.exit.for.body.i5_crit_edge ]
  %urb2.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %p.02.i, i32 0, i32 1
  %19 = ptrtoint ptr %urb2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb2.i, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 19
  %23 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transfer_buffer_length.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 15
  %27 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %22, i32 noundef %24, ptr noundef %26, i32 noundef %28) #10
  tail call void @usb_free_urb(ptr noundef %20) #10
  %29 = ptrtoint ptr %p.02.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p.02.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.02.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i5.list_del.exit.i_crit_edge

for.body.i5.list_del.exit.i_crit_edge:            ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.02.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %p.02.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p.02.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i5.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %p.02.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %p.02.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.02.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %p.02.i) #10
  %cmp.not.i6 = icmp eq ptr %30, %free_buff_list
  br i1 %cmp.not.i6, label %list_del.exit.i.hdpvr_free_queue.exit_crit_edge, label %list_del.exit.i.for.body.i5_crit_edge

list_del.exit.i.for.body.i5_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i5

list_del.exit.i.hdpvr_free_queue.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdpvr_free_queue.exit

hdpvr_free_queue.exit:                            ; preds = %list_del.exit.i.hdpvr_free_queue.exit_crit_edge, %hdpvr_cancel_queue.exit.hdpvr_free_queue.exit_crit_edge
  %39 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rec_buff_list.i, align 4
  %cmp.not1.i8 = icmp eq ptr %40, %rec_buff_list.i
  br i1 %cmp.not1.i8, label %hdpvr_free_queue.exit.hdpvr_free_queue.exit24_crit_edge, label %hdpvr_free_queue.exit.for.body.i16_crit_edge

hdpvr_free_queue.exit.for.body.i16_crit_edge:     ; preds = %hdpvr_free_queue.exit
  br label %for.body.i16

hdpvr_free_queue.exit.hdpvr_free_queue.exit24_crit_edge: ; preds = %hdpvr_free_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdpvr_free_queue.exit24

for.body.i16:                                     ; preds = %list_del.exit.i22.for.body.i16_crit_edge, %hdpvr_free_queue.exit.for.body.i16_crit_edge
  %p.02.i9 = phi ptr [ %52, %list_del.exit.i22.for.body.i16_crit_edge ], [ %40, %hdpvr_free_queue.exit.for.body.i16_crit_edge ]
  %urb2.i10 = getelementptr inbounds %struct.hdpvr_buffer, ptr %p.02.i9, i32 0, i32 1
  %41 = ptrtoint ptr %urb2.i10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %urb2.i10, align 4
  %dev.i11 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %dev.i11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i11, align 4
  %transfer_buffer_length.i12 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 19
  %45 = ptrtoint ptr %transfer_buffer_length.i12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %transfer_buffer_length.i12, align 4
  %transfer_buffer.i13 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %47 = ptrtoint ptr %transfer_buffer.i13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %transfer_buffer.i13, align 4
  %transfer_dma.i14 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 15
  %49 = ptrtoint ptr %transfer_dma.i14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %transfer_dma.i14, align 4
  tail call void @usb_free_coherent(ptr noundef %44, i32 noundef %46, ptr noundef %48, i32 noundef %50) #10
  tail call void @usb_free_urb(ptr noundef %42) #10
  %51 = ptrtoint ptr %p.02.i9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %p.02.i9, align 4
  %call.i.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.02.i9) #10
  br i1 %call.i.i.i15, label %if.end.i.i.i19, label %for.body.i16.list_del.exit.i22_crit_edge

for.body.i16.list_del.exit.i22_crit_edge:         ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i22

if.end.i.i.i19:                                   ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %p.02.i9, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i17, align 4
  %55 = ptrtoint ptr %p.02.i9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p.02.i9, align 4
  %prev1.i.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i18, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i22

list_del.exit.i22:                                ; preds = %if.end.i.i.i19, %for.body.i16.list_del.exit.i22_crit_edge
  %59 = ptrtoint ptr %p.02.i9 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %p.02.i9, align 4
  %prev.i.i20 = getelementptr inbounds %struct.list_head, ptr %p.02.i9, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i20, align 4
  tail call void @kfree(ptr noundef %p.02.i9) #10
  %cmp.not.i21 = icmp eq ptr %52, %rec_buff_list.i
  br i1 %cmp.not.i21, label %list_del.exit.i22.hdpvr_free_queue.exit24_crit_edge, label %list_del.exit.i22.for.body.i16_crit_edge

list_del.exit.i22.for.body.i16_crit_edge:         ; preds = %list_del.exit.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i16

list_del.exit.i22.hdpvr_free_queue.exit24_crit_edge: ; preds = %list_del.exit.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdpvr_free_queue.exit24

hdpvr_free_queue.exit24:                          ; preds = %list_del.exit.i22.hdpvr_free_queue.exit24_crit_edge, %hdpvr_free_queue.exit.hdpvr_free_queue.exit24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_alloc_buffers(ptr noundef %dev, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %0 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %count) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp577.not = icmp eq i32 %count, 0
  br i1 %cmp577.not, label %do.end4.cleanup_crit_edge, label %for.body.lr.ph

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end4
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %bulk_in_size = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 7
  %bulk_in_endpointAddr = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 8
  %free_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 15, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end10, label %if.end16

do.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %name13 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name13) #13
  br label %exit

if.end16:                                         ; preds = %for.body
  %dev17 = getelementptr inbounds %struct.hdpvr_buffer, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev17, align 4
  %call18 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.exit_urb_crit_edge, label %if.end21

if.end16.exit_urb_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_urb

if.end21:                                         ; preds = %if.end16
  %urb22 = getelementptr inbounds %struct.hdpvr_buffer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %urb22 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %urb22, align 8
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 8
  %6 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bulk_in_size, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 15
  %call23 = tail call ptr @usb_alloc_coherent(ptr noundef %5, i32 noundef %7, i32 noundef 3264, ptr noundef %transfer_dma) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end34

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %name31 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name31) #13
  tail call void @usb_free_urb(ptr noundef nonnull %call18) #10
  br label %exit_urb

if.end34:                                         ; preds = %if.end21
  %8 = ptrtoint ptr %urb22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb22, align 8
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 8
  %12 = ptrtoint ptr %bulk_in_endpointAddr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bulk_in_endpointAddr, align 4
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %shl.i = shl i32 %15, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or39 = or i32 %or.i, -1073741696
  %16 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bulk_in_size, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %11, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 10
  %19 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or39, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hdpvr_read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 27
  %23 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %24 = load ptr, ptr %urb22, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_flags, align 4
  %or42 = or i32 %26, 4
  store i32 %or42, ptr %transfer_flags, align 4
  %status = getelementptr inbounds %struct.hdpvr_buffer, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %status, align 4
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %29, ptr noundef %free_buff_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_add_tail.exit_crit_edge

if.end34.list_add_tail.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free_buff_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end34.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

exit_urb:                                         ; preds = %do.end28, %if.end16.exit_urb_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %exit

exit:                                             ; preds = %exit_urb, %do.end10
  %call43 = tail call i32 @hdpvr_free_buffers(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %exit, %list_add_tail.exit.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %exit ], [ 0, %do.end4.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdpvr_read_bulk_callback(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.hdpvr_buffer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %status = getelementptr inbounds %struct.hdpvr_buffer, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %status, align 4
  %wait_data = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wait_data, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdpvr_register_videodev(ptr noundef %dev, ptr nocapture noundef readnone %parent, i32 noundef %devnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl1 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 1
  %flags = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cur_std = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %cur_std to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 63744, ptr %cur_std, align 8
  %width = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 720, ptr %width, align 8
  %height = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 480, ptr %height, align 4
  %cur_dv_timings = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 12
  %5 = call ptr @memcpy(ptr %cur_dv_timings, ptr @hdpvr_dv_timings, i32 132)
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl1, i32 noundef 11, ptr noundef nonnull @hdpvr_register_videodev._key, ptr noundef nonnull @.str.9) #10
  %fw_ver = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 27
  %6 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %7)
  %cmp = icmp ugt i8 %7, 21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #10
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 64) #10
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 64) #10
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 30, i64 noundef 1, i64 noundef 15) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 134) #10
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #10
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #10
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #10
  %call13 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 10029312, i8 noundef zeroext 1, i64 noundef 1, i8 noundef zeroext 1) #10
  %conv16 = select i1 %tobool.not, i8 3, i8 4
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %audio_codec = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 7
  %8 = ptrtoint ptr %audio_codec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audio_codec, align 8
  %phi.cast = trunc i32 %9 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond19 = phi i8 [ %phi.cast, %cond.true ], [ 3, %if.end.cond.end_crit_edge ]
  %call21 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 10029413, i8 noundef zeroext %conv16, i64 noundef 7, i8 noundef zeroext %cond19) #10
  %call22 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 10029512, i8 noundef zeroext 2, i64 noundef 3, i8 noundef zeroext 2) #10
  %call23 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 10029518, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #10
  %10 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %10, align 4
  %call24 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 10029519, i64 noundef 1000000, i64 noundef 13500000, i64 noundef 100000, i64 noundef 6500000) #10
  %video_bitrate = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %video_bitrate to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %video_bitrate, align 4
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @hdpvr_ctrl_ops, i32 noundef 10029520, i64 noundef 1100000, i64 noundef 20200000, i64 noundef 100000, i64 noundef 9000000) #10
  %video_bitrate_peak = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %video_bitrate_peak, align 4
  %v4l2_dev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3
  %ctrl_handler = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %hdl1, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 1, i32 9
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool26.not = icmp eq i32 %16, 0
  br i1 %tobool26.not, label %if.end32, label %cond.end.error69_crit_edge

cond.end.error69_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error69

if.end32:                                         ; preds = %cond.end
  tail call void @v4l2_ctrl_cluster(i32 noundef 3, ptr noundef %10) #10
  %call34 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end32.error69_crit_edge, label %if.end46

if.end32.error69_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %error69

if.end46:                                         ; preds = %if.end32
  %17 = call ptr @memcpy(ptr %dev, ptr @hdpvr_video_template, i32 1352)
  %name48 = getelementptr inbounds %struct.video_device, ptr %dev, i32 0, i32 12
  %call50 = tail call i32 @strscpy(ptr noundef %name48, ptr noundef nonnull @.str.15, i32 noundef 32) #10
  %v4l2_dev53 = getelementptr inbounds %struct.video_device, ptr %dev, i32 0, i32 7
  %18 = ptrtoint ptr %v4l2_dev53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %v4l2_dev, ptr %v4l2_dev53, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %dev, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fops.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %dev, i32 noundef 0, i32 noundef %devnum, i32 noundef 1, ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp57 = icmp slt i32 %call.i, 0
  br i1 %cmp57, label %if.end46.error69_crit_edge, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46.error69_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %error69

error69:                                          ; preds = %if.end46.error69_crit_edge, %if.end32.error69_crit_edge, %cond.end.error69_crit_edge
  %.str.17.sink = phi ptr [ @.str.10, %cond.end.error69_crit_edge ], [ @.str.13, %if.end32.error69_crit_edge ], [ @.str.17, %if.end46.error69_crit_edge ]
  %res.0 = phi i32 [ %16, %cond.end.error69_crit_edge ], [ %call34, %if.end32.error69_crit_edge ], [ %call.i, %if.end46.error69_crit_edge ]
  %name65 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink, ptr noundef %name65) #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl1) #10
  br label %cleanup

cleanup:                                          ; preds = %error69, %if.end46.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %error69 ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdpvr_try_ctrl(ptr nocapture noundef readonly %ctrl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10029518, i32 %3)
  %cond = icmp eq i32 %3, 10029518
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %video_bitrate = getelementptr i8, ptr %1, i32 320
  %6 = ptrtoint ptr %video_bitrate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video_bitrate, align 4
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val1, align 4
  %video_bitrate_peak = getelementptr i8, ptr %1, i32 324
  %10 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video_bitrate_peak, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp3.not = icmp slt i32 %9, %13
  br i1 %cmp3.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %9, 100000
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1352
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb4
    i32 9963778, label %sw.bb14
    i32 9963779, label %sw.bb24
    i32 9963803, label %sw.bb34
    i32 10029413, label %sw.bb44
    i32 10029512, label %entry.cleanup_crit_edge
    i32 10029518, label %sw.bb54
    i32 10029312, label %entry.cleanup_crit_edge140
  ]

entry.cleanup_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %call = tail call i32 @hdpvr_config_call(ptr noundef %add.ptr, i32 noundef 10496, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv2 = trunc i32 %8 to i8
  %brightness = getelementptr i8, ptr %1, i32 356
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %brightness, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val5, align 4
  %conv6 = trunc i32 %11 to i8
  %call7 = tail call i32 @hdpvr_config_call(ptr noundef %add.ptr, i32 noundef 10752, i8 noundef zeroext %conv6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end10:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val5, align 4
  %conv12 = trunc i32 %13 to i8
  %contrast = getelementptr i8, ptr %1, i32 357
  %14 = ptrtoint ptr %contrast to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12, ptr %contrast, align 1
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val15, align 4
  %conv16 = trunc i32 %16 to i8
  %call17 = tail call i32 @hdpvr_config_call(ptr noundef %add.ptr, i32 noundef 11264, i8 noundef zeroext %conv16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end20:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val15, align 4
  %conv22 = trunc i32 %18 to i8
  %saturation = getelementptr i8, ptr %1, i32 359
  %19 = ptrtoint ptr %saturation to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22, ptr %saturation, align 1
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val25, align 4
  %conv26 = trunc i32 %21 to i8
  %call27 = tail call i32 @hdpvr_config_call(ptr noundef %add.ptr, i32 noundef 11008, i8 noundef zeroext %conv26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end30:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val25, align 4
  %conv32 = trunc i32 %23 to i8
  %hue = getelementptr i8, ptr %1, i32 358
  %24 = ptrtoint ptr %hue to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv32, ptr %hue, align 2
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val35, align 4
  %conv36 = trunc i32 %26 to i8
  %call37 = tail call i32 @hdpvr_config_call(ptr noundef %add.ptr, i32 noundef 11520, i8 noundef zeroext %conv36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %sw.bb34.sw.epilog_crit_edge

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end40:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val35, align 4
  %conv42 = trunc i32 %28 to i8
  %sharpness = getelementptr i8, ptr %1, i32 360
  %29 = ptrtoint ptr %sharpness to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv42, ptr %sharpness, align 8
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %1, i32 508
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %sw.bb44.cleanup_crit_edge, label %if.then46

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %val47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val47, align 4
  %audio_codec = getelementptr i8, ptr %1, i32 352
  %34 = ptrtoint ptr %audio_codec to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %audio_codec, align 4
  %audio_input = getelementptr i8, ptr %1, i32 346
  %35 = ptrtoint ptr %audio_input to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %audio_input, align 2
  %add = add i8 %36, 1
  %call51 = tail call i32 @hdpvr_set_audio(ptr noundef %add.ptr, i8 noundef zeroext %add, i32 noundef %33) #10
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  %video_bitrate_peak = getelementptr i8, ptr %1, i32 324
  %37 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %video_bitrate_peak, align 4
  %val55 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val55, align 4
  %div = sdiv i32 %40, 100000
  %video_bitrate = getelementptr i8, ptr %1, i32 320
  %41 = ptrtoint ptr %video_bitrate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %video_bitrate, align 4
  %val56 = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 22
  %43 = ptrtoint ptr %val56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val56, align 4
  %div57 = sdiv i32 %44, 100000
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %45 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load = load i32, ptr %is_new, align 4
  %46 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool58.not = icmp eq i32 %46, 0
  br i1 %tobool58.not, label %sw.bb54.if.end71_crit_edge, label %if.then59

sw.bb54.if.end71_crit_edge:                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then59:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  %val60 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp = icmp eq i32 %48, 1
  %spec.select = select i1 %cmp, i8 1, i8 3
  %49 = getelementptr i8, ptr %1, i32 349
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select, ptr %49, align 1
  %call66 = tail call i32 @hdpvr_config_call(ptr noundef %add.ptr, i32 noundef 4608, i8 noundef zeroext %spec.select) #10
  %51 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %video_bitrate_peak, align 4
  %53 = ptrtoint ptr %val60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp69 = icmp ne i32 %54, 1
  tail call void @v4l2_ctrl_activate(ptr noundef %52, i1 noundef zeroext %cmp69) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then59, %sw.bb54.if.end71_crit_edge
  %55 = ptrtoint ptr %video_bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %video_bitrate_peak, align 4
  %is_new73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %is_new73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load74 = load i32, ptr %is_new73, align 4
  %58 = and i32 %bf.load74, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool77.not = icmp eq i32 %58, 0
  br i1 %tobool77.not, label %lor.lhs.false, label %if.end71.if.then84_crit_edge

if.end71.if.then84_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

lor.lhs.false:                                    ; preds = %if.end71
  %59 = ptrtoint ptr %video_bitrate to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %video_bitrate, align 4
  %is_new79 = getelementptr inbounds %struct.v4l2_ctrl, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %is_new79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load80 = load i32, ptr %is_new79, align 4
  %62 = and i32 %bf.load80, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool83.not = icmp eq i32 %62, 0
  br i1 %tobool83.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then84_crit_edge

lor.lhs.false.if.then84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then84:                                        ; preds = %lor.lhs.false.if.then84_crit_edge, %if.end71.if.then84_crit_edge
  %conv85 = trunc i32 %div57 to i8
  %bitrate86 = getelementptr i8, ptr %1, i32 347
  %63 = ptrtoint ptr %bitrate86 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv85, ptr %bitrate86, align 1
  %conv87 = trunc i32 %div to i8
  %peak_bitrate88 = getelementptr i8, ptr %1, i32 348
  %64 = ptrtoint ptr %peak_bitrate88 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv87, ptr %peak_bitrate88, align 4
  %call89 = tail call i32 @hdpvr_set_bitrate(ptr noundef %add.ptr) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb34.sw.epilog_crit_edge, %sw.bb24.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call37, %sw.bb34.sw.epilog_crit_edge ], [ %call27, %sw.bb24.sw.epilog_crit_edge ], [ %call17, %sw.bb14.sw.epilog_crit_edge ], [ %call7, %sw.bb4.sw.epilog_crit_edge ], [ %call, %sw.bb.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then84, %lor.lhs.false.cleanup_crit_edge, %if.then46, %sw.bb44.cleanup_crit_edge, %if.end40, %if.end30, %if.end20, %if.end10, %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge140
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call51, %if.then46 ], [ 0, %if.end40 ], [ 0, %if.end30 ], [ 0, %if.end20 ], [ 0, %if.end10 ], [ 0, %if.end ], [ 0, %sw.bb44.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then84 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge140 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_config_call(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_set_audio(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdpvr_set_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdpvr_device_release(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hdpvr_delete(ptr noundef %1) #10
  %worker = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 19
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %worker) #10
  %v4l2_dev = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  %hdl = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #10
  %i2c_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #10
  %i2c_adapter = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 21
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #10
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #10
  %usbc_buf = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %usbc_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbc_buf, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_read(ptr noundef %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry111 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup247_crit_edge

entry.cleanup247_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

if.end:                                           ; preds = %entry
  %io_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @hdpvr_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %6 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp sgt i32 %6, 0
  br i1 %cmp6, label %do.end, label %do.body.do.end13_crit_edge

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #13
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  tail call void @msleep(i32 noundef 200) #10
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %status, align 1
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  br label %cleanup247

if.end16:                                         ; preds = %if.then2
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %owner = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %owner, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %11 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp18 = icmp sgt i32 %11, 1
  br i1 %cmp18, label %do.end23, label %if.end16.if.end34_crit_edge

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end23:                                         ; preds = %if.end16
  %free_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %do.end23
  %tmp.0.in.i = phi ptr [ %free_buff_list, %do.end23 ], [ %tmp.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %count.0.i = phi i32 [ 0, %do.end23 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %free_buff_list
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

list_size.exit:                                   ; preds = %for.cond.i
  %rec_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 16
  br label %for.cond.i339

for.cond.i339:                                    ; preds = %for.cond.i339.for.cond.i339_crit_edge, %list_size.exit
  %tmp.0.in.i334 = phi ptr [ %rec_buff_list, %list_size.exit ], [ %tmp.0.i336, %for.cond.i339.for.cond.i339_crit_edge ]
  %count.0.i335 = phi i32 [ 0, %list_size.exit ], [ %inc.i338, %for.cond.i339.for.cond.i339_crit_edge ]
  %13 = ptrtoint ptr %tmp.0.in.i334 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0.i336 = load ptr, ptr %tmp.0.in.i334, align 4
  %cmp.i.not.i337 = icmp eq ptr %tmp.0.i336, %rec_buff_list
  %inc.i338 = add i32 %count.0.i335, 1
  br i1 %cmp.i.not.i337, label %list_size.exit340, label %for.cond.i339.for.cond.i339_crit_edge

for.cond.i339.for.cond.i339_crit_edge:            ; preds = %for.cond.i339
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i339

list_size.exit340:                                ; preds = %for.cond.i339
  call void @__sanitizer_cov_trace_pc() #12
  %name26 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name26, ptr noundef nonnull @.str.21, i32 noundef 431, i32 noundef %count.0.i, i32 noundef %count.0.i335) #13
  br label %if.end34

if.end34:                                         ; preds = %list_size.exit340, %if.end16.if.end34_crit_edge, %if.end.if.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags, align 4
  %and = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.then37, label %if.end34.if.end65_crit_edge

if.end34.if.end65_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then37:                                        ; preds = %if.end34
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 438) #10
  %rec_buff_list44 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %rec_buff_list44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %rec_buff_list44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  %cmp.i.not.i341 = icmp eq ptr %17, %rec_buff_list44
  br i1 %cmp.i.not.i341, label %list_empty_careful.exit, label %if.then37.if.end65_crit_edge

if.then37.if.end65_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

list_empty_careful.exit:                          ; preds = %if.then37
  %prev.i = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %19, %rec_buff_list44
  br i1 %cmp.i.not, label %if.then47, label %list_empty_careful.exit.if.end65_crit_edge

list_empty_careful.exit.if.end65_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then47:                                        ; preds = %list_empty_careful.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_data = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 18
  %call49425 = call i32 @prepare_to_wait_event(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %21 = ptrtoint ptr %rec_buff_list44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %rec_buff_list44, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  %cmp.i.not.i342426 = icmp eq ptr %22, %rec_buff_list44
  br i1 %cmp.i.not.i342426, label %if.then47.list_empty_careful.exit347_crit_edge, label %if.then47.if.end60.thread381_crit_edge

if.then47.if.end60.thread381_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.thread381

if.then47.list_empty_careful.exit347_crit_edge:   ; preds = %if.then47
  br label %list_empty_careful.exit347

list_empty_careful.exit347:                       ; preds = %cleanup.list_empty_careful.exit347_crit_edge, %if.then47.list_empty_careful.exit347_crit_edge
  %call49427 = phi i32 [ %call49, %cleanup.list_empty_careful.exit347_crit_edge ], [ %call49425, %if.then47.list_empty_careful.exit347_crit_edge ]
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %cmp.i344.not = icmp eq ptr %24, %rec_buff_list44
  br i1 %cmp.i344.not, label %if.end54, label %list_empty_careful.exit347.if.end60.thread381_crit_edge

list_empty_careful.exit347.if.end60.thread381_crit_edge: ; preds = %list_empty_careful.exit347
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.thread381

if.end54:                                         ; preds = %list_empty_careful.exit347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49427)
  %tobool55.not = icmp eq i32 %call49427, 0
  br i1 %tobool55.not, label %cleanup, label %if.end60

cleanup:                                          ; preds = %if.end54
  call void @schedule() #10
  %call49 = call i32 @prepare_to_wait_event(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %25 = ptrtoint ptr %rec_buff_list44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %rec_buff_list44, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  %cmp.i.not.i342 = icmp eq ptr %26, %rec_buff_list44
  br i1 %cmp.i.not.i342, label %cleanup.list_empty_careful.exit347_crit_edge, label %cleanup.if.end60.thread381_crit_edge

cleanup.if.end60.thread381_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.thread381

cleanup.list_empty_careful.exit347_crit_edge:     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_empty_careful.exit347

if.end60.thread381:                               ; preds = %cleanup.if.end60.thread381_crit_edge, %list_empty_careful.exit347.if.end60.thread381_crit_edge, %if.then47.if.end60.thread381_crit_edge
  call void @finish_wait(ptr noundef %wait_data, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end65

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup247

if.end65:                                         ; preds = %if.end60.thread381, %list_empty_careful.exit.if.end65_crit_edge, %if.then37.if.end65_crit_edge, %if.end34.if.end65_crit_edge
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %rec_buff_list.i = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %rec_buff_list.i, align 4
  %cmp.i.not.i348 = icmp eq ptr %28, %rec_buff_list.i
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  %..i = select i1 %cmp.i.not.i348, ptr null, ptr %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp67.not435 = icmp eq i32 %count, 0
  br i1 %cmp67.not435, label %if.end65.land.lhs.true243_crit_edge, label %land.rhs.lr.ph

if.end65.land.lhs.true243_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true243

land.rhs.lr.ph:                                   ; preds = %if.end65
  %wait_data116 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 18
  %name165 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3, i32 4
  %free_buff_list218 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 15
  %prev.i2.i = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 15, i32 1
  %wait_buffer = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 17
  br label %land.rhs

land.rhs:                                         ; preds = %if.end240.land.rhs_crit_edge, %land.rhs.lr.ph
  %buffer.addr.0442 = phi ptr [ %buffer, %land.rhs.lr.ph ], [ %add.ptr208, %if.end240.land.rhs_crit_edge ]
  %count.addr.0441 = phi i32 [ %count, %land.rhs.lr.ph ], [ %sub207, %if.end240.land.rhs_crit_edge ]
  %buf.0438 = phi ptr [ %..i, %land.rhs.lr.ph ], [ %buf.1, %if.end240.land.rhs_crit_edge ]
  %ret.0436 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add209, %if.end240.land.rhs_crit_edge ]
  %tobool69.not = icmp eq ptr %buf.0438, null
  br i1 %tobool69.not, label %land.rhs.err241_crit_edge, label %while.body

land.rhs.err241_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %err241

while.body:                                       ; preds = %land.rhs
  %status70 = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.0438, i32 0, i32 4
  %29 = ptrtoint ptr %status70 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %status70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp72.not = icmp eq i8 %30, 3
  br i1 %cmp72.not, label %while.body.if.end185_crit_edge, label %land.lhs.true

while.body.if.end185_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

land.lhs.true:                                    ; preds = %while.body
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp76.not = icmp eq i8 %32, 6
  br i1 %cmp76.not, label %land.lhs.true.err241_crit_edge, label %if.then78

land.lhs.true.err241_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %err241

if.then78:                                        ; preds = %land.lhs.true
  %33 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_flags, align 4
  %and80 = and i32 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end86, label %if.then82

if.then82:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0436)
  %tobool83.not = icmp eq i32 %ret.0436, 0
  %spec.store.select = select i1 %tobool83.not, i32 -11, i32 %ret.0436
  br label %cleanup247

if.end86:                                         ; preds = %if.then78
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 458) #10
  %35 = ptrtoint ptr %status70 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp97 = icmp eq i8 %36, 3
  br i1 %cmp97, label %if.end86.if.end185_crit_edge, label %if.then110

if.end86.if.end185_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

if.then110:                                       ; preds = %if.end86
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry111) #10
  %37 = call ptr @memset(ptr %__wq_entry111, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry111, i32 noundef 0) #10
  %call117429 = call i32 @prepare_to_wait_event(ptr noundef %wait_data116, ptr noundef nonnull %__wq_entry111, i32 noundef 1) #10
  %38 = ptrtoint ptr %status70 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %status70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp121430 = icmp eq i8 %39, 3
  br i1 %cmp121430, label %if.then110.for.end148_crit_edge, label %if.then110.if.end140_crit_edge

if.then110.if.end140_crit_edge:                   ; preds = %if.then110
  br label %if.end140

if.then110.for.end148_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end148

if.end140:                                        ; preds = %cleanup145.if.end140_crit_edge, %if.then110.if.end140_crit_edge
  %__ret112.1432 = phi i32 [ %__ret112.1, %cleanup145.if.end140_crit_edge ], [ 100, %if.then110.if.end140_crit_edge ]
  %call117431 = phi i32 [ %call117, %cleanup145.if.end140_crit_edge ], [ %call117429, %if.then110.if.end140_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117431)
  %tobool141.not = icmp eq i32 %call117431, 0
  br i1 %tobool141.not, label %cleanup145, label %if.end140.if.end152_crit_edge

if.end140.if.end152_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

cleanup145:                                       ; preds = %if.end140
  %call144 = call i32 @schedule_timeout(i32 noundef %__ret112.1432) #10
  %call117 = call i32 @prepare_to_wait_event(ptr noundef %wait_data116, ptr noundef nonnull %__wq_entry111, i32 noundef 1) #10
  %40 = ptrtoint ptr %status70 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %status70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp121 = icmp eq i8 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool127.not = icmp eq i32 %call144, 0
  %42 = select i1 %cmp121, i1 %tobool127.not, i1 false
  %__ret112.1 = select i1 %42, i32 1, i32 %call144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret112.1)
  %tobool134.not = icmp eq i32 %__ret112.1, 0
  %43 = select i1 %cmp121, i1 true, i1 %tobool134.not
  br i1 %43, label %cleanup145.for.end148_crit_edge, label %cleanup145.if.end140_crit_edge

cleanup145.if.end140_crit_edge:                   ; preds = %cleanup145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

cleanup145.for.end148_crit_edge:                  ; preds = %cleanup145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end148

for.end148:                                       ; preds = %cleanup145.for.end148_crit_edge, %if.then110.for.end148_crit_edge
  %__ret112.1.lcssa = phi i32 [ 100, %if.then110.for.end148_crit_edge ], [ %__ret112.1, %cleanup145.for.end148_crit_edge ]
  call void @finish_wait(ptr noundef %wait_data116, ptr noundef nonnull %__wq_entry111) #10
  br label %if.end152

if.end152:                                        ; preds = %for.end148, %if.end140.if.end152_crit_edge
  %__ret112.2386 = phi i32 [ %__ret112.1.lcssa, %for.end148 ], [ %call117431, %if.end140.if.end152_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry111) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret112.2386)
  %cmp154 = icmp slt i32 %__ret112.2386, 0
  br i1 %cmp154, label %if.end152.cleanup247_crit_edge, label %if.end157

if.end152.cleanup247_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

if.end157:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret112.2386)
  %tobool158.not = icmp eq i32 %__ret112.2386, 0
  br i1 %tobool158.not, label %do.end162, label %if.end157.if.end179_crit_edge

if.end157.if.end179_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.end162:                                        ; preds = %if.end157
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name165) #13
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %call169 = call fastcc i32 @hdpvr_stop_streaming(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  call void @msleep(i32 noundef 4000) #10
  %call171 = call fastcc i32 @hdpvr_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %do.end162.if.end179_crit_edge, label %do.end162.cleanup247_crit_edge

do.end162.cleanup247_crit_edge:                   ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

do.end162.if.end179_crit_edge:                    ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

if.end179:                                        ; preds = %do.end162.if.end179_crit_edge, %if.end157.if.end179_crit_edge
  %44 = ptrtoint ptr %status70 to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr = load i8, ptr %status70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp182.not = icmp eq i8 %.pr, 3
  br i1 %cmp182.not, label %if.end179.if.end185_crit_edge, label %if.end179.err241_crit_edge

if.end179.err241_crit_edge:                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %err241

if.end179.if.end185_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

if.end185:                                        ; preds = %if.end179.if.end185_crit_edge, %if.end86.if.end185_crit_edge, %while.body.if.end185_crit_edge
  %urb186 = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.0438, i32 0, i32 1
  %45 = ptrtoint ptr %urb186 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %urb186, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 20
  %47 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual_length, align 4
  %pos187 = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.0438, i32 0, i32 3
  %49 = ptrtoint ptr %pos187 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pos187, align 4
  %sub = sub i32 %48, %50
  %51 = call i32 @llvm.umin.i32(i32 %sub, i32 %count.addr.0441)
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 14
  %52 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %53, i32 %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp9.i.i = icmp slt i32 %51, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end185
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.end196_crit_edge, label %if.then27.i.i, !prof !169

land.rhs16.i.i.do.end196_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end196

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %do.end196

if.then.i.i.i:                                    ; preds = %if.end185
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %51, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.70, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer.addr.0442, i32 %51, i32 -1226833920) #15, !srcloc !170
  %asmresult.i.i = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %51) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer.addr.0442, ptr noundef %add.ptr, i32 noundef %51) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %51, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %51, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool192.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool192.not, label %if.end205, label %copy_to_user.exit.do.end196_crit_edge

copy_to_user.exit.do.end196_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end196

do.end196:                                        ; preds = %copy_to_user.exit.do.end196_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end196_crit_edge
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name165) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0436)
  %tobool202.not = icmp eq i32 %ret.0436, 0
  %spec.select409 = select i1 %tobool202.not, i32 -14, i32 %ret.0436
  br label %cleanup247

if.end205:                                        ; preds = %copy_to_user.exit
  %55 = ptrtoint ptr %pos187 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pos187, align 4
  %add = add i32 %56, %51
  store i32 %add, ptr %pos187, align 4
  %sub207 = sub i32 %count.addr.0441, %51
  %add.ptr208 = getelementptr i8, ptr %buffer.addr.0442, i32 %51
  %add209 = add i32 %51, %ret.0436
  %57 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %58)
  %cmp212 = icmp eq i32 %add, %58
  br i1 %cmp212, label %if.then214, label %if.end205.if.end240_crit_edge

if.end205.if.end240_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then214:                                       ; preds = %if.end205
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %59 = ptrtoint ptr %pos187 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pos187, align 4
  %60 = ptrtoint ptr %status70 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %status70, align 4
  %call.i.i349 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %buf.0438) #10
  br i1 %call.i.i349, label %if.end.i.i350, label %if.then214.__list_del_entry.exit.i_crit_edge

if.then214.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i350:                                    ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0438, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %buf.0438 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf.0438, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i350, %if.then214.__list_del_entry.exit.i_crit_edge
  %67 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i351 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %buf.0438, ptr noundef %68, ptr noundef %free_buff_list218) #10
  br i1 %call.i.i.i351, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %buf.0438, ptr %prev.i2.i, align 4
  %70 = ptrtoint ptr %buf.0438 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %free_buff_list218, ptr %buf.0438, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %buf.0438, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %buf.0438, ptr %68, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %73 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp220 = icmp sgt i32 %73, 1
  br i1 %cmp220, label %list_move_tail.exit.for.cond.i357_crit_edge, label %list_move_tail.exit.do.end237_crit_edge

list_move_tail.exit.do.end237_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end237

list_move_tail.exit.for.cond.i357_crit_edge:      ; preds = %list_move_tail.exit
  br label %for.cond.i357

for.cond.i357:                                    ; preds = %for.cond.i357.for.cond.i357_crit_edge, %list_move_tail.exit.for.cond.i357_crit_edge
  %tmp.0.in.i352 = phi ptr [ %tmp.0.i354, %for.cond.i357.for.cond.i357_crit_edge ], [ %free_buff_list218, %list_move_tail.exit.for.cond.i357_crit_edge ]
  %count.0.i353 = phi i32 [ %inc.i356, %for.cond.i357.for.cond.i357_crit_edge ], [ 0, %list_move_tail.exit.for.cond.i357_crit_edge ]
  %74 = ptrtoint ptr %tmp.0.in.i352 to i32
  call void @__asan_load4_noabort(i32 %74)
  %tmp.0.i354 = load ptr, ptr %tmp.0.in.i352, align 4
  %cmp.i.not.i355 = icmp eq ptr %tmp.0.i354, %free_buff_list218
  %inc.i356 = add i32 %count.0.i353, 1
  br i1 %cmp.i.not.i355, label %for.cond.i357.for.cond.i364_crit_edge, label %for.cond.i357.for.cond.i357_crit_edge

for.cond.i357.for.cond.i357_crit_edge:            ; preds = %for.cond.i357
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i357

for.cond.i357.for.cond.i364_crit_edge:            ; preds = %for.cond.i357
  br label %for.cond.i364

for.cond.i364:                                    ; preds = %for.cond.i364.for.cond.i364_crit_edge, %for.cond.i357.for.cond.i364_crit_edge
  %tmp.0.in.i359 = phi ptr [ %tmp.0.i361, %for.cond.i364.for.cond.i364_crit_edge ], [ %rec_buff_list.i, %for.cond.i357.for.cond.i364_crit_edge ]
  %count.0.i360 = phi i32 [ %inc.i363, %for.cond.i364.for.cond.i364_crit_edge ], [ 0, %for.cond.i357.for.cond.i364_crit_edge ]
  %75 = ptrtoint ptr %tmp.0.in.i359 to i32
  call void @__asan_load4_noabort(i32 %75)
  %tmp.0.i361 = load ptr, ptr %tmp.0.in.i359, align 4
  %cmp.i.not.i362 = icmp eq ptr %tmp.0.i361, %rec_buff_list.i
  %inc.i363 = add i32 %count.0.i360, 1
  br i1 %cmp.i.not.i362, label %list_size.exit365, label %for.cond.i364.for.cond.i364_crit_edge

for.cond.i364.for.cond.i364_crit_edge:            ; preds = %for.cond.i364
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i364

list_size.exit365:                                ; preds = %for.cond.i364
  call void @__sanitizer_cov_trace_pc() #12
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name165, ptr noundef nonnull @.str.21, i32 noundef 512, i32 noundef %count.0.i353, i32 noundef %count.0.i360) #13
  br label %do.end237

do.end237:                                        ; preds = %list_size.exit365, %list_move_tail.exit.do.end237_crit_edge
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  call void @__wake_up(ptr noundef %wait_buffer, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %76 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %rec_buff_list.i, align 4
  %cmp.i.not.i368 = icmp eq ptr %77, %rec_buff_list.i
  call void @mutex_unlock(ptr noundef %io_mutex) #10
  %..i369 = select i1 %cmp.i.not.i368, ptr null, ptr %77
  br label %if.end240

if.end240:                                        ; preds = %do.end237, %if.end205.if.end240_crit_edge
  %buf.1 = phi ptr [ %..i369, %do.end237 ], [ %buf.0438, %if.end205.if.end240_crit_edge ]
  %cmp67.not = icmp eq i32 %sub207, 0
  br i1 %cmp67.not, label %if.end240.err241_crit_edge, label %if.end240.land.rhs_crit_edge

if.end240.land.rhs_crit_edge:                     ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end240.err241_crit_edge:                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %err241

err241:                                           ; preds = %if.end240.err241_crit_edge, %if.end179.err241_crit_edge, %land.lhs.true.err241_crit_edge, %land.rhs.err241_crit_edge
  %ret.0.lcssa = phi i32 [ %add209, %if.end240.err241_crit_edge ], [ %ret.0436, %if.end179.err241_crit_edge ], [ %ret.0436, %land.rhs.err241_crit_edge ], [ %ret.0436, %land.lhs.true.err241_crit_edge ]
  %buf.2 = phi ptr [ %buf.1, %if.end240.err241_crit_edge ], [ %buf.0438, %if.end179.err241_crit_edge ], [ null, %land.rhs.err241_crit_edge ], [ %buf.0438, %land.lhs.true.err241_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool242.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool242.not, label %err241.land.lhs.true243_crit_edge, label %err241.cleanup247_crit_edge

err241.cleanup247_crit_edge:                      ; preds = %err241
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup247

err241.land.lhs.true243_crit_edge:                ; preds = %err241
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true243

land.lhs.true243:                                 ; preds = %err241.land.lhs.true243_crit_edge, %if.end65.land.lhs.true243_crit_edge
  %buf.2467 = phi ptr [ %buf.2, %err241.land.lhs.true243_crit_edge ], [ %..i, %if.end65.land.lhs.true243_crit_edge ]
  %tobool244.not = icmp eq ptr %buf.2467, null
  %spec.select = select i1 %tobool244.not, i32 -11, i32 0
  br label %cleanup247

cleanup247:                                       ; preds = %land.lhs.true243, %err241.cleanup247_crit_edge, %do.end196, %do.end162.cleanup247_crit_edge, %if.end152.cleanup247_crit_edge, %if.then82, %if.end60, %do.end13, %entry.cleanup247_crit_edge
  %retval.0 = phi i32 [ -29, %entry.cleanup247_crit_edge ], [ -512, %if.end60 ], [ %ret.0.lcssa, %err241.cleanup247_crit_edge ], [ %spec.select, %land.lhs.true243 ], [ -5, %do.end13 ], [ %spec.store.select, %if.then82 ], [ %spec.select409, %do.end196 ], [ %__ret112.2386, %if.end152.cleanup247_crit_edge ], [ %call171, %do.end162.cleanup247_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_requested_events.exit_crit_edge, label %cond.true.i

entry.poll_requested_events.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_requested_events.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %0 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_key.i, align 4
  %phi.bo = and i32 %1, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br label %poll_requested_events.exit

poll_requested_events.exit:                       ; preds = %cond.true.i, %entry.poll_requested_events.exit_crit_edge
  %cond.i = phi i1 [ %phi.cmp, %cond.true.i ], [ false, %entry.poll_requested_events.exit_crit_edge ]
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2 = tail call i32 @v4l2_ctrl_poll(ptr noundef %filp, ptr noundef %wait) #10
  br i1 %cond.i, label %poll_requested_events.exit.cleanup_crit_edge, label %if.end

poll_requested_events.exit.cleanup_crit_edge:     ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %poll_requested_events.exit
  %io_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @hdpvr_start_streaming(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %6 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp8 = icmp sgt i32 %6, 1
  br i1 %cmp8, label %do.end, label %do.body.do.end15_crit_edge

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 3, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %status, align 1
  br label %do.body18

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %owner = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %owner, align 8
  br label %do.body18

do.body18:                                        ; preds = %if.else, %do.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %11 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp19 = icmp sgt i32 %11, 1
  br i1 %cmp19, label %do.end24, label %do.body18.if.end35_crit_edge

do.body18.if.end35_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end24:                                         ; preds = %do.body18
  %free_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %do.end24
  %tmp.0.in.i = phi ptr [ %free_buff_list, %do.end24 ], [ %tmp.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %count.0.i = phi i32 [ 0, %do.end24 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %free_buff_list
  %inc.i = add i32 %count.0.i, 1
  br i1 %cmp.i.not.i, label %list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

list_size.exit:                                   ; preds = %for.cond.i
  %rec_buff_list = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 16
  br label %for.cond.i83

for.cond.i83:                                     ; preds = %for.cond.i83.for.cond.i83_crit_edge, %list_size.exit
  %tmp.0.in.i78 = phi ptr [ %rec_buff_list, %list_size.exit ], [ %tmp.0.i80, %for.cond.i83.for.cond.i83_crit_edge ]
  %count.0.i79 = phi i32 [ 0, %list_size.exit ], [ %inc.i82, %for.cond.i83.for.cond.i83_crit_edge ]
  %13 = ptrtoint ptr %tmp.0.in.i78 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0.i80 = load ptr, ptr %tmp.0.in.i78, align 4
  %cmp.i.not.i81 = icmp eq ptr %tmp.0.i80, %rec_buff_list
  %inc.i82 = add i32 %count.0.i79, 1
  br i1 %cmp.i.not.i81, label %list_size.exit84, label %for.cond.i83.for.cond.i83_crit_edge

for.cond.i83.for.cond.i83_crit_edge:              ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i83

list_size.exit84:                                 ; preds = %for.cond.i83
  call void @__sanitizer_cov_trace_pc() #12
  %name27 = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 3, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name27, ptr noundef nonnull @.str.71, i32 noundef 548, i32 noundef %count.0.i, i32 noundef %count.0.i79) #13
  br label %if.end35

if.end35:                                         ; preds = %list_size.exit84, %do.body18.if.end35_crit_edge, %if.end.if.end35_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %rec_buff_list.i = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %rec_buff_list.i, align 4
  %cmp.i.not.i85 = icmp eq ptr %15, %rec_buff_list.i
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  %tobool38.not97 = icmp eq ptr %15, null
  %tobool38.not = or i1 %cmp.i.not.i85, %tobool38.not97
  br i1 %tobool38.not, label %if.end35.if.then43_crit_edge, label %lor.lhs.false

if.end35.if.then43_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end35
  %status39 = getelementptr inbounds %struct.hdpvr_buffer, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %status39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp41.not = icmp eq i8 %17, 3
  br i1 %cmp41.not, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end35.if.then43_crit_edge
  %wait_data = getelementptr inbounds %struct.hdpvr_device, ptr %3, i32 0, i32 18
  br i1 %tobool.not.i, label %if.then43.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then43.poll_wait.exit_crit_edge:               ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then43
  %18 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  %tobool3.not.i = icmp eq ptr %wait_data, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef %filp, ptr noundef nonnull %wait_data, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then43.poll_wait.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %20 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %rec_buff_list.i, align 4
  %cmp.i.not.i89 = icmp eq ptr %21, %rec_buff_list.i
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  %tobool46.not = icmp eq ptr %21, null
  %or.cond = or i1 %cmp.i.not.i89, %tobool46.not
  br i1 %or.cond, label %poll_wait.exit.cleanup_crit_edge, label %poll_wait.exit.land.lhs.true_crit_edge

poll_wait.exit.land.lhs.true_crit_edge:           ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %poll_wait.exit.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge
  %buf.096 = phi ptr [ %15, %lor.lhs.false.land.lhs.true_crit_edge ], [ %21, %poll_wait.exit.land.lhs.true_crit_edge ]
  %status47 = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.096, i32 0, i32 4
  %22 = ptrtoint ptr %status47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp49 = icmp eq i8 %23, 3
  %or = or i32 %call2, 65
  %spec.select = select i1 %cmp49, i32 %or, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %poll_wait.exit.cleanup_crit_edge, %poll_requested_events.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %poll_requested_events.exit.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ], [ %call2, %poll_wait.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 196) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %legacy_mode, align 8
  %call2 = tail call ptr @video_devdata(ptr noundef %file) #10
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call2) #10
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdpvr_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %io_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %owner = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 8
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @hdpvr_stop_streaming(ptr noundef %1)
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %owner, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  %call4 = tail call i32 @v4l2_fh_release(ptr noundef %file) #10
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdpvr_start_streaming(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %vidinf = alloca %struct.hdpvr_video_info, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %vidinf) #10
  %0 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vidinf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vidinf, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vidinf, i32 0, i32 3
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 9
  %3 = call ptr @memset(ptr %vidinf, i32 255, i32 6)
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %5, label %if.then6 [
    i8 4, label %entry.cleanup_crit_edge
    i8 1, label %if.end7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call = call i32 @get_video_info(ptr noundef %dev, ptr noundef nonnull %vidinf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then12, label %do.body23

if.then12:                                        ; preds = %if.end11
  call void @msleep(i32 noundef 250) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %9 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp sgt i32 %9, 0
  br i1 %cmp13, label %do.end, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %video_input, align 1
  %conv17 = zext i8 %11 to i32
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %conv17) #13
  br label %cleanup

do.body23:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %12 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp24 = icmp sgt i32 %12, 1
  br i1 %cmp24, label %do.end29, label %do.body23.do.end40_crit_edge

do.body23.do.end40_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %name32 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %vidinf to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vidinf, align 2
  %conv34 = zext i16 %14 to i32
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %0, align 2
  %conv35 = zext i16 %16 to i32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 2
  %conv36 = zext i8 %18 to i32
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name32, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv36) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end29, %do.body23.do.end40_crit_edge
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i = shl i32 %22, 8
  %or = or i32 %shl.i, -2147483648
  %call43 = call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or, i8 noundef zeroext -72, i8 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 8000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %23 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp45 = icmp sgt i32 %23, 1
  br i1 %cmp45, label %do.end50, label %do.end40.do.end58_crit_edge

do.end40.do.end58_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

do.end50:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %name53 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name53, i32 noundef %call43) #13
  br label %do.end58

do.end58:                                         ; preds = %do.end50, %do.end40.do.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp59 = icmp slt i32 %call43, 0
  br i1 %cmp59, label %do.end58.cleanup_crit_edge, label %if.end62

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %do.end58
  %call63 = call i32 @hdpvr_config_call(ptr noundef %dev, i32 noundef 1792, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %status, align 1
  %worker = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 19
  call void @__init_work(ptr noundef %worker, i32 noundef 0) #10
  %25 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %worker, align 4
  %lockdep_map = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 19, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.41, ptr noundef nonnull @hdpvr_start_streaming.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry72 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 19, i32 1
  %26 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 19, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry72, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 19, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hdpvr_transmit_buffers, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %worker) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %30 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp79 = icmp sgt i32 %30, 1
  br i1 %cmp79, label %do.end84, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end84:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %name87 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name87) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end58.cleanup_crit_edge, %do.end, %if.then12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end7.cleanup_crit_edge ], [ -11, %do.end ], [ -11, %if.then12.cleanup_crit_edge ], [ %call43, %do.end58.cleanup_crit_edge ], [ %call63, %if.end62.cleanup_crit_edge ], [ 0, %do.end84 ], [ 0, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %vidinf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdpvr_stop_streaming(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #10
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_length, align 4, !annotation !172
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %status, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %2, label %if.then6 [
    i8 1, label %entry.cleanup_crit_edge
    i8 4, label %if.end7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %bulk_in_size = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bulk_in_size, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end7.if.end10_crit_edge
  %retval.1.i84 = phi ptr [ null, %do.end ], [ %call9.i, %if.end7.if.end10_crit_edge ]
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %status, align 1
  %call12 = tail call i32 @hdpvr_config_call(ptr noundef %dev, i32 noundef 2048, i8 noundef zeroext 0) #10
  %io_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  %wait_buffer = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %wait_buffer, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  tail call void @msleep(i32 noundef 50) #10
  %worker = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 19
  %call13 = tail call zeroext i1 @flush_work(ptr noundef %worker) #10
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %rec_buff_list.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 16
  %7 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %buf.014.i = load ptr, ptr %rec_buff_list.i, align 4
  %cmp.not15.i = icmp eq ptr %buf.014.i, %rec_buff_list.i
  br i1 %cmp.not15.i, label %if.end10.for.end.i_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.for.end.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %buf.016.i = phi ptr [ %buf.0.i, %for.body.i.for.body.i_crit_edge ], [ %buf.014.i, %if.end10.for.body.i_crit_edge ]
  %urb.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.016.i, i32 0, i32 1
  %8 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %status.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %buf.016.i, i32 0, i32 4
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %status.i, align 4
  %11 = ptrtoint ptr %buf.016.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %buf.0.i = load ptr, ptr %buf.016.i, align 4
  %cmp.not.i = icmp eq ptr %buf.0.i, %rec_buff_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end10.for.end.i_crit_edge
  %prev.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %14 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %rec_buff_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %15, %rec_buff_list.i
  br i1 %cmp.i.not.i.i, label %for.end.i.hdpvr_cancel_queue.exit_crit_edge, label %if.then.i.i

for.end.i.hdpvr_cancel_queue.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdpvr_cancel_queue.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %13, ptr %prev3.i.i.i, align 4
  store ptr %15, ptr %13, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i.i, align 4
  %23 = ptrtoint ptr %rec_buff_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %rec_buff_list.i, ptr %rec_buff_list.i, align 4
  store ptr %rec_buff_list.i, ptr %prev2.i.i.i, align 4
  br label %hdpvr_cancel_queue.exit

hdpvr_cancel_queue.exit:                          ; preds = %if.then.i.i, %for.end.i.hdpvr_cancel_queue.exit_crit_edge
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 2
  br i1 %tobool.not, label %hdpvr_cancel_queue.exit.while.end_crit_edge, label %land.lhs.true.lr.ph

hdpvr_cancel_queue.exit.while.end_crit_edge:      ; preds = %hdpvr_cancel_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %hdpvr_cancel_queue.exit
  %bulk_in_endpointAddr = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 8
  %name35 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.backedge.land.rhs_crit_edge, %land.lhs.true.lr.ph
  %inc90 = phi i32 [ 1, %land.lhs.true.lr.ph ], [ %inc, %land.lhs.true.backedge.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 8
  %26 = ptrtoint ptr %bulk_in_endpointAddr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bulk_in_endpointAddr, align 4
  %conv20 = zext i8 %27 to i32
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 8
  %shl.i = shl i32 %29, 8
  %shl1.i = shl nuw nsw i32 %conv20, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or22 = or i32 %or.i, -1073741696
  %30 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bulk_in_size, align 8
  %call24 = call i32 @usb_bulk_msg(ptr noundef %25, i32 noundef %or22, ptr noundef nonnull %retval.1.i84, i32 noundef %31, ptr noundef nonnull %actual_length, i32 noundef 90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body26, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body26:                                        ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %32 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp27 = icmp sgt i32 %32, 1
  br i1 %cmp27, label %do.end32, label %do.body26.land.lhs.true.backedge_crit_edge

do.body26.land.lhs.true.backedge_crit_edge:       ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.backedge

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual_length, align 4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name35, i32 noundef %inc90, i32 noundef %34) #13
  br label %land.lhs.true.backedge

land.lhs.true.backedge:                           ; preds = %do.end32, %do.body26.land.lhs.true.backedge_crit_edge
  %inc = add nuw nsw i32 %inc90, 1
  %exitcond.not = icmp eq i32 %inc90, 499
  br i1 %exitcond.not, label %land.lhs.true.backedge.while.end_crit_edge, label %land.lhs.true.backedge.land.rhs_crit_edge

land.lhs.true.backedge.land.rhs_crit_edge:        ; preds = %land.lhs.true.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.lhs.true.backedge.while.end_crit_edge:       ; preds = %land.lhs.true.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %land.lhs.true.backedge.while.end_crit_edge, %land.rhs.while.end_crit_edge, %hdpvr_cancel_queue.exit.while.end_crit_edge
  %c.1 = phi i32 [ 0, %hdpvr_cancel_queue.exit.while.end_crit_edge ], [ 500, %land.lhs.true.backedge.while.end_crit_edge ], [ %inc90, %land.rhs.while.end_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i84) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %35 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp42 = icmp sgt i32 %35, 1
  br i1 %cmp42, label %do.end47, label %while.end.do.end55_crit_edge

while.end.do.end55_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

do.end47:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %name50 = getelementptr inbounds %struct.hdpvr_device, ptr %dev, i32 0, i32 3, i32 4
  %sub = add nsw i32 %c.1, -1
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name50, i32 noundef %sub) #13
  br label %do.end55

do.end55:                                         ; preds = %do.end47, %while.end.do.end55_crit_edge
  call void @msleep(i32 noundef 10) #10
  %36 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %status, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then6 ], [ 0, %do.end55 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_video_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdpvr_transmit_buffers(ptr noundef %work) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr i8, ptr %work, i32 -383
  %io_mutex.i = getelementptr i8, ptr %work, i32 -212
  %free_buff_list.i = getelementptr i8, ptr %work, i32 -120
  %rec_buff_list.i = getelementptr i8, ptr %work, i32 -112
  %prev.i2.i.i = getelementptr i8, ptr %work, i32 -108
  %name19.i = getelementptr i8, ptr %work, i32 -476
  %wait_buffer = getelementptr i8, ptr %work, i32 -104
  br label %while.cond

while.cond:                                       ; preds = %if.end34.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %while.body, label %do.body39

while.body:                                       ; preds = %while.cond
  call void @mutex_lock_nested(ptr noundef %io_mutex.i, i32 noundef 0) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp75.i = icmp eq i8 %3, 4
  br i1 %cmp75.i, label %while.body.land.rhs.i_crit_edge, label %while.body.do.body28.i_crit_edge

while.body.do.body28.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

while.body.land.rhs.i_crit_edge:                  ; preds = %while.body
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %list_move_tail.exit.i.land.rhs.i_crit_edge, %while.body.land.rhs.i_crit_edge
  %4 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %free_buff_list.i
  br i1 %cmp.i.not.i, label %land.rhs.i.do.body28.i_crit_edge, label %while.body.i

land.rhs.i.do.body28.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

while.body.i:                                     ; preds = %land.rhs.i
  %status3.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %status3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5.not.i = icmp eq i8 %7, 1
  br i1 %cmp5.not.i, label %if.end.i, label %while.body.i.do.end.i_crit_edge

while.body.i.do.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %while.body.2.i.do.end.i_crit_edge, %while.body.1.i.do.end.i_crit_edge, %while.body.i.do.end.i_crit_edge
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name19.i) #13
  br label %do.body28.i

if.end.i:                                         ; preds = %while.body.i
  %urb9.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %urb9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb9.i, align 4
  %status10.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %status10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status10.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %actual_length.i, align 4
  %call11.i = call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end26.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name19.i, ptr noundef nonnull @.str.54, i32 noundef %call11.i) #13
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp75.1.i = icmp eq i8 %13, 4
  br i1 %cmp75.1.i, label %land.rhs.1.i.preheader, label %do.end16.i.do.body28.i_crit_edge

do.end16.i.do.body28.i_crit_edge:                 ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

land.rhs.1.i.preheader:                           ; preds = %do.end16.i
  %14 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i.not.1.i105 = icmp eq ptr %15, %free_buff_list.i
  br i1 %cmp.i.not.1.i105, label %land.rhs.1.i.preheader.do.body28.i_crit_edge, label %land.rhs.1.i.preheader.while.body.1.i_crit_edge

land.rhs.1.i.preheader.while.body.1.i_crit_edge:  ; preds = %land.rhs.1.i.preheader
  br label %while.body.1.i

land.rhs.1.i.preheader.do.body28.i_crit_edge:     ; preds = %land.rhs.1.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

land.rhs.1.i:                                     ; preds = %list_move_tail.exit.1.i
  %16 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %17, %free_buff_list.i
  br i1 %cmp.i.not.1.i, label %land.rhs.1.i.do.body28.i_crit_edge, label %land.rhs.1.i.while.body.1.i_crit_edge

land.rhs.1.i.while.body.1.i_crit_edge:            ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.1.i

land.rhs.1.i.do.body28.i_crit_edge:               ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

while.body.1.i:                                   ; preds = %land.rhs.1.i.while.body.1.i_crit_edge, %land.rhs.1.i.preheader.while.body.1.i_crit_edge
  %18 = phi ptr [ %17, %land.rhs.1.i.while.body.1.i_crit_edge ], [ %15, %land.rhs.1.i.preheader.while.body.1.i_crit_edge ]
  %status3.1.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %status3.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status3.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp5.not.1.i = icmp eq i8 %20, 1
  br i1 %cmp5.not.1.i, label %if.end.1.i, label %while.body.1.i.do.end.i_crit_edge

while.body.1.i.do.end.i_crit_edge:                ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.1.i:                                       ; preds = %while.body.1.i
  %urb9.1.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %urb9.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %urb9.1.i, align 4
  %status10.1.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %status10.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %status10.1.i, align 4
  %actual_length.1.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 20
  %24 = ptrtoint ptr %actual_length.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %actual_length.1.i, align 4
  %call11.1.i = call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1.i)
  %tobool12.not.1.i = icmp eq i32 %call11.1.i, 0
  br i1 %tobool12.not.1.i, label %if.end26.1.i, label %do.end16.1.i

do.end16.1.i:                                     ; preds = %if.end.1.i
  %call21.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name19.i, ptr noundef nonnull @.str.54, i32 noundef %call11.1.i) #13
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp75.2.i = icmp eq i8 %26, 4
  br i1 %cmp75.2.i, label %land.rhs.2.i.preheader, label %do.end16.1.i.do.body28.i_crit_edge

do.end16.1.i.do.body28.i_crit_edge:               ; preds = %do.end16.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

land.rhs.2.i.preheader:                           ; preds = %do.end16.1.i
  %27 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i.not.2.i107 = icmp eq ptr %28, %free_buff_list.i
  br i1 %cmp.i.not.2.i107, label %land.rhs.2.i.preheader.do.body28.i_crit_edge, label %land.rhs.2.i.preheader.while.body.2.i_crit_edge

land.rhs.2.i.preheader.while.body.2.i_crit_edge:  ; preds = %land.rhs.2.i.preheader
  br label %while.body.2.i

land.rhs.2.i.preheader.do.body28.i_crit_edge:     ; preds = %land.rhs.2.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

if.end26.1.i:                                     ; preds = %if.end.1.i
  %29 = ptrtoint ptr %status3.1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %status3.1.i, align 4
  %call.i.i.1.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #10
  br i1 %call.i.i.1.i, label %if.end.i.i.1.i, label %if.end26.1.i.__list_del_entry.exit.i.1.i_crit_edge

if.end26.1.i.__list_del_entry.exit.i.1.i_crit_edge: ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.1.i

if.end.i.i.1.i:                                   ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.1.i, align 4
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %18, align 4
  %prev1.i.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.1.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i.1.i

__list_del_entry.exit.i.1.i:                      ; preds = %if.end.i.i.1.i, %if.end26.1.i.__list_del_entry.exit.i.1.i_crit_edge
  %36 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef %37, ptr noundef %rec_buff_list.i) #10
  br i1 %call.i.i.i.1.i, label %if.end.i.i.i.1.i, label %__list_del_entry.exit.i.1.i.list_move_tail.exit.1.i_crit_edge

__list_del_entry.exit.i.1.i.list_move_tail.exit.1.i_crit_edge: ; preds = %__list_del_entry.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.1.i

if.end.i.i.i.1.i:                                 ; preds = %__list_del_entry.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %18, ptr %prev.i2.i.i, align 4
  %39 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rec_buff_list.i, ptr %18, align 4
  %prev3.i.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i.1.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %18, ptr %37, align 4
  br label %list_move_tail.exit.1.i

list_move_tail.exit.1.i:                          ; preds = %if.end.i.i.i.1.i, %__list_del_entry.exit.i.1.i.list_move_tail.exit.1.i_crit_edge
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp.1.i = icmp eq i8 %43, 4
  br i1 %cmp.1.i, label %land.rhs.1.i, label %list_move_tail.exit.1.i.do.body28.i_crit_edge

list_move_tail.exit.1.i.do.body28.i_crit_edge:    ; preds = %list_move_tail.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

land.rhs.2.i:                                     ; preds = %list_move_tail.exit.2.i
  %44 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %45, %free_buff_list.i
  br i1 %cmp.i.not.2.i, label %land.rhs.2.i.do.body28.i_crit_edge, label %land.rhs.2.i.while.body.2.i_crit_edge

land.rhs.2.i.while.body.2.i_crit_edge:            ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.2.i

land.rhs.2.i.do.body28.i_crit_edge:               ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

while.body.2.i:                                   ; preds = %land.rhs.2.i.while.body.2.i_crit_edge, %land.rhs.2.i.preheader.while.body.2.i_crit_edge
  %46 = phi ptr [ %45, %land.rhs.2.i.while.body.2.i_crit_edge ], [ %28, %land.rhs.2.i.preheader.while.body.2.i_crit_edge ]
  %status3.2.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %status3.2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %status3.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp5.not.2.i = icmp eq i8 %48, 1
  br i1 %cmp5.not.2.i, label %if.end.2.i, label %while.body.2.i.do.end.i_crit_edge

while.body.2.i.do.end.i_crit_edge:                ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.2.i:                                       ; preds = %while.body.2.i
  %urb9.2.i = getelementptr inbounds %struct.hdpvr_buffer, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %urb9.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urb9.2.i, align 4
  %status10.2.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %status10.2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %status10.2.i, align 4
  %actual_length.2.i = getelementptr inbounds %struct.urb, ptr %50, i32 0, i32 20
  %52 = ptrtoint ptr %actual_length.2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %actual_length.2.i, align 4
  %call11.2.i = call i32 @usb_submit_urb(ptr noundef %50, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2.i)
  %tobool12.not.2.i = icmp eq i32 %call11.2.i, 0
  br i1 %tobool12.not.2.i, label %if.end26.2.i, label %do.end16.2.i

do.end16.2.i:                                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name19.i, ptr noundef nonnull @.str.54, i32 noundef %call11.2.i) #13
  br label %do.body28.i

if.end26.2.i:                                     ; preds = %if.end.2.i
  %53 = ptrtoint ptr %status3.2.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %status3.2.i, align 4
  %call.i.i.2.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #10
  br i1 %call.i.i.2.i, label %if.end.i.i.2.i, label %if.end26.2.i.__list_del_entry.exit.i.2.i_crit_edge

if.end26.2.i.__list_del_entry.exit.i.2.i_crit_edge: ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.2.i

if.end.i.i.2.i:                                   ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.2.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.2.i, align 4
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %46, align 4
  %prev1.i.i.i.2.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.2.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %__list_del_entry.exit.i.2.i

__list_del_entry.exit.i.2.i:                      ; preds = %if.end.i.i.2.i, %if.end26.2.i.__list_del_entry.exit.i.2.i_crit_edge
  %60 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.2.i = call zeroext i1 @__list_add_valid(ptr noundef %46, ptr noundef %61, ptr noundef %rec_buff_list.i) #10
  br i1 %call.i.i.i.2.i, label %if.end.i.i.i.2.i, label %__list_del_entry.exit.i.2.i.list_move_tail.exit.2.i_crit_edge

__list_del_entry.exit.i.2.i.list_move_tail.exit.2.i_crit_edge: ; preds = %__list_del_entry.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.2.i

if.end.i.i.i.2.i:                                 ; preds = %__list_del_entry.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %46, ptr %prev.i2.i.i, align 4
  %63 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %rec_buff_list.i, ptr %46, align 4
  %prev3.i.i.i.2.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i.i.2.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %46, ptr %61, align 4
  br label %list_move_tail.exit.2.i

list_move_tail.exit.2.i:                          ; preds = %if.end.i.i.i.2.i, %__list_del_entry.exit.i.2.i.list_move_tail.exit.2.i_crit_edge
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %67)
  %cmp.2.i = icmp eq i8 %67, 4
  br i1 %cmp.2.i, label %land.rhs.2.i, label %list_move_tail.exit.2.i.do.body28.i_crit_edge

list_move_tail.exit.2.i.do.body28.i_crit_edge:    ; preds = %list_move_tail.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

if.end26.i:                                       ; preds = %if.end.i
  %68 = ptrtoint ptr %status3.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 2, ptr %status3.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end26.i.__list_del_entry.exit.i.i_crit_edge

if.end26.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end26.i.__list_del_entry.exit.i.i_crit_edge
  %75 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %76, ptr noundef %rec_buff_list.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %5, ptr %prev.i2.i.i, align 4
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %rec_buff_list.i, ptr %5, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %5, ptr %76, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %81 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %status, align 1
  %cmp.i = icmp eq i8 %82, 4
  br i1 %cmp.i, label %list_move_tail.exit.i.land.rhs.i_crit_edge, label %list_move_tail.exit.i.do.body28.i_crit_edge

list_move_tail.exit.i.do.body28.i_crit_edge:      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

list_move_tail.exit.i.land.rhs.i_crit_edge:       ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

do.body28.i:                                      ; preds = %list_move_tail.exit.i.do.body28.i_crit_edge, %list_move_tail.exit.2.i.do.body28.i_crit_edge, %do.end16.2.i, %land.rhs.2.i.do.body28.i_crit_edge, %list_move_tail.exit.1.i.do.body28.i_crit_edge, %land.rhs.2.i.preheader.do.body28.i_crit_edge, %do.end16.1.i.do.body28.i_crit_edge, %land.rhs.1.i.do.body28.i_crit_edge, %land.rhs.1.i.preheader.do.body28.i_crit_edge, %do.end16.i.do.body28.i_crit_edge, %do.end.i, %land.rhs.i.do.body28.i_crit_edge, %while.body.do.body28.i_crit_edge
  %tobool.not = phi i1 [ false, %land.rhs.1.i.preheader.do.body28.i_crit_edge ], [ false, %land.rhs.2.i.preheader.do.body28.i_crit_edge ], [ false, %do.end16.2.i ], [ false, %do.end16.1.i.do.body28.i_crit_edge ], [ false, %do.end16.i.do.body28.i_crit_edge ], [ false, %do.end.i ], [ true, %while.body.do.body28.i_crit_edge ], [ true, %list_move_tail.exit.2.i.do.body28.i_crit_edge ], [ true, %land.rhs.2.i.do.body28.i_crit_edge ], [ true, %list_move_tail.exit.1.i.do.body28.i_crit_edge ], [ true, %land.rhs.1.i.do.body28.i_crit_edge ], [ true, %land.rhs.i.do.body28.i_crit_edge ], [ true, %list_move_tail.exit.i.do.body28.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %83 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp29.i = icmp sgt i32 %83, 1
  br i1 %cmp29.i, label %do.body28.i.for.cond.i.i_crit_edge, label %do.body28.i.hdpvr_submit_buffers.exit_crit_edge

do.body28.i.hdpvr_submit_buffers.exit_crit_edge:  ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hdpvr_submit_buffers.exit

do.body28.i.for.cond.i.i_crit_edge:               ; preds = %do.body28.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %do.body28.i.for.cond.i.i_crit_edge
  %tmp.0.in.i.i = phi ptr [ %tmp.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %free_buff_list.i, %do.body28.i.for.cond.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 0, %do.body28.i.for.cond.i.i_crit_edge ]
  %84 = ptrtoint ptr %tmp.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %tmp.0.i.i = load ptr, ptr %tmp.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp.0.i.i, %free_buff_list.i
  %inc.i.i = add i32 %count.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %for.cond.i.i.for.cond.i70.i_crit_edge, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.cond.i.i.for.cond.i70.i_crit_edge:            ; preds = %for.cond.i.i
  br label %for.cond.i70.i

for.cond.i70.i:                                   ; preds = %for.cond.i70.i.for.cond.i70.i_crit_edge, %for.cond.i.i.for.cond.i70.i_crit_edge
  %tmp.0.in.i65.i = phi ptr [ %tmp.0.i67.i, %for.cond.i70.i.for.cond.i70.i_crit_edge ], [ %rec_buff_list.i, %for.cond.i.i.for.cond.i70.i_crit_edge ]
  %count.0.i66.i = phi i32 [ %inc.i69.i, %for.cond.i70.i.for.cond.i70.i_crit_edge ], [ 0, %for.cond.i.i.for.cond.i70.i_crit_edge ]
  %85 = ptrtoint ptr %tmp.0.in.i65.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %tmp.0.i67.i = load ptr, ptr %tmp.0.in.i65.i, align 4
  %cmp.i.not.i68.i = icmp eq ptr %tmp.0.i67.i, %rec_buff_list.i
  %inc.i69.i = add i32 %count.0.i66.i, 1
  br i1 %cmp.i.not.i68.i, label %list_size.exit71.i, label %for.cond.i70.i.for.cond.i70.i_crit_edge

for.cond.i70.i.for.cond.i70.i_crit_edge:          ; preds = %for.cond.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i70.i

list_size.exit71.i:                               ; preds = %for.cond.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name19.i, ptr noundef nonnull @.str.54, i32 noundef 221, i32 noundef %count.0.i.i, i32 noundef %count.0.i66.i) #13
  br label %hdpvr_submit_buffers.exit

hdpvr_submit_buffers.exit:                        ; preds = %list_size.exit71.i, %do.body28.i.hdpvr_submit_buffers.exit_crit_edge
  call void @mutex_unlock(ptr noundef %io_mutex.i) #10
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %hdpvr_submit_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name19.i) #13
  br label %do.body54

if.end:                                           ; preds = %hdpvr_submit_buffers.exit
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 257) #10
  %86 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i85.not = icmp eq ptr %87, %free_buff_list.i
  br i1 %cmp.i85.not, label %lor.lhs.false, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

lor.lhs.false:                                    ; preds = %if.end
  %88 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %89)
  %cmp14.not = icmp eq i8 %89, 4
  br i1 %cmp14.not, label %if.then16, label %lor.lhs.false.if.end34_crit_edge

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then16:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %90 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call18110 = call i32 @prepare_to_wait_event(ptr noundef %wait_buffer, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %91 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i86.not111 = icmp eq ptr %92, %free_buff_list.i
  br i1 %cmp.i86.not111, label %if.then16.lor.lhs.false22_crit_edge, label %if.then16.for.end_crit_edge

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then16.lor.lhs.false22_crit_edge:              ; preds = %if.then16
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %cleanup.lor.lhs.false22_crit_edge, %if.then16.lor.lhs.false22_crit_edge
  %call18112 = phi i32 [ %call18, %cleanup.lor.lhs.false22_crit_edge ], [ %call18110, %if.then16.lor.lhs.false22_crit_edge ]
  %93 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %94)
  %cmp25.not = icmp eq i8 %94, 4
  br i1 %cmp25.not, label %if.end28, label %lor.lhs.false22.for.end_crit_edge

lor.lhs.false22.for.end_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end28:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18112)
  %tobool29.not = icmp eq i32 %call18112, 0
  br i1 %tobool29.not, label %cleanup, label %if.end28.__out_crit_edge

if.end28.__out_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end28
  call void @schedule() #10
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %wait_buffer, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %95 = ptrtoint ptr %free_buff_list.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %free_buff_list.i, align 4
  %cmp.i86.not = icmp eq ptr %96, %free_buff_list.i
  br i1 %cmp.i86.not, label %cleanup.lor.lhs.false22_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.lor.lhs.false22_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false22

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false22.for.end_crit_edge, %if.then16.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_buffer, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end28.__out_crit_edge
  %__ret17.190 = phi i32 [ 0, %for.end ], [ %call18112, %if.end28.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end34

if.end34:                                         ; preds = %__out, %lor.lhs.false.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %__ret.0 = phi i32 [ 0, %lor.lhs.false.if.end34_crit_edge ], [ %__ret17.190, %__out ], [ 0, %if.end.if.end34_crit_edge ]
  %tobool36.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool36.not, label %if.end34.while.cond_crit_edge, label %if.end34.do.body54_crit_edge

if.end34.do.body54_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

if.end34.while.cond_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body39:                                        ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %97 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp40 = icmp sgt i32 %97, 0
  br i1 %cmp40, label %do.end45, label %do.body39.cleanup70_crit_edge

do.body39.cleanup70_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name19.i) #13
  br label %cleanup70

do.body54:                                        ; preds = %if.end34.do.body54_crit_edge, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %98 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp55 = icmp sgt i32 %98, 0
  br i1 %cmp55, label %do.end60, label %do.body54.do.end68_crit_edge

do.body54.do.end68_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name19.i) #13
  br label %do.end68

do.end68:                                         ; preds = %do.end60, %do.body54.do.end68_crit_edge
  %99 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 5, ptr %status, align 1
  br label %cleanup70

cleanup70:                                        ; preds = %do.end68, %do.end45, %do.body39.cleanup70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdpvr_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.74, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.15, i32 noundef 32) #10
  %udev = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 2
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
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.75, ptr noundef %7, ptr noundef %devpath.i) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %private_data, ptr nocapture noundef %f) #7 align 64 {
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
  store i32 1195724877, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readonly %_fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  %vid_info = alloca %struct.hdpvr_video_info, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %legacy_mode, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %vid_info) #10
  %4 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vid_info, i32 0, i32 1
  %5 = call ptr @memset(ptr %vid_info, i32 255, i32 6)
  %call1 = call i32 @get_video_info(ptr noundef %1, ptr noundef nonnull %vid_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup.thread_crit_edge, label %if.end

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %6 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vid_info, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.cleanup.thread_crit_edge, label %cleanup

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -14, %if.end.cleanup.thread_crit_edge ], [ %call1, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %vid_info) #10
  br label %cleanup33

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %vid_info to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vid_info, align 2
  %conv = zext i16 %10 to i32
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %fmt, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %4, align 2
  %conv7 = zext i16 %13 to i32
  %height9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7, ptr %height9, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %vid_info) #10
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %width10 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %width10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width10, align 8
  %fmt11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %17 = ptrtoint ptr %fmt11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fmt11, align 4
  %height13 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %height13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height13, align 4
  %height15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %cleanup
  %fmt17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1195724877, ptr %pixelformat, align 4
  %bulk_in_size = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %bulk_in_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bulk_in_size, align 8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bytesperline, align 4
  %26 = ptrtoint ptr %fmt17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %27)
  %cmp22 = icmp eq i32 %27, 720
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  br i1 %cmp22, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %field, align 4
  br label %cleanup33

if.else27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %colorspace, align 4
  %field31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %field31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %field31, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %if.else27, %if.then24, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.else27 ], [ 0, %if.then24 ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readonly %_fh, ptr nocapture noundef writeonly %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %legacy_mode, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cur_std = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %cur_std to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cur_std, align 8
  %8 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readonly %_fh, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %legacy_mode, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp3.not = icmp eq i8 %7, 1
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool7.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool7.not, i32 576, i32 480
  %spec.select22 = zext i1 %tobool7.not to i8
  %cur_std = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %cur_std to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %std, ptr %cur_std, align 8
  %width = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 720, ptr %width, align 8
  %height = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %height, align 4
  %call12 = tail call i32 @hdpvr_config_call(ptr noundef %1, i32 noundef 5888, i8 noundef zeroext %spec.select22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end6 ], [ -61, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querystd(ptr noundef %file, ptr nocapture noundef readonly %_fh, ptr nocapture noundef writeonly %a) #0 align 64 {
entry:
  %vid_info = alloca %struct.hdpvr_video_info, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %vid_info) #10
  %2 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vid_info, i32 0, i32 1
  %3 = call ptr @memset(ptr %vid_info, i32 255, i32 6)
  %4 = ptrtoint ptr %a to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %a, align 8
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %7 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %legacy_mode, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, i32 -61, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vid_info, i32 0, i32 3
  %call3 = call i32 @get_video_info(ptr noundef %1, ptr noundef nonnull %vid_info) #10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %vid_info to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid_info, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %13)
  %cmp7 = icmp eq i16 %13, 720
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true9:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %2, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %15, label %land.lhs.true9.cleanup_crit_edge [
    i16 480, label %land.lhs.true9.if.then17_crit_edge
    i16 576, label %land.lhs.true9.if.then17_crit_edge29
  ]

land.lhs.true9.if.then17_crit_edge29:             ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

land.lhs.true9.if.then17_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true9.if.then17_crit_edge, %land.lhs.true9.if.then17_crit_edge29
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %15)
  %cmp20 = icmp eq i16 %15, 480
  %cond22 = select i1 %cmp20, i64 63744, i64 16713471
  %17 = ptrtoint ptr %a to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %cond22, ptr %a, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %call3, %land.lhs.true9.cleanup_crit_edge ], [ %call3, %if.then17 ], [ %call3, %land.lhs.true.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %vid_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %_fh, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %arrayidx = getelementptr [3 x ptr], ptr @iname, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %4, i32 noundef 32) #10
  %audioset = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 3
  %5 = ptrtoint ptr %audioset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %audioset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 7
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %capabilities, align 4
  %cond2 = select i1 %tobool.not, i64 0, i64 16777215
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %7 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %cond2, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %private_data, ptr nocapture noundef writeonly %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %video_input, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %index, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %_fh, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp = icmp ugt i32 %index, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp2.not = icmp eq i8 %3, 1
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = trunc i32 %index to i8
  %conv6 = add nuw nsw i8 %4, 1
  %call7 = tail call i32 @hdpvr_config_call(ptr noundef %1, i32 noundef 5376, i8 noundef zeroext %conv6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %video_input to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %video_input, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enumaudio(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 2
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %capability, align 4
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 1
  %arrayidx = getelementptr [3 x ptr], ptr @audio_iname, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %4, i32 noundef 32) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_audio(ptr noundef %file, ptr nocapture noundef readnone %private_data, ptr noundef %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %audio_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %audio_input to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %audio_input, align 2
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %audio, align 4
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 2
  %5 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %capability, align 4
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %audio, i32 0, i32 1
  %arrayidx = getelementptr [3 x ptr], ptr @audio_iname, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %7, i32 noundef 32) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_audio(ptr noundef %file, ptr nocapture noundef readnone %private_data, ptr nocapture noundef readonly %audio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp2.not = icmp eq i8 %5, 1
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = trunc i32 %3 to i8
  %conv7 = add nuw nsw i8 %6, 1
  %audio_codec = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 7
  %7 = ptrtoint ptr %audio_codec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %audio_codec, align 8
  %call8 = tail call i32 @hdpvr_set_audio(ptr noundef %1, i8 noundef zeroext %conv7, i32 noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audio, align 4
  %conv11 = trunc i32 %10 to i8
  %audio_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %audio_input to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %audio_input, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call8, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_encoder_cmd(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %io_mutex = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %io_mutex, i32 noundef 0) #10
  %flags = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %4, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %owner = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %land.lhs.true

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %9, %7
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp2 = icmp eq i8 %11, 4
  br i1 %cmp2, label %if.end.sw.epilog_crit_edge, label %if.end5

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @hdpvr_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %private_data9 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %12 = ptrtoint ptr %private_data9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data9, align 4
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %owner, align 8
  br label %sw.epilog

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %status, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %owner14 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %owner14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner14, align 8
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %sw.bb13.if.end22_crit_edge, label %land.lhs.true16

sw.bb13.if.end22_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true16:                                  ; preds = %sw.bb13
  %private_data17 = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %18 = ptrtoint ptr %private_data17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data17, align 4
  %cmp19.not = icmp eq ptr %19, %17
  br i1 %cmp19.not, label %land.lhs.true16.if.end22_crit_edge, label %land.lhs.true16.sw.epilog_crit_edge

land.lhs.true16.sw.epilog_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true16.if.end22_crit_edge, %sw.bb13.if.end22_crit_edge
  %status23 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %status23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp25 = icmp eq i8 %21, 1
  br i1 %cmp25, label %if.end22.sw.epilog_crit_edge, label %if.end28

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end28:                                         ; preds = %if.end22
  %call29 = tail call fastcc i32 @hdpvr_stop_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %owner14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner14, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hdpvr_debug to i32))
  %23 = load i32, ptr @hdpvr_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34 = icmp sgt i32 %23, 0
  br i1 %cmp34, label %do.end, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 3, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name, i32 noundef %4) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body.sw.epilog_crit_edge, %if.then31, %if.end28.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge, %land.lhs.true16.sw.epilog_crit_edge, %if.else, %if.then8, %if.end.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge
  %res.0 = phi i32 [ 0, %if.end22.sw.epilog_crit_edge ], [ %call29, %if.end28.sw.epilog_crit_edge ], [ 0, %if.then31 ], [ 0, %if.end.sw.epilog_crit_edge ], [ %call6, %if.else ], [ 0, %if.then8 ], [ -16, %land.lhs.true.sw.epilog_crit_edge ], [ -16, %land.lhs.true16.sw.epilog_crit_edge ], [ -22, %do.end ], [ -22, %do.body.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %io_mutex) #10
  ret i32 %res.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_encoder_cmd(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %a) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.v4l2_encoder_cmd, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %1 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  %. = select i1 %switch, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_dv_timings(ptr noundef %file, ptr nocapture noundef writeonly %_fh, ptr noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %legacy_mode, align 4
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  br i1 %cmp.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %call6 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef nonnull @hdpvr_dv_timings, i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6, label %for.body.preheader.if.end12_crit_edge, label %for.inc

for.body.preheader.if.end12_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc:                                          ; preds = %for.body.preheader
  %call6.1 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds ([8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], ptr @hdpvr_dv_timings, i32 0, i32 1, i32 0), i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6.1, label %for.inc.if.end12_crit_edge, label %for.inc.1

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc.1:                                        ; preds = %for.inc
  %call6.2 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds ([8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], ptr @hdpvr_dv_timings, i32 0, i32 2, i32 0), i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6.2, label %for.inc.1.if.end12_crit_edge, label %for.inc.2

for.inc.1.if.end12_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc.2:                                        ; preds = %for.inc.1
  %call6.3 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds ([8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], ptr @hdpvr_dv_timings, i32 0, i32 3, i32 0), i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6.3, label %for.inc.2.if.end12_crit_edge, label %for.inc.3

for.inc.2.if.end12_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc.3:                                        ; preds = %for.inc.2
  %call6.4 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds ([8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], ptr @hdpvr_dv_timings, i32 0, i32 4, i32 0), i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6.4, label %for.inc.3.if.end12_crit_edge, label %for.inc.4

for.inc.3.if.end12_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc.4:                                        ; preds = %for.inc.3
  %call6.5 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds ([8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], ptr @hdpvr_dv_timings, i32 0, i32 5, i32 0), i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6.5, label %for.inc.4.if.end12_crit_edge, label %for.inc.5

for.inc.4.if.end12_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc.5:                                        ; preds = %for.inc.4
  %call6.6 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds ([8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], ptr @hdpvr_dv_timings, i32 0, i32 6, i32 0), i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6.6, label %for.inc.5.if.end12_crit_edge, label %for.inc.6

for.inc.5.if.end12_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.inc.6:                                        ; preds = %for.inc.5
  %call6.7 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings, ptr noundef getelementptr inbounds ([8 x { i32, { %struct.v4l2_bt_timings, [4 x i8] } }], ptr @hdpvr_dv_timings, i32 0, i32 7, i32 0), i32 noundef 0, i1 noundef zeroext false) #10
  br i1 %call6.7, label %for.inc.6.if.end12_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.6.if.end12_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %for.inc.6.if.end12_crit_edge, %for.inc.5.if.end12_crit_edge, %for.inc.4.if.end12_crit_edge, %for.inc.3.if.end12_crit_edge, %for.inc.2.if.end12_crit_edge, %for.inc.1.if.end12_crit_edge, %for.inc.if.end12_crit_edge, %for.body.preheader.if.end12_crit_edge
  %i.032.lcssa = phi i32 [ 0, %for.body.preheader.if.end12_crit_edge ], [ 1, %for.inc.if.end12_crit_edge ], [ 2, %for.inc.1.if.end12_crit_edge ], [ 3, %for.inc.2.if.end12_crit_edge ], [ 4, %for.inc.3.if.end12_crit_edge ], [ 5, %for.inc.4.if.end12_crit_edge ], [ 6, %for.inc.5.if.end12_crit_edge ], [ 7, %for.inc.6.if.end12_crit_edge ]
  %cur_dv_timings = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 12
  %arrayidx = getelementptr [8 x %struct.v4l2_dv_timings], ptr @hdpvr_dv_timings, i32 0, i32 %i.032.lcssa
  %7 = call ptr @memcpy(ptr %cur_dv_timings, ptr %arrayidx, i32 132)
  %8 = getelementptr [8 x %struct.v4l2_dv_timings], ptr @hdpvr_dv_timings, i32 0, i32 %i.032.lcssa, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %8, align 1
  %width14 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %width14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width14, align 8
  %height = getelementptr inbounds %struct.v4l2_bt_timings, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %height, align 1
  %height16 = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %height16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.inc.6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -61, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_dv_timings(ptr noundef %file, ptr nocapture noundef writeonly %_fh, ptr nocapture noundef writeonly %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %legacy_mode, align 4
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cur_dv_timings = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 12
  %5 = call ptr @memcpy(ptr %timings, ptr %cur_dv_timings, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_query_dv_timings(ptr noundef %file, ptr nocapture noundef writeonly %_fh, ptr nocapture noundef writeonly %timings) #0 align 64 {
entry:
  %vid_info = alloca %struct.hdpvr_video_info, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %vid_info) #10
  %2 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vid_info, i32 0, i32 1
  %3 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vid_info, i32 0, i32 2
  %4 = getelementptr inbounds %struct.hdpvr_video_info, ptr %vid_info, i32 0, i32 3
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %5 = call ptr @memset(ptr %vid_info, i32 255, i32 6)
  %6 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %legacy_mode, align 4
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup57_crit_edge

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end:                                           ; preds = %entry
  %call1 = call i32 @get_video_info(ptr noundef %1, ptr noundef nonnull %vid_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup57_crit_edge

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.end4.cleanup57_crit_edge, label %if.end7

if.end4.cleanup57_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

if.end7:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %12)
  %cmp = icmp ult i8 %12, 31
  %13 = ptrtoint ptr %vid_info to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid_info, align 2
  %conv23 = zext i16 %14 to i32
  %conv34 = zext i1 %cmp to i32
  %conv39 = zext i8 %12 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7
  %i.091 = phi i32 [ 0, %if.end7 ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = getelementptr [8 x %struct.v4l2_dv_timings], ptr @hdpvr_dv_timings, i32 0, i32 %i.091, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %15, align 1
  %hfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %hfrontporch, align 1
  %hsync = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 6
  %20 = ptrtoint ptr %hsync to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %hsync, align 1
  %hbackporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 7
  %22 = ptrtoint ptr %hbackporch to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %hbackporch, align 1
  %add = add i32 %19, %17
  %add12 = add i32 %add, %21
  %add13 = add i32 %add12, %23
  %height = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %height, align 1
  %vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 8
  %26 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %vfrontporch, align 1
  %vsync = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 9
  %28 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %vsync, align 1
  %vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 10
  %30 = ptrtoint ptr %vbackporch to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %vbackporch, align 1
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 11
  %32 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 12
  %34 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 13
  %36 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %il_vbackporch, align 1
  %add14 = add i32 %27, %25
  %add15 = add i32 %add14, %29
  %add16 = add i32 %add15, %31
  %add17 = add i32 %add16, %33
  %add18 = add i32 %add17, %35
  %add19 = add i32 %add18, %37
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 4
  %38 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %pixelclock, align 1
  %conv20 = trunc i64 %39 to i32
  %mul = mul i32 %add19, %add13
  %div = udiv i32 %conv20, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv23)
  %cmp24.not = icmp eq i32 %17, %conv23
  br i1 %cmp24.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %2, align 2
  %conv28 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv28)
  %cmp29.not = icmp eq i32 %25, %conv28
  br i1 %cmp29.not, label %lor.lhs.false31, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %interlaced32 = getelementptr inbounds %struct.v4l2_bt_timings, ptr %15, i32 0, i32 2
  %42 = ptrtoint ptr %interlaced32 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %interlaced32, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv34)
  %cmp35.not = icmp eq i32 %43, %conv34
  br i1 %cmp35.not, label %lor.lhs.false37, label %lor.lhs.false31.for.inc_crit_edge

lor.lhs.false31.for.inc_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv39)
  %cmp40.not = icmp eq i32 %div, %conv39
  %add42 = add i32 %div, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %conv39)
  %cmp45.not = icmp eq i32 %add42, %conv39
  %or.cond = or i1 %cmp40.not, %cmp45.not
  br i1 %or.cond, label %for.end, label %lor.lhs.false37.for.inc_crit_edge

lor.lhs.false37.for.inc_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false37.for.inc_crit_edge, %lor.lhs.false31.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end:                                          ; preds = %lor.lhs.false37
  %arrayidx.le = getelementptr [8 x %struct.v4l2_dv_timings], ptr @hdpvr_dv_timings, i32 0, i32 %i.091
  %44 = call ptr @memcpy(ptr %timings, ptr %arrayidx.le, i32 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.091)
  %cmp53 = icmp eq i32 %i.091, 8
  br i1 %cmp53, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup57_crit_edge

for.end.cleanup57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge
  br label %cleanup57

cleanup57:                                        ; preds = %for.end.thread, %for.end.cleanup57_crit_edge, %if.end4.cleanup57_crit_edge, %if.end.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ -61, %entry.cleanup57_crit_edge ], [ %call1, %if.end.cleanup57_crit_edge ], [ -37, %if.end4.cleanup57_crit_edge ], [ -34, %for.end.thread ], [ 0, %for.end.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %vid_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_dv_timings(ptr noundef %file, ptr nocapture noundef writeonly %_fh, ptr nocapture noundef %timings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %legacy_mode, align 4
  %reserved = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 2
  %3 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %reserved, align 4
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp = icmp ugt i32 %7, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %timings3 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 3
  %arrayidx = getelementptr [8 x %struct.v4l2_dv_timings], ptr @hdpvr_dv_timings, i32 0, i32 %7
  %8 = call ptr @memcpy(ptr %timings3, ptr %arrayidx, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -61, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_dv_timings_cap(ptr noundef %file, ptr nocapture noundef writeonly %_fh, ptr nocapture noundef writeonly %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %legacy_mode = getelementptr inbounds %struct.hdpvr_fh, ptr %_fh, i32 0, i32 1
  %2 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %legacy_mode, align 4
  %video_input = getelementptr inbounds %struct.hdpvr_device, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %video_input to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %video_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cap, align 4
  %6 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 720, ptr %6, align 4
  %max_width = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1920, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 480, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1080, ptr %max_height, align 4
  %min_pixelclock = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3, i32 0, i32 4
  %11 = ptrtoint ptr %min_pixelclock to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 27000000, ptr %min_pixelclock, align 4
  %max_pixelclock = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3, i32 0, i32 5
  %12 = ptrtoint ptr %max_pixelclock to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 74250000, ptr %max_pixelclock, align 4
  %standards = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3, i32 0, i32 6
  %13 = ptrtoint ptr %standards to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %standards, align 4
  %capabilities = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 3, i32 0, i32 7
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %capabilities, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !125, !127, !128, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 140, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hdpvr_alloc_buffers._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hdpvr_alloc_buffers._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 147, i32 4}
!8 = !{ptr @hdpvr_alloc_buffers._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hdpvr_alloc_buffers._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 160, i32 4}
!12 = !{ptr @hdpvr_alloc_buffers._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hdpvr_alloc_buffers._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @hdpvr_register_videodev._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1172, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1224, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hdpvr_register_videodev._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @hdpvr_register_videodev._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1230, i32 3}
!24 = !{ptr @hdpvr_register_videodev._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hdpvr_register_videodev._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1236, i32 31}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1243, i32 3}
!30 = !{ptr @hdpvr_register_videodev._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hdpvr_register_videodev._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @hdpvr_dv_timings, !33, !"hdpvr_dv_timings", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 36, i32 37}
!34 = !{ptr @hdpvr_ctrl_ops, !35, !"hdpvr_ctrl_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1156, i32 35}
!36 = !{ptr @hdpvr_video_template, !37, !"hdpvr_video_template", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1147, i32 34}
!38 = !{ptr @hdpvr_fops, !39, !"hdpvr_fops", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 565, i32 42}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 422, i32 4}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hdpvr_read._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hdpvr_read._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 431, i32 3}
!47 = !{ptr @hdpvr_read._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hdpvr_read._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 464, i32 5}
!51 = !{ptr @hdpvr_read._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hdpvr_read._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 493, i32 4}
!55 = !{ptr @hdpvr_read._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hdpvr_read._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @hdpvr_read._entry.31, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 512, i32 4}
!59 = !{ptr @hdpvr_read._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 287, i32 3}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hdpvr_start_streaming._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hdpvr_start_streaming._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 292, i32 2}
!67 = !{ptr @hdpvr_start_streaming._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hdpvr_start_streaming._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 300, i32 2}
!71 = !{ptr @hdpvr_start_streaming._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @hdpvr_start_streaming._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @hdpvr_start_streaming.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 311, i32 2}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 314, i32 2}
!78 = !{ptr @hdpvr_start_streaming._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @hdpvr_start_streaming._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 252, i32 4}
!82 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @hdpvr_transmit_buffers._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @hdpvr_transmit_buffers._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 261, i32 2}
!87 = !{ptr @hdpvr_transmit_buffers._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @hdpvr_transmit_buffers._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 265, i32 2}
!91 = !{ptr @hdpvr_transmit_buffers._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @hdpvr_transmit_buffers._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 199, i32 4}
!95 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @hdpvr_submit_buffers._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @hdpvr_submit_buffers._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 210, i32 4}
!100 = !{ptr @hdpvr_submit_buffers._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @hdpvr_submit_buffers._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @hdpvr_submit_buffers._entry.58, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 221, i32 2}
!104 = !{ptr @hdpvr_submit_buffers._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 335, i32 3}
!107 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @hdpvr_stop_streaming._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @hdpvr_stop_streaming._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 357, i32 3}
!112 = !{ptr @hdpvr_stop_streaming._entry.62, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @hdpvr_stop_streaming._entry_ptr.64, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 361, i32 2}
!116 = !{ptr @hdpvr_stop_streaming._entry.65, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @hdpvr_stop_streaming._entry_ptr.67, !115, !"_entry_ptr", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!120 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 541, i32 4}
!127 = !{ptr @hdpvr_poll._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @hdpvr_poll._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @hdpvr_poll._entry.72, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 548, i32 3}
!131 = !{ptr @hdpvr_poll._entry_ptr.73, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @hdpvr_ioctl_ops, !133, !"hdpvr_ioctl_ops", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1099, i32 36}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 584, i32 23}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/usb.h", i32 912, i32 31}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 757, i32 22}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 758, i32 22}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 759, i32 22}
!144 = !{ptr @iname, !145, !"iname", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 756, i32 20}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 828, i32 22}
!148 = !{ptr @.str.80, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 827, i32 22}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 829, i32 22}
!152 = !{ptr @audio_iname, !153, !"audio_iname", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 826, i32 20}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/hdpvr/hdpvr-video.c", i32 1076, i32 3}
!156 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @vidioc_encoder_cmd._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @vidioc_encoder_cmd._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2148937912}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2152493037, i64 2152493062}
!171 = !{i8 0, i8 2}
!172 = !{!"auto-init"}
