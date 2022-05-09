; ModuleID = '/llk/IR_all_yes/drivers/staging/media/omap4iss/iss_resizer.c_pt.bc'
source_filename = "../drivers/staging/media/omap4iss/iss_resizer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.iss_video_operations = type { ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.iss_resizer_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.iss_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.iss_pipeline, %struct.mutex, i8, ptr, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.iss_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iss_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.86, i32 }
%union.anon.86 = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.iss_device = type { %struct.v4l2_device, %struct.media_device, ptr, i32, ptr, i32, [11 x ptr], [11 x ptr], ptr, i64, %struct.mutex, %struct.media_entity_enum, i32, i32, ptr, ptr, %struct.iss_csi2_device, %struct.iss_csi2_device, %struct.iss_csiphy, %struct.iss_csiphy, %struct.iss_ipipeif_device, %struct.iss_ipipe_device, %struct.iss_resizer_device, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iss_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.iss_video, ptr, i8, i32, i32, i32, i32, i8, i32, ptr, [8 x %struct.iss_csi2_ctx_cfg], [2 x %struct.iss_csi2_timing_cfg], %struct.iss_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.iss_csi2_timing_cfg = type { i8, i8, i16 }
%struct.iss_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.iss_csiphy = type { ptr, %struct.mutex, i8, ptr, i32, i32, i8, i8, %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_dphy_cfg }
%struct.iss_csiphy_lanes_cfg = type { [4 x %struct.iss_csiphy_lane], %struct.iss_csiphy_lane }
%struct.iss_csiphy_lane = type { i8, i8 }
%struct.iss_csiphy_dphy_cfg = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.iss_ipipeif_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_ipipe_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@omap4iss_resizer_isr.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap4_iss\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap4iss_resizer_isr\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/media/omap4iss/iss_resizer.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RSZ Err: FIFO_IN_BLK:%d, FIFO_OVF:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@omap4iss_resizer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&resizer->wait\00", [17 x i8] zeroinitializer }, align 32
@resizer_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @resizer_v4l2_video_ops, ptr null, ptr null, ptr null, ptr @resizer_v4l2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@resizer_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @resizer_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OMAP4 ISS ISP resizer\00", [42 x i8] zeroinitializer }, align 32
@resizer_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @resizer_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@resizer_video_ops = internal constant { %struct.iss_video_operations, [28 x i8] } { %struct.iss_video_operations { ptr @resizer_video_queue }, [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ISP resizer a\00", [18 x i8] zeroinitializer }, align 32
@resizer_v4l2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @resizer_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@resizer_v4l2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @resizer_enum_mbus_code, ptr @resizer_enum_frame_size, ptr null, ptr @resizer_get_format, ptr @resizer_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @resizer_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"resizer_print_status\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"-------------RESIZER Register dump-------------\0A\00", [47 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RSZ SYSCONFIG=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"###RSZ IN_FIFO_CTRL=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.11, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ FRACDIV=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.12, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###RSZ SRC_EN=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.13, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###RSZ SRC_MODE=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.14, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###RSZ SRC_FMT0=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.15, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###RSZ SRC_FMT1=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.16, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ SRC_VPS=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.17, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ SRC_VSZ=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.18, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ SRC_HPS=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.19, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ SRC_HSZ=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.20, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ DMA_RZA=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.21, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ DMA_RZB=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.22, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ DMA_STA=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.23, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ GCK_MMR=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.24, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ GCK_SDR=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.25, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ IRQ_RZA=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.26, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RSZ IRQ_RZB=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.27, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RSZ YUV_Y_MIN=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.28, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RSZ YUV_Y_MAX=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.29, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RSZ YUV_C_MIN=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.30, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RSZ YUV_C_MAX=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.31, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###RSZ SEQ=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.32, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"###RZA EN=0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.33, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###RZA MODE=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.34, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"###RZA 420=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.35, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA I_VPS=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.36, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA I_HPS=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.37, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA O_VSZ=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.38, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA O_HSZ=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.39, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RZA V_PHS_Y=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.40, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###RZA V_PHS_C=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.41, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA V_DIF=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.42, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA V_TYP=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.43, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA V_LPF=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.44, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA H_PHS=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.45, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA H_DIF=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.46, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA H_TYP=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.47, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###RZA H_LPF=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.48, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###RZA DWN_EN=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.49, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_Y_BAD_H=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.50, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_Y_BAD_L=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.51, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_Y_SAD_H=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.52, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_Y_SAD_L=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.53, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RZA SDR_Y_OFT=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.54, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_Y_PTR_S=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.55, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_Y_PTR_E=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.56, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_C_BAD_H=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.57, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_C_BAD_L=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.58, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_C_SAD_H=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.59, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_C_SAD_L=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.60, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###RZA SDR_C_OFT=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.61, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_C_PTR_S=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.62, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###RZA SDR_C_PTR_E=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@resizer_print_status.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.63, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"-----------------------------------------------\0A\00", [47 x i8] zeroinitializer }, align 32
@resizer_fmts = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8207, i32 8209], [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 8207, i64 8209]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 131072]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 294, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 855, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"resizer_v4l2_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 690, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"resizer_v4l2_internal_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 696, i32 46 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 785, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"resizer_media_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 763, i32 45 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"resizer_video_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 337, i32 42 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 808, i32 50 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"resizer_v4l2_video_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 676, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"resizer_v4l2_pad_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 681, i32 41 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 45, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 47, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 48, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 49, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 50, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 51, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 52, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 53, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 54, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 55, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 56, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 57, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 58, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 59, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 60, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 61, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 62, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 63, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 64, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 65, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 66, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 67, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 68, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 69, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 71, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 72, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 73, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 74, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 75, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 76, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 77, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 78, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 79, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 80, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 81, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 82, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 83, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 84, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 85, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 86, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 87, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 88, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 89, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 90, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 91, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 92, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 93, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 94, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 95, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 96, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 97, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 98, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 99, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 100, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 101, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 103, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [13 x i8] c"resizer_fmts\00", align 1
@___asan_gen_.286 = private constant [48 x i8] c"../drivers/staging/media/omap4iss/iss_resizer.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 22, i32 27 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 998, i32 6 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @omap4iss_resizer_init.__key, ptr @.str.4, ptr @resizer_v4l2_ops, ptr @resizer_v4l2_internal_ops, ptr @.str.5, ptr @resizer_media_ops, ptr @resizer_video_ops, ptr @.str.6, ptr @resizer_v4l2_video_ops, ptr @resizer_v4l2_pad_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @resizer_fmts, ptr @.str.64], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_resizer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_video_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_v4l2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resizer_fmts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_resizer_isr(ptr noundef %resizer, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe2 = getelementptr inbounds %struct.media_entity, ptr %resizer, i32 0, i32 14
  %0 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe2, align 4
  %and = and i32 %events, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap4iss_resizer_isr.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap4iss_resizer_isr, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !207

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %resizer, i32 -8592
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %and10 = lshr i32 %events, 19
  %and10.lobit = and i32 %and10, 1
  %and12 = lshr i32 %events, 18
  %and12.lobit = and i32 %and12, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap4iss_resizer_isr.__UNIQUE_ID_ddebug354, ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %and10.lobit, i32 noundef %and12.lobit) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call void @omap4iss_pipeline_cancel_stream(ptr noundef %1) #7
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  %wait = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 8
  %stopping = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 9
  %call16 = tail call i32 @omap4iss_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp ne i32 %call16, 0
  %and20 = and i32 %events, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond = or i1 %tobool21.not, %tobool17.not
  br i1 %or.cond, label %if.end15.cleanup_crit_edge, label %if.then22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end15
  %arrayidx.i.i.i.i = getelementptr i8, ptr %resizer, i32 -8504
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %7) #7, !srcloc !211
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %11, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %13 = and i32 %12, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i9.i.i = getelementptr i8, ptr %15, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9.i.i, i32 %13) #7, !srcloc !211
  %video_out.i = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 5
  %call.i = tail call ptr @omap4iss_video_buffer_next(ptr noundef %video_out.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then22.cleanup_crit_edge, label %if.end.i

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %iss_addr.i = getelementptr inbounds %struct.iss_buffer, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %iss_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iss_addr.i, align 8
  tail call fastcc void @resizer_set_outaddr(ptr noundef %resizer, i32 noundef %17) #7
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i6.i = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i6.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %21 = or i32 %20, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i.i7.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i7.i, i32 %21) #7, !srcloc !211
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i7.i8.i = getelementptr i8, ptr %25, i32 120
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i8.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %27 = or i32 %26, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i2.i9.i9.i = getelementptr i8, ptr %29, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9.i9.i, i32 %27) #7, !srcloc !211
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then22.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_pipeline_cancel_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_module_sync_is_stopping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_resizer_unregister_entities(ptr noundef %resizer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %resizer) #7
  %video_out = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 5
  tail call void @omap4iss_video_unregister(ptr noundef %video_out) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_video_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_resizer_register_entities(ptr noundef %resizer, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %resizer) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %video_out = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 5
  %call1 = tail call i32 @omap4iss_video_register(ptr noundef %video_out, ptr noundef %vdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.error_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call1, %if.end.error_crit_edge ]
  tail call void @v4l2_device_unregister_subdev(ptr noundef %resizer) #7
  %video_out.i = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 5
  tail call void @omap4iss_video_unregister(ptr noundef %video_out.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_video_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_resizer_init(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %resizer1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22
  %state = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %wait = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.4, ptr noundef nonnull @omap4iss_resizer_init.__key) #7
  %pads1.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 1
  %input.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 3
  %1 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %input.i, align 4
  tail call void @v4l2_subdev_init(ptr noundef %resizer1, ptr noundef nonnull @resizer_v4l2_ops) #7
  %internal_ops.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 0, i32 7
  %2 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @resizer_v4l2_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.5, i32 noundef 32) #7
  %grp_id.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 0, i32 10
  %3 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %resizer1, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %6, 4
  store i32 %or.i, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags3.i, align 4
  %flags5.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 22, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags5.i, align 4
  %ops.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 0, i32 0, i32 11
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @resizer_media_ops, ptr %ops.i, align 4
  %call6.i = tail call i32 @media_entity_pads_init(ptr noundef %resizer1, i16 noundef zeroext 2, ptr noundef %pads1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %entry.resizer_init_entities.exit_crit_edge, label %if.end.i

entry.resizer_init_entities.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_init_entities.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #7
  %10 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 84)
  %12 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8207, ptr %code.i.i, align 4
  %14 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i = call i32 @resizer_set_format(ptr noundef %resizer1, ptr noundef null, ptr noundef nonnull %format.i.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #7
  %video_out.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5
  %type.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %type.i, align 8
  %ops9.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5, i32 19
  %17 = ptrtoint ptr %ops9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @resizer_video_ops, ptr %ops9.i, align 4
  %iss.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5, i32 5
  %18 = ptrtoint ptr %iss.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %iss, ptr %iss.i, align 4
  %capture_mem.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5, i32 6
  %19 = ptrtoint ptr %capture_mem.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 50331648, ptr %capture_mem.i, align 8
  %bpl_alignment.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5, i32 7
  %20 = ptrtoint ptr %bpl_alignment.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %bpl_alignment.i, align 4
  %bpl_zero_padding.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5, i32 8
  %21 = ptrtoint ptr %bpl_zero_padding.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %bpl_zero_padding.i, align 8
  %bpl_max.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5, i32 9
  %22 = ptrtoint ptr %bpl_max.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 131040, ptr %bpl_max.i, align 4
  %call16.i = tail call i32 @omap4iss_video_init(ptr noundef %video_out.i, ptr noundef nonnull @.str.6) #7
  br label %resizer_init_entities.exit

resizer_init_entities.exit:                       ; preds = %if.end.i, %entry.resizer_init_entities.exit_crit_edge
  %retval.0.i = phi i32 [ %call16.i, %if.end.i ], [ %call6.i, %entry.resizer_init_entities.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_resizer_create_links(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %resizer1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22
  %video_out = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22, i32 5
  %call = tail call i32 @media_create_pad_link(ptr noundef %resizer1, i16 noundef zeroext 1, ptr noundef %video_out, i16 noundef zeroext 0, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap4iss_resizer_cleanup(ptr nocapture noundef %iss) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4iss_video_buffer_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resizer_set_outaddr(ptr nocapture noundef readonly %resizer, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %1 = shl i32 %0, 16
  %arrayidx.i = getelementptr i8, ptr %resizer, i32 -8504
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !211
  %and3 = and i32 %addr, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and3) #7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %6, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %4) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %8, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %1) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %10, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %4) #7, !srcloc !211
  %code = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %12)
  %cmp = icmp eq i32 %12, 8207
  br i1 %cmp, label %land.lhs.true, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %code7 = getelementptr %struct.iss_resizer_device, ptr %resizer, i32 0, i32 2, i32 1, i32 2
  %13 = ptrtoint ptr %code7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %14)
  %cmp8 = icmp eq i32 %14, 8196
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bpl_value = getelementptr inbounds %struct.iss_resizer_device, ptr %resizer, i32 0, i32 5, i32 10
  %15 = ptrtoint ptr %bpl_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bpl_value, align 8
  %height = getelementptr %struct.iss_resizer_device, ptr %resizer, i32 0, i32 2, i32 1, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %mul = mul i32 %18, %16
  %add = add i32 %mul, %addr
  %xor = xor i32 %add, %addr
  %and9 = and i32 %xor, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  %19 = add i32 %add, 128
  %add12 = and i32 %19, -128
  %and13 = and i32 %addr, 127
  %or = or i32 %add12, %and13
  %c_addr.0 = select i1 %tobool.not, i32 %add, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %c_addr.0)
  %21 = shl i32 %20, 16
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %23, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %21) #7, !srcloc !211
  %and16 = and i32 %c_addr.0, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %and16) #7
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %26, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %24) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %28, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %21) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %30, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %24) #7, !srcloc !211
  br label %if.end20

