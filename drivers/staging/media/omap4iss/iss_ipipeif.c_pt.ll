; ModuleID = '/llk/IR_all_yes/drivers/staging/media/omap4iss/iss_ipipeif.c_pt.bc'
source_filename = "../drivers/staging/media/omap4iss/iss_ipipeif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.iss_video_operations = type { ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iss_ipipeif_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.iss_ipipe_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_resizer_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.iss_format_info = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@omap4iss_ipipeif_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ipipeif->wait\00", [17 x i8] zeroinitializer }, align 32
@ipipeif_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ipipeif_v4l2_video_ops, ptr null, ptr null, ptr null, ptr @ipipeif_v4l2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ipipeif_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ipipeif_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OMAP4 ISS ISP IPIPEIF\00", [42 x i8] zeroinitializer }, align 32
@ipipeif_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @ipipeif_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ipipeif_video_ops = internal constant { %struct.iss_video_operations, [28 x i8] } { %struct.iss_video_operations { ptr @ipipeif_video_queue }, [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ISP IPIPEIF\00", [20 x i8] zeroinitializer }, align 32
@ipipeif_v4l2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipipeif_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ipipeif_v4l2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ipipeif_enum_mbus_code, ptr @ipipeif_enum_frame_size, ptr null, ptr @ipipeif_get_format, ptr @ipipeif_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipipeif_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap4_iss\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipipeif_print_status\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/media/omap4iss/iss_ipipeif.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"-------------IPIPEIF Register dump-------------\0A\00", [47 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###IPIPEIF CFG1=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###IPIPEIF CFG2=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###ISIF SYNCEN=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.10, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###ISIF CADU=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.11, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###ISIF CADL=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.12, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###ISIF MODESET=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.13, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###ISIF CCOLP=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.14, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###ISIF SPH=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.15, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###ISIF LNH=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.16, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###ISIF LNV=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.17, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###ISIF VDINT(0)=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.18, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###ISIF HSIZE=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.19, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###ISP5 SYSCONFIG=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.20, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###ISP5 CTRL=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.21, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###ISP5 IRQSTATUS(0)=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.22, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###ISP5 IRQENABLE_SET(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.23, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###ISP5 IRQENABLE_CLR(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@ipipeif_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.24, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"-----------------------------------------------\0A\00", [47 x i8] zeroinitializer }, align 32
@ipipeif_fmts = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 12298, i32 12303, i32 12295, i32 12302, i32 8207, i32 8209], [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 8207, i64 8209, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 8207, i64 8209, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 131072, i64 131074]
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 815, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"ipipeif_v4l2_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 638, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"ipipeif_v4l2_internal_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 644, i32 46 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 744, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ipipeif_media_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 722, i32 45 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"ipipeif_video_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 287, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 768, i32 50 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"ipipeif_v4l2_video_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 624, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"ipipeif_v4l2_pad_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 629, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 53, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 55, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 56, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 58, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 59, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 60, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 61, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 62, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 63, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 64, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 65, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 66, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 67, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 69, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 70, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 71, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 72, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 73, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 75, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"ipipeif_fmts\00", align 1
@___asan_gen_.128 = private constant [48 x i8] c"../drivers/staging/media/omap4iss/iss_ipipeif.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 22, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 998, i32 6 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @omap4iss_ipipeif_init.__key, ptr @.str, ptr @ipipeif_v4l2_ops, ptr @ipipeif_v4l2_internal_ops, ptr @.str.1, ptr @ipipeif_media_ops, ptr @ipipeif_video_ops, ptr @.str.2, ptr @ipipeif_v4l2_video_ops, ptr @ipipeif_v4l2_pad_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ipipeif_fmts, ptr @.str.25], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_ipipeif_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipeif_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipeif_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipeif_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipeif_video_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipeif_v4l2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipeif_v4l2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipeif_fmts to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_ipipeif_isr(ptr noundef %ipipeif, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 8
  %stopping = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 9
  %call = tail call i32 @omap4iss_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %and = and i32 %events, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %output = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 4
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output, align 8
  %and2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %dmaqueue.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 5, i32 17
  %2 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dmaqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %dmaqueue.i
  br i1 %cmp.i.not.i, label %if.then4.if.end5_crit_edge, label %if.end.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i:                                         ; preds = %if.then4
  %video_out.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 5
  %arrayidx.i.i.i.i = getelementptr i8, ptr %ipipeif, i32 -5640
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %7 = and i32 %6, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !95
  %call2.i = tail call ptr @omap4iss_video_buffer_next(ptr noundef %video_out.i) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end5_crit_edge, label %if.end5.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iss_addr.i = getelementptr inbounds %struct.iss_buffer, ptr %call2.i, i32 0, i32 2
  %10 = ptrtoint ptr %iss_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iss_addr.i, align 8
  %shr.i.i = lshr i32 %11, 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #7
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %12) #7, !srcloc !95
  %shr1.i.i = lshr i32 %11, 5
  %and2.i.i = and i32 %shr1.i.i, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i) #7
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %15) #7, !srcloc !95
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %21 = or i32 %20, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !95
  br label %if.end5

