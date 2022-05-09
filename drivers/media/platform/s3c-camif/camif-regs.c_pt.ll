; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s3c-camif/camif-regs.c_pt.bc'
source_filename = "../drivers/media/platform/s3c-camif/camif-regs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.105 = type { i32, ptr }
%struct.camif_dev = type { %struct.media_device, %struct.v4l2_device, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, [3 x %struct.media_pad], i32, %struct.cam_sensor, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.anon.95, i8, i8, i8, i8, [2 x %struct.camif_vp], ptr, ptr, %struct.s3c_camif_plat_data, [2 x ptr], %struct.mutex, %struct.spinlock, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.cam_sensor = type { ptr, i16, i16 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.95 = type { ptr, ptr }
%struct.camif_vp = type { %struct.wait_queue_head, i32, ptr, %struct.media_pad, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.camif_scaler, ptr, i32, %struct.camif_frame, i32, i16, i8, i16, i8, i8, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.camif_scaler = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.camif_frame = type { i16, i16, %struct.v4l2_rect, %struct.camif_dma_offset }
%struct.camif_dma_offset = type { i32, i32 }
%struct.s3c_camif_plat_data = type { %struct.s3c_camif_sensor_info, ptr, ptr }
%struct.s3c_camif_sensor_info = type { %struct.i2c_board_info, i32, i32, i16, i16, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.s3c_camif_variant = type { [2 x %struct.vp_pix_limits], %struct.camif_pix_limits, i8, i8, i32 }
%struct.vp_pix_limits = type { i16, i16, i16, i16, i8, i16 }
%struct.camif_pix_limits = type { i16 }
%struct.camif_addr = type { i32, i32, i32 }
%struct.camif_fmt = type { i32, i32, i16, i16, i8, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@camif_hw_set_effect.colorfx = internal constant { [8 x %struct.v4l2_control], [32 x i8] } { [8 x %struct.v4l2_control] [%struct.v4l2_control zeroinitializer, %struct.v4l2_control { i32 1, i32 67108864 }, %struct.v4l2_control { i32 2, i32 67108864 }, %struct.v4l2_control { i32 3, i32 134217728 }, %struct.v4l2_control { i32 11, i32 201326592 }, %struct.v4l2_control { i32 4, i32 268435456 }, %struct.v4l2_control { i32 12, i32 335544320 }, %struct.v4l2_control { i32 15, i32 67108864 }], [32 x i8] zeroinitializer }, align 32
@src_pixfmt_map = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 8200, i32 0], [2 x i32] [i32 8201, i32 16384], [2 x i32] [i32 8198, i32 32768], [2 x i32] [i32 8199, i32 49152], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@camif_hw_set_source_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported pixel code, falling back to %#08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"camif_hw_set_source_format\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/s3c-camif/camif-regs.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@camif_hw_set_source_format._entry_ptr = internal global ptr @camif_hw_set_source_format._entry, section ".printk_index", align 4
@camif_hw_set_camera_bus.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c_camif\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"camif_hw_set_camera_bus\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Setting CIGCTRL to: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d Setting CIGCTRL to: %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@camif_hw_set_output_addr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"camif_hw_set_output_addr\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dst_buf[%d]: %pad, cb: %pad, cr: %pad\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d dst_buf[%d]: %pad, cb: %pad, cr: %pad\0A\00", [51 x i8] zeroinitializer }, align 32
@camif_hw_set_output_dma.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"camif_hw_set_output_dma\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ymburst: %u, yrburst: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d ymburst: %u, yrburst: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@camif_hw_set_target_format.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"camif_hw_set_target_format\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fw: %d, fh: %d color: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d fw: %d, fh: %d color: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@camif_hw_enable_capture.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"camif_hw_enable_capture\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CIIMGCPT: %#x, camif->stream_count: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d CIIMGCPT: %#x, camif->stream_count: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@camif_hw_disable_capture.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.2, ptr @.str.19, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"camif_hw_disable_capture\00", [39 x i8] zeroinitializer }, align 32
@camif_hw_dump_regs.registers = internal constant { [35 x %struct.anon.105], [72 x i8] } { [35 x %struct.anon.105] [%struct.anon.105 { i32 0, ptr @.str.22 }, %struct.anon.105 { i32 4, ptr @.str.23 }, %struct.anon.105 { i32 8, ptr @.str.24 }, %struct.anon.105 { i32 20, ptr @.str.25 }, %struct.anon.105 { i32 24, ptr @.str.26 }, %struct.anon.105 { i32 40, ptr @.str.27 }, %struct.anon.105 { i32 56, ptr @.str.28 }, %struct.anon.105 { i32 28, ptr @.str.29 }, %struct.anon.105 { i32 44, ptr @.str.30 }, %struct.anon.105 { i32 60, ptr @.str.31 }, %struct.anon.105 { i32 32, ptr @.str.32 }, %struct.anon.105 { i32 48, ptr @.str.33 }, %struct.anon.105 { i32 64, ptr @.str.34 }, %struct.anon.105 { i32 36, ptr @.str.35 }, %struct.anon.105 { i32 52, ptr @.str.36 }, %struct.anon.105 { i32 68, ptr @.str.37 }, %struct.anon.105 { i32 108, ptr @.str.38 }, %struct.anon.105 { i32 112, ptr @.str.39 }, %struct.anon.105 { i32 116, ptr @.str.40 }, %struct.anon.105 { i32 120, ptr @.str.41 }, %struct.anon.105 { i32 72, ptr @.str.42 }, %struct.anon.105 { i32 124, ptr @.str.43 }, %struct.anon.105 { i32 76, ptr @.str.44 }, %struct.anon.105 { i32 128, ptr @.str.45 }, %struct.anon.105 { i32 84, ptr @.str.46 }, %struct.anon.105 { i32 136, ptr @.str.47 }, %struct.anon.105 { i32 80, ptr @.str.48 }, %struct.anon.105 { i32 132, ptr @.str.49 }, %struct.anon.105 { i32 88, ptr @.str.50 }, %struct.anon.105 { i32 140, ptr @.str.51 }, %struct.anon.105 { i32 92, ptr @.str.52 }, %struct.anon.105 { i32 144, ptr @.str.53 }, %struct.anon.105 { i32 100, ptr @.str.54 }, %struct.anon.105 { i32 152, ptr @.str.55 }, %struct.anon.105 { i32 160, ptr @.str.56 }], [72 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CISRCFMT\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIWDOFST\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CIGCTRL\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CIWDOFST2\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CICOYSA0\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCBSA0\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCRSA0\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CICOYSA1\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCBSA1\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCRSA1\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CICOYSA2\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCBSA2\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCRSA2\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CICOYSA3\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCBSA3\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOCRSA3\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIPRYSA0\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIPRYSA1\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIPRYSA2\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIPRYSA3\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CICOTRGFMT\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CIPRTRGFMT\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CICOCTRL\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIPRCTRL\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CICOSCPREDST\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CIPRSCPREDST\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CICOSCPRERATIO\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CIPRSCPRERATIO\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CICOSCCTRL\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CIPRSCCTRL\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CICOTAREA\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CIPRTAREA\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CICOSTATUS\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CIPRSTATUS\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIIMGCPT\00", [23 x i8] zeroinitializer }, align 32
@camif_hw_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s:%d --- %s ---\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"camif_hw_dump_regs\00", [45 x i8] zeroinitializer }, align 32
@camif_hw_dump_regs._entry_ptr = internal global ptr @camif_hw_dump_regs._entry, section ".printk_index", align 4
@camif_hw_dump_regs._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 601, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s:\090x%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@camif_hw_dump_regs._entry_ptr.62 = internal global ptr @camif_hw_dump_regs._entry.59, section ".printk_index", align 4
@camif_s3c244x_hw_set_scaler.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"camif_s3c244x_hw_set_scaler\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"main: h_ratio: %#x, v_ratio: %#x\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d main: h_ratio: %#x, v_ratio: %#x\00", [57 x i8] zeroinitializer }, align 32
@camif_s3c64xx_hw_set_scaler.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.66, ptr @.str.2, ptr @.str.64, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"camif_s3c64xx_hw_set_scaler\00", [36 x i8] zeroinitializer }, align 32
@switch.table.camif_hw_set_effect = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 2, i32 3, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 6, i32 1, i32 1, i32 7], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 8198, i64 8199, i64 8200, i64 8201]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 32, i64 16, i64 17, i64 18, i64 34, i64 64, i64 65, i64 66, i64 67]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 90, i64 270]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 18]
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"colorfx\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 60, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"src_pixfmt_map\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 95, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 115, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 195, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 214, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 286, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 302, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 530, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 548, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 559, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 560, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 561, i32 30 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 562, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 563, i32 31 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 564, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 565, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 566, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 567, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 568, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 569, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 570, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 571, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 572, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 573, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 574, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 575, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 576, i32 33 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 577, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 578, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 579, i32 33 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 580, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 581, i32 36 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 582, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 583, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 584, i32 37 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 585, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 586, i32 39 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 587, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 588, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 589, i32 36 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 590, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 591, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 592, i32 36 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 593, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 594, i32 33 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 598, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 601, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 422, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [49 x i8] c"../drivers/media/platform/s3c-camif/camif-regs.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 471, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [33 x i8] c"switch.table.camif_hw_set_effect\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @camif_hw_dump_regs._entry, ptr @camif_hw_dump_regs._entry.59, ptr @camif_hw_dump_regs._entry_ptr, ptr @camif_hw_dump_regs._entry_ptr.62, ptr @camif_hw_set_source_format._entry, ptr @camif_hw_set_source_format._entry_ptr, ptr @camif_hw_set_effect.colorfx, ptr @src_pixfmt_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @camif_hw_dump_regs.registers, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @switch.table.camif_hw_set_effect], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_hw_set_effect.colorfx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_pixfmt_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_hw_set_source_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_hw_dump_regs.registers to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_hw_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camif_hw_dump_regs._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.camif_hw_set_effect to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_reset(ptr nocapture noundef readonly %camif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 23
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  %3 = or i32 %2, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #4, !srcloc !143
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  %9 = or i32 %8, 128
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %14)
  %cmp = icmp eq i8 %14, 50
  %or13 = or i32 %10, 1048576
  %spec.select = select i1 %cmp, i32 %or13, i32 %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !145
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 8
  %add.ptr18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #4, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #4
  %19 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base, align 8
  %add.ptr22 = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %22 = and i32 %21, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base, align 8
  %add.ptr30 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %22) #4, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_clear_pending_irq(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 2
  %conv = zext i8 %7 to i32
  %sub = sub nsw i32 19, %conv
  %shl = shl nuw nsw i32 1, %sub
  %or = or i32 %shl, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %camif, align 8
  %io_base3 = getelementptr inbounds %struct.camif_dev, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %io_base3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base3, align 8
  %add.ptr4 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_test_pattern(ptr nocapture noundef readonly %camif, i32 noundef %pattern) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 23
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  %3 = and i32 %2, -25
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %pattern, 27
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_effect(ptr nocapture noundef readonly %camif, i32 noundef %effect, i32 noundef %cr, i32 noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %effect)
  %cmp1 = icmp eq i32 %effect, 0
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.inc:                                          ; preds = %entry
  %switch.tableidx = add i32 %effect, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 15
  br i1 %0, label %switch.hole_check, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %for.inc
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 19471, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.camif_hw_set_effect, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end4