if.end20:                                         ; preds = %if.then, %land.lhs.true.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #7
  %tobool.not = icmp eq ptr %fh, null
  %cond = zext i1 %tobool.not to i32
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8207, ptr %code, align 4
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %height, align 4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @resizer_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_video_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_set_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -9328
  %state = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp2 = icmp eq i32 %enable, 0
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap4iss_isp_subclk_enable(ptr noundef %add.ptr, i32 noundef 8) #7
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 -8504
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %7) #7, !srcloc !211
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %11, i32 84
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i54 = getelementptr i8, ptr %15, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i54, i32 %13) #7, !srcloc !211
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %19 = or i32 %18, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i58 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i58, i32 %19) #7, !srcloc !211
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %22 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %enable, label %if.end4.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb11
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  %formats.i = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 2
  %arrayidx2.i = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 1
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 -8504
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 40
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %26 = and i32 %25, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %26) #7, !srcloc !211
  %input.i = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i = icmp eq i32 %30, 2
  %cond.i = zext i1 %cmp.i to i32
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i51.i = getelementptr i8, ptr %32, i32 40
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %34 = and i32 %33, -16777217
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %or.i.i = or i32 %35, %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i52.i = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i52.i, i32 %36) #7, !srcloc !211
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %40, i32 36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %42 = and i32 %41, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i56.i = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i56.i, i32 %42) #7, !srcloc !211
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i58.i = getelementptr i8, ptr %46, i32 36
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %48 = and i32 %47, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i60.i = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i60.i, i32 %48) #7, !srcloc !211
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i62.i = getelementptr i8, ptr %52, i32 124
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %54 = and i32 %53, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i64.i = getelementptr i8, ptr %56, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i64.i, i32 %54) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %58, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 0) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %60, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 0) #7, !srcloc !211
  %height.i = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 0, i32 1
  %61 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height.i, align 4
  %sub.i = add i32 %62, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #7
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %65, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %63) #7, !srcloc !211
  %66 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %formats.i, align 4
  %sub3.i = add i32 %67, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %sub3.i) #7
  %69 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %70, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %68) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %72, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 0) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %74, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 0) #7, !srcloc !211
  %height4.i = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 1, i32 1
  %75 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %height4.i, align 4
  %sub5.i = add i32 %76, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %sub5.i) #7
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %79, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 %77) #7, !srcloc !211
  %80 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx2.i, align 4
  %sub7.i = add i32 %81, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %82 = tail call i32 @llvm.bswap.i32(i32 %sub7.i) #7
  %83 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %84, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 %82) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %86, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 65536) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %87 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %88, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 65536) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %89 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %90, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 0) #7, !srcloc !211
  %91 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height4.i, align 4
  %sub9.i = add i32 %92, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %sub9.i) #7
  %94 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %95, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %93) #7, !srcloc !211
  %bpl_value.i = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 5, i32 10
  %96 = ptrtoint ptr %bpl_value.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bpl_value.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  %99 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %100, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %98) #7, !srcloc !211
  %code.i = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 0, i32 2
  %101 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %102)
  %cmp10.i = icmp eq i32 %102, 8207
  br i1 %cmp10.i, label %land.lhs.true.i, label %sw.bb.if.else.i_crit_edge

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %code11.i = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 1, i32 2
  %103 = ptrtoint ptr %code11.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %code11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %104)
  %cmp12.i = icmp eq i32 %104, 8196
  br i1 %cmp12.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %106, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 50331648) #7, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %108, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 0) #7, !srcloc !211
  %109 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height4.i, align 4
  %sub14.i = add i32 %110, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %111 = tail call i32 @llvm.bswap.i32(i32 %sub14.i) #7
  %112 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %113, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 %111) #7, !srcloc !211
  %114 = ptrtoint ptr %bpl_value.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bpl_value.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #7
  %117 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %118, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 %116) #7, !srcloc !211
  br label %resizer_configure.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %119 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %120, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 0) #7, !srcloc !211
  br label %resizer_configure.exit

resizer_configure.exit:                           ; preds = %if.else.i, %if.then.i
  tail call fastcc void @resizer_print_status(ptr noundef %1)
  %output = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 4
  %121 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %output, align 8
  %and = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %resizer_configure.exit.if.end8_crit_edge, label %land.lhs.true

resizer_configure.exit.if.end8_crit_edge:         ; preds = %resizer_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %resizer_configure.exit
  %dmaqueue_flags = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 5, i32 18
  %123 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dmaqueue_flags, align 8
  %and5 = and i32 %124, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %resizer_configure.exit.if.end8_crit_edge
  %stopping = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #7
  %125 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile i32 0, ptr %stopping, align 4
  %126 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i61 = getelementptr i8, ptr %127, i32 32
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i61) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %129 = or i32 %128, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %130 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i63 = getelementptr i8, ptr %131, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i63, i32 %129) #7, !srcloc !211
  %132 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %133, i32 120
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %135 = or i32 %134, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %136 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i9.i = getelementptr i8, ptr %137, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9.i, i32 %135) #7, !srcloc !211
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end4
  %138 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp13 = icmp eq i32 %139, 0
  br i1 %cmp13, label %sw.bb11.cleanup_crit_edge, label %if.end15

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %wait = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 8
  %stopping16 = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 9
  %call17 = tail call i32 @omap4iss_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %spec.select = select i1 %tobool18.not, i32 0, i32 -110
  %arrayidx.i.i.i64 = getelementptr i8, ptr %1, i32 -8504
  %140 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i.i.i65 = getelementptr i8, ptr %141, i32 32
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i65) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %143 = and i32 %142, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %144 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i2.i.i66 = getelementptr i8, ptr %145, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i66, i32 %143) #7, !srcloc !211
  %146 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i.i7.i67 = getelementptr i8, ptr %147, i32 120
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i67) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %149 = and i32 %148, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %150 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i2.i9.i68 = getelementptr i8, ptr %151, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9.i68, i32 %149) #7, !srcloc !211
  %152 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %153, i32 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i70) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %155 = and i32 %154, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %156 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i2.i71 = getelementptr i8, ptr %157, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i71, i32 %155) #7, !srcloc !211
  %158 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %159, i32 84
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %161 = and i32 %160, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %162 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i2.i75 = getelementptr i8, ptr %163, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i75, i32 %161) #7, !srcloc !211
  %164 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %165, i32 76
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %167 = and i32 %166, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %168 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i.i.i64, align 4
  %add.ptr.i2.i79 = getelementptr i8, ptr %169, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i79, i32 %167) #7, !srcloc !211
  tail call void @omap4iss_isp_subclk_disable(ptr noundef %add.ptr, i32 noundef 8) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end15, %if.end8
  %ret.1.ph = phi i32 [ 0, %if.end8 ], [ %spec.select, %if.end15 ]
  %dmaqueue_flags22 = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 5, i32 18
  %170 = ptrtoint ptr %dmaqueue_flags22 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %dmaqueue_flags22, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %if.end4.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ %ret.1.ph, %sw.epilog.sink.split ]
  %171 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %enable, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %sw.bb11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resizer_print_status(ptr noundef readonly %resizer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %resizer, i32 -8592
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.8) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then16)) #7
          to label %do.body22 [label %if.then16], !srcloc !207

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr i8, ptr %resizer, i32 -8592
  %2 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev17, align 8
  %arrayidx.i = getelementptr i8, ptr %resizer, i32 -8504
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !208
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %7) #7
  br label %do.body22