if.end5:                                          ; preds = %if.end5.i, %if.end.i.if.end5_crit_edge, %if.then4.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_module_sync_is_stopping(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_ipipeif_unregister_entities(ptr noundef %ipipeif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ipipeif) #7
  %video_out = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 5
  tail call void @omap4iss_video_unregister(ptr noundef %video_out) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_video_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_ipipeif_register_entities(ptr noundef %ipipeif, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %ipipeif) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %video_out = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 5
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
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ipipeif) #7
  %video_out.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 5
  tail call void @omap4iss_video_unregister(ptr noundef %video_out.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_video_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_ipipeif_init(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ipipeif1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20
  %state = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %wait = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @omap4iss_ipipeif_init.__key) #7
  %pads1.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 1
  %input.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 3
  %1 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %input.i, align 4
  tail call void @v4l2_subdev_init(ptr noundef %ipipeif1, ptr noundef nonnull @ipipeif_v4l2_ops) #7
  %internal_ops.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 0, i32 7
  %2 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ipipeif_v4l2_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.1, i32 noundef 32) #7
  %grp_id.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 0, i32 10
  %3 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipipeif1, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %6, 4
  store i32 %or.i, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags3.i, align 4
  %flags5.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 20, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags5.i, align 4
  %flags7.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 20, i32 1, i32 2, i32 4
  %9 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %flags7.i, align 4
  %ops.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 0, i32 0, i32 11
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ipipeif_media_ops, ptr %ops.i, align 4
  %call8.i = tail call i32 @media_entity_pads_init(ptr noundef %ipipeif1, i16 noundef zeroext 3, ptr noundef %pads1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %entry.ipipeif_init_entities.exit_crit_edge, label %if.end.i

entry.ipipeif_init_entities.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipipeif_init_entities.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #7
  %11 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 84)
  %13 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12298, ptr %code.i.i, align 4
  %15 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i = call i32 @ipipeif_set_format(ptr noundef %ipipeif1, ptr noundef null, ptr noundef nonnull %format.i.i) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #7
  %video_out.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5
  %type.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type.i, align 8
  %ops11.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5, i32 19
  %18 = ptrtoint ptr %ops11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ipipeif_video_ops, ptr %ops11.i, align 4
  %iss.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5, i32 5
  %19 = ptrtoint ptr %iss.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %iss, ptr %iss.i, align 4
  %capture_mem.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5, i32 6
  %20 = ptrtoint ptr %capture_mem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 50331648, ptr %capture_mem.i, align 8
  %bpl_alignment.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5, i32 7
  %21 = ptrtoint ptr %bpl_alignment.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32, ptr %bpl_alignment.i, align 4
  %bpl_zero_padding.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5, i32 8
  %22 = ptrtoint ptr %bpl_zero_padding.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %bpl_zero_padding.i, align 8
  %bpl_max.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5, i32 9
  %23 = ptrtoint ptr %bpl_max.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 131040, ptr %bpl_max.i, align 4
  %call18.i = tail call i32 @omap4iss_video_init(ptr noundef %video_out.i, ptr noundef nonnull @.str.2) #7
  br label %ipipeif_init_entities.exit

ipipeif_init_entities.exit:                       ; preds = %if.end.i, %entry.ipipeif_init_entities.exit_crit_edge
  %retval.0.i = phi i32 [ %call18.i, %if.end.i ], [ %call8.i, %entry.ipipeif_init_entities.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_ipipeif_create_links(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ipipeif1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20
  %video_out = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20, i32 5
  %call = tail call i32 @media_create_pad_link(ptr noundef %ipipeif1, i16 noundef zeroext 1, ptr noundef %video_out, i16 noundef zeroext 0, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap4iss_ipipeif_cleanup(ptr nocapture noundef %iss) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4iss_video_buffer_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipeif_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
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
  store i32 12298, ptr %code, align 4
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
  %call = call i32 @ipipeif_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_video_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipeif_set_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -6472
  %state = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 7
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
  tail call void @omap4iss_isp_subclk_enable(ptr noundef %add.ptr, i32 noundef 34) #7
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %4 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %enable, label %if.end4.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb16
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  %input.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input.i, align 4
  tail call void @omap4iss_configure_bridge(ptr noundef %add.ptr, i32 noundef %6) #7
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 -5636
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %10 = and i32 %9, -213909505
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %10) #7, !srcloc !95
  %code.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %14, label %sw.bb.ipipeif_configure.exit_crit_edge [
    i32 8207, label %sw.bb.sw.bb.i_crit_edge
    i32 8209, label %sw.bb.sw.bb.i_crit_edge64
    i32 12298, label %sw.bb.cont_raw.i_crit_edge
    i32 12303, label %sw.bb2.i
    i32 12295, label %sw.bb3.i
    i32 12302, label %sw.bb4.i
  ]

sw.bb.cont_raw.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cont_raw.i

sw.bb.sw.bb.i_crit_edge64:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.ipipeif_configure.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipipeif_configure.exit

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge64
  %arrayidx.i.i34.i = getelementptr i8, ptr %1, i32 -5640
  %16 = ptrtoint ptr %arrayidx.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i34.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.i) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %19 = and i32 %18, 2143879167
  %20 = or i32 %19, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %arrayidx.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i34.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %20) #7, !srcloc !95
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i38.i = getelementptr i8, ptr %24, i32 48
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38.i) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %26 = and i32 %25, -1207959553
  %27 = or i32 %26, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i41.i = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i41.i, i32 %27) #7, !srcloc !95
  br label %ipipeif_configure.exit

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cont_raw.i

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cont_raw.i

sw.bb4.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cont_raw.i

