; ModuleID = '/llk/IR_all_yes/drivers/staging/media/omap4iss/iss_csi2.c_pt.bc'
source_filename = "../drivers/staging/media/omap4iss/iss_csi2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.iss_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.iss_video, ptr, i8, i32, i32, i32, i32, i8, i32, ptr, [8 x %struct.iss_csi2_ctx_cfg], [2 x %struct.iss_csi2_timing_cfg], %struct.iss_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
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
%struct.iss_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.iss_csi2_timing_cfg = type { i8, i8, i16 }
%struct.iss_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iss_csiphy = type { ptr, %struct.mutex, i8, ptr, i32, i32, i8, i8, %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_dphy_cfg }
%struct.iss_csiphy_lanes_cfg = type { [4 x %struct.iss_csiphy_lane], %struct.iss_csiphy_lane }
%struct.iss_csiphy_lane = type { i8, i8 }
%struct.iss_csiphy_dphy_cfg = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.iss_device = type { %struct.v4l2_device, %struct.media_device, ptr, i32, ptr, i32, [11 x ptr], [11 x ptr], ptr, i64, %struct.mutex, %struct.media_entity_enum, i32, i32, ptr, ptr, %struct.iss_csi2_device, %struct.iss_csi2_device, %struct.iss_csiphy, %struct.iss_csiphy, %struct.iss_ipipeif_device, %struct.iss_ipipe_device, %struct.iss_resizer_device, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iss_ipipeif_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_ipipe_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_resizer_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.86, i32 }
%union.anon.86 = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.iss_v4l2_subdevs_group = type { ptr, i32, %union.anon.94 }
%union.anon.94 = type { %struct.iss_csi2_platform_data }
%struct.iss_csi2_platform_data = type { i8, %struct.iss_csiphy_lanes_cfg, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.iss_format_info = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@omap4iss_csi2_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CSI2: Soft reset timeout!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap4iss_csi2_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/omap4iss/iss_csi2.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap4iss_csi2_reset._entry_ptr = internal global ptr @omap4iss_csi2_reset._entry, section ".printk_index", align 4
@omap4iss_csi2_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CSI2: CSI2_96M_FCLK reset timeout!\0A\00", [60 x i8] zeroinitializer }, align 32
@omap4iss_csi2_reset._entry_ptr.7 = internal global ptr @omap4iss_csi2_reset._entry.5, section ".printk_index", align 4
@omap4iss_csi2_isr.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap4_iss\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap4iss_csi2_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CSI2: ComplexIO Error IRQ %x\0A\00", [34 x i8] zeroinitializer }, align 32
@omap4iss_csi2_isr.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CSI2 Err: OCP:%d SHORT:%d ECC:%d CPXIO:%d OVF:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@omap4iss_csi2_isr.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CSI2: ECC correction done\0A\00", [37 x i8] zeroinitializer }, align 32
@omap4iss_csi2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&csi2a->wait\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@omap4iss_csi2_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&csi2b->wait\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CSI2: pixel format %08x unsupported!\0A\00", [58 x i8] zeroinitializer }, align 32
@__csi2_fmt_map = internal unnamed_addr constant [4 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 171, i16 0], [2 x i16] [i16 303, i16 0]], [2 x [2 x i16]] [[2 x i16] [i16 64, i16 704], [2 x i16] [i16 298, i16 832]], [2 x [2 x i16]] [[2 x i16] [i16 42, i16 0], [2 x i16] [i16 298, i16 0]], [2 x [2 x i16]] [[2 x i16] [i16 30, i16 0], [2 x i16] [i16 222, i16 0]]], align 2
@csi2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @csi2_video_ops, ptr null, ptr null, ptr null, ptr @csi2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@csi2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @csi2_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CSI2%s\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OMAP4 ISS %s\00", [19 x i8] zeroinitializer }, align 32
@csi2_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @csi2_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@csi2_issvideo_ops = internal constant { %struct.iss_video_operations, [28 x i8] } { %struct.iss_video_operations { ptr @csi2_queue }, [28 x i8] zeroinitializer }, align 32
@csi2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi2_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@csi2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @csi2_enum_mbus_code, ptr @csi2_enum_frame_size, ptr null, ptr @csi2_get_format, ptr @csi2_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi2_link_validate, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@csi2_print_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csi2_print_status\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"-------------CSI2 Register dump-------------\0A\00", [50 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 SYSCONFIG=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 SYSSTATUS=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 IRQENABLE=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.26, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 IRQSTATUS=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.27, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###CSI2 CTRL=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.28, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###CSI2 DBG_H=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.29, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"###CSI2 COMPLEXIO_CFG=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.30, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"###CSI2 COMPLEXIO_IRQSTATUS=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.31, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 SHORT_PACKET=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.32, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"###CSI2 COMPLEXIO_IRQENABLE=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.33, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###CSI2 DBG_P=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.34, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###CSI2 TIMING=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.35, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 CTX_CTRL1(0)=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.36, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 CTX_CTRL2(0)=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.37, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###CSI2 CTX_DAT_OFST(0)=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.38, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CSI2 CTX_PING_ADDR(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.39, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CSI2 CTX_PONG_ADDR(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.40, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CSI2 CTX_IRQENABLE(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.41, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CSI2 CTX_IRQSTATUS(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.42, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 CTX_CTRL3(0)=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.43, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@csi2_input_fmts = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 12298, i32 12297, i32 12303, i32 12301, i32 12295, i32 12299, i32 12302, i32 12300, i32 12289, i32 12307, i32 12290, i32 12308, i32 8207, i32 8209], [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 8207, i64 8209, i64 12289, i64 12290, i64 12295, i64 12297, i64 12298, i64 12299, i64 12300, i64 12301, i64 12302, i64 12303, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [16 x i64] [i64 14, i64 32, i64 8207, i64 8209, i64 12289, i64 12290, i64 12295, i64 12297, i64 12298, i64 12299, i64 12300, i64 12301, i64 12302, i64 12303, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 131073]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 502, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 513, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 758, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 768, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 783, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1319, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1321, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1331, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1333, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 223, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"csi2_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1143, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"csi2_internal_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1149, i32 46 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1267, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1268, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"csi2_media_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1216, i32 45 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"csi2_issvideo_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 818, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"csi2_video_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1129, i32 43 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"csi2_pad_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1134, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 611, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 613, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 614, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 615, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 616, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 617, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 618, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 619, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 620, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 621, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 622, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 623, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 624, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 625, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 626, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 627, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 628, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 629, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 630, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 631, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 632, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 634, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"csi2_input_fmts\00", align 1
@___asan_gen_.204 = private constant [45 x i8] c"../drivers/staging/media/omap4iss/iss_csi2.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 91, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 998, i32 6 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @omap4iss_csi2_reset._entry, ptr @omap4iss_csi2_reset._entry.5, ptr @omap4iss_csi2_reset._entry_ptr, ptr @omap4iss_csi2_reset._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @omap4iss_csi2_init.__key, ptr @.str.13, ptr @.str.14, ptr @omap4iss_csi2_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @csi2_ops, ptr @csi2_internal_ops, ptr @.str.19, ptr @.str.20, ptr @csi2_media_ops, ptr @csi2_issvideo_ops, ptr @csi2_video_ops, ptr @csi2_pad_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @csi2_input_fmts, ptr @.str.44], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_csi2_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_csi2_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_csi2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_csi2_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_issvideo_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_input_fmts to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_csi2_reset(ptr nocapture noundef readonly %csi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %available = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 5
  %0 = ptrtoint ptr %available to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 12
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %phy_in_use = getelementptr inbounds %struct.iss_csiphy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %phy_in_use to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %iss = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 4
  %6 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iss, align 8
  %regs1 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regs1, align 8
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %7, i32 0, i32 7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %13 = or i32 %12, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %13) #8, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 500
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %add = add i32 %spec.select.i, %16
  %17 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iss, align 8
  %19 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regs1, align 8
  %arrayidx.i81 = getelementptr %struct.iss_device, ptr %18, i32 0, i32 7, i32 %20
  %21 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i81, align 4
  %add.ptr.i82 = getelementptr i8, ptr %22, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not83 = icmp eq i32 %24, 0
  br i1 %tobool7.not83, label %if.end3.while.body_crit_edge, label %if.end3.if.end15_crit_edge

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %if.end3.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end.critedge, label %if.end9

if.end9:                                          ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %26 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iss, align 8
  %28 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regs1, align 8
  %arrayidx.i = getelementptr %struct.iss_device, ptr %27, i32 0, i32 7, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %33 = and i32 %32, 16777216
  %tobool7.not = icmp eq i32 %33, 0
  br i1 %tobool7.not, label %if.end9.while.body_crit_edge, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end.critedge:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iss, align 8
  %dev = getelementptr inbounds %struct.iss_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %38 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iss, align 8
  %40 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regs1, align 8
  %arrayidx.i.i70 = getelementptr %struct.iss_device, ptr %39, i32 0, i32 7, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i70, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %43, i32 80
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %45 = or i32 %44, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i70, align 4
  %add.ptr.i5.i73 = getelementptr i8, ptr %47, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i73, i32 %45) #8, !srcloc !136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %call.i67 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i67)
  %cmp.i68 = icmp ult i32 %call.i67, 10000
  %spec.select.i69 = select i1 %cmp.i68, i32 1073741822, i32 1
  %add20 = add i32 %spec.select.i69, %48
  %49 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iss, align 8
  %51 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy, align 8
  %phy_regs84 = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %phy_regs84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phy_regs84, align 4
  %arrayidx.i7485 = getelementptr %struct.iss_device, ptr %50, i32 0, i32 7, i32 %54
  %55 = ptrtoint ptr %arrayidx.i7485 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i7485, align 4
  %add.ptr.i7586 = getelementptr i8, ptr %56, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7586) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %58 = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool29.not87 = icmp eq i32 %58, 0
  br i1 %tobool29.not87, label %if.end15.while.body33_crit_edge, label %if.end15.if.end50_crit_edge

if.end15.if.end50_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end15.while.body33_crit_edge:                  ; preds = %if.end15
  br label %while.body33

while.body33:                                     ; preds = %if.end37.while.body33_crit_edge, %if.end15.while.body33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub34 = sub i32 %add20, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35 = icmp slt i32 %sub34, 0
  br i1 %cmp35, label %do.end47.critedge, label %if.end37

if.end37:                                         ; preds = %while.body33
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #8
  %60 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iss, align 8
  %62 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy, align 8
  %phy_regs = getelementptr inbounds %struct.iss_csiphy, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %phy_regs, align 4
  %arrayidx.i74 = getelementptr %struct.iss_device, ptr %61, i32 0, i32 7, i32 %65
  %66 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %69 = and i32 %68, 32
  %tobool29.not = icmp eq i32 %69, 0
  br i1 %tobool29.not, label %if.end37.while.body33_crit_edge, label %if.end37.if.end50_crit_edge

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end37.while.body33_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body33

