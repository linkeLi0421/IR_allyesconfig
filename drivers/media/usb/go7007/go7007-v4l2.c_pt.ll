; ModuleID = '/llk/IR_all_yes/drivers/media/usb/go7007/go7007-v4l2.c_pt.bc'
source_filename = "../drivers/media/usb/go7007/go7007-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.83 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.80], %struct.media_entity_enum, i32 }
%struct.anon.80 = type { ptr, ptr }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.go7007 = type { ptr, [32 x i8], ptr, i32, i32, i32, [64 x i8], %struct.video_device, ptr, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.mutex, i32, ptr, ptr, [16 x i8], i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, [4 x %struct.anon.116], [1624 x i8], [216 x i8], i32, %struct.mutex, %struct.vb2_queue, i32, i32, i16, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, %struct.i2c_adapter, ptr, ptr, i32, %struct.wait_queue_head, i16, i16 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.116 = type { i8, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.86, %union.anon.87, i32, ptr, i32, %struct.anon.88, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.86 = type { i64 }
%union.anon.87 = type { ptr }
%struct.anon.88 = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.go7007_board_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x %struct.go_i2c], i32, [4 x %struct.anon.78], i32, i32, [3 x %struct.anon.79] }
%struct.go_i2c = type { ptr, i8, i32, i32 }
%struct.anon.78 = type { i32, i32, ptr }
%struct.anon.79 = type { i32, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.go7007_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.96, i32 }
%union.anon.96 = type { i32 }
%struct.go7007_hpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_audio = type { i32, [32 x i8], i32, i32, [2 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.113 }
%union.anon.113 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.114, [2 x i32] }
%union.anon.114 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.115, [2 x i32] }
%union.anon.115 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.90, i16, i16, i16, [10 x i16] }
%union.anon.90 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@go7007_v4l2_ctrl_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"go7007_v4l2:1021:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@go7007_pixel_threshold0_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688769, ptr @.str.11, i32 1, i64 0, i64 32767, i64 1, i64 20, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_motion_threshold0_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688770, ptr @.str.12, i32 1, i64 0, i64 32767, i64 1, i64 80, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_mb_threshold0_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688771, ptr @.str.13, i32 1, i64 0, i64 32767, i64 1, i64 200, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_pixel_threshold1_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688772, ptr @.str.14, i32 1, i64 0, i64 32767, i64 1, i64 20, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_motion_threshold1_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688773, ptr @.str.15, i32 1, i64 0, i64 32767, i64 1, i64 80, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_mb_threshold1_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688774, ptr @.str.16, i32 1, i64 0, i64 32767, i64 1, i64 200, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_pixel_threshold2_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688775, ptr @.str.17, i32 1, i64 0, i64 32767, i64 1, i64 20, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_motion_threshold2_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688776, ptr @.str.18, i32 1, i64 0, i64 32767, i64 1, i64 80, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_mb_threshold2_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688777, ptr @.str.19, i32 1, i64 0, i64 32767, i64 1, i64 200, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_pixel_threshold3_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688778, ptr @.str.20, i32 1, i64 0, i64 32767, i64 1, i64 20, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_motion_threshold3_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688779, ptr @.str.21, i32 1, i64 0, i64 32767, i64 1, i64 80, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_mb_threshold3_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10688780, ptr @.str.22, i32 1, i64 0, i64 32767, i64 1, i64 200, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_mb_regions_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @go7007_ctrl_ops, ptr null, i32 10684676, ptr null, i32 0, i64 0, i64 3, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 36, i32 45, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@go7007_v4l2_ctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Could not register controls\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"go7007_v4l2_ctrl_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/go7007/go7007-v4l2.c\00", [57 x i8] zeroinitializer }, align 32
@go7007_v4l2_ctrl_init._entry_ptr = internal global ptr @go7007_v4l2_ctrl_init._entry, section ".printk_index", align 4
@go7007_v4l2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&go->serialize_lock\00", [44 x i8] zeroinitializer }, align 32
@go7007_v4l2_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&go->queue_lock\00", [16 x i8] zeroinitializer }, align 32
@go7007_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @go7007_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @go7007_buf_prepare, ptr @go7007_buf_finish, ptr null, ptr @go7007_start_streaming, ptr @go7007_stop_streaming, ptr @go7007_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@go7007_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @go7007_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"go7007\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@go7007_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 1145, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"registered device %s [v4l2]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"go7007_v4l2_init\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@go7007_v4l2_init._entry_ptr = internal global ptr @go7007_v4l2_init._entry, section ".printk_index", align 4
@go7007_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @go7007_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pixel Threshold Region 0\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Motion Threshold Region 0\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MB Threshold Region 0\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pixel Threshold Region 1\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Motion Threshold Region 1\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MB Threshold Region 1\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pixel Threshold Region 2\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Motion Threshold Region 2\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MB Threshold Region 2\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pixel Threshold Region 3\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Motion Threshold Region 3\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MB Threshold Region 3\00", [42 x i8] zeroinitializer }, align 32
@go7007_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr @vidioc_querystd, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enumaudio, ptr @vidioc_g_audio, ptr @vidioc_s_audio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_parm, ptr @vidioc_s_parm, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr @vidioc_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"go7007\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Tuner\00", [26 x i8] zeroinitializer }, align 32
@switch.table.go7007_buf_finish = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 16, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.go7007_buf_finish.25 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 16, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.vidioc_enum_fmt_vid_cap = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1196444237, i32 826757197, i32 843534413, i32 877088845], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.27 = internal global [15 x i64] [i64 13, i64 32, i64 10684676, i64 10688769, i64 10688770, i64 10688771, i64 10688772, i64 10688773, i64 10688774, i64 10688775, i64 10688776, i64 10688777, i64 10688778, i64 10688779, i64 10688780]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 826757197, i64 843534413, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 826757197, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 826757197, i64 843534413, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 826757197, i64 843534413, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 826757197, i64 843534413, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1021, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"go7007_pixel_threshold0_ctrl\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 888, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"go7007_motion_threshold0_ctrl\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 898, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [26 x i8] c"go7007_mb_threshold0_ctrl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 908, i32 38 }
@___asan_gen_.62 = private unnamed_addr constant [29 x i8] c"go7007_pixel_threshold1_ctrl\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 918, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [30 x i8] c"go7007_motion_threshold1_ctrl\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 928, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"go7007_mb_threshold1_ctrl\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 938, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant [29 x i8] c"go7007_pixel_threshold2_ctrl\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 948, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant [30 x i8] c"go7007_motion_threshold2_ctrl\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 958, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"go7007_mb_threshold2_ctrl\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 968, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [29 x i8] c"go7007_pixel_threshold3_ctrl\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 978, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant [30 x i8] c"go7007_motion_threshold3_ctrl\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 988, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"go7007_mb_threshold3_ctrl\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 998, i32 38 }
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"go7007_mb_regions_ctrl\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1008, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1067, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1079, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1080, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"go7007_video_qops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 452, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"go7007_template\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 876, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1144, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"go7007_ctrl_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 884, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 891, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 901, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 911, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 921, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 931, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 941, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 951, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 961, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 971, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 981, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 991, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1001, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant [12 x i8] c"go7007_fops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 832, i32 42 }
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 842, i32 36 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 279, i32 23 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [42 x i8] c"../drivers/media/usb/go7007/go7007-v4l2.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 717, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant [31 x i8] c"switch.table.go7007_buf_finish\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [34 x i8] c"switch.table.go7007_buf_finish.25\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [37 x i8] c"switch.table.vidioc_enum_fmt_vid_cap\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @go7007_v4l2_ctrl_init._entry, ptr @go7007_v4l2_ctrl_init._entry_ptr, ptr @go7007_v4l2_init._entry, ptr @go7007_v4l2_init._entry_ptr, ptr @go7007_v4l2_ctrl_init._key, ptr @.str, ptr @go7007_pixel_threshold0_ctrl, ptr @go7007_motion_threshold0_ctrl, ptr @go7007_mb_threshold0_ctrl, ptr @go7007_pixel_threshold1_ctrl, ptr @go7007_motion_threshold1_ctrl, ptr @go7007_mb_threshold1_ctrl, ptr @go7007_pixel_threshold2_ctrl, ptr @go7007_motion_threshold2_ctrl, ptr @go7007_mb_threshold2_ctrl, ptr @go7007_pixel_threshold3_ctrl, ptr @go7007_motion_threshold3_ctrl, ptr @go7007_mb_threshold3_ctrl, ptr @go7007_mb_regions_ctrl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @go7007_v4l2_init.__key, ptr @.str.4, ptr @go7007_v4l2_init.__key.5, ptr @.str.6, ptr @go7007_video_qops, ptr @go7007_template, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @go7007_ctrl_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @go7007_fops, ptr @video_ioctl_ops, ptr @.str.23, ptr @.str.24, ptr @switch.table.go7007_buf_finish, ptr @switch.table.go7007_buf_finish.25, ptr @switch.table.vidioc_enum_fmt_vid_cap], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_v4l2_ctrl_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_pixel_threshold0_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_motion_threshold0_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_mb_threshold0_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_pixel_threshold1_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_motion_threshold1_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_mb_threshold1_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_pixel_threshold2_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_motion_threshold2_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_mb_threshold2_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_pixel_threshold3_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_motion_threshold3_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_mb_threshold3_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_mb_regions_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_v4l2_ctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_v4l2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_v4l2_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.go7007_buf_finish to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.go7007_buf_finish.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vidioc_enum_fmt_vid_cap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @go7007_v4l2_ctrl_init(ptr noundef %go) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl1 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 11
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl1, i32 noundef 22, ptr noundef nonnull @go7007_v4l2_ctrl_init._key, ptr noundef nonnull @.str) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef null, i32 noundef 10029515, i64 noundef 0, i64 noundef 34, i64 noundef 1, i64 noundef 15) #7
  %mpeg_video_gop_size = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 13
  %0 = ptrtoint ptr %mpeg_video_gop_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %mpeg_video_gop_size, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef null, i32 noundef 10029516, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %mpeg_video_gop_closure = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 14
  %1 = ptrtoint ptr %mpeg_video_gop_closure to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %mpeg_video_gop_closure, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef null, i32 noundef 10029519, i64 noundef 64000, i64 noundef 10000000, i64 noundef 1, i64 noundef 9800000) #7
  %mpeg_video_bitrate = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 15
  %2 = ptrtoint ptr %mpeg_video_bitrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %mpeg_video_bitrate, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef null, i32 noundef 10029514, i64 noundef 0, i64 noundef 2, i64 noundef 2, i64 noundef 0) #7
  %mpeg_video_b_frames = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 17
  %3 = ptrtoint ptr %mpeg_video_b_frames to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %mpeg_video_b_frames, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef null, i32 noundef 10029538, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %mpeg_video_rep_seqheader = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 18
  %4 = ptrtoint ptr %mpeg_video_rep_seqheader to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %mpeg_video_rep_seqheader, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1, ptr noundef null, i32 noundef 10029513, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  %mpeg_video_aspect_ratio = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 16
  %5 = ptrtoint ptr %mpeg_video_aspect_ratio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %mpeg_video_aspect_ratio, align 8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef null, i32 noundef 10291460, i64 noundef 0, i64 noundef 393216, i64 noundef 0, i64 noundef 393216) #7
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call8, i32 0, i32 20
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call9 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_pixel_threshold0_ctrl, ptr noundef null) #7
  %call10 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_motion_threshold0_ctrl, ptr noundef null) #7
  %call11 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_mb_threshold0_ctrl, ptr noundef null) #7
  %call12 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_pixel_threshold1_ctrl, ptr noundef null) #7
  %call13 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_motion_threshold1_ctrl, ptr noundef null) #7
  %call14 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_mb_threshold1_ctrl, ptr noundef null) #7
  %call15 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_pixel_threshold2_ctrl, ptr noundef null) #7
  %call16 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_motion_threshold2_ctrl, ptr noundef null) #7
  %call17 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_mb_threshold2_ctrl, ptr noundef null) #7
  %call18 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_pixel_threshold3_ctrl, ptr noundef null) #7
  %call19 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_motion_threshold3_ctrl, ptr noundef null) #7
  %call20 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_mb_threshold3_ctrl, ptr noundef null) #7
  %call21 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl1, ptr noundef nonnull @go7007_mb_regions_ctrl, ptr noundef null) #7
  %call22 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl1, ptr noundef null, i32 noundef 10684673, i8 noundef zeroext 3, i64 noundef 4, i8 noundef zeroext 0) #7
  %modet_mode = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 19
  %8 = ptrtoint ptr %modet_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %modet_mode, align 4
  %error = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 11, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %if.end28, label %if.then24

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 10, i32 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_handler = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 10, i32 6
  %11 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hdl1, ptr %ctrl_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then24
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @go7007_v4l2_init(ptr noundef %go) local_unnamed_addr #0 align 64 {
entry:
  %f = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7
  %serialize_lock = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %serialize_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @go7007_v4l2_init.__key) #7
  %queue_lock = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 49
  tail call void @__mutex_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @go7007_v4l2_init.__key.5) #7
  %vidq_active = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 56
  %0 = ptrtoint ptr %vidq_active to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %vidq_active, ptr %vidq_active, align 4
  %prev.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 56, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vidq_active, ptr %prev.i, align 4
  %vidq = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50
  %2 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %vidq, align 4
  %io_modes = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %io_modes, align 4
  %ops = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @go7007_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %drv_priv = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50, i32 10
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %go, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50, i32 12
  %7 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 752, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50, i32 13
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 50, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %queue_lock, ptr %lock, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %vidq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = call ptr @memcpy(ptr %vdev1, ptr @go7007_template, i32 1352)
  %lock15 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 26
  %11 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %serialize_lock, ptr %lock15, align 8
  %queue = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 10
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vidq, ptr %queue, align 8
  %device_caps = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 4
  %13 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 83886081, ptr %device_caps, align 8
  %board_info = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %14 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board_info, align 4
  %num_aud_inputs = getelementptr inbounds %struct.go7007_board_info, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %num_aud_inputs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_aud_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  %spec.store.select = select i1 %tobool17.not, i32 83886081, i32 84017153
  %18 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select, ptr %device_caps, align 8
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %15, align 4
  %and = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end.if.end26_crit_edge, label %if.then23

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or25 = or i32 %spec.store.select, 65536
  %21 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or25, ptr %device_caps, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end.if.end26_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 5, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %go, ptr %driver_data.i.i, align 4
  %v4l2_dev = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 10
  %v4l2_dev27 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 7
  %23 = ptrtoint ptr %v4l2_dev27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %v4l2_dev, ptr %v4l2_dev27, align 4
  %subdevs = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn255 = load ptr, ptr %subdevs, align 4
  %cmp.not256 = icmp eq ptr %.pn255, %subdevs
  br i1 %cmp.not256, label %if.end26.if.then46.critedge_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.if.then46.critedge_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %.pn257 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn255, %if.end26.for.body_crit_edge ]
  %ops31 = getelementptr i8, ptr %.pn257, i32 24
  %25 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops31, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video, align 4
  %tobool32.not = icmp eq ptr %28, null
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %querystd, align 4
  %tobool35.not = icmp eq ptr %30, null
  br i1 %tobool35.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn257 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn257, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.if.then46.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then46.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.critedge