cont_raw.i:                                       ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.cont_raw.i_crit_edge
  %isif_ccolp.0.i = phi i32 [ -1325400064, %sw.bb4.i ], [ -469762048, %sw.bb3.i ], [ 452984832, %sw.bb2.i ], [ 1308622848, %sw.bb.cont_raw.i_crit_edge ]
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %31, i32 48
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %33 = and i32 %32, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i2.i45.i = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i45.i, i32 %33) #7, !srcloc !95
  %arrayidx.i.i46.i = getelementptr i8, ptr %1, i32 -5640
  %36 = ptrtoint ptr %arrayidx.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i46.i, align 4
  %add.ptr.i.i47.i = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %39 = and i32 %38, 2143879167
  %40 = or i32 %39, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %arrayidx.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i46.i, align 4
  %add.ptr.i5.i50.i = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i50.i, i32 %40) #7, !srcloc !95
  %43 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %code.i, align 4
  %call.i = tail call ptr @omap4iss_video_format_info(i32 noundef %44) #7
  %bpp.i = getelementptr inbounds %struct.iss_format_info, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bpp.i, align 4
  %.neg.i = mul i32 %46, -2
  %shl.i = add i32 %.neg.i, 32
  %47 = ptrtoint ptr %arrayidx.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i46.i, align 4
  %add.ptr.i.i52.i = getelementptr i8, ptr %48, i32 128
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52.i) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %50 = and i32 %49, -503316481
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %or.i54.i = or i32 %51, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i54.i) #7
  %53 = ptrtoint ptr %arrayidx.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i46.i, align 4
  %add.ptr.i5.i55.i = getelementptr i8, ptr %54, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i55.i, i32 %52) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %arrayidx.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i46.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %isif_ccolp.0.i) #7, !srcloc !95
  br label %ipipeif_configure.exit

ipipeif_configure.exit:                           ; preds = %cont_raw.i, %sw.bb.i, %sw.bb.ipipeif_configure.exit_crit_edge
  %formats.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %arrayidx.i56.i = getelementptr i8, ptr %1, i32 -5640
  %57 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i56.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 0) #7, !srcloc !95
  %59 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %formats.i, align 4
  %sub6.i = add i32 %60, 32767
  %and.i = and i32 %sub6.i, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %62 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i56.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %63, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %61) #7, !srcloc !95
  %height.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 0, i32 1
  %64 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height.i, align 4
  %sub7.i = add i32 %65, 32767
  %and8.i = and i32 %sub7.i, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %and8.i) #7
  %67 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i56.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %66) #7, !srcloc !95
  %69 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height.i, align 4
  %sub10.i = add i32 %70, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %sub10.i) #7
  %72 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i56.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %73, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %71) #7, !srcloc !95
  %bpl_value.i = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 5, i32 10
  %74 = ptrtoint ptr %bpl_value.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bpl_value.i, align 8
  %shr.i = lshr i32 %75, 5
  %and13.i = and i32 %shr.i, 4095
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #7
  %77 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i56.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %78, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %76) #7, !srcloc !95
  tail call fastcc void @ipipeif_print_status(ptr noundef %1)
  %output = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 4
  %79 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %output, align 8
  %and = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ipipeif_configure.exit.if.end8_crit_edge, label %land.lhs.true

ipipeif_configure.exit.if.end8_crit_edge:         ; preds = %ipipeif_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %ipipeif_configure.exit
  %dmaqueue_flags = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 5, i32 18
  %81 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dmaqueue_flags, align 8
  %and5 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %ipipeif_configure.exit.if.end8_crit_edge
  %stopping = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #7
  %83 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 0, ptr %stopping, align 4
  %84 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %output, align 8
  %and10 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i56.i, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %89 = or i32 %88, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i56.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #7, !srcloc !95
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %92 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i56.i, align 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %95 = or i32 %94, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i56.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #7, !srcloc !95
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %if.end4
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp18 = icmp eq i32 %99, 0
  br i1 %cmp18, label %sw.bb16.cleanup_crit_edge, label %if.end20

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16
  %wait = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 8
  %stopping21 = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 9
  %call22 = tail call i32 @omap4iss_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %spec.select = select i1 %tobool23.not, i32 0, i32 -110
  %output26 = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %output26 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %output26, align 8
  %and27 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end20.if.end30_crit_edge, label %if.then29

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i62 = getelementptr i8, ptr %1, i32 -5640
  %102 = ptrtoint ptr %arrayidx.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i.i.i62, align 4
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %105 = and i32 %104, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %arrayidx.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i.i.i62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #7, !srcloc !95
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end20.if.end30_crit_edge
  %arrayidx.i.i.i63 = getelementptr i8, ptr %1, i32 -5640
  %108 = ptrtoint ptr %arrayidx.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i.i63, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %111 = and i32 %110, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %112 = ptrtoint ptr %arrayidx.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i.i63, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #7, !srcloc !95
  tail call void @omap4iss_isp_subclk_disable(ptr noundef %add.ptr, i32 noundef 34) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end30, %if.end13
  %ret.1.ph = phi i32 [ 0, %if.end13 ], [ %spec.select, %if.end30 ]
  %dmaqueue_flags32 = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 5, i32 18
  %114 = ptrtoint ptr %dmaqueue_flags32 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %dmaqueue_flags32, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %if.end4.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ %ret.1.ph, %sw.epilog.sink.split ]
  %115 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %enable, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb16.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %sw.bb16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipipeif_print_status(ptr nocapture noundef readonly %ipipeif) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %ipipeif, i32 -5736
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.6) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then16)) #7
          to label %do.body22 [label %if.then16], !srcloc !96

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr i8, ptr %ipipeif, i32 -5736
  %2 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev17, align 8
  %arrayidx.i = getelementptr i8, ptr %ipipeif, i32 -5636
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !92
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %7) #7
  br label %do.body22

do.body22:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then34)) #7
          to label %do.body40 [label %if.then34], !srcloc !96

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr i8, ptr %ipipeif, i32 -5736
  %8 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev35, align 8
  %arrayidx.i416 = getelementptr i8, ptr %ipipeif, i32 -5636
  %10 = ptrtoint ptr %arrayidx.i416 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i416, align 4
  %add.ptr.i417 = getelementptr i8, ptr %11, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i417) #7, !srcloc !92
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %13) #7
  br label %do.body40

do.body40:                                        ; preds = %if.then34, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then52)) #7
          to label %do.body58 [label %if.then52], !srcloc !96

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr i8, ptr %ipipeif, i32 -5736
  %14 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev53, align 8
  %arrayidx.i418 = getelementptr i8, ptr %ipipeif, i32 -5640
  %16 = ptrtoint ptr %arrayidx.i418 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i418, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !92
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug301, ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef %19) #7
  br label %do.body58