do.body22:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then34)) #7
          to label %do.body40 [label %if.then34], !srcloc !207

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr i8, ptr %resizer, i32 -8592
  %8 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev35, align 8
  %arrayidx.i1267 = getelementptr i8, ptr %resizer, i32 -8504
  %10 = ptrtoint ptr %arrayidx.i1267 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i1267, align 4
  %add.ptr.i1268 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1268) #7, !srcloc !208
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %13) #7
  br label %do.body40

do.body40:                                        ; preds = %if.then34, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then52)) #7
          to label %do.body58 [label %if.then52], !srcloc !207

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr i8, ptr %resizer, i32 -8592
  %14 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev53, align 8
  %arrayidx.i1269 = getelementptr i8, ptr %resizer, i32 -8504
  %16 = ptrtoint ptr %arrayidx.i1269 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i1269, align 4
  %add.ptr.i1270 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1270) #7, !srcloc !208
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug301, ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %19) #7
  br label %do.body58

do.body58:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then70)) #7
          to label %do.body76 [label %if.then70], !srcloc !207

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %dev71 = getelementptr i8, ptr %resizer, i32 -8592
  %20 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev71, align 8
  %arrayidx.i1271 = getelementptr i8, ptr %resizer, i32 -8504
  %22 = ptrtoint ptr %arrayidx.i1271 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i1271, align 4
  %add.ptr.i1272 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1272) #7, !srcloc !208
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug302, ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef %25) #7
  br label %do.body76

do.body76:                                        ; preds = %if.then70, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then88)) #7
          to label %do.body94 [label %if.then88], !srcloc !207

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %dev89 = getelementptr i8, ptr %resizer, i32 -8592
  %26 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev89, align 8
  %arrayidx.i1273 = getelementptr i8, ptr %resizer, i32 -8504
  %28 = ptrtoint ptr %arrayidx.i1273 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i1273, align 4
  %add.ptr.i1274 = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1274) #7, !srcloc !208
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug303, ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %31) #7
  br label %do.body94

do.body94:                                        ; preds = %if.then88, %do.body76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then106)) #7
          to label %do.body112 [label %if.then106], !srcloc !207

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %dev107 = getelementptr i8, ptr %resizer, i32 -8592
  %32 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev107, align 8
  %arrayidx.i1275 = getelementptr i8, ptr %resizer, i32 -8504
  %34 = ptrtoint ptr %arrayidx.i1275 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i1275, align 4
  %add.ptr.i1276 = getelementptr i8, ptr %35, i32 40
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1276) #7, !srcloc !208
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug304, ptr noundef %33, ptr noundef nonnull @.str.14, i32 noundef %37) #7
  br label %do.body112

do.body112:                                       ; preds = %if.then106, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then124)) #7
          to label %do.body130 [label %if.then124], !srcloc !207

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #9
  %dev125 = getelementptr i8, ptr %resizer, i32 -8592
  %38 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev125, align 8
  %arrayidx.i1277 = getelementptr i8, ptr %resizer, i32 -8504
  %40 = ptrtoint ptr %arrayidx.i1277 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i1277, align 4
  %add.ptr.i1278 = getelementptr i8, ptr %41, i32 44
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1278) #7, !srcloc !208
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug305, ptr noundef %39, ptr noundef nonnull @.str.15, i32 noundef %43) #7
  br label %do.body130

do.body130:                                       ; preds = %if.then124, %do.body112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then142)) #7
          to label %do.body148 [label %if.then142], !srcloc !207

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %dev143 = getelementptr i8, ptr %resizer, i32 -8592
  %44 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev143, align 8
  %arrayidx.i1279 = getelementptr i8, ptr %resizer, i32 -8504
  %46 = ptrtoint ptr %arrayidx.i1279 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i1279, align 4
  %add.ptr.i1280 = getelementptr i8, ptr %47, i32 48
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1280) #7, !srcloc !208
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug306, ptr noundef %45, ptr noundef nonnull @.str.16, i32 noundef %49) #7
  br label %do.body148

do.body148:                                       ; preds = %if.then142, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then160)) #7
          to label %do.body166 [label %if.then160], !srcloc !207

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #9
  %dev161 = getelementptr i8, ptr %resizer, i32 -8592
  %50 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev161, align 8
  %arrayidx.i1281 = getelementptr i8, ptr %resizer, i32 -8504
  %52 = ptrtoint ptr %arrayidx.i1281 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i1281, align 4
  %add.ptr.i1282 = getelementptr i8, ptr %53, i32 52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1282) #7, !srcloc !208
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug307, ptr noundef %51, ptr noundef nonnull @.str.17, i32 noundef %55) #7
  br label %do.body166

do.body166:                                       ; preds = %if.then160, %do.body148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then178)) #7
          to label %do.body184 [label %if.then178], !srcloc !207

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #9
  %dev179 = getelementptr i8, ptr %resizer, i32 -8592
  %56 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev179, align 8
  %arrayidx.i1283 = getelementptr i8, ptr %resizer, i32 -8504
  %58 = ptrtoint ptr %arrayidx.i1283 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i1283, align 4
  %add.ptr.i1284 = getelementptr i8, ptr %59, i32 56
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1284) #7, !srcloc !208
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug308, ptr noundef %57, ptr noundef nonnull @.str.18, i32 noundef %61) #7
  br label %do.body184

do.body184:                                       ; preds = %if.then178, %do.body166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then196)) #7
          to label %do.body202 [label %if.then196], !srcloc !207

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %dev197 = getelementptr i8, ptr %resizer, i32 -8592
  %62 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev197, align 8
  %arrayidx.i1285 = getelementptr i8, ptr %resizer, i32 -8504
  %64 = ptrtoint ptr %arrayidx.i1285 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i1285, align 4
  %add.ptr.i1286 = getelementptr i8, ptr %65, i32 60
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1286) #7, !srcloc !208
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug309, ptr noundef %63, ptr noundef nonnull @.str.19, i32 noundef %67) #7
  br label %do.body202

do.body202:                                       ; preds = %if.then196, %do.body184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then214)) #7
          to label %do.body220 [label %if.then214], !srcloc !207

if.then214:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  %dev215 = getelementptr i8, ptr %resizer, i32 -8592
  %68 = ptrtoint ptr %dev215 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev215, align 8
  %arrayidx.i1287 = getelementptr i8, ptr %resizer, i32 -8504
  %70 = ptrtoint ptr %arrayidx.i1287 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i1287, align 4
  %add.ptr.i1288 = getelementptr i8, ptr %71, i32 64
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1288) #7, !srcloc !208
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug310, ptr noundef %69, ptr noundef nonnull @.str.20, i32 noundef %73) #7
  br label %do.body220

do.body220:                                       ; preds = %if.then214, %do.body202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then232)) #7
          to label %do.body238 [label %if.then232], !srcloc !207

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #9
  %dev233 = getelementptr i8, ptr %resizer, i32 -8592
  %74 = ptrtoint ptr %dev233 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev233, align 8
  %arrayidx.i1289 = getelementptr i8, ptr %resizer, i32 -8504
  %76 = ptrtoint ptr %arrayidx.i1289 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i1289, align 4
  %add.ptr.i1290 = getelementptr i8, ptr %77, i32 68
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1290) #7, !srcloc !208
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug311, ptr noundef %75, ptr noundef nonnull @.str.21, i32 noundef %79) #7
  br label %do.body238

do.body238:                                       ; preds = %if.then232, %do.body220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then250)) #7
          to label %do.body256 [label %if.then250], !srcloc !207

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #9
  %dev251 = getelementptr i8, ptr %resizer, i32 -8592
  %80 = ptrtoint ptr %dev251 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev251, align 8
  %arrayidx.i1291 = getelementptr i8, ptr %resizer, i32 -8504
  %82 = ptrtoint ptr %arrayidx.i1291 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i1291, align 4
  %add.ptr.i1292 = getelementptr i8, ptr %83, i32 72
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1292) #7, !srcloc !208
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug312, ptr noundef %81, ptr noundef nonnull @.str.22, i32 noundef %85) #7
  br label %do.body256

do.body256:                                       ; preds = %if.then250, %do.body238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then268)) #7
          to label %do.body274 [label %if.then268], !srcloc !207

if.then268:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #9
  %dev269 = getelementptr i8, ptr %resizer, i32 -8592
  %86 = ptrtoint ptr %dev269 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev269, align 8
  %arrayidx.i1293 = getelementptr i8, ptr %resizer, i32 -8504
  %88 = ptrtoint ptr %arrayidx.i1293 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i1293, align 4
  %add.ptr.i1294 = getelementptr i8, ptr %89, i32 76
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1294) #7, !srcloc !208
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug313, ptr noundef %87, ptr noundef nonnull @.str.23, i32 noundef %91) #7
  br label %do.body274

do.body274:                                       ; preds = %if.then268, %do.body256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then286)) #7
          to label %do.body292 [label %if.then286], !srcloc !207

if.then286:                                       ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #9
  %dev287 = getelementptr i8, ptr %resizer, i32 -8592
  %92 = ptrtoint ptr %dev287 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev287, align 8
  %arrayidx.i1295 = getelementptr i8, ptr %resizer, i32 -8504
  %94 = ptrtoint ptr %arrayidx.i1295 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i1295, align 4
  %add.ptr.i1296 = getelementptr i8, ptr %95, i32 84
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1296) #7, !srcloc !208
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug314, ptr noundef %93, ptr noundef nonnull @.str.24, i32 noundef %97) #7
  br label %do.body292

do.body292:                                       ; preds = %if.then286, %do.body274
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then304)) #7
          to label %do.body310 [label %if.then304], !srcloc !207

if.then304:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #9
  %dev305 = getelementptr i8, ptr %resizer, i32 -8592
  %98 = ptrtoint ptr %dev305 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev305, align 8
  %arrayidx.i1297 = getelementptr i8, ptr %resizer, i32 -8504
  %100 = ptrtoint ptr %arrayidx.i1297 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i1297, align 4
  %add.ptr.i1298 = getelementptr i8, ptr %101, i32 88
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1298) #7, !srcloc !208
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug315, ptr noundef %99, ptr noundef nonnull @.str.25, i32 noundef %103) #7
  br label %do.body310