if.then46.critedge:                               ; preds = %for.inc.if.then46.critedge_crit_edge, %if.end26.if.then46.critedge_crit_edge
  %valid_ioctls.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 25
  tail call void @_set_bit(i32 noundef 63, ptr noundef %valid_ioctls.i) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then46.critedge, %land.lhs.true.if.end47_crit_edge
  %32 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %board_info, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and50 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ioctls.i244 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 25
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i244) #7
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i244) #7
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i244) #7
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i244) #7
  br label %if.end94

if.else:                                          ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f) #7
  %36 = call ptr @memset(ptr %f, i32 0, i32 44)
  %37 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 980, ptr %39, align 4
  %41 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn243258 = load ptr, ptr %subdevs, align 4
  %cmp65.not260 = icmp eq ptr %.pn243258, %subdevs
  br i1 %cmp65.not260, label %if.else.for.end91_crit_edge, label %if.else.for.body67_crit_edge

if.else.for.body67_crit_edge:                     ; preds = %if.else
  br label %for.body67

if.else.for.end91_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91

for.body67:                                       ; preds = %for.inc85.for.body67_crit_edge, %if.else.for.body67_crit_edge
  %.pn243262 = phi ptr [ %.pn243, %for.inc85.for.body67_crit_edge ], [ %.pn243258, %if.else.for.body67_crit_edge ]
  %__err.0261 = phi i32 [ %__err.1, %for.inc85.for.body67_crit_edge ], [ 0, %if.else.for.body67_crit_edge ]
  %__sd53.0263 = getelementptr i8, ptr %.pn243262, i32 -80
  %ops68 = getelementptr i8, ptr %.pn243262, i32 24
  %42 = ptrtoint ptr %ops68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops68, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tuner, align 4
  %tobool69.not = icmp eq ptr %45, null
  br i1 %tobool69.not, label %for.body67.if.end79_crit_edge, label %land.lhs.true70

for.body67.if.end79_crit_edge:                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

land.lhs.true70:                                  ; preds = %for.body67
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_frequency, align 4
  %tobool73.not = icmp eq ptr %47, null
  br i1 %tobool73.not, label %land.lhs.true70.if.end79_crit_edge, label %if.then74

land.lhs.true70.if.end79_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then74:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = call i32 %47(ptr noundef %__sd53.0263, ptr noundef nonnull %f) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %land.lhs.true70.if.end79_crit_edge, %for.body67.if.end79_crit_edge
  %__err.1 = phi i32 [ %call78, %if.then74 ], [ %__err.0261, %land.lhs.true70.if.end79_crit_edge ], [ %__err.0261, %for.body67.if.end79_crit_edge ]
  %48 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__err.1, label %if.end79.for.end91_crit_edge [
    i32 0, label %if.end79.for.inc85_crit_edge
    i32 -515, label %if.end79.for.inc85_crit_edge264
  ]

if.end79.for.inc85_crit_edge264:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc85

if.end79.for.inc85_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc85

if.end79.for.end91_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91

for.inc85:                                        ; preds = %if.end79.for.inc85_crit_edge, %if.end79.for.inc85_crit_edge264
  %49 = ptrtoint ptr %.pn243262 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn243 = load ptr, ptr %.pn243262, align 4
  %cmp65.not = icmp eq ptr %.pn243, %subdevs
  br i1 %cmp65.not, label %for.inc85.for.end91_crit_edge, label %for.inc85.for.body67_crit_edge

for.inc85.for.body67_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body67

for.inc85.for.end91_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end91

for.end91:                                        ; preds = %for.inc85.for.end91_crit_edge, %if.end79.for.end91_crit_edge, %if.else.for.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f) #7
  br label %if.end94

if.end94:                                         ; preds = %for.end91, %if.then52
  %50 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %board_info, align 4
  %sensor_flags = getelementptr inbounds %struct.go7007_board_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sensor_flags, align 4
  %and96 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end94.if.end99_crit_edge

if.end94.if.end99_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ioctls.i248 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 25
  call void @_set_bit(i32 noundef 23, ptr noundef %valid_ioctls.i248) #7
  call void @_set_bit(i32 noundef 24, ptr noundef %valid_ioctls.i248) #7
  %tvnorms = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 22
  %54 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %tvnorms, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end94.if.end99_crit_edge
  %55 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %board_info, align 4
  %sensor_flags101 = getelementptr inbounds %struct.go7007_board_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %sensor_flags101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sensor_flags101, align 4
  %and102 = and i32 %58, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end99.if.end105_crit_edge, label %if.then104

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ioctls.i250 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 25
  call void @_set_bit(i32 noundef 74, ptr noundef %valid_ioctls.i250) #7
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end99.if.end105_crit_edge
  %59 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %board_info, align 4
  %num_aud_inputs107 = getelementptr inbounds %struct.go7007_board_info, ptr %60, i32 0, i32 17
  %61 = ptrtoint ptr %num_aud_inputs107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_aud_inputs107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp108 = icmp eq i32 %62, 0
  br i1 %cmp108, label %if.then109, label %if.end105.if.end110_crit_edge

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %valid_ioctls.i251 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 25
  call void @_set_bit(i32 noundef 33, ptr noundef %valid_ioctls.i251) #7
  call void @_set_bit(i32 noundef 34, ptr noundef %valid_ioctls.i251) #7
  call void @_set_bit(i32 noundef 65, ptr noundef %valid_ioctls.i251) #7
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end105.if.end110_crit_edge
  %63 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %board_info, align 4
  %sensor_flags112 = getelementptr inbounds %struct.go7007_board_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %sensor_flags112 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sensor_flags112, align 4
  %and113 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end110.if.end146_crit_edge, label %if.then115

if.end110.if.end146_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then115:                                       ; preds = %if.end110
  %sd_video = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 25
  %67 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd_video, align 4
  %tobool118.not = icmp eq ptr %68, null
  br i1 %tobool118.not, label %if.then115.if.end146_crit_edge, label %if.else120

if.then115.if.end146_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.else120:                                       ; preds = %if.then115
  %ops121 = getelementptr inbounds %struct.v4l2_subdev, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %ops121 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops121, align 4
  %video122 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %video122 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %video122, align 4
  %tobool123.not = icmp eq ptr %72, null
  br i1 %tobool123.not, label %if.else120.if.end146_crit_edge, label %land.lhs.true124

if.else120.if.end146_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

land.lhs.true124:                                 ; preds = %if.else120
  %s_crystal_freq = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %s_crystal_freq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_crystal_freq, align 4
  %tobool127.not = icmp eq ptr %74, null
  br i1 %tobool127.not, label %land.lhs.true124.if.end146_crit_edge, label %if.else129

land.lhs.true124.if.end146_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.else129:                                       ; preds = %land.lhs.true124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool130.not = icmp eq ptr %75, null
  br i1 %tobool130.not, label %if.else129.if.else137_crit_edge, label %land.lhs.true131

if.else129.if.else137_crit_edge:                  ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else137

land.lhs.true131:                                 ; preds = %if.else129
  %s_crystal_freq132 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %s_crystal_freq132 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_crystal_freq132, align 4
  %tobool133.not = icmp eq ptr %77, null
  br i1 %tobool133.not, label %land.lhs.true131.if.else137_crit_edge, label %land.lhs.true131.if.end146.sink.split_crit_edge

land.lhs.true131.if.end146.sink.split_crit_edge:  ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.sink.split

land.lhs.true131.if.else137_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else137

if.else137:                                       ; preds = %land.lhs.true131.if.else137_crit_edge, %if.else129.if.else137_crit_edge
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %if.else137, %land.lhs.true131.if.end146.sink.split_crit_edge
  %.sink = phi ptr [ %74, %if.else137 ], [ %77, %land.lhs.true131.if.end146.sink.split_crit_edge ]
  %call136 = call i32 %.sink(ptr noundef nonnull %68, i32 noundef 24576000, i32 noundef 13) #7
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %land.lhs.true124.if.end146_crit_edge, %if.else120.if.end146_crit_edge, %if.then115.if.end146_crit_edge, %if.end110.if.end146_crit_edge
  call fastcc void @go7007_s_input(ptr noundef %go)
  %78 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %board_info, align 4
  %sensor_flags148 = getelementptr inbounds %struct.go7007_board_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %sensor_flags148 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sensor_flags148, align 4
  %and149 = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end146.if.end153_crit_edge, label %if.then151