do.body58:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then70)) #7
          to label %do.body76 [label %if.then70], !srcloc !96

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %dev71 = getelementptr i8, ptr %ipipeif, i32 -5736
  %20 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev71, align 8
  %arrayidx.i419 = getelementptr i8, ptr %ipipeif, i32 -5640
  %22 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i419, align 4
  %add.ptr.i420 = getelementptr i8, ptr %23, i32 60
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i420) #7, !srcloc !92
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug302, ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %25) #7
  br label %do.body76

do.body76:                                        ; preds = %if.then70, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then88)) #7
          to label %do.body94 [label %if.then88], !srcloc !96

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %dev89 = getelementptr i8, ptr %ipipeif, i32 -5736
  %26 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev89, align 8
  %arrayidx.i421 = getelementptr i8, ptr %ipipeif, i32 -5640
  %28 = ptrtoint ptr %arrayidx.i421 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i421, align 4
  %add.ptr.i422 = getelementptr i8, ptr %29, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422) #7, !srcloc !92
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug303, ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef %31) #7
  br label %do.body94

do.body94:                                        ; preds = %if.then88, %do.body76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then106)) #7
          to label %do.body112 [label %if.then106], !srcloc !96

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %dev107 = getelementptr i8, ptr %ipipeif, i32 -5736
  %32 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev107, align 8
  %arrayidx.i423 = getelementptr i8, ptr %ipipeif, i32 -5640
  %34 = ptrtoint ptr %arrayidx.i423 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i423, align 4
  %add.ptr.i424 = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i424) #7, !srcloc !92
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug304, ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %37) #7
  br label %do.body112

do.body112:                                       ; preds = %if.then106, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then124)) #7
          to label %do.body130 [label %if.then124], !srcloc !96

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #9
  %dev125 = getelementptr i8, ptr %ipipeif, i32 -5736
  %38 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev125, align 8
  %arrayidx.i425 = getelementptr i8, ptr %ipipeif, i32 -5640
  %40 = ptrtoint ptr %arrayidx.i425 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i425, align 4
  %add.ptr.i426 = getelementptr i8, ptr %41, i32 76
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i426) #7, !srcloc !92
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug305, ptr noundef %39, ptr noundef nonnull @.str.13, i32 noundef %43) #7
  br label %do.body130

do.body130:                                       ; preds = %if.then124, %do.body112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then142)) #7
          to label %do.body148 [label %if.then142], !srcloc !96

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %dev143 = getelementptr i8, ptr %ipipeif, i32 -5736
  %44 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev143, align 8
  %arrayidx.i427 = getelementptr i8, ptr %ipipeif, i32 -5640
  %46 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i427, align 4
  %add.ptr.i428 = getelementptr i8, ptr %47, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428) #7, !srcloc !92
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug306, ptr noundef %45, ptr noundef nonnull @.str.14, i32 noundef %49) #7
  br label %do.body148

do.body148:                                       ; preds = %if.then142, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then160)) #7
          to label %do.body166 [label %if.then160], !srcloc !96

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #9
  %dev161 = getelementptr i8, ptr %ipipeif, i32 -5736
  %50 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev161, align 8
  %arrayidx.i429 = getelementptr i8, ptr %ipipeif, i32 -5640
  %52 = ptrtoint ptr %arrayidx.i429 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i429, align 4
  %add.ptr.i430 = getelementptr i8, ptr %53, i32 28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i430) #7, !srcloc !92
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug307, ptr noundef %51, ptr noundef nonnull @.str.15, i32 noundef %55) #7
  br label %do.body166

do.body166:                                       ; preds = %if.then160, %do.body148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then178)) #7
          to label %do.body184 [label %if.then178], !srcloc !96

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #9
  %dev179 = getelementptr i8, ptr %ipipeif, i32 -5736
  %56 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev179, align 8
  %arrayidx.i431 = getelementptr i8, ptr %ipipeif, i32 -5640
  %58 = ptrtoint ptr %arrayidx.i431 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i431, align 4
  %add.ptr.i432 = getelementptr i8, ptr %59, i32 40
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i432) #7, !srcloc !92
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug308, ptr noundef %57, ptr noundef nonnull @.str.16, i32 noundef %61) #7
  br label %do.body184

do.body184:                                       ; preds = %if.then178, %do.body166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then196)) #7
          to label %do.body202 [label %if.then196], !srcloc !96

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %dev197 = getelementptr i8, ptr %ipipeif, i32 -5736
  %62 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev197, align 8
  %arrayidx.i433 = getelementptr i8, ptr %ipipeif, i32 -5640
  %64 = ptrtoint ptr %arrayidx.i433 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i433, align 4
  %add.ptr.i434 = getelementptr i8, ptr %65, i32 112
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i434) #7, !srcloc !92
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug309, ptr noundef %63, ptr noundef nonnull @.str.17, i32 noundef %67) #7
  br label %do.body202

do.body202:                                       ; preds = %if.then196, %do.body184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then214)) #7
          to label %do.body220 [label %if.then214], !srcloc !96

if.then214:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #9
  %dev215 = getelementptr i8, ptr %ipipeif, i32 -5736
  %68 = ptrtoint ptr %dev215 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev215, align 8
  %arrayidx.i435 = getelementptr i8, ptr %ipipeif, i32 -5640
  %70 = ptrtoint ptr %arrayidx.i435 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i435, align 4
  %add.ptr.i436 = getelementptr i8, ptr %71, i32 52
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i436) #7, !srcloc !92
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug310, ptr noundef %69, ptr noundef nonnull @.str.18, i32 noundef %73) #7
  br label %do.body220