do.end47.critedge:                                ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iss, align 8
  %dev49 = getelementptr inbounds %struct.iss_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end37.if.end50_crit_edge, %if.end15.if.end50_crit_edge
  %74 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iss, align 8
  %76 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %regs1, align 8
  %arrayidx.i.i76 = getelementptr %struct.iss_device, ptr %75, i32 0, i32 7, i32 %77
  %78 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i76, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %79, i32 16
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %81 = and i32 %80, -19922945
  %82 = or i32 %81, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i.i76, align 4
  %add.ptr.i5.i79 = getelementptr i8, ptr %84, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i79, i32 %82) #8, !srcloc !136
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end47.critedge, %do.end.critedge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end.critedge ], [ -16, %do.end47.critedge ], [ 0, %if.end50 ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_csi2_isr(ptr noundef %csi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %csi2, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %iss2 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 4
  %2 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iss2, align 8
  %available = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 5
  %4 = ptrtoint ptr %available to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs1 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regs1, align 8
  %arrayidx.i = getelementptr %struct.iss_device, ptr %3, i32 0, i32 7, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %12 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iss2, align 8
  %14 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i116 = getelementptr %struct.iss_device, ptr %13, i32 0, i32 7, i32 %15
  %16 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i116, align 4
  %add.ptr.i117 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %10) #8, !srcloc !136
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end20_crit_edge, label %if.then7

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then7:                                         ; preds = %if.end
  %18 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iss2, align 8
  %20 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regs1, align 8
  %arrayidx.i118 = getelementptr %struct.iss_device, ptr %19, i32 0, i32 7, i32 %21
  %22 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %23, i32 84
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %25 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iss2, align 8
  %27 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i120 = getelementptr %struct.iss_device, ptr %26, i32 0, i32 7, i32 %28
  %29 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i120, align 4
  %add.ptr.i121 = getelementptr i8, ptr %30, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %24) #8, !srcloc !136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap4iss_csi2_isr.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap4iss_csi2_isr, %if.then18)) #8
          to label %do.end [label %if.then18], !srcloc !137

if.then18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %dev = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap4iss_csi2_isr.__UNIQUE_ID_ddebug320, ptr noundef %33, ptr noundef nonnull @.str.10, i32 noundef %31) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.then7
  %error = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %error, align 1
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %and21 = and i32 %11, 27392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end56_crit_edge, label %do.body24

if.end20.if.end56_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap4iss_csi2_isr.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap4iss_csi2_isr, %if.then36)) #8
          to label %do.end54 [label %if.then36], !srcloc !137

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev37, align 8
  %and38 = lshr i32 %11, 14
  %and38.lobit = and i32 %and38, 1
  %and40 = lshr i32 %11, 13
  %and40.lobit = and i32 %and40, 1
  %and43 = lshr i32 %11, 11
  %and43.lobit = and i32 %and43, 1
  %not.tobool6.not = xor i1 %tobool6.not, true
  %cond48 = zext i1 %not.tobool6.not to i32
  %and49 = lshr i32 %11, 8
  %and49.lobit = and i32 %and49, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap4iss_csi2_isr.__UNIQUE_ID_ddebug321, ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %and38.lobit, i32 noundef %and40.lobit, i32 noundef %and43.lobit, i32 noundef %cond48, i32 noundef %and49.lobit) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then36, %do.body24
  %error55 = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %error55 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %error55, align 1
  br label %if.end56

if.end56:                                         ; preds = %do.end54, %if.end20.if.end56_crit_edge
  %and57 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end60_crit_edge, label %if.then59

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then59:                                        ; preds = %if.end56
  %contexts = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 13
  %38 = ptrtoint ptr %contexts to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %contexts, align 4
  %conv.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iss2, align 8
  %42 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %regs1, align 8
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add.i = add nuw nsw i32 %mul.i, 136
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %41, i32 0, i32 7, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %add.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %48 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iss2, align 8
  %50 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i89.i = getelementptr %struct.iss_device, ptr %49, i32 0, i32 7, i32 %51
  %52 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i89.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %53, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %46) #8, !srcloc !136
  %wait.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 17
  %stopping.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 18
  %call5.i = tail call i32 @omap4iss_module_sync_is_stopping(ptr noundef %wait.i, ptr noundef %stopping.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then59.if.end60_crit_edge

if.then59.if.end60_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end.i:                                         ; preds = %if.then59
  %and.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end35.i_crit_edge, label %if.then7.i

if.end.i.if.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then7.i:                                       ; preds = %if.end.i
  %54 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pipe1, align 4
  %56 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iss2, align 8
  %58 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %regs1, align 8
  %60 = ptrtoint ptr %contexts to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %contexts, align 4
  %conv12.i = zext i8 %61 to i32
  %mul13.i = shl nuw nsw i32 %conv12.i, 5
  %add14.i = add nuw nsw i32 %mul13.i, 116
  %arrayidx.i91.i = getelementptr %struct.iss_device, ptr %57, i32 0, i32 7, i32 %59
  %62 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i91.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %63, i32 %add14.i
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #8, !srcloc !133
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %65)
  %cmp.i = icmp ult i32 %65, 65536
  br i1 %cmp.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %frame_number.i = getelementptr inbounds %struct.iss_pipeline, ptr %55, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_number.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %frame_number.i, i32 1, i32 3, i32 1) #8
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_number.i, ptr %frame_number.i, i32 1, ptr elementtype(i32) %frame_number.i) #8, !srcloc !138
  br label %if.end35.i

if.else.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %65, 16
  %conv16.i = trunc i32 %shr.i to i16
  %frame21.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 13, i32 0, i32 5
  %67 = ptrtoint ptr %frame21.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %frame21.i, align 4
  %conv22.i = zext i16 %68 to i32
  %conv23.i = sub i16 %conv16.i, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv22.i)
  %cmp27.i = icmp ult i32 %shr.i, %conv22.i
  %dec.i = sext i1 %cmp27.i to i16
  %spec.select.i = add i16 %conv23.i, %dec.i
  %69 = ptrtoint ptr %frame21.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv16.i, ptr %frame21.i, align 4
  %conv32.i = zext i16 %spec.select.i to i32
  %frame_number33.i = getelementptr inbounds %struct.iss_pipeline, ptr %55, i32 0, i32 7
  %call.i.i88.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_number33.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %frame_number33.i, i32 1, i32 3, i32 1) #8
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_number33.i, ptr %frame_number33.i, i32 %conv32.i, ptr elementtype(i32) %frame_number33.i) #8, !srcloc !138
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %if.then19.i, %if.end.i.if.end35.i_crit_edge
  %and36.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end60_crit_edge, label %if.end39.i

if.end35.i.if.end60_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end39.i:                                       ; preds = %if.end35.i
  %frame_skip.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 11
  %71 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %frame_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool40.not.i = icmp eq i32 %72, 0
  br i1 %tobool40.not.i, label %if.end51.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end39.i
  %dec43.i = add i32 %72, -1
  %73 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %dec43.i, ptr %frame_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec43.i)
  %cmp45.i = icmp eq i32 %dec43.i, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.then41.i.if.end60_crit_edge

if.then41.i.if.end60_crit_edge:                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then47.i:                                      ; preds = %if.then41.i
  %call48.i = tail call fastcc zeroext i16 @csi2_ctx_map_format(ptr noundef %csi2) #8
  %format_id.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 13, i32 0, i32 3
  %74 = ptrtoint ptr %format_id.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %call48.i, ptr %format_id.i, align 4
  tail call fastcc void @csi2_ctx_config(ptr noundef %csi2, ptr noundef %contexts) #8
  %75 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iss2, align 8
  %77 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %regs1, align 8
  %add.i.i = add nuw nsw i32 %mul.i, 112
  %arrayidx.i.i.i = getelementptr %struct.iss_device, ptr %76, i32 0, i32 7, i32 %78
  %79 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %80, i32 %add.i.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %82 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %frame_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool1.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i.i = shl i32 %83, 8
  %phi.bo32.i.i = or i32 %phi.bo.i.i, 17
  br label %csi2_ctx_enable.exit.i

if.else.i.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  %output.i.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 9
  %84 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %output.i.i, align 4
  %and.i.i = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool4.not.i.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit.i

csi2_ctx_enable.exit.i:                           ; preds = %if.else.i.i, %if.then2.i.i
  %skip.0.i.i = phi i32 [ %phi.bo32.i.i, %if.then2.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %86 = and i32 %81, -301924353
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %or9.i.i = or i32 %skip.0.i.i, %87
  %88 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iss2, align 8
  %90 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %92 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i) #8
  %arrayidx.i33.i.i = getelementptr %struct.iss_device, ptr %89, i32 0, i32 7, i32 %91
  %93 = ptrtoint ptr %arrayidx.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i33.i.i, align 4
  %add.ptr.i34.i.i = getelementptr i8, ptr %94, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 %92) #8, !srcloc !136
  %enabled.i.i = getelementptr %struct.iss_csi2_device, ptr %csi2, i32 0, i32 13, i32 %conv.i, i32 13
  br label %cleanup.sink.split.i

if.end51.i:                                       ; preds = %if.end39.i
  %output.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 9
  %95 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %output.i, align 4
  %and52.i = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end51.i.if.end60_crit_edge, label %if.then54.i

if.end51.i.if.end60_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then54.i:                                      ; preds = %if.end51.i
  %97 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %iss2, align 8
  %99 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %regs1, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iss_device, ptr %98, i32 0, i32 7, i32 %100
  %101 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %102, i32 112
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %104 = and i32 %103, -16777217
  %105 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %iss2, align 8
  %107 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i33.i.i.i = getelementptr %struct.iss_device, ptr %106, i32 0, i32 7, i32 %108
  %109 = ptrtoint ptr %arrayidx.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i33.i.i.i, align 4
  %add.ptr.i34.i.i.i = getelementptr i8, ptr %110, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i.i, i32 %104) #8, !srcloc !136
  %enabled.i.i.i = getelementptr %struct.iss_csi2_device, ptr %csi2, i32 0, i32 13, i32 0, i32 13
  %111 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %enabled.i.i.i, align 1
  %video_out.i.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3
  %call.i.i = tail call ptr @omap4iss_video_buffer_next(ptr noundef %video_out.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then54.i.if.end60_crit_edge, label %if.end.i.i

if.then54.i.if.end60_crit_edge:                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end.i.i:                                       ; preds = %if.then54.i
  %iss_addr.i.i = getelementptr inbounds %struct.iss_buffer, ptr %call.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %iss_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %iss_addr.i.i, align 8
  %ping_addr.i.i.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 13, i32 0, i32 8
  %114 = ptrtoint ptr %ping_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %ping_addr.i.i.i, align 4
  %pong_addr.i.i.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 13, i32 0, i32 9
  %115 = ptrtoint ptr %pong_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %113, ptr %pong_addr.i.i.i, align 4
  %116 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iss2, align 8
  %118 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %regs1, align 8
  %120 = ptrtoint ptr %contexts to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %contexts, align 4
  %conv.i.i.i = zext i8 %121 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 5
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %122 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  %arrayidx.i.i7.i.i = getelementptr %struct.iss_device, ptr %117, i32 0, i32 7, i32 %119
  %123 = ptrtoint ptr %arrayidx.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i7.i.i, align 4
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %124, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i.i, i32 %122) #8, !srcloc !136
  %125 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iss2, align 8
  %127 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %regs1, align 8
  %129 = ptrtoint ptr %contexts to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %contexts, align 4
  %conv5.i.i.i = zext i8 %130 to i32
  %mul6.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 5
  %add7.i.i.i = add nuw nsw i32 %mul6.i.i.i, 128
  %131 = ptrtoint ptr %pong_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pong_addr.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #8
  %arrayidx.i19.i.i.i = getelementptr %struct.iss_device, ptr %126, i32 0, i32 7, i32 %128
  %134 = ptrtoint ptr %arrayidx.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i19.i.i.i, align 4
  %add.ptr.i20.i.i.i = getelementptr i8, ptr %135, i32 %add7.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i.i, i32 %133) #8, !srcloc !136
  %136 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %iss2, align 8
  %138 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %regs1, align 8
  %arrayidx.i.i11.i.i = getelementptr %struct.iss_device, ptr %137, i32 0, i32 7, i32 %139
  %140 = ptrtoint ptr %arrayidx.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i11.i.i, align 4
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %141, i32 112
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %143 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %frame_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool1.not.i.i.i = icmp eq i32 %144, 0
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i.i.i = shl i32 %144, 8
  %phi.bo32.i.i.i = or i32 %phi.bo.i.i.i, 17
  br label %csi2_ctx_enable.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %output.i, align 4
  %and.i.i.i = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool4.not.i.i.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit.i.i