if.end146.if.end153_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then151:                                       ; preds = %if.end146
  %std.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 31
  %82 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %std.i, align 8
  %and.i = and i64 %83, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select.i = zext i1 %not.tobool.not.i to i32
  %spec.select8.i = select i1 %tobool.not.i, i32 30000, i32 25025
  %84 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 30
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.select.i, ptr %84, align 4
  %86 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select8.i, ptr %86, align 8
  %88 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn1.i = load ptr, ptr %subdevs, align 4
  %cmp.not3.i = icmp eq ptr %.pn1.i, %subdevs
  br i1 %cmp.not3.i, label %if.then151.go7007_s_std.exit_crit_edge, label %if.then151.for.body.i_crit_edge

if.then151.for.body.i_crit_edge:                  ; preds = %if.then151
  br label %for.body.i

if.then151.go7007_s_std.exit_crit_edge:           ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #9
  br label %go7007_s_std.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then151.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.then151.for.body.i_crit_edge ]
  %__err.04.i = phi i32 [ %__err.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then151.for.body.i_crit_edge ]
  %__sd.06.i = getelementptr i8, ptr %.pn5.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn5.i, i32 24
  %89 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %video.i, align 4
  %tobool6.not.i = icmp eq ptr %92, null
  br i1 %tobool6.not.i, label %for.body.i.if.end15.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %s_std.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %s_std.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_std.i, align 4
  %tobool9.not.i = icmp eq ptr %94, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %std.i, align 8
  %call.i = call i32 %94(ptr noundef %__sd.06.i, i64 noundef %96) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %land.lhs.true.i.if.end15.i_crit_edge, %for.body.i.if.end15.i_crit_edge
  %__err.1.i = phi i32 [ %call.i, %if.then10.i ], [ %__err.04.i, %land.lhs.true.i.if.end15.i_crit_edge ], [ %__err.04.i, %for.body.i.if.end15.i_crit_edge ]
  %97 = zext i32 %__err.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %__err.1.i, label %if.end15.i.go7007_s_std.exit_crit_edge [
    i32 0, label %if.end15.i.for.inc.i_crit_edge
    i32 -515, label %if.end15.i.for.inc.i_crit_edge265
  ]

if.end15.i.for.inc.i_crit_edge265:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end15.i.go7007_s_std.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %go7007_s_std.exit

for.inc.i:                                        ; preds = %if.end15.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge265
  %98 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs
  br i1 %cmp.not.i, label %for.inc.i.go7007_s_std.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.go7007_s_std.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %go7007_s_std.exit

go7007_s_std.exit:                                ; preds = %for.inc.i.go7007_s_std.exit_crit_edge, %if.end15.i.go7007_s_std.exit_crit_edge, %if.then151.go7007_s_std.exit_crit_edge
  %call28.i = call fastcc i32 @set_capture_size(ptr noundef %go, ptr noundef null, i32 noundef 0) #7
  br label %if.end153

if.end153:                                        ; preds = %go7007_s_std.exit, %if.end146.if.end153_crit_edge
  %fops.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 3
  %99 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fops.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %call.i254 = call i32 @__video_register_device(ptr noundef %vdev1, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %cmp155 = icmp slt i32 %call.i254, 0
  br i1 %cmp155, label %if.end153.cleanup_crit_edge, label %do.end160

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end160:                                        ; preds = %if.end153
  %103 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %go, align 8
  %init_name.i.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 5, i32 3
  %105 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end160.video_device_node_name.exit_crit_edge

do.end160.video_device_node_name.exit_crit_edge:  ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 7, i32 5
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end160.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %108, %if.end.i.i ], [ %106, %do.end160.video_device_node_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %if.end153.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %video_device_node_name.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call.i254, %if.end153.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @go7007_s_input(ptr nocapture noundef %go) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 28
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input1, align 4
  %sd_video = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 25
  %2 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_video, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %if.else

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.else.if.end27_crit_edge, label %land.lhs.true

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.if.end27_crit_edge, label %if.else7

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.else7:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.else7.if.else15_crit_edge, label %land.lhs.true9

if.else7.if.else15_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

land.lhs.true9:                                   ; preds = %if.else7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true9.if.else15_crit_edge, label %land.lhs.true9.if.end27.sink.split_crit_edge

land.lhs.true9.if.end27.sink.split_crit_edge:     ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.sink.split

land.lhs.true9.if.else15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true9.if.else15_crit_edge, %if.else7.if.else15_crit_edge
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else15, %land.lhs.true9.if.end27.sink.split_crit_edge
  %.sink105 = phi ptr [ %9, %if.else15 ], [ %12, %land.lhs.true9.if.end27.sink.split_crit_edge ]
  %board_info = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %13 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board_info, align 4
  %arrayidx21 = getelementptr %struct.go7007_board_info, ptr %14, i32 0, i32 15, i32 %1
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx21, align 4
  %video_config24 = getelementptr inbounds %struct.go7007_board_info, ptr %14, i32 0, i32 16
  %17 = ptrtoint ptr %video_config24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %video_config24, align 4
  %call25 = tail call i32 %.sink105(ptr noundef nonnull %3, i32 noundef %16, i32 noundef 0, i32 noundef %18) #7
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge, %entry.if.end27_crit_edge
  %board_info28 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %19 = ptrtoint ptr %board_info28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %board_info28, align 4
  %num_aud_inputs = getelementptr inbounds %struct.go7007_board_info, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %num_aud_inputs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_aud_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  br i1 %tobool29.not, label %if.end27.if.end71_crit_edge, label %if.then30

if.end27.if.end71_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then30:                                        ; preds = %if.end27
  %audio_index = getelementptr %struct.go7007_board_info, ptr %20, i32 0, i32 15, i32 %1, i32 1
  %23 = ptrtoint ptr %audio_index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %audio_index, align 4
  %sd_audio = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 26
  %25 = ptrtoint ptr %sd_audio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_audio, align 8
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %if.then30.if.end68_crit_edge, label %if.else38

if.then30.if.end68_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.else38:                                        ; preds = %if.then30
  %ops39 = getelementptr inbounds %struct.v4l2_subdev, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %ops39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops39, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %audio, align 4
  %tobool40.not = icmp eq ptr %30, null
  br i1 %tobool40.not, label %if.else38.if.end68_crit_edge, label %land.lhs.true41

if.else38.if.end68_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

land.lhs.true41:                                  ; preds = %if.else38
  %s_routing44 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %s_routing44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_routing44, align 4
  %tobool45.not = icmp eq ptr %32, null
  br i1 %tobool45.not, label %land.lhs.true41.if.end68_crit_edge, label %if.else47

land.lhs.true41.if.end68_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.else47:                                        ; preds = %land.lhs.true41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool48.not = icmp eq ptr %33, null
  br i1 %tobool48.not, label %if.else47.if.else57_crit_edge, label %land.lhs.true49

if.else47.if.else57_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

land.lhs.true49:                                  ; preds = %if.else47
  %s_routing50 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %s_routing50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_routing50, align 4
  %tobool51.not = icmp eq ptr %35, null
  br i1 %tobool51.not, label %land.lhs.true49.if.else57_crit_edge, label %land.lhs.true49.if.end68.sink.split_crit_edge

land.lhs.true49.if.end68.sink.split_crit_edge:    ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.sink.split

land.lhs.true49.if.else57_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

if.else57:                                        ; preds = %land.lhs.true49.if.else57_crit_edge, %if.else47.if.else57_crit_edge
  br label %if.end68.sink.split

if.end68.sink.split:                              ; preds = %if.else57, %land.lhs.true49.if.end68.sink.split_crit_edge
  %.sink108 = phi ptr [ %32, %if.else57 ], [ %35, %land.lhs.true49.if.end68.sink.split_crit_edge ]
  %arrayidx63 = getelementptr %struct.go7007_board_info, ptr %20, i32 0, i32 18, i32 %24
  %36 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx63, align 4
  %call65 = tail call i32 %.sink108(ptr noundef nonnull %26, i32 noundef %37, i32 noundef 0, i32 noundef 0) #7
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %land.lhs.true41.if.end68_crit_edge, %if.else38.if.end68_crit_edge, %if.then30.if.end68_crit_edge
  %aud_input70 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 29
  %38 = ptrtoint ptr %aud_input70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %24, ptr %aud_input70, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end68, %if.end27.if.end71_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @go7007_v4l2_remove(ptr noundef %go) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 10688769, label %entry.cleanup.sink.split_crit_edge
    i32 10688770, label %sw.bb1
    i32 10688771, label %sw.bb5
    i32 10688772, label %sw.bb9
    i32 10688773, label %sw.bb14
    i32 10688774, label %sw.bb19
    i32 10688775, label %sw.bb24
    i32 10688776, label %sw.bb29
    i32 10688777, label %sw.bb34
    i32 10688778, label %sw.bb39
    i32 10688779, label %sw.bb44
    i32 10688780, label %sw.bb49
    i32 10684676, label %sw.bb54
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb54:                                          ; preds = %entry
  %height = getelementptr i8, ptr %1, i32 504
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 8
  %.off = add i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %.off)
  %7 = icmp ult i32 %.off, 31
  br i1 %7, label %sw.bb54.cleanup_crit_edge, label %for.body.lr.ph

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.bb54
  %modet_map = getelementptr i8, ptr %1, i32 612
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %width = getelementptr i8, ptr %1, i32 500
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mt.097 = phi ptr [ %modet_map, %for.body.lr.ph ], [ %add.ptr59, %for.body.for.body_crit_edge ]
  %y.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_new, align 8
  %mul = mul i32 %y.096, 45
  %add.ptr55 = getelementptr i8, ptr %9, i32 %mul
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %div56 = sdiv i32 %11, 16
  %12 = call ptr @memcpy(ptr %mt.097, ptr %add.ptr55, i32 %div56)
  %inc = add nuw i32 %y.096, 1
  %13 = load i32, ptr %width, align 4
  %div58 = sdiv i32 %13, 16
  %add.ptr59 = getelementptr i8, ptr %mt.097, i32 %div58
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 8
  %div = sdiv i32 %15, 16
  %cmp = icmp ult i32 %inc, %div
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.sink.split:                               ; preds = %sw.bb49, %sw.bb44, %sw.bb39, %sw.bb34, %sw.bb29, %sw.bb24, %sw.bb19, %sw.bb14, %sw.bb9, %sw.bb5, %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.sink98 = phi i32 [ 556, %sw.bb1 ], [ 560, %sw.bb5 ], [ 568, %sw.bb9 ], [ 572, %sw.bb14 ], [ 576, %sw.bb19 ], [ 584, %sw.bb24 ], [ 588, %sw.bb29 ], [ 592, %sw.bb34 ], [ 600, %sw.bb39 ], [ 604, %sw.bb44 ], [ 608, %sw.bb49 ], [ 552, %entry.cleanup.sink.split_crit_edge ]
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %pixel_threshold = getelementptr i8, ptr %1, i32 %.sink98
  %18 = ptrtoint ptr %pixel_threshold to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixel_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb54.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_queue_setup(ptr nocapture noundef readnone %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 131072, ptr %sizes, align 4
  %1 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_planes, align 4
  %2 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %num_buffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @go7007_buf_prepare(ptr nocapture noundef writeonly %vb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %modet_active = getelementptr inbounds %struct.go7007_buffer, ptr %vb, i32 0, i32 3
  %0 = ptrtoint ptr %modet_active to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %modet_active, align 4
  %frame_offset = getelementptr inbounds %struct.go7007_buffer, ptr %vb, i32 0, i32 2
  %1 = ptrtoint ptr %frame_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %frame_offset, align 8
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %2 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bytesused, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_buf_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %format = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 38
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 8
  %call.i = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #7
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %sw.epilog.i [
    i32 1196444237, label %entry.get_frame_type_flag.exit_crit_edge
    i32 877088845, label %sw.bb2.i
    i32 826757197, label %entry.sw.bb6.i_crit_edge
    i32 843534413, label %entry.sw.bb6.i_crit_edge13
  ]

entry.sw.bb6.i_crit_edge13:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

entry.sw.bb6.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

entry.get_frame_type_flag.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_frame_type_flag.exit

sw.bb2.i:                                         ; preds = %entry
  %frame_offset.i = getelementptr inbounds %struct.go7007_buffer, ptr %vb, i32 0, i32 2
  %7 = ptrtoint ptr %frame_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frame_offset.i, align 8
  %add.i = add i32 %8, 4
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %add.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = lshr i8 %10, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %.not = icmp eq i8 %11, 3
  br i1 %.not, label %sw.bb2.i.get_frame_type_flag.exit_crit_edge, label %switch.lookup

sw.bb2.i.get_frame_type_flag.exit_crit_edge:      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_frame_type_flag.exit

sw.bb6.i:                                         ; preds = %entry.sw.bb6.i_crit_edge, %entry.sw.bb6.i_crit_edge13
  %frame_offset7.i = getelementptr inbounds %struct.go7007_buffer, ptr %vb, i32 0, i32 2
  %12 = ptrtoint ptr %frame_offset7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_offset7.i, align 8
  %add8.i = add i32 %13, 5
  %arrayidx9.i = getelementptr i8, ptr %call.i, i32 %add8.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9.i, align 1
  %16 = lshr i8 %15, 3
  %17 = and i8 %16, 7
  %and12.i = zext i8 %17 to i32
  %switch.tableidx = add nsw i32 %and12.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 3
  br i1 %18, label %switch.lookup10, label %sw.bb6.i.get_frame_type_flag.exit_crit_edge

sw.bb6.i.get_frame_type_flag.exit_crit_edge:      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_frame_type_flag.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_frame_type_flag.exit

switch.lookup:                                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = zext i8 %11 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.go7007_buf_finish, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_frame_type_flag.exit

switch.lookup10:                                  ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep11 = getelementptr inbounds [3 x i32], ptr @switch.table.go7007_buf_finish.25, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load12 = load i32, ptr %switch.gep11, align 4
  br label %get_frame_type_flag.exit

get_frame_type_flag.exit:                         ; preds = %switch.lookup10, %switch.lookup, %sw.epilog.i, %sw.bb6.i.get_frame_type_flag.exit_crit_edge, %sw.bb2.i.get_frame_type_flag.exit_crit_edge, %entry.get_frame_type_flag.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 8, %entry.get_frame_type_flag.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %sw.bb2.i.get_frame_type_flag.exit_crit_edge ], [ %switch.load12, %switch.lookup10 ], [ 0, %sw.bb6.i.get_frame_type_flag.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, -57
  %or = or i32 %and, %retval.0.i
  store i32 %or, ptr %flags, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_start_streaming(ptr nocapture noundef %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %format.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %3, label %sw.bb18.i [
    i32 1196444237, label %if.then.i
    i32 826757197, label %entry.sw.epilog.i_crit_edge
    i32 877088845, label %sw.bb20.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pali.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 41
  %5 = ptrtoint ptr %pali.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pali.i, align 4
  %aspect_ratio.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 42
  %6 = ptrtoint ptr %aspect_ratio.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %aspect_ratio.i, align 8
  %gop_size.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %gop_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %gop_size.i, align 4
  %ipb.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %ipb.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %ipb.i, align 8
  %bf.clear14.i = and i8 %bf.load.i, 3
  store i8 %bf.clear14.i, ptr %ipb.i, align 8
  br label %set_formatting.exit

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb20.i, %sw.bb18.i, %entry.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 245, %sw.bb20.i ], [ 72, %sw.bb18.i ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %pali21.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %pali21.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.i, ptr %pali21.i, align 4
  %mpeg_video_gop_size.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %mpeg_video_gop_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mpeg_video_gop_size.i, align 4
  %call.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %11) #7
  %gop_size22.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 43
  %12 = ptrtoint ptr %gop_size22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %gop_size22.i, align 4
  %mpeg_video_gop_closure.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %mpeg_video_gop_closure.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mpeg_video_gop_closure.i, align 8
  %call23.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %14) #7
  %closed_gop24.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 44
  %15 = trunc i32 %call23.i to i8
  %16 = ptrtoint ptr %closed_gop24.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load25.i = load i8, ptr %closed_gop24.i, align 8
  %bf.value.i = shl i8 %15, 6
  %bf.shl.i = and i8 %bf.value.i, 64
  %bf.clear26.i = and i8 %bf.load25.i, -65
  %bf.set27.i = or i8 %bf.shl.i, %bf.clear26.i
  store i8 %bf.set27.i, ptr %closed_gop24.i, align 8
  %mpeg_video_b_frames.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %mpeg_video_b_frames.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mpeg_video_b_frames.i, align 4
  %call28.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.not.i = icmp eq i32 %call28.i, 0
  %19 = ptrtoint ptr %closed_gop24.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load31.i = load i8, ptr %closed_gop24.i, align 8
  %bf.shl33.i = select i1 %cmp29.not.i, i8 0, i8 -128
  %bf.clear34.i = and i8 %bf.load31.i, 127
  %bf.set35.i = or i8 %bf.clear34.i, %bf.shl33.i
  store i8 %bf.set35.i, ptr %closed_gop24.i, align 8
  %mpeg_video_bitrate.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %mpeg_video_bitrate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mpeg_video_bitrate.i, align 4
  %call37.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %21) #7
  %bitrate.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 39
  %22 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call37.i, ptr %bitrate.i, align 4
  %mpeg_video_rep_seqheader.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %mpeg_video_rep_seqheader.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mpeg_video_rep_seqheader.i, align 8
  %call38.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %24) #7
  %25 = trunc i32 %call38.i to i8
  %26 = ptrtoint ptr %closed_gop24.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load40.i = load i8, ptr %closed_gop24.i, align 8
  %bf.value41.i = shl i8 %25, 5
  %bf.shl42.i = and i8 %bf.value41.i, 32
  %bf.clear43.i = and i8 %bf.load40.i, -45
  %bf.set44.i = or i8 %bf.clear43.i, %bf.shl42.i
  %bf.set49.i = or i8 %bf.set44.i, 8
  store i8 %bf.set49.i, ptr %closed_gop24.i, align 8
  %27 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %format.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %28)
  %cmp55.i = icmp eq i32 %28, 843534413
  br i1 %cmp55.i, label %if.then57.i, label %sw.epilog.i.if.end89.i_crit_edge

