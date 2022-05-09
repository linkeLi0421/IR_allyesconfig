; ModuleID = '/llk/IR_all_yes/drivers/staging/media/omap4iss/iss_ipipe.c_pt.bc'
source_filename = "../drivers/staging/media/omap4iss/iss_ipipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.iss_device = type { %struct.v4l2_device, %struct.media_device, ptr, i32, ptr, i32, [11 x ptr], [11 x ptr], ptr, i64, %struct.mutex, %struct.media_entity_enum, i32, i32, ptr, ptr, %struct.iss_csi2_device, %struct.iss_csi2_device, %struct.iss_csiphy, %struct.iss_csiphy, %struct.iss_ipipeif_device, %struct.iss_ipipe_device, %struct.iss_resizer_device, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_enum = type { ptr, i32 }
%struct.iss_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.iss_video, ptr, i8, i32, i32, i32, i32, i8, i32, ptr, [8 x %struct.iss_csi2_ctx_cfg], [2 x %struct.iss_csi2_timing_cfg], %struct.iss_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.iss_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.iss_pipeline, %struct.mutex, i8, ptr, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.iss_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.iss_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.iss_csi2_timing_cfg = type { i8, i8, i16 }
%struct.iss_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iss_csiphy = type { ptr, %struct.mutex, i8, ptr, i32, i32, i8, i8, %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_dphy_cfg }
%struct.iss_csiphy_lanes_cfg = type { [4 x %struct.iss_csiphy_lane], %struct.iss_csiphy_lane }
%struct.iss_csiphy_lane = type { i8, i8 }
%struct.iss_csiphy_dphy_cfg = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.iss_ipipeif_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_ipipe_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_resizer_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@omap4iss_ipipe_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ipipe->wait\00", [19 x i8] zeroinitializer }, align 32
@ipipe_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ipipe_v4l2_video_ops, ptr null, ptr null, ptr null, ptr @ipipe_v4l2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ipipe_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ipipe_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OMAP4 ISS ISP IPIPE\00", [44 x i8] zeroinitializer }, align 32
@ipipe_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @ipipe_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ipipe_v4l2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipipe_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ipipe_v4l2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ipipe_enum_mbus_code, ptr @ipipe_enum_frame_size, ptr null, ptr @ipipe_get_format, ptr @ipipe_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipipe_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap4_iss\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipipe_print_status\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/omap4iss/iss_ipipe.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"-------------IPIPE Register dump-------------\0A\00", [49 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###IPIPE SRC_EN=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###IPIPE SRC_MODE=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE SRC_FMT=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE SRC_COL=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE SRC_VPS=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE SRC_VSZ=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE SRC_HPS=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.13, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE SRC_HSZ=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE GCK_MMR=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.15, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"###IPIPE YUV_PHS=0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@ipipe_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"-----------------------------------------------\0A\00", [47 x i8] zeroinitializer }, align 32
@ipipe_fmts = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12298, i32 12303, i32 12295, i32 12302], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@switch.table.ipipe_enum_frame_size = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 12295, i32 12298, i32 12298, i32 12298, i32 12298, i32 12298, i32 12298, i32 12302, i32 12303], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 12295, i64 12298, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 566, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"ipipe_v4l2_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 418, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"ipipe_v4l2_internal_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 424, i32 46 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 509, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"ipipe_media_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 487, i32 45 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"ipipe_v4l2_video_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 404, i32 43 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"ipipe_v4l2_pad_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 409, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 49, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 51, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 52, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 53, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 54, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 55, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 56, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 57, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 58, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 59, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 60, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 62, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"ipipe_fmts\00", align 1
@___asan_gen_.94 = private constant [46 x i8] c"../drivers/staging/media/omap4iss/iss_ipipe.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 28, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 998, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant [35 x i8] c"switch.table.ipipe_enum_frame_size\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @omap4iss_ipipe_init.__key, ptr @.str, ptr @ipipe_v4l2_ops, ptr @ipipe_v4l2_internal_ops, ptr @.str.1, ptr @ipipe_media_ops, ptr @ipipe_v4l2_video_ops, ptr @ipipe_v4l2_pad_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ipipe_fmts, ptr @.str.17, ptr @switch.table.ipipe_enum_frame_size], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_ipipe_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipe_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipe_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipe_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipe_v4l2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipe_v4l2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipipe_fmts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipipe_enum_frame_size to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_ipipe_unregister_entities(ptr noundef %ipipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ipipe) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_ipipe_register_entities(ptr noundef %ipipe, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %ipipe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %error, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_device_unregister_subdev(ptr noundef %ipipe) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %error ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_ipipe_init(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ipipe1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21
  %state = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %wait = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @omap4iss_ipipe_init.__key) #8
  %pads1.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 1
  %input.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 3
  %1 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %input.i, align 4
  tail call void @v4l2_subdev_init(ptr noundef %ipipe1, ptr noundef nonnull @ipipe_v4l2_ops) #8
  %internal_ops.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 0, i32 7
  %2 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ipipe_v4l2_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.1, i32 noundef 32) #8
  %grp_id.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 0, i32 10
  %3 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipipe1, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %6, 4
  store i32 %or.i, ptr %flags.i, align 4
  %flags3.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags3.i, align 4
  %flags5.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 21, i32 1, i32 1, i32 4
  %8 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags5.i, align 4
  %ops.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21, i32 0, i32 0, i32 11
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ipipe_media_ops, ptr %ops.i, align 4
  %call6.i = tail call i32 @media_entity_pads_init(ptr noundef %ipipe1, i16 noundef zeroext 2, ptr noundef %pads1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %entry.ipipe_init_entities.exit_crit_edge, label %if.end.i

entry.ipipe_init_entities.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_init_entities.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #8
  %10 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 84)
  %12 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12298, ptr %code.i.i, align 4
  %14 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i = call i32 @ipipe_set_format(ptr noundef %ipipe1, ptr noundef null, ptr noundef nonnull %format.i.i) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #8
  br label %ipipe_init_entities.exit