csi2_ctx_enable.exit.i.i:                         ; preds = %if.else.i.i.i, %if.then2.i.i.i
  %skip.0.i.i.i = phi i32 [ %phi.bo32.i.i.i, %if.then2.i.i.i ], [ %spec.select.i.i.i, %if.else.i.i.i ]
  %147 = and i32 %142, -301924353
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  %or9.i.i.i = or i32 %skip.0.i.i.i, %148
  %149 = ptrtoint ptr %iss2 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %iss2, align 8
  %151 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %153 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i.i) #8
  %arrayidx.i33.i13.i.i = getelementptr %struct.iss_device, ptr %150, i32 0, i32 7, i32 %152
  %154 = ptrtoint ptr %arrayidx.i33.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i33.i13.i.i, align 4
  %add.ptr.i34.i14.i.i = getelementptr i8, ptr %155, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i14.i.i, i32 %153) #8, !srcloc !136
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %csi2_ctx_enable.exit.i.i, %csi2_ctx_enable.exit.i
  %enabled.i.i.sink.i = phi ptr [ %enabled.i.i.i, %csi2_ctx_enable.exit.i.i ], [ %enabled.i.i, %csi2_ctx_enable.exit.i ]
  %156 = ptrtoint ptr %enabled.i.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %enabled.i.i.sink.i, align 1
  br label %if.end60