if.end4:                                          ; preds = %switch.lookup, %entry.if.end4_crit_edge
  %i.045.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ %switch.load, %switch.lookup ]
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 23
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base, align 8
  %offset = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 16, i32 0, i32 24
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 8
  %add = add i32 %6, 176
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  %8 = and i32 %7, -29
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %value = getelementptr [8 x %struct.v4l2_control], ptr @camif_hw_set_effect.colorfx, i32 0, i32 %i.045.lcssa, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %or = or i32 %9, %11
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %15)
  %cmp7 = icmp ugt i8 %15, 48
  br i1 %cmp7, label %if.then9, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then9:                                         ; preds = %if.end4
  br i1 %cmp1, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %and13 = and i32 %or, 1073741823
  br label %if.end16

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %or14 = or i32 %or, -1073741824
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12, %if.end4.if.end16_crit_edge
  %cfg.0 = phi i32 [ %and13, %if.then12 ], [ %or14, %if.else ], [ %or, %if.end4.if.end16_crit_edge ]
  %and17 = and i32 %cfg.0, -2089216
  %shl = shl i32 %cb, 13
  %or18 = or i32 %shl, %cr
  %or19 = or i32 %or18, %and17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 8
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 8
  %add24 = add i32 %20, 176
  %add.ptr25 = getelementptr i8, ptr %18, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %16) #4, !srcloc !143
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %switch.hole_check.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_source_format(ptr nocapture noundef readonly %camif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %for.inc.7 [
    i32 0, label %entry.if.end7_crit_edge
    i32 8199, label %if.end7.fold.split
    i32 8198, label %if.end7.fold.split35
    i32 8201, label %if.end7.fold.split36
    i32 8200, label %if.end7.fold.split37
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

for.inc.7:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 18
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 8200) #7
  br label %if.end7

if.end7.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %if.end7.fold.split37, %if.end7.fold.split36, %if.end7.fold.split35, %if.end7.fold.split, %for.inc.7, %entry.if.end7_crit_edge
  %i.1 = phi i32 [ 0, %for.inc.7 ], [ 7, %entry.if.end7_crit_edge ], [ 3, %if.end7.fold.split ], [ 2, %if.end7.fold.split35 ], [ 1, %if.end7.fold.split36 ], [ 0, %if.end7.fold.split37 ]
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 23
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  %8 = and i32 %7, 2097376
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbus_fmt, align 4
  %shl = shl i32 %11, 16
  %height = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %arrayidx11 = getelementptr [8 x [2 x i32]], ptr @src_pixfmt_map, i32 0, i32 %i.1, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %or = or i32 %13, %9
  %or9 = or i32 %or, %shl
  %or12 = or i32 %or9, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #4, !srcloc !143
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_camera_crop(ptr nocapture noundef readonly %camif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif_crop = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 23
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  %3 = and i32 %2, 16253048
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %camif_crop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %camif_crop, align 4
  %shl = shl i32 %6, 16
  %top = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %top, align 4
  %or = or i32 %8, %4
  %or2 = or i32 %or, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not = icmp eq i32 %8, 0
  %or.cond = select i1 %cmp.not, i1 %cmp5.not, i1 false
  %or6 = or i32 %or2, -2147483648
  %cfg.0 = select i1 %or.cond, i32 %or2, i32 %or6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr8 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #4, !srcloc !143
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %15)
  %cmp9 = icmp eq i8 %15, 50
  br i1 %cmp9, label %if.then11, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mbus_fmt = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3
  %16 = ptrtoint ptr %mbus_fmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbus_fmt, align 4
  %width12 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %width12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width12, align 4
  %20 = ptrtoint ptr %camif_crop to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %camif_crop, align 4
  %22 = add i32 %19, %21
  %sub14 = sub i32 %17, %22
  %height = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %height15 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height15, align 4
  %27 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %top, align 4
  %29 = add i32 %26, %28
  %sub18 = sub i32 %24, %29
  %shl19 = shl i32 %sub14, 16
  %or20 = or i32 %sub18, %shl19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %31 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base, align 8
  %add.ptr25 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %30) #4, !srcloc !143
  br label %if.end26