ipipe_init_entities.exit:                         ; preds = %if.end.i, %entry.ipipe_init_entities.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call6.i, %entry.ipipe_init_entities.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap4iss_ipipe_cleanup(ptr nocapture noundef %iss) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipe_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @ipipe_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipe_set_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8896
  %state = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp1 = icmp eq i32 %enable, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @omap4iss_isp_subclk_enable(ptr noundef %add.ptr, i32 noundef 16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %arrayidx.i = getelementptr i8, ptr %1, i32 -8068
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 251658240) #8, !srcloc !68
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %8 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %enable, label %if.end3.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %formats.i = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 -8068
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %12, i32 712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 33554432) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 0) #8, !srcloc !68
  %height.i = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i, align 4
  %sub.i = add i32 %18, 8190
  %and.i = and i32 %sub.i, 8191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %19) #8, !srcloc !68
  %22 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %formats.i, align 4
  %sub1.i = add i32 %23, 8191
  %and2.i = and i32 %sub1.i, 8190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #8
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %24) #8, !srcloc !68
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %30 = and i32 %29, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %30) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 452984832) #8, !srcloc !68
  tail call fastcc void @ipipe_print_status(ptr noundef %1)
  %stopping = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #8
  %35 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %stopping, align 4
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %39 = or i32 %38, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !68
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end3
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp6 = icmp eq i32 %43, 0
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %wait = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 7
  %stopping9 = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 8
  %call10 = tail call i32 @omap4iss_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -110
  %arrayidx.i.i.i34 = getelementptr i8, ptr %1, i32 -8068
  %44 = ptrtoint ptr %arrayidx.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i34, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %47 = and i32 %46, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %arrayidx.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !68
  tail call void @omap4iss_isp_subclk_disable(ptr noundef %add.ptr, i32 noundef 16) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb, %if.end3.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %if.end3.sw.epilog_crit_edge ], [ %spec.select, %if.end8 ], [ 0, %sw.bb ]
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %enable, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_isp_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipipe_print_status(ptr nocapture noundef readonly %ipipe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %ipipe, i32 -8160
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.5) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then16)) #8
          to label %do.body22 [label %if.then16], !srcloc !71

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr i8, ptr %ipipe, i32 -8160
  %2 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev17, align 8
  %arrayidx.i = getelementptr i8, ptr %ipipe, i32 -8068
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !69
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %7) #8
  br label %do.body22