do.body310:                                       ; preds = %if.then304, %do.body292
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then322)) #7
          to label %do.body328 [label %if.then322], !srcloc !207

if.then322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #9
  %dev323 = getelementptr i8, ptr %resizer, i32 -8592
  %104 = ptrtoint ptr %dev323 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev323, align 8
  %arrayidx.i1299 = getelementptr i8, ptr %resizer, i32 -8504
  %106 = ptrtoint ptr %arrayidx.i1299 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i1299, align 4
  %add.ptr.i1300 = getelementptr i8, ptr %107, i32 92
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1300) #7, !srcloc !208
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug316, ptr noundef %105, ptr noundef nonnull @.str.26, i32 noundef %109) #7
  br label %do.body328

do.body328:                                       ; preds = %if.then322, %do.body310
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then340)) #7
          to label %do.body346 [label %if.then340], !srcloc !207

if.then340:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #9
  %dev341 = getelementptr i8, ptr %resizer, i32 -8592
  %110 = ptrtoint ptr %dev341 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev341, align 8
  %arrayidx.i1301 = getelementptr i8, ptr %resizer, i32 -8504
  %112 = ptrtoint ptr %arrayidx.i1301 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i1301, align 4
  %add.ptr.i1302 = getelementptr i8, ptr %113, i32 96
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1302) #7, !srcloc !208
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug317, ptr noundef %111, ptr noundef nonnull @.str.27, i32 noundef %115) #7
  br label %do.body346

do.body346:                                       ; preds = %if.then340, %do.body328
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then358)) #7
          to label %do.body364 [label %if.then358], !srcloc !207

if.then358:                                       ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #9
  %dev359 = getelementptr i8, ptr %resizer, i32 -8592
  %116 = ptrtoint ptr %dev359 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev359, align 8
  %arrayidx.i1303 = getelementptr i8, ptr %resizer, i32 -8504
  %118 = ptrtoint ptr %arrayidx.i1303 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i1303, align 4
  %add.ptr.i1304 = getelementptr i8, ptr %119, i32 100
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1304) #7, !srcloc !208
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug318, ptr noundef %117, ptr noundef nonnull @.str.28, i32 noundef %121) #7
  br label %do.body364

do.body364:                                       ; preds = %if.then358, %do.body346
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then376)) #7
          to label %do.body382 [label %if.then376], !srcloc !207

if.then376:                                       ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #9
  %dev377 = getelementptr i8, ptr %resizer, i32 -8592
  %122 = ptrtoint ptr %dev377 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev377, align 8
  %arrayidx.i1305 = getelementptr i8, ptr %resizer, i32 -8504
  %124 = ptrtoint ptr %arrayidx.i1305 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i1305, align 4
  %add.ptr.i1306 = getelementptr i8, ptr %125, i32 104
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1306) #7, !srcloc !208
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug319, ptr noundef %123, ptr noundef nonnull @.str.29, i32 noundef %127) #7
  br label %do.body382

do.body382:                                       ; preds = %if.then376, %do.body364
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then394)) #7
          to label %do.body400 [label %if.then394], !srcloc !207

if.then394:                                       ; preds = %do.body382
  call void @__sanitizer_cov_trace_pc() #9
  %dev395 = getelementptr i8, ptr %resizer, i32 -8592
  %128 = ptrtoint ptr %dev395 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev395, align 8
  %arrayidx.i1307 = getelementptr i8, ptr %resizer, i32 -8504
  %130 = ptrtoint ptr %arrayidx.i1307 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i1307, align 4
  %add.ptr.i1308 = getelementptr i8, ptr %131, i32 108
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1308) #7, !srcloc !208
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug320, ptr noundef %129, ptr noundef nonnull @.str.30, i32 noundef %133) #7
  br label %do.body400

do.body400:                                       ; preds = %if.then394, %do.body382
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then412)) #7
          to label %do.body418 [label %if.then412], !srcloc !207

if.then412:                                       ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #9
  %dev413 = getelementptr i8, ptr %resizer, i32 -8592
  %134 = ptrtoint ptr %dev413 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev413, align 8
  %arrayidx.i1309 = getelementptr i8, ptr %resizer, i32 -8504
  %136 = ptrtoint ptr %arrayidx.i1309 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i1309, align 4
  %add.ptr.i1310 = getelementptr i8, ptr %137, i32 116
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1310) #7, !srcloc !208
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug321, ptr noundef %135, ptr noundef nonnull @.str.31, i32 noundef %139) #7
  br label %do.body418

do.body418:                                       ; preds = %if.then412, %do.body400
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then430)) #7
          to label %do.body436 [label %if.then430], !srcloc !207

if.then430:                                       ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #9
  %dev431 = getelementptr i8, ptr %resizer, i32 -8592
  %140 = ptrtoint ptr %dev431 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev431, align 8
  %arrayidx.i1311 = getelementptr i8, ptr %resizer, i32 -8504
  %142 = ptrtoint ptr %arrayidx.i1311 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i1311, align 4
  %add.ptr.i1312 = getelementptr i8, ptr %143, i32 120
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1312) #7, !srcloc !208
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug322, ptr noundef %141, ptr noundef nonnull @.str.32, i32 noundef %145) #7
  br label %do.body436

do.body436:                                       ; preds = %if.then430, %do.body418
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then448)) #7
          to label %do.body454 [label %if.then448], !srcloc !207

if.then448:                                       ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #9
  %dev449 = getelementptr i8, ptr %resizer, i32 -8592
  %146 = ptrtoint ptr %dev449 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev449, align 8
  %arrayidx.i1313 = getelementptr i8, ptr %resizer, i32 -8504
  %148 = ptrtoint ptr %arrayidx.i1313 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i1313, align 4
  %add.ptr.i1314 = getelementptr i8, ptr %149, i32 124
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1314) #7, !srcloc !208
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug323, ptr noundef %147, ptr noundef nonnull @.str.33, i32 noundef %151) #7
  br label %do.body454

do.body454:                                       ; preds = %if.then448, %do.body436
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then466)) #7
          to label %do.body472 [label %if.then466], !srcloc !207

if.then466:                                       ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #9
  %dev467 = getelementptr i8, ptr %resizer, i32 -8592
  %152 = ptrtoint ptr %dev467 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev467, align 8
  %arrayidx.i1315 = getelementptr i8, ptr %resizer, i32 -8504
  %154 = ptrtoint ptr %arrayidx.i1315 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i1315, align 4
  %add.ptr.i1316 = getelementptr i8, ptr %155, i32 128
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1316) #7, !srcloc !208
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug324, ptr noundef %153, ptr noundef nonnull @.str.34, i32 noundef %157) #7
  br label %do.body472

do.body472:                                       ; preds = %if.then466, %do.body454
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then484)) #7
          to label %do.body490 [label %if.then484], !srcloc !207

if.then484:                                       ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #9
  %dev485 = getelementptr i8, ptr %resizer, i32 -8592
  %158 = ptrtoint ptr %dev485 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev485, align 8
  %arrayidx.i1317 = getelementptr i8, ptr %resizer, i32 -8504
  %160 = ptrtoint ptr %arrayidx.i1317 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i1317, align 4
  %add.ptr.i1318 = getelementptr i8, ptr %161, i32 132
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1318) #7, !srcloc !208
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug325, ptr noundef %159, ptr noundef nonnull @.str.35, i32 noundef %163) #7
  br label %do.body490

do.body490:                                       ; preds = %if.then484, %do.body472
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then502)) #7
          to label %do.body508 [label %if.then502], !srcloc !207

if.then502:                                       ; preds = %do.body490
  call void @__sanitizer_cov_trace_pc() #9
  %dev503 = getelementptr i8, ptr %resizer, i32 -8592
  %164 = ptrtoint ptr %dev503 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev503, align 8
  %arrayidx.i1319 = getelementptr i8, ptr %resizer, i32 -8504
  %166 = ptrtoint ptr %arrayidx.i1319 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i1319, align 4
  %add.ptr.i1320 = getelementptr i8, ptr %167, i32 136
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1320) #7, !srcloc !208
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug326, ptr noundef %165, ptr noundef nonnull @.str.36, i32 noundef %169) #7
  br label %do.body508

do.body508:                                       ; preds = %if.then502, %do.body490
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then520)) #7
          to label %do.body526 [label %if.then520], !srcloc !207

if.then520:                                       ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #9
  %dev521 = getelementptr i8, ptr %resizer, i32 -8592
  %170 = ptrtoint ptr %dev521 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev521, align 8
  %arrayidx.i1321 = getelementptr i8, ptr %resizer, i32 -8504
  %172 = ptrtoint ptr %arrayidx.i1321 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx.i1321, align 4
  %add.ptr.i1322 = getelementptr i8, ptr %173, i32 140
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1322) #7, !srcloc !208
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug327, ptr noundef %171, ptr noundef nonnull @.str.37, i32 noundef %175) #7
  br label %do.body526

do.body526:                                       ; preds = %if.then520, %do.body508
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then538)) #7
          to label %do.body544 [label %if.then538], !srcloc !207

if.then538:                                       ; preds = %do.body526
  call void @__sanitizer_cov_trace_pc() #9
  %dev539 = getelementptr i8, ptr %resizer, i32 -8592
  %176 = ptrtoint ptr %dev539 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev539, align 8
  %arrayidx.i1323 = getelementptr i8, ptr %resizer, i32 -8504
  %178 = ptrtoint ptr %arrayidx.i1323 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i1323, align 4
  %add.ptr.i1324 = getelementptr i8, ptr %179, i32 144
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1324) #7, !srcloc !208
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug328, ptr noundef %177, ptr noundef nonnull @.str.38, i32 noundef %181) #7
  br label %do.body544

do.body544:                                       ; preds = %if.then538, %do.body526
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then556)) #7
          to label %do.body562 [label %if.then556], !srcloc !207

if.then556:                                       ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #9
  %dev557 = getelementptr i8, ptr %resizer, i32 -8592
  %182 = ptrtoint ptr %dev557 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev557, align 8
  %arrayidx.i1325 = getelementptr i8, ptr %resizer, i32 -8504
  %184 = ptrtoint ptr %arrayidx.i1325 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i1325, align 4
  %add.ptr.i1326 = getelementptr i8, ptr %185, i32 148
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1326) #7, !srcloc !208
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug329, ptr noundef %183, ptr noundef nonnull @.str.39, i32 noundef %187) #7
  br label %do.body562