if.end26:                                         ; preds = %if.then11, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_clear_fifo_overflow(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  %cfg.0.v = select i1 %cmp, i32 1073790976, i32 12288
  %cfg.0 = or i32 %cfg.0.v, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr6 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %8) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_camera_bus(ptr nocapture noundef readonly %camif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 19, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 2
  %conv = zext i16 %1 to i32
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 23
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  %5 = and i32 %4, -33554440
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and3 = shl i32 %conv, 19
  %7 = and i32 %and3, 67108864
  %and4 = shl i32 %conv, 20
  %8 = and i32 %and4, 33554432
  %and9 = shl i32 %conv, 22
  %9 = and i32 %and9, 16777216
  %10 = or i32 %8, %7
  %11 = or i32 %10, %9
  %12 = or i32 %11, %6
  %variant = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 17
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %16)
  %cmp = icmp eq i8 %16, 50
  %and17 = lshr i32 %conv, 10
  %17 = and i32 %and17, 2
  %18 = or i32 %17, %12
  %or22 = or i32 %18, 4
  %cfg.4 = select i1 %cmp, i32 %or22, i32 %12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_hw_set_camera_bus.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_hw_set_camera_bus, %if.then29)) #4
          to label %do.body31 [label %if.then29], !srcloc !162

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_hw_set_camera_bus.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 195, i32 noundef %cfg.4) #4
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %cfg.4)
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 8
  %add.ptr35 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %19) #4, !srcloc !143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_output_addr(ptr nocapture noundef readonly %vp, ptr noundef %paddr, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %paddr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 2
  %conv = zext i8 %8 to i32
  %mul = mul nuw nsw i32 %conv, 84
  %mul2 = shl i32 %i, 2
  %add = add i32 %mul2, 24
  %add3 = add i32 %add, %mul
  %add.ptr = getelementptr i8, ptr %6, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #4, !srcloc !143
  %variant = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %12)
  %cmp = icmp eq i8 %12, 50
  br i1 %cmp, label %entry.do.body10_crit_edge, label %lor.lhs.false

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

lor.lhs.false:                                    ; preds = %entry
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp8 = icmp eq i8 %14, 0
  br i1 %cmp8, label %lor.lhs.false.do.body10_crit_edge, label %lor.lhs.false.do.body32_crit_edge

lor.lhs.false.do.body32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

lor.lhs.false.do.body10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.body10:                                        ; preds = %lor.lhs.false.do.body10_crit_edge, %entry.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  tail call void @arm_heavy_mb() #4
  %cb = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 1
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 8
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id, align 2
  %conv15 = zext i8 %21 to i32
  %mul16 = mul nuw nsw i32 %conv15, 84
  %add17 = add i32 %mul2, 40
  %add19 = add i32 %add17, %mul16
  %add.ptr20 = getelementptr i8, ptr %19, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %17) #4, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !166
  tail call void @arm_heavy_mb() #4
  %cr = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 2
  %22 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cr, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id, align 2
  %conv26 = zext i8 %28 to i32
  %mul27 = mul nuw nsw i32 %conv26, 84
  %add28 = add i32 %mul2, 56
  %add30 = add i32 %add28, %mul27
  %add.ptr31 = getelementptr i8, ptr %26, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %24) #4, !srcloc !143
  br label %do.body32

do.body32:                                        ; preds = %do.body10, %lor.lhs.false.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_hw_set_output_addr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_hw_set_output_addr, %if.then35)) #4
          to label %do.end41 [label %if.then35], !srcloc !162

if.then35:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %cb37 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 1
  %cr38 = getelementptr inbounds %struct.camif_addr, ptr %paddr, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_hw_set_output_addr.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 215, i32 noundef %i, ptr noundef %paddr, ptr noundef %cb37, ptr noundef %cr38) #4
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_output_dma(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %2 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_fmt, align 8
  %out_frame.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17
  %io_base.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 8
  %id.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 2
  %conv.i = zext i8 %7 to i32
  %offset.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 8
  %add.i = add i32 %9, 52
  %mul.i = mul i32 %add.i, %conv.i
  %add1.i = add i32 %mul.i, 72
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add1.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !167
  %11 = and i32 %10, 14680288
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %13 = ptrtoint ptr %out_frame.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %out_frame.i, align 4
  %conv3.i = zext i16 %14 to i32
  %shl.i = shl nuw i32 %conv3.i, 16
  %f_height.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %f_height.i, align 2
  %conv4.i = zext i16 %16 to i32
  %or.i = or i32 %12, %conv4.i
  %or5.i = or i32 %or.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #4
  %18 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %camif1, align 8
  %io_base7.i = getelementptr inbounds %struct.camif_dev, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %io_base7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base7.i, align 8
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id.i, align 2
  %conv9.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 8
  %add11.i = add i32 %25, 52
  %mul12.i = mul i32 %add11.i, %conv9.i
  %add13.i = add i32 %mul12.i, 72
  %add.ptr14.i = getelementptr i8, ptr %21, i32 %add13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %17) #4, !srcloc !143
  %variant = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %29)
  %cmp = icmp eq i8 %29, 50
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dma_offset = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 3
  %30 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_offset, align 4
  %shl = shl i32 %31, 16
  %line = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 3, i32 1
  %32 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %line, align 4
  %or = or i32 %shl, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !169
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %or)
  %35 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i, align 8
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %id.i, align 2
  %conv4 = zext i8 %38 to i32
  %mul = mul nuw nsw i32 %conv4, 12
  %add = add nuw nsw i32 %mul, 300
  %add.ptr = getelementptr i8, ptr %36, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %34) #4, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !170
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base.i, align 8
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %id.i, align 2
  %conv10 = zext i8 %42 to i32
  %mul11 = mul nuw nsw i32 %conv10, 12
  %add12 = add nuw nsw i32 %mul11, 304
  %add.ptr13 = getelementptr i8, ptr %40, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %34) #4, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  tail call void @arm_heavy_mb() #4
  %43 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base.i, align 8
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id.i, align 2
  %conv19 = zext i8 %46 to i32
  %mul20 = mul nuw nsw i32 %conv19, 12
  %add21 = add nuw nsw i32 %mul20, 308
  %add.ptr22 = getelementptr i8, ptr %44, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %34) #4, !srcloc !143
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %width = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 2, i32 2
  %47 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width, align 4
  %ybpp = getelementptr inbounds %struct.camif_fmt, ptr %3, i32 0, i32 5
  %49 = ptrtoint ptr %ybpp to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ybpp, align 1
  %conv23 = zext i8 %50 to i32
  %mul.i88 = mul i32 %48, %conv23
  %div60.i = lshr i32 %mul.i88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %48)
  %cmp.i = icmp ult i32 %48, 8
  %and.i = and i32 %mul.i88, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %51 = or i1 %cmp.i, %tobool.i
  br i1 %51, label %do.end.i, label %for.body.preheader.i, !prof !172

for.body.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mul.i88)
  %cmp26.i = icmp ult i32 %mul.i88, 64
  br i1 %cmp26.i, label %for.inc.i, label %if.end28.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 234, i32 noundef 9, ptr noundef null) #4
  br label %camif_get_dma_burst.exit