do.body22:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then34)) #8
          to label %do.body40 [label %if.then34], !srcloc !71

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr i8, ptr %ipipe, i32 -8160
  %8 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev35, align 8
  %arrayidx.i255 = getelementptr i8, ptr %ipipe, i32 -8068
  %10 = ptrtoint ptr %arrayidx.i255 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i255, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !69
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %13) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then34, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then52)) #8
          to label %do.body58 [label %if.then52], !srcloc !71

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %dev53 = getelementptr i8, ptr %ipipe, i32 -8160
  %14 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev53, align 8
  %arrayidx.i256 = getelementptr i8, ptr %ipipe, i32 -8068
  %16 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i256, align 4
  %add.ptr.i257 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i257) #8, !srcloc !69
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug301, ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef %19) #8
  br label %do.body58

do.body58:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then70)) #8
          to label %do.body76 [label %if.then70], !srcloc !71

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %dev71 = getelementptr i8, ptr %ipipe, i32 -8160
  %20 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev71, align 8
  %arrayidx.i258 = getelementptr i8, ptr %ipipe, i32 -8068
  %22 = ptrtoint ptr %arrayidx.i258 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i258, align 4
  %add.ptr.i259 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259) #8, !srcloc !69
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug302, ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %25) #8
  br label %do.body76

do.body76:                                        ; preds = %if.then70, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then88)) #8
          to label %do.body94 [label %if.then88], !srcloc !71

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %dev89 = getelementptr i8, ptr %ipipe, i32 -8160
  %26 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev89, align 8
  %arrayidx.i260 = getelementptr i8, ptr %ipipe, i32 -8068
  %28 = ptrtoint ptr %arrayidx.i260 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i260, align 4
  %add.ptr.i261 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261) #8, !srcloc !69
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug303, ptr noundef %27, ptr noundef nonnull @.str.10, i32 noundef %31) #8
  br label %do.body94

do.body94:                                        ; preds = %if.then88, %do.body76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then106)) #8
          to label %do.body112 [label %if.then106], !srcloc !71

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %dev107 = getelementptr i8, ptr %ipipe, i32 -8160
  %32 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev107, align 8
  %arrayidx.i262 = getelementptr i8, ptr %ipipe, i32 -8068
  %34 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i262, align 4
  %add.ptr.i263 = getelementptr i8, ptr %35, i32 20
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263) #8, !srcloc !69
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug304, ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %37) #8
  br label %do.body112

do.body112:                                       ; preds = %if.then106, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then124)) #8
          to label %do.body130 [label %if.then124], !srcloc !71

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %dev125 = getelementptr i8, ptr %ipipe, i32 -8160
  %38 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev125, align 8
  %arrayidx.i264 = getelementptr i8, ptr %ipipe, i32 -8068
  %40 = ptrtoint ptr %arrayidx.i264 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i264, align 4
  %add.ptr.i265 = getelementptr i8, ptr %41, i32 24
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #8, !srcloc !69
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug305, ptr noundef %39, ptr noundef nonnull @.str.12, i32 noundef %43) #8
  br label %do.body130

do.body130:                                       ; preds = %if.then124, %do.body112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then142)) #8
          to label %do.body148 [label %if.then142], !srcloc !71

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  %dev143 = getelementptr i8, ptr %ipipe, i32 -8160
  %44 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev143, align 8
  %arrayidx.i266 = getelementptr i8, ptr %ipipe, i32 -8068
  %46 = ptrtoint ptr %arrayidx.i266 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i266, align 4
  %add.ptr.i267 = getelementptr i8, ptr %47, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #8, !srcloc !69
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug306, ptr noundef %45, ptr noundef nonnull @.str.13, i32 noundef %49) #8
  br label %do.body148