do.body562:                                       ; preds = %if.then556, %do.body544
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then574)) #7
          to label %do.body580 [label %if.then574], !srcloc !207

if.then574:                                       ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #9
  %dev575 = getelementptr i8, ptr %resizer, i32 -8592
  %188 = ptrtoint ptr %dev575 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev575, align 8
  %arrayidx.i1327 = getelementptr i8, ptr %resizer, i32 -8504
  %190 = ptrtoint ptr %arrayidx.i1327 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i1327, align 4
  %add.ptr.i1328 = getelementptr i8, ptr %191, i32 152
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1328) #7, !srcloc !208
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug330, ptr noundef %189, ptr noundef nonnull @.str.40, i32 noundef %193) #7
  br label %do.body580

do.body580:                                       ; preds = %if.then574, %do.body562
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then592)) #7
          to label %do.body598 [label %if.then592], !srcloc !207

if.then592:                                       ; preds = %do.body580
  call void @__sanitizer_cov_trace_pc() #9
  %dev593 = getelementptr i8, ptr %resizer, i32 -8592
  %194 = ptrtoint ptr %dev593 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev593, align 8
  %arrayidx.i1329 = getelementptr i8, ptr %resizer, i32 -8504
  %196 = ptrtoint ptr %arrayidx.i1329 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.i1329, align 4
  %add.ptr.i1330 = getelementptr i8, ptr %197, i32 156
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1330) #7, !srcloc !208
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug331, ptr noundef %195, ptr noundef nonnull @.str.41, i32 noundef %199) #7
  br label %do.body598

do.body598:                                       ; preds = %if.then592, %do.body580
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then610)) #7
          to label %do.body616 [label %if.then610], !srcloc !207

if.then610:                                       ; preds = %do.body598
  call void @__sanitizer_cov_trace_pc() #9
  %dev611 = getelementptr i8, ptr %resizer, i32 -8592
  %200 = ptrtoint ptr %dev611 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev611, align 8
  %arrayidx.i1331 = getelementptr i8, ptr %resizer, i32 -8504
  %202 = ptrtoint ptr %arrayidx.i1331 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx.i1331, align 4
  %add.ptr.i1332 = getelementptr i8, ptr %203, i32 160
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1332) #7, !srcloc !208
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug332, ptr noundef %201, ptr noundef nonnull @.str.42, i32 noundef %205) #7
  br label %do.body616

do.body616:                                       ; preds = %if.then610, %do.body598
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then628)) #7
          to label %do.body634 [label %if.then628], !srcloc !207

if.then628:                                       ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #9
  %dev629 = getelementptr i8, ptr %resizer, i32 -8592
  %206 = ptrtoint ptr %dev629 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev629, align 8
  %arrayidx.i1333 = getelementptr i8, ptr %resizer, i32 -8504
  %208 = ptrtoint ptr %arrayidx.i1333 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx.i1333, align 4
  %add.ptr.i1334 = getelementptr i8, ptr %209, i32 164
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1334) #7, !srcloc !208
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug333, ptr noundef %207, ptr noundef nonnull @.str.43, i32 noundef %211) #7
  br label %do.body634

do.body634:                                       ; preds = %if.then628, %do.body616
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then646)) #7
          to label %do.body652 [label %if.then646], !srcloc !207

if.then646:                                       ; preds = %do.body634
  call void @__sanitizer_cov_trace_pc() #9
  %dev647 = getelementptr i8, ptr %resizer, i32 -8592
  %212 = ptrtoint ptr %dev647 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev647, align 8
  %arrayidx.i1335 = getelementptr i8, ptr %resizer, i32 -8504
  %214 = ptrtoint ptr %arrayidx.i1335 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i1335, align 4
  %add.ptr.i1336 = getelementptr i8, ptr %215, i32 168
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1336) #7, !srcloc !208
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug334, ptr noundef %213, ptr noundef nonnull @.str.44, i32 noundef %217) #7
  br label %do.body652

do.body652:                                       ; preds = %if.then646, %do.body634
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then664)) #7
          to label %do.body670 [label %if.then664], !srcloc !207

if.then664:                                       ; preds = %do.body652
  call void @__sanitizer_cov_trace_pc() #9
  %dev665 = getelementptr i8, ptr %resizer, i32 -8592
  %218 = ptrtoint ptr %dev665 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev665, align 8
  %arrayidx.i1337 = getelementptr i8, ptr %resizer, i32 -8504
  %220 = ptrtoint ptr %arrayidx.i1337 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx.i1337, align 4
  %add.ptr.i1338 = getelementptr i8, ptr %221, i32 176
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1338) #7, !srcloc !208
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug335, ptr noundef %219, ptr noundef nonnull @.str.45, i32 noundef %223) #7
  br label %do.body670

do.body670:                                       ; preds = %if.then664, %do.body652
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then682)) #7
          to label %do.body688 [label %if.then682], !srcloc !207

if.then682:                                       ; preds = %do.body670
  call void @__sanitizer_cov_trace_pc() #9
  %dev683 = getelementptr i8, ptr %resizer, i32 -8592
  %224 = ptrtoint ptr %dev683 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev683, align 8
  %arrayidx.i1339 = getelementptr i8, ptr %resizer, i32 -8504
  %226 = ptrtoint ptr %arrayidx.i1339 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx.i1339, align 4
  %add.ptr.i1340 = getelementptr i8, ptr %227, i32 180
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1340) #7, !srcloc !208
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug336, ptr noundef %225, ptr noundef nonnull @.str.46, i32 noundef %229) #7
  br label %do.body688

do.body688:                                       ; preds = %if.then682, %do.body670
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then700)) #7
          to label %do.body706 [label %if.then700], !srcloc !207

if.then700:                                       ; preds = %do.body688
  call void @__sanitizer_cov_trace_pc() #9
  %dev701 = getelementptr i8, ptr %resizer, i32 -8592
  %230 = ptrtoint ptr %dev701 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev701, align 8
  %arrayidx.i1341 = getelementptr i8, ptr %resizer, i32 -8504
  %232 = ptrtoint ptr %arrayidx.i1341 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx.i1341, align 4
  %add.ptr.i1342 = getelementptr i8, ptr %233, i32 184
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1342) #7, !srcloc !208
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug337, ptr noundef %231, ptr noundef nonnull @.str.47, i32 noundef %235) #7
  br label %do.body706

do.body706:                                       ; preds = %if.then700, %do.body688
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then718)) #7
          to label %do.body724 [label %if.then718], !srcloc !207

if.then718:                                       ; preds = %do.body706
  call void @__sanitizer_cov_trace_pc() #9
  %dev719 = getelementptr i8, ptr %resizer, i32 -8592
  %236 = ptrtoint ptr %dev719 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev719, align 8
  %arrayidx.i1343 = getelementptr i8, ptr %resizer, i32 -8504
  %238 = ptrtoint ptr %arrayidx.i1343 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx.i1343, align 4
  %add.ptr.i1344 = getelementptr i8, ptr %239, i32 188
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1344) #7, !srcloc !208
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug338, ptr noundef %237, ptr noundef nonnull @.str.48, i32 noundef %241) #7
  br label %do.body724

do.body724:                                       ; preds = %if.then718, %do.body706
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then736)) #7
          to label %do.body742 [label %if.then736], !srcloc !207

if.then736:                                       ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #9
  %dev737 = getelementptr i8, ptr %resizer, i32 -8592
  %242 = ptrtoint ptr %dev737 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev737, align 8
  %arrayidx.i1345 = getelementptr i8, ptr %resizer, i32 -8504
  %244 = ptrtoint ptr %arrayidx.i1345 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx.i1345, align 4
  %add.ptr.i1346 = getelementptr i8, ptr %245, i32 208
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1346) #7, !srcloc !208
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug339, ptr noundef %243, ptr noundef nonnull @.str.49, i32 noundef %247) #7
  br label %do.body742

do.body742:                                       ; preds = %if.then736, %do.body724
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then754)) #7
          to label %do.body760 [label %if.then754], !srcloc !207

if.then754:                                       ; preds = %do.body742
  call void @__sanitizer_cov_trace_pc() #9
  %dev755 = getelementptr i8, ptr %resizer, i32 -8592
  %248 = ptrtoint ptr %dev755 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev755, align 8
  %arrayidx.i1347 = getelementptr i8, ptr %resizer, i32 -8504
  %250 = ptrtoint ptr %arrayidx.i1347 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx.i1347, align 4
  %add.ptr.i1348 = getelementptr i8, ptr %251, i32 212
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1348) #7, !srcloc !208
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug340, ptr noundef %249, ptr noundef nonnull @.str.50, i32 noundef %253) #7
  br label %do.body760

do.body760:                                       ; preds = %if.then754, %do.body742
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then772)) #7
          to label %do.body778 [label %if.then772], !srcloc !207

if.then772:                                       ; preds = %do.body760
  call void @__sanitizer_cov_trace_pc() #9
  %dev773 = getelementptr i8, ptr %resizer, i32 -8592
  %254 = ptrtoint ptr %dev773 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev773, align 8
  %arrayidx.i1349 = getelementptr i8, ptr %resizer, i32 -8504
  %256 = ptrtoint ptr %arrayidx.i1349 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx.i1349, align 4
  %add.ptr.i1350 = getelementptr i8, ptr %257, i32 216
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1350) #7, !srcloc !208
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug341, ptr noundef %255, ptr noundef nonnull @.str.51, i32 noundef %259) #7
  br label %do.body778

do.body778:                                       ; preds = %if.then772, %do.body760
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then790)) #7
          to label %do.body796 [label %if.then790], !srcloc !207

if.then790:                                       ; preds = %do.body778
  call void @__sanitizer_cov_trace_pc() #9
  %dev791 = getelementptr i8, ptr %resizer, i32 -8592
  %260 = ptrtoint ptr %dev791 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev791, align 8
  %arrayidx.i1351 = getelementptr i8, ptr %resizer, i32 -8504
  %262 = ptrtoint ptr %arrayidx.i1351 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i1351, align 4
  %add.ptr.i1352 = getelementptr i8, ptr %263, i32 220
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1352) #7, !srcloc !208
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug342, ptr noundef %261, ptr noundef nonnull @.str.52, i32 noundef %265) #7
  br label %do.body796

do.body796:                                       ; preds = %if.then790, %do.body778
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then808)) #7
          to label %do.body814 [label %if.then808], !srcloc !207