if.end28.i:                                       ; preds = %for.body.preheader.i
  %and29.i = and i32 %div60.i, 15
  %52 = zext i32 %and29.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and29.i, label %if.end28.i.if.end28.1.i_crit_edge [
    i32 0, label %if.end28.i.camif_get_dma_burst.exit_crit_edge
    i32 8, label %if.end28.i.if.then37.i_crit_edge
    i32 4, label %if.end28.i.if.then37.i_crit_edge92
  ]

if.end28.i.if.then37.i_crit_edge92:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

if.end28.i.if.then37.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

if.end28.i.camif_get_dma_burst.exit_crit_edge:    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %camif_get_dma_burst.exit

if.end28.i.if.end28.1.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.1.i

if.then37.i:                                      ; preds = %if.end28.3.i.if.then37.i_crit_edge, %if.end32.2.i.if.then37.i_crit_edge, %if.end28.1.i.if.then37.i_crit_edge, %if.end28.1.i.if.then37.i_crit_edge93, %if.end28.i.if.then37.i_crit_edge, %if.end28.i.if.then37.i_crit_edge92
  %div1.067.lcssa70.i = phi i32 [ 4, %if.end32.2.i.if.then37.i_crit_edge ], [ 2, %if.end28.3.i.if.then37.i_crit_edge ], [ 16, %if.end28.i.if.then37.i_crit_edge ], [ 16, %if.end28.i.if.then37.i_crit_edge92 ], [ 8, %if.end28.1.i.if.then37.i_crit_edge ], [ 8, %if.end28.1.i.if.then37.i_crit_edge93 ]
  %and29.lcssa69.i = phi i32 [ %and29.2.i, %if.end32.2.i.if.then37.i_crit_edge ], [ 1, %if.end28.3.i.if.then37.i_crit_edge ], [ %and29.i, %if.end28.i.if.then37.i_crit_edge ], [ %and29.i, %if.end28.i.if.then37.i_crit_edge92 ], [ %and29.1.i, %if.end28.1.i.if.then37.i_crit_edge ], [ %and29.1.i, %if.end28.1.i.if.then37.i_crit_edge93 ]
  br label %camif_get_dma_burst.exit

for.inc.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul.i88)
  %cmp26.1.i = icmp ult i32 %mul.i88, 32
  br i1 %cmp26.1.i, label %for.inc.1.i, label %for.inc.i.if.end28.1.i_crit_edge

for.inc.i.if.end28.1.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.1.i

if.end28.1.i:                                     ; preds = %for.inc.i.if.end28.1.i_crit_edge, %if.end28.i.if.end28.1.i_crit_edge
  %and29.1.i = and i32 %div60.i, 7
  %53 = zext i32 %and29.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and29.1.i, label %if.end28.1.i.if.end28.2.i_crit_edge [
    i32 0, label %if.end28.1.i.camif_get_dma_burst.exit_crit_edge
    i32 4, label %if.end28.1.i.if.then37.i_crit_edge
    i32 2, label %if.end28.1.i.if.then37.i_crit_edge93
  ]

if.end28.1.i.if.then37.i_crit_edge93:             ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

if.end28.1.i.if.then37.i_crit_edge:               ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

if.end28.1.i.camif_get_dma_burst.exit_crit_edge:  ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %camif_get_dma_burst.exit

if.end28.1.i.if.end28.2.i_crit_edge:              ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.2.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul.i88)
  %cmp26.2.i = icmp ult i32 %mul.i88, 16
  br i1 %cmp26.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end28.2.i_crit_edge

for.inc.1.i.if.end28.2.i_crit_edge:               ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.2.i

if.end28.2.i:                                     ; preds = %for.inc.1.i.if.end28.2.i_crit_edge, %if.end28.1.i.if.end28.2.i_crit_edge
  %and29.2.i = and i32 %div60.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.2.i)
  %cmp30.2.i = icmp eq i32 %and29.2.i, 0
  br i1 %cmp30.2.i, label %if.end28.2.i.camif_get_dma_burst.exit_crit_edge, label %if.end32.2.i

if.end28.2.i.camif_get_dma_burst.exit_crit_edge:  ; preds = %if.end28.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %camif_get_dma_burst.exit

if.end32.2.i:                                     ; preds = %if.end28.2.i
  %54 = add nsw i32 %and29.2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %if.end32.2.i.if.then37.i_crit_edge, label %if.end32.2.i.if.end28.3.i_crit_edge

if.end32.2.i.if.end28.3.i_crit_edge:              ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.3.i

if.end32.2.i.if.then37.i_crit_edge:               ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul.i88)
  %cmp26.3.i = icmp ult i32 %mul.i88, 8
  br i1 %cmp26.3.i, label %for.inc.2.i.camif_get_dma_burst.exit_crit_edge, label %for.inc.2.i.if.end28.3.i_crit_edge

for.inc.2.i.if.end28.3.i_crit_edge:               ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.3.i

for.inc.2.i.camif_get_dma_burst.exit_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %camif_get_dma_burst.exit

if.end28.3.i:                                     ; preds = %for.inc.2.i.if.end28.3.i_crit_edge, %if.end32.2.i.if.end28.3.i_crit_edge
  %56 = and i32 %mul.i88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp30.3.i = icmp eq i32 %56, 0
  br i1 %cmp30.3.i, label %if.end28.3.i.camif_get_dma_burst.exit_crit_edge, label %if.end28.3.i.if.then37.i_crit_edge

if.end28.3.i.if.then37.i_crit_edge:               ; preds = %if.end28.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37.i

if.end28.3.i.camif_get_dma_burst.exit_crit_edge:  ; preds = %if.end28.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %camif_get_dma_burst.exit

camif_get_dma_burst.exit:                         ; preds = %if.end28.3.i.camif_get_dma_burst.exit_crit_edge, %for.inc.2.i.camif_get_dma_burst.exit_crit_edge, %if.end28.2.i.camif_get_dma_burst.exit_crit_edge, %if.end28.1.i.camif_get_dma_burst.exit_crit_edge, %if.then37.i, %if.end28.i.camif_get_dma_burst.exit_crit_edge, %do.end.i
  %ymburst.0 = phi i32 [ 0, %do.end.i ], [ 0, %for.inc.2.i.camif_get_dma_burst.exit_crit_edge ], [ %div1.067.lcssa70.i, %if.then37.i ], [ 16, %if.end28.i.camif_get_dma_burst.exit_crit_edge ], [ 8, %if.end28.1.i.camif_get_dma_burst.exit_crit_edge ], [ 4, %if.end28.2.i.camif_get_dma_burst.exit_crit_edge ], [ 2, %if.end28.3.i.camif_get_dma_burst.exit_crit_edge ]
  %yrburst.0 = phi i32 [ 0, %do.end.i ], [ 0, %for.inc.2.i.camif_get_dma_burst.exit_crit_edge ], [ %and29.lcssa69.i, %if.then37.i ], [ 16, %if.end28.i.camif_get_dma_burst.exit_crit_edge ], [ 8, %if.end28.1.i.camif_get_dma_burst.exit_crit_edge ], [ 4, %if.end28.2.i.camif_get_dma_burst.exit_crit_edge ], [ 2, %if.end28.3.i.camif_get_dma_burst.exit_crit_edge ]
  %57 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base.i, align 8
  %59 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %id.i, align 2
  %conv26 = zext i8 %60 to i32
  %61 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset.i, align 8
  %add28 = add i32 %62, 52
  %mul29 = mul i32 %add28, %conv26
  %add30 = add i32 %mul29, 76
  %add.ptr31 = getelementptr i8, ptr %58, i32 %add30
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !173
  %64 = and i32 %63, 251658495
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %shl33 = shl nuw nsw i32 %ymburst.0, 19
  %shl34 = shl nuw nsw i32 %yrburst.0, 14
  %66 = shl nuw nsw i32 %ymburst.0, 8
  %shl37 = and i32 %66, -512
  %67 = shl nuw nsw i32 %yrburst.0, 3
  %shl39 = and i32 %67, -16
  %or35 = or i32 %shl37, %shl33
  %or36 = or i32 %or35, %shl34
  %or40 = or i32 %or36, %shl39
  %or41 = or i32 %or40, %65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !174
  tail call void @arm_heavy_mb() #4
  %68 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %69 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io_base.i, align 8
  %71 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %id.i, align 2
  %conv47 = zext i8 %72 to i32
  %73 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset.i, align 8
  %add49 = add i32 %74, 52
  %mul50 = mul i32 %add49, %conv47
  %add51 = add i32 %mul50, 76
  %add.ptr52 = getelementptr i8, ptr %70, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %68) #4, !srcloc !143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_hw_set_output_dma.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_hw_set_output_dma, %if.then58)) #4
          to label %do.end61 [label %if.then58], !srcloc !162

