; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-vdic.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-vdic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vdic_pipeline_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vdic_priv = type { ptr, ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [3 x %struct.v4l2_mbus_framefmt], [3 x ptr], [3 x %struct.v4l2_fract], ptr, i8, %struct.v4l2_ctrl_handler, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.imx_media_pixfmt = type { i32, ptr, i32, i32, i32, i8, i8, i8 }
%struct.ipu_image = type { %struct.v4l2_pix_format, %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.91, i32, i32 }
%union.anon.91 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.imx_media_video_dev = type { ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, ptr, %struct.list_head }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@vdic_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @vdic_video_ops, ptr null, ptr null, ptr null, ptr @vdic_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vdic_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @vdic_registered, ptr @vdic_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@vdic_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @vdic_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx_media_vdic_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@imx_media_vdic_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: Removing\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"imx_media_vdic_unregister\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/imx/imx-media-vdic.c\00", [53 x i8] zeroinitializer }, align 32
@imx_media_vdic_unregister._entry_ptr = internal global ptr @imx_media_vdic_unregister._entry, section ".printk_index", align 4
@vdic_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdic_s_stream, ptr null, ptr @vdic_g_frame_interval, ptr @vdic_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vdic_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx_media_init_cfg, ptr @vdic_enum_mbus_code, ptr null, ptr null, ptr @vdic_get_fmt, ptr @vdic_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdic_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vdic_s_stream.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx6_media\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdic_s_stream\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: stream %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@direct_ops = internal global { %struct.vdic_pipeline_ops, [16 x i8] } { %struct.vdic_pipeline_ops { ptr @vdic_setup_direct, ptr @vdic_start_direct, ptr @vdic_stop_direct, ptr @vdic_disable_direct }, [16 x i8] zeroinitializer }, align 32
@indirect_ops = internal global { %struct.vdic_pipeline_ops, [16 x i8] } { %struct.vdic_pipeline_ops { ptr @vdic_setup_indirect, ptr @vdic_start_indirect, ptr @vdic_stop_indirect, ptr @vdic_disable_indirect }, [16 x i8] zeroinitializer }, align 32
@vdic_get_ipu_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: failed to get VDIC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdic_get_ipu_resources\00", [41 x i8] zeroinitializer }, align 32
@vdic_get_ipu_resources._entry_ptr = internal global ptr @vdic_get_ipu_resources._entry, section ".printk_index", align 4
@vdic_get_ipu_resources._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not get IDMAC channel %u\0A\00", [58 x i8] zeroinitializer }, align 32
@vdic_get_ipu_resources._entry_ptr.13 = internal global ptr @vdic_get_ipu_resources._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@vdic_link_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: direct CSI pipeline requires high motion\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdic_link_validate\00", [45 x i8] zeroinitializer }, align 32
@vdic_link_validate._entry_ptr = internal global ptr @vdic_link_validate._entry, section ".printk_index", align 4
@vdic_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"imx_media_vdic:459:(hdlr)->_lock\00", [63 x i8] zeroinitializer }, align 32
@vdic_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vdic_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vdic_ctrl_motion_menu = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@vdic_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Invalid control\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdic_s_ctrl\00", [20 x i8] zeroinitializer }, align 32
@vdic_s_ctrl._entry_ptr = internal global ptr @vdic_s_ctrl._entry, section ".printk_index", align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No Motion Compensation\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Low Motion\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Medium Motion\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"High Motion\00", [20 x i8] zeroinitializer }, align 32
@vdic_link_setup.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdic_link_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: link setup %s -> %s\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"vdic_subdev_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 903, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"vdic_internal_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 908, i32 46 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"vdic_entity_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 898, i32 45 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 939, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 964, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"vdic_video_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 892, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"vdic_pad_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 884, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 504, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"direct_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 345, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"indirect_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 352, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 142, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 177, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 998, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 774, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 459, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"vdic_ctrl_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 443, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"vdic_ctrl_motion_menu\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 447, i32 27 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 434, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 448, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 449, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 450, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 451, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [46 x i8] c"../drivers/staging/media/imx/imx-media-vdic.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 681, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @imx_media_vdic_unregister._entry, ptr @imx_media_vdic_unregister._entry_ptr, ptr @vdic_get_ipu_resources._entry, ptr @vdic_get_ipu_resources._entry.11, ptr @vdic_get_ipu_resources._entry_ptr, ptr @vdic_get_ipu_resources._entry_ptr.13, ptr @vdic_link_validate._entry, ptr @vdic_link_validate._entry_ptr, ptr @vdic_s_ctrl._entry, ptr @vdic_s_ctrl._entry_ptr, ptr @vdic_subdev_ops, ptr @vdic_internal_ops, ptr @vdic_entity_ops, ptr @imx_media_vdic_register.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vdic_video_ops, ptr @vdic_pad_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @direct_ops, ptr @indirect_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @vdic_init_controls._key, ptr @.str.17, ptr @vdic_ctrl_ops, ptr @vdic_ctrl_motion_menu, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_vdic_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_vdic_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indirect_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_get_ipu_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_get_ipu_resources._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_link_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_ctrl_motion_menu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdic_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_media_vdic_register(ptr noundef %v4l2_dev, ptr noundef %ipu_dev, ptr noundef %ipu, i32 noundef %grp_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ipu_dev, i32 noundef 824, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ipu_dev, ptr %call.i, align 4
  %ipu3 = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ipu3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ipu, ptr %ipu3, align 4
  %sd = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef nonnull @vdic_subdev_ops) #6
  %dev_priv.i = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %internal_ops = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 7
  %3 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vdic_internal_ops, ptr %internal_ops, align 4
  %ops = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 11
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vdic_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16386, ptr %function, align 4
  %driver = getelementptr inbounds %struct.device, ptr %ipu_dev, i32 0, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  %owner10 = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %owner10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %owner10, align 4
  %flags = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %flags, align 4
  %grp_id13 = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %grp_id13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %grp_id, ptr %grp_id13, align 4
  %name = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 2, i32 9
  %call17 = tail call i32 @ipu_get_num(ptr noundef %ipu) #6
  tail call void @imx_media_grp_id_to_sd_name(ptr noundef %name, i32 noundef 32, i32 noundef %grp_id, i32 noundef %call17) #6
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @imx_media_vdic_register.__key) #6
  %flags19 = getelementptr %struct.vdic_priv, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %13 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %flags19, align 4
  %flags19.1 = getelementptr %struct.vdic_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %14 = ptrtoint ptr %flags19.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %flags19.1, align 4
  %flags19.2 = getelementptr %struct.vdic_priv, ptr %call.i, i32 0, i32 3, i32 2, i32 4
  %15 = ptrtoint ptr %flags19.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %flags19.2, align 4
  %pad22 = getelementptr inbounds %struct.vdic_priv, ptr %call.i, i32 0, i32 3
  %call24 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 3, ptr noundef %pad22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.free_crit_edge

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end27:                                         ; preds = %if.end
  %call29 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end27.free_crit_edge