do.body148:                                       ; preds = %if.then142, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then160)) #8
          to label %do.body166 [label %if.then160], !srcloc !71

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #10
  %dev161 = getelementptr i8, ptr %ipipe, i32 -8160
  %50 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev161, align 8
  %arrayidx.i268 = getelementptr i8, ptr %ipipe, i32 -8068
  %52 = ptrtoint ptr %arrayidx.i268 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i268, align 4
  %add.ptr.i269 = getelementptr i8, ptr %53, i32 40
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #8, !srcloc !69
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug307, ptr noundef %51, ptr noundef nonnull @.str.14, i32 noundef %55) #8
  br label %do.body166

do.body166:                                       ; preds = %if.then160, %do.body148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then178)) #8
          to label %do.body184 [label %if.then178], !srcloc !71

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #10
  %dev179 = getelementptr i8, ptr %ipipe, i32 -8160
  %56 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev179, align 8
  %arrayidx.i270 = getelementptr i8, ptr %ipipe, i32 -8068
  %58 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i270, align 4
  %add.ptr.i271 = getelementptr i8, ptr %59, i32 712
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271) #8, !srcloc !69
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug308, ptr noundef %57, ptr noundef nonnull @.str.15, i32 noundef %61) #8
  br label %do.body184

do.body184:                                       ; preds = %if.then178, %do.body166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipipe_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipipe_print_status, %if.then196)) #8
          to label %do.end200 [label %if.then196], !srcloc !71

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  %dev197 = getelementptr i8, ptr %ipipe, i32 -8160
  %62 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev197, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipipe_print_status.__UNIQUE_ID_ddebug309, ptr noundef %63, ptr noundef nonnull @.str.16) #8
  br label %do.end200

do.end200:                                        ; preds = %if.then196, %do.body184
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_isp_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipipe_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x i32], ptr @ipipe_fmts, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  %index4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %7 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %sw.bb3.return.sink.split_crit_edge, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3.return.sink.split_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb3.return.sink.split_crit_edge, %if.end
  %.sink = phi i32 [ %6, %if.end ], [ 8207, %sw.bb3.return.sink.split_crit_edge ]
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %9 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %code2, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb3.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb3.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipe_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %7, label %if.end.ipipe_try_format.exit_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb29.i
  ]

if.end.ipipe_try_format.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_try_format.exit

for.cond.preheader.i:                             ; preds = %if.end
  %switch.tableidx = add i32 %5, -12295
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 9
  br i1 %9, label %switch.lookup, label %for.cond.preheader.i.ipipe_try_format.exit_crit_edge

for.cond.preheader.i.ipipe_try_format.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_try_format.exit

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
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !72

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  br label %__ipipe_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 0
  br label %__ipipe_get_format.exit.i

__ipipe_get_format.exit.i:                        ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %15, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %16 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %format.sroa.0.0.copyload = load i32, ptr %retval.0.i.i, align 4
  %format.sroa.17.0.retval.0.i.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i, i32 4
  %17 = ptrtoint ptr %format.sroa.17.0.retval.0.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %format.sroa.17.0.copyload = load i32, ptr %format.sroa.17.0.retval.0.i.i.sroa_idx, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %format.sroa.0.0.copyload, i32 32) #8
  %19 = tail call i32 @llvm.umin.i32(i32 %format.sroa.17.0.copyload, i32 32) #8
  br label %ipipe_try_format.exit

switch.lookup:                                    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.ipipe_enum_frame_size, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ipipe_try_format.exit