do.body220:                                       ; preds = %if.then214, %do.body202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then232)) #7
          to label %do.body238 [label %if.then232], !srcloc !96

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #9
  %dev233 = getelementptr i8, ptr %ipipeif, i32 -5736
  %74 = ptrtoint ptr %dev233 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev233, align 8
  %arrayidx.i437 = getelementptr i8, ptr %ipipeif, i32 -5652
  %76 = ptrtoint ptr %arrayidx.i437 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i437, align 4
  %add.ptr.i438 = getelementptr i8, ptr %77, i32 16
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i438) #7, !srcloc !92
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug311, ptr noundef %75, ptr noundef nonnull @.str.19, i32 noundef %79) #7
  br label %do.body238

do.body238:                                       ; preds = %if.then232, %do.body220
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then250)) #7
          to label %do.body256 [label %if.then250], !srcloc !96

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #9
  %dev251 = getelementptr i8, ptr %ipipeif, i32 -5736
  %80 = ptrtoint ptr %dev251 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev251, align 8
  %arrayidx.i439 = getelementptr i8, ptr %ipipeif, i32 -5652
  %82 = ptrtoint ptr %arrayidx.i439 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i439, align 4
  %add.ptr.i440 = getelementptr i8, ptr %83, i32 108
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i440) #7, !srcloc !92
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug312, ptr noundef %81, ptr noundef nonnull @.str.20, i32 noundef %85) #7
  br label %do.body256

do.body256:                                       ; preds = %if.then250, %do.body238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then268)) #7
          to label %do.body274 [label %if.then268], !srcloc !96

if.then268:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #9
  %dev269 = getelementptr i8, ptr %ipipeif, i32 -5736
  %86 = ptrtoint ptr %dev269 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev269, align 8
  %arrayidx.i441 = getelementptr i8, ptr %ipipeif, i32 -5652
  %88 = ptrtoint ptr %arrayidx.i441 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i441, align 4
  %add.ptr.i442 = getelementptr i8, ptr %89, i32 40
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i442) #7, !srcloc !92
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug313, ptr noundef %87, ptr noundef nonnull @.str.21, i32 noundef %91) #7
  br label %do.body274

do.body274:                                       ; preds = %if.then268, %do.body256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then286)) #7
          to label %do.body292 [label %if.then286], !srcloc !96

if.then286:                                       ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #9
  %dev287 = getelementptr i8, ptr %ipipeif, i32 -5736
  %92 = ptrtoint ptr %dev287 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev287, align 8
  %arrayidx.i443 = getelementptr i8, ptr %ipipeif, i32 -5652
  %94 = ptrtoint ptr %arrayidx.i443 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i443, align 4
  %add.ptr.i444 = getelementptr i8, ptr %95, i32 44
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i444) #7, !srcloc !92
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug314, ptr noundef %93, ptr noundef nonnull @.str.22, i32 noundef %97) #7
  br label %do.body292

do.body292:                                       ; preds = %if.then286, %do.body274
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then304)) #7
          to label %do.body310 [label %if.then304], !srcloc !96

if.then304:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #9
  %dev305 = getelementptr i8, ptr %ipipeif, i32 -5736
  %98 = ptrtoint ptr %dev305 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev305, align 8
  %arrayidx.i445 = getelementptr i8, ptr %ipipeif, i32 -5652
  %100 = ptrtoint ptr %arrayidx.i445 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i445, align 4
  %add.ptr.i446 = getelementptr i8, ptr %101, i32 48
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446) #7, !srcloc !92
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug315, ptr noundef %99, ptr noundef nonnull @.str.23, i32 noundef %103) #7
  br label %do.body310

do.body310:                                       ; preds = %if.then304, %do.body292
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipeif_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipeif_print_status, %if.then322)) #7
          to label %do.end326 [label %if.then322], !srcloc !96

if.then322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #9
  %dev323 = getelementptr i8, ptr %ipipeif, i32 -5736
  %104 = ptrtoint ptr %dev323 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev323, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipeif_print_status.__UNIQUE_ID_ddebug316, ptr noundef %105, ptr noundef nonnull @.str.24) #7
  br label %do.end326

do.end326:                                        ; preds = %if.then322, %do.body310
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_configure_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4iss_video_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipeif_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb3_crit_edge
    i32 2, label %entry.sw.bb3_crit_edge18
  ]

entry.sw.bb3_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp = icmp ugt i32 %6, 5
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [6 x i32], ptr @ipipeif_fmts, i32 0, i32 %6
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge18
  %index4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %7 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %if.end7, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %9 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not.i.i.not = icmp eq i16 %12, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !97

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  br label %__ipipeif_get_format.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 0
  br label %__ipipeif_get_format.exit

__ipipeif_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %14, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %code9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__ipipeif_get_format.exit, %if.end
  %arrayidx.sink = phi ptr [ %arrayidx, %if.end ], [ %code9, %__ipipeif_get_format.exit ]
  %15 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.sink, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %17 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %code2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipeif_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #7
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 4
  %code1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 2
  %8 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %code1, align 4
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %format, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %height, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %11 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pad, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %13 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %which, align 4
  call fastcc void @ipipeif_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %12, ptr noundef nonnull %format, i32 noundef %14)
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %17 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %min_width, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %min_height, align 4
  %21 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code1, align 4
  %23 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp6.not = icmp eq i32 %22, %24
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %format, align 4
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %height, align 4
  %27 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pad, align 4
  %29 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %which, align 4
  call fastcc void @ipipeif_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %28, ptr noundef nonnull %format, i32 noundef %30)
  %31 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %format, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %33 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_width, align 4
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %36 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipeif_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !98

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ipipeif_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__ipipeif_get_format.exit

__ipipeif_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__ipipeif_get_format.exit.cleanup_crit_edge, label %if.end