if.end27.free_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %free

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

free:                                             ; preds = %if.end27.free_crit_edge, %if.end.free_crit_edge
  %ret.0 = phi i32 [ %call24, %if.end.free_crit_edge ], [ %call29, %if.end27.free_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %lock) #6
  %16 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %free ], [ %sd, %if.end27.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_grp_id_to_sd_name(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_get_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_vdic_unregister(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name) #9
  tail call void @v4l2_device_unregister_subdev(ptr noundef %sd) #6
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %src = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %sink_sd = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %sink_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sink_sd, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %csi_direct = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %csi_direct to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %csi_direct, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %src_sd.0 = select i1 %tobool2.not, ptr null, ptr %3
  %stream_count = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool8.not = icmp eq i32 %enable, 0
  %lnot.ext = zext i1 %tobool8.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %lnot.ext)
  %cmp.not = icmp eq i32 %9, %lnot.ext
  br i1 %cmp.not, label %do.body, label %if.end.update_count_crit_edge

if.end.update_count_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_count

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdic_s_stream.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdic_s_stream, %if.then19)) #6
          to label %do.end [label %if.then19], !srcloc !80

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond21 = select i1 %tobool8.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vdic_s_stream.__UNIQUE_ID_ddebug315, ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef nonnull %cond21) #6
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  br i1 %tobool8.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %do.end
  %active_input_pad.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %active_input_pad.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_input_pad.i, align 4
  %14 = ptrtoint ptr %csi_direct to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %csi_direct, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %cond.i = select i1 %tobool.not.i, ptr @indirect_ops, ptr @direct_ops
  %ops.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cond.i, ptr %ops.i, align 4
  %ipu.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipu.i.i, align 4
  %call.i.i = tail call ptr @ipu_vdi_get(ptr noundef %18) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 2, i32 9
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name.i.i) #9
  br label %out.i.i

if.end.i.i:                                       ; preds = %if.then24
  %vdi4.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %vdi4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %vdi4.i.i, align 4
  %20 = ptrtoint ptr %csi_direct to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %csi_direct, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.then5.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %22 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipu.i.i, align 4
  %call7.i.i = tail call ptr @ipu_idmac_get(ptr noundef %23, i32 noundef 8) #6
  %cmp.i57.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57.i.i, label %if.then5.i.i.do.end27.i.i_crit_edge, label %if.end11.i.i

if.then5.i.i.do.end27.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27.i.i

if.end11.i.i:                                     ; preds = %if.then5.i.i
  %vdi_in_ch_p.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %vdi_in_ch_p.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %vdi_in_ch_p.i.i, align 4
  %25 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ipu.i.i, align 4
  %call13.i.i = tail call ptr @ipu_idmac_get(ptr noundef %26, i32 noundef 9) #6
  %cmp.i58.i.i = icmp ugt ptr %call13.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58.i.i, label %if.end11.i.i.do.end27.i.i_crit_edge, label %if.end17.i.i

if.end11.i.i.do.end27.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27.i.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  %vdi_in_ch.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %vdi_in_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call13.i.i, ptr %vdi_in_ch.i.i, align 4
  %28 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ipu.i.i, align 4
  %call19.i.i = tail call ptr @ipu_idmac_get(ptr noundef %29, i32 noundef 10) #6
  %cmp.i59.i.i = icmp ugt ptr %call19.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i.i, label %if.end17.i.i.do.end27.i.i_crit_edge, label %if.end23.i.i

if.end17.i.i.do.end27.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27.i.i

if.end23.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %vdi_in_ch_n.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %vdi_in_ch_n.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call19.i.i, ptr %vdi_in_ch_n.i.i, align 4
  br label %if.end.i

do.end27.i.i:                                     ; preds = %if.end17.i.i.do.end27.i.i_crit_edge, %if.end11.i.i.do.end27.i.i_crit_edge, %if.then5.i.i.do.end27.i.i_crit_edge
  %err_chan.0.i.i = phi i32 [ 8, %if.then5.i.i.do.end27.i.i_crit_edge ], [ 9, %if.end11.i.i.do.end27.i.i_crit_edge ], [ 10, %if.end17.i.i.do.end27.i.i_crit_edge ]
  %ret.0.in.i.i = phi ptr [ %call7.i.i, %if.then5.i.i.do.end27.i.i_crit_edge ], [ %call13.i.i, %if.end11.i.i.do.end27.i.i_crit_edge ], [ %call19.i.i, %if.end17.i.i.do.end27.i.i_crit_edge ]
  %name30.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 2, i32 9
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name30.i.i, i32 noundef %err_chan.0.i.i) #9
  br label %out.i.i

out.i.i:                                          ; preds = %do.end27.i.i, %do.end.i.i
  %ret.1.in.i.i = phi ptr [ %call.i.i, %do.end.i.i ], [ %ret.0.in.i.i, %do.end27.i.i ]
  %ret.1.i.i = ptrtoint ptr %ret.1.in.i.i to i32
  %vdi_in_ch_p.i.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %vdi_in_ch_p.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdi_in_ch_p.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %out.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

out.i.i.if.end.i.i.i_crit_edge:                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %32) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %out.i.i.if.end.i.i.i_crit_edge
  %33 = ptrtoint ptr %vdi_in_ch_p.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %vdi_in_ch_p.i.i.i, align 4
  %vdi_in_ch.i.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %vdi_in_ch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdi_in_ch.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %35) #6
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %36 = ptrtoint ptr %vdi_in_ch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %vdi_in_ch.i.i.i, align 4
  %vdi_in_ch_n.i.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %vdi_in_ch_n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdi_in_ch_n.i.i.i, align 4
  %tobool8.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool8.not.i.i.i, label %if.end6.i.i.i.if.end11.i.i.i_crit_edge, label %if.then9.i.i.i