sw.epilog.i.if.end89.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

if.then57.i:                                      ; preds = %sw.epilog.i
  %29 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bitrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9800000, i32 %30)
  %cmp59.i = icmp eq i32 %30, 9800000
  br i1 %cmp59.i, label %land.lhs.true.i, label %if.then57.i.land.end.i_crit_edge

if.then57.i.land.end.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.then57.i
  %31 = ptrtoint ptr %gop_size22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gop_size22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %32)
  %cmp62.i = icmp ne i32 %32, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load40.i)
  %cmp67.i = icmp slt i8 %bf.load40.i, 0
  %or.cond.i = select i1 %cmp62.i, i1 true, i1 %cmp67.i
  %bf.clear73.i = and i32 %call38.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear73.i)
  %cmp75.not.i = icmp eq i32 %bf.clear73.i, 0
  %or.cond135.i = select i1 %or.cond.i, i1 true, i1 %cmp75.not.i
  br i1 %or.cond135.i, label %land.lhs.true.i.land.end.i_crit_edge, label %land.rhs.i

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = lshr i8 %bf.load40.i, 4
  %34 = and i8 %33, 4
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %if.then57.i.land.end.i_crit_edge
  %35 = phi i8 [ 0, %land.lhs.true.i.land.end.i_crit_edge ], [ 0, %if.then57.i.land.end.i_crit_edge ], [ %34, %land.rhs.i ]
  %bf.set87.i = or i8 %35, %bf.set49.i
  %36 = ptrtoint ptr %closed_gop24.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set87.i, ptr %closed_gop24.i, align 8
  br label %if.end89.i

if.end89.i:                                       ; preds = %land.end.i, %sw.epilog.i.if.end89.i_crit_edge
  %mpeg_video_aspect_ratio.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %mpeg_video_aspect_ratio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mpeg_video_aspect_ratio.i, align 8
  %call90.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %38) #7
  %39 = zext i32 %call90.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call90.i, label %sw.bb92.i [
    i32 2, label %sw.bb96.i
    i32 1, label %sw.bb94.i
  ]

sw.bb92.i:                                        ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %aspect_ratio93.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 42
  %40 = ptrtoint ptr %aspect_ratio93.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %aspect_ratio93.i, align 8
  br label %set_formatting.exit

sw.bb94.i:                                        ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %aspect_ratio95.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 42
  %41 = ptrtoint ptr %aspect_ratio95.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %aspect_ratio95.i, align 8
  br label %set_formatting.exit

sw.bb96.i:                                        ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %aspect_ratio97.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 42
  %42 = ptrtoint ptr %aspect_ratio97.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %aspect_ratio97.i, align 8
  br label %set_formatting.exit

set_formatting.exit:                              ; preds = %sw.bb96.i, %sw.bb94.i, %sw.bb92.i, %if.then.i
  %hw_lock = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #7
  %next_seq = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 55
  %43 = ptrtoint ptr %next_seq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %next_seq, align 4
  %active_buf = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 58
  %44 = ptrtoint ptr %active_buf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %active_buf, align 4
  %modet_event_status = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 48
  %45 = ptrtoint ptr %modet_event_status to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %modet_event_status, align 4
  %streaming = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 28
  %46 = ptrtoint ptr %streaming to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load = load i16, ptr %streaming, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %streaming, align 4
  %call1 = tail call i32 @go7007_start_encoder(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  tail call void @mutex_unlock(ptr noundef %hw_lock) #7
  br i1 %cmp, label %if.then3, label %if.end8

if.then3:                                         ; preds = %set_formatting.exit
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %streaming to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load5 = load i16, ptr %streaming, align 4
  %bf.clear6 = and i16 %bf.load5, 32767
  store i16 %bf.clear6, ptr %streaming, align 4
  br label %cleanup

if.end8:                                          ; preds = %set_formatting.exit
  %subdevs = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 10, i32 2
  %48 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn86 = load ptr, ptr %subdevs, align 4
  %cmp12.not88 = icmp eq ptr %.pn86, %subdevs
  br i1 %cmp12.not88, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn90 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn86, %if.end8.for.body_crit_edge ]
  %__err.089 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %__sd.091 = getelementptr i8, ptr %.pn90, i32 -80
  %ops = getelementptr i8, ptr %.pn90, i32 24
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %video, align 4
  %tobool13.not = icmp eq ptr %52, null
  br i1 %tobool13.not, label %for.body.if.end22_crit_edge, label %land.lhs.true

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_stream, align 4
  %tobool16.not = icmp eq ptr %54, null
  br i1 %tobool16.not, label %land.lhs.true.if.end22_crit_edge, label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 %54(ptr noundef %__sd.091, i32 noundef 1) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %__err.1 = phi i32 [ %call21, %if.then17 ], [ %__err.089, %land.lhs.true.if.end22_crit_edge ], [ %__err.089, %for.body.if.end22_crit_edge ]
  %55 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %__err.1, label %if.end22.for.end_crit_edge [
    i32 0, label %if.end22.for.inc_crit_edge
    i32 -515, label %if.end22.for.inc_crit_edge92
  ]

if.end22.for.inc_crit_edge92:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %if.end22.for.inc_crit_edge92
  %56 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp12.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge, %if.end8.for.end_crit_edge
  %mpeg_video_gop_size = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 13
  %57 = ptrtoint ptr %mpeg_video_gop_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mpeg_video_gop_size, align 4
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %for.end.v4l2_ctrl_grab.exit_crit_edge, label %if.end.i