__ipipeif_get_format.exit.cleanup_crit_edge:      ; preds = %__ipipeif_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__ipipeif_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__ipipeif_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__ipipeif_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipeif_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !98

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ipipeif_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__ipipeif_get_format.exit

__ipipeif_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__ipipeif_get_format.exit.cleanup_crit_edge, label %if.end

__ipipeif_get_format.exit.cleanup_crit_edge:      ; preds = %__ipipeif_get_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %__ipipeif_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @ipipeif_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
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
  %cmp.i45 = icmp eq i32 %18, 0
  br i1 %cmp.i45, label %if.then.i49, label %if.end.i55

if.then.i49:                                      ; preds = %if.then7
  %num_pads.i.i46 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i46 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %20)
  %cmp.not.i.i48 = icmp ugt i16 %20, 1
  br i1 %cmp.not.i.i48, label %if.then.i49.v4l2_subdev_get_try_format.exit.i53_crit_edge, label %do.end.i.i50, !prof !98

if.then.i49.v4l2_subdev_get_try_format.exit.i53_crit_edge: ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i53

do.end.i.i50:                                     ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i53

v4l2_subdev_get_try_format.exit.i53:              ; preds = %do.end.i.i50, %if.then.i49.v4l2_subdev_get_try_format.exit.i53_crit_edge
  %spec.select.i.i51 = phi i32 [ 0, %do.end.i.i50 ], [ 1, %if.then.i49.v4l2_subdev_get_try_format.exit.i53_crit_edge ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i52 = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i.i51
  br label %__ipipeif_get_format.exit57

if.end.i55:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i54 = getelementptr %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 1
  br label %__ipipeif_get_format.exit57

__ipipeif_get_format.exit57:                      ; preds = %if.end.i55, %v4l2_subdev_get_try_format.exit.i53
  %retval.0.i56 = phi ptr [ %arrayidx.i.i52, %v4l2_subdev_get_try_format.exit.i53 ], [ %arrayidx.i54, %if.end.i55 ]
  %23 = call ptr @memcpy(ptr %retval.0.i56, ptr %format3, i32 48)
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %26 = ptrtoint ptr %retval.0.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval.0.i56, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i56, i32 0, i32 1
  %28 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %__ipipeif_get_format.exit57
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.not.i.i.not.i = icmp eq i16 %31, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !97

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %32 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd_state, align 4
  br label %ipipeif_try_format.exit

if.end.i.i:                                       ; preds = %__ipipeif_get_format.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i58 = getelementptr %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 0
  br label %ipipeif_try_format.exit

ipipeif_try_format.exit:                          ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %33, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i58, %if.end.i.i ]
  %34 = call ptr @memcpy(ptr %retval.0.i56, ptr %retval.0.i.i, i32 48)
  %35 = tail call i32 @llvm.umax.i32(i32 %27, i32 32) #7
  %36 = ptrtoint ptr %retval.0.i56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %retval.0.i56, align 4
  %add.i = add i32 %37, 15
  %and.i = and i32 %add.i, -16
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 %and.i) #7
  %and45.i = and i32 %38, -16
  %39 = ptrtoint ptr %retval.0.i56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and45.i, ptr %retval.0.i56, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %29, i32 32) #7
  %41 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height2.i, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %42) #7
  %44 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %height2.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i56, i32 0, i32 4
  %45 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i56, i32 0, i32 3
  %46 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %field.i, align 4
  %47 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i59 = icmp eq i32 %48, 0
  br i1 %cmp.i59, label %if.then.i63, label %if.end.i69

if.then.i63:                                      ; preds = %ipipeif_try_format.exit
  %num_pads.i.i60 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %num_pads.i.i60 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %num_pads.i.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %50)
  %cmp.not.i.i62 = icmp ugt i16 %50, 2
  br i1 %cmp.not.i.i62, label %if.then.i63.v4l2_subdev_get_try_format.exit.i67_crit_edge, label %do.end.i.i64, !prof !98

if.then.i63.v4l2_subdev_get_try_format.exit.i67_crit_edge: ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i67

do.end.i.i64:                                     ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i67

v4l2_subdev_get_try_format.exit.i67:              ; preds = %do.end.i.i64, %if.then.i63.v4l2_subdev_get_try_format.exit.i67_crit_edge
  %spec.select.i.i65 = phi i32 [ 0, %do.end.i.i64 ], [ 2, %if.then.i63.v4l2_subdev_get_try_format.exit.i67_crit_edge ]
  %51 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i66 = getelementptr %struct.v4l2_subdev_pad_config, ptr %52, i32 %spec.select.i.i65
  br label %__ipipeif_get_format.exit71

if.end.i69:                                       ; preds = %ipipeif_try_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i68 = getelementptr %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 2
  br label %__ipipeif_get_format.exit71

__ipipeif_get_format.exit71:                      ; preds = %if.end.i69, %v4l2_subdev_get_try_format.exit.i67
  %retval.0.i70 = phi ptr [ %arrayidx.i.i66, %v4l2_subdev_get_try_format.exit.i67 ], [ %arrayidx.i68, %if.end.i69 ]
  %53 = call ptr @memcpy(ptr %retval.0.i70, ptr %format3, i32 48)
  %54 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fmt, align 4
  %56 = ptrtoint ptr %retval.0.i70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %retval.0.i70, align 4
  %height2.i72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i70, i32 0, i32 1
  %58 = ptrtoint ptr %height2.i72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height2.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i151.i = icmp eq i32 %55, 0
  br i1 %cmp.i151.i, label %if.then.i155.i, label %if.end.i159.i

if.then.i155.i:                                   ; preds = %__ipipeif_get_format.exit71
  %num_pads.i.i152.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %num_pads.i.i152.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %num_pads.i.i152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp.not.i.i154.not.i = icmp eq i16 %61, 0
  br i1 %cmp.not.i.i154.not.i, label %do.end.i.i156.i, label %if.then.i155.i.v4l2_subdev_get_try_format.exit.i157.i_crit_edge, !prof !97