if.then58:                                        ; preds = %camif_get_dma_burst.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_hw_set_output_dma.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 286, i32 noundef %ymburst.0, i32 noundef %yrburst.0) #4
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %camif_get_dma_burst.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_input_path(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 2
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 44
  %add = add nuw nsw i32 %mul, 252
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !175
  %7 = and i32 %6, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !176
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %camif, align 8
  %io_base3 = getelementptr inbounds %struct.camif_dev, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %io_base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base3, align 8
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 2
  %conv5 = zext i8 %13 to i32
  %mul6 = mul nuw nsw i32 %conv5, 44
  %add7 = add nuw nsw i32 %mul6, 252
  %add.ptr8 = getelementptr i8, ptr %11, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_target_format(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %out_frame = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_hw_set_target_format.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_hw_set_target_format, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %out_frame, align 4
  %conv = zext i16 %3 to i32
  %f_height = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %f_height, align 2
  %conv4 = zext i16 %5 to i32
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %6 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_fmt, align 8
  %color = getelementptr inbounds %struct.camif_fmt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %color, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_hw_set_target_format.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 303, i32 noundef %conv, i32 noundef %conv4, i32 noundef %9) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 2
  %conv5 = zext i8 %13 to i32
  %offset = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 8
  %add = add i32 %15, 52
  %mul = mul i32 %add, %conv5
  %add6 = add i32 %mul, 72
  %add.ptr = getelementptr i8, ptr %11, i32 %add6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !177
  %17 = and i32 %16, 14680288
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %variant = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp = icmp eq i8 %22, 32
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = and i32 %18, 536928256
  %and13 = or i32 %or, -2147483648
  %out_fmt14 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %23 = ptrtoint ptr %out_fmt14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out_fmt14, align 8
  %color15 = getelementptr inbounds %struct.camif_fmt, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %color15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %color15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %26)
  %cmp16 = icmp eq i32 %26, 34
  %or19 = or i32 %18, -1073741824
  %spec.select = select i1 %cmp16, i32 %or19, i32 %and13
  br label %if.end31

if.else:                                          ; preds = %do.end
  %and21 = and i32 %18, -2147426304
  %out_fmt22 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %27 = ptrtoint ptr %out_fmt22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_fmt22, align 8
  %color23 = getelementptr inbounds %struct.camif_fmt, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %color23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %color23, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %30, label %if.else.if.end31_crit_edge [
    i32 16, label %if.else.sw.bb_crit_edge
    i32 17, label %if.else.sw.bb_crit_edge137
    i32 18, label %if.else.sw.bb_crit_edge138
    i32 67, label %if.else.sw.bb29_crit_edge
    i32 66, label %if.else.sw.bb29_crit_edge139
    i32 34, label %sw.bb27
    i32 64, label %if.else.sw.bb29_crit_edge140
    i32 65, label %if.else.sw.bb29_crit_edge141
  ]

if.else.sw.bb29_crit_edge141:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb29

if.else.sw.bb29_crit_edge140:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb29

if.else.sw.bb29_crit_edge139:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb29

if.else.sw.bb29_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb29

if.else.sw.bb_crit_edge138:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.else.sw.bb_crit_edge137:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge137, %if.else.sw.bb_crit_edge138
  %or24 = or i32 %18, 1610612736
  br label %if.end31

sw.bb27:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %or28 = or i32 %and21, 536870912
  br label %if.end31

sw.bb29:                                          ; preds = %if.else.sw.bb29_crit_edge, %if.else.sw.bb29_crit_edge139, %if.else.sw.bb29_crit_edge140, %if.else.sw.bb29_crit_edge141
  %or30 = or i32 %and21, 1073741824
  br label %if.end31

if.end31:                                         ; preds = %sw.bb29, %sw.bb27, %sw.bb, %if.else.if.end31_crit_edge, %if.then12
  %cfg.0 = phi i32 [ %or30, %sw.bb29 ], [ %or28, %sw.bb27 ], [ %or24, %sw.bb ], [ %spec.select, %if.then12 ], [ %and21, %if.else.if.end31_crit_edge ]
  %rotation = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 21
  %32 = ptrtoint ptr %rotation to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rotation, align 4
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %33, label %if.else46 [
    i16 90, label %if.end31.if.then39_crit_edge
    i16 270, label %if.end31.if.then39_crit_edge142
  ]

if.end31.if.then39_crit_edge142:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.end31.if.then39_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.then39:                                        ; preds = %if.end31.if.then39_crit_edge, %if.end31.if.then39_crit_edge142
  %f_height40 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 1
  br label %do.body55

if.else46:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %f_height50 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 1
  br label %do.body55