for.end.v4l2_ctrl_grab.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %62, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %58, i1 noundef zeroext true) #7
  %63 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lock.i6.i, align 4
  tail call void @mutex_unlock(ptr noundef %66) #7
  br label %v4l2_ctrl_grab.exit

v4l2_ctrl_grab.exit:                              ; preds = %if.end.i, %for.end.v4l2_ctrl_grab.exit_crit_edge
  %mpeg_video_gop_closure = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 14
  %67 = ptrtoint ptr %mpeg_video_gop_closure to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mpeg_video_gop_closure, align 8
  %tobool.not.i68 = icmp eq ptr %68, null
  br i1 %tobool.not.i68, label %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit73_crit_edge, label %if.end.i72

v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit73_crit_edge: ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit73

if.end.i72:                                       ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i69 = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %handler.i.i69 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handler.i.i69, align 8
  %lock.i.i70 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %lock.i.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lock.i.i70, align 4
  tail call void @mutex_lock_nested(ptr noundef %72, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %68, i1 noundef zeroext true) #7
  %73 = ptrtoint ptr %handler.i.i69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %handler.i.i69, align 8
  %lock.i6.i71 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %lock.i6.i71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock.i6.i71, align 4
  tail call void @mutex_unlock(ptr noundef %76) #7
  br label %v4l2_ctrl_grab.exit73

v4l2_ctrl_grab.exit73:                            ; preds = %if.end.i72, %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit73_crit_edge
  %mpeg_video_bitrate = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 15
  %77 = ptrtoint ptr %mpeg_video_bitrate to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mpeg_video_bitrate, align 4
  %tobool.not.i74 = icmp eq ptr %78, null
  br i1 %tobool.not.i74, label %v4l2_ctrl_grab.exit73.v4l2_ctrl_grab.exit79_crit_edge, label %if.end.i78

v4l2_ctrl_grab.exit73.v4l2_ctrl_grab.exit79_crit_edge: ; preds = %v4l2_ctrl_grab.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit79

if.end.i78:                                       ; preds = %v4l2_ctrl_grab.exit73
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %handler.i.i75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %handler.i.i75, align 8
  %lock.i.i76 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %lock.i.i76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lock.i.i76, align 4
  tail call void @mutex_lock_nested(ptr noundef %82, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %78, i1 noundef zeroext true) #7
  %83 = ptrtoint ptr %handler.i.i75 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handler.i.i75, align 8
  %lock.i6.i77 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %lock.i6.i77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lock.i6.i77, align 4
  tail call void @mutex_unlock(ptr noundef %86) #7
  br label %v4l2_ctrl_grab.exit79

v4l2_ctrl_grab.exit79:                            ; preds = %if.end.i78, %v4l2_ctrl_grab.exit73.v4l2_ctrl_grab.exit79_crit_edge
  %mpeg_video_aspect_ratio = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %mpeg_video_aspect_ratio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mpeg_video_aspect_ratio, align 8
  %tobool.not.i80 = icmp eq ptr %88, null
  br i1 %tobool.not.i80, label %v4l2_ctrl_grab.exit79.v4l2_ctrl_grab.exit85_crit_edge, label %if.end.i84

v4l2_ctrl_grab.exit79.v4l2_ctrl_grab.exit85_crit_edge: ; preds = %v4l2_ctrl_grab.exit79
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit85

if.end.i84:                                       ; preds = %v4l2_ctrl_grab.exit79
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i81 = getelementptr inbounds %struct.v4l2_ctrl, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %handler.i.i81 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %handler.i.i81, align 8
  %lock.i.i82 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %lock.i.i82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lock.i.i82, align 4
  tail call void @mutex_lock_nested(ptr noundef %92, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %88, i1 noundef zeroext true) #7
  %93 = ptrtoint ptr %handler.i.i81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %handler.i.i81, align 8
  %lock.i6.i83 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %lock.i6.i83 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lock.i6.i83, align 4
  tail call void @mutex_unlock(ptr noundef %96) #7
  br label %v4l2_ctrl_grab.exit85

v4l2_ctrl_grab.exit85:                            ; preds = %if.end.i84, %v4l2_ctrl_grab.exit79.v4l2_ctrl_grab.exit85_crit_edge
  %board_id = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 3
  %97 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %board_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %98)
  %cmp35 = icmp eq i32 %98, 14
  br i1 %cmp35, label %if.then36, label %v4l2_ctrl_grab.exit85.cleanup_crit_edge

v4l2_ctrl_grab.exit85.cleanup_crit_edge:          ; preds = %v4l2_ctrl_grab.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %v4l2_ctrl_grab.exit85
  call void @__sanitizer_cov_trace_pc() #9
  %hpi_ops = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 63
  %99 = ptrtoint ptr %hpi_ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hpi_ops, align 8
  %write_interrupt = getelementptr inbounds %struct.go7007_hpi_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_interrupt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_interrupt, align 4
  %call37 = tail call i32 %102(ptr noundef %1, i32 noundef 48258, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %v4l2_ctrl_grab.exit85.cleanup_crit_edge, %if.then3
  %. = phi i32 [ 0, %v4l2_ctrl_grab.exit85.cleanup_crit_edge ], [ 0, %if.then36 ], [ -5, %if.then3 ]
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_stop_streaming(ptr nocapture noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %streaming = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 28
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %streaming, align 4
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %streaming, align 4
  %hpi_ops = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 63
  %3 = ptrtoint ptr %hpi_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hpi_ops, align 8
  %stream_stop = getelementptr inbounds %struct.go7007_hpi_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %stream_stop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream_stop, align 4
  %call1 = tail call i32 %6(ptr noundef %1) #7
  %hw_lock = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #7
  %call2 = tail call i32 @go7007_reset_encoder(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %hw_lock) #7
  %subdevs = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn84 = load ptr, ptr %subdevs, align 4
  %cmp.not86 = icmp eq ptr %.pn84, %subdevs
  br i1 %cmp.not86, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn88 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn84, %entry.for.body_crit_edge ]
  %__err.087 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.089 = getelementptr i8, ptr %.pn88, i32 -80
  %ops = getelementptr i8, ptr %.pn88, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_stream, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %13(ptr noundef %__sd.089, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call13, %if.then ], [ %__err.087, %land.lhs.true.if.end_crit_edge ], [ %__err.087, %for.body.if.end_crit_edge ]
  %14 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %__err.1, label %if.end.for.end_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge90
  ]

if.end.for.inc_crit_edge90:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge90
  %15 = ptrtoint ptr %.pn88 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn88, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %spinlock = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 21
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %vidq_active = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 56
  %16 = ptrtoint ptr %vidq_active to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %vidq_active, ptr %vidq_active, align 4
  %prev.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 56, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vidq_active, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call30) #7
  %mpeg_video_gop_size = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %mpeg_video_gop_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mpeg_video_gop_size, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.end.v4l2_ctrl_grab.exit_crit_edge, label %if.end.i

for.end.v4l2_ctrl_grab.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %23, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %19, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handler.i.i, align 8
  %lock.i6.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %lock.i6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock.i6.i, align 4
  tail call void @mutex_unlock(ptr noundef %27) #7
  br label %v4l2_ctrl_grab.exit

v4l2_ctrl_grab.exit:                              ; preds = %if.end.i, %for.end.v4l2_ctrl_grab.exit_crit_edge
  %mpeg_video_gop_closure = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %mpeg_video_gop_closure to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mpeg_video_gop_closure, align 8
  %tobool.not.i66 = icmp eq ptr %29, null
  br i1 %tobool.not.i66, label %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit71_crit_edge, label %if.end.i70

v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit71_crit_edge: ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit71

if.end.i70:                                       ; preds = %v4l2_ctrl_grab.exit
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i67 = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %handler.i.i67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handler.i.i67, align 8
  %lock.i.i68 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %lock.i.i68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock.i.i68, align 4
  tail call void @mutex_lock_nested(ptr noundef %33, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %29, i1 noundef zeroext false) #7
  %34 = ptrtoint ptr %handler.i.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handler.i.i67, align 8
  %lock.i6.i69 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %lock.i6.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock.i6.i69, align 4
  tail call void @mutex_unlock(ptr noundef %37) #7
  br label %v4l2_ctrl_grab.exit71

v4l2_ctrl_grab.exit71:                            ; preds = %if.end.i70, %v4l2_ctrl_grab.exit.v4l2_ctrl_grab.exit71_crit_edge
  %mpeg_video_bitrate = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %mpeg_video_bitrate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mpeg_video_bitrate, align 4
  %tobool.not.i72 = icmp eq ptr %39, null
  br i1 %tobool.not.i72, label %v4l2_ctrl_grab.exit71.v4l2_ctrl_grab.exit77_crit_edge, label %if.end.i76

v4l2_ctrl_grab.exit71.v4l2_ctrl_grab.exit77_crit_edge: ; preds = %v4l2_ctrl_grab.exit71
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit77

if.end.i76:                                       ; preds = %v4l2_ctrl_grab.exit71
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %handler.i.i73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handler.i.i73, align 8
  %lock.i.i74 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %lock.i.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock.i.i74, align 4
  tail call void @mutex_lock_nested(ptr noundef %43, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %39, i1 noundef zeroext false) #7
  %44 = ptrtoint ptr %handler.i.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handler.i.i73, align 8
  %lock.i6.i75 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %lock.i6.i75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock.i6.i75, align 4
  tail call void @mutex_unlock(ptr noundef %47) #7
  br label %v4l2_ctrl_grab.exit77

v4l2_ctrl_grab.exit77:                            ; preds = %if.end.i76, %v4l2_ctrl_grab.exit71.v4l2_ctrl_grab.exit77_crit_edge
  %mpeg_video_aspect_ratio = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 16
  %48 = ptrtoint ptr %mpeg_video_aspect_ratio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mpeg_video_aspect_ratio, align 8
  %tobool.not.i78 = icmp eq ptr %49, null
  br i1 %tobool.not.i78, label %v4l2_ctrl_grab.exit77.v4l2_ctrl_grab.exit83_crit_edge, label %if.end.i82

v4l2_ctrl_grab.exit77.v4l2_ctrl_grab.exit83_crit_edge: ; preds = %v4l2_ctrl_grab.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_ctrl_grab.exit83

if.end.i82:                                       ; preds = %v4l2_ctrl_grab.exit77
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i79 = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %handler.i.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %handler.i.i79, align 8
  %lock.i.i80 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %lock.i.i80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock.i.i80, align 4
  tail call void @mutex_lock_nested(ptr noundef %53, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %49, i1 noundef zeroext false) #7
  %54 = ptrtoint ptr %handler.i.i79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %handler.i.i79, align 8
  %lock.i6.i81 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %lock.i6.i81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lock.i6.i81, align 4
  tail call void @mutex_unlock(ptr noundef %57) #7
  br label %v4l2_ctrl_grab.exit83

v4l2_ctrl_grab.exit83:                            ; preds = %if.end.i82, %v4l2_ctrl_grab.exit77.v4l2_ctrl_grab.exit83_crit_edge
  %board_id = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %board_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %59)
  %cmp34 = icmp eq i32 %59, 14
  br i1 %cmp34, label %if.then36, label %v4l2_ctrl_grab.exit83.if.end39_crit_edge