if.then.i155.i.v4l2_subdev_get_try_format.exit.i157.i_crit_edge: ; preds = %if.then.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i157.i

do.end.i.i156.i:                                  ; preds = %if.then.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i157.i

v4l2_subdev_get_try_format.exit.i157.i:           ; preds = %do.end.i.i156.i, %if.then.i155.i.v4l2_subdev_get_try_format.exit.i157.i_crit_edge
  %62 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sd_state, align 4
  br label %ipipeif_try_format.exit75

if.end.i159.i:                                    ; preds = %__ipipeif_get_format.exit71
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i158.i = getelementptr %struct.iss_ipipeif_device, ptr %1, i32 0, i32 2, i32 0
  br label %ipipeif_try_format.exit75

ipipeif_try_format.exit75:                        ; preds = %if.end.i159.i, %v4l2_subdev_get_try_format.exit.i157.i
  %retval.0.i160.i = phi ptr [ %63, %v4l2_subdev_get_try_format.exit.i157.i ], [ %arrayidx.i158.i, %if.end.i159.i ]
  %64 = call ptr @memcpy(ptr %retval.0.i70, ptr %retval.0.i160.i, i32 48)
  %65 = tail call i32 @llvm.umax.i32(i32 %57, i32 32) #7
  %66 = ptrtoint ptr %retval.0.i70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %retval.0.i70, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %65, i32 %67) #7
  %69 = ptrtoint ptr %retval.0.i70 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %retval.0.i70, align 4
  %70 = tail call i32 @llvm.umax.i32(i32 %59, i32 32) #7
  %71 = ptrtoint ptr %height2.i72 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %height2.i72, align 4
  %73 = tail call i32 @llvm.umin.i32(i32 %70, i32 %72) #7
  %74 = ptrtoint ptr %height2.i72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %height2.i72, align 4
  %colorspace.i73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i70, i32 0, i32 4
  %75 = ptrtoint ptr %colorspace.i73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 8, ptr %colorspace.i73, align 4
  %field.i74 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i70, i32 0, i32 3
  %76 = ptrtoint ptr %field.i74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %field.i74, align 4
  br label %cleanup

cleanup:                                          ; preds = %ipipeif_try_format.exit75, %if.end.cleanup_crit_edge, %__ipipeif_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__ipipeif_get_format.exit.cleanup_crit_edge ], [ 0, %ipipeif_try_format.exit75 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipipeif_link_validate(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %link, ptr nocapture noundef readonly %source_fmt, ptr nocapture noundef readonly %sink_fmt) #5 align 64 {
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipipeif_try_format(ptr nocapture noundef readonly %ipipeif, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb29
    i32 2, label %sw.bb60
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %6, label %for.cond.5 [
    i32 12298, label %for.cond.preheader.if.end7_crit_edge
    i32 12303, label %for.cond.preheader.if.end7_crit_edge164
    i32 12295, label %for.cond.preheader.if.end7_crit_edge165
    i32 12302, label %for.cond.preheader.if.end7_crit_edge166
    i32 8207, label %for.cond.preheader.if.end7_crit_edge167
    i32 8209, label %for.cond.preheader.if.end7_crit_edge168
  ]

for.cond.preheader.if.end7_crit_edge168:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.preheader.if.end7_crit_edge167:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.preheader.if.end7_crit_edge166:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.preheader.if.end7_crit_edge165:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.preheader.if.end7_crit_edge164:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.cond.5:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12298, ptr %code, align 4
  br label %if.end7

if.end7:                                          ; preds = %for.cond.5, %for.cond.preheader.if.end7_crit_edge, %for.cond.preheader.if.end7_crit_edge164, %for.cond.preheader.if.end7_crit_edge165, %for.cond.preheader.if.end7_crit_edge166, %for.cond.preheader.if.end7_crit_edge167, %for.cond.preheader.if.end7_crit_edge168
  %9 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 8192)
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8192)
  br label %sw.epilog.sink.split

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb29
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %ipipeif, i32 0, i32 5
  %14 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not.i.i.not = icmp eq i16 %15, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !97

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %16 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_state, align 4
  br label %__ipipeif_get_format.exit

if.end.i:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 2, i32 0
  br label %__ipipeif_get_format.exit

__ipipeif_get_format.exit:                        ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %17, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %18 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i, i32 48)
  %19 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %add = add i32 %21, 15
  %and = and i32 %add, -16
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %and)
  %and45 = and i32 %22, -16
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and45, ptr %fmt, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %3, i32 32)
  %25 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height2, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %26)
  br label %sw.epilog.sink.split

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i151 = icmp eq i32 %which, 0
  br i1 %cmp.i151, label %if.then.i155, label %if.end.i159

if.then.i155:                                     ; preds = %sw.bb60
  %num_pads.i.i152 = getelementptr inbounds %struct.media_entity, ptr %ipipeif, i32 0, i32 5
  %28 = ptrtoint ptr %num_pads.i.i152 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i.i154.not = icmp eq i16 %29, 0
  br i1 %cmp.not.i.i154.not, label %do.end.i.i156, label %if.then.i155.v4l2_subdev_get_try_format.exit.i157_crit_edge, !prof !97

if.then.i155.v4l2_subdev_get_try_format.exit.i157_crit_edge: ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i157

do.end.i.i156:                                    ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i157

v4l2_subdev_get_try_format.exit.i157:             ; preds = %do.end.i.i156, %if.then.i155.v4l2_subdev_get_try_format.exit.i157_crit_edge
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  br label %__ipipeif_get_format.exit161

if.end.i159:                                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i158 = getelementptr %struct.iss_ipipeif_device, ptr %ipipeif, i32 0, i32 2, i32 0
  br label %__ipipeif_get_format.exit161