do.body55:                                        ; preds = %if.else46, %if.then39
  %.sink.in = phi ptr [ %out_frame, %if.then39 ], [ %f_height50, %if.else46 ]
  %shl.sink.in.in.in = phi ptr [ %f_height40, %if.then39 ], [ %out_frame, %if.else46 ]
  %35 = ptrtoint ptr %shl.sink.in.in.in to i32
  call void @__asan_load2_noabort(i32 %35)
  %shl.sink.in.in = load i16, ptr %shl.sink.in.in.in, align 2
  %shl.sink.in = zext i16 %shl.sink.in.in to i32
  %shl.sink = shl nuw i32 %shl.sink.in, 16
  %36 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %36)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv43 = zext i16 %.sink to i32
  %or44 = or i32 %shl.sink, %conv43
  %cfg.1 = or i32 %or44, %cfg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !178
  tail call void @arm_heavy_mb() #4
  %37 = tail call i32 @llvm.bswap.i32(i32 %cfg.1)
  %38 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base, align 8
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %id, align 2
  %conv60 = zext i8 %41 to i32
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 8
  %add62 = add i32 %43, 52
  %mul63 = mul i32 %add62, %conv60
  %add64 = add i32 %mul63, 72
  %add.ptr65 = getelementptr i8, ptr %39, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %37) #4, !srcloc !143
  %44 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base, align 8
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %id, align 2
  %conv70 = zext i8 %47 to i32
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset, align 8
  %add72 = add i32 %49, 52
  %mul73 = mul i32 %add72, %conv70
  %add74 = add i32 %mul73, 92
  %add.ptr75 = getelementptr i8, ptr %45, i32 %add74
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #4, !srcloc !140
  %51 = shl i32 %50, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  %and79 = and i32 %51, -268435456
  %52 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %out_frame, align 4
  %conv81 = zext i16 %53 to i32
  %f_height82 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 17, i32 1
  %54 = ptrtoint ptr %f_height82 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %f_height82, align 2
  %conv83 = zext i16 %55 to i32
  %mul84 = mul nuw i32 %conv83, %conv81
  %or85 = or i32 %mul84, %and79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !180
  tail call void @arm_heavy_mb() #4
  %56 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %57 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base, align 8
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %id, align 2
  %conv91 = zext i8 %60 to i32
  %61 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset, align 8
  %add93 = add i32 %62, 52
  %mul94 = mul i32 %add93, %conv91
  %add95 = add i32 %mul94, 92
  %add.ptr96 = getelementptr i8, ptr %58, i32 %add95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %56) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_flip(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 2
  %conv = zext i8 %5 to i32
  %offset = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 8
  %add = add i32 %7, 52
  %mul = mul i32 %add, %conv
  %add1 = add i32 %mul, 72
  %add.ptr = getelementptr i8, ptr %3, i32 %add1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !181
  %9 = and i32 %8, -12582913
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %hflip = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 22
  %11 = ptrtoint ptr %hflip to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hflip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %or = or i32 %10, 32768
  %spec.select = select i1 %tobool.not, i32 %10, i32 %or
  %vflip = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 23
  %13 = ptrtoint ptr %vflip to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vflip, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  %or5 = or i32 %spec.select, 16384
  %cfg.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %cfg.1)
  %16 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %camif, align 8
  %io_base8 = getelementptr inbounds %struct.camif_dev, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %io_base8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base8, align 8
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id, align 2
  %conv10 = zext i8 %21 to i32
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 8
  %add12 = add i32 %23, 52
  %mul13 = mul i32 %add12, %conv10
  %add14 = add i32 %mul13, 72
  %add.ptr15 = getelementptr i8, ptr %19, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_scaler(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif, align 8
  %variant = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp = icmp eq i8 %5, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @camif_s3c244x_hw_set_scaler(ptr noundef %vp)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @camif_s3c64xx_hw_set_scaler(ptr noundef %vp)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @camif_s3c244x_hw_set_scaler(ptr nocapture noundef readonly %vp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %2 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_fmt, align 8
  %color3 = getelementptr inbounds %struct.camif_fmt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %color3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color3, align 4
  %id.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 2
  %conv.i = zext i8 %7 to i32
  %offset.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 8
  %add.i = add i32 %9, 52
  %mul.i = mul i32 %add.i, %conv.i
  %add2.i = add i32 %mul.i, 80
  %h_shift.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %h_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_shift.i, align 4
  %v_shift.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 5
  %12 = ptrtoint ptr %v_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v_shift.i, align 4
  %add3.i = add i32 %13, %11
  %.neg.i = mul i32 %add3.i, -268435456
  %shl.i = add i32 %.neg.i, -1610612736
  %pre_h_ratio.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 6
  %14 = ptrtoint ptr %pre_h_ratio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_h_ratio.i, align 4
  %shl4.i = shl i32 %15, 16
  %pre_v_ratio.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 7
  %16 = ptrtoint ptr %pre_v_ratio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pre_v_ratio.i, align 4
  %or.i = or i32 %shl4.i, %17
  %or5.i = or i32 %or.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !183
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #4
  %io_base.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #4, !srcloc !143
  %pre_dst_width.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 8
  %21 = ptrtoint ptr %pre_dst_width.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pre_dst_width.i, align 4
  %shl6.i = shl i32 %22, 16
  %pre_dst_height.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 9
  %23 = ptrtoint ptr %pre_dst_height.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pre_dst_height.i, align 4
  %or7.i = or i32 %shl6.i, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !184
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #4
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i, align 8
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id.i, align 2
  %conv13.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset.i, align 8
  %add15.i = add i32 %31, 52
  %mul16.i = mul i32 %add15.i, %conv13.i
  %add17.i = add i32 %mul16.i, 84
  %add.ptr18.i = getelementptr i8, ptr %27, i32 %add17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %25) #4, !srcloc !143
  %32 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i, align 8
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id.i, align 2
  %conv = zext i8 %35 to i32
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 8
  %add = add i32 %37, 52
  %mul = mul i32 %add, %conv
  %add4 = add i32 %mul, 88
  %add.ptr = getelementptr i8, ptr %33, i32 %add4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !185
  %39 = and i32 %38, 16646174
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %enable = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 3
  %41 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  %scaler2 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14
  %43 = ptrtoint ptr %scaler2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %scaler2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool6.not = icmp eq i8 %44, 0
  br i1 %tobool6.not, label %if.then.if.end13_crit_edge, label %if.then7

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then7:                                         ; preds = %if.then
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp = icmp eq i8 %46, 0
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %40, 1073741824
  br label %if.end13

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %or12 = or i32 %40, 536870912
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %if.then.if.end13_crit_edge
  %cfg.0 = phi i32 [ %or, %if.then11 ], [ %or12, %if.else ], [ %40, %if.then.if.end13_crit_edge ]
  %scaleup_v = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 1
  %47 = ptrtoint ptr %scaleup_v to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %scaleup_v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool14.not = icmp eq i8 %48, 0
  br i1 %tobool14.not, label %if.end13.if.end34_crit_edge, label %if.then15

if.end13.if.end34_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then15:                                        ; preds = %if.end13
  %49 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp18 = icmp eq i8 %50, 0
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %or21 = or i32 %cfg.0, 536870912
  br label %if.end34

if.else22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %or23 = or i32 %cfg.0, 268435456
  br label %if.end34

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp29 = icmp eq i8 %52, 0
  %or32 = or i32 %40, -2147483648
  %spec.select = select i1 %cmp29, i32 %or32, i32 %40
  br label %if.end34

if.end34:                                         ; preds = %if.else26, %if.else22, %if.then20, %if.end13.if.end34_crit_edge
  %cfg.1 = phi i32 [ %or21, %if.then20 ], [ %or23, %if.else22 ], [ %cfg.0, %if.end13.if.end34_crit_edge ], [ %spec.select, %if.else26 ]
  %main_h_ratio = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 10
  %53 = ptrtoint ptr %main_h_ratio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %main_h_ratio, align 4
  %and35 = shl i32 %54, 16
  %shl = and i32 %and35, 33488896
  %or36 = or i32 %shl, %cfg.1
  %main_v_ratio = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 11
  %55 = ptrtoint ptr %main_v_ratio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %main_v_ratio, align 4
  %and37 = and i32 %56, 511
  %or38 = or i32 %or36, %and37
  %57 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp41 = icmp eq i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %5)
  %cmp44 = icmp eq i32 %5, 18
  %or47 = or i32 %or38, 1073741824
  %spec.select99 = select i1 %cmp44, i32 %or47, i32 %or38
  %or49 = or i32 %spec.select99, -2147483648
  %cfg.3 = select i1 %cmp41, i32 %or49, i32 %or38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !186
  tail call void @arm_heavy_mb() #4
  %59 = tail call i32 @llvm.bswap.i32(i32 %cfg.3)
  %60 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_base.i, align 8
  %62 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %id.i, align 2
  %conv53 = zext i8 %63 to i32
  %64 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset.i, align 8
  %add55 = add i32 %65, 52
  %mul56 = mul i32 %add55, %conv53
  %add57 = add i32 %mul56, 88
  %add.ptr58 = getelementptr i8, ptr %61, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %59) #4, !srcloc !143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_s3c244x_hw_set_scaler.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_s3c244x_hw_set_scaler, %if.then65)) #4
          to label %do.end70 [label %if.then65], !srcloc !162