if.then808:                                       ; preds = %do.body796
  call void @__sanitizer_cov_trace_pc() #9
  %dev809 = getelementptr i8, ptr %resizer, i32 -8592
  %266 = ptrtoint ptr %dev809 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev809, align 8
  %arrayidx.i1353 = getelementptr i8, ptr %resizer, i32 -8504
  %268 = ptrtoint ptr %arrayidx.i1353 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx.i1353, align 4
  %add.ptr.i1354 = getelementptr i8, ptr %269, i32 224
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1354) #7, !srcloc !208
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug343, ptr noundef %267, ptr noundef nonnull @.str.53, i32 noundef %271) #7
  br label %do.body814

do.body814:                                       ; preds = %if.then808, %do.body796
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then826)) #7
          to label %do.body832 [label %if.then826], !srcloc !207

if.then826:                                       ; preds = %do.body814
  call void @__sanitizer_cov_trace_pc() #9
  %dev827 = getelementptr i8, ptr %resizer, i32 -8592
  %272 = ptrtoint ptr %dev827 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev827, align 8
  %arrayidx.i1355 = getelementptr i8, ptr %resizer, i32 -8504
  %274 = ptrtoint ptr %arrayidx.i1355 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx.i1355, align 4
  %add.ptr.i1356 = getelementptr i8, ptr %275, i32 228
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1356) #7, !srcloc !208
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug344, ptr noundef %273, ptr noundef nonnull @.str.54, i32 noundef %277) #7
  br label %do.body832

do.body832:                                       ; preds = %if.then826, %do.body814
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then844)) #7
          to label %do.body850 [label %if.then844], !srcloc !207

if.then844:                                       ; preds = %do.body832
  call void @__sanitizer_cov_trace_pc() #9
  %dev845 = getelementptr i8, ptr %resizer, i32 -8592
  %278 = ptrtoint ptr %dev845 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev845, align 8
  %arrayidx.i1357 = getelementptr i8, ptr %resizer, i32 -8504
  %280 = ptrtoint ptr %arrayidx.i1357 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx.i1357, align 4
  %add.ptr.i1358 = getelementptr i8, ptr %281, i32 232
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1358) #7, !srcloc !208
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug345, ptr noundef %279, ptr noundef nonnull @.str.55, i32 noundef %283) #7
  br label %do.body850

do.body850:                                       ; preds = %if.then844, %do.body832
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then862)) #7
          to label %do.body868 [label %if.then862], !srcloc !207

if.then862:                                       ; preds = %do.body850
  call void @__sanitizer_cov_trace_pc() #9
  %dev863 = getelementptr i8, ptr %resizer, i32 -8592
  %284 = ptrtoint ptr %dev863 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev863, align 8
  %arrayidx.i1359 = getelementptr i8, ptr %resizer, i32 -8504
  %286 = ptrtoint ptr %arrayidx.i1359 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i1359, align 4
  %add.ptr.i1360 = getelementptr i8, ptr %287, i32 236
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1360) #7, !srcloc !208
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug346, ptr noundef %285, ptr noundef nonnull @.str.56, i32 noundef %289) #7
  br label %do.body868

do.body868:                                       ; preds = %if.then862, %do.body850
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then880)) #7
          to label %do.body886 [label %if.then880], !srcloc !207

if.then880:                                       ; preds = %do.body868
  call void @__sanitizer_cov_trace_pc() #9
  %dev881 = getelementptr i8, ptr %resizer, i32 -8592
  %290 = ptrtoint ptr %dev881 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev881, align 8
  %arrayidx.i1361 = getelementptr i8, ptr %resizer, i32 -8504
  %292 = ptrtoint ptr %arrayidx.i1361 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx.i1361, align 4
  %add.ptr.i1362 = getelementptr i8, ptr %293, i32 240
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1362) #7, !srcloc !208
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug347, ptr noundef %291, ptr noundef nonnull @.str.57, i32 noundef %295) #7
  br label %do.body886

do.body886:                                       ; preds = %if.then880, %do.body868
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then898)) #7
          to label %do.body904 [label %if.then898], !srcloc !207

if.then898:                                       ; preds = %do.body886
  call void @__sanitizer_cov_trace_pc() #9
  %dev899 = getelementptr i8, ptr %resizer, i32 -8592
  %296 = ptrtoint ptr %dev899 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dev899, align 8
  %arrayidx.i1363 = getelementptr i8, ptr %resizer, i32 -8504
  %298 = ptrtoint ptr %arrayidx.i1363 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %arrayidx.i1363, align 4
  %add.ptr.i1364 = getelementptr i8, ptr %299, i32 244
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1364) #7, !srcloc !208
  %301 = tail call i32 @llvm.bswap.i32(i32 %300) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug348, ptr noundef %297, ptr noundef nonnull @.str.58, i32 noundef %301) #7
  br label %do.body904

do.body904:                                       ; preds = %if.then898, %do.body886
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then916)) #7
          to label %do.body922 [label %if.then916], !srcloc !207

if.then916:                                       ; preds = %do.body904
  call void @__sanitizer_cov_trace_pc() #9
  %dev917 = getelementptr i8, ptr %resizer, i32 -8592
  %302 = ptrtoint ptr %dev917 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dev917, align 8
  %arrayidx.i1365 = getelementptr i8, ptr %resizer, i32 -8504
  %304 = ptrtoint ptr %arrayidx.i1365 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx.i1365, align 4
  %add.ptr.i1366 = getelementptr i8, ptr %305, i32 248
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1366) #7, !srcloc !208
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug349, ptr noundef %303, ptr noundef nonnull @.str.59, i32 noundef %307) #7
  br label %do.body922

do.body922:                                       ; preds = %if.then916, %do.body904
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then934)) #7
          to label %do.body940 [label %if.then934], !srcloc !207

if.then934:                                       ; preds = %do.body922
  call void @__sanitizer_cov_trace_pc() #9
  %dev935 = getelementptr i8, ptr %resizer, i32 -8592
  %308 = ptrtoint ptr %dev935 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev935, align 8
  %arrayidx.i1367 = getelementptr i8, ptr %resizer, i32 -8504
  %310 = ptrtoint ptr %arrayidx.i1367 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx.i1367, align 4
  %add.ptr.i1368 = getelementptr i8, ptr %311, i32 252
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1368) #7, !srcloc !208
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug350, ptr noundef %309, ptr noundef nonnull @.str.60, i32 noundef %313) #7
  br label %do.body940

do.body940:                                       ; preds = %if.then934, %do.body922
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then952)) #7
          to label %do.body958 [label %if.then952], !srcloc !207

if.then952:                                       ; preds = %do.body940
  call void @__sanitizer_cov_trace_pc() #9
  %dev953 = getelementptr i8, ptr %resizer, i32 -8592
  %314 = ptrtoint ptr %dev953 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev953, align 8
  %arrayidx.i1369 = getelementptr i8, ptr %resizer, i32 -8504
  %316 = ptrtoint ptr %arrayidx.i1369 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx.i1369, align 4
  %add.ptr.i1370 = getelementptr i8, ptr %317, i32 256
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1370) #7, !srcloc !208
  %319 = tail call i32 @llvm.bswap.i32(i32 %318) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug351, ptr noundef %315, ptr noundef nonnull @.str.61, i32 noundef %319) #7
  br label %do.body958

do.body958:                                       ; preds = %if.then952, %do.body940
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then970)) #7
          to label %do.body976 [label %if.then970], !srcloc !207

if.then970:                                       ; preds = %do.body958
  call void @__sanitizer_cov_trace_pc() #9
  %dev971 = getelementptr i8, ptr %resizer, i32 -8592
  %320 = ptrtoint ptr %dev971 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev971, align 8
  %arrayidx.i1371 = getelementptr i8, ptr %resizer, i32 -8504
  %322 = ptrtoint ptr %arrayidx.i1371 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx.i1371, align 4
  %add.ptr.i1372 = getelementptr i8, ptr %323, i32 260
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1372) #7, !srcloc !208
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug352, ptr noundef %321, ptr noundef nonnull @.str.62, i32 noundef %325) #7
  br label %do.body976

do.body976:                                       ; preds = %if.then970, %do.body958
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resizer_print_status.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resizer_print_status, %if.then988)) #7
          to label %do.end992 [label %if.then988], !srcloc !207

if.then988:                                       ; preds = %do.body976
  call void @__sanitizer_cov_trace_pc() #9
  %dev989 = getelementptr i8, ptr %resizer, i32 -8592
  %326 = ptrtoint ptr %dev989 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dev989, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resizer_print_status.__UNIQUE_ID_ddebug353, ptr noundef %327, ptr noundef nonnull @.str.63) #7
  br label %do.end992

do.end992:                                        ; preds = %if.then988, %do.body976
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x i32], ptr @resizer_fmts, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %9 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb3
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not.i.i.not = icmp eq i16 %12, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !212

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  br label %__resizer_get_format.exit

if.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 0
  br label %__resizer_get_format.exit

__resizer_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %14, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %index5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %15 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp eq i32 %16, 0
  %code8 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %code8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code8, align 4
  br i1 %cmp6, label %__resizer_get_format.exit.cleanup.sink.split_crit_edge, label %if.end10

__resizer_get_format.exit.cleanup.sink.split_crit_edge: ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %18)
  %cond = icmp eq i32 %18, 8207
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp14 = icmp eq i32 %16, 1
  %or.cond = select i1 %cond, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.end10.cleanup.sink.split_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10.cleanup.sink.split_crit_edge, %__resizer_get_format.exit.cleanup.sink.split_crit_edge, %if.end
  %.sink = phi i32 [ %8, %if.end ], [ %18, %__resizer_get_format.exit.cleanup.sink.split_crit_edge ], [ 8196, %if.end10.cleanup.sink.split_crit_edge ]
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %19 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %code2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %7, label %if.end.resizer_try_format.exit_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb29.i
  ]

if.end.resizer_try_format.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit

for.cond.preheader.i:                             ; preds = %if.end
  %9 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %5, label %for.cond.1.i [
    i32 8207, label %for.cond.preheader.i.resizer_try_format.exit_crit_edge
    i32 8209, label %for.cond.preheader.i.resizer_try_format.exit_crit_edge98
  ]

for.cond.preheader.i.resizer_try_format.exit_crit_edge98: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit

for.cond.preheader.i.resizer_try_format.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit

for.cond.1.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit

sw.bb29.i:                                        ; preds = %if.end
  %10 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb29.i
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.i.not.i = icmp eq i16 %13, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !212

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  br label %__resizer_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 0
  br label %__resizer_get_format.exit.i