if.end60:                                         ; preds = %cleanup.sink.split.i, %if.then54.i.if.end60_crit_edge, %if.end51.i.if.end60_crit_edge, %if.then41.i.if.end60_crit_edge, %if.end35.i.if.end60_crit_edge, %if.then59.if.end60_crit_edge, %if.end56.if.end60_crit_edge
  %and61 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %do.body64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap4iss_csi2_isr.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap4iss_csi2_isr, %if.then76)) #8
          to label %cleanup [label %if.then76], !srcloc !137

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 2
  %157 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev77, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap4iss_csi2_isr.__UNIQUE_ID_ddebug322, ptr noundef %158, ptr noundef nonnull @.str.12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body64, %if.end60.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_csi2_unregister_entities(ptr noundef %csi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %csi2) #8
  %video_out = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3
  tail call void @omap4iss_video_unregister(ptr noundef %video_out) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_video_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_csi2_register_entities(ptr noundef %csi2, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %csi2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %video_out = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3
  %call1 = tail call i32 @omap4iss_video_register(ptr noundef %video_out, ptr noundef %vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.error_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call1, %if.end.error_crit_edge ]
  tail call void @v4l2_device_unregister_subdev(ptr noundef %csi2) #8
  %video_out.i = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3
  tail call void @omap4iss_video_unregister(ptr noundef %video_out.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_video_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_csi2_init(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %csi2a1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16
  %iss3 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 4
  %0 = ptrtoint ptr %iss3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %iss, ptr %iss3, align 8
  %available = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 5
  %1 = ptrtoint ptr %available to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %available, align 4
  %regs1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 6
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %regs1, align 8
  %csiphy1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18
  %phy = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 12
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %csiphy1, ptr %phy, align 8
  %subclk = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 8
  %4 = ptrtoint ptr %subclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %subclk, align 8
  %state = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 16
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 8
  %wait = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.13, ptr noundef nonnull @omap4iss_csi2_init.__key) #8
  %call = tail call fastcc i32 @csi2_init_entities(ptr noundef %csi2a1, ptr noundef nonnull @.str.14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %csi2b2 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17
  %iss4 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 4
  %6 = ptrtoint ptr %iss4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %iss, ptr %iss4, align 8
  %available5 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 5
  %7 = ptrtoint ptr %available5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %available5, align 4
  %regs16 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 6
  %8 = ptrtoint ptr %regs16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %regs16, align 8
  %csiphy2 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19
  %phy7 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 12
  %9 = ptrtoint ptr %phy7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %csiphy2, ptr %phy7, align 8
  %subclk8 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 8
  %10 = ptrtoint ptr %subclk8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %subclk8, align 8
  %state9 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 16
  %11 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state9, align 8
  %wait11 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %wait11, ptr noundef nonnull @.str.16, ptr noundef nonnull @omap4iss_csi2_init.__key.15) #8
  %call14 = tail call fastcc i32 @csi2_init_entities(ptr noundef %csi2b2, ptr noundef nonnull @.str.17)
  %12 = tail call i32 @llvm.smin.i32(i32 %call14, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csi2_init_entities(ptr noundef %csi2, ptr noundef %subname) unnamed_addr #0 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pads1 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  tail call void @v4l2_subdev_init(ptr noundef %csi2, ptr noundef nonnull @csi2_ops) #8
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %csi2, i32 0, i32 7
  %1 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @csi2_internal_ops, ptr %internal_ops, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %subname)
  %name3 = getelementptr inbounds %struct.v4l2_subdev, ptr %csi2, i32 0, i32 9
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name3, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull %name)
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %csi2, i32 0, i32 10
  %2 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %grp_id, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %csi2, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %csi2, ptr %dev_priv.i, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %csi2, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %flags, align 4
  %flags7 = getelementptr %struct.iss_csi2_device, ptr %csi2, i32 0, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags7, align 4
  %flags9 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags9, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %csi2, i32 0, i32 11
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @csi2_media_ops, ptr %ops, align 4
  %call10 = call i32 @media_entity_pads_init(ptr noundef %csi2, i16 noundef zeroext 2, ptr noundef %pads1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #8
  %9 = getelementptr inbounds i8, ptr %format.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 84)
  %11 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %format.i, align 4
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12298, ptr %code.i, align 4
  %13 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %format1.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %height.i, align 4
  %call.i = call i32 @csi2_set_format(ptr noundef %csi2, ptr noundef null, ptr noundef nonnull %format.i) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #8
  %video_out = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3
  %type = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type, align 8
  %ops13 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3, i32 19
  %16 = ptrtoint ptr %ops13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @csi2_issvideo_ops, ptr %ops13, align 4
  %bpl_alignment = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %bpl_alignment to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %bpl_alignment, align 4
  %bpl_zero_padding = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %bpl_zero_padding to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %bpl_zero_padding, align 8
  %bpl_max = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3, i32 9
  %19 = ptrtoint ptr %bpl_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 131040, ptr %bpl_max, align 4
  %iss = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 4
  %20 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iss, align 8
  %iss18 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3, i32 5
  %22 = ptrtoint ptr %iss18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %iss18, align 4
  %capture_mem = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %capture_mem to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 50331648, ptr %capture_mem, align 8
  %call22 = call i32 @omap4iss_video_init(ptr noundef %video_out, ptr noundef nonnull %name) #8
  %24 = call i32 @llvm.smin.i32(i32 %call22, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %entry.cleanup_crit_edge ], [ %24, %if.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_csi2_create_links(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %csi2a1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16
  %video_out = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 3
  %call = tail call i32 @media_create_pad_link(ptr noundef %csi2a1, i16 noundef zeroext 1, ptr noundef %video_out, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %csi2b2 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17
  %video_out6 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 3
  %call9 = tail call i32 @media_create_pad_link(ptr noundef %csi2b2, i16 noundef zeroext 1, ptr noundef %video_out6, i16 noundef zeroext 0, i32 noundef 0) #8
  %0 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_csi2_cleanup(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %video_out = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16, i32 3
  tail call void @omap4iss_video_cleanup(ptr noundef %video_out) #8
  %video_out3 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17, i32 3
  tail call void @omap4iss_video_cleanup(ptr noundef %video_out3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_video_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_module_sync_is_stopping(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @csi2_ctx_map_format(ptr nocapture noundef readonly %csi2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 12298, label %entry.sw.epilog_crit_edge
    i32 12303, label %entry.sw.epilog_crit_edge46
    i32 12295, label %entry.sw.epilog_crit_edge47
    i32 12302, label %entry.sw.epilog_crit_edge48
    i32 12297, label %entry.sw.bb1_crit_edge
    i32 12301, label %entry.sw.bb1_crit_edge49
    i32 12299, label %entry.sw.bb1_crit_edge50
    i32 12300, label %entry.sw.bb1_crit_edge51
    i32 12289, label %entry.sw.bb2_crit_edge
    i32 12307, label %entry.sw.bb2_crit_edge52
    i32 12290, label %entry.sw.bb2_crit_edge53
    i32 12308, label %entry.sw.bb2_crit_edge54
    i32 8207, label %entry.sw.bb3_crit_edge
    i32 8209, label %entry.sw.bb3_crit_edge55
  ]

entry.sw.bb3_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb2_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb1_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge49, %entry.sw.bb1_crit_edge50, %entry.sw.bb1_crit_edge51
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge52, %entry.sw.bb2_crit_edge53, %entry.sw.bb2_crit_edge54
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge55
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 224, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %1) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge46, %entry.sw.epilog_crit_edge47, %entry.sw.epilog_crit_edge48
  %fmtidx.0 = phi i32 [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge46 ], [ 0, %entry.sw.epilog_crit_edge47 ], [ 0, %entry.sw.epilog_crit_edge48 ]
  %output = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 9
  %3 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %output, align 4
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %sw.epilog.cleanup_crit_edge, label %if.end24

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %4, 1
  %frame_skip = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 11
  %7 = ptrtoint ptr %frame_skip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frame_skip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool25.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool25.not, i32 %and, i32 0
  %dpcm_decompress = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 10
  %9 = ptrtoint ptr %dpcm_decompress to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dpcm_decompress, align 8, !range !139
  %11 = zext i8 %10 to i32
  %arrayidx36 = getelementptr [4 x [2 x [2 x i16]]], ptr @__csi2_fmt_map, i32 0, i32 %fmtidx.0, i32 %spec.select, i32 %11
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx36, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i16 [ 0, %do.end ], [ %13, %if.end24 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi2_ctx_config(ptr nocapture noundef readonly %csi2, ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frame = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %frame, align 4
  %eof_enabled = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 10
  %1 = ptrtoint ptr %eof_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %eof_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -2147483648
  %eol_enabled = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 11
  %3 = ptrtoint ptr %eol_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eol_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %checksum_enabled = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 12
  %5 = ptrtoint ptr %checksum_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %checksum_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %iss = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 4
  %7 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iss, align 8
  %regs1 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %9 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regs1, align 8
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx, align 4
  %conv = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %13 = or i32 %spec.select, 1073741824
  %14 = select i1 %tobool1.not, i32 %spec.select, i32 %13
  %15 = or i32 %14, 536870912
  %16 = select i1 %tobool4.not, i32 %14, i32 %15
  %arrayidx.i = getelementptr %struct.iss_device, ptr %8, i32 0, i32 7, i32 %10
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #8, !srcloc !136
  %virtual_id = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %virtual_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %virtual_id, align 2
  %conv8 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv8, 11
  %format_id = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 3
  %21 = ptrtoint ptr %format_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %format_id, align 4
  %conv9 = zext i16 %22 to i32
  %or11 = or i32 %shl, %conv9
  %dpcm_decompress = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 1
  %23 = ptrtoint ptr %dpcm_decompress to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dpcm_decompress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dpcm_predictor = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 4
  %25 = ptrtoint ptr %dpcm_predictor to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dpcm_predictor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not = icmp eq i8 %26, 0
  %or17 = or i32 %or11, 1024
  %spec.select93 = select i1 %tobool15.not, i32 %or11, i32 %or17
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %entry.if.end18_crit_edge
  %reg.3 = phi i32 [ %or11, %entry.if.end18_crit_edge ], [ %spec.select93, %land.lhs.true ]
  %and.i = and i32 %conv9, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 64
  %or23 = or i32 %reg.3, 16384
  %spec.select94 = select i1 %cmp.i.not, i32 %or23, i32 %reg.3
  %27 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iss, align 8
  %29 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regs1, align 8
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctx, align 4
  %conv28 = zext i8 %32 to i32
  %mul29 = shl nuw nsw i32 %conv28, 5
  %add30 = add nuw nsw i32 %mul29, 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %spec.select94) #8
  %arrayidx.i95 = getelementptr %struct.iss_device, ptr %28, i32 0, i32 7, i32 %30
  %34 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %35, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %33) #8, !srcloc !136
  %36 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iss, align 8
  %38 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regs1, align 8
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ctx, align 4
  %conv34 = zext i8 %41 to i32
  %mul35 = shl nuw nsw i32 %conv34, 5
  %add36 = add nuw nsw i32 %mul35, 140
  %alpha = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 6
  %42 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %alpha, align 2
  %conv37 = zext i16 %43 to i32
  %shl38 = shl nuw nsw i32 %conv37, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %shl38) #8
  %arrayidx.i97 = getelementptr %struct.iss_device, ptr %37, i32 0, i32 7, i32 %39
  %45 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i97, align 4
  %add.ptr.i98 = getelementptr i8, ptr %46, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %44) #8, !srcloc !136
  %47 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iss, align 8
  %49 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %regs1, align 8
  %51 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ctx, align 4
  %conv42 = zext i8 %52 to i32
  %mul43 = shl nuw nsw i32 %conv42, 5
  %add44 = add nuw nsw i32 %mul43, 120
  %data_offset = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 7
  %53 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %data_offset, align 4
  %conv45 = zext i16 %54 to i32
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %48, i32 0, i32 7, i32 %50
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 %add44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %58 = and i32 %57, 520158975
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %or.i = or i32 %59, %conv45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %62, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %60) #8, !srcloc !136
  %63 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iss, align 8
  %65 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %regs1, align 8
  %67 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ctx, align 4
  %conv49 = zext i8 %68 to i32
  %mul50 = shl nuw nsw i32 %conv49, 5
  %add51 = add nuw nsw i32 %mul50, 124
  %ping_addr = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 8
  %69 = ptrtoint ptr %ping_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ping_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %arrayidx.i100 = getelementptr %struct.iss_device, ptr %64, i32 0, i32 7, i32 %66
  %72 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %73, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %71) #8, !srcloc !136
  %74 = ptrtoint ptr %iss to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iss, align 8
  %76 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %regs1, align 8
  %78 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ctx, align 4
  %conv55 = zext i8 %79 to i32
  %mul56 = shl nuw nsw i32 %conv55, 5
  %add57 = add nuw nsw i32 %mul56, 128
  %pong_addr = getelementptr inbounds %struct.iss_csi2_ctx_cfg, ptr %ctx, i32 0, i32 9
  %80 = ptrtoint ptr %pong_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pong_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  %arrayidx.i102 = getelementptr %struct.iss_device, ptr %75, i32 0, i32 7, i32 %77
  %83 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %84, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %82) #8, !srcloc !136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4iss_video_buffer_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
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
  %call = call i32 @csi2_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_video_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_set_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %iss1 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iss1, align 8
  %state = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %cmp3 = icmp eq i32 %enable, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %subclk = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %subclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subclk, align 8
  %call5 = tail call i32 @omap4iss_subclk_enable(ptr noundef %3, i32 noundef %7) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %8 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %enable, label %if.end6.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb21
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %call7 = tail call i32 @omap4iss_csiphy_config(ptr noundef %3, ptr noundef %sd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %sw.bb.cleanup_crit_edge, label %if.end10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  %phy = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 8
  %call11 = tail call i32 @omap4iss_csiphy_acquire(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %contexts.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 13
  %enabled.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 13, i32 0, i32 13
  %11 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end14.csi2_configure.exit_crit_edge

if.end14.csi2_configure.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2_configure.exit

lor.lhs.false.i:                                  ; preds = %if.end14
  %ctrl.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15
  %if_enable.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 5
  %13 = ptrtoint ptr %if_enable.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %if_enable.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false.i.csi2_configure.exit_crit_edge

lor.lhs.false.i.csi2_configure.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2_configure.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %pads.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 1
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pads.i) #8
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entity.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host_priv.i, align 4
  %frame_skip.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %frame_skip.i, align 4
  br i1 %tobool6.not.i, label %if.end.i.if.end33.i_crit_edge, label %if.else.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %16, i32 0, i32 6
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %sensor10.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %sensor10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sensor10.i, align 4
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i, label %if.else.i.if.end33.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %g_skip_frames.i = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %g_skip_frames.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %g_skip_frames.i, align 4
  %tobool14.not.i = icmp eq ptr %25, null
  br i1 %tobool14.not.i, label %land.lhs.true.i.if.end33.i_crit_edge, label %if.else16.i

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.else16.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6), align 4
  %tobool17.not.i = icmp eq ptr %26, null
  br i1 %tobool17.not.i, label %if.else16.i.if.else25.i_crit_edge, label %land.lhs.true18.i

if.else16.i.if.else25.i_crit_edge:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else25.i

land.lhs.true18.i:                                ; preds = %if.else16.i
  %g_skip_frames19.i = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %g_skip_frames19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %g_skip_frames19.i, align 4
  %tobool20.not.i = icmp eq ptr %28, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.if.else25.i_crit_edge, label %land.lhs.true18.i.if.end33.sink.split.i_crit_edge

land.lhs.true18.i.if.end33.sink.split.i_crit_edge: ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.sink.split.i

land.lhs.true18.i.if.else25.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else25.i

if.else25.i:                                      ; preds = %land.lhs.true18.i.if.else25.i_crit_edge, %if.else16.i.if.else25.i_crit_edge
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.else25.i, %land.lhs.true18.i.if.end33.sink.split.i_crit_edge
  %.sink22.i = phi ptr [ %25, %if.else25.i ], [ %28, %land.lhs.true18.i.if.end33.sink.split.i_crit_edge ]
  %call30.i = tail call i32 %.sink22.i(ptr noundef nonnull %16, ptr noundef %frame_skip.i) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.sink.split.i, %land.lhs.true.i.if.end33.i_crit_edge, %if.else.i.if.end33.i_crit_edge, %if.end.i.if.end33.i_crit_edge
  %bus.i = getelementptr inbounds %struct.iss_v4l2_subdevs_group, ptr %18, i32 0, i32 2
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %bus.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %vp_out_ctrl.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 2
  %30 = ptrtoint ptr %vp_out_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.clear.i, ptr %vp_out_ctrl.i, align 2
  %frame_mode.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 3
  %31 = ptrtoint ptr %frame_mode.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %frame_mode.i, align 4
  %bf.load39.i = load i8, ptr %bus.i, align 4
  %ecc_enable.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 4
  %bf.load39.lobit.i = lshr i8 %bf.load39.i, 7
  %32 = ptrtoint ptr %ecc_enable.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.load39.lobit.i, ptr %ecc_enable.i, align 4
  %force_rx_mode.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 14, i32 0, i32 1
  %33 = ptrtoint ptr %force_rx_mode.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load44.i = load i8, ptr %force_rx_mode.i, align 1
  %bf.set51.i = or i8 %bf.load44.i, -32
  store i8 %bf.set51.i, ptr %force_rx_mode.i, align 1
  %stop_state_counter.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 14, i32 0, i32 2
  %34 = ptrtoint ptr %stop_state_counter.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 511, ptr %stop_state_counter.i, align 2
  %code.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 2, i32 0, i32 2
  %35 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %code.i, align 4
  %code55.i = getelementptr %struct.iss_csi2_device, ptr %1, i32 0, i32 2, i32 1, i32 2
  %37 = ptrtoint ptr %code55.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.not.i = icmp ne i32 %36, %38
  %.sink.i = zext i1 %cmp.not.i to i8
  %39 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink.i, ptr %39, align 8
  %call61.i = tail call fastcc zeroext i16 @csi2_ctx_map_format(ptr noundef %1) #8
  %format_id.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 13, i32 0, i32 3
  %41 = ptrtoint ptr %format_id.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call61.i, ptr %format_id.i, align 4
  %bpl_padding.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 3, i32 11
  %42 = ptrtoint ptr %bpl_padding.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bpl_padding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp64.i = icmp eq i32 %43, 0
  br i1 %cmp64.i, label %if.end33.i.if.end75.i_crit_edge, label %if.else69.i

if.end33.i.if.end75.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.else69.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %bpl_value.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 3, i32 10
  %44 = ptrtoint ptr %bpl_value.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bpl_value.i, align 8
  %conv71.i = trunc i32 %45 to i16
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.else69.i, %if.end33.i.if.end75.i_crit_edge
  %conv71.sink.i = phi i16 [ %conv71.i, %if.else69.i ], [ 0, %if.end33.i.if.end75.i_crit_edge ]
  %46 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 13, i32 0, i32 7
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv71.sink.i, ptr %46, align 4
  %eof_enabled.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 13, i32 0, i32 10
  %48 = ptrtoint ptr %eof_enabled.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %eof_enabled.i, align 4
  %eol_enabled.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 13, i32 0, i32 11
  %49 = ptrtoint ptr %eol_enabled.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %eol_enabled.i, align 1
  %50 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iss1, align 8
  %regs1.i.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %regs1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i.i = getelementptr %struct.iss_device, ptr %51, i32 0, i32 7, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -249) #8, !srcloc !136
  %56 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iss1, align 8
  %58 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %regs1.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iss_device, ptr %57, i32 0, i32 7, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %61, i32 96
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !133
  %63 = shl i32 %62, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %or.i.i.i = or i32 %63, 134217727
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  %65 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %66, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i.i, i32 %64) #8, !srcloc !136
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end75.i
  %i.020.i.i = phi i32 [ 0, %if.end75.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %67 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iss1, align 8
  %69 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %regs1.i.i, align 8
  %mul.i.i = shl i32 %i.020.i.i, 5
  %add.i.i = add nuw nsw i32 %mul.i.i, 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i3.i = getelementptr %struct.iss_device, ptr %68, i32 0, i32 7, i32 %70
  %71 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %72, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 50331648) #8, !srcloc !136
  %73 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iss1, align 8
  %75 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %regs1.i.i, align 8
  %add8.i.i = add nuw nsw i32 %mul.i.i, 132
  %arrayidx.i.i18.i.i = getelementptr %struct.iss_device, ptr %74, i32 0, i32 7, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i18.i.i, align 4
  %add.ptr.i.i19.i.i = getelementptr i8, ptr %78, i32 %add8.i.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %80 = or i32 %79, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %arrayidx.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i18.i.i, align 4
  %add.ptr.i5.i.i5.i = getelementptr i8, ptr %82, i32 %add8.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i5.i, i32 %80) #8, !srcloc !136
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %csi2_irq_ctx_set.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