if.then65:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %main_h_ratio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %main_h_ratio, align 4
  %68 = ptrtoint ptr %main_v_ratio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %main_v_ratio, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_s3c244x_hw_set_scaler.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.63, i32 noundef 423, i32 noundef %67, i32 noundef %69) #4
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %if.end34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @camif_s3c64xx_hw_set_scaler(ptr nocapture noundef readonly %vp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %out_fmt = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 15
  %2 = ptrtoint ptr %out_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_fmt, align 8
  %color3 = getelementptr inbounds %struct.camif_fmt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %color3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color3, align 4
  %id.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 2
  %conv.i = zext i8 %7 to i32
  %offset.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 8
  %add.i = add i32 %9, 52
  %mul.i = mul i32 %add.i, %conv.i
  %add2.i = add i32 %mul.i, 80
  %h_shift.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %h_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_shift.i, align 4
  %v_shift.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 5
  %12 = ptrtoint ptr %v_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v_shift.i, align 4
  %add3.i = add i32 %13, %11
  %.neg.i = mul i32 %add3.i, -268435456
  %shl.i = add i32 %.neg.i, -1610612736
  %pre_h_ratio.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 6
  %14 = ptrtoint ptr %pre_h_ratio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_h_ratio.i, align 4
  %shl4.i = shl i32 %15, 16
  %pre_v_ratio.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 7
  %16 = ptrtoint ptr %pre_v_ratio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pre_v_ratio.i, align 4
  %or.i = or i32 %shl4.i, %17
  %or5.i = or i32 %or.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !183
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #4
  %io_base.i = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %19 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #4, !srcloc !143
  %pre_dst_width.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 8
  %21 = ptrtoint ptr %pre_dst_width.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pre_dst_width.i, align 4
  %shl6.i = shl i32 %22, 16
  %pre_dst_height.i = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 9
  %23 = ptrtoint ptr %pre_dst_height.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pre_dst_height.i, align 4
  %or7.i = or i32 %shl6.i, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !184
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #4
  %26 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i, align 8
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id.i, align 2
  %conv13.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset.i, align 8
  %add15.i = add i32 %31, 52
  %mul16.i = mul i32 %add15.i, %conv13.i
  %add17.i = add i32 %mul16.i, 84
  %add.ptr18.i = getelementptr i8, ptr %27, i32 %add17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %25) #4, !srcloc !143
  %32 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i, align 8
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id.i, align 2
  %conv = zext i8 %35 to i32
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 8
  %add = add i32 %37, 52
  %mul = mul i32 %add, %conv
  %add4 = add i32 %mul, 88
  %add.ptr = getelementptr i8, ptr %33, i32 %add4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !187
  %39 = and i32 %38, 8388612
  %40 = or i32 %39, 24
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %enable = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 3
  %42 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp eq i8 %43, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or6 = or i32 %41, -2147483648
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %scaler2 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14
  %44 = ptrtoint ptr %scaler2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %scaler2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool7.not = icmp eq i8 %45, 0
  %or9 = or i32 %41, 1073741824
  %spec.select = select i1 %tobool7.not, i32 %41, i32 %or9
  %scaleup_v = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 1
  %46 = ptrtoint ptr %scaleup_v to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %scaleup_v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool10.not = icmp eq i8 %47, 0
  %or12 = or i32 %spec.select, 536870912
  %cfg.1 = select i1 %tobool10.not, i32 %spec.select, i32 %or12
  %copy = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 2
  %48 = ptrtoint ptr %copy to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %copy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool14.not = icmp eq i8 %49, 0
  %or16 = or i32 %cfg.1, 512
  %spec.select71 = select i1 %tobool14.not, i32 %cfg.1, i32 %or16
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then
  %cfg.2 = phi i32 [ %or6, %if.then ], [ %spec.select71, %if.else ]
  %50 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %if.end18.sw.epilog_crit_edge [
    i32 17, label %sw.bb
    i32 18, label %sw.bb20
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %or19 = or i32 %cfg.2, 2048
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %or21 = or i32 %cfg.2, 4096
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb, %if.end18.sw.epilog_crit_edge
  %cfg.3 = phi i32 [ %cfg.2, %if.end18.sw.epilog_crit_edge ], [ %or21, %sw.bb20 ], [ %or19, %sw.bb ]
  %main_h_ratio = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 10
  %51 = ptrtoint ptr %main_h_ratio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %main_h_ratio, align 4
  %and22 = shl i32 %52, 16
  %shl = and i32 %and22, 33488896
  %or23 = or i32 %shl, %cfg.3
  %main_v_ratio = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 11
  %53 = ptrtoint ptr %main_v_ratio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %main_v_ratio, align 4
  %and24 = and i32 %54, 511
  %or25 = or i32 %or23, %and24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !188
  tail call void @arm_heavy_mb() #4
  %55 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %56 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base.i, align 8
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %id.i, align 2
  %conv28 = zext i8 %59 to i32
  %60 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i, align 8
  %add30 = add i32 %61, 52
  %mul31 = mul i32 %add30, %conv28
  %add32 = add i32 %mul31, 88
  %add.ptr33 = getelementptr i8, ptr %57, i32 %add32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %55) #4, !srcloc !143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_s3c64xx_hw_set_scaler.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_s3c64xx_hw_set_scaler, %if.then40)) #4
          to label %do.end45 [label %if.then40], !srcloc !162

if.then40:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %main_h_ratio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %main_h_ratio, align 4
  %64 = ptrtoint ptr %main_v_ratio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %main_v_ratio, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_s3c64xx_hw_set_scaler.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 472, i32 noundef %63, i32 noundef %65) #4
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %sw.epilog
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_enable_scaler(ptr nocapture noundef readonly %vp, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 2
  %conv = zext i8 %1 to i32
  %offset = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 8
  %add = add i32 %3, 52
  %mul = mul i32 %add, %conv
  %add1 = add i32 %mul, 88
  %camif = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %4 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %camif, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %add1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !189
  %9 = and i32 %8, -8388609
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %on, i32 32768, i32 0
  %cfg.0 = or i32 %10, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !190
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %12 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %camif, align 8
  %io_base4 = getelementptr inbounds %struct.camif_dev, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %io_base4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base4, align 8
  %add.ptr5 = getelementptr i8, ptr %15, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_set_lastirq(ptr nocapture noundef readonly %vp, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 2
  %conv = zext i8 %1 to i32
  %offset = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 8
  %add = add i32 %3, 52
  %mul = mul i32 %add, %conv
  %add1 = add i32 %mul, 76
  %camif = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %4 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %camif, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %add1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %9 = and i32 %8, -67108865
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %cfg.0 = or i32 %10, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !192
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %12 = ptrtoint ptr %camif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %camif, align 8
  %io_base4 = getelementptr inbounds %struct.camif_dev, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %io_base4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base4, align 8
  %add.ptr5 = getelementptr i8, ptr %15, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #4, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_enable_capture(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %offset = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 8
  %add = add i32 %5, 160
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !193
  %stream_count = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %stream_count, align 4
  %variant = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 8
  %ip_revision = getelementptr inbounds %struct.s3c_camif_variant, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ip_revision to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ip_revision, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %13)
  %cmp = icmp eq i8 %13, 50
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 2
  %conv4 = zext i8 %15 to i32
  %sub = sub nsw i32 25, %conv4
  %shl = shl nuw nsw i32 1, %sub
  %or = or i32 %shl, %7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cfg.0 = phi i32 [ %or, %if.then ], [ %7, %entry.if.end_crit_edge ]
  %enable = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 14, i32 3
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %id6 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %18 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id6, align 2
  %conv7 = zext i8 %19 to i32
  %sub8 = sub nsw i32 30, %conv7
  %shl9 = shl nuw nsw i32 1, %sub8
  %or10 = or i32 %shl9, %cfg.0
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %cfg.1 = phi i32 [ %or10, %if.then5 ], [ %cfg.0, %if.end.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp eq i32 %9, 0
  %or16 = or i32 %cfg.1, -2147483648
  %spec.select = select i1 %cmp13, i32 %or16, i32 %cfg.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !194
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %21 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base, align 8
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 8
  %add20 = add i32 %24, 160
  %add.ptr21 = getelementptr i8, ptr %22, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %20) #4, !srcloc !143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_hw_enable_capture.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_hw_enable_capture, %if.then28)) #4
          to label %do.end32 [label %if.then28], !srcloc !162

if.then28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_hw_enable_capture.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 531, i32 noundef %spec.select, i32 noundef %26) #4
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %if.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_disable_capture(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %camif1 = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 2
  %0 = ptrtoint ptr %camif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %camif1, align 8
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %offset = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 24
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 8
  %add = add i32 %5, 160
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !195
  %id = getelementptr inbounds %struct.camif_vp, ptr %vp, i32 0, i32 20
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 2
  %conv = zext i8 %9 to i32
  %sub = sub nsw i32 30, %conv
  %shl = shl nuw nsw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %stream_count = getelementptr inbounds %struct.camif_dev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %do.end, label %entry.if.end26_crit_edge, !prof !172

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 542, i32 noundef 9, ptr noundef null) #4
  %12 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %stream_count, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end, %entry.if.end26_crit_edge
  %13 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp28 = icmp eq i32 %14, 0
  %and31 = and i32 %and, 2147483647
  %spec.select = select i1 %cmp28, i32 %and31, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @camif_hw_disable_capture.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@camif_hw_disable_capture, %if.then43)) #4
          to label %do.body48 [label %if.then43], !srcloc !162