v4l2_ctrl_grab.exit83.if.end39_crit_edge:         ; preds = %v4l2_ctrl_grab.exit83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %v4l2_ctrl_grab.exit83
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %hpi_ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hpi_ops, align 8
  %write_interrupt = getelementptr inbounds %struct.go7007_hpi_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write_interrupt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_interrupt, align 4
  %call38 = tail call i32 %63(ptr noundef %1, i32 noundef 48258, i32 noundef 13) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %v4l2_ctrl_grab.exit83.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @go7007_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %spinlock = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 21
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %list = getelementptr inbounds %struct.go7007_buffer, ptr %vb, i32 0, i32 1
  %vidq_active = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 56
  %prev.i = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 56, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %vidq_active) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vidq_active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.go7007_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_start_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_reset_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.23, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #7
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %bus_info6 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 1
  %call8 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef %bus_info6, i32 noundef 32) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vidioc_enum_fmt_vid_cap, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.load, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %fmt, align 4
  %width = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %5 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmt1, align 4
  %height = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 8
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %height4, align 4
  %format = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 38
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %13 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %14 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 131072, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 50, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @set_capture_size(ptr noundef %1, ptr noundef %fmt, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @set_capture_size(ptr noundef %1, ptr noundef %fmt, i32 noundef 1)
  ret i32 %call1
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
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std1 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std1, align 8
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 50, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %std2 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %std2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %std, ptr %std2, align 8
  %and.i = and i64 %std, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select.i = zext i1 %not.tobool.not.i to i32
  %spec.select8.i = select i1 %tobool.not.i, i32 30000, i32 25025
  %5 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %5, align 4
  %7 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select8.i, ptr %7, align 8
  %subdevs.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn1.i = load ptr, ptr %subdevs.i, align 4
  %cmp.not3.i = icmp eq ptr %.pn1.i, %subdevs.i
  br i1 %cmp.not3.i, label %if.end.go7007_s_std.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.go7007_s_std.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %go7007_s_std.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.end.for.body.i_crit_edge ]
  %__err.04.i = phi i32 [ %__err.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %__sd.06.i = getelementptr i8, ptr %.pn5.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn5.i, i32 24
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %for.body.i.if.end15.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %s_std.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %s_std.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_std.i, align 4
  %tobool9.not.i = icmp eq ptr %15, null
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %std2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %std2, align 8
  %call.i6 = tail call i32 %15(ptr noundef %__sd.06.i, i64 noundef %17) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %land.lhs.true.i.if.end15.i_crit_edge, %for.body.i.if.end15.i_crit_edge
  %__err.1.i = phi i32 [ %call.i6, %if.then10.i ], [ %__err.04.i, %land.lhs.true.i.if.end15.i_crit_edge ], [ %__err.04.i, %for.body.i.if.end15.i_crit_edge ]
  %18 = zext i32 %__err.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %__err.1.i, label %if.end15.i.go7007_s_std.exit_crit_edge [
    i32 0, label %if.end15.i.for.inc.i_crit_edge
    i32 -515, label %if.end15.i.for.inc.i_crit_edge7
  ]

if.end15.i.for.inc.i_crit_edge7:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end15.i.go7007_s_std.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %go7007_s_std.exit

for.inc.i:                                        ; preds = %if.end15.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge7
  %19 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp.not.i, label %for.inc.i.go7007_s_std.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.go7007_s_std.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %go7007_s_std.exit

go7007_s_std.exit:                                ; preds = %for.inc.i.go7007_s_std.exit_crit_edge, %if.end15.i.go7007_s_std.exit_crit_edge, %if.end.go7007_s_std.exit_crit_edge
  %call28.i = tail call fastcc i32 @set_capture_size(ptr noundef %1, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %go7007_s_std.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %go7007_s_std.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn33 = load ptr, ptr %subdevs, align 4
  %cmp.not35 = icmp eq ptr %.pn33, %subdevs
  br i1 %cmp.not35, label %entry.for.end.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %entry.for.body_crit_edge ]
  %__err.036 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.038 = getelementptr i8, ptr %.pn37, i32 -80
  %ops = getelementptr i8, ptr %.pn37, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %querystd = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %querystd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %querystd, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 %8(ptr noundef %__sd.038, ptr noundef %std) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call10, %if.then ], [ %__err.036, %land.lhs.true.if.end_crit_edge ], [ %__err.036, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %__err.1, label %if.end.for.end.thread_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge46
  ]

if.end.for.inc_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge46
  %10 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp22 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp22, i32 0, i32 %__err.1
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %11 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end.for.end.thread_crit_edge ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %inp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inp, align 8
  %board_info = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_info, align 4
  %num_inputs = getelementptr inbounds %struct.go7007_board_info, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %name3 = getelementptr %struct.go7007_board_info, ptr %5, i32 0, i32 15, i32 %3, i32 2
  %8 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %9, i32 noundef 32) #7
  %10 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_info, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else, %land.lhs.true.if.end10_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ 1, %land.lhs.true.if.end10_crit_edge ]
  %type9 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %16 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %type9, align 4
  %17 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %board_info, align 4
  %num_aud_inputs = getelementptr inbounds %struct.go7007_board_info, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %num_aud_inputs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_aud_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  %notmask = shl nsw i32 -1, %20
  %sub = xor i32 %notmask, -1
  %sub.sink = select i1 %tobool12.not, i32 0, i32 %sub
  %21 = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.sink, ptr %21, align 8
  %tuner = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 4
  %23 = ptrtoint ptr %tuner to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tuner, align 4
  %24 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %board_info, align 4
  %sensor_flags = getelementptr inbounds %struct.go7007_board_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sensor_flags, align 4
  %and20 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.then22

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call ptr @video_devdata(ptr noundef %file) #7
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %call23, i32 0, i32 22
  %28 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tvnorms, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then22, %if.end10.cleanup.sink.split_crit_edge
  %.sink44 = phi i64 [ %29, %if.then22 ], [ 0, %if.end10.cleanup.sink.split_crit_edge ]
  %std = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 5
  %30 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %.sink44, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input1 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input1, align 4
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %input, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %board_info = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_info, align 4
  %num_inputs = getelementptr inbounds %struct.go7007_board_info, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %input)
  %cmp.not = icmp ugt i32 %5, %input
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 50, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %input4 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %input4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %input, ptr %input4, align 4
  tail call fastcc void @go7007_s_input(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enumaudio(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  %board_info = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_info, align 4
  %num_aud_inputs = getelementptr inbounds %struct.go7007_board_info, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %num_aud_inputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_aud_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 1
  %name3 = getelementptr %struct.go7007_board_info, ptr %5, i32 0, i32 18, i32 %3, i32 1
  %8 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %9, i32 noundef 32) #7
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 2
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %capability, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_audio(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %aud_input = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %aud_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aud_input, align 8
  %4 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %a, align 4
  %name = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 1
  %board_info = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %board_info, align 4
  %7 = load i32, ptr %aud_input, align 8
  %name2 = getelementptr %struct.go7007_board_info, ptr %6, i32 0, i32 18, i32 %7, i32 1
  %8 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name2, align 4
  %call3 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %9, i32 noundef 32) #7
  %capability = getelementptr inbounds %struct.v4l2_audio, ptr %a, i32 0, i32 2
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %capability, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_audio(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  %board_info = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_info, align 4
  %num_aud_inputs = getelementptr inbounds %struct.go7007_board_info, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %num_aud_inputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_aud_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %aud_input = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %aud_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %aud_input, align 8
  %sd_audio = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %sd_audio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_audio, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %audio, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_routing = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_routing to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_routing, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.else8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 2), align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.else8.if.else18_crit_edge, label %land.lhs.true10

if.else8.if.else18_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18

land.lhs.true10:                                  ; preds = %if.else8
  %s_routing11 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %s_routing11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_routing11, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else18_crit_edge, label %land.lhs.true10.cleanup.sink.split_crit_edge

land.lhs.true10.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true10.if.else18_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true10.if.else18_crit_edge, %if.else8.if.else18_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else18, %land.lhs.true10.cleanup.sink.split_crit_edge
  %.sink47 = phi ptr [ %16, %if.else18 ], [ %19, %land.lhs.true10.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.go7007_board_info, ptr %5, i32 0, i32 18, i32 %3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %call17 = tail call i32 %.sink47(ptr noundef nonnull %10, i32 noundef %21, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #7
  %0 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %sensor_framerate = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %sensor_framerate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_framerate, align 8
  %fps_scale = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %fps_scale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fps_scale, align 8
  %mul = mul i32 %7, 1001
  %parm1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %readbuffers, align 4
  %9 = ptrtoint ptr %parm1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %parm1, align 4
  %timeperframe4 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %timeperframe4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %timeperframe4, align 4
  %timeperframe.sroa.5.0.timeperframe4.sroa_idx = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %timeperframe.sroa.5.0.timeperframe4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %timeperframe.sroa.5.0.timeperframe4.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_parm(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %parm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor_framerate = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %sensor_framerate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_framerate, align 8
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeperframe, align 4
  %mul = mul i32 %7, %5
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denominator, align 4
  %mul4 = mul i32 %9, 1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp5.not = icmp ne i32 %mul, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul4)
  %cmp6.not = icmp ne i32 %mul4, 0
  %or.cond = select i1 %cmp5.not, i1 %cmp6.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul4)
  %cmp8 = icmp ugt i32 %mul, %mul4
  %or.cond28 = select i1 %or.cond, i1 %cmp8, i1 false
  br i1 %or.cond28, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div27 = lshr i32 %mul4, 1
  %add = add i32 %div27, %mul
  %div10 = udiv i32 %add, %mul4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %.sink = phi i32 [ %div10, %if.then9 ], [ 1, %if.end.if.end12_crit_edge ]
  %10 = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 40
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %10, align 8
  %call.i.i = tail call ptr @video_devdata(ptr noundef %filp) #7
  %12 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %sensor_framerate.i = getelementptr inbounds %struct.go7007, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %sensor_framerate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sensor_framerate.i, align 8
  %fps_scale.i = getelementptr inbounds %struct.go7007, ptr %15, i32 0, i32 40
  %18 = ptrtoint ptr %fps_scale.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fps_scale.i, align 8
  %mul.i = mul i32 %19, 1001
  %parm1.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %readbuffers.i, align 4
  %21 = ptrtoint ptr %parm1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %parm1.i, align 4
  %22 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %timeperframe, align 4
  %23 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.24, i32 noundef 32) #7
  %subdevs = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn39 = load ptr, ptr %subdevs, align 4
  %cmp5.not41 = icmp eq ptr %.pn39, %subdevs
  br i1 %cmp5.not41, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn39, %if.end.for.body_crit_edge ]
  %__err.042 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.044 = getelementptr i8, ptr %.pn43, i32 -80
  %ops = getelementptr i8, ptr %.pn43, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g_tuner, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %10(ptr noundef %__sd.044, ptr noundef %t) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %__err.1 = phi i32 [ %call13, %if.then9 ], [ %__err.042, %land.lhs.true.if.end14_crit_edge ], [ %__err.042, %for.body.if.end14_crit_edge ]
  %11 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %__err.1, label %if.end14.cleanup_crit_edge [
    i32 0, label %if.end14.for.inc_crit_edge
    i32 -515, label %if.end14.for.inc_crit_edge52
  ]

if.end14.for.inc_crit_edge52:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end14.for.inc_crit_edge52
  %12 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp5.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp5.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp26 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp26, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn37 = load ptr, ptr %subdevs, align 4
  %cmp4.not39 = icmp eq ptr %.pn37, %subdevs
  br i1 %cmp4.not39, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn37, %if.end.for.body_crit_edge ]
  %__err.040 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.042 = getelementptr i8, ptr %.pn41, i32 -80
  %ops = getelementptr i8, ptr %.pn41, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.if.end13_crit_edge, label %land.lhs.true

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_tuner, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true.if.end13_crit_edge, label %if.then8

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 %10(ptr noundef %__sd.042, ptr noundef %t) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %__err.1 = phi i32 [ %call12, %if.then8 ], [ %__err.040, %land.lhs.true.if.end13_crit_edge ], [ %__err.040, %for.body.if.end13_crit_edge ]
  %11 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %__err.1, label %if.end13.cleanup_crit_edge [
    i32 0, label %if.end13.for.inc_crit_edge
    i32 -515, label %if.end13.for.inc_crit_edge50
  ]