csi2_irq_ctx_set.exit.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iss1, align 8
  %85 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %regs1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i8.i = getelementptr %struct.iss_device, ptr %84, i32 0, i32 7, i32 %86
  %87 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i8.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %88, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 24838144) #8, !srcloc !136
  %89 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %iss1, align 8
  %91 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %regs1.i.i, align 8
  %arrayidx.i.i.i10.i = getelementptr %struct.iss_device, ptr %90, i32 0, i32 7, i32 %92
  %93 = ptrtoint ptr %arrayidx.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i.i10.i, align 4
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %94, i32 28
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i11.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %96 = or i32 %95, 24838144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %97 = ptrtoint ptr %arrayidx.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i.i10.i, align 4
  %add.ptr.i5.i.i12.i = getelementptr i8, ptr %98, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i12.i, i32 %96) #8, !srcloc !136
  %99 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %iss1, align 8
  %101 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %regs1.i.i, align 8
  %arrayidx.i.i15.i = getelementptr %struct.iss_device, ptr %100, i32 0, i32 7, i32 %102
  %103 = ptrtoint ptr %arrayidx.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i.i15.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %104, i32 108
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %106 = ptrtoint ptr %force_rx_mode.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i.i = load i8, ptr %force_rx_mode.i, align 1
  %107 = zext i8 %bf.load.i.i to i32
  %108 = shl nuw nsw i32 %107, 8
  %109 = and i8 %bf.load.i.i, 64
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 8
  %112 = and i8 %bf.load.i.i, 32
  %113 = and i32 %105, -14680065
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  %and8.masked.i.i = or i32 %108, %114
  %115 = zext i8 %112 to i32
  %116 = shl nuw nsw i32 %115, 8
  %and8.masked.masked.i.i = and i32 %and8.masked.i.i, -32768
  %and18.masked.i.i = or i32 %and8.masked.masked.i.i, %111
  %and20.i.i = or i32 %and18.masked.i.i, %116
  %117 = ptrtoint ptr %stop_state_counter.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %stop_state_counter.i, align 2
  %conv.i.i = zext i16 %118 to i32
  %or21.i.i = or i32 %and20.i.i, %conv.i.i
  %119 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %iss1, align 8
  %121 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %regs1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %123 = tail call i32 @llvm.bswap.i32(i32 %or21.i.i) #8
  %arrayidx.i38.i.i = getelementptr %struct.iss_device, ptr %120, i32 0, i32 7, i32 %122
  %124 = ptrtoint ptr %arrayidx.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i38.i.i, align 4
  %add.ptr.i39.i.i = getelementptr i8, ptr %125, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 %123) #8, !srcloc !136
  %126 = ptrtoint ptr %frame_mode.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %frame_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i.i = icmp eq i32 %127, 0
  %..i.i = select i1 %tobool.not.i.i, i32 0, i32 8
  %128 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ctrl.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool1.not.i.i = icmp eq i8 %129, 0
  %or3.i.i = or i32 %..i.i, 32768
  %reg.1.i.i = select i1 %tobool1.not.i.i, i32 %..i.i, i32 %or3.i.i
  %vp_only_enable.i.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 1
  %130 = ptrtoint ptr %vp_only_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %vp_only_enable.i.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool7.not.i.i = icmp eq i8 %131, 0
  %or9.i.i = or i32 %reg.1.i.i, 2048
  %reg.2.i.i = select i1 %tobool7.not.i.i, i32 %reg.1.i.i, i32 %or9.i.i
  %132 = ptrtoint ptr %vp_out_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %vp_out_ctrl.i, align 2
  %conv.i17.i = zext i8 %133 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i17.i, 8
  %134 = ptrtoint ptr %ecc_enable.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %ecc_enable.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool15.not.i.i = icmp eq i8 %135, 0
  %masksel.i.i = select i1 %tobool15.not.i.i, i32 0, i32 4
  %and19.masked.i.i = or i32 %shl.i.i, %reg.2.i.i
  %and21.i.i = or i32 %and19.masked.i.i, %masksel.i.i
  %or25.i.i = or i32 %and21.i.i, 2695184
  %136 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %iss1, align 8
  %138 = ptrtoint ptr %regs1.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %regs1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %140 = tail call i32 @llvm.bswap.i32(i32 %or25.i.i) #8
  %arrayidx.i.i20.i = getelementptr %struct.iss_device, ptr %137, i32 0, i32 7, i32 %139
  %141 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i20.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %142, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21.i, i32 %140) #8, !srcloc !136
  tail call fastcc void @csi2_ctx_config(ptr noundef %1, ptr noundef %contexts.i) #8
  br label %csi2_configure.exit

csi2_configure.exit:                              ; preds = %csi2_irq_ctx_set.exit.i, %lor.lhs.false.i.csi2_configure.exit_crit_edge, %if.end14.csi2_configure.exit_crit_edge
  tail call fastcc void @csi2_print_status(ptr noundef %1)
  %output = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 9
  %143 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %output, align 4
  %and = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %csi2_configure.exit.if.end19_crit_edge, label %land.lhs.true

csi2_configure.exit.if.end19_crit_edge:           ; preds = %csi2_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %csi2_configure.exit
  %dmaqueue_flags = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 3, i32 18
  %145 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dmaqueue_flags, align 8
  %and16 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %csi2_configure.exit.if.end19_crit_edge
  %stopping = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #8
  %147 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 0, ptr %stopping, align 4
  %148 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %iss1, align 8
  %regs1.i = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 6
  %150 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %regs1.i, align 8
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %149, i32 0, i32 7, i32 %151
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %153, i32 112
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %frame_skip.i69 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 11
  %155 = ptrtoint ptr %frame_skip.i69 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %frame_skip.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool1.not.i = icmp eq i32 %156, 0
  br i1 %tobool1.not.i, label %if.else.i70, label %if.then2.i

if.then2.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = shl i32 %156, 8
  %phi.bo32.i = or i32 %phi.bo.i, 17
  br label %csi2_ctx_enable.exit

if.else.i70:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %output, align 4
  %and.i = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit

csi2_ctx_enable.exit:                             ; preds = %if.else.i70, %if.then2.i
  %skip.0.i = phi i32 [ %phi.bo32.i, %if.then2.i ], [ %spec.select.i, %if.else.i70 ]
  %159 = and i32 %154, -301924353
  %160 = tail call i32 @llvm.bswap.i32(i32 %159)
  %or9.i = or i32 %skip.0.i, %160
  %161 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %iss1, align 8
  %163 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %165 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #8
  %arrayidx.i33.i = getelementptr %struct.iss_device, ptr %162, i32 0, i32 7, i32 %164
  %166 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i33.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %167, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %165) #8, !srcloc !136
  %168 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %enabled.i, align 1
  %169 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %iss1, align 8
  %171 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %regs1.i, align 8
  %arrayidx.i.i.i74 = getelementptr %struct.iss_device, ptr %170, i32 0, i32 7, i32 %172
  %173 = ptrtoint ptr %arrayidx.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i.i.i74, align 4
  %add.ptr.i.i.i75 = getelementptr i8, ptr %174, i32 64
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %176 = or i32 %175, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %177 = ptrtoint ptr %arrayidx.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i.i.i74, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %178, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %176) #8, !srcloc !136
  %if_enable.i76 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 5
  %179 = ptrtoint ptr %if_enable.i76 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 1, ptr %if_enable.i76, align 1
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %if.end6
  %180 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp23 = icmp eq i32 %181, 0
  br i1 %cmp23, label %sw.bb21.cleanup_crit_edge, label %if.end25

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %sw.bb21
  %wait = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 17
  %stopping26 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 18
  %call27 = tail call i32 @omap4iss_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %182 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %iss1, align 8
  %regs1.i78 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 6
  %184 = ptrtoint ptr %regs1.i78 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %regs1.i78, align 8
  %arrayidx.i.i79 = getelementptr %struct.iss_device, ptr %183, i32 0, i32 7, i32 %185
  %186 = ptrtoint ptr %arrayidx.i.i79 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %187, i32 112
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %189 = and i32 %188, -16777217
  %190 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %iss1, align 8
  %192 = ptrtoint ptr %regs1.i78 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %regs1.i78, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i33.i81 = getelementptr %struct.iss_device, ptr %191, i32 0, i32 7, i32 %193
  %194 = ptrtoint ptr %arrayidx.i33.i81 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i33.i81, align 4
  %add.ptr.i34.i82 = getelementptr i8, ptr %195, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i82, i32 %189) #8, !srcloc !136
  %enabled.i83 = getelementptr %struct.iss_csi2_device, ptr %1, i32 0, i32 13, i32 0, i32 13
  %196 = ptrtoint ptr %enabled.i83 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %enabled.i83, align 1
  %197 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %iss1, align 8
  %199 = ptrtoint ptr %regs1.i78 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %regs1.i78, align 8
  %arrayidx.i.i.i86 = getelementptr %struct.iss_device, ptr %198, i32 0, i32 7, i32 %200
  %201 = ptrtoint ptr %arrayidx.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i.i86, align 4
  %add.ptr.i.i.i87 = getelementptr i8, ptr %202, i32 64
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i87) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %204 = and i32 %203, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %205 = ptrtoint ptr %arrayidx.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx.i.i.i86, align 4
  %add.ptr.i5.i.i88 = getelementptr i8, ptr %206, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i88, i32 %204) #8, !srcloc !136
  %if_enable.i89 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 5
  %207 = ptrtoint ptr %if_enable.i89 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %if_enable.i89, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end25
  %i.020.i = phi i32 [ 0, %if.end25 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %208 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %iss1, align 8
  %210 = ptrtoint ptr %regs1.i78 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %regs1.i78, align 8
  %mul.i = shl i32 %i.020.i, 5
  %add.i = add nuw nsw i32 %mul.i, 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i92 = getelementptr %struct.iss_device, ptr %209, i32 0, i32 7, i32 %211
  %212 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i.i92, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %213, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93, i32 50331648) #8, !srcloc !136
  %214 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %iss1, align 8
  %216 = ptrtoint ptr %regs1.i78 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %regs1.i78, align 8
  %add8.i = add nuw nsw i32 %mul.i, 132
  %arrayidx.i.i18.i = getelementptr %struct.iss_device, ptr %215, i32 0, i32 7, i32 %217
  %218 = ptrtoint ptr %arrayidx.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i.i18.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %219, i32 %add8.i
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %221 = and i32 %220, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %222 = ptrtoint ptr %arrayidx.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i.i18.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %223, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %221) #8, !srcloc !136
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %csi2_irq_ctx_set.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