if.end6.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %38) #6
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.end6.i.i.i.if.end11.i.i.i_crit_edge
  %39 = ptrtoint ptr %vdi_in_ch_n.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %vdi_in_ch_n.i.i.i, align 4
  %vdi.i.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %vdi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdi.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %41, null
  %cmp.i.i.i.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end11.i.i.i.vdic_get_ipu_resources.exit.i_crit_edge, label %if.then13.i.i.i

if.end11.i.i.i.vdic_get_ipu_resources.exit.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vdic_get_ipu_resources.exit.i

if.then13.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_vdi_put(ptr noundef nonnull %41) #6
  br label %vdic_get_ipu_resources.exit.i

vdic_get_ipu_resources.exit.i:                    ; preds = %if.then13.i.i.i, %if.end11.i.i.i.vdic_get_ipu_resources.exit.i_crit_edge
  %42 = ptrtoint ptr %vdi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %vdi.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %ret.1.in.i.i, null
  br i1 %tobool1.not.i, label %vdic_get_ipu_resources.exit.i.if.end.i_crit_edge, label %vdic_get_ipu_resources.exit.i.out_crit_edge

vdic_get_ipu_resources.exit.i.out_crit_edge:      ; preds = %vdic_get_ipu_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

vdic_get_ipu_resources.exit.i.if.end.i_crit_edge: ; preds = %vdic_get_ipu_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %vdic_get_ipu_resources.exit.i.if.end.i_crit_edge, %if.end23.i.i, %if.end.i.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 %13
  %vdi.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %vdi.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdi.i, align 4
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %height.i = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 %13, i32 1
  %47 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height.i, align 4
  tail call void @ipu_vdi_setup(ptr noundef %44, i32 noundef 8198, i32 noundef %46, i32 noundef %48) #6
  %49 = ptrtoint ptr %vdi.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vdi.i, align 4
  %field.i = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 %13, i32 3
  %51 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %field.i, align 4
  tail call void @ipu_vdi_set_field_order(ptr noundef %50, i64 noundef 0, i32 noundef %52) #6
  %53 = ptrtoint ptr %vdi.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vdi.i, align 4
  %motion.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 24
  %55 = ptrtoint ptr %motion.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %motion.i, align 4
  tail call void @ipu_vdi_set_motion(ptr noundef %54, i32 noundef %56) #6
  %57 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call5.i = tail call i32 %60(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %out_put_ipu.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %vdi.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vdi.i, align 4
  %call10.i = tail call i32 @ipu_vdi_enable(ptr noundef %62) #6
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i, align 4
  %start.i = getelementptr inbounds %struct.vdic_pipeline_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %start.i, align 4
  tail call void %66(ptr noundef %1) #6
  br label %if.end29

out_put_ipu.i:                                    ; preds = %if.end.i
  %vdi_in_ch_p.i32.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 7
  %67 = ptrtoint ptr %vdi_in_ch_p.i32.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vdi_in_ch_p.i32.i, align 4
  %tobool.not.i33.i = icmp eq ptr %68, null
  br i1 %tobool.not.i33.i, label %out_put_ipu.i.if.end.i35.i_crit_edge, label %if.then.i.i

out_put_ipu.i.if.end.i35.i_crit_edge:             ; preds = %out_put_ipu.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i35.i

if.then.i.i:                                      ; preds = %out_put_ipu.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %68) #6
  br label %if.end.i35.i

if.end.i35.i:                                     ; preds = %if.then.i.i, %out_put_ipu.i.if.end.i35.i_crit_edge
  %69 = ptrtoint ptr %vdi_in_ch_p.i32.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %vdi_in_ch_p.i32.i, align 4
  %vdi_in_ch.i34.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 8
  %70 = ptrtoint ptr %vdi_in_ch.i34.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vdi_in_ch.i34.i, align 4
  %tobool3.not.i.i = icmp eq ptr %71, null
  br i1 %tobool3.not.i.i, label %if.end.i35.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.end.i35.i.if.end6.i.i_crit_edge:               ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %71) #6
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i35.i.if.end6.i.i_crit_edge
  %72 = ptrtoint ptr %vdi_in_ch.i34.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %vdi_in_ch.i34.i, align 4
  %vdi_in_ch_n.i36.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 9
  %73 = ptrtoint ptr %vdi_in_ch_n.i36.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vdi_in_ch_n.i36.i, align 4
  %tobool8.not.i.i = icmp eq ptr %74, null
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end11.i39.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end11.i39.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i39.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %74) #6
  br label %if.end11.i39.i

if.end11.i39.i:                                   ; preds = %if.then9.i.i, %if.end6.i.i.if.end11.i39.i_crit_edge
  %75 = ptrtoint ptr %vdi_in_ch_n.i36.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %vdi_in_ch_n.i36.i, align 4
  %76 = ptrtoint ptr %vdi.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vdi.i, align 4
  %tobool.not.i.i37.i = icmp eq ptr %77, null
  %cmp.i.i38.i = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i37.i, %cmp.i.i38.i
  br i1 %spec.select.i.i.i, label %if.end11.i39.i.if.end26.thread119_crit_edge, label %if.then13.i.i

if.end11.i39.i.if.end26.thread119_crit_edge:      ; preds = %if.end11.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.thread119

if.then13.i.i:                                    ; preds = %if.end11.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_vdi_put(ptr noundef nonnull %77) #6
  br label %if.end26.thread119

if.end26.thread119:                               ; preds = %if.then13.i.i, %if.end11.i39.i.if.end26.thread119_crit_edge
  %78 = ptrtoint ptr %vdi.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %vdi.i, align 4
  br label %out

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @vdic_stop(ptr noundef %1)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end8.i
  br i1 %tobool2.not, label %if.end29.update_count_crit_edge, label %if.else34

if.end29.update_count_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_count

if.else34:                                        ; preds = %if.end29
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %src_sd.0, i32 0, i32 6
  %79 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %video, align 4
  %tobool35.not = icmp eq ptr %82, null
  br i1 %tobool35.not, label %if.else34.update_count_crit_edge, label %land.lhs.true