if.end13.for.inc_crit_edge50:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %if.end13.for.inc_crit_edge50
  %12 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp4.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp4.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp25 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp25, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn38 = load ptr, ptr %subdevs, align 4
  %cmp.not40 = icmp eq ptr %.pn38, %subdevs
  br i1 %cmp.not40, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn38, %if.end.for.body_crit_edge ]
  %__err.041 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.043 = getelementptr i8, ptr %.pn42, i32 -80
  %ops = getelementptr i8, ptr %.pn42, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner4, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g_frequency, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %10(ptr noundef %__sd.043, ptr noundef %f) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %__err.1 = phi i32 [ %call13, %if.then9 ], [ %__err.041, %land.lhs.true.if.end14_crit_edge ], [ %__err.041, %for.body.if.end14_crit_edge ]
  %11 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %__err.1, label %if.end14.cleanup_crit_edge [
    i32 0, label %if.end14.for.inc_crit_edge
    i32 -515, label %if.end14.for.inc_crit_edge51
  ]

if.end14.for.inc_crit_edge51:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end14.for.inc_crit_edge51
  %12 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp26 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp26, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn38 = load ptr, ptr %subdevs, align 4
  %cmp.not40 = icmp eq ptr %.pn38, %subdevs
  br i1 %cmp.not40, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn38, %if.end.for.body_crit_edge ]
  %__err.041 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %__sd.043 = getelementptr i8, ptr %.pn42, i32 -80
  %ops = getelementptr i8, ptr %.pn42, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner4, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_frequency, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %10(ptr noundef %__sd.043, ptr noundef %f) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %__err.1 = phi i32 [ %call13, %if.then9 ], [ %__err.041, %land.lhs.true.if.end14_crit_edge ], [ %__err.041, %for.body.if.end14_crit_edge ]
  %11 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %__err.1, label %if.end14.cleanup_crit_edge [
    i32 0, label %if.end14.for.inc_crit_edge
    i32 -515, label %if.end14.for.inc_crit_edge51
  ]

if.end14.for.inc_crit_edge51:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.end14.for.inc_crit_edge51
  %12 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp26 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp26, i32 0, i32 %__err.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @v4l2_ctrl_log_status(ptr noundef %file, ptr noundef %priv) #7
  %subdevs = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn35 = load ptr, ptr %subdevs, align 4
  %cmp.not37 = icmp eq ptr %.pn35, %subdevs
  br i1 %cmp.not37, label %entry.for.end.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn35, %entry.for.body_crit_edge ]
  %__err.038 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.040 = getelementptr i8, ptr %.pn39, i32 -80
  %ops = getelementptr i8, ptr %.pn39, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 %8(ptr noundef %__sd.040) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call11, %if.then ], [ %__err.038, %land.lhs.true.if.end_crit_edge ], [ %__err.038, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %__err.1, label %if.end.for.end.thread_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge48
  ]

if.end.for.inc_crit_edge48:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge48
  %10 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp23 = icmp eq i32 %__err.1, -515
  %spec.select = select i1 %cmp23, i32 0, i32 %__err.1
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %11 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ %__err.1, %if.end.for.end.thread_crit_edge ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1196444237, label %if.end.if.end3_crit_edge
    i32 826757197, label %if.end.if.end3_crit_edge20
    i32 843534413, label %if.end.if.end3_crit_edge21
    i32 877088845, label %if.end.if.end3_crit_edge22
  ]

if.end.if.end3_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge20, %if.end.if.end3_crit_edge21, %if.end.if.end3_crit_edge22
  %standard.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %standard.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %standard.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %8, label %sw.default.i18 [
    i32 0, label %if.end3.get_resolution.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end3.get_resolution.exit_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_resolution.exit

sw.bb1.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_resolution.exit

sw.default.i18:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %board_info.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %board_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_info.i, align 4
  %sensor_width.i = getelementptr inbounds %struct.go7007_board_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %sensor_width.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensor_width.i, align 4
  %sensor_height.i = getelementptr inbounds %struct.go7007_board_info, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %sensor_height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sensor_height.i, align 4
  br label %get_resolution.exit

get_resolution.exit:                              ; preds = %sw.default.i18, %sw.bb1.i, %if.end3.get_resolution.exit_crit_edge
  %width.0 = phi i32 [ %13, %sw.default.i18 ], [ 720, %sw.bb1.i ], [ 720, %if.end3.get_resolution.exit_crit_edge ]
  %.sink.i = phi i32 [ %15, %sw.default.i18 ], [ 576, %sw.bb1.i ], [ 480, %if.end3.get_resolution.exit_crit_edge ]
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type, align 4
  %shr = ashr i32 %width.0, %3
  %and = and i32 %shr, -16
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %17, align 4
  %shr7 = ashr i32 %.sink.i, %3
  %and8 = and i32 %shr7, -16
  %height9 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and8, ptr %height9, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_resolution.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_resolution.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_frameintervals(ptr noundef %filp, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fival) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fival to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fival, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1196444237, label %if.end.if.end3_crit_edge
    i32 826757197, label %if.end.if.end3_crit_edge41
    i32 843534413, label %if.end.if.end3_crit_edge42
    i32 877088845, label %if.end.if.end3_crit_edge43
  ]

if.end.if.end3_crit_edge43:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge42:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge41:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge41, %if.end.if.end3_crit_edge42, %if.end.if.end3_crit_edge43
  %board_info = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board_info, align 4
  %sensor_flags = getelementptr inbounds %struct.go7007_board_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sensor_flags, align 4
  %and = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end3.if.end18_crit_edge

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then4:                                         ; preds = %if.end3
  %standard.i = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 30
  %11 = ptrtoint ptr %standard.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %standard.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %12, label %sw.default.i36 [
    i32 0, label %if.then4.get_resolution.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.then4.get_resolution.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_resolution.exit

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_resolution.exit

sw.default.i36:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %sensor_width.i = getelementptr inbounds %struct.go7007_board_info, ptr %8, i32 0, i32 3
  %14 = ptrtoint ptr %sensor_width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sensor_width.i, align 4
  %sensor_height.i = getelementptr inbounds %struct.go7007_board_info, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %sensor_height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sensor_height.i, align 4
  br label %get_resolution.exit

get_resolution.exit:                              ; preds = %sw.default.i36, %sw.bb1.i, %if.then4.get_resolution.exit_crit_edge
  %width.0 = phi i32 [ %15, %sw.default.i36 ], [ 720, %sw.bb1.i ], [ 720, %if.then4.get_resolution.exit_crit_edge ]
  %.sink.i = phi i32 [ %17, %sw.default.i36 ], [ 576, %sw.bb1.i ], [ 480, %if.then4.get_resolution.exit_crit_edge ]
  %width6 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 2
  %18 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width6, align 4
  %height9 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 3
  %and7 = and i32 %width.0, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and7)
  %cmp8 = icmp eq i32 %19, %and7
  br i1 %cmp8, label %land.lhs.true, label %get_resolution.exit.for.inc_crit_edge

get_resolution.exit.for.inc_crit_edge:            ; preds = %get_resolution.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %get_resolution.exit
  %20 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height9, align 4
  %and11 = and i32 %.sink.i, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and11)
  %cmp12 = icmp eq i32 %21, %and11
  br i1 %cmp12, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %get_resolution.exit.for.inc_crit_edge
  %shr.1 = ashr i32 %width.0, 1
  %and7.1 = and i32 %shr.1, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and7.1)
  %cmp8.1 = icmp eq i32 %19, %and7.1
  br i1 %cmp8.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %22 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height9, align 4
  %shr10.1 = ashr i32 %.sink.i, 1
  %and11.1 = and i32 %shr10.1, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and11.1)
  %cmp12.1 = icmp eq i32 %23, %and11.1
  br i1 %cmp12.1, label %land.lhs.true.1.if.end18_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1.if.end18_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %shr.2 = ashr i32 %width.0, 2
  %and7.2 = and i32 %shr.2, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and7.2)
  %cmp8.2 = icmp eq i32 %19, %and7.2
  br i1 %cmp8.2, label %land.lhs.true.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2:                                  ; preds = %for.inc.1
  %24 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height9, align 4
  %shr10.2 = ashr i32 %.sink.i, 2
  %and11.2 = and i32 %shr10.2, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %and11.2)
  %cmp12.2 = icmp eq i32 %25, %and11.2
  br i1 %cmp12.2, label %land.lhs.true.2.if.end18_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2.if.end18_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.2.if.end18_crit_edge, %land.lhs.true.1.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end3.if.end18_crit_edge
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 4
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type, align 4
  %27 = mul nuw nsw i32 %3, 1001
  %mul = add nuw nsw i32 %27, 1001
  %28 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %28, align 4
  %sensor_framerate = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %sensor_framerate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sensor_framerate, align 8
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fival, i32 0, i32 5, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cond = icmp eq i32 %1, 6
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 30, ptr noundef null) #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #7
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_capture_size(ptr noundef %go, ptr noundef %fmt, i32 noundef %try) unnamed_addr #0 align 64 {
entry:
  %format88 = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %fmt, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %land.lhs.true.cleanup_crit_edge [
    i32 1196444237, label %land.lhs.true.if.end_crit_edge
    i32 826757197, label %land.lhs.true.if.end_crit_edge291
    i32 843534413, label %land.lhs.true.if.end_crit_edge292
    i32 877088845, label %land.lhs.true.if.end_crit_edge293
  ]

land.lhs.true.if.end_crit_edge293:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.if.end_crit_edge292:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.if.end_crit_edge291:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge291, %land.lhs.true.if.end_crit_edge292, %land.lhs.true.if.end_crit_edge293, %entry.if.end_crit_edge
  %standard.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 30
  %3 = ptrtoint ptr %standard.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %standard.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %4, label %sw.default.i257 [
    i32 0, label %if.end.get_resolution.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end.get_resolution.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_resolution.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_resolution.exit

sw.default.i257:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %board_info.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %6 = ptrtoint ptr %board_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_info.i, align 4
  %sensor_width.i = getelementptr inbounds %struct.go7007_board_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %sensor_width.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sensor_width.i, align 4
  %sensor_height.i = getelementptr inbounds %struct.go7007_board_info, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %sensor_height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sensor_height.i, align 4
  br label %get_resolution.exit

get_resolution.exit:                              ; preds = %sw.default.i257, %sw.bb1.i, %if.end.get_resolution.exit_crit_edge
  %sensor_width.0 = phi i32 [ %9, %sw.default.i257 ], [ 720, %sw.bb1.i ], [ 720, %if.end.get_resolution.exit_crit_edge ]
  %.sink.i = phi i32 [ %11, %sw.default.i257 ], [ 576, %sw.bb1.i ], [ 480, %if.end.get_resolution.exit_crit_edge ]
  br i1 %cmp.not, label %if.end70, label %if.else

if.else:                                          ; preds = %get_resolution.exit
  %board_info = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %12 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_info, align 4
  %sensor_flags = getelementptr inbounds %struct.go7007_board_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %sensor_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sensor_flags, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %fmt36 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %16 = ptrtoint ptr %fmt36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt36, align 4
  br i1 %tobool.not, label %if.else35, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sensor_width.0)
  %cmp7 = icmp ugt i32 %17, %sensor_width.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %17)
  %cmp12 = icmp ult i32 %17, 144
  %and17 = and i32 %17, -16
  %spec.select = select i1 %cmp12, i32 144, i32 %and17
  %width.0 = select i1 %cmp7, i32 %sensor_width.0, i32 %spec.select
  %height21 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %.sink.i)
  %cmp22 = icmp ugt i32 %19, %.sink.i
  br i1 %cmp22, label %if.then4.if.end70.thread_crit_edge, label %if.else24

if.then4.if.end70.thread_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.thread

if.else24:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %19)
  %cmp27 = icmp ult i32 %19, 96
  %and32 = and i32 %19, -16
  %spec.select256 = select i1 %cmp27, i32 96, i32 %and32
  br label %if.end70.thread