ipipe_try_format.exit:                            ; preds = %switch.lookup, %__ipipe_get_format.exit.i, %for.cond.preheader.i.ipipe_try_format.exit_crit_edge, %if.end.ipipe_try_format.exit_crit_edge
  %format.sroa.0.1 = phi i32 [ 1, %if.end.ipipe_try_format.exit_crit_edge ], [ %18, %__ipipe_get_format.exit.i ], [ 1, %switch.lookup ], [ 1, %for.cond.preheader.i.ipipe_try_format.exit_crit_edge ]
  %format.sroa.17.0 = phi i32 [ 1, %if.end.ipipe_try_format.exit_crit_edge ], [ %19, %__ipipe_get_format.exit.i ], [ 1, %switch.lookup ], [ 1, %for.cond.preheader.i.ipipe_try_format.exit_crit_edge ]
  %format.sroa.27.2 = phi i32 [ %5, %if.end.ipipe_try_format.exit_crit_edge ], [ 8207, %__ipipe_get_format.exit.i ], [ %switch.load, %switch.lookup ], [ 12298, %for.cond.preheader.i.ipipe_try_format.exit_crit_edge ]
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
  call void @__sanitizer_cov_trace_cmp4(i32 %format.sroa.27.2, i32 %24)
  %cmp6.not = icmp eq i32 %format.sroa.27.2, %24
  br i1 %cmp6.not, label %if.end8, label %ipipe_try_format.exit.cleanup_crit_edge

ipipe_try_format.exit.cleanup_crit_edge:          ; preds = %ipipe_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %ipipe_try_format.exit
  %25 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pad, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %26, label %if.end8.ipipe_try_format.exit53_crit_edge [
    i32 0, label %for.cond.preheader.i33
    i32 1, label %sw.bb29.i37
  ]

if.end8.ipipe_try_format.exit53_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_try_format.exit53

for.cond.preheader.i33:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_try_format.exit53

sw.bb29.i37:                                      ; preds = %if.end8
  %28 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i36 = icmp eq i32 %29, 0
  br i1 %cmp.i.i36, label %if.then.i.i40, label %if.end.i.i44

if.then.i.i40:                                    ; preds = %sw.bb29.i37
  %num_pads.i.i.i38 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %num_pads.i.i.i38 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_pads.i.i.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.not.i.i.not.i39 = icmp eq i16 %31, 0
  br i1 %cmp.not.i.i.not.i39, label %do.end.i.i.i41, label %if.then.i.i40.v4l2_subdev_get_try_format.exit.i.i42_crit_edge, !prof !72

if.then.i.i40.v4l2_subdev_get_try_format.exit.i.i42_crit_edge: ; preds = %if.then.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i42

do.end.i.i.i41:                                   ; preds = %if.then.i.i40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i42

v4l2_subdev_get_try_format.exit.i.i42:            ; preds = %do.end.i.i.i41, %if.then.i.i40.v4l2_subdev_get_try_format.exit.i.i42_crit_edge
  %32 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd_state, align 4
  br label %__ipipe_get_format.exit.i47

if.end.i.i44:                                     ; preds = %sw.bb29.i37
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i43 = getelementptr %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 0
  br label %__ipipe_get_format.exit.i47

__ipipe_get_format.exit.i47:                      ; preds = %if.end.i.i44, %v4l2_subdev_get_try_format.exit.i.i42
  %retval.0.i.i45 = phi ptr [ %33, %v4l2_subdev_get_try_format.exit.i.i42 ], [ %arrayidx.i.i43, %if.end.i.i44 ]
  %34 = ptrtoint ptr %retval.0.i.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %format.sroa.0.0.copyload59 = load i32, ptr %retval.0.i.i45, align 4
  %format.sroa.17.0.retval.0.i.i45.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i45, i32 4
  %35 = ptrtoint ptr %format.sroa.17.0.retval.0.i.i45.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %format.sroa.17.0.copyload60 = load i32, ptr %format.sroa.17.0.retval.0.i.i45.sroa_idx, align 4
  br label %ipipe_try_format.exit53