__resizer_get_format.exit.i:                      ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %15, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %16 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %format.sroa.0.0.copyload = load i32, ptr %retval.0.i.i, align 4
  %format.sroa.17.0.retval.0.i.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i, i32 4
  %17 = ptrtoint ptr %format.sroa.17.0.retval.0.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %format.sroa.17.0.copyload = load i32, ptr %format.sroa.17.0.retval.0.i.i.sroa_idx, align 4
  %format.sroa.27.0.retval.0.i.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i, i32 8
  %18 = ptrtoint ptr %format.sroa.27.0.retval.0.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %format.sroa.27.0.copyload = load i32, ptr %format.sroa.27.0.retval.0.i.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %5)
  %cmp31.i = icmp eq i32 %5, 8196
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %format.sroa.27.0.copyload)
  %cmp33.i = icmp eq i32 %format.sroa.27.0.copyload, 8207
  %or.cond = select i1 %cmp31.i, i1 %cmp33.i, i1 false
  %format.sroa.27.1 = select i1 %or.cond, i32 8196, i32 %format.sroa.27.0.copyload
  %add.i = add i32 %format.sroa.0.0.copyload, 15
  %and.i = and i32 %add.i, -16
  %19 = tail call i32 @llvm.umin.i32(i32 %and.i, i32 32) #7
  %20 = tail call i32 @llvm.umin.i32(i32 %format.sroa.17.0.copyload, i32 32) #7
  br label %resizer_try_format.exit

resizer_try_format.exit:                          ; preds = %__resizer_get_format.exit.i, %for.cond.1.i, %for.cond.preheader.i.resizer_try_format.exit_crit_edge, %for.cond.preheader.i.resizer_try_format.exit_crit_edge98, %if.end.resizer_try_format.exit_crit_edge
  %format.sroa.0.1 = phi i32 [ 1, %if.end.resizer_try_format.exit_crit_edge ], [ %19, %__resizer_get_format.exit.i ], [ 1, %for.cond.1.i ], [ 1, %for.cond.preheader.i.resizer_try_format.exit_crit_edge ], [ 1, %for.cond.preheader.i.resizer_try_format.exit_crit_edge98 ]
  %format.sroa.17.0 = phi i32 [ 1, %if.end.resizer_try_format.exit_crit_edge ], [ %20, %__resizer_get_format.exit.i ], [ 1, %for.cond.1.i ], [ 1, %for.cond.preheader.i.resizer_try_format.exit_crit_edge ], [ 1, %for.cond.preheader.i.resizer_try_format.exit_crit_edge98 ]
  %format.sroa.27.3 = phi i32 [ %5, %if.end.resizer_try_format.exit_crit_edge ], [ %format.sroa.27.1, %__resizer_get_format.exit.i ], [ 8207, %for.cond.1.i ], [ %5, %for.cond.preheader.i.resizer_try_format.exit_crit_edge ], [ %5, %for.cond.preheader.i.resizer_try_format.exit_crit_edge98 ]
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %21 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %format.sroa.0.1, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %22 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %format.sroa.17.0, ptr %min_height, align 4
  %23 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %format.sroa.27.3, i32 %24)
  %cmp6.not = icmp eq i32 %format.sroa.27.3, %24
  br i1 %cmp6.not, label %if.end8, label %resizer_try_format.exit.cleanup_crit_edge

resizer_try_format.exit.cleanup_crit_edge:        ; preds = %resizer_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %resizer_try_format.exit
  %25 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pad, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %26, label %if.end8.resizer_try_format.exit60_crit_edge [
    i32 0, label %for.cond.preheader.i33
    i32 1, label %sw.bb29.i38
  ]

if.end8.resizer_try_format.exit60_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit60

for.cond.preheader.i33:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit60

sw.bb29.i38:                                      ; preds = %if.end8
  %28 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i37 = icmp eq i32 %29, 0
  br i1 %cmp.i.i37, label %if.then.i.i41, label %if.end.i.i45

if.then.i.i41:                                    ; preds = %sw.bb29.i38
  %num_pads.i.i.i39 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %num_pads.i.i.i39 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_pads.i.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.not.i.i.not.i40 = icmp eq i16 %31, 0
  br i1 %cmp.not.i.i.not.i40, label %do.end.i.i.i42, label %if.then.i.i41.v4l2_subdev_get_try_format.exit.i.i43_crit_edge, !prof !212

if.then.i.i41.v4l2_subdev_get_try_format.exit.i.i43_crit_edge: ; preds = %if.then.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i43

do.end.i.i.i42:                                   ; preds = %if.then.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i43

v4l2_subdev_get_try_format.exit.i.i43:            ; preds = %do.end.i.i.i42, %if.then.i.i41.v4l2_subdev_get_try_format.exit.i.i43_crit_edge
  %32 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd_state, align 4
  br label %__resizer_get_format.exit.i48

if.end.i.i45:                                     ; preds = %sw.bb29.i38
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i44 = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 0
  br label %__resizer_get_format.exit.i48

__resizer_get_format.exit.i48:                    ; preds = %if.end.i.i45, %v4l2_subdev_get_try_format.exit.i.i43
  %retval.0.i.i46 = phi ptr [ %33, %v4l2_subdev_get_try_format.exit.i.i43 ], [ %arrayidx.i.i44, %if.end.i.i45 ]
  %34 = ptrtoint ptr %retval.0.i.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %format.sroa.0.0.copyload66 = load i32, ptr %retval.0.i.i46, align 4
  %format.sroa.17.0.retval.0.i.i46.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i46, i32 4
  %35 = ptrtoint ptr %format.sroa.17.0.retval.0.i.i46.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %format.sroa.17.0.copyload67 = load i32, ptr %format.sroa.17.0.retval.0.i.i46.sroa_idx, align 4
  %add.i52 = add i32 %format.sroa.0.0.copyload66, 15
  %and.i53 = and i32 %add.i52, -16
  br label %resizer_try_format.exit60

resizer_try_format.exit60:                        ; preds = %__resizer_get_format.exit.i48, %for.cond.preheader.i33, %if.end8.resizer_try_format.exit60_crit_edge
  %format.sroa.0.3 = phi i32 [ -1, %if.end8.resizer_try_format.exit60_crit_edge ], [ %and.i53, %__resizer_get_format.exit.i48 ], [ 8192, %for.cond.preheader.i33 ]
  %format.sroa.17.1 = phi i32 [ -1, %if.end8.resizer_try_format.exit60_crit_edge ], [ %format.sroa.17.0.copyload67, %__resizer_get_format.exit.i48 ], [ 8192, %for.cond.preheader.i33 ]
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %36 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %format.sroa.0.3, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %37 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %format.sroa.17.1, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %resizer_try_format.exit60, %resizer_try_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %resizer_try_format.exit60 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %resizer_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !213

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__resizer_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__resizer_get_format.exit

__resizer_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__resizer_get_format.exit.cleanup_crit_edge, label %if.end

__resizer_get_format.exit.cleanup_crit_edge:      ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__resizer_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__resizer_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !213

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__resizer_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__resizer_get_format.exit

__resizer_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__resizer_get_format.exit.cleanup_crit_edge, label %if.end

__resizer_get_format.exit.cleanup_crit_edge:      ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__resizer_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @resizer_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
  %14 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i32 = icmp eq i32 %18, 0
  br i1 %cmp.i32, label %if.then.i36, label %if.end.i42

if.then.i36:                                      ; preds = %if.then7
  %num_pads.i.i33 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i33 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %20)
  %cmp.not.i.i35 = icmp ugt i16 %20, 1
  br i1 %cmp.not.i.i35, label %if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge, label %do.end.i.i37, !prof !213

if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge: ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i40

do.end.i.i37:                                     ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i40

v4l2_subdev_get_try_format.exit.i40:              ; preds = %do.end.i.i37, %if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge
  %spec.select.i.i38 = phi i32 [ 0, %do.end.i.i37 ], [ 1, %if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i39 = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i.i38
  br label %__resizer_get_format.exit44

if.end.i42:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i41 = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 1
  br label %__resizer_get_format.exit44

__resizer_get_format.exit44:                      ; preds = %if.end.i42, %v4l2_subdev_get_try_format.exit.i40
  %retval.0.i43 = phi ptr [ %arrayidx.i.i39, %v4l2_subdev_get_try_format.exit.i40 ], [ %arrayidx.i41, %if.end.i42 ]
  %23 = call ptr @memcpy(ptr %retval.0.i43, ptr %format3, i32 48)
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %26 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval.0.i43, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i43, i32 0, i32 1
  %28 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height2.i, align 4
  %code30.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i43, i32 0, i32 2
  %30 = ptrtoint ptr %code30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %code30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %__resizer_get_format.exit44
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.not.i.i.not.i = icmp eq i16 %33, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !212

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %34 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd_state, align 4
  br label %__resizer_get_format.exit.i

if.end.i.i:                                       ; preds = %__resizer_get_format.exit44
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i45 = getelementptr %struct.iss_resizer_device, ptr %1, i32 0, i32 2, i32 0
  br label %__resizer_get_format.exit.i

__resizer_get_format.exit.i:                      ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %35, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i45, %if.end.i.i ]
  %36 = call ptr @memcpy(ptr %retval.0.i43, ptr %retval.0.i.i, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %31)
  %cmp31.i = icmp eq i32 %31, 8196
  br i1 %cmp31.i, label %land.lhs.true.i, label %__resizer_get_format.exit.i.resizer_try_format.exit_crit_edge

__resizer_get_format.exit.i.resizer_try_format.exit_crit_edge: ; preds = %__resizer_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit

land.lhs.true.i:                                  ; preds = %__resizer_get_format.exit.i
  %37 = ptrtoint ptr %code30.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %38)
  %cmp33.i = icmp eq i32 %38, 8207
  br i1 %cmp33.i, label %if.then34.i, label %land.lhs.true.i.resizer_try_format.exit_crit_edge

land.lhs.true.i.resizer_try_format.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %resizer_try_format.exit

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %code30.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8196, ptr %code30.i, align 4
  br label %resizer_try_format.exit