if.else35:                                        ; preds = %if.else
  %div = sdiv i32 %sensor_width.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div)
  %cmp38.not = icmp sgt i32 %17, %div
  br i1 %cmp38.not, label %if.else42, label %if.then39

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  %div41 = sdiv i32 %.sink.i, 4
  br label %if.end50

if.else42:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  %div43 = sdiv i32 %sensor_width.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div43)
  %cmp44.not = icmp sgt i32 %17, %div43
  %div47 = sdiv i32 %.sink.i, 2
  %spec.select283 = select i1 %cmp44.not, i32 %.sink.i, i32 %div47
  %spec.select284 = select i1 %cmp44.not, i32 %sensor_width.0, i32 %div43
  br label %if.end50

if.end50:                                         ; preds = %if.else42, %if.then39
  %height.0 = phi i32 [ %div41, %if.then39 ], [ %spec.select283, %if.else42 ]
  %width.1 = phi i32 [ %div, %if.then39 ], [ %spec.select284, %if.else42 ]
  %and51 = and i32 %width.1, -16
  %and52 = and i32 %height.0, -16
  br label %if.end70.thread

if.end70:                                         ; preds = %get_resolution.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try)
  %tobool71.not = icmp eq i32 %try, 0
  br i1 %tobool71.not, label %if.end70.if.end78_crit_edge, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end70.thread:                                  ; preds = %if.end50, %if.else24, %if.then4.if.end70.thread_crit_edge
  %height.1.ph = phi i32 [ %spec.select256, %if.else24 ], [ %.sink.i, %if.then4.if.end70.thread_crit_edge ], [ %and52, %if.end50 ]
  %width.2.ph = phi i32 [ %width.0, %if.else24 ], [ %width.0, %if.then4.if.end70.thread_crit_edge ], [ %and51, %if.end50 ]
  %fmt58 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat59 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat59, align 4
  %22 = getelementptr inbounds i8, ptr %fmt, i32 32
  %23 = call ptr @memset(ptr %22, i32 0, i32 172)
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %fmt, align 4
  %25 = ptrtoint ptr %fmt58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %width.2.ph, ptr %fmt58, align 4
  %height63 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %height63 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %height.1.ph, ptr %height63, align 4
  store i32 %21, ptr %pixelformat59, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 131072, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try)
  %tobool71.not274 = icmp eq i32 %try, 0
  br i1 %tobool71.not274, label %if.then75, label %if.end70.thread.cleanup_crit_edge

if.end70.thread.cleanup_crit_edge:                ; preds = %if.end70.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then75:                                        ; preds = %if.end70.thread
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %pixelformat59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pixelformat59, align 4
  %format = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %33 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %format, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end70.if.end78_crit_edge
  %width.2271275282 = phi i32 [ %width.2.ph, %if.then75 ], [ %sensor_width.0, %if.end70.if.end78_crit_edge ]
  %height.1269276280 = phi i32 [ %height.1.ph, %if.then75 ], [ %.sink.i, %if.end70.if.end78_crit_edge ]
  %width79 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %34 = ptrtoint ptr %width79 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %width.2271275282, ptr %width79, align 4
  %height80 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %35 = ptrtoint ptr %height80 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %height.1269276280, ptr %height80, align 8
  %board_info81 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %36 = ptrtoint ptr %board_info81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board_info81, align 4
  %sensor_h_offset = getelementptr inbounds %struct.go7007_board_info, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %sensor_h_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sensor_h_offset, align 4
  %encoder_h_offset = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 35
  %40 = ptrtoint ptr %encoder_h_offset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %encoder_h_offset, align 4
  %sensor_v_offset = getelementptr inbounds %struct.go7007_board_info, ptr %37, i32 0, i32 7
  %41 = ptrtoint ptr %sensor_v_offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sensor_v_offset, align 4
  %encoder_v_offset = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 36
  %43 = ptrtoint ptr %encoder_v_offset to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %encoder_v_offset, align 8
  %sensor_flags84 = getelementptr inbounds %struct.go7007_board_info, ptr %37, i32 0, i32 2
  %44 = ptrtoint ptr %sensor_flags84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sensor_flags84, align 4
  %and85 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else134, label %if.then87

if.then87:                                        ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format88) #7
  %46 = getelementptr inbounds i8, ptr %format88, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 84)
  %48 = ptrtoint ptr %format88 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %format88, align 4
  %format89 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format88, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format88, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %code, align 4
  br i1 %cmp.not, label %if.then87.cond.end_crit_edge, label %cond.true

if.then87.cond.end_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %fmt91 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %50 = ptrtoint ptr %fmt91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fmt91, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then87.cond.end_crit_edge
  %cond = phi i32 [ %51, %cond.true ], [ %width.2271275282, %if.then87.cond.end_crit_edge ]
  %52 = ptrtoint ptr %format89 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond, ptr %format89, align 4
  %height96 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format88, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %height96 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %height.1269276280, ptr %height96, align 4
  %encoder_h_halve = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 37
  %54 = ptrtoint ptr %encoder_h_halve to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %encoder_h_halve, align 4
  %bf.clear101 = and i8 %bf.load, 31
  store i8 %bf.clear101, ptr %encoder_h_halve, align 4
  %subdevs = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 10, i32 2
  %55 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn285 = load ptr, ptr %subdevs, align 4
  %cmp106.not287 = icmp eq ptr %.pn285, %subdevs
  br i1 %cmp106.not287, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %.pn289 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn285, %cond.end.for.body_crit_edge ]
  %__err.0288 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %__sd.0290 = getelementptr i8, ptr %.pn289, i32 -80
  %ops = getelementptr i8, ptr %.pn289, i32 24
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pad, align 4
  %tobool107.not = icmp eq ptr %59, null
  br i1 %tobool107.not, label %for.body.if.end117_crit_edge, label %land.lhs.true108

for.body.if.end117_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

land.lhs.true108:                                 ; preds = %for.body
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_fmt, align 4
  %tobool111.not = icmp eq ptr %61, null
  br i1 %tobool111.not, label %land.lhs.true108.if.end117_crit_edge, label %if.then112

land.lhs.true108.if.end117_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then112:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 %61(ptr noundef %__sd.0290, ptr noundef null, ptr noundef nonnull %format88) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %land.lhs.true108.if.end117_crit_edge, %for.body.if.end117_crit_edge
  %__err.1 = phi i32 [ %call116, %if.then112 ], [ %__err.0288, %land.lhs.true108.if.end117_crit_edge ], [ %__err.0288, %for.body.if.end117_crit_edge ]
  %62 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %__err.1, label %if.end117.for.end_crit_edge [
    i32 0, label %if.end117.for.inc_crit_edge
    i32 -515, label %if.end117.for.inc_crit_edge294
  ]

if.end117.for.inc_crit_edge294:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end117.for.inc_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end117.for.end_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end117.for.inc_crit_edge, %if.end117.for.inc_crit_edge294
  %63 = ptrtoint ptr %.pn289 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load ptr, ptr %.pn289, align 4
  %cmp106.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp106.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end117.for.end_crit_edge, %cond.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format88) #7
  br label %cleanup

if.else134:                                       ; preds = %if.end78
  %div135 = sdiv i32 %sensor_width.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %width.2271275282, i32 %div135)
  %cmp136.not = icmp sgt i32 %width.2271275282, %div135
  br i1 %cmp136.not, label %if.else150, label %if.then137

if.then137:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #9
  %encoder_h_halve138 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 37
  %64 = ptrtoint ptr %encoder_h_halve138 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load139 = load i8, ptr %encoder_h_halve138, align 4
  %bf.set149 = or i8 %bf.load139, -32
  store i8 %bf.set149, ptr %encoder_h_halve138, align 4
  br label %cleanup

if.else150:                                       ; preds = %if.else134
  %div151 = sdiv i32 %sensor_width.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %width.2271275282, i32 %div151)
  %cmp152.not = icmp sgt i32 %width.2271275282, %div151
  %encoder_h_halve167 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 37
  %65 = ptrtoint ptr %encoder_h_halve167 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load168 = load i8, ptr %encoder_h_halve167, align 4
  %bf.clear177 = and i8 %bf.load168, 31
  br i1 %cmp152.not, label %if.else166, label %if.then153

if.then153:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear164 = or i8 %bf.clear177, -64
  %66 = ptrtoint ptr %encoder_h_halve167 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %bf.clear164, ptr %encoder_h_halve167, align 4
  br label %cleanup

if.else166:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %encoder_h_halve167 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %bf.clear177, ptr %encoder_h_halve167, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else166, %if.then153, %if.then137, %for.end, %if.end70.thread.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70.cleanup_crit_edge ], [ 0, %if.then137 ], [ 0, %if.else166 ], [ 0, %if.then153 ], [ 0, %for.end ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end70.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @go7007_v4l2_ctrl_init._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 1021, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 1067, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @go7007_v4l2_ctrl_init._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @go7007_v4l2_ctrl_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @go7007_v4l2_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 1079, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @go7007_v4l2_init.__key.5, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 1080, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 1144, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @go7007_v4l2_init._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @go7007_v4l2_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 891, i32 10}
!24 = !{ptr @go7007_pixel_threshold0_ctrl, !25, !"go7007_pixel_threshold0_ctrl", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 888, i32 38}
!26 = !{ptr @go7007_ctrl_ops, !27, !"go7007_ctrl_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 884, i32 35}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 901, i32 10}
!30 = !{ptr @go7007_motion_threshold0_ctrl, !31, !"go7007_motion_threshold0_ctrl", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 898, i32 38}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 911, i32 10}
!34 = !{ptr @go7007_mb_threshold0_ctrl, !35, !"go7007_mb_threshold0_ctrl", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 908, i32 38}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 921, i32 10}
!38 = !{ptr @go7007_pixel_threshold1_ctrl, !39, !"go7007_pixel_threshold1_ctrl", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 918, i32 38}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 931, i32 10}
!42 = !{ptr @go7007_motion_threshold1_ctrl, !43, !"go7007_motion_threshold1_ctrl", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 928, i32 38}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 941, i32 10}
!46 = !{ptr @go7007_mb_threshold1_ctrl, !47, !"go7007_mb_threshold1_ctrl", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 938, i32 38}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 951, i32 10}
!50 = !{ptr @go7007_pixel_threshold2_ctrl, !51, !"go7007_pixel_threshold2_ctrl", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 948, i32 38}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 961, i32 10}
!54 = !{ptr @go7007_motion_threshold2_ctrl, !55, !"go7007_motion_threshold2_ctrl", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 958, i32 38}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 971, i32 10}
!58 = !{ptr @go7007_mb_threshold2_ctrl, !59, !"go7007_mb_threshold2_ctrl", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 968, i32 38}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 981, i32 10}
!62 = !{ptr @go7007_pixel_threshold3_ctrl, !63, !"go7007_pixel_threshold3_ctrl", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 978, i32 38}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 991, i32 10}
!66 = !{ptr @go7007_motion_threshold3_ctrl, !67, !"go7007_motion_threshold3_ctrl", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 988, i32 38}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 1001, i32 10}
!70 = !{ptr @go7007_mb_threshold3_ctrl, !71, !"go7007_mb_threshold3_ctrl", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 998, i32 38}
!72 = !{ptr @go7007_mb_regions_ctrl, !73, !"go7007_mb_regions_ctrl", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 1008, i32 38}
!74 = !{ptr @go7007_video_qops, !75, !"go7007_video_qops", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 452, i32 29}
!76 = !{ptr @go7007_template, !77, !"go7007_template", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 876, i32 34}
!78 = !{ptr @go7007_fops, !79, !"go7007_fops", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 832, i32 42}
!80 = !{ptr @video_ioctl_ops, !81, !"video_ioctl_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 842, i32 36}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 279, i32 23}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/go7007/go7007-v4l2.c", i32 717, i32 19}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