csi2_irq_ctx_set.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = select i1 %tobool28.not, i32 0, i32 -110
  %phy31 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 12
  %224 = ptrtoint ptr %phy31 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %phy31, align 8
  tail call void @omap4iss_csiphy_release(ptr noundef %225) #8
  %subclk32 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 8
  %226 = ptrtoint ptr %subclk32 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %subclk32, align 8
  %call33 = tail call i32 @omap4iss_subclk_disable(ptr noundef %3, i32 noundef %227) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %csi2_irq_ctx_set.exit, %csi2_ctx_enable.exit
  %ret.1.ph = phi i32 [ %call7, %csi2_ctx_enable.exit ], [ %spec.select, %csi2_irq_ctx_set.exit ]
  %dmaqueue_flags35 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 3, i32 18
  %228 = ptrtoint ptr %dmaqueue_flags35 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %dmaqueue_flags35, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %if.end6.sw.epilog_crit_edge ], [ %call7, %land.lhs.true.sw.epilog_crit_edge ], [ %ret.1.ph, %sw.epilog.sink.split ]
  %229 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %enable, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb21.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ 0, %if.then.cleanup_crit_edge ], [ %call7, %sw.bb.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ 0, %sw.bb21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_subclk_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_csiphy_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_csiphy_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi2_print_status(ptr noundef readonly %csi2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iss1 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 4
  %0 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iss1, align 8
  %available = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 5
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then5)) #8
          to label %do.body7 [label %if.then5], !srcloc !137

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug298, ptr noundef %5, ptr noundef nonnull @.str.22) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then19)) #8
          to label %do.body25 [label %if.then19], !srcloc !137

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev20, align 8
  %regs1 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regs1, align 8
  %arrayidx.i = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %13) #8
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then37)) #8
          to label %do.body44 [label %if.then37], !srcloc !137

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev38, align 8
  %regs139 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %16 = ptrtoint ptr %regs139 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regs139, align 8
  %arrayidx.i528 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %17
  %18 = ptrtoint ptr %arrayidx.i528 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i528, align 4
  %add.ptr.i529 = getelementptr i8, ptr %19, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i529) #8, !srcloc !133
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug300, ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef %21) #8
  br label %do.body44

do.body44:                                        ; preds = %if.then37, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then56)) #8
          to label %do.body63 [label %if.then56], !srcloc !137

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev57, align 8
  %regs158 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %24 = ptrtoint ptr %regs158 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %regs158, align 8
  %arrayidx.i530 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %25
  %26 = ptrtoint ptr %arrayidx.i530 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i530, align 4
  %add.ptr.i531 = getelementptr i8, ptr %27, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i531) #8, !srcloc !133
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug301, ptr noundef %23, ptr noundef nonnull @.str.25, i32 noundef %29) #8
  br label %do.body63

do.body63:                                        ; preds = %if.then56, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then75)) #8
          to label %do.body82 [label %if.then75], !srcloc !137

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %dev76 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev76, align 8
  %regs177 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %32 = ptrtoint ptr %regs177 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regs177, align 8
  %arrayidx.i532 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %33
  %34 = ptrtoint ptr %arrayidx.i532 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i532, align 4
  %add.ptr.i533 = getelementptr i8, ptr %35, i32 24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i533) #8, !srcloc !133
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug302, ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef %37) #8
  br label %do.body82

do.body82:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then94)) #8
          to label %do.body101 [label %if.then94], !srcloc !137

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %dev95 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev95, align 8
  %regs196 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %40 = ptrtoint ptr %regs196 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regs196, align 8
  %arrayidx.i534 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %41
  %42 = ptrtoint ptr %arrayidx.i534 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i534, align 4
  %add.ptr.i535 = getelementptr i8, ptr %43, i32 64
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i535) #8, !srcloc !133
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug303, ptr noundef %39, ptr noundef nonnull @.str.27, i32 noundef %45) #8
  br label %do.body101

do.body101:                                       ; preds = %if.then94, %do.body82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then113)) #8
          to label %do.body120 [label %if.then113], !srcloc !137

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %dev114 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev114, align 8
  %regs1115 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %48 = ptrtoint ptr %regs1115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %regs1115, align 8
  %arrayidx.i536 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %49
  %50 = ptrtoint ptr %arrayidx.i536 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i536, align 4
  %add.ptr.i537 = getelementptr i8, ptr %51, i32 68
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i537) #8, !srcloc !133
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug304, ptr noundef %47, ptr noundef nonnull @.str.28, i32 noundef %53) #8
  br label %do.body120

do.body120:                                       ; preds = %if.then113, %do.body101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then132)) #8
          to label %do.body139 [label %if.then132], !srcloc !137

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  %dev133 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev133, align 8
  %regs1134 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %56 = ptrtoint ptr %regs1134 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %regs1134, align 8
  %arrayidx.i538 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %57
  %58 = ptrtoint ptr %arrayidx.i538 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i538, align 4
  %add.ptr.i539 = getelementptr i8, ptr %59, i32 80
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i539) #8, !srcloc !133
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug305, ptr noundef %55, ptr noundef nonnull @.str.29, i32 noundef %61) #8
  br label %do.body139

do.body139:                                       ; preds = %if.then132, %do.body120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then151)) #8
          to label %do.body158 [label %if.then151], !srcloc !137

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #10
  %dev152 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev152, align 8
  %regs1153 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %64 = ptrtoint ptr %regs1153 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %regs1153, align 8
  %arrayidx.i540 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %65
  %66 = ptrtoint ptr %arrayidx.i540 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i540, align 4
  %add.ptr.i541 = getelementptr i8, ptr %67, i32 84
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i541) #8, !srcloc !133
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug306, ptr noundef %63, ptr noundef nonnull @.str.30, i32 noundef %69) #8
  br label %do.body158

do.body158:                                       ; preds = %if.then151, %do.body139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then170)) #8
          to label %do.body177 [label %if.then170], !srcloc !137

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #10
  %dev171 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev171, align 8
  %regs1172 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %72 = ptrtoint ptr %regs1172 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %regs1172, align 8
  %arrayidx.i542 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %73
  %74 = ptrtoint ptr %arrayidx.i542 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i542, align 4
  %add.ptr.i543 = getelementptr i8, ptr %75, i32 92
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i543) #8, !srcloc !133
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug307, ptr noundef %71, ptr noundef nonnull @.str.31, i32 noundef %77) #8
  br label %do.body177

do.body177:                                       ; preds = %if.then170, %do.body158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then189)) #8
          to label %do.body196 [label %if.then189], !srcloc !137

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  %dev190 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %78 = ptrtoint ptr %dev190 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev190, align 8
  %regs1191 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %80 = ptrtoint ptr %regs1191 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %regs1191, align 8
  %arrayidx.i544 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %81
  %82 = ptrtoint ptr %arrayidx.i544 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i544, align 4
  %add.ptr.i545 = getelementptr i8, ptr %83, i32 96
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i545) #8, !srcloc !133
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug308, ptr noundef %79, ptr noundef nonnull @.str.32, i32 noundef %85) #8
  br label %do.body196

do.body196:                                       ; preds = %if.then189, %do.body177
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then208)) #8
          to label %do.body215 [label %if.then208], !srcloc !137

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #10
  %dev209 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %86 = ptrtoint ptr %dev209 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev209, align 8
  %regs1210 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %88 = ptrtoint ptr %regs1210 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %regs1210, align 8
  %arrayidx.i546 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %89
  %90 = ptrtoint ptr %arrayidx.i546 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i546, align 4
  %add.ptr.i547 = getelementptr i8, ptr %91, i32 104
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i547) #8, !srcloc !133
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug309, ptr noundef %87, ptr noundef nonnull @.str.33, i32 noundef %93) #8
  br label %do.body215

do.body215:                                       ; preds = %if.then208, %do.body196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then227)) #8
          to label %do.body234 [label %if.then227], !srcloc !137

if.then227:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #10
  %dev228 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %dev228 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev228, align 8
  %regs1229 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %96 = ptrtoint ptr %regs1229 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %regs1229, align 8
  %arrayidx.i548 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %97
  %98 = ptrtoint ptr %arrayidx.i548 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i548, align 4
  %add.ptr.i549 = getelementptr i8, ptr %99, i32 108
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i549) #8, !srcloc !133
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug310, ptr noundef %95, ptr noundef nonnull @.str.34, i32 noundef %101) #8
  br label %do.body234

do.body234:                                       ; preds = %if.then227, %do.body215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then246)) #8
          to label %do.body253 [label %if.then246], !srcloc !137

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #10
  %dev247 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %102 = ptrtoint ptr %dev247 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev247, align 8
  %regs1248 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %104 = ptrtoint ptr %regs1248 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %regs1248, align 8
  %arrayidx.i550 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %105
  %106 = ptrtoint ptr %arrayidx.i550 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i550, align 4
  %add.ptr.i551 = getelementptr i8, ptr %107, i32 112
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i551) #8, !srcloc !133
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug311, ptr noundef %103, ptr noundef nonnull @.str.35, i32 noundef %109) #8
  br label %do.body253

do.body253:                                       ; preds = %if.then246, %do.body234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then265)) #8
          to label %do.body272 [label %if.then265], !srcloc !137

if.then265:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #10
  %dev266 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %110 = ptrtoint ptr %dev266 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev266, align 8
  %regs1267 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %112 = ptrtoint ptr %regs1267 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %regs1267, align 8
  %arrayidx.i552 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %113
  %114 = ptrtoint ptr %arrayidx.i552 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i552, align 4
  %add.ptr.i553 = getelementptr i8, ptr %115, i32 116
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i553) #8, !srcloc !133
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug312, ptr noundef %111, ptr noundef nonnull @.str.36, i32 noundef %117) #8
  br label %do.body272

do.body272:                                       ; preds = %if.then265, %do.body253
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then284)) #8
          to label %do.body291 [label %if.then284], !srcloc !137