if.else34.update_count_crit_edge:                 ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_count

land.lhs.true:                                    ; preds = %if.else34
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_stream, align 4
  %tobool38.not = icmp eq ptr %84, null
  br i1 %tobool38.not, label %land.lhs.true.update_count_crit_edge, label %if.else40

land.lhs.true.update_count_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_count

if.else40:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool41.not = icmp eq ptr %85, null
  br i1 %tobool41.not, label %if.else40.if.else48_crit_edge, label %land.lhs.true42

if.else40.if.else48_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

land.lhs.true42:                                  ; preds = %if.else40
  %s_stream43 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %s_stream43 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_stream43, align 4
  %tobool44.not = icmp eq ptr %87, null
  br i1 %tobool44.not, label %land.lhs.true42.if.else48_crit_edge, label %land.lhs.true42.if.end55_crit_edge

land.lhs.true42.if.end55_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true42.if.else48_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

if.else48:                                        ; preds = %land.lhs.true42.if.else48_crit_edge, %if.else40.if.else48_crit_edge
  br label %if.end55

if.end55:                                         ; preds = %if.else48, %land.lhs.true42.if.end55_crit_edge
  %.sink = phi ptr [ %84, %if.else48 ], [ %87, %land.lhs.true42.if.end55_crit_edge ]
  %call52 = tail call i32 %.sink(ptr noundef nonnull %src_sd.0, i32 noundef %enable) #6
  %88 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call52, label %if.then65 [
    i32 0, label %if.end55.update_count_crit_edge
    i32 -515, label %if.end55.update_count_crit_edge125
  ]

if.end55.update_count_crit_edge125:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_count

if.end55.update_count_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_count

if.then65:                                        ; preds = %if.end55
  br i1 %tobool8.not, label %if.then65.out_crit_edge, label %if.then67

if.then65.out_crit_edge:                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then67:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @vdic_stop(ptr noundef %1)
  br label %out

update_count:                                     ; preds = %if.end55.update_count_crit_edge, %if.end55.update_count_crit_edge125, %land.lhs.true.update_count_crit_edge, %if.else34.update_count_crit_edge, %if.end29.update_count_crit_edge, %if.end.update_count_crit_edge
  %cond72 = select i1 %tobool8.not, i32 -1, i32 1
  %89 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %stream_count, align 4
  %add = add i32 %90, %cond72
  %91 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %92 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %stream_count, align 4
  br label %out

out:                                              ; preds = %update_count, %if.then67, %if.then65.out_crit_edge, %if.end26.thread119, %vdic_get_ipu_resources.exit.i.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %call52, %if.then67 ], [ %call52, %if.then65.out_crit_edge ], [ -32, %lor.lhs.false.out_crit_edge ], [ -32, %entry.out_crit_edge ], [ 0, %update_count ], [ %call5.i, %if.end26.thread119 ], [ %ret.1.i.i, %vdic_get_ipu_resources.exit.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fi, align 4
  %arrayidx = getelementptr %struct.vdic_priv, ptr %3, i32 0, i32 20, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_s_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %arrayidx2 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fi, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %3, label %entry.out_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge46
    i32 2, label %sw.bb13
  ]

entry.sw.bb_crit_edge46:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge46
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %sw.bb.if.then_crit_edge, label %lor.lhs.false

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %arrayidx8 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 %3
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %arrayidx8, align 4
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %12 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %interval, align 4
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx2, align 4
  %csi_direct = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %csi_direct to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %csi_direct, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end.sw.epilog_crit_edge, label %if.then10

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %denominator11 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 2, i32 1
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %entry
  %active_input_pad = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %active_input_pad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_input_pad, align 4
  %arrayidx = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 %18
  %interval14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %interval14 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %interval14, align 4
  %csi_direct15 = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %csi_direct15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %csi_direct15, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16.not = icmp eq i8 %23, 0
  br i1 %tobool16.not, label %sw.bb13.sw.epilog_crit_edge, label %if.then17

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %denominator19 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then17, %if.then10
  %denominator19.sink45 = phi ptr [ %denominator19, %if.then17 ], [ %denominator11, %if.then10 ]
  %24 = ptrtoint ptr %denominator19.sink45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %denominator19.sink45, align 4
  %mul20 = shl i32 %25, 1
  store i32 %mul20, ptr %denominator19.sink45, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb13.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %26 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fi, align 4
  %arrayidx24 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 %27
  %interval25 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %28 = ptrtoint ptr %interval25 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %interval25, align 4
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %arrayidx24, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vdic_stop(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %stop = getelementptr inbounds %struct.vdic_pipeline_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  tail call void %3(ptr noundef %priv) #6
  %vdi = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %vdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdi, align 4
  %call = tail call i32 @ipu_vdi_disable(ptr noundef %5) #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %disable = getelementptr inbounds %struct.vdic_pipeline_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable, align 4
  tail call void %9(ptr noundef %priv) #6
  %vdi_in_ch_p.i = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 7
  %10 = ptrtoint ptr %vdi_in_ch_p.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdi_in_ch_p.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %12 = ptrtoint ptr %vdi_in_ch_p.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vdi_in_ch_p.i, align 4
  %vdi_in_ch.i = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 8
  %13 = ptrtoint ptr %vdi_in_ch.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdi_in_ch.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %14) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %15 = ptrtoint ptr %vdi_in_ch.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %vdi_in_ch.i, align 4
  %vdi_in_ch_n.i = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 9
  %16 = ptrtoint ptr %vdi_in_ch_n.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdi_in_ch_n.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then9.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %17) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end11.i_crit_edge
  %18 = ptrtoint ptr %vdi_in_ch_n.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vdi_in_ch_n.i, align 4
  %19 = ptrtoint ptr %vdi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdi, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  %cmp.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end11.i.vdic_put_ipu_resources.exit_crit_edge, label %if.then13.i

if.end11.i.vdic_put_ipu_resources.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vdic_put_ipu_resources.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_vdi_put(ptr noundef nonnull %20) #6
  br label %vdic_put_ipu_resources.exit