resizer_try_format.exit:                          ; preds = %if.then34.i, %land.lhs.true.i.resizer_try_format.exit_crit_edge, %__resizer_get_format.exit.i.resizer_try_format.exit_crit_edge
  %40 = tail call i32 @llvm.umax.i32(i32 %27, i32 32) #7
  %41 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retval.0.i43, align 4
  %add.i = add i32 %42, 15
  %and.i = and i32 %add.i, -16
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %and.i) #7
  %and52.i = and i32 %43, -16
  %44 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and52.i, ptr %retval.0.i43, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %29, i32 32) #7
  %46 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height2.i, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %45, i32 %47) #7
  %49 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %height2.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i43, i32 0, i32 4
  %50 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i43, i32 0, i32 3
  %51 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %resizer_try_format.exit, %if.end.cleanup_crit_edge, %__resizer_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__resizer_get_format.exit.cleanup_crit_edge ], [ 0, %resizer_try_format.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @resizer_link_validate(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %link, ptr nocapture noundef readonly %source_fmt, ptr nocapture noundef readonly %sink_fmt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt, i32 0, i32 2
  %2 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6.not = icmp eq i32 %5, %7
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %source_fmt, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %code, align 4
  %code9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10.not = icmp eq i32 %9, %11
  %. = select i1 %cmp10.not, i32 0, i32 -32
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -32, %lor.lhs.false.return_crit_edge ], [ -32, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resizer_try_format(ptr nocapture noundef readonly %resizer, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %height2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %4 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb29
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %6, label %for.cond.1 [
    i32 8207, label %for.cond.preheader.if.end7_crit_edge
    i32 8209, label %for.cond.preheader.if.end7_crit_edge112
  ]

for.cond.preheader.if.end7_crit_edge112:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.1:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8207, ptr %code, align 4
  br label %if.end7

if.end7:                                          ; preds = %for.cond.1, %for.cond.preheader.if.end7_crit_edge, %for.cond.preheader.if.end7_crit_edge112
  %9 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 8192)
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8192)
  br label %sw.epilog.sink.split

sw.bb29:                                          ; preds = %entry
  %code30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %14 = ptrtoint ptr %code30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb29
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %resizer, i32 0, i32 5
  %16 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not.i.i.not = icmp eq i16 %17, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !212

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  br label %__resizer_get_format.exit

if.end.i:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_resizer_device, ptr %resizer, i32 0, i32 2, i32 0
  br label %__resizer_get_format.exit

__resizer_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %19, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %20 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %15)
  %cmp31 = icmp eq i32 %15, 8196
  br i1 %cmp31, label %land.lhs.true, label %__resizer_get_format.exit.if.end36_crit_edge

__resizer_get_format.exit.if.end36_crit_edge:     ; preds = %__resizer_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %__resizer_get_format.exit
  %21 = ptrtoint ptr %code30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8207, i32 %22)
  %cmp33 = icmp eq i32 %22, 8207
  br i1 %cmp33, label %if.then34, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %code30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8196, ptr %code30, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true.if.end36_crit_edge, %__resizer_get_format.exit.if.end36_crit_edge
  %24 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt, align 4
  %add = add i32 %26, 15
  %and = and i32 %add, -16
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %and)
  %and52 = and i32 %27, -16
  %28 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and52, ptr %fmt, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %3, i32 32)
  %30 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height2, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %29, i32 %31)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end36, %if.end7
  %.sink = phi i32 [ %32, %if.end36 ], [ %13, %if.end7 ]
  %33 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %height2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %34 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 7, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %35 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %field, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @resizer_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %index5 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %2 = ptrtoint ptr %index5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index5, align 4
  %conv = zext i16 %3 to i32
  %entity6 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity6, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  %or = or i32 %conv, 131072
  %spec.select = select i1 %cmp.i, i32 %or, i32 %conv
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit.thread:          ; preds = %is_media_entity_v4l2_subdev.exit, %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge
  %8 = phi i32 [ %conv, %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge ], [ %spec.select, %is_media_entity_v4l2_subdev.exit ]
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 131072, label %sw.bb
    i32 1, label %sw.bb30
  ]

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %input = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 3
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %input, align 4
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %ipipeif = getelementptr i8, ptr %1, i32 -2856
  %cmp17 = icmp eq ptr %5, %ipipeif
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %input, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %ipipe = getelementptr i8, ptr %1, i32 -432
  %cmp24 = icmp eq ptr %5, %ipipe
  br i1 %cmp24, label %if.then26, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %input, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and31 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %output41 = getelementptr inbounds %struct.iss_resizer_device, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %output41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %output41, align 8
  br i1 %tobool32.not, label %if.else40, label %if.then33

if.then33:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %tobool35.not = icmp ult i32 %16, 2
  br i1 %tobool35.not, label %if.end37, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %or39 = or i32 %16, 1
  %17 = ptrtoint ptr %output41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or39, ptr %output41, align 8
  br label %cleanup

if.else40:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %and42 = and i32 %16, -2
  %18 = ptrtoint ptr %output41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and42, ptr %output41, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else40, %if.end37, %if.then33.cleanup_crit_edge, %if.then26, %if.else.cleanup_crit_edge, %if.then19, %if.end10.cleanup_crit_edge, %if.then9, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end10.cleanup_crit_edge ], [ -16, %if.then33.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge ], [ 0, %if.end37 ], [ 0, %if.else40 ], [ 0, %if.then19 ], [ 0, %if.then26 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resizer_video_queue(ptr nocapture noundef %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr i8, ptr %video, i32 -8
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %video, i32 -368
  %iss_addr = getelementptr inbounds %struct.iss_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %iss_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iss_addr, align 8
  tail call fastcc void @resizer_set_outaddr(ptr noundef %add.ptr, i32 noundef %3)
  %dmaqueue_flags = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 18
  %4 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmaqueue_flags, align 8
  %and1 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr i8, ptr %video, i32 -8872
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %9) #7, !srcloc !211
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %13, i32 120
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %15 = or i32 %14, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i9.i = getelementptr i8, ptr %17, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i9.i, i32 %15) #7, !srcloc !211
  %18 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !190, !192, !194, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 294, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @omap4iss_resizer_isr.__UNIQUE_ID_ddebug354, !1, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!6 = !{ptr @omap4iss_resizer_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 855, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 785, i32 20}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 808, i32 50}
!13 = !{ptr @resizer_v4l2_ops, !14, !"resizer_v4l2_ops", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 690, i32 37}
!15 = !{ptr @resizer_v4l2_video_ops, !16, !"resizer_v4l2_video_ops", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 676, i32 43}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 45, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug298, !18, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 47, i32 2}
!23 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug299, !22, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 48, i32 2}
!26 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug300, !25, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 49, i32 2}
!29 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug301, !28, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 50, i32 2}
!32 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug302, !31, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 51, i32 2}
!35 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug303, !34, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 52, i32 2}
!38 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug304, !37, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 53, i32 2}
!41 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug305, !40, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 54, i32 2}
!44 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug306, !43, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 55, i32 2}
!47 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug307, !46, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 56, i32 2}
!50 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug308, !49, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 57, i32 2}
!53 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug309, !52, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 58, i32 2}
!56 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug310, !55, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 59, i32 2}
!59 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug311, !58, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 60, i32 2}
!62 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug312, !61, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 61, i32 2}
!65 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug313, !64, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 62, i32 2}
!68 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug314, !67, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 63, i32 2}
!71 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug315, !70, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 64, i32 2}
!74 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug316, !73, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 65, i32 2}
!77 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug317, !76, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 66, i32 2}
!80 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug318, !79, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 67, i32 2}
!83 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug319, !82, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 68, i32 2}
!86 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug320, !85, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 69, i32 2}
!89 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug321, !88, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 71, i32 2}
!92 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug322, !91, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 72, i32 2}
!95 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug323, !94, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 73, i32 2}
!98 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug324, !97, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 74, i32 2}
!101 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug325, !100, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 75, i32 2}
!104 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug326, !103, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 76, i32 2}
!107 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug327, !106, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 77, i32 2}
!110 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug328, !109, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 78, i32 2}
!113 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug329, !112, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 79, i32 2}
!116 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug330, !115, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 80, i32 2}
!119 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug331, !118, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 81, i32 2}
!122 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug332, !121, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 82, i32 2}
!125 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug333, !124, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 83, i32 2}
!128 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug334, !127, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!129 = !{ptr @.str.45, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 84, i32 2}
!131 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug335, !130, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 85, i32 2}
!134 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug336, !133, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 86, i32 2}
!137 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug337, !136, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 87, i32 2}
!140 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug338, !139, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 88, i32 2}
!143 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug339, !142, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 89, i32 2}
!146 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug340, !145, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!147 = !{ptr @.str.51, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 90, i32 2}
!149 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug341, !148, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!150 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 91, i32 2}
!152 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug342, !151, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!153 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 92, i32 2}
!155 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug343, !154, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!156 = !{ptr @.str.54, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 93, i32 2}
!158 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug344, !157, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 94, i32 2}
!161 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug345, !160, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!162 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 95, i32 2}
!164 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug346, !163, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 96, i32 2}
!167 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug347, !166, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!168 = !{ptr @.str.58, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 97, i32 2}
!170 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug348, !169, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!171 = !{ptr @.str.59, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 98, i32 2}
!173 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug349, !172, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!174 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 99, i32 2}
!176 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug350, !175, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!177 = !{ptr @.str.61, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 100, i32 2}
!179 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug351, !178, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!180 = !{ptr @.str.62, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 101, i32 2}
!182 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug352, !181, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 103, i32 2}
!185 = !{ptr @resizer_print_status.__UNIQUE_ID_ddebug353, !184, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!186 = !{ptr @resizer_v4l2_pad_ops, !187, !"resizer_v4l2_pad_ops", i1 false, i1 false}
!187 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 681, i32 41}
!188 = !{ptr @resizer_fmts, !189, !"resizer_fmts", i1 false, i1 false}
!189 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 22, i32 27}
!190 = !{ptr @.str.64, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!192 = !{ptr @resizer_v4l2_internal_ops, !193, !"resizer_v4l2_internal_ops", i1 false, i1 false}
!193 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 696, i32 46}
!194 = !{ptr @resizer_media_ops, !195, !"resizer_media_ops", i1 false, i1 false}
!195 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 763, i32 45}
!196 = !{ptr @resizer_video_ops, !197, !"resizer_video_ops", i1 false, i1 false}
!197 = !{!"../drivers/staging/media/omap4iss/iss_resizer.c", i32 337, i32 42}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i64 2148977039, i64 2148977044, i64 2148977057, i64 2148977101, i64 2148977135, i64 2148977156}
!208 = !{i64 6248464}
!209 = !{i64 2156391270}
!210 = !{i64 2156391661}
!211 = !{i64 6248046}
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !{!"branch_weights", i32 2000, i32 1}