ipipe_try_format.exit53:                          ; preds = %__ipipe_get_format.exit.i47, %for.cond.preheader.i33, %if.end8.ipipe_try_format.exit53_crit_edge
  %format.sroa.0.3 = phi i32 [ -1, %if.end8.ipipe_try_format.exit53_crit_edge ], [ %format.sroa.0.0.copyload59, %__ipipe_get_format.exit.i47 ], [ 8192, %for.cond.preheader.i33 ]
  %format.sroa.17.1 = phi i32 [ -1, %if.end8.ipipe_try_format.exit53_crit_edge ], [ %format.sroa.17.0.copyload60, %__ipipe_get_format.exit.i47 ], [ 8192, %for.cond.preheader.i33 ]
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %36 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %format.sroa.0.3, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %37 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %format.sroa.17.1, ptr %max_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %ipipe_try_format.exit53, %ipipe_try_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ipipe_try_format.exit53 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ipipe_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipe_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !73

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ipipe_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__ipipe_get_format.exit

__ipipe_get_format.exit:                          ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__ipipe_get_format.exit.cleanup_crit_edge, label %if.end

__ipipe_get_format.exit.cleanup_crit_edge:        ; preds = %__ipipe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %__ipipe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__ipipe_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__ipipe_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipipe_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !73

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__ipipe_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__ipipe_get_format.exit

__ipipe_get_format.exit:                          ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__ipipe_get_format.exit.cleanup_crit_edge, label %if.end

__ipipe_get_format.exit.cleanup_crit_edge:        ; preds = %__ipipe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %__ipipe_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format3, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height2.i, align 4
  %16 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %11, label %if.end.ipipe_try_format.exit_crit_edge [
    i32 0, label %for.cond.preheader.i
    i32 1, label %sw.bb29.i
  ]

if.end.ipipe_try_format.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipipe_try_format.exit

for.cond.preheader.i:                             ; preds = %if.end
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %18, label %for.cond.3.i [
    i32 12298, label %for.cond.preheader.i.if.end7.i_crit_edge
    i32 12303, label %for.cond.preheader.i.if.end7.i_crit_edge65
    i32 12295, label %for.cond.preheader.i.if.end7.i_crit_edge66
    i32 12302, label %for.cond.preheader.i.if.end7.i_crit_edge67
  ]

for.cond.preheader.i.if.end7.i_crit_edge67:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.cond.preheader.i.if.end7.i_crit_edge66:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.cond.preheader.i.if.end7.i_crit_edge65:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.cond.preheader.i.if.end7.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.cond.3.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12298, ptr %code.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.cond.3.i, %for.cond.preheader.i.if.end7.i_crit_edge, %for.cond.preheader.i.if.end7.i_crit_edge65, %for.cond.preheader.i.if.end7.i_crit_edge66, %for.cond.preheader.i.if.end7.i_crit_edge67
  %21 = tail call i32 @llvm.umax.i32(i32 %13, i32 1) #8
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 8192) #8
  %23 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %format3, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %15, i32 1) #8
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 8192) #8
  br label %sw.epilog.sink.split.i

sw.bb29.i:                                        ; preds = %if.end
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb29.i
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i.i.not.i = icmp eq i16 %29, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !72

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  br label %__ipipe_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i32 = getelementptr %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 0
  br label %__ipipe_get_format.exit.i

__ipipe_get_format.exit.i:                        ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %31, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i32, %if.end.i.i ]
  %32 = call ptr @memcpy(ptr %format3, ptr %retval.0.i.i, i32 48)
  %code30.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %code30.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8207, ptr %code30.i, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %13, i32 32) #8
  %35 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %format3, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36) #8
  %38 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %format3, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %15, i32 32) #8
  %40 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height2.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 %41) #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %__ipipe_get_format.exit.i, %if.end7.i
  %.sink102.i = phi i32 [ %42, %__ipipe_get_format.exit.i ], [ %25, %if.end7.i ]
  %.sink.i = phi i32 [ 7, %__ipipe_get_format.exit.i ], [ 8, %if.end7.i ]
  %43 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink102.i, ptr %height2.i, align 4
  %colorspace59.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %colorspace59.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %colorspace59.i, align 4
  br label %ipipe_try_format.exit

ipipe_try_format.exit:                            ; preds = %sw.epilog.sink.split.i, %if.end.ipipe_try_format.exit_crit_edge
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %field.i, align 4
  %46 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %47 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp = icmp eq i32 %48, 0
  br i1 %cmp, label %if.then7, label %ipipe_try_format.exit.cleanup_crit_edge