if.then284:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #10
  %dev285 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %118 = ptrtoint ptr %dev285 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev285, align 8
  %regs1286 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %120 = ptrtoint ptr %regs1286 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %regs1286, align 8
  %arrayidx.i554 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %121
  %122 = ptrtoint ptr %arrayidx.i554 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i554, align 4
  %add.ptr.i555 = getelementptr i8, ptr %123, i32 120
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i555) #8, !srcloc !133
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug313, ptr noundef %119, ptr noundef nonnull @.str.37, i32 noundef %125) #8
  br label %do.body291

do.body291:                                       ; preds = %if.then284, %do.body272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then303)) #8
          to label %do.body310 [label %if.then303], !srcloc !137

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #10
  %dev304 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %126 = ptrtoint ptr %dev304 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev304, align 8
  %regs1305 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %128 = ptrtoint ptr %regs1305 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %regs1305, align 8
  %arrayidx.i556 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %129
  %130 = ptrtoint ptr %arrayidx.i556 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i556, align 4
  %add.ptr.i557 = getelementptr i8, ptr %131, i32 124
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i557) #8, !srcloc !133
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug314, ptr noundef %127, ptr noundef nonnull @.str.38, i32 noundef %133) #8
  br label %do.body310

do.body310:                                       ; preds = %if.then303, %do.body291
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then322)) #8
          to label %do.body329 [label %if.then322], !srcloc !137

if.then322:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #10
  %dev323 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %134 = ptrtoint ptr %dev323 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev323, align 8
  %regs1324 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %136 = ptrtoint ptr %regs1324 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %regs1324, align 8
  %arrayidx.i558 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %137
  %138 = ptrtoint ptr %arrayidx.i558 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i558, align 4
  %add.ptr.i559 = getelementptr i8, ptr %139, i32 128
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i559) #8, !srcloc !133
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug315, ptr noundef %135, ptr noundef nonnull @.str.39, i32 noundef %141) #8
  br label %do.body329

do.body329:                                       ; preds = %if.then322, %do.body310
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then341)) #8
          to label %do.body348 [label %if.then341], !srcloc !137

if.then341:                                       ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #10
  %dev342 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %142 = ptrtoint ptr %dev342 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev342, align 8
  %regs1343 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %144 = ptrtoint ptr %regs1343 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %regs1343, align 8
  %arrayidx.i560 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %145
  %146 = ptrtoint ptr %arrayidx.i560 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i560, align 4
  %add.ptr.i561 = getelementptr i8, ptr %147, i32 132
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i561) #8, !srcloc !133
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug316, ptr noundef %143, ptr noundef nonnull @.str.40, i32 noundef %149) #8
  br label %do.body348

do.body348:                                       ; preds = %if.then341, %do.body329
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then360)) #8
          to label %do.body367 [label %if.then360], !srcloc !137

if.then360:                                       ; preds = %do.body348
  call void @__sanitizer_cov_trace_pc() #10
  %dev361 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %150 = ptrtoint ptr %dev361 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev361, align 8
  %regs1362 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %152 = ptrtoint ptr %regs1362 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %regs1362, align 8
  %arrayidx.i562 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %153
  %154 = ptrtoint ptr %arrayidx.i562 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i562, align 4
  %add.ptr.i563 = getelementptr i8, ptr %155, i32 136
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i563) #8, !srcloc !133
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug317, ptr noundef %151, ptr noundef nonnull @.str.41, i32 noundef %157) #8
  br label %do.body367

do.body367:                                       ; preds = %if.then360, %do.body348
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then379)) #8
          to label %do.body386 [label %if.then379], !srcloc !137

if.then379:                                       ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #10
  %dev380 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %158 = ptrtoint ptr %dev380 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev380, align 8
  %regs1381 = getelementptr inbounds %struct.iss_csi2_device, ptr %csi2, i32 0, i32 6
  %160 = ptrtoint ptr %regs1381 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %regs1381, align 8
  %arrayidx.i564 = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %161
  %162 = ptrtoint ptr %arrayidx.i564 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i564, align 4
  %add.ptr.i565 = getelementptr i8, ptr %163, i32 140
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i565) #8, !srcloc !133
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug318, ptr noundef %159, ptr noundef nonnull @.str.42, i32 noundef %165) #8
  br label %do.body386

do.body386:                                       ; preds = %if.then379, %do.body367
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@csi2_print_status, %if.then398)) #8
          to label %cleanup [label %if.then398], !srcloc !137

if.then398:                                       ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #10
  %dev399 = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %166 = ptrtoint ptr %dev399 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev399, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug319, ptr noundef %167, ptr noundef nonnull @.str.43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then398, %do.body386, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_csiphy_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_subclk_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %5)
  %cmp1 = icmp ugt i32 %5, 13
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [14 x i32], ptr @csi2_input_fmts, i32 0, i32 %5
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %entry
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %6 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i.i.not = icmp eq i16 %9, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !140

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  br label %__csi2_get_format.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iss_csi2_device, ptr %1, i32 0, i32 2, i32 0
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %11, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %index6 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %12 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index6, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %13, label %__csi2_get_format.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

__csi2_get_format.exit.cleanup_crit_edge:         ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %code7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup.sink.split.sink.split

sw.bb9:                                           ; preds = %__csi2_get_format.exit
  %code10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %code10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code10, align 4
  %call11 = tail call ptr @omap4iss_video_format_info(i32 noundef %16) #8
  %uncompressed = getelementptr inbounds %struct.iss_format_info, ptr %call11, i32 0, i32 2
  %17 = ptrtoint ptr %uncompressed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uncompressed, align 4
  %19 = ptrtoint ptr %code10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp13 = icmp eq i32 %18, %20
  br i1 %cmp13, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.cleanup.sink.split_crit_edge

sw.bb9.cleanup.sink.split_crit_edge:              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %sw.bb, %if.end
  %code7.sink = phi ptr [ %code7, %sw.bb ], [ %arrayidx, %if.end ]
  %21 = ptrtoint ptr %code7.sink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code7.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %sw.bb9.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %18, %sw.bb9.cleanup.sink.split_crit_edge ], [ %22, %cleanup.sink.split.sink.split ]
  %code4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %23 = ptrtoint ptr %code4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %code4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb9.cleanup_crit_edge, %__csi2_get_format.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %__csi2_get_format.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #8
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call fastcc void @csi2_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %12, ptr noundef nonnull %format, i32 noundef %14)
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  call fastcc void @csi2_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %28, ptr noundef nonnull %format, i32 noundef %30)
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !141

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csi2_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iss_csi2_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__csi2_get_format.exit.cleanup_crit_edge, label %if.end

__csi2_get_format.exit.cleanup_crit_edge:         ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__csi2_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__csi2_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
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
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !141

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csi2_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iss_csi2_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__csi2_get_format.exit.cleanup_crit_edge, label %if.end

__csi2_get_format.exit.cleanup_crit_edge:         ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %__csi2_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @csi2_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
  %14 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i.i35, label %if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge, label %do.end.i.i37, !prof !141

if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge: ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i40

do.end.i.i37:                                     ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i40

v4l2_subdev_get_try_format.exit.i40:              ; preds = %do.end.i.i37, %if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge
  %spec.select.i.i38 = phi i32 [ 0, %do.end.i.i37 ], [ 1, %if.then.i36.v4l2_subdev_get_try_format.exit.i40_crit_edge ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i39 = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i.i38
  br label %__csi2_get_format.exit44

if.end.i42:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i41 = getelementptr %struct.iss_csi2_device, ptr %1, i32 0, i32 2, i32 1
  br label %__csi2_get_format.exit44

__csi2_get_format.exit44:                         ; preds = %if.end.i42, %v4l2_subdev_get_try_format.exit.i40
  %retval.0.i43 = phi ptr [ %arrayidx.i.i39, %v4l2_subdev_get_try_format.exit.i40 ], [ %arrayidx.i41, %if.end.i42 ]
  %23 = call ptr @memcpy(ptr %retval.0.i43, ptr %format3, i32 48)
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %code28.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i43, i32 0, i32 2
  %26 = ptrtoint ptr %code28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %__csi2_get_format.exit44
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i.i.not.i = icmp eq i16 %29, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !140

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  br label %__csi2_get_format.exit.i

if.end.i.i:                                       ; preds = %__csi2_get_format.exit44
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i45 = getelementptr %struct.iss_csi2_device, ptr %1, i32 0, i32 2, i32 0
  br label %__csi2_get_format.exit.i

__csi2_get_format.exit.i:                         ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %31, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i45, %if.end.i.i ]
  %32 = call ptr @memcpy(ptr %retval.0.i43, ptr %retval.0.i.i, i32 48)
  %33 = ptrtoint ptr %code28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %code28.i, align 4
  %call30.i = tail call ptr @omap4iss_video_format_info(i32 noundef %34) #8
  %uncompressed.i = getelementptr inbounds %struct.iss_format_info, ptr %call30.i, i32 0, i32 2
  %35 = ptrtoint ptr %uncompressed.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uncompressed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %27)
  %cmp31.i = icmp eq i32 %36, %27
  br i1 %cmp31.i, label %if.then32.i, label %__csi2_get_format.exit.i.csi2_try_format.exit_crit_edge

__csi2_get_format.exit.i.csi2_try_format.exit_crit_edge: ; preds = %__csi2_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csi2_try_format.exit

if.then32.i:                                      ; preds = %__csi2_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %code28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %27, ptr %code28.i, align 4
  br label %csi2_try_format.exit