if.then43:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @camif_hw_disable_capture.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 549, i32 noundef %spec.select, i32 noundef %16) #4
  br label %do.body48

do.body48:                                        ; preds = %if.then43, %if.end26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !196
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 8
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 8
  %add53 = add i32 %21, 160
  %add.ptr54 = getelementptr i8, ptr %19, i32 %add53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %17) #4, !srcloc !143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @camif_hw_dump_regs(ptr nocapture noundef readonly %camif, ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 598, ptr noundef %label) #7
  %io_base = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 23
  %dev = getelementptr inbounds %struct.camif_dev, ptr %camif, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %arrayidx = getelementptr [35 x %struct.anon.105], ptr @camif_hw_dump_regs.registers, i32 0, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !140
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !197
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr [35 x %struct.anon.105], ptr @camif_hw_dump_regs.registers, i32 0, i32 %i.012, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.60, ptr noundef %9, i32 noundef %5) #7
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !125, !126, !127, !128, !130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @camif_hw_set_effect.colorfx, !1, !"colorfx", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 60, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 115, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @camif_hw_set_source_format._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @camif_hw_set_source_format._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 195, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @camif_hw_set_camera_bus.__UNIQUE_ID_ddebug298, !11, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 214, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @camif_hw_set_output_addr.__UNIQUE_ID_ddebug299, !17, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!20 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 286, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @camif_hw_set_output_dma.__UNIQUE_ID_ddebug300, !22, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 302, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @camif_hw_set_target_format.__UNIQUE_ID_ddebug301, !27, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!30 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 530, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @camif_hw_enable_capture.__UNIQUE_ID_ddebug304, !32, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!35 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 548, i32 2}
!38 = !{ptr @camif_hw_disable_capture.__UNIQUE_ID_ddebug305, !37, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 560, i32 30}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 561, i32 30}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 562, i32 29}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 563, i32 31}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 564, i32 33}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 565, i32 34}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 566, i32 34}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 567, i32 33}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 568, i32 34}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 569, i32 34}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 570, i32 33}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 571, i32 34}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 572, i32 34}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 573, i32 33}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 574, i32 34}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 575, i32 34}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 576, i32 33}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 577, i32 33}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 578, i32 33}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 579, i32 33}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 580, i32 36}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 581, i32 36}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 582, i32 34}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 583, i32 34}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 584, i32 37}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 585, i32 37}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 586, i32 39}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 587, i32 39}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 588, i32 36}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 589, i32 36}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 590, i32 35}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 591, i32 35}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 592, i32 36}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 593, i32 36}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 594, i32 33}
!109 = !{ptr @camif_hw_dump_regs.registers, !110, !"registers", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 559, i32 4}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 598, i32 2}
!113 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @camif_hw_dump_regs._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @camif_hw_dump_regs._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 601, i32 3}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @camif_hw_dump_regs._entry.59, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @camif_hw_dump_regs._entry_ptr.62, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @src_pixfmt_map, !122, !"src_pixfmt_map", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 95, i32 18}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 422, i32 2}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @camif_s3c244x_hw_set_scaler.__UNIQUE_ID_ddebug302, !124, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!127 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/s3c-camif/camif-regs.c", i32 471, i32 2}
!130 = !{ptr @camif_s3c64xx_hw_set_scaler.__UNIQUE_ID_ddebug303, !129, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 3013798}
!141 = !{i64 2156413524}
!142 = !{i64 2156413895}
!143 = !{i64 3013380}
!144 = !{i64 2156414666}
!145 = !{i64 2156415126}
!146 = !{i64 2156416439}
!147 = !{i64 2156416810}
!148 = !{i64 2156418143}
!149 = !{i64 2156418549}
!150 = !{i64 2156419324}
!151 = !{i64 2156419621}
!152 = !{i64 2156421314}
!153 = !{i64 2156421740}
!154 = !{i64 2156424871}
!155 = !{i64 2156425192}
!156 = !{i64 2156425963}
!157 = !{i64 2156426440}
!158 = !{i64 2156426919}
!159 = !{i64 2156427690}
!160 = !{i64 2156428397}
!161 = !{i64 2156429168}
!162 = !{i64 2148772153, i64 2148772158, i64 2148772171, i64 2148772215, i64 2148772249, i64 2148772270}
!163 = !{i64 2156432839}
!164 = !{i64 2156433426}
!165 = !{i64 2156434071}
!166 = !{i64 2156434712}
!167 = !{i64 2156438363}
!168 = !{i64 2156438812}
!169 = !{i64 2156439998}
!170 = !{i64 2156440565}
!171 = !{i64 2156441132}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 2156442177}
!174 = !{i64 2156442693}
!175 = !{i64 2156446018}
!176 = !{i64 2156446462}
!177 = !{i64 2156450022}
!178 = !{i64 2156450770}
!179 = !{i64 2156451833}
!180 = !{i64 2156452258}
!181 = !{i64 2156453341}
!182 = !{i64 2156453794}
!183 = !{i64 2156454359}
!184 = !{i64 2156454961}
!185 = !{i64 2156456024}
!186 = !{i64 2156457237}
!187 = !{i64 2156460818}
!188 = !{i64 2156462467}
!189 = !{i64 2156465868}
!190 = !{i64 2156466326}
!191 = !{i64 2156467167}
!192 = !{i64 2156467621}
!193 = !{i64 2156468514}
!194 = !{i64 2156469173}
!195 = !{i64 2156472599}
!196 = !{i64 2156476196}
!197 = !{i64 2156480014}