ipipe_try_format.exit.cleanup_crit_edge:          ; preds = %ipipe_try_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %ipipe_try_format.exit
  %49 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i33 = icmp eq i32 %50, 0
  br i1 %cmp.i33, label %if.then.i37, label %if.end.i43

if.then.i37:                                      ; preds = %if.then7
  %num_pads.i.i34 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %num_pads.i.i34 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %num_pads.i.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %52)
  %cmp.not.i.i36 = icmp ugt i16 %52, 1
  br i1 %cmp.not.i.i36, label %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge, label %do.end.i.i38, !prof !73

if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge: ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i41

do.end.i.i38:                                     ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i41

v4l2_subdev_get_try_format.exit.i41:              ; preds = %do.end.i.i38, %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge
  %spec.select.i.i39 = phi i32 [ 0, %do.end.i.i38 ], [ 1, %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge ]
  %53 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i40 = getelementptr %struct.v4l2_subdev_pad_config, ptr %54, i32 %spec.select.i.i39
  br label %__ipipe_get_format.exit45

if.end.i43:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i42 = getelementptr %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 1
  br label %__ipipe_get_format.exit45

__ipipe_get_format.exit45:                        ; preds = %if.end.i43, %v4l2_subdev_get_try_format.exit.i41
  %retval.0.i44 = phi ptr [ %arrayidx.i.i40, %v4l2_subdev_get_try_format.exit.i41 ], [ %arrayidx.i42, %if.end.i43 ]
  %55 = call ptr @memcpy(ptr %retval.0.i44, ptr %format3, i32 48)
  %56 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fmt, align 4
  %58 = ptrtoint ptr %retval.0.i44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %retval.0.i44, align 4
  %height2.i46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 1
  %60 = ptrtoint ptr %height2.i46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height2.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i47 = icmp eq i32 %57, 0
  br i1 %cmp.i.i47, label %if.then.i.i51, label %if.end.i.i55

if.then.i.i51:                                    ; preds = %__ipipe_get_format.exit45
  %num_pads.i.i.i49 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %num_pads.i.i.i49 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %num_pads.i.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp.not.i.i.not.i50 = icmp eq i16 %63, 0
  br i1 %cmp.not.i.i.not.i50, label %do.end.i.i.i52, label %if.then.i.i51.v4l2_subdev_get_try_format.exit.i.i53_crit_edge, !prof !72

if.then.i.i51.v4l2_subdev_get_try_format.exit.i.i53_crit_edge: ; preds = %if.then.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i53

do.end.i.i.i52:                                   ; preds = %if.then.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i53

v4l2_subdev_get_try_format.exit.i.i53:            ; preds = %do.end.i.i.i52, %if.then.i.i51.v4l2_subdev_get_try_format.exit.i.i53_crit_edge
  %64 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sd_state, align 4
  br label %ipipe_try_format.exit64

if.end.i.i55:                                     ; preds = %__ipipe_get_format.exit45
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i54 = getelementptr %struct.iss_ipipe_device, ptr %1, i32 0, i32 2, i32 0
  br label %ipipe_try_format.exit64

ipipe_try_format.exit64:                          ; preds = %if.end.i.i55, %v4l2_subdev_get_try_format.exit.i.i53
  %retval.0.i.i56 = phi ptr [ %65, %v4l2_subdev_get_try_format.exit.i.i53 ], [ %arrayidx.i.i54, %if.end.i.i55 ]
  %66 = call ptr @memcpy(ptr %retval.0.i44, ptr %retval.0.i.i56, i32 48)
  %code30.i57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 2
  %67 = ptrtoint ptr %code30.i57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8207, ptr %code30.i57, align 4
  %68 = tail call i32 @llvm.umax.i32(i32 %59, i32 32) #8
  %69 = ptrtoint ptr %retval.0.i44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %retval.0.i44, align 4
  %71 = tail call i32 @llvm.umin.i32(i32 %68, i32 %70) #8
  %72 = ptrtoint ptr %retval.0.i44 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %retval.0.i44, align 4
  %73 = tail call i32 @llvm.umax.i32(i32 %61, i32 32) #8
  %74 = ptrtoint ptr %height2.i46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %height2.i46, align 4
  %76 = tail call i32 @llvm.umin.i32(i32 %73, i32 %75) #8
  %77 = ptrtoint ptr %height2.i46 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %height2.i46, align 4
  %colorspace59.i61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 4
  %78 = ptrtoint ptr %colorspace59.i61 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 7, ptr %colorspace59.i61, align 4
  %field.i63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 3
  %79 = ptrtoint ptr %field.i63 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %field.i63, align 4
  br label %cleanup