__ipipeif_get_format.exit161:                     ; preds = %if.end.i159, %v4l2_subdev_get_try_format.exit.i157
  %retval.0.i160 = phi ptr [ %31, %v4l2_subdev_get_try_format.exit.i157 ], [ %arrayidx.i158, %if.end.i159 ]
  %32 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i160, i32 48)
  %33 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 %35)
  %37 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %fmt, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %3, i32 32)
  %39 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height2, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %40)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %__ipipeif_get_format.exit161, %__ipipeif_get_format.exit, %if.end7
  %.sink = phi i32 [ %41, %__ipipeif_get_format.exit161 ], [ %27, %__ipipeif_get_format.exit ], [ %13, %if.end7 ]
  %42 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %height2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %43 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %44 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %field, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipipeif_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #6 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 131072, label %sw.bb
    i32 1, label %sw.bb30
    i32 131074, label %sw.bb44
  ]

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %input = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 3
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
  %csi2a = getelementptr i8, ptr %1, i32 -5496
  %cmp17 = icmp eq ptr %5, %csi2a
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %input, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %csi2b = getelementptr i8, ptr %1, i32 -2880
  %cmp24 = icmp eq ptr %5, %csi2b
  br i1 %cmp24, label %if.then26, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %input, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and31 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %output41 = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 4
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

sw.bb44:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and45 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %output56 = getelementptr inbounds %struct.iss_ipipeif_device, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %output56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output56, align 8
  %and57 = and i32 %20, -3
  br i1 %tobool46.not, label %if.else55, label %if.then47

if.then47:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool50.not = icmp eq i32 %and57, 0
  br i1 %tobool50.not, label %if.end52, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %or54 = or i32 %20, 2
  %21 = ptrtoint ptr %output56 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or54, ptr %output56, align 8
  br label %cleanup

if.else55:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %output56 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and57, ptr %output56, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else55, %if.end52, %if.then47.cleanup_crit_edge, %if.else40, %if.end37, %if.then33.cleanup_crit_edge, %if.then26, %if.else.cleanup_crit_edge, %if.then19, %if.end10.cleanup_crit_edge, %if.then9, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end10.cleanup_crit_edge ], [ -16, %if.then33.cleanup_crit_edge ], [ -16, %if.then47.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge ], [ 0, %if.end52 ], [ 0, %if.else55 ], [ 0, %if.end37 ], [ 0, %if.else40 ], [ 0, %if.then19 ], [ 0, %if.then26 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipeif_video_queue(ptr nocapture noundef %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
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
  %iss_addr = getelementptr inbounds %struct.iss_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %iss_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iss_addr, align 8
  %shr.i = lshr i32 %3, 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #7
  %arrayidx.i.i = getelementptr i8, ptr %video, i32 -6088
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !95
  %shr1.i = lshr i32 %3, 5
  %and2.i = and i32 %shr1.i, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %7) #7, !srcloc !95
  %dmaqueue_flags = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 18
  %10 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dmaqueue_flags, align 8
  %and1 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %12 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %output, align 8
  %and5 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then3.if.end8_crit_edge, label %if.then7

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %17 = or i32 %16, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !95
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then3.if.end8_crit_edge
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %23 = or i32 %22, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !95
  %26 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end8 ], [ 0, %if.end.cleanup_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @omap4iss_ipipeif_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 815, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 744, i32 20}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 768, i32 50}
!7 = !{ptr @ipipeif_v4l2_ops, !8, !"ipipeif_v4l2_ops", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 638, i32 37}
!9 = !{ptr @ipipeif_v4l2_video_ops, !10, !"ipipeif_v4l2_video_ops", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 624, i32 43}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 53, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug298, !12, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 55, i32 2}
!19 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug299, !18, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 56, i32 2}
!22 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug300, !21, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 58, i32 2}
!25 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug301, !24, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 59, i32 2}
!28 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug302, !27, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 60, i32 2}
!31 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug303, !30, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 61, i32 2}
!34 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug304, !33, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 62, i32 2}
!37 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug305, !36, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 63, i32 2}
!40 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug306, !39, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 64, i32 2}
!43 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug307, !42, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 65, i32 2}
!46 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug308, !45, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 66, i32 2}
!49 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug309, !48, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 67, i32 2}
!52 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug310, !51, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 69, i32 2}
!55 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug311, !54, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 70, i32 2}
!58 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug312, !57, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 71, i32 2}
!61 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug313, !60, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 72, i32 2}
!64 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug314, !63, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 73, i32 2}
!67 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug315, !66, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 75, i32 2}
!70 = !{ptr @ipipeif_print_status.__UNIQUE_ID_ddebug316, !69, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!71 = !{ptr @ipipeif_v4l2_pad_ops, !72, !"ipipeif_v4l2_pad_ops", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 629, i32 41}
!73 = !{ptr @ipipeif_fmts, !74, !"ipipeif_fmts", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 22, i32 27}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!77 = !{ptr @ipipeif_v4l2_internal_ops, !78, !"ipipeif_v4l2_internal_ops", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 644, i32 46}
!79 = !{ptr @ipipeif_media_ops, !80, !"ipipeif_media_ops", i1 false, i1 false}
!80 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 722, i32 45}
!81 = !{ptr @ipipeif_video_ops, !82, !"ipipeif_video_ops", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/omap4iss/iss_ipipeif.c", i32 287, i32 42}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 6246883}
!93 = !{i64 2156389689}
!94 = !{i64 2156390080}
!95 = !{i64 6246465}
!96 = !{i64 2148975458, i64 2148975463, i64 2148975476, i64 2148975520, i64 2148975554, i64 2148975575}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"branch_weights", i32 2000, i32 1}