vdic_put_ipu_resources.exit:                      ; preds = %if.then13.i, %if.end11.i.vdic_put_ipu_resources.exit_crit_edge
  %21 = ptrtoint ptr %vdi to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %vdi, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_vdi_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_vdi_set_field_order(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_vdi_set_motion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_vdi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_setup_direct(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipu = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipu, align 4
  %call = tail call i32 @ipu_fsu_link(ptr noundef %1, i32 noundef 6, i32 noundef 7) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdic_start_direct(ptr nocapture noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdic_stop_direct(ptr nocapture noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdic_disable_direct(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipu = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipu, align 4
  %call = tail call i32 @ipu_fsu_unlink(ptr noundef %1, i32 noundef 6, i32 noundef 7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_fsu_link(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_fsu_unlink(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_setup_indirect(ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vdic_priv, ptr %priv, i32 0, i32 18, i32 1
  %arrayidx1 = getelementptr %struct.vdic_priv, ptr %priv, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %bpp = getelementptr inbounds %struct.imx_media_pixfmt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bpp, align 4
  %mul = mul i32 %5, %3
  %height = getelementptr %struct.vdic_priv, ptr %priv, i32 0, i32 18, i32 1, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %mul2 = mul i32 %mul, %7
  %div38 = lshr i32 %mul2, 4
  %field_size = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 15
  %8 = ptrtoint ptr %field_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div38, ptr %field_size, align 4
  %planar = getelementptr inbounds %struct.imx_media_pixfmt, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %planar to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %planar, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bpp, align 4
  %mul6 = mul i32 %12, %3
  %shr7 = lshr i32 %mul6, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %shr7, %cond.false ], [ %3, %entry.cond.end_crit_edge ]
  %in_stride = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 14
  %13 = ptrtoint ptr %in_stride to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %in_stride, align 4
  %prev_in_buf = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 12
  %14 = ptrtoint ptr %prev_in_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prev_in_buf, align 4
  %curr_in_buf = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 11
  %15 = ptrtoint ptr %curr_in_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %curr_in_buf, align 4
  %field = getelementptr %struct.vdic_priv, ptr %priv, i32 0, i32 18, i32 1, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  %fieldtype = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 13
  %18 = ptrtoint ptr %fieldtype to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fieldtype, align 4
  %vdi_in_ch_p = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 7
  %19 = ptrtoint ptr %vdi_in_ch_p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdi_in_ch_p, align 4
  %call = tail call fastcc i32 @setup_vdi_channel(ptr noundef %priv, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %vdi_in_ch = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 8
  %21 = ptrtoint ptr %vdi_in_ch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdi_in_ch, align 4
  %call9 = tail call fastcc i32 @setup_vdi_channel(ptr noundef %priv, ptr noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdi_in_ch_n = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 9
  %23 = ptrtoint ptr %vdi_in_ch_n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdi_in_ch_n, align 4
  %call13 = tail call fastcc i32 @setup_vdi_channel(ptr noundef %priv, ptr noundef %24)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call, %cond.end.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdic_start_indirect(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdi_in_ch_p = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %vdi_in_ch_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdi_in_ch_p, align 4
  %call = tail call i32 @ipu_idmac_enable_channel(ptr noundef %1) #6
  %vdi_in_ch = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %vdi_in_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdi_in_ch, align 4
  %call1 = tail call i32 @ipu_idmac_enable_channel(ptr noundef %3) #6
  %vdi_in_ch_n = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %vdi_in_ch_n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdi_in_ch_n, align 4
  %call2 = tail call i32 @ipu_idmac_enable_channel(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdic_stop_indirect(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdi_in_ch_p = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %vdi_in_ch_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdi_in_ch_p, align 4
  %call = tail call i32 @ipu_idmac_disable_channel(ptr noundef %1) #6
  %vdi_in_ch = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %vdi_in_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdi_in_ch, align 4
  %call1 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %3) #6
  %vdi_in_ch_n = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %vdi_in_ch_n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdi_in_ch_n, align 4
  %call2 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %5) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdic_disable_indirect(ptr nocapture noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_vdi_channel(ptr nocapture noundef readonly %priv, ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  %image = alloca %struct.ipu_image, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %image) #6
  tail call void @ipu_cpmem_zero(ptr noundef %channel) #6
  %2 = getelementptr inbounds i8, ptr %image, i32 64
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %fmt = getelementptr inbounds %struct.imx_media_video_dev, ptr %1, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %image, ptr %fmt, i32 48)
  %rect = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 1
  %compose = getelementptr inbounds %struct.imx_media_video_dev, ptr %1, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %rect, ptr %compose, i32 16)
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %div1 = lshr i32 %7, 1
  store i32 %div1, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height4, align 4
  %div52 = lshr i32 %9, 1
  store i32 %div52, ptr %height4, align 4
  %phys17 = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 3
  %10 = ptrtoint ptr %phys17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %phys17, align 4
  %call = call i32 @ipu_cpmem_set_image(ptr noundef %channel, ptr noundef nonnull %image) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %image, align 4
  %and = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool9.not, i32 16, i32 8
  call void @ipu_cpmem_set_burstsize(ptr noundef %channel, i32 noundef %cond) #6
  call void @ipu_cpmem_set_axi_id(ptr noundef %channel, i32 noundef 1) #6
  call void @ipu_idmac_set_double_buffer(ptr noundef %channel, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %image) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_image(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_burstsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_axi_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_set_double_buffer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_enable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_disable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_vdi_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_idmac_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_vdi_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_vdi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_cfg(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call.i = tail call i32 @imx_media_enum_mbus_formats(ptr noundef %code1, i32 noundef %3, i32 noundef 9) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %6 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !81

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i
  br label %__vdic_get_fmt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 %5
  br label %__vdic_get_fmt.exit

__vdic_get_fmt.exit:                              ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__vdic_get_fmt.exit.out_crit_edge, label %if.end4

__vdic_get_fmt.exit.out_crit_edge:                ; preds = %__vdic_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %__vdic_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %out

out:                                              ; preds = %if.end4, %__vdic_get_fmt.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end4 ], [ -22, %__vdic_get_fmt.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat) #0 align 64 {
entry:
  %cc = alloca ptr, align 4
  %outcc = alloca ptr, align 4
  %format11 = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #6
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cc, align 4, !annotation !82
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ugt i32 %4, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %stream_count = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp sgt i32 %6, 0
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %if.end
  call fastcc void @vdic_try_fmt(ptr noundef %1, ptr noundef %sd_state, ptr noundef %sdformat, ptr noundef nonnull %cc)
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  %9 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  %num_pads.i.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %8, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !81

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %8, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %14, i32 %spec.select.i.i
  br label %__vdic_get_fmt.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 %8
  br label %__vdic_get_fmt.exit

__vdic_get_fmt.exit:                              ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %retval.0.i, ptr %format, i32 48)
  %16 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp ult i32 %17, 2
  br i1 %switch, label %if.then10, label %__vdic_get_fmt.exit.if.end25_crit_edge

__vdic_get_fmt.exit.if.end25_crit_edge:           ; preds = %__vdic_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then10:                                        ; preds = %__vdic_get_fmt.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outcc) #6
  %18 = ptrtoint ptr %outcc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %outcc, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format11) #6
  %19 = getelementptr inbounds i8, ptr %format11, i32 56
  %20 = call ptr @memset(ptr %19, i32 255, i32 32)
  %pad12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format11, i32 0, i32 1
  %21 = ptrtoint ptr %pad12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %pad12, align 4
  %22 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sdformat, align 4
  %24 = ptrtoint ptr %format11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %format11, align 4
  %format15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format11, i32 0, i32 2
  %25 = call ptr @memcpy(ptr %format15, ptr %format, i32 48)
  call fastcc void @vdic_try_fmt(ptr noundef %1, ptr noundef %sd_state, ptr noundef nonnull %format11, ptr noundef nonnull %outcc)
  %26 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i60 = icmp eq i32 %27, 0
  br i1 %cmp.i60, label %if.then.i64, label %if.else.i70

if.then.i64:                                      ; preds = %if.then10
  %num_pads.i.i61 = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 2, i32 0, i32 5
  %28 = ptrtoint ptr %num_pads.i.i61 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %29)
  %cmp.not.i.i63 = icmp ugt i16 %29, 2
  br i1 %cmp.not.i.i63, label %if.then.i64.v4l2_subdev_get_try_format.exit.i68_crit_edge, label %do.end.i.i65, !prof !81

if.then.i64.v4l2_subdev_get_try_format.exit.i68_crit_edge: ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i68

do.end.i.i65:                                     ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i68

v4l2_subdev_get_try_format.exit.i68:              ; preds = %do.end.i.i65, %if.then.i64.v4l2_subdev_get_try_format.exit.i68_crit_edge
  %spec.select.i.i66 = phi i32 [ 0, %do.end.i.i65 ], [ 2, %if.then.i64.v4l2_subdev_get_try_format.exit.i68_crit_edge ]
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i67 = getelementptr %struct.v4l2_subdev_pad_config, ptr %31, i32 %spec.select.i.i66
  br label %__vdic_get_fmt.exit72

if.else.i70:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i69 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 2
  br label %__vdic_get_fmt.exit72

__vdic_get_fmt.exit72:                            ; preds = %if.else.i70, %v4l2_subdev_get_try_format.exit.i68
  %retval.0.i71 = phi ptr [ %arrayidx.i.i67, %v4l2_subdev_get_try_format.exit.i68 ], [ %arrayidx.i69, %if.else.i70 ]
  %32 = call ptr @memcpy(ptr %retval.0.i71, ptr %format15, i32 48)
  %33 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp21 = icmp eq i32 %34, 1
  br i1 %cmp21, label %if.then22, label %__vdic_get_fmt.exit72.if.end24_crit_edge

__vdic_get_fmt.exit72.if.end24_crit_edge:         ; preds = %__vdic_get_fmt.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %__vdic_get_fmt.exit72
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %outcc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %outcc, align 4
  %arrayidx = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 19, i32 2
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %arrayidx, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %__vdic_get_fmt.exit72.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outcc) #6
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %__vdic_get_fmt.exit.if.end25_crit_edge
  %38 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp27 = icmp eq i32 %39, 1
  br i1 %cmp27, label %if.then28, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cc, align 4
  %42 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pad, align 4
  %arrayidx31 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 19, i32 %43
  %44 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %arrayidx31, align 4
  br label %out

out:                                              ; preds = %if.then28, %if.end25.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.end25.out_crit_edge ], [ -16, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_link_validate(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call i32 @v4l2_subdev_link_validate_default(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %csi_direct = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %csi_direct to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %csi_direct, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %motion = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %motion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %motion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %do.end

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 2, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ 0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_enum_mbus_formats(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vdic_try_fmt(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat, ptr nocapture noundef writeonly %cc) unnamed_addr #0 align 64 {
entry:
  %code1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %call.i = tail call ptr @imx_media_find_mbus_format(i32 noundef %1, i32 noundef 9) #6
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code1) #6
  %3 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %code1, align 4, !annotation !82
  %call.i52 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code1, i32 noundef 0, i32 noundef 9) #6
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code1, align 4
  %call.i53 = call ptr @imx_media_find_mbus_format(i32 noundef %5, i32 noundef 9) #6
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i53, ptr %cc, align 4
  %codes = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call.i53, i32 0, i32 1
  %7 = ptrtoint ptr %codes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %codes, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %code, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %active_input_pad = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 6
  %12 = ptrtoint ptr %active_input_pad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_input_pad, align 4
  %14 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.vdic_priv, ptr %priv, i32 0, i32 2, i32 0, i32 5
  %16 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %13, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !81

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %13, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 %spec.select.i.i
  br label %__vdic_get_fmt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.vdic_priv, ptr %priv, i32 0, i32 18, i32 %13
  br label %__vdic_get_fmt.exit

__vdic_get_fmt.exit:                              ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %21, label %__vdic_get_fmt.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %__vdic_get_fmt.exit.sw.bb9_crit_edge
    i32 1, label %__vdic_get_fmt.exit.sw.bb9_crit_edge54
  ]

__vdic_get_fmt.exit.sw.bb9_crit_edge54:           ; preds = %__vdic_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

__vdic_get_fmt.exit.sw.bb9_crit_edge:             ; preds = %__vdic_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

__vdic_get_fmt.exit.sw.epilog_crit_edge:          ; preds = %__vdic_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %__vdic_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %__vdic_get_fmt.exit.sw.bb9_crit_edge, %__vdic_get_fmt.exit.sw.bb9_crit_edge54
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 32, i32 noundef 968, i32 noundef 4, ptr noundef %height, i32 noundef 32, i32 noundef 2048, i32 noundef 1, i32 noundef 1) #6
  %field13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %field13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %field13, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %26, label %if.then29 [
    i32 4, label %sw.bb9.sw.epilog_crit_edge
    i32 8, label %sw.bb9.sw.epilog_crit_edge55
    i32 9, label %sw.bb9.sw.epilog_crit_edge56
    i32 5, label %sw.bb9.sw.epilog_crit_edge57
    i32 6, label %sw.bb9.sw.epilog_crit_edge58
  ]

sw.bb9.sw.epilog_crit_edge58:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge57:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge56:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge55:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %field13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %field13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then29, %sw.bb9.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge55, %sw.bb9.sw.epilog_crit_edge56, %sw.bb9.sw.epilog_crit_edge57, %sw.bb9.sw.epilog_crit_edge58, %sw.bb, %__vdic_get_fmt.exit.sw.epilog_crit_edge
  call void @imx_media_try_colorimetry(ptr noundef %format, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_try_colorimetry(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_find_mbus_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_registered(ptr nocapture noundef readonly %sd) #0 align 64 {
if.end:
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #6
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %code, align 4
  %call.i = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 9) #6
  %arrayidx = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 0
  %3 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code, align 4
  %arrayidx3 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 19, i32 0
  %call4 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx, i32 noundef 640, i32 noundef 480, i32 noundef %4, i32 noundef 1, ptr noundef %arrayidx3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %arrayidx7 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 0
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx7, align 4
  %denominator = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 0, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %denominator, align 4
  %7 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %code, align 4
  %arrayidx.1 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 1
  %arrayidx3.1 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 19, i32 1
  %call4.1 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx.1, i32 noundef 640, i32 noundef 480, i32 noundef 0, i32 noundef 1, ptr noundef %arrayidx3.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool.not.1, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %arrayidx7.1 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx7.1, align 4
  %denominator.1 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 1, i32 1
  %9 = ptrtoint ptr %denominator.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 30, ptr %denominator.1, align 4
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %code, align 4
  %call.i.2 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 9) #6
  %arrayidx.2 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 18, i32 2
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code, align 4
  %arrayidx3.2 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 19, i32 2
  %call4.2 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx.2, i32 noundef 640, i32 noundef 480, i32 noundef %12, i32 noundef 1, ptr noundef %arrayidx3.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool.not.2, label %if.end6.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.2:                                        ; preds = %if.end.2
  %arrayidx7.2 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 2
  %13 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arrayidx7.2, align 4
  %denominator.2 = getelementptr %struct.vdic_priv, ptr %1, i32 0, i32 20, i32 2, i32 1
  %14 = ptrtoint ptr %denominator.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 60, ptr %denominator.2, align 4
  %active_input_pad = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %active_input_pad to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %active_input_pad, align 4
  %ctrl_hdlr.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 23
  %call.i35 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdlr.i, i32 noundef 1, ptr noundef nonnull @vdic_init_controls._key, ptr noundef nonnull @.str.17) #6
  %call1.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_hdlr.i, ptr noundef nonnull @vdic_ctrl_ops, i32 noundef 10422532, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3, ptr noundef nonnull @vdic_ctrl_motion_menu) #6
  %ctrl_handler.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ctrl_hdlr.i, ptr %ctrl_handler.i, align 4
  %error.i = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 23, i32 9
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdlr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then.i ], [ 0, %if.end.i ], [ %call4, %if.end.cleanup_crit_edge ], [ %call4.1, %if.end.1.cleanup_crit_edge ], [ %call4.2, %if.end.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdic_unregistered(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %ctrl_hdlr = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 23
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_mbus_fmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %lock = getelementptr i8, ptr %1, i32 -332
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10422532, i32 %3)
  %cond = icmp eq i32 %3, 10422532
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %motion1 = getelementptr i8, ptr %1, i32 184
  %6 = ptrtoint ptr %motion1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %motion1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %sw.bb.out_crit_edge, label %if.then

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then:                                          ; preds = %sw.bb
  %stream_count = getelementptr i8, ptr %1, i32 188
  %8 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %motion1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %motion1, align 4
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr i8, ptr %1, i32 -508
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #9
  br label %out

out:                                              ; preds = %do.end, %if.end, %if.then.out_crit_edge, %sw.bb.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %sw.bb.out_crit_edge ], [ -22, %do.end ], [ -16, %if.then.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdic_link_setup(ptr noundef %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vdic_link_setup.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vdic_link_setup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 9
  %entity7 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity7, align 4
  %name8 = getelementptr inbounds %struct.media_entity, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name8, align 4
  %entity9 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %8 = ptrtoint ptr %entity9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity9, align 4
  %name10 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vdic_link_setup.__UNIQUE_ID_ddebug316, ptr noundef %3, ptr noundef nonnull @.str.25, ptr noundef %name, ptr noundef %7, ptr noundef %11) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %flags11 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags11, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end38, label %if.then13

if.then13:                                        ; preds = %do.end
  %entity14 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %14 = ptrtoint ptr %entity14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entity14, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then13.out_crit_edge, label %is_media_entity_v4l2_subdev.exit

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

is_media_entity_v4l2_subdev.exit:                 ; preds = %if.then13
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %if.end17, label %is_media_entity_v4l2_subdev.exit.out_crit_edge

is_media_entity_v4l2_subdev.exit.out_crit_edge:   ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %is_media_entity_v4l2_subdev.exit
  %and29 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %sink_sd36 = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 17
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end17
  %18 = ptrtoint ptr %sink_sd36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sink_sd36, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %if.end34, label %if.then31.out_crit_edge

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end34:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %sink_sd36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %15, ptr %sink_sd36, align 4
  br label %out

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %sink_sd36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sink_sd36, align 4
  br label %out

if.end38:                                         ; preds = %do.end
  %and39 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %src46 = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 16
  br i1 %tobool40.not, label %if.else45, label %if.then41

if.then41:                                        ; preds = %if.end38
  %22 = ptrtoint ptr %src46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src46, align 4
  %tobool42.not = icmp eq ptr %23, null
  br i1 %tobool42.not, label %if.end47, label %if.then41.out_crit_edge

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %src46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %src46, align 4
  br label %out

if.end47:                                         ; preds = %if.then41
  %index = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp = icmp eq i16 %26, 1
  br i1 %cmp, label %if.then49, label %if.else58

if.then49:                                        ; preds = %if.end47
  %vdev50 = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 21
  %27 = ptrtoint ptr %vdev50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev50, align 4
  %entity51 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %29 = ptrtoint ptr %entity51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %entity51, align 4
  %tobool.not.i125 = icmp eq ptr %30, null
  br i1 %tobool.not.i125, label %if.then49.out_crit_edge, label %is_media_entity_v4l2_video_device.exit

if.then49.out_crit_edge:                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

is_media_entity_v4l2_video_device.exit:           ; preds = %if.then49
  %obj_type.i126 = getelementptr inbounds %struct.media_entity, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %obj_type.i126 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %obj_type.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i127 = icmp eq i32 %32, 1
  br i1 %cmp.i127, label %if.end54, label %is_media_entity_v4l2_video_device.exit.out_crit_edge

is_media_entity_v4l2_video_device.exit.out_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end54:                                         ; preds = %is_media_entity_v4l2_video_device.exit
  %tobool55.not = icmp eq ptr %28, null
  br i1 %tobool55.not, label %if.end54.out_crit_edge, label %if.end54.if.end83_crit_edge

if.end54.if.end83_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else58:                                        ; preds = %if.end47
  %entity59 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %33 = ptrtoint ptr %entity59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entity59, align 4
  %tobool.not.i129 = icmp eq ptr %34, null
  br i1 %tobool.not.i129, label %if.else58.out_crit_edge, label %is_media_entity_v4l2_subdev.exit133

if.else58.out_crit_edge:                          ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

is_media_entity_v4l2_subdev.exit133:              ; preds = %if.else58
  %obj_type.i130 = getelementptr inbounds %struct.media_entity, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %obj_type.i130 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %obj_type.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i131 = icmp eq i32 %36, 2
  br i1 %cmp.i131, label %if.end62, label %is_media_entity_v4l2_subdev.exit133.out_crit_edge

is_media_entity_v4l2_subdev.exit133.out_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit133
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end62:                                         ; preds = %is_media_entity_v4l2_subdev.exit133
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %34, i32 0, i32 10
  %37 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %grp_id, align 4
  %and74 = and i32 %38, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end62.out_crit_edge, label %lor.lhs.false

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %if.end62
  %index76 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 2
  %39 = ptrtoint ptr %index76 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %index76, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %40)
  %cmp78.not = icmp eq i16 %40, 1
  br i1 %cmp78.not, label %lor.lhs.false.if.end83_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false.if.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.end83:                                         ; preds = %lor.lhs.false.if.end83_crit_edge, %if.end54.if.end83_crit_edge
  %.sink = phi i8 [ 0, %if.end54.if.end83_crit_edge ], [ 1, %lor.lhs.false.if.end83_crit_edge ]
  %csi_direct = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 22
  %41 = ptrtoint ptr %csi_direct to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink, ptr %csi_direct, align 4
  %entity84 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %42 = ptrtoint ptr %entity84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %entity84, align 4
  %44 = ptrtoint ptr %src46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %src46, align 4
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %index, align 4
  %conv87 = zext i16 %46 to i32
  %active_input_pad = getelementptr inbounds %struct.vdic_priv, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %active_input_pad to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv87, ptr %active_input_pad, align 4
  br label %out

out:                                              ; preds = %if.end83, %lor.lhs.false.out_crit_edge, %if.end62.out_crit_edge, %is_media_entity_v4l2_subdev.exit133.out_crit_edge, %if.else58.out_crit_edge, %if.end54.out_crit_edge, %is_media_entity_v4l2_video_device.exit.out_crit_edge, %if.then49.out_crit_edge, %if.else45, %if.then41.out_crit_edge, %if.else, %if.end34, %if.then31.out_crit_edge, %is_media_entity_v4l2_subdev.exit.out_crit_edge, %if.then13.out_crit_edge
  %ret.2 = phi i32 [ 0, %if.end34 ], [ 0, %if.else ], [ 0, %if.end83 ], [ 0, %if.else45 ], [ -22, %is_media_entity_v4l2_subdev.exit.out_crit_edge ], [ -16, %if.then31.out_crit_edge ], [ -16, %if.then41.out_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit133.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end62.out_crit_edge ], [ -22, %if.then13.out_crit_edge ], [ -19, %if.end54.out_crit_edge ], [ -22, %is_media_entity_v4l2_video_device.exit.out_crit_edge ], [ -22, %if.then49.out_crit_edge ], [ -22, %if.else58.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @imx_media_vdic_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 939, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 964, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @imx_media_vdic_unregister._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @imx_media_vdic_unregister._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @vdic_subdev_ops, !10, !"vdic_subdev_ops", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 903, i32 37}
!11 = !{ptr @vdic_video_ops, !12, !"vdic_video_ops", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 892, i32 43}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 504, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vdic_s_stream.__UNIQUE_ID_ddebug315, !14, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @direct_ops, !21, !"direct_ops", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 345, i32 33}
!22 = !{ptr @indirect_ops, !23, !"indirect_ops", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 352, i32 33}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 142, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vdic_get_ipu_resources._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @vdic_get_ipu_resources._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 177, i32 2}
!31 = !{ptr @vdic_get_ipu_resources._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vdic_get_ipu_resources._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @vdic_pad_ops, !34, !"vdic_pad_ops", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 884, i32 41}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 774, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vdic_link_validate._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @vdic_link_validate._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @vdic_internal_ops, !43, !"vdic_internal_ops", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 908, i32 46}
!44 = !{ptr @vdic_init_controls._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 459, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vdic_ctrl_ops, !48, !"vdic_ctrl_ops", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 443, i32 35}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 434, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vdic_s_ctrl._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @vdic_s_ctrl._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 448, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 449, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 450, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 451, i32 2}
!62 = !{ptr @vdic_ctrl_motion_menu, !63, !"vdic_ctrl_motion_menu", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 447, i32 27}
!64 = !{ptr @vdic_entity_ops, !65, !"vdic_entity_ops", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 898, i32 45}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/imx/imx-media-vdic.c", i32 681, i32 2}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vdic_link_setup.__UNIQUE_ID_ddebug316, !67, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
!80 = !{i64 2148354563, i64 2148354568, i64 2148354581, i64 2148354625, i64 2148354659, i64 2148354680}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{!"auto-init"}