cleanup:                                          ; preds = %ipipe_try_format.exit64, %ipipe_try_format.exit.cleanup_crit_edge, %__ipipe_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__ipipe_get_format.exit.cleanup_crit_edge ], [ 0, %ipipe_try_format.exit64 ], [ 0, %ipipe_try_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipipe_link_validate(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %link, ptr nocapture noundef readonly %source_fmt, ptr nocapture noundef readonly %sink_fmt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipipe_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %entity5 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %2 = ptrtoint ptr %entity5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity5, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %if.end, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %is_media_entity_v4l2_subdev.exit
  %index = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %7, label %if.end.cleanup_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %input = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 3
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %input, align 4
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %ipipeif = getelementptr i8, ptr %1, i32 -2424
  %cmp16 = icmp eq ptr %3, %ipipeif
  br i1 %cmp16, label %if.then18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %input, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %and22 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %output30 = getelementptr inbounds %struct.iss_ipipe_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %output30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %output30, align 4
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %tobool26.not = icmp ult i32 %14, 2
  br i1 %tobool26.not, label %if.end28, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %14, 1
  %15 = ptrtoint ptr %output30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %output30, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %and31 = and i32 %14, -2
  %16 = ptrtoint ptr %output30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and31, ptr %output30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end28, %if.then24.cleanup_crit_edge, %if.then18, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ -16, %if.end9.cleanup_crit_edge ], [ -16, %if.then24.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end28 ], [ 0, %if.else ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.then8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @omap4iss_ipipe_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 566, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 509, i32 20}
!5 = !{ptr @ipipe_v4l2_ops, !6, !"ipipe_v4l2_ops", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 418, i32 37}
!7 = !{ptr @ipipe_v4l2_video_ops, !8, !"ipipe_v4l2_video_ops", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 404, i32 43}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 49, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug298, !10, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 51, i32 2}
!17 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug299, !16, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 52, i32 2}
!20 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug300, !19, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 53, i32 2}
!23 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug301, !22, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 54, i32 2}
!26 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug302, !25, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 55, i32 2}
!29 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug303, !28, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 56, i32 2}
!32 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug304, !31, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 57, i32 2}
!35 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug305, !34, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 58, i32 2}
!38 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug306, !37, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 59, i32 2}
!41 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug307, !40, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 60, i32 2}
!44 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug308, !43, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 62, i32 2}
!47 = !{ptr @ipipe_print_status.__UNIQUE_ID_ddebug309, !46, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!48 = !{ptr @ipipe_v4l2_pad_ops, !49, !"ipipe_v4l2_pad_ops", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 409, i32 41}
!50 = !{ptr @ipipe_fmts, !51, !"ipipe_fmts", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 28, i32 27}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!54 = !{ptr @ipipe_v4l2_internal_ops, !55, !"ipipe_v4l2_internal_ops", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 424, i32 46}
!56 = !{ptr @ipipe_media_ops, !57, !"ipipe_media_ops", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/omap4iss/iss_ipipe.c", i32 487, i32 45}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2156381544}
!68 = !{i64 6237929}
!69 = !{i64 6238347}
!70 = !{i64 2156381153}
!71 = !{i64 2148966922, i64 2148966927, i64 2148966940, i64 2148966984, i64 2148967018, i64 2148967039}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 2000, i32 1}