csi2_try_format.exit:                             ; preds = %if.then32.i, %__csi2_get_format.exit.i.csi2_try_format.exit_crit_edge
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i43, i32 0, i32 4
  %38 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i43, i32 0, i32 3
  %39 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %csi2_try_format.exit, %if.end.cleanup_crit_edge, %__csi2_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__csi2_get_format.exit.cleanup_crit_edge ], [ 0, %csi2_try_format.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_link_validate(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %4 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %entity2 = getelementptr inbounds %struct.media_pad, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %entity2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity2, align 4
  %external = getelementptr inbounds %struct.iss_pipeline, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %external, align 4
  %call7 = tail call i32 @omap4iss_get_external_info(ptr noundef %3, ptr noundef %link) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @v4l2_subdev_link_validate_default(ptr noundef %sd, ptr noundef %link, ptr noundef %source_fmt, ptr noundef %sink_fmt) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4iss_video_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi2_try_format(ptr nocapture noundef readonly %csi2, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %1 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %code, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %2, label %for.cond.13 [
    i32 12298, label %for.cond.preheader.if.end5_crit_edge
    i32 12297, label %for.cond.preheader.if.end5_crit_edge62
    i32 12303, label %for.cond.preheader.if.end5_crit_edge63
    i32 12301, label %for.cond.preheader.if.end5_crit_edge64
    i32 12295, label %for.cond.preheader.if.end5_crit_edge65
    i32 12299, label %for.cond.preheader.if.end5_crit_edge66
    i32 12302, label %for.cond.preheader.if.end5_crit_edge67
    i32 12300, label %for.cond.preheader.if.end5_crit_edge68
    i32 12289, label %for.cond.preheader.if.end5_crit_edge69
    i32 12307, label %for.cond.preheader.if.end5_crit_edge70
    i32 12290, label %for.cond.preheader.if.end5_crit_edge71
    i32 12308, label %for.cond.preheader.if.end5_crit_edge72
    i32 8207, label %for.cond.preheader.if.end5_crit_edge73
    i32 8209, label %for.cond.preheader.if.end5_crit_edge74
  ]

for.cond.preheader.if.end5_crit_edge74:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge73:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge72:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge71:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge70:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge69:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge68:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge67:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge66:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge65:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge64:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge63:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge62:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.cond.13:                                      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12298, ptr %code, align 4
  br label %if.end5

if.end5:                                          ; preds = %for.cond.13, %for.cond.preheader.if.end5_crit_edge, %for.cond.preheader.if.end5_crit_edge62, %for.cond.preheader.if.end5_crit_edge63, %for.cond.preheader.if.end5_crit_edge64, %for.cond.preheader.if.end5_crit_edge65, %for.cond.preheader.if.end5_crit_edge66, %for.cond.preheader.if.end5_crit_edge67, %for.cond.preheader.if.end5_crit_edge68, %for.cond.preheader.if.end5_crit_edge69, %for.cond.preheader.if.end5_crit_edge70, %for.cond.preheader.if.end5_crit_edge71, %for.cond.preheader.if.end5_crit_edge72, %for.cond.preheader.if.end5_crit_edge73, %for.cond.preheader.if.end5_crit_edge74
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 8191)
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8191)
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %code28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %15 = ptrtoint ptr %code28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb27
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %csi2, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i.i.not = icmp eq i16 %18, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !140

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  br label %__csi2_get_format.exit

if.end.i:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iss_csi2_device, ptr %csi2, i32 0, i32 2, i32 0
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %20, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %21 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i, i32 48)
  %22 = ptrtoint ptr %code28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code28, align 4
  %call30 = tail call ptr @omap4iss_video_format_info(i32 noundef %23) #8
  %uncompressed = getelementptr inbounds %struct.iss_format_info, ptr %call30, i32 0, i32 2
  %24 = ptrtoint ptr %uncompressed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uncompressed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %16)
  %cmp31 = icmp eq i32 %25, %16
  br i1 %cmp31, label %if.then32, label %__csi2_get_format.exit.sw.epilog_crit_edge

__csi2_get_format.exit.sw.epilog_crit_edge:       ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then32:                                        ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %code28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %16, ptr %code28, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %__csi2_get_format.exit.sw.epilog_crit_edge, %if.end5, %entry.sw.epilog_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %27 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %28 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_get_external_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csi2_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %ctrl2 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15
  %index3 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %2 = ptrtoint ptr %index3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index3, align 4
  %conv = zext i16 %3 to i32
  %entity4 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %4 = ptrtoint ptr %entity4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity4, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge, label %is_media_entity_v4l2_subdev.exit

entry.is_media_entity_v4l2_subdev.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 131073, label %sw.bb17
  ]

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %output14 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %output14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output14, align 4
  %and15 = and i32 %11, -3
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool9.not = icmp eq i32 %and15, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %or13 = or i32 %11, 2
  %12 = ptrtoint ptr %output14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or13, ptr %output14, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %output14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and15, ptr %output14, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and18 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %output29 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %output29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output29, align 4
  br i1 %tobool19.not, label %if.else28, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %tobool23.not = icmp ult i32 %15, 2
  br i1 %tobool23.not, label %if.end25, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %15, 1
  %16 = ptrtoint ptr %output29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or27, ptr %output29, align 4
  br label %sw.epilog

if.else28:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %and30 = and i32 %15, -2
  %17 = ptrtoint ptr %output29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and30, ptr %output29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else28, %if.end25, %if.else, %if.end11
  %output32 = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %output32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output32, align 4
  %vp_only_enable = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 15, i32 1
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 1
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = ptrtoint ptr %vp_only_enable to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %vp_only_enable, align 1
  %25 = and i8 %20, 1
  %26 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ctrl2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then20.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %if.then7.cleanup_crit_edge ], [ -16, %if.then20.cleanup_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_queue(ptr nocapture noundef %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iss_addr = getelementptr inbounds %struct.iss_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %iss_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iss_addr, align 8
  %contexts.i = getelementptr i8, ptr %video, i32 1948
  %ping_addr.i = getelementptr i8, ptr %video, i32 1964
  %2 = ptrtoint ptr %ping_addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ping_addr.i, align 4
  %pong_addr.i = getelementptr i8, ptr %video, i32 1968
  %3 = ptrtoint ptr %pong_addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %pong_addr.i, align 4
  %iss.i = getelementptr i8, ptr %video, i32 1912
  %4 = ptrtoint ptr %iss.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iss.i, align 8
  %regs1.i = getelementptr i8, ptr %video, i32 1920
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regs1.i, align 8
  %8 = ptrtoint ptr %contexts.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %contexts.i, align 4
  %conv.i = zext i8 %9 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add.i = add nuw nsw i32 %mul.i, 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %5, i32 0, i32 7, i32 %7
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #8, !srcloc !136
  %13 = ptrtoint ptr %iss.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iss.i, align 8
  %15 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regs1.i, align 8
  %17 = ptrtoint ptr %contexts.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %contexts.i, align 4
  %conv5.i = zext i8 %18 to i32
  %mul6.i = shl nuw nsw i32 %conv5.i, 5
  %add7.i = add nuw nsw i32 %mul6.i, 128
  %19 = ptrtoint ptr %pong_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pong_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %arrayidx.i19.i = getelementptr %struct.iss_device, ptr %14, i32 0, i32 7, i32 %16
  %22 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i19.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %23, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %21) #8, !srcloc !136
  %dmaqueue_flags = getelementptr inbounds %struct.iss_video, ptr %video, i32 0, i32 18
  %24 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dmaqueue_flags, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %26 = ptrtoint ptr %iss.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iss.i, align 8
  %28 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regs1.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iss_device, ptr %27, i32 0, i32 7, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 64
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %33 = or i32 %32, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %33) #8, !srcloc !136
  %if_enable.i = getelementptr i8, ptr %video, i32 2189
  %36 = ptrtoint ptr %if_enable.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %if_enable.i, align 1
  %37 = ptrtoint ptr %iss.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iss.i, align 8
  %39 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %regs1.i, align 8
  %arrayidx.i.i12 = getelementptr %struct.iss_device, ptr %38, i32 0, i32 7, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i12, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %42, i32 112
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %frame_skip.i = getelementptr i8, ptr %video, i32 1940
  %44 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool1.not.i = icmp eq i32 %45, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = shl i32 %45, 8
  %phi.bo32.i = or i32 %phi.bo.i, 17
  br label %csi2_ctx_enable.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %output.i = getelementptr i8, ptr %video, i32 1932
  %46 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %output.i, align 4
  %and.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit

csi2_ctx_enable.exit:                             ; preds = %if.else.i, %if.then2.i
  %skip.0.i = phi i32 [ %phi.bo32.i, %if.then2.i ], [ %spec.select.i, %if.else.i ]
  %48 = and i32 %43, -301924353
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %or9.i = or i32 %skip.0.i, %49
  %50 = ptrtoint ptr %iss.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iss.i, align 8
  %52 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %regs1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #8
  %arrayidx.i33.i = getelementptr %struct.iss_device, ptr %51, i32 0, i32 7, i32 %53
  %55 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i33.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %56, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %54) #8, !srcloc !136
  %enabled.i = getelementptr i8, ptr %video, i32 1975
  %57 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %enabled.i, align 1
  %58 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %if.end

if.end:                                           ; preds = %csi2_ctx_enable.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 502, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap4iss_csi2_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap4iss_csi2_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 513, i32 3}
!10 = !{ptr @omap4iss_csi2_reset._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap4iss_csi2_reset._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 758, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @omap4iss_csi2_isr.__UNIQUE_ID_ddebug320, !13, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 768, i32 3}
!19 = !{ptr @omap4iss_csi2_isr.__UNIQUE_ID_ddebug321, !18, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 783, i32 3}
!22 = !{ptr @omap4iss_csi2_isr.__UNIQUE_ID_ddebug322, !21, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!23 = !{ptr @omap4iss_csi2_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1319, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1321, i32 34}
!28 = !{ptr @omap4iss_csi2_init.__key.15, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1331, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1333, i32 34}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 223, i32 3}
!35 = !{ptr @__csi2_fmt_map, !36, !"__csi2_fmt_map", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 117, i32 18}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1267, i32 31}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1268, i32 39}
!41 = !{ptr @csi2_ops, !42, !"csi2_ops", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1143, i32 37}
!43 = !{ptr @csi2_video_ops, !44, !"csi2_video_ops", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1129, i32 43}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 611, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug298, !46, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 613, i32 2}
!51 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug299, !50, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 614, i32 2}
!54 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug300, !53, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 615, i32 2}
!57 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug301, !56, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 616, i32 2}
!60 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug302, !59, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 617, i32 2}
!63 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug303, !62, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 618, i32 2}
!66 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug304, !65, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 619, i32 2}
!69 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug305, !68, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 620, i32 2}
!72 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug306, !71, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 621, i32 2}
!75 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug307, !74, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 622, i32 2}
!78 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug308, !77, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 623, i32 2}
!81 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug309, !80, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 624, i32 2}
!84 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug310, !83, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 625, i32 2}
!87 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug311, !86, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 626, i32 2}
!90 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug312, !89, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 627, i32 2}
!93 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug313, !92, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 628, i32 2}
!96 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug314, !95, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 629, i32 2}
!99 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug315, !98, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 630, i32 2}
!102 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug316, !101, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 631, i32 2}
!105 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug317, !104, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 632, i32 2}
!108 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug318, !107, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 634, i32 2}
!111 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug319, !110, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!112 = !{ptr @csi2_pad_ops, !113, !"csi2_pad_ops", i1 false, i1 false}
!113 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1134, i32 41}
!114 = !{ptr @csi2_input_fmts, !115, !"csi2_input_fmts", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 91, i32 27}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!118 = !{ptr @csi2_internal_ops, !119, !"csi2_internal_ops", i1 false, i1 false}
!119 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1149, i32 46}
!120 = !{ptr @csi2_media_ops, !121, !"csi2_media_ops", i1 false, i1 false}
!121 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 1216, i32 45}
!122 = !{ptr @csi2_issvideo_ops, !123, !"csi2_issvideo_ops", i1 false, i1 false}
!123 = !{!"../drivers/staging/media/omap4iss/iss_csi2.c", i32 818, i32 42}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 7186060}
!134 = !{i64 2156403030}
!135 = !{i64 2156403421}
!136 = !{i64 7185642}
!137 = !{i64 2148792010, i64 2148792015, i64 2148792028, i64 2148792072, i64 2148792106, i64 2148792127}
!138 = !{i64 2148224345, i64 2148224371, i64 2148224400, i64 2148224434, i64 2148224465, i64 2148224488}
!139 = !{i8 0, i8 2}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{!"branch_weights", i32 2000, i32 1}
