; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-ic-prpencvf.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-ic-prpencvf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.imx_ic_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.prp_channels = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.imx_ic_priv = type { ptr, ptr, %struct.v4l2_subdev, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.prp_priv = type { ptr, [2 x %struct.media_pad], ptr, %struct.mutex, ptr, ptr, ptr, ptr, [2 x ptr], %struct.imx_media_dma_buf, i32, ptr, ptr, [2 x %struct.v4l2_mbus_framefmt], [2 x ptr], %struct.v4l2_fract, [2 x %struct.imx_media_dma_buf], %struct.v4l2_ctrl_handler, i32, i8, i8, i32, %struct.spinlock, %struct.timer_list, i32, i32, i32, i32, i8, i8, i8, %struct.completion }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.imx_media_dma_buf = type { ptr, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ipu_ic_csc = type { %struct.ipu_ic_colorspace, %struct.ipu_ic_colorspace, %struct.ipu_ic_csc_params }
%struct.ipu_ic_colorspace = type { i32, i32, i32 }
%struct.ipu_ic_csc_params = type { [3 x [3 x i16]], [3 x i16], i8 }
%struct.imx_media_video_dev = type { ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, ptr, %struct.list_head }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.90, i32, i32 }
%union.anon.90 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32, ptr, i32, i32, i32, i8, i8, i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.88, i32 }
%union.anon.88 = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.ipu_image = type { %struct.v4l2_pix_format, %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@prp_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @prp_video_ops, ptr null, ptr null, ptr null, ptr @prp_pad_ops }, [32 x i8] zeroinitializer }, align 32
@prp_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @prp_registered, ptr @prp_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@prp_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @prp_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@imx_ic_prpencvf_ops = dso_local global { %struct.imx_ic_ops, [44 x i8] } { %struct.imx_ic_ops { ptr @prp_subdev_ops, ptr @prp_internal_ops, ptr @prp_entity_ops, ptr @prp_init, ptr @prp_remove }, [44 x i8] zeroinitializer }, align 32
@prp_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @prp_s_stream, ptr null, ptr @prp_g_frame_interval, ptr @prp_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@prp_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @imx_media_init_cfg, ptr @prp_enum_mbus_code, ptr @prp_enum_frame_size, ptr null, ptr @prp_get_fmt, ptr @prp_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@prp_s_stream.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx6_media\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prp_s_stream\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/media/imx/imx-ic-prpencvf.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: stream %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx-ic-prp-nfb4eof\00", [45 x i8] zeroinitializer }, align 32
@prp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Error registering NFB4EOF irq: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prp_start\00", [22 x i8] zeroinitializer }, align 32
@prp_start._entry_ptr = internal global ptr @prp_start._entry, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx-ic-prp-eof\00", [17 x i8] zeroinitializer }, align 32
@prp_start._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error registering eof irq: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@prp_start._entry_ptr.12 = internal global ptr @prp_start._entry.10, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@prp_start._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: upstream stream on failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@prp_start._entry_ptr.15 = internal global ptr @prp_start._entry.13, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@prp_get_ipu_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: failed to get IC\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prp_get_ipu_resources\00", [42 x i8] zeroinitializer }, align 32
@prp_get_ipu_resources._entry_ptr = internal global ptr @prp_get_ipu_resources._entry, section ".printk_index", align 4
@prp_channel = internal constant { [2 x %struct.prp_channels], [40 x i8] } { [2 x %struct.prp_channels] [%struct.prp_channels { i32 20, i32 45, i32 48 }, %struct.prp_channels { i32 21, i32 46, i32 49 }], [40 x i8] zeroinitializer }, align 32
@prp_get_ipu_resources._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not get IDMAC channel %u\0A\00", [58 x i8] zeroinitializer }, align 32
@prp_get_ipu_resources._entry_ptr.20 = internal global ptr @prp_get_ipu_resources._entry.18, section ".printk_index", align 4
@prp_get_ipu_resources._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@prp_get_ipu_resources._entry_ptr.22 = internal global ptr @prp_get_ipu_resources._entry.21, section ".printk_index", align 4
@prp_get_ipu_resources._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@prp_get_ipu_resources._entry_ptr.24 = internal global ptr @prp_get_ipu_resources._entry.23, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: ipu_ic_calc_csc failed, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"prp_setup_rotation\00", [45 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry_ptr = internal global ptr @prp_setup_rotation._entry, section ".printk_index", align 4
@prp_setup_rotation._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to alloc rot_buf[0], %d\0A\00", [58 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry_ptr.30 = internal global ptr @prp_setup_rotation._entry.28, section ".printk_index", align 4
@prp_setup_rotation._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to alloc rot_buf[1], %d\0A\00", [58 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry_ptr.33 = internal global ptr @prp_setup_rotation._entry.31, section ".printk_index", align 4
@prp_setup_rotation._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: ipu_ic_task_init failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry_ptr.36 = internal global ptr @prp_setup_rotation._entry.34, section ".printk_index", align 4
@prp_setup_rotation._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: prp_setup_channel(out_ch) failed, %d\0A\00", [52 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry_ptr.39 = internal global ptr @prp_setup_rotation._entry.37, section ".printk_index", align 4
@prp_setup_rotation._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: prp_setup_channel(rot_in_ch) failed, %d\0A\00", [49 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry_ptr.42 = internal global ptr @prp_setup_rotation._entry.40, section ".printk_index", align 4
@prp_setup_rotation._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: prp_setup_channel(rot_out_ch) failed, %d\0A\00", [48 x i8] zeroinitializer }, align 32
@prp_setup_rotation._entry_ptr.45 = internal global ptr @prp_setup_rotation._entry.43, section ".printk_index", align 4
@prp_setup_norotation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.46, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prp_setup_norotation\00", [43 x i8] zeroinitializer }, align 32
@prp_setup_norotation._entry_ptr = internal global ptr @prp_setup_norotation._entry, section ".printk_index", align 4
@prp_setup_norotation._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.46, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@prp_setup_norotation._entry_ptr.48 = internal global ptr @prp_setup_norotation._entry.47, section ".printk_index", align 4
@prp_setup_norotation._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.46, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@prp_setup_norotation._entry_ptr.50 = internal global ptr @prp_setup_norotation._entry.49, section ".printk_index", align 4
@prp_nfb4eof_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: NFB4EOF\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prp_nfb4eof_interrupt\00", [42 x i8] zeroinitializer }, align 32
@prp_nfb4eof_interrupt._entry_ptr = internal global ptr @prp_nfb4eof_interrupt._entry, section ".printk_index", align 4
@prp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: wait last EOF timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prp_stop\00", [23 x i8] zeroinitializer }, align 32
@prp_stop._entry_ptr = internal global ptr @prp_stop._entry, section ".printk_index", align 4
@prp_stop._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: upstream stream off failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@prp_stop._entry_ptr.57 = internal global ptr @prp_stop._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@prp_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"imx_ic_prpencvf:1145:(hdlr)->_lock\00", [61 x i8] zeroinitializer }, align 32
@prp_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @prp_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@prp_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Invalid control\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prp_s_ctrl\00", [21 x i8] zeroinitializer }, align 32
@prp_s_ctrl._entry_ptr = internal global ptr @prp_s_ctrl._entry, section ".printk_index", align 4
@prp_link_setup.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prp_link_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: link setup %s -> %s\00", [40 x i8] zeroinitializer }, align 32
@prp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->irqlock\00", [17 x i8] zeroinitializer }, align 32
@prp_init.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&priv->eof_timeout_timer)\00", [37 x i8] zeroinitializer }, align 32
@prp_init.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@prp_eof_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: EOF timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prp_eof_timeout\00", [16 x i8] zeroinitializer }, align 32
@prp_eof_timeout._entry_ptr = internal global ptr @prp_eof_timeout._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 842093913, i64 842094158, i64 842094169]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 9963796, i64 9963797, i64 9963810]
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"prp_subdev_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1319, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"prp_internal_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1324, i32 46 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"prp_entity_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1314, i32 45 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"imx_ic_prpencvf_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1366, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"prp_video_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1308, i32 43 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"prp_pad_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1300, i32 41 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1189, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 699, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 701, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 715, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 717, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 726, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 159, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"prp_channel\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 111, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 167, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 176, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 185, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 87, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 470, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 478, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 484, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 492, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 501, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 511, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 523, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 599, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 608, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 618, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 282, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 768, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 773, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 998, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1145, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [13 x i8] c"prp_ctrl_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1135, i32 35 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1098, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1022, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1341, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1342, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1344, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private constant [47 x i8] c"../drivers/staging/media/imx/imx-ic-prpencvf.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 302, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @prp_eof_timeout._entry, ptr @prp_eof_timeout._entry_ptr, ptr @prp_get_ipu_resources._entry, ptr @prp_get_ipu_resources._entry.18, ptr @prp_get_ipu_resources._entry.21, ptr @prp_get_ipu_resources._entry.23, ptr @prp_get_ipu_resources._entry_ptr, ptr @prp_get_ipu_resources._entry_ptr.20, ptr @prp_get_ipu_resources._entry_ptr.22, ptr @prp_get_ipu_resources._entry_ptr.24, ptr @prp_nfb4eof_interrupt._entry, ptr @prp_nfb4eof_interrupt._entry_ptr, ptr @prp_s_ctrl._entry, ptr @prp_s_ctrl._entry_ptr, ptr @prp_setup_norotation._entry, ptr @prp_setup_norotation._entry.47, ptr @prp_setup_norotation._entry.49, ptr @prp_setup_norotation._entry_ptr, ptr @prp_setup_norotation._entry_ptr.48, ptr @prp_setup_norotation._entry_ptr.50, ptr @prp_setup_rotation._entry, ptr @prp_setup_rotation._entry.28, ptr @prp_setup_rotation._entry.31, ptr @prp_setup_rotation._entry.34, ptr @prp_setup_rotation._entry.37, ptr @prp_setup_rotation._entry.40, ptr @prp_setup_rotation._entry.43, ptr @prp_setup_rotation._entry_ptr, ptr @prp_setup_rotation._entry_ptr.30, ptr @prp_setup_rotation._entry_ptr.33, ptr @prp_setup_rotation._entry_ptr.36, ptr @prp_setup_rotation._entry_ptr.39, ptr @prp_setup_rotation._entry_ptr.42, ptr @prp_setup_rotation._entry_ptr.45, ptr @prp_start._entry, ptr @prp_start._entry.10, ptr @prp_start._entry.13, ptr @prp_start._entry_ptr, ptr @prp_start._entry_ptr.12, ptr @prp_start._entry_ptr.15, ptr @prp_stop._entry, ptr @prp_stop._entry.55, ptr @prp_stop._entry_ptr, ptr @prp_stop._entry_ptr.57, ptr @prp_subdev_ops, ptr @prp_internal_ops, ptr @prp_entity_ops, ptr @imx_ic_prpencvf_ops, ptr @prp_video_ops, ptr @prp_pad_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @prp_channel, ptr @.str.19, ptr @init_completion.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @prp_init_controls._key, ptr @.str.59, ptr @prp_ctrl_ops, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @prp_init.__key, ptr @.str.64, ptr @prp_init.__key.65, ptr @.str.66, ptr @prp_init.__key.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ic_prpencvf_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_start._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_start._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_get_ipu_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_channel to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_get_ipu_resources._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_get_ipu_resources._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_get_ipu_resources._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_rotation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_rotation._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_rotation._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_rotation._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_rotation._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_rotation._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_rotation._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_norotation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_norotation._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_setup_norotation._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_nfb4eof_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_stop._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_init.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_init.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prp_eof_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_init(ptr noundef %ic_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ic_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ic_priv, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 712, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %ic_priv, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %task_priv, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ic_priv, ptr %call.i, align 4
  %irqlock = getelementptr inbounds %struct.prp_priv, ptr %call.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.64, ptr noundef nonnull @prp_init.__key, i16 noundef signext 3) #5
  %eof_timeout_timer = getelementptr inbounds %struct.prp_priv, ptr %call.i, i32 0, i32 23
  tail call void @init_timer_key(ptr noundef %eof_timeout_timer, ptr noundef nonnull @prp_eof_timeout, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef nonnull @prp_init.__key.65) #5
  %lock = getelementptr inbounds %struct.prp_priv, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @prp_init.__key.67) #5
  %flags = getelementptr %struct.prp_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags, align 4
  %flags.1 = getelementptr %struct.prp_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 4
  %5 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %flags.1, align 4
  %sd = getelementptr inbounds %struct.imx_ic_priv, ptr %ic_priv, i32 0, i32 2
  %pad10 = getelementptr inbounds %struct.prp_priv, ptr %call.i, i32 0, i32 1
  %call11 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 2, ptr noundef %pad10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_destroy(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prp_remove(ptr nocapture noundef readonly %ic_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %ic_priv, i32 0, i32 4
  %0 = ptrtoint ptr %task_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_priv, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  %csc.i171.i = alloca %struct.ipu_ic_csc, align 4
  %csc.i.i = alloca %struct.ipu_ic_csc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %src_sd = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_sd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %sink = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sink, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %stream_count = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 26
  %8 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %lnot.ext = zext i1 %tobool2.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %lnot.ext)
  %cmp.not = icmp eq i32 %9, %lnot.ext
  br i1 %cmp.not, label %do.body, label %if.end.update_count_crit_edge

if.end.update_count_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_count

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prp_s_stream.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prp_s_stream, %if.then12)) #5
          to label %do.end [label %if.then12], !srcloc !149

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond = select i1 %tobool2.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prp_s_stream.__UNIQUE_ID_ddebug316, ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  br i1 %tobool2.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end
  %vdev2.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %vdev2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdev2.i, align 4
  %task_id.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %task_id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %task_id.i.i, align 4
  %ipu.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ipu.i.i, align 4
  %call.i.i = tail call ptr @ipu_ic_get(ptr noundef %19, i32 noundef %17) #5
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i) #8
  br label %out.i.i

if.end.i.i:                                       ; preds = %if.then16
  %ic5.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %ic5.i.i, align 4
  %21 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ipu.i.i, align 4
  %arrayidx.i.i = getelementptr [2 x %struct.prp_channels], ptr @prp_channel, i32 0, i32 %17
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %call8.i.i = tail call ptr @ipu_idmac_get(ptr noundef %22, i32 noundef %24) #5
  %cmp.i95.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.i.i, label %do.end13.i.i, label %if.end22.i.i

do.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name16.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name16.i.i, i32 noundef %24) #8
  br label %out.i.i

if.end22.i.i:                                     ; preds = %if.end.i.i
  %out_ch23.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %out_ch23.i.i, align 4
  %26 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipu.i.i, align 4
  %rot_in_ch26.i.i = getelementptr [2 x %struct.prp_channels], ptr @prp_channel, i32 0, i32 %17, i32 1
  %28 = ptrtoint ptr %rot_in_ch26.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rot_in_ch26.i.i, align 4
  %call27.i.i = tail call ptr @ipu_idmac_get(ptr noundef %27, i32 noundef %29) #5
  %cmp.i96.i.i = icmp ugt ptr %call27.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96.i.i, label %do.end32.i.i, label %if.end41.i.i

do.end32.i.i:                                     ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name35.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call39.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name35.i.i, i32 noundef %29) #8
  br label %out.i.i

if.end41.i.i:                                     ; preds = %if.end22.i.i
  %rot_in_ch42.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %rot_in_ch42.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call27.i.i, ptr %rot_in_ch42.i.i, align 4
  %31 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipu.i.i, align 4
  %rot_out_ch45.i.i = getelementptr [2 x %struct.prp_channels], ptr @prp_channel, i32 0, i32 %17, i32 2
  %33 = ptrtoint ptr %rot_out_ch45.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rot_out_ch45.i.i, align 4
  %call46.i.i = tail call ptr @ipu_idmac_get(ptr noundef %32, i32 noundef %34) #5
  %cmp.i97.i.i = icmp ugt ptr %call46.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97.i.i, label %do.end51.i.i, label %prp_get_ipu_resources.exit.thread.i

do.end51.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name54.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call58.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name54.i.i, i32 noundef %34) #8
  br label %out.i.i

prp_get_ipu_resources.exit.thread.i:              ; preds = %if.end41.i.i
  %rot_out_ch61.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %rot_out_ch61.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call46.i.i, ptr %rot_out_ch61.i.i, align 4
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %13, align 4
  %underrun_buf.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 9
  %sizeimage.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %15, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sizeimage.i, align 4
  %call3.i = tail call i32 @imx_media_alloc_dma_buf(ptr noundef %37, ptr noundef %underrun_buf.i, i32 noundef %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %prp_get_ipu_resources.exit.thread.i.out_put_ipu.i_crit_edge

prp_get_ipu_resources.exit.thread.i.out_put_ipu.i_crit_edge: ; preds = %prp_get_ipu_resources.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_ipu.i

out.i.i:                                          ; preds = %do.end51.i.i, %do.end32.i.i, %do.end13.i.i, %do.end.i.i
  %ret.0.in.i.i = phi ptr [ %call.i.i, %do.end.i.i ], [ %call8.i.i, %do.end13.i.i ], [ %call27.i.i, %do.end32.i.i ], [ %call46.i.i, %do.end51.i.i ]
  %ret.0.i.i = ptrtoint ptr %ret.0.in.i.i to i32
  %ic.i.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %ic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ic.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %out.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

out.i.i.if.end.i.i.i_crit_edge:                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_ic_put(ptr noundef nonnull %41) #5
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %out.i.i.if.end.i.i.i_crit_edge
  %42 = ptrtoint ptr %ic.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %ic.i.i.i, align 4
  %out_ch.i.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 5
  %43 = ptrtoint ptr %out_ch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %out_ch.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_idmac_put(ptr noundef nonnull %44) #5
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %45 = ptrtoint ptr %out_ch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %out_ch.i.i.i, align 4
  %rot_in_ch.i.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 6
  %46 = ptrtoint ptr %rot_in_ch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rot_in_ch.i.i.i, align 4
  %tobool8.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool8.not.i.i.i, label %if.end6.i.i.i.if.end11.i.i.i_crit_edge, label %if.then9.i.i.i

if.end6.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_idmac_put(ptr noundef nonnull %47) #5
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.end6.i.i.i.if.end11.i.i.i_crit_edge
  %48 = ptrtoint ptr %rot_in_ch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rot_in_ch.i.i.i, align 4
  %rot_out_ch.i.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %rot_out_ch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rot_out_ch.i.i.i, align 4
  %tobool13.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool13.not.i.i.i, label %if.end11.i.i.i.if.end18_crit_edge, label %if.then14.i.i.i

if.end11.i.i.i.if.end18_crit_edge:                ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_idmac_put(ptr noundef nonnull %50) #5
  br label %if.end18

if.end6.i:                                        ; preds = %prp_get_ipu_resources.exit.thread.i
  %ipu_buf_num.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 10
  %51 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %ipu_buf_num.i, align 4
  %last_eof_comp.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 31
  %52 = ptrtoint ptr %last_eof_comp.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %last_eof_comp.i, align 4
  %wait.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 31, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @init_completion.__key) #5
  %frame_sequence.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 27
  %53 = ptrtoint ptr %frame_sequence.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %frame_sequence.i, align 4
  %last_eof.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 28
  %54 = ptrtoint ptr %last_eof.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %last_eof.i, align 4
  %nfb4eof.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 29
  %55 = ptrtoint ptr %nfb4eof.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %nfb4eof.i, align 1
  %rot_mode.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 21
  %56 = ptrtoint ptr %rot_mode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rot_mode.i, align 4
  %and.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %58 = ptrtoint ptr %vdev2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vdev2.i, align 4
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  br i1 %cmp.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %csc.i.i) #5
  %62 = call ptr @memset(ptr %csc.i.i, i32 255, i32 52)
  %format_mbus.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13
  %fmt.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1
  %cc.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 14
  %63 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cc.i.i, align 4
  %cc4.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 3
  %65 = ptrtoint ptr %cc4.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cc4.i.i, align 4
  %67 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13, i32 0, i32 5
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %67, align 4
  %conv.i.i = zext i16 %69 to i32
  %quantization.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13, i32 0, i32 6
  %70 = ptrtoint ptr %quantization.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %quantization.i.i, align 2
  %conv5.i.i = zext i16 %71 to i32
  %cs.i.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %64, i32 0, i32 4
  %72 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cs.i.i, align 4
  %74 = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1, i32 9
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %quantization6.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1, i32 10
  %77 = ptrtoint ptr %quantization6.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %quantization6.i.i, align 4
  %cs7.i.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %66, i32 0, i32 4
  %79 = ptrtoint ptr %cs7.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cs7.i.i, align 4
  %call.i160.i = call i32 @ipu_ic_calc_csc(ptr noundef nonnull %csc.i.i, i32 noundef %conv.i.i, i32 noundef %conv5.i.i, i32 noundef %73, i32 noundef %76, i32 noundef %78, i32 noundef %80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool.not.i.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool.not.i.i, label %if.end.i164.i, label %do.end.i163.i

do.end.i163.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i161.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call8.i162.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i161.i, i32 noundef %call.i160.i) #8
  br label %prp_setup_rotation.exit.i

if.end.i164.i:                                    ; preds = %if.then7.i
  %81 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %61, align 4
  %rot_buf.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 16
  %sizeimage.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1, i32 5
  %83 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sizeimage.i.i, align 4
  %call10.i.i = call i32 @imx_media_alloc_dma_buf(ptr noundef %82, ptr noundef %rot_buf.i.i, i32 noundef %84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end21.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end.i164.i
  call void @__sanitizer_cov_trace_pc() #7
  %name18.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call20.i165.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name18.i.i, i32 noundef %call10.i.i) #8
  br label %prp_setup_rotation.exit.i

if.end21.i.i:                                     ; preds = %if.end.i164.i
  %85 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %61, align 4
  %arrayidx24.i.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 16, i32 1
  %87 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sizeimage.i.i, align 4
  %call26.i.i = call i32 @imx_media_alloc_dma_buf(ptr noundef %86, ptr noundef %arrayidx24.i.i, i32 noundef %88) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end37.i.i, label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name34.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call36.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name34.i.i, i32 noundef %call26.i.i) #8
  br label %free_rot0.i.i

if.end37.i.i:                                     ; preds = %if.end21.i.i
  %89 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ic5.i.i, align 4
  %91 = ptrtoint ptr %format_mbus.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %format_mbus.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13, i32 0, i32 1
  %93 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height.i.i, align 4
  %height38.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %height38.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %height38.i.i, align 4
  %97 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fmt.i.i, align 4
  %call40.i.i = call i32 @ipu_ic_task_init(ptr noundef %90, ptr noundef nonnull %csc.i.i, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end51.i.i, label %do.end45.i.i

do.end45.i.i:                                     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name48.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call50.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name48.i.i, i32 noundef %call40.i.i) #8
  br label %free_rot1.i.i

if.end51.i.i:                                     ; preds = %if.end37.i.i
  %99 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %out_ch23.i.i, align 4
  %phys54.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 16, i32 0, i32 1
  %101 = ptrtoint ptr %phys54.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %phys54.i.i, align 4
  %phys57.i.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 16, i32 1, i32 1
  %103 = ptrtoint ptr %phys57.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %phys57.i.i, align 4
  %call58.i166.i = call fastcc i32 @prp_setup_channel(ptr noundef %3, ptr noundef %100, i32 noundef 0, i32 noundef %102, i32 noundef %104, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i166.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i166.i, 0
  br i1 %tobool59.not.i.i, label %if.end69.i.i, label %do.end63.i.i

do.end63.i.i:                                     ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name66.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call68.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name66.i.i, i32 noundef %call58.i166.i) #8
  br label %free_rot1.i.i

if.end69.i.i:                                     ; preds = %if.end51.i.i
  %105 = ptrtoint ptr %rot_in_ch42.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rot_in_ch42.i.i, align 4
  %107 = ptrtoint ptr %rot_mode.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rot_mode.i, align 4
  %109 = ptrtoint ptr %phys54.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %phys54.i.i, align 4
  %111 = ptrtoint ptr %phys57.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %phys57.i.i, align 4
  %call76.i.i = call fastcc i32 @prp_setup_channel(ptr noundef %3, ptr noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef %112, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i.i)
  %tobool77.not.i.i = icmp eq i32 %call76.i.i, 0
  br i1 %tobool77.not.i.i, label %if.end87.i.i, label %do.end81.i.i

do.end81.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name84.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call86.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name84.i.i, i32 noundef %call76.i.i) #8
  br label %free_rot1.i.i

if.end87.i.i:                                     ; preds = %if.end69.i.i
  %113 = ptrtoint ptr %vdev2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vdev2.i, align 4
  %phys6.i.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 9, i32 1
  %call.i.i.i = call ptr @imx_media_capture_device_next_buf(ptr noundef %114) #5
  %tobool.not.i.i167.i = icmp eq ptr %call.i.i.i, null
  %arrayidx5.i.i.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 8, i32 0
  br i1 %tobool.not.i.i167.i, label %if.else.i.i.i, label %if.then.i.i168.i

if.then.i.i168.i:                                 ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i.i.i, ptr %arrayidx5.i.i.i, align 4
  %call.i.i.i.i = call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #5
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %arrayidx5.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else.i.i.i, %if.then.i.i168.i
  %storemerge.in.i.i.i = phi ptr [ %call.i.i.i.i, %if.then.i.i168.i ], [ %phys6.i.i.i, %if.else.i.i.i ]
  %117 = ptrtoint ptr %storemerge.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %storemerge.i.i.i = load i32, ptr %storemerge.in.i.i.i, align 4
  %call.1.i.i.i = call ptr @imx_media_capture_device_next_buf(ptr noundef %114) #5
  %tobool.not.1.i.i.i = icmp eq ptr %call.1.i.i.i, null
  %arrayidx5.1.i.i.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 8, i32 1
  br i1 %tobool.not.1.i.i.i, label %if.else.1.i.i.i, label %if.then.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %arrayidx5.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.1.i.i.i, ptr %arrayidx5.1.i.i.i, align 4
  %call.i.1.i.i.i = call ptr @vb2_plane_cookie(ptr noundef nonnull %call.1.i.i.i, i32 noundef 0) #5
  br label %prp_setup_vb2_buf.exit.i.i

if.else.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %arrayidx5.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %arrayidx5.1.i.i.i, align 4
  br label %prp_setup_vb2_buf.exit.i.i

prp_setup_vb2_buf.exit.i.i:                       ; preds = %if.else.1.i.i.i, %if.then.1.i.i.i
  %.sink.in.i.i.i = phi ptr [ %phys6.i.i.i, %if.else.1.i.i.i ], [ %call.i.1.i.i.i, %if.then.1.i.i.i ]
  %120 = ptrtoint ptr %.sink.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.sink.i.i.i = load i32, ptr %.sink.in.i.i.i, align 4
  %121 = ptrtoint ptr %rot_out_ch61.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rot_out_ch61.i.i, align 4
  %call91.i.i = call fastcc i32 @prp_setup_channel(ptr noundef %3, ptr noundef %122, i32 noundef 0, i32 noundef %storemerge.i.i.i, i32 noundef %.sink.i.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i.i)
  %tobool92.not.i.i = icmp eq i32 %call91.i.i, 0
  br i1 %tobool92.not.i.i, label %if.end102.i.i, label %do.end96.i.i

do.end96.i.i:                                     ; preds = %prp_setup_vb2_buf.exit.i.i
  %name99.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call101.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name99.i.i, i32 noundef %call91.i.i) #8
  %123 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx5.i.i.i, align 4
  %tobool.not.i200.i.i = icmp eq ptr %124, null
  br i1 %tobool.not.i200.i.i, label %do.end96.i.i.for.inc.i204.i.i_crit_edge, label %if.then.i202.i.i

do.end96.i.i.for.inc.i204.i.i_crit_edge:          ; preds = %do.end96.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i204.i.i

if.then.i202.i.i:                                 ; preds = %do.end96.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i201.i.i = call i64 @ktime_get() #5
  %timestamp.i.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %timestamp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %call.i.i201.i.i, ptr %timestamp.i.i.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %124, i32 noundef 3) #5
  br label %for.inc.i204.i.i

for.inc.i204.i.i:                                 ; preds = %if.then.i202.i.i, %do.end96.i.i.for.inc.i204.i.i_crit_edge
  %126 = ptrtoint ptr %arrayidx5.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx5.1.i.i.i, align 4
  %tobool.not.1.i203.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.1.i203.i.i, label %for.inc.i204.i.i.free_rot1.i.i_crit_edge, label %if.then.1.i206.i.i

for.inc.i204.i.i.free_rot1.i.i_crit_edge:         ; preds = %for.inc.i204.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_rot1.i.i

if.then.1.i206.i.i:                               ; preds = %for.inc.i204.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.1.i205.i.i = call i64 @ktime_get() #5
  %timestamp.1.i.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %timestamp.1.i.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %call.i.1.i205.i.i, ptr %timestamp.1.i.i.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %127, i32 noundef 3) #5
  br label %free_rot1.i.i

if.end102.i.i:                                    ; preds = %prp_setup_vb2_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %out_ch23.i.i, align 4
  %131 = ptrtoint ptr %rot_in_ch42.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rot_in_ch42.i.i, align 4
  %call105.i.i = call i32 @ipu_idmac_link(ptr noundef %130, ptr noundef %132) #5
  %133 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ic5.i.i, align 4
  %call107.i.i = call i32 @ipu_ic_enable(ptr noundef %134) #5
  %135 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %out_ch23.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %136, i32 noundef 0) #5
  %137 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %out_ch23.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %138, i32 noundef 1) #5
  %139 = ptrtoint ptr %rot_out_ch61.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rot_out_ch61.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %140, i32 noundef 0) #5
  %141 = ptrtoint ptr %rot_out_ch61.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rot_out_ch61.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %142, i32 noundef 1) #5
  %143 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %out_ch23.i.i, align 4
  %call113.i.i = call i32 @ipu_idmac_enable_channel(ptr noundef %144) #5
  %145 = ptrtoint ptr %rot_in_ch42.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rot_in_ch42.i.i, align 4
  %call115.i.i = call i32 @ipu_idmac_enable_channel(ptr noundef %146) #5
  %147 = ptrtoint ptr %rot_out_ch61.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rot_out_ch61.i.i, align 4
  %call117.i.i = call i32 @ipu_idmac_enable_channel(ptr noundef %148) #5
  %149 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ic5.i.i, align 4
  call void @ipu_ic_task_enable(ptr noundef %150) #5
  br label %prp_setup_rotation.exit.i

free_rot1.i.i:                                    ; preds = %if.then.1.i206.i.i, %for.inc.i204.i.i.free_rot1.i.i_crit_edge, %do.end81.i.i, %do.end63.i.i, %do.end45.i.i
  %ret.0.i169.i = phi i32 [ %call40.i.i, %do.end45.i.i ], [ %call58.i166.i, %do.end63.i.i ], [ %call76.i.i, %do.end81.i.i ], [ %call91.i.i, %for.inc.i204.i.i.free_rot1.i.i_crit_edge ], [ %call91.i.i, %if.then.1.i206.i.i ]
  %151 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %61, align 4
  call void @imx_media_free_dma_buf(ptr noundef %152, ptr noundef %arrayidx24.i.i) #5
  br label %free_rot0.i.i

free_rot0.i.i:                                    ; preds = %free_rot1.i.i, %do.end31.i.i
  %ret.1.i.i = phi i32 [ %call26.i.i, %do.end31.i.i ], [ %ret.0.i169.i, %free_rot1.i.i ]
  %153 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %61, align 4
  call void @imx_media_free_dma_buf(ptr noundef %154, ptr noundef %rot_buf.i.i) #5
  br label %prp_setup_rotation.exit.i

prp_setup_rotation.exit.i:                        ; preds = %free_rot0.i.i, %if.end102.i.i, %do.end15.i.i, %do.end.i163.i
  %retval.0.i170.i = phi i32 [ %call.i160.i, %do.end.i163.i ], [ %call10.i.i, %do.end15.i.i ], [ %ret.1.i.i, %free_rot0.i.i ], [ 0, %if.end102.i.i ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %csc.i.i) #5
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %csc.i171.i) #5
  %155 = call ptr @memset(ptr %csc.i171.i, i32 255, i32 52)
  %cc.i173.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 14
  %156 = ptrtoint ptr %cc.i173.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cc.i173.i, align 4
  %cc4.i174.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 3
  %158 = ptrtoint ptr %cc4.i174.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cc4.i174.i, align 4
  %160 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13, i32 0, i32 5
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %160, align 4
  %conv.i175.i = zext i16 %162 to i32
  %quantization.i176.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13, i32 0, i32 6
  %163 = ptrtoint ptr %quantization.i176.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %quantization.i176.i, align 2
  %conv5.i177.i = zext i16 %164 to i32
  %cs.i178.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %157, i32 0, i32 4
  %165 = ptrtoint ptr %cs.i178.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cs.i178.i, align 4
  %167 = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1, i32 9
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %quantization6.i179.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1, i32 10
  %170 = ptrtoint ptr %quantization6.i179.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %quantization6.i179.i, align 4
  %cs7.i180.i = getelementptr inbounds %struct.imx_media_pixfmt, ptr %159, i32 0, i32 4
  %172 = ptrtoint ptr %cs7.i180.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cs7.i180.i, align 4
  %call.i181.i = call i32 @ipu_ic_calc_csc(ptr noundef nonnull %csc.i171.i, i32 noundef %conv.i175.i, i32 noundef %conv5.i177.i, i32 noundef %166, i32 noundef %169, i32 noundef %171, i32 noundef %173) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %tobool.not.i182.i = icmp eq i32 %call.i181.i, 0
  br i1 %tobool.not.i182.i, label %if.end.i190.i, label %do.end.i185.i

do.end.i185.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i183.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call8.i184.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i183.i, i32 noundef %call.i181.i) #8
  br label %prp_setup_norotation.exit.i

if.end.i190.i:                                    ; preds = %if.else.i
  %fmt.i186.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1
  %format_mbus.i187.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13
  %174 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ic5.i.i, align 4
  %176 = ptrtoint ptr %format_mbus.i187.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %format_mbus.i187.i, align 4
  %height.i189.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 13, i32 0, i32 1
  %178 = ptrtoint ptr %height.i189.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %height.i189.i, align 4
  %180 = ptrtoint ptr %fmt.i186.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %fmt.i186.i, align 4
  %height10.i.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %59, i32 0, i32 1, i32 1
  %182 = ptrtoint ptr %height10.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %height10.i.i, align 4
  %call11.i.i = call i32 @ipu_ic_task_init(ptr noundef %175, ptr noundef nonnull %csc.i171.i, i32 noundef %177, i32 noundef %179, i32 noundef %181, i32 noundef %183) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end22.i195.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #7
  %name19.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name19.i.i, i32 noundef %call11.i.i) #8
  br label %prp_setup_norotation.exit.i

if.end22.i195.i:                                  ; preds = %if.end.i190.i
  %184 = ptrtoint ptr %vdev2.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %vdev2.i, align 4
  %phys6.i.i191.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 9, i32 1
  %call.i.i192.i = call ptr @imx_media_capture_device_next_buf(ptr noundef %185) #5
  %tobool.not.i.i193.i = icmp eq ptr %call.i.i192.i, null
  %arrayidx5.i.i194.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 8, i32 0
  br i1 %tobool.not.i.i193.i, label %if.else.i.i198.i, label %if.then.i.i197.i

if.then.i.i197.i:                                 ; preds = %if.end22.i195.i
  call void @__sanitizer_cov_trace_pc() #7
  %186 = ptrtoint ptr %arrayidx5.i.i194.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call.i.i192.i, ptr %arrayidx5.i.i194.i, align 4
  %call.i.i.i196.i = call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i.i192.i, i32 noundef 0) #5
  br label %for.inc.i.i204.i

if.else.i.i198.i:                                 ; preds = %if.end22.i195.i
  call void @__sanitizer_cov_trace_pc() #7
  %187 = ptrtoint ptr %arrayidx5.i.i194.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %arrayidx5.i.i194.i, align 4
  br label %for.inc.i.i204.i

for.inc.i.i204.i:                                 ; preds = %if.else.i.i198.i, %if.then.i.i197.i
  %storemerge.in.i.i199.i = phi ptr [ %call.i.i.i196.i, %if.then.i.i197.i ], [ %phys6.i.i191.i, %if.else.i.i198.i ]
  %188 = ptrtoint ptr %storemerge.in.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %storemerge.i.i200.i = load i32, ptr %storemerge.in.i.i199.i, align 4
  %call.1.i.i201.i = call ptr @imx_media_capture_device_next_buf(ptr noundef %185) #5
  %tobool.not.1.i.i202.i = icmp eq ptr %call.1.i.i201.i, null
  %arrayidx5.1.i.i203.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 8, i32 1
  br i1 %tobool.not.1.i.i202.i, label %if.else.1.i.i207.i, label %if.then.1.i.i206.i

if.then.1.i.i206.i:                               ; preds = %for.inc.i.i204.i
  call void @__sanitizer_cov_trace_pc() #7
  %189 = ptrtoint ptr %arrayidx5.1.i.i203.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call.1.i.i201.i, ptr %arrayidx5.1.i.i203.i, align 4
  %call.i.1.i.i205.i = call ptr @vb2_plane_cookie(ptr noundef nonnull %call.1.i.i201.i, i32 noundef 0) #5
  br label %prp_setup_vb2_buf.exit.i214.i

if.else.1.i.i207.i:                               ; preds = %for.inc.i.i204.i
  call void @__sanitizer_cov_trace_pc() #7
  %190 = ptrtoint ptr %arrayidx5.1.i.i203.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %arrayidx5.1.i.i203.i, align 4
  br label %prp_setup_vb2_buf.exit.i214.i

prp_setup_vb2_buf.exit.i214.i:                    ; preds = %if.else.1.i.i207.i, %if.then.1.i.i206.i
  %.sink.in.i.i208.i = phi ptr [ %phys6.i.i191.i, %if.else.1.i.i207.i ], [ %call.i.1.i.i205.i, %if.then.1.i.i206.i ]
  %191 = ptrtoint ptr %.sink.in.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %.sink.i.i209.i = load i32, ptr %.sink.in.i.i208.i, align 4
  %192 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %out_ch23.i.i, align 4
  %194 = ptrtoint ptr %rot_mode.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rot_mode.i, align 4
  %call26.i212.i = call fastcc i32 @prp_setup_channel(ptr noundef %3, ptr noundef %193, i32 noundef %195, i32 noundef %storemerge.i.i200.i, i32 noundef %.sink.i.i209.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i212.i)
  %tobool27.not.i213.i = icmp eq i32 %call26.i212.i, 0
  br i1 %tobool27.not.i213.i, label %if.end37.i221.i, label %do.end31.i217.i

do.end31.i217.i:                                  ; preds = %prp_setup_vb2_buf.exit.i214.i
  %name34.i215.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 2, i32 9
  %call36.i216.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name34.i215.i, i32 noundef %call26.i212.i) #8
  %196 = ptrtoint ptr %arrayidx5.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx5.i.i194.i, align 4
  %tobool.not.i89.i.i = icmp eq ptr %197, null
  br i1 %tobool.not.i89.i.i, label %do.end31.i217.i.for.inc.i93.i.i_crit_edge, label %if.then.i91.i.i

do.end31.i217.i.for.inc.i93.i.i_crit_edge:        ; preds = %do.end31.i217.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i93.i.i

if.then.i91.i.i:                                  ; preds = %do.end31.i217.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i90.i.i = call i64 @ktime_get() #5
  %timestamp.i.i218.i = getelementptr inbounds %struct.vb2_buffer, ptr %197, i32 0, i32 5
  %198 = ptrtoint ptr %timestamp.i.i218.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %call.i.i90.i.i, ptr %timestamp.i.i218.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %197, i32 noundef 3) #5
  br label %for.inc.i93.i.i

for.inc.i93.i.i:                                  ; preds = %if.then.i91.i.i, %do.end31.i217.i.for.inc.i93.i.i_crit_edge
  %199 = ptrtoint ptr %arrayidx5.1.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx5.1.i.i203.i, align 4
  %tobool.not.1.i92.i.i = icmp eq ptr %200, null
  br i1 %tobool.not.1.i92.i.i, label %for.inc.i93.i.i.prp_setup_norotation.exit.i_crit_edge, label %if.then.1.i95.i.i

for.inc.i93.i.i.prp_setup_norotation.exit.i_crit_edge: ; preds = %for.inc.i93.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prp_setup_norotation.exit.i

if.then.1.i95.i.i:                                ; preds = %for.inc.i93.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.1.i94.i.i = call i64 @ktime_get() #5
  %timestamp.1.i.i219.i = getelementptr inbounds %struct.vb2_buffer, ptr %200, i32 0, i32 5
  %201 = ptrtoint ptr %timestamp.1.i.i219.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %call.i.1.i94.i.i, ptr %timestamp.1.i.i219.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %200, i32 noundef 3) #5
  br label %prp_setup_norotation.exit.i

if.end37.i221.i:                                  ; preds = %prp_setup_vb2_buf.exit.i214.i
  call void @__sanitizer_cov_trace_pc() #7
  %202 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %out_ch23.i.i, align 4
  call void @ipu_cpmem_dump(ptr noundef %203) #5
  %204 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ic5.i.i, align 4
  call void @ipu_ic_dump(ptr noundef %205) #5
  %ipu.i220.i = getelementptr inbounds %struct.imx_ic_priv, ptr %61, i32 0, i32 1
  %206 = ptrtoint ptr %ipu.i220.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ipu.i220.i, align 4
  call void @ipu_dump(ptr noundef %207) #5
  %208 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ic5.i.i, align 4
  %call41.i.i = call i32 @ipu_ic_enable(ptr noundef %209) #5
  %210 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %out_ch23.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %211, i32 noundef 0) #5
  %212 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %out_ch23.i.i, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %213, i32 noundef 1) #5
  %214 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %out_ch23.i.i, align 4
  %call45.i.i = call i32 @ipu_idmac_enable_channel(ptr noundef %215) #5
  %216 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ic5.i.i, align 4
  call void @ipu_ic_task_enable(ptr noundef %217) #5
  br label %prp_setup_norotation.exit.i

prp_setup_norotation.exit.i:                      ; preds = %if.end37.i221.i, %if.then.1.i95.i.i, %for.inc.i93.i.i.prp_setup_norotation.exit.i_crit_edge, %do.end16.i.i, %do.end.i185.i
  %retval.0.i222.i = phi i32 [ %call.i181.i, %do.end.i185.i ], [ %call11.i.i, %do.end16.i.i ], [ 0, %if.end37.i221.i ], [ %call26.i212.i, %for.inc.i93.i.i.prp_setup_norotation.exit.i_crit_edge ], [ %call26.i212.i, %if.then.1.i95.i.i ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %csc.i171.i) #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %prp_setup_norotation.exit.i, %prp_setup_rotation.exit.i
  %ret.0.i = phi i32 [ %retval.0.i170.i, %prp_setup_rotation.exit.i ], [ %retval.0.i222.i, %prp_setup_norotation.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool11.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end10.i.out_free_underrun.i_crit_edge

if.end10.i.out_free_underrun.i_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_underrun.i

if.end13.i:                                       ; preds = %if.end10.i
  %218 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ipu.i.i, align 4
  %220 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %out_ch23.i.i, align 4
  %call14.i = call i32 @ipu_idmac_channel_irq(ptr noundef %219, ptr noundef %221, i32 noundef 128) #5
  %nfb4eof_irq.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 25
  %222 = ptrtoint ptr %nfb4eof_irq.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %call14.i, ptr %nfb4eof_irq.i, align 4
  %223 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %13, align 4
  %call.i223.i = call i32 @devm_request_threaded_irq(ptr noundef %224, i32 noundef %call14.i, ptr noundef nonnull @prp_nfb4eof_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.i)
  %tobool18.not.i = icmp eq i32 %call.i223.i, 0
  br i1 %tobool18.not.i, label %if.end21.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %call.i223.i) #8
  br label %out_unsetup.i

if.end21.i:                                       ; preds = %if.end13.i
  %225 = ptrtoint ptr %rot_mode.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %rot_mode.i, align 4
  %and23.i = and i32 %226, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %cmp24.not.i = icmp eq i32 %and23.i, 0
  %227 = ptrtoint ptr %ipu.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ipu.i.i, align 4
  %out_ch23.i.rot_out_ch61.i.i = select i1 %cmp24.not.i, ptr %out_ch23.i.i, ptr %rot_out_ch61.i.i
  %229 = ptrtoint ptr %out_ch23.i.rot_out_ch61.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %out_ch23.i.rot_out_ch61.i.i, align 4
  %call31.i = call i32 @ipu_idmac_channel_irq(ptr noundef %228, ptr noundef %230, i32 noundef 0) #5
  %231 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 24
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %call31.i, ptr %231, align 4
  %233 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %13, align 4
  %call.i224.i = call i32 @devm_request_threaded_irq(ptr noundef %234, i32 noundef %call31.i, ptr noundef nonnull @prp_eof_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224.i)
  %tobool37.not.i = icmp eq i32 %call.i224.i, 0
  br i1 %tobool37.not.i, label %if.end47.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %name44.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name44.i, i32 noundef %call.i224.i) #8
  br label %out_free_nfb4eof_irq.i

if.end47.i:                                       ; preds = %if.end21.i
  %235 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %src_sd, align 4
  %tobool48.not.i = icmp eq ptr %236, null
  br i1 %tobool48.not.i, label %if.end47.i.do.end80.i_crit_edge, label %if.else50.i

if.end47.i.do.end80.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end80.i

if.else50.i:                                      ; preds = %if.end47.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %236, i32 0, i32 6
  %237 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %238, i32 0, i32 3
  %239 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %video.i, align 4
  %tobool51.not.i = icmp eq ptr %240, null
  br i1 %tobool51.not.i, label %if.else50.i.if.end86.i_crit_edge, label %land.lhs.true.i

if.else50.i.if.end86.i_crit_edge:                 ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

land.lhs.true.i:                                  ; preds = %if.else50.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %240, i32 0, i32 10
  %241 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %s_stream.i, align 4
  %tobool54.not.i = icmp eq ptr %242, null
  br i1 %tobool54.not.i, label %land.lhs.true.i.if.end86.i_crit_edge, label %if.else56.i

land.lhs.true.i.if.end86.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

if.else56.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %243 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool57.not.i = icmp eq ptr %243, null
  br i1 %tobool57.not.i, label %if.else56.i.if.else64.i_crit_edge, label %land.lhs.true58.i

if.else56.i.if.else64.i_crit_edge:                ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else64.i

land.lhs.true58.i:                                ; preds = %if.else56.i
  %s_stream59.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %243, i32 0, i32 10
  %244 = ptrtoint ptr %s_stream59.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %s_stream59.i, align 4
  %tobool60.not.i = icmp eq ptr %245, null
  br i1 %tobool60.not.i, label %land.lhs.true58.i.if.else64.i_crit_edge, label %land.lhs.true58.i.if.end71.i_crit_edge

land.lhs.true58.i.if.end71.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71.i

land.lhs.true58.i.if.else64.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else64.i

if.else64.i:                                      ; preds = %land.lhs.true58.i.if.else64.i_crit_edge, %if.else56.i.if.else64.i_crit_edge
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else64.i, %land.lhs.true58.i.if.end71.i_crit_edge
  %.sink.i = phi ptr [ %242, %if.else64.i ], [ %245, %land.lhs.true58.i.if.end71.i_crit_edge ]
  %call68.i = call i32 %.sink.i(ptr noundef nonnull %236, i32 noundef 1) #5
  %246 = zext i32 %call68.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call68.i, label %if.end71.i.do.end80.i_crit_edge [
    i32 0, label %if.end71.i.if.end86.i_crit_edge
    i32 -515, label %if.end71.i.if.end86.i_crit_edge76
  ]

if.end71.i.if.end86.i_crit_edge76:                ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

if.end71.i.if.end86.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

if.end71.i.do.end80.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end80.i

do.end80.i:                                       ; preds = %if.end71.i.do.end80.i_crit_edge, %if.end47.i.do.end80.i_crit_edge
  %__result.0236242.i = phi i32 [ -19, %if.end47.i.do.end80.i_crit_edge ], [ %call68.i, %if.end71.i.do.end80.i_crit_edge ]
  %name83.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name83.i, i32 noundef %__result.0236242.i) #8
  %247 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %13, align 4
  %249 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %231, align 4
  call void @devm_free_irq(ptr noundef %248, i32 noundef %250, ptr noundef %3) #5
  br label %out_free_nfb4eof_irq.i

if.end86.i:                                       ; preds = %if.end71.i.if.end86.i_crit_edge, %if.end71.i.if.end86.i_crit_edge76, %land.lhs.true.i.if.end86.i_crit_edge, %if.else50.i.if.end86.i_crit_edge
  %eof_timeout_timer.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %251 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %251, 200
  %call88.i = call i32 @mod_timer(ptr noundef %eof_timeout_timer.i, i32 noundef %add.i) #5
  br label %update_count

out_free_nfb4eof_irq.i:                           ; preds = %do.end80.i, %do.end41.i
  %ret.1.i = phi i32 [ %call.i224.i, %do.end41.i ], [ %__result.0236242.i, %do.end80.i ]
  %252 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %13, align 4
  %254 = ptrtoint ptr %nfb4eof_irq.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %nfb4eof_irq.i, align 4
  call void @devm_free_irq(ptr noundef %253, i32 noundef %255, ptr noundef %3) #5
  br label %out_unsetup.i

out_unsetup.i:                                    ; preds = %out_free_nfb4eof_irq.i, %do.end.i
  %ret.2.i = phi i32 [ %call.i223.i, %do.end.i ], [ %ret.1.i, %out_free_nfb4eof_irq.i ]
  call fastcc void @prp_unsetup(ptr noundef %3, i32 noundef 3) #5
  br label %out_free_underrun.i

out_free_underrun.i:                              ; preds = %out_unsetup.i, %if.end10.i.out_free_underrun.i_crit_edge
  %ret.3.i = phi i32 [ %ret.0.i, %if.end10.i.out_free_underrun.i_crit_edge ], [ %ret.2.i, %out_unsetup.i ]
  %256 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %13, align 4
  call void @imx_media_free_dma_buf(ptr noundef %257, ptr noundef %underrun_buf.i) #5
  br label %out_put_ipu.i

out_put_ipu.i:                                    ; preds = %out_free_underrun.i, %prp_get_ipu_resources.exit.thread.i.out_put_ipu.i_crit_edge
  %ret.4.i = phi i32 [ %call3.i, %prp_get_ipu_resources.exit.thread.i.out_put_ipu.i_crit_edge ], [ %ret.3.i, %out_free_underrun.i ]
  %258 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ic5.i.i, align 4
  %tobool.not.i226.i = icmp eq ptr %259, null
  br i1 %tobool.not.i226.i, label %out_put_ipu.i.if.end.i228.i_crit_edge, label %if.then.i.i

out_put_ipu.i.if.end.i228.i_crit_edge:            ; preds = %out_put_ipu.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i228.i

if.then.i.i:                                      ; preds = %out_put_ipu.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ipu_ic_put(ptr noundef nonnull %259) #5
  br label %if.end.i228.i

if.end.i228.i:                                    ; preds = %if.then.i.i, %out_put_ipu.i.if.end.i228.i_crit_edge
  %260 = ptrtoint ptr %ic5.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %ic5.i.i, align 4
  %261 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %out_ch23.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %262, null
  br i1 %tobool3.not.i.i, label %if.end.i228.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.end.i228.i.if.end6.i.i_crit_edge:              ; preds = %if.end.i228.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i228.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ipu_idmac_put(ptr noundef nonnull %262) #5
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i228.i.if.end6.i.i_crit_edge
  %263 = ptrtoint ptr %out_ch23.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr null, ptr %out_ch23.i.i, align 4
  %264 = ptrtoint ptr %rot_in_ch42.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %rot_in_ch42.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %265, null
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end11.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ipu_idmac_put(ptr noundef nonnull %265) #5
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end11.i.i_crit_edge
  %266 = ptrtoint ptr %rot_in_ch42.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %rot_in_ch42.i.i, align 4
  %267 = ptrtoint ptr %rot_out_ch61.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %rot_out_ch61.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %268, null
  br i1 %tobool13.not.i.i, label %if.end11.i.i.if.end18_crit_edge, label %if.then14.i.i

if.end11.i.i.if.end18_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ipu_idmac_put(ptr noundef nonnull %268) #5
  br label %if.end18

if.else:                                          ; preds = %do.end
  %irqlock.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 22
  %call3.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #5
  %last_eof.i48 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 28
  %269 = ptrtoint ptr %last_eof.i48 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 1, ptr %last_eof.i48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call3.i47) #5
  %last_eof_comp.i49 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 31
  %call8.i = tail call i32 @wait_for_completion_timeout(ptr noundef %last_eof_comp.i49, i32 noundef 200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end13.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %name.i50 = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name.i50) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end13.i, %if.else.if.end.i_crit_edge
  %270 = ptrtoint ptr %src_sd to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %src_sd, align 4
  %tobool.not.i = icmp eq ptr %271, null
  br i1 %tobool.not.i, label %if.end.i.do.end46.i_crit_edge, label %if.else.i54

if.end.i.do.end46.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46.i

if.else.i54:                                      ; preds = %if.end.i
  %ops.i52 = getelementptr inbounds %struct.v4l2_subdev, ptr %271, i32 0, i32 6
  %272 = ptrtoint ptr %ops.i52 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops.i52, align 4
  %video.i53 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %273, i32 0, i32 3
  %274 = ptrtoint ptr %video.i53 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %video.i53, align 4
  %tobool17.not.i = icmp eq ptr %275, null
  br i1 %tobool17.not.i, label %if.else.i54.if.end52.i_crit_edge, label %land.lhs.true.i56

if.else.i54.if.end52.i_crit_edge:                 ; preds = %if.else.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

land.lhs.true.i56:                                ; preds = %if.else.i54
  %s_stream.i55 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %275, i32 0, i32 10
  %276 = ptrtoint ptr %s_stream.i55 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %s_stream.i55, align 4
  %tobool20.not.i = icmp eq ptr %277, null
  br i1 %tobool20.not.i, label %land.lhs.true.i56.if.end52.i_crit_edge, label %if.else22.i

land.lhs.true.i56.if.end52.i_crit_edge:           ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.else22.i:                                      ; preds = %land.lhs.true.i56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %278 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool23.not.i = icmp eq ptr %278, null
  br i1 %tobool23.not.i, label %if.else22.i.if.else30.i_crit_edge, label %land.lhs.true24.i

if.else22.i.if.else30.i_crit_edge:                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else30.i

land.lhs.true24.i:                                ; preds = %if.else22.i
  %s_stream25.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %278, i32 0, i32 10
  %279 = ptrtoint ptr %s_stream25.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %s_stream25.i, align 4
  %tobool26.not.i = icmp eq ptr %280, null
  br i1 %tobool26.not.i, label %land.lhs.true24.i.if.else30.i_crit_edge, label %land.lhs.true24.i.if.end37.i_crit_edge

land.lhs.true24.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

land.lhs.true24.i.if.else30.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else30.i

if.else30.i:                                      ; preds = %land.lhs.true24.i.if.else30.i_crit_edge, %if.else22.i.if.else30.i_crit_edge
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else30.i, %land.lhs.true24.i.if.end37.i_crit_edge
  %.sink.i57 = phi ptr [ %277, %if.else30.i ], [ %280, %land.lhs.true24.i.if.end37.i_crit_edge ]
  %call34.i = tail call i32 %.sink.i57(ptr noundef nonnull %271, i32 noundef 0) #5
  %281 = zext i32 %call34.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call34.i, label %if.end37.i.do.end46.i_crit_edge [
    i32 0, label %if.end37.i.if.end52.i_crit_edge
    i32 -515, label %if.end37.i.if.end52.i_crit_edge77
  ]

if.end37.i.if.end52.i_crit_edge77:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.end37.i.if.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i

if.end37.i.do.end46.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.end37.i.do.end46.i_crit_edge, %if.end.i.do.end46.i_crit_edge
  %__result.087.i = phi i32 [ %call34.i, %if.end37.i.do.end46.i_crit_edge ], [ -19, %if.end.i.do.end46.i_crit_edge ]
  %name49.i = getelementptr inbounds %struct.imx_ic_priv, ptr %13, i32 0, i32 2, i32 9
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name49.i, i32 noundef %__result.087.i) #8
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end46.i, %if.end37.i.if.end52.i_crit_edge, %if.end37.i.if.end52.i_crit_edge77, %land.lhs.true.i56.if.end52.i_crit_edge, %if.else.i54.if.end52.i_crit_edge
  %282 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %13, align 4
  %eof_irq.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 24
  %284 = ptrtoint ptr %eof_irq.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %eof_irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %283, i32 noundef %285, ptr noundef %3) #5
  %286 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %13, align 4
  %nfb4eof_irq.i58 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 25
  %288 = ptrtoint ptr %nfb4eof_irq.i58 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %nfb4eof_irq.i58, align 4
  tail call void @devm_free_irq(ptr noundef %287, i32 noundef %289, ptr noundef %3) #5
  tail call fastcc void @prp_unsetup(ptr noundef %3, i32 noundef 6) #5
  %290 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %13, align 4
  %underrun_buf.i59 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 9
  tail call void @imx_media_free_dma_buf(ptr noundef %291, ptr noundef %underrun_buf.i59) #5
  %eof_timeout_timer.i60 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 23
  %call55.i = tail call i32 @del_timer_sync(ptr noundef %eof_timeout_timer.i60) #5
  %ic.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 4
  %292 = ptrtoint ptr %ic.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ic.i.i, align 4
  %tobool.not.i.i61 = icmp eq ptr %293, null
  br i1 %tobool.not.i.i61, label %if.end52.i.if.end.i.i64_crit_edge, label %if.then.i.i62

if.end52.i.if.end.i.i64_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i64

if.then.i.i62:                                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_ic_put(ptr noundef nonnull %293) #5
  br label %if.end.i.i64

if.end.i.i64:                                     ; preds = %if.then.i.i62, %if.end52.i.if.end.i.i64_crit_edge
  %294 = ptrtoint ptr %ic.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr null, ptr %ic.i.i, align 4
  %out_ch.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 5
  %295 = ptrtoint ptr %out_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %out_ch.i.i, align 4
  %tobool3.not.i.i63 = icmp eq ptr %296, null
  br i1 %tobool3.not.i.i63, label %if.end.i.i64.if.end6.i.i67_crit_edge, label %if.then4.i.i65

if.end.i.i64.if.end6.i.i67_crit_edge:             ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i67

if.then4.i.i65:                                   ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_idmac_put(ptr noundef nonnull %296) #5
  br label %if.end6.i.i67

if.end6.i.i67:                                    ; preds = %if.then4.i.i65, %if.end.i.i64.if.end6.i.i67_crit_edge
  %297 = ptrtoint ptr %out_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr null, ptr %out_ch.i.i, align 4
  %rot_in_ch.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 6
  %298 = ptrtoint ptr %rot_in_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %rot_in_ch.i.i, align 4
  %tobool8.not.i.i66 = icmp eq ptr %299, null
  br i1 %tobool8.not.i.i66, label %if.end6.i.i67.if.end11.i.i70_crit_edge, label %if.then9.i.i68

if.end6.i.i67.if.end11.i.i70_crit_edge:           ; preds = %if.end6.i.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i70

if.then9.i.i68:                                   ; preds = %if.end6.i.i67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_idmac_put(ptr noundef nonnull %299) #5
  br label %if.end11.i.i70

if.end11.i.i70:                                   ; preds = %if.then9.i.i68, %if.end6.i.i67.if.end11.i.i70_crit_edge
  %300 = ptrtoint ptr %rot_in_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr null, ptr %rot_in_ch.i.i, align 4
  %rot_out_ch.i.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 7
  %301 = ptrtoint ptr %rot_out_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rot_out_ch.i.i, align 4
  %tobool13.not.i.i69 = icmp eq ptr %302, null
  br i1 %tobool13.not.i.i69, label %if.end11.i.i70.prp_stop.exit_crit_edge, label %if.then14.i.i71

if.end11.i.i70.prp_stop.exit_crit_edge:           ; preds = %if.end11.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %prp_stop.exit

if.then14.i.i71:                                  ; preds = %if.end11.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_idmac_put(ptr noundef nonnull %302) #5
  br label %prp_stop.exit

prp_stop.exit:                                    ; preds = %if.then14.i.i71, %if.end11.i.i70.prp_stop.exit_crit_edge
  %303 = ptrtoint ptr %rot_out_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr null, ptr %rot_out_ch.i.i, align 4
  br label %update_count

if.end18:                                         ; preds = %if.then14.i.i, %if.end11.i.i.if.end18_crit_edge, %if.then14.i.i.i, %if.end11.i.i.i.if.end18_crit_edge
  %rot_out_ch61.i.i.sink = phi ptr [ %rot_out_ch.i.i.i, %if.then14.i.i.i ], [ %rot_out_ch.i.i.i, %if.end11.i.i.i.if.end18_crit_edge ], [ %rot_out_ch61.i.i, %if.then14.i.i ], [ %rot_out_ch61.i.i, %if.end11.i.i.if.end18_crit_edge ]
  %ret.0 = phi i32 [ %ret.0.i.i, %if.then14.i.i.i ], [ %ret.0.i.i, %if.end11.i.i.i.if.end18_crit_edge ], [ %ret.4.i, %if.then14.i.i ], [ %ret.4.i, %if.end11.i.i.if.end18_crit_edge ]
  %304 = ptrtoint ptr %rot_out_ch61.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr null, ptr %rot_out_ch61.i.i.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.end18.update_count_crit_edge, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18.update_count_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_count

update_count:                                     ; preds = %if.end18.update_count_crit_edge, %prp_stop.exit, %if.end86.i, %if.end.update_count_crit_edge
  %cond23 = select i1 %tobool2.not, i32 -1, i32 1
  %305 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %stream_count, align 4
  %add = add i32 %306, %cond23
  %307 = call i32 @llvm.smax.i32(i32 %add, i32 0)
  %308 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %stream_count, align 4
  br label %out

out:                                              ; preds = %update_count, %if.end18.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.end18.out_crit_edge ], [ -32, %lor.lhs.false.out_crit_edge ], [ -32, %entry.out_crit_edge ], [ 0, %update_count ]
  call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task_priv.i, align 4
  %lock = getelementptr inbounds %struct.prp_priv, ptr %5, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %frame_interval = getelementptr inbounds %struct.prp_priv, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %frame_interval, align 4
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_s_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %frame_interval = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 15
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %frame_interval6 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 15
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %interval.sink = phi ptr [ %interval, %if.else ], [ %frame_interval, %if.then4 ]
  %frame_interval6.sink = phi ptr [ %frame_interval6, %if.else ], [ %interval, %if.then4 ]
  %10 = ptrtoint ptr %interval.sink to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %interval.sink, align 4
  %12 = ptrtoint ptr %frame_interval6.sink to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %frame_interval6.sink, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_alloc_dma_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_channel_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_nfb4eof_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %irqlock = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #5
  %nfb4eof = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 29
  %2 = ptrtoint ptr %nfb4eof to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %nfb4eof, align 1
  %name = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 2, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name) #8
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_eof_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #5
  %last_eof = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 28
  %0 = ptrtoint ptr %last_eof to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last_eof, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %last_eof_comp = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 31
  tail call void @complete(ptr noundef %last_eof_comp) #5
  %2 = ptrtoint ptr %last_eof to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %last_eof, align 4
  br label %unlock

if.end:                                           ; preds = %entry
  %rot_mode = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 21
  %3 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rot_mode, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %rot_out_ch = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 7
  %out_ch = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 5
  %cond.in = select i1 %cmp.not, ptr %out_ch, ptr %rot_out_ch
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load ptr, ptr %cond.in, align 4
  %vdev1.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 2
  %6 = ptrtoint ptr %vdev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev1.i, align 4
  %ipu_buf_num.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 10
  %8 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ipu_buf_num.i, align 4
  %arrayidx.i = getelementptr %struct.prp_priv, ptr %dev_id, i32 0, i32 8, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %field.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %7, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field.i, align 4
  %field2.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %field2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field2.i, align 4
  %frame_sequence.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 27
  %15 = ptrtoint ptr %frame_sequence.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_sequence.i, align 4
  %sequence.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sequence.i, align 8
  %call.i.i = tail call i64 @ktime_get() #5
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %nfb4eof.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 29
  %19 = ptrtoint ptr %nfb4eof.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nfb4eof.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  %cond.i = select i1 %tobool5.not.i, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %11, i32 noundef %cond.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %frame_sequence6.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 27
  %21 = ptrtoint ptr %frame_sequence6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_sequence6.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %frame_sequence6.i, align 4
  %nfb4eof7.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 29
  %23 = ptrtoint ptr %nfb4eof7.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %nfb4eof7.i, align 1
  %call8.i = tail call ptr @imx_media_capture_device_next_buf(ptr noundef %7) #5
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i60.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call8.i, i32 noundef 0) #5
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %phys17.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 9, i32 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then10.i
  %phys17.sink.i = phi ptr [ %phys17.i, %if.else.i ], [ %call.i60.i, %if.then10.i ]
  %24 = ptrtoint ptr %phys17.sink.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys17.sink.i, align 4
  %26 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ipu_buf_num.i, align 4
  %arrayidx20.i = getelementptr %struct.prp_priv, ptr %dev_id, i32 0, i32 8, i32 %27
  %28 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i, ptr %arrayidx20.i, align 4
  %29 = load i32, ptr %ipu_buf_num.i, align 4
  %call23.i = tail call zeroext i1 @ipu_idmac_buffer_is_ready(ptr noundef %cond, i32 noundef %29) #5
  br i1 %call23.i, label %if.then24.i, label %if.end21.i.if.end26.i_crit_edge

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ipu_buf_num.i, align 4
  tail call void @ipu_idmac_clear_buffer(ptr noundef %cond, i32 noundef %31) #5
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end26.i_crit_edge
  %interweave_swap.i = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 30
  %32 = ptrtoint ptr %interweave_swap.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %interweave_swap.i, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool27.not.i = icmp eq i8 %33, 0
  br i1 %tobool27.not.i, label %if.end26.i.prp_vb2_buf_done.exit_crit_edge, label %land.lhs.true.i

if.end26.i.prp_vb2_buf_done.exit_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prp_vb2_buf_done.exit

land.lhs.true.i:                                  ; preds = %if.end26.i
  %34 = ptrtoint ptr %out_ch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %out_ch, align 4
  %cmp.i = icmp eq ptr %35, %cond
  br i1 %cmp.i, label %if.then28.i, label %land.lhs.true.i.prp_vb2_buf_done.exit_crit_edge

land.lhs.true.i.prp_vb2_buf_done.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prp_vb2_buf_done.exit

if.then28.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %bytesperline.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %7, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytesperline.i, align 4
  %add.i = add i32 %37, %25
  br label %prp_vb2_buf_done.exit

prp_vb2_buf_done.exit:                            ; preds = %if.then28.i, %land.lhs.true.i.prp_vb2_buf_done.exit_crit_edge, %if.end26.i.prp_vb2_buf_done.exit_crit_edge
  %phys.1.i = phi i32 [ %add.i, %if.then28.i ], [ %25, %land.lhs.true.i.prp_vb2_buf_done.exit_crit_edge ], [ %25, %if.end26.i.prp_vb2_buf_done.exit_crit_edge ]
  %38 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ipu_buf_num.i, align 4
  tail call void @ipu_cpmem_set_buffer(ptr noundef %cond, i32 noundef %39, i32 noundef %phys.1.i) #5
  %40 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ipu_buf_num.i, align 4
  tail call void @ipu_idmac_select_buffer(ptr noundef %cond, i32 noundef %41) #5
  %42 = ptrtoint ptr %ipu_buf_num.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ipu_buf_num.i, align 4
  %xor = xor i32 %43, 1
  store i32 %xor, ptr %ipu_buf_num.i, align 4
  %eof_timeout_timer = getelementptr inbounds %struct.prp_priv, ptr %dev_id, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %44, 200
  %call3 = tail call i32 @mod_timer(ptr noundef %eof_timeout_timer, i32 noundef %add) #5
  br label %unlock

unlock:                                           ; preds = %prp_vb2_buf_done.exit, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prp_unsetup(ptr noundef %priv, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rot_mode = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rot_mode, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %ic.i = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %ic.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ic.i, align 4
  tail call void @ipu_ic_task_disable(ptr noundef %5) #5
  %out_ch.i = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %out_ch.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ch.i, align 4
  %call.i = tail call i32 @ipu_idmac_disable_channel(ptr noundef %7) #5
  %rot_in_ch.i = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %rot_in_ch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rot_in_ch.i, align 4
  %call2.i = tail call i32 @ipu_idmac_disable_channel(ptr noundef %9) #5
  %rot_out_ch.i = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 7
  %10 = ptrtoint ptr %rot_out_ch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rot_out_ch.i, align 4
  %call3.i = tail call i32 @ipu_idmac_disable_channel(ptr noundef %11) #5
  %12 = ptrtoint ptr %out_ch.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out_ch.i, align 4
  %14 = ptrtoint ptr %rot_in_ch.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rot_in_ch.i, align 4
  %call6.i = tail call i32 @ipu_idmac_unlink(ptr noundef %13, ptr noundef %15) #5
  %16 = ptrtoint ptr %ic.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ic.i, align 4
  %call8.i = tail call i32 @ipu_ic_disable(ptr noundef %17) #5
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %rot_buf.i = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 16
  tail call void @imx_media_free_dma_buf(ptr noundef %19, ptr noundef %rot_buf.i) #5
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %arrayidx11.i = getelementptr %struct.prp_priv, ptr %priv, i32 0, i32 16, i32 1
  tail call void @imx_media_free_dma_buf(ptr noundef %21, ptr noundef %arrayidx11.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ic.i4 = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 4
  %22 = ptrtoint ptr %ic.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ic.i4, align 4
  tail call void @ipu_ic_task_disable(ptr noundef %23) #5
  %out_ch.i5 = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 5
  %24 = ptrtoint ptr %out_ch.i5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out_ch.i5, align 4
  %call.i6 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %25) #5
  %26 = ptrtoint ptr %ic.i4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ic.i4, align 4
  %call2.i7 = tail call i32 @ipu_ic_disable(ptr noundef %27) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx.i = getelementptr %struct.prp_priv, ptr %priv, i32 0, i32 8, i32 0
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i64 @ktime_get() #5
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %29, i32 noundef %state) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.prp_priv, ptr %priv, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %32, null
  br i1 %tobool.not.1.i, label %for.inc.i.prp_unsetup_vb2_buf.exit_crit_edge, label %if.then.1.i

for.inc.i.prp_unsetup_vb2_buf.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %prp_unsetup_vb2_buf.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.1.i = tail call i64 @ktime_get() #5
  %timestamp.1.i = getelementptr inbounds %struct.vb2_buffer, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %timestamp.1.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call.i.1.i, ptr %timestamp.1.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %32, i32 noundef %state) #5
  br label %prp_unsetup_vb2_buf.exit

prp_unsetup_vb2_buf.exit:                         ; preds = %if.then.1.i, %for.inc.i.prp_unsetup_vb2_buf.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_free_dma_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_ic_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_idmac_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_calc_csc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_task_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prp_setup_channel(ptr nocapture noundef %priv, ptr noundef %channel, i32 noundef %rot_mode, i32 noundef %addr0, i32 noundef %addr1, i1 noundef zeroext %rot_swap_width_height) unnamed_addr #0 align 64 {
entry:
  %image = alloca %struct.ipu_image, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %image) #5
  %2 = call ptr @memset(ptr %image, i32 255, i32 80)
  %cc = getelementptr inbounds %struct.imx_media_video_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cc, align 4
  tail call void @ipu_cpmem_zero(ptr noundef %channel) #5
  %5 = call ptr @memset(ptr %image, i32 0, i32 80)
  %fmt = getelementptr inbounds %struct.imx_media_video_dev, ptr %1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %image, ptr %fmt, i32 48)
  %rect = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 1
  %compose = getelementptr inbounds %struct.imx_media_video_dev, ptr %1, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %rect, ptr %compose, i32 16)
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %9, label %entry.land.end19_crit_edge [
    i32 4, label %entry.land.end_crit_edge
    i32 8, label %entry.land.end_crit_edge149
    i32 9, label %entry.land.end_crit_edge150
  ]

entry.land.end_crit_edge150:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

entry.land.end_crit_edge149:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

entry.land.end19_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end19

land.end:                                         ; preds = %entry.land.end_crit_edge, %entry.land.end_crit_edge149, %entry.land.end_crit_edge150
  %field10 = getelementptr %struct.prp_priv, ptr %priv, i32 0, i32 13, i32 1, i32 3
  %11 = ptrtoint ptr %field10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field10, align 4
  %.off = add i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp18 = icmp eq i32 %9, 9
  %spec.select148 = select i1 %switch, i1 %cmp18, i1 false
  br label %land.end19

land.end19:                                       ; preds = %land.end, %entry.land.end19_crit_edge
  %13 = phi i1 [ false, %entry.land.end19_crit_edge ], [ %switch, %land.end ]
  %14 = phi i1 [ false, %entry.land.end19_crit_edge ], [ %spec.select148, %land.end ]
  %interweave_swap = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 30
  %frombool20 = zext i1 %14 to i8
  %15 = ptrtoint ptr %interweave_swap to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool20, ptr %interweave_swap, align 2
  br i1 %rot_swap_width_height, label %do.body, label %land.end19.if.end_crit_edge

land.end19.if.end_crit_edge:                      ; preds = %land.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %land.end19
  %16 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %image, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  store i32 %19, ptr %image, align 4
  store i32 %17, ptr %height, align 4
  %width31 = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %width31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width31, align 4
  %height33 = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height33, align 4
  store i32 %23, ptr %width31, align 4
  store i32 %21, ptr %height33, align 4
  %planar = getelementptr inbounds %struct.imx_media_pixfmt, ptr %4, i32 0, i32 5
  %24 = ptrtoint ptr %planar to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %planar, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool40.not = icmp eq i8 %25, 0
  br i1 %tobool40.not, label %cond.false, label %do.body.cond.end_crit_edge

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %bpp = getelementptr inbounds %struct.imx_media_pixfmt, ptr %4, i32 0, i32 2
  %26 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bpp, align 4
  %mul = mul i32 %27, %19
  %shr = lshr i32 %mul, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body.cond.end_crit_edge
  %cond = phi i32 [ %shr, %cond.false ], [ %19, %do.body.cond.end_crit_edge ]
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 4
  %28 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond, ptr %bytesperline, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.end19.if.end_crit_edge
  br i1 %14, label %land.lhs.true, label %if.end.if.end51_crit_edge

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end
  %out_ch = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 5
  %29 = ptrtoint ptr %out_ch to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out_ch, align 4
  %cmp48 = icmp eq ptr %30, %channel
  br i1 %cmp48, label %if.then49, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %top = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %top, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %phys0 = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 2
  %32 = ptrtoint ptr %phys0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %addr0, ptr %phys0, align 4
  %phys1 = getelementptr inbounds %struct.ipu_image, ptr %image, i32 0, i32 3
  %33 = ptrtoint ptr %phys1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %addr1, ptr %phys1, align 4
  %out_ch52 = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 5
  %34 = ptrtoint ptr %out_ch52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %out_ch52, align 4
  %cmp53 = icmp ne ptr %35, %channel
  %brmerge = select i1 %cmp53, i1 true, i1 %13
  br i1 %brmerge, label %lor.lhs.false56, label %if.end51.if.then58_crit_edge

if.end51.if.then58_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

lor.lhs.false56:                                  ; preds = %if.end51
  %rot_out_ch = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 7
  %36 = ptrtoint ptr %rot_out_ch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rot_out_ch, align 4
  %cmp57 = icmp eq ptr %37, %channel
  br i1 %cmp57, label %lor.lhs.false56.if.then58_crit_edge, label %lor.lhs.false56.if.end60_crit_edge

lor.lhs.false56.if.end60_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

lor.lhs.false56.if.then58_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false56.if.then58_crit_edge, %if.end51.if.then58_crit_edge
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 2
  %38 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixelformat, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %39, label %if.then58.if.end60_crit_edge [
    i32 842093913, label %if.then58.sw.bb_crit_edge
    i32 842094169, label %if.then58.sw.bb_crit_edge151
    i32 842094158, label %if.then58.sw.bb_crit_edge152
  ]

if.then58.sw.bb_crit_edge152:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then58.sw.bb_crit_edge151:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then58.sw.bb_crit_edge:                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then58.if.end60_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

sw.bb:                                            ; preds = %if.then58.sw.bb_crit_edge, %if.then58.sw.bb_crit_edge151, %if.then58.sw.bb_crit_edge152
  tail call void @ipu_cpmem_skip_odd_chroma_rows(ptr noundef %channel) #5
  br label %if.end60

if.end60:                                         ; preds = %sw.bb, %if.then58.if.end60_crit_edge, %lor.lhs.false56.if.end60_crit_edge
  %call = call i32 @ipu_cpmem_set_image(ptr noundef %channel, ptr noundef nonnull %image) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool61.not = icmp eq i32 %call, 0
  br i1 %tobool61.not, label %if.end63, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end63:                                         ; preds = %if.end60
  %rot_in_ch = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 6
  %41 = ptrtoint ptr %rot_in_ch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rot_in_ch, align 4
  %cmp64 = icmp eq ptr %42, %channel
  br i1 %cmp64, label %if.end63.if.then68_crit_edge, label %lor.lhs.false65

if.end63.if.then68_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then68

lor.lhs.false65:                                  ; preds = %if.end63
  %rot_out_ch66 = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 7
  %43 = ptrtoint ptr %rot_out_ch66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rot_out_ch66, align 4
  %cmp67 = icmp eq ptr %44, %channel
  br i1 %cmp67, label %lor.lhs.false65.if.then68_crit_edge, label %if.else

lor.lhs.false65.if.then68_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false65.if.then68_crit_edge, %if.end63.if.then68_crit_edge
  call void @ipu_cpmem_set_block_mode(ptr noundef %channel) #5
  br label %if.end73

if.else:                                          ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %image, align 4
  %and = and i32 %46, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  %cond72 = select i1 %tobool71.not, i32 16, i32 8
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then68
  %burst_size.0 = phi i32 [ 8, %if.then68 ], [ %cond72, %if.else ]
  call void @ipu_cpmem_set_burstsize(ptr noundef %channel, i32 noundef %burst_size.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rot_mode)
  %tobool74.not = icmp eq i32 %rot_mode, 0
  br i1 %tobool74.not, label %if.end73.if.end76_crit_edge, label %if.then75

if.end73.if.end76_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  call void @ipu_cpmem_set_rotation(ptr noundef %channel, i32 noundef %rot_mode) #5
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end73.if.end76_crit_edge
  br i1 %13, label %land.lhs.true78, label %if.end76.if.end94_crit_edge

if.end76.if.end94_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

land.lhs.true78:                                  ; preds = %if.end76
  %47 = ptrtoint ptr %out_ch52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %out_ch52, align 4
  %cmp80 = icmp eq ptr %48, %channel
  br i1 %cmp80, label %if.then81, label %land.lhs.true78.if.end94_crit_edge

land.lhs.true78.if.end94_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then81:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %interweave_swap to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %interweave_swap, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool83.not = icmp eq i8 %50, 0
  %bytesperline89 = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 4
  %51 = ptrtoint ptr %bytesperline89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytesperline89, align 4
  %sub = sub i32 0, %52
  %cond91 = select i1 %tobool83.not, i32 %52, i32 %sub
  %pixelformat93 = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 2
  %53 = ptrtoint ptr %pixelformat93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pixelformat93, align 4
  call void @ipu_cpmem_interlaced_scan(ptr noundef %channel, i32 noundef %cond91, i32 noundef %54) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then81, %land.lhs.true78.if.end94_crit_edge, %if.end76.if.end94_crit_edge
  %ic = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 4
  %55 = ptrtoint ptr %ic to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ic, align 4
  %57 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %image, align 4
  %height98 = getelementptr inbounds %struct.v4l2_pix_format, ptr %image, i32 0, i32 1
  %59 = ptrtoint ptr %height98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height98, align 4
  %call99 = call i32 @ipu_ic_task_idma_init(ptr noundef %56, ptr noundef %channel, i32 noundef %58, i32 noundef %60, i32 noundef %burst_size.0, i32 noundef %rot_mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end102:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  call void @ipu_cpmem_set_axi_id(ptr noundef %channel, i32 noundef 1) #5
  call void @ipu_idmac_set_double_buffer(ptr noundef %channel, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.end94.cleanup_crit_edge, %if.end60.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end102 ], [ %call, %if.end60.cleanup_crit_edge ], [ %call99, %if.end94.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %image) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_select_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_enable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_task_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_skip_odd_chroma_rows(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_image(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_block_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_burstsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_rotation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_interlaced_scan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_task_idma_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_axi_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_set_double_buffer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_capture_device_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_idmac_buffer_is_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_clear_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_task_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_disable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_cfg(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call.i = tail call i32 @imx_media_enum_mbus_formats(ptr noundef %code1, i32 noundef %3, i32 noundef 11) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  %cc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #5
  %4 = getelementptr inbounds i8, ptr %format, i32 20
  %5 = call ptr @memset(ptr %4, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #5
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.not = icmp eq i32 %9, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %pad3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %12 = ptrtoint ptr %pad3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pad3, align 4
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %13 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %which, align 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %16 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %code, align 4
  %format5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %code6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %code6, align 4
  %19 = ptrtoint ptr %format5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %format5, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %height, align 4
  call fastcc void @prp_try_fmt(ptr noundef %3, ptr noundef %sd_state, ptr noundef nonnull %format, ptr noundef nonnull %cc)
  %21 = ptrtoint ptr %format5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format5, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %23 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %min_width, align 4
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %26 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %min_height, align 4
  %27 = ptrtoint ptr %code6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %code6, align 4
  %29 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp16.not = icmp eq i32 %28, %30
  br i1 %cmp16.not, label %if.end18, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %format5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %format5, align 4
  %32 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %height, align 4
  call fastcc void @prp_try_fmt(ptr noundef %3, ptr noundef %sd_state, ptr noundef nonnull %format, ptr noundef nonnull %cc)
  %33 = ptrtoint ptr %format5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %format5, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %35 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_width, align 4
  %36 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %38 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_height, align 4
  br label %out

out:                                              ; preds = %if.end18, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end18 ], [ -22, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sdformat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %8 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %num_pads.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %11, i32 0, i32 2, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %7, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !151

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %7, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %15, i32 %spec.select.i.i
  br label %__prp_get_fmt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 13, i32 %7
  br label %__prp_get_fmt.exit

__prp_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__prp_get_fmt.exit.out_crit_edge, label %if.end4

__prp_get_fmt.exit.out_crit_edge:                 ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %out

out:                                              ; preds = %if.end4, %__prp_get_fmt.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end4 ], [ -22, %__prp_get_fmt.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat) #0 align 64 {
entry:
  %cc = alloca ptr, align 4
  %outcc = alloca ptr, align 4
  %format9 = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #5
  %4 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cc, align 4, !annotation !152
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %stream_count = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp sgt i32 %8, 0
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end3:                                          ; preds = %if.end
  call fastcc void @prp_try_fmt(ptr noundef %3, ptr noundef %sd_state, ptr noundef %sdformat, ptr noundef nonnull %cc)
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pad, align 4
  %11 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %num_pads.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %14, i32 0, i32 2, i32 0, i32 5
  %15 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %10, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !151

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %10, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %17 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %18, i32 %spec.select.i.i
  br label %__prp_get_fmt.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 13, i32 %10
  br label %__prp_get_fmt.exit

__prp_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %retval.0.i, ptr %format, i32 48)
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7 = icmp eq i32 %21, 0
  br i1 %cmp7, label %if.then8, label %__prp_get_fmt.exit.if.end23_crit_edge

__prp_get_fmt.exit.if.end23_crit_edge:            ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then8:                                         ; preds = %__prp_get_fmt.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outcc) #5
  %22 = ptrtoint ptr %outcc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %outcc, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format9) #5
  %23 = getelementptr inbounds i8, ptr %format9, i32 56
  %24 = call ptr @memset(ptr %23, i32 255, i32 32)
  %pad10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format9, i32 0, i32 1
  %25 = ptrtoint ptr %pad10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %pad10, align 4
  %26 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sdformat, align 4
  %28 = ptrtoint ptr %format9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %format9, align 4
  %format13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format9, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %format13, ptr %format, i32 48)
  call fastcc void @prp_try_fmt(ptr noundef %3, ptr noundef %sd_state, ptr noundef nonnull %format9, ptr noundef nonnull %outcc)
  %30 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i57 = icmp eq i32 %31, 0
  br i1 %cmp.i57, label %if.then.i61, label %if.else.i67

if.then.i61:                                      ; preds = %if.then8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %num_pads.i.i58 = getelementptr inbounds %struct.imx_ic_priv, ptr %33, i32 0, i32 2, i32 0, i32 5
  %34 = ptrtoint ptr %num_pads.i.i58 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_pads.i.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp.not.i.i60 = icmp ugt i16 %35, 1
  br i1 %cmp.not.i.i60, label %if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge, label %do.end.i.i62, !prof !151

if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge: ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i65

do.end.i.i62:                                     ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i65

v4l2_subdev_get_try_format.exit.i65:              ; preds = %do.end.i.i62, %if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge
  %spec.select.i.i63 = phi i32 [ 0, %do.end.i.i62 ], [ 1, %if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge ]
  %36 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i64 = getelementptr %struct.v4l2_subdev_pad_config, ptr %37, i32 %spec.select.i.i63
  br label %__prp_get_fmt.exit69

if.else.i67:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i66 = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 13, i32 1
  br label %__prp_get_fmt.exit69

__prp_get_fmt.exit69:                             ; preds = %if.else.i67, %v4l2_subdev_get_try_format.exit.i65
  %retval.0.i68 = phi ptr [ %arrayidx.i.i64, %v4l2_subdev_get_try_format.exit.i65 ], [ %arrayidx.i66, %if.else.i67 ]
  %38 = call ptr @memcpy(ptr %retval.0.i68, ptr %format13, i32 48)
  %39 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp19 = icmp eq i32 %40, 1
  br i1 %cmp19, label %if.then20, label %__prp_get_fmt.exit69.if.end22_crit_edge

__prp_get_fmt.exit69.if.end22_crit_edge:          ; preds = %__prp_get_fmt.exit69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then20:                                        ; preds = %__prp_get_fmt.exit69
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %outcc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %outcc, align 4
  %arrayidx = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %arrayidx, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %__prp_get_fmt.exit69.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outcc) #5
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %__prp_get_fmt.exit.if.end23_crit_edge
  %44 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp25 = icmp eq i32 %45, 1
  br i1 %cmp25, label %if.then26, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cc, align 4
  %48 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pad, align 4
  %arrayidx29 = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 14, i32 %49
  %50 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %arrayidx29, align 4
  br label %out

out:                                              ; preds = %if.then26, %if.end23.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then26 ], [ 0, %if.end23.out_crit_edge ], [ -16, %if.end.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_enum_mbus_formats(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prp_try_fmt(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sd_state, ptr noundef %sdformat, ptr nocapture noundef writeonly %cc) unnamed_addr #0 align 64 {
entry:
  %code1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %call.i = tail call ptr @imx_media_find_mbus_format(i32 noundef %1, i32 noundef 11) #5
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %cc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code1) #5
  %3 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %code1, align 4, !annotation !152
  %call.i46 = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code1, i32 noundef 0, i32 noundef 11) #5
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code1, align 4
  %call.i47 = call ptr @imx_media_find_mbus_format(i32 noundef %5, i32 noundef 11) #5
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i47, ptr %cc, align 4
  %codes = getelementptr inbounds %struct.imx_media_pixfmt, ptr %call.i47, i32 0, i32 1
  %7 = ptrtoint ptr %codes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %codes, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %code, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %sdformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %num_pads.i.i = getelementptr inbounds %struct.imx_ic_priv, ptr %15, i32 0, i32 2, i32 0, i32 5
  %16 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not.i.i.not = icmp eq i16 %17, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !153

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  br label %__prp_get_fmt.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.prp_priv, ptr %priv, i32 0, i32 13, i32 0
  br label %__prp_get_fmt.exit

__prp_get_fmt.exit:                               ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %19, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 1
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp eq i32 %21, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %__prp_get_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %field, align 4
  %field9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %field9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %field9, align 4
  %rot_mode = getelementptr inbounds %struct.prp_priv, ptr %priv, i32 0, i32 21
  %25 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rot_mode, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  %and.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %height10.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %height10.sink.i = select i1 %cmp.not.i, ptr %height10.i, ptr %retval.0.i
  %div826.sink.in.in.i = select i1 %cmp.not.i, ptr %retval.0.i, ptr %height10.i
  %27 = ptrtoint ptr %div826.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %div826.sink.in.i = load i32, ptr %div826.sink.in.in.i, align 4
  %div826.sink.i = lshr i32 %div826.sink.in.i, 2
  %28 = ptrtoint ptr %height10.sink.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height10.sink.i, align 4
  %div1127.i = lshr i32 %29, 2
  call void @v4l_bound_align_image(ptr noundef %format, i32 noundef %div826.sink.i, i32 noundef 1024, i32 noundef 1, ptr noundef %height.i, i32 noundef %div1127.i, i32 noundef 1024, i32 noundef 1, i32 noundef 1) #5
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 4
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %colorspace, align 4
  %colorspace13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %colorspace13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %colorspace13, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 7
  %33 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %xfer_func, align 4
  %xfer_func15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %xfer_func15 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %xfer_func15, align 4
  br label %if.end25

if.else:                                          ; preds = %__prp_get_fmt.exit
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 1
  call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 32, i32 noundef 4096, i32 noundef 3, ptr noundef %height, i32 noundef 32, i32 noundef 4096, i32 noundef 1, i32 noundef 1) #5
  %field19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sdformat, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %field19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %field19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp20 = icmp eq i32 %37, 0
  br i1 %cmp20, label %if.then21, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %field19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %field19, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else.if.end25_crit_edge, %if.then7
  call void @imx_media_try_colorimetry(ptr noundef %format, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_try_colorimetry(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_find_mbus_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_registered(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  %code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #5
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %code, align 4, !annotation !152
  %call.i = call i32 @imx_media_enum_mbus_formats(ptr noundef nonnull %code, i32 noundef 0, i32 noundef 9) #5
  %arrayidx = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 13, i32 0
  %7 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %code, align 4
  %arrayidx3 = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 14, i32 0
  %call4 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx, i32 noundef 640, i32 noundef 480, i32 noundef %8, i32 noundef 1, ptr noundef %arrayidx3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code, align 4
  %arrayidx3.1 = getelementptr %struct.prp_priv, ptr %3, i32 0, i32 14, i32 1
  %call4.1 = call i32 @imx_media_init_mbus_fmt(ptr noundef %arrayidx.1, i32 noundef 640, i32 noundef 480, i32 noundef %10, i32 noundef 1, ptr noundef %arrayidx3.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %frame_interval = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %frame_interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %denominator, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %sd6 = getelementptr inbounds %struct.imx_ic_priv, ptr %5, i32 0, i32 2
  %call7 = call ptr @imx_media_capture_device_init(ptr noundef %14, ptr noundef %sd6, i32 noundef 1, i1 noundef zeroext true) #5
  %vdev = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7, ptr %vdev, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %for.cond.1
  %call15 = call i32 @imx_media_capture_device_register(ptr noundef %call7, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.remove_vdev_crit_edge

if.end13.remove_vdev_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %remove_vdev

if.end18:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %ctrl_hdlr.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 17
  %call.i48 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdlr.i, i32 noundef 3, ptr noundef nonnull @prp_init_controls._key, ptr noundef nonnull @.str.59) #5
  %call2.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdlr.i, ptr noundef nonnull @prp_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %call3.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdlr.i, ptr noundef nonnull @prp_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %call4.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdlr.i, ptr noundef nonnull @prp_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #5
  %ctrl_handler.i = getelementptr inbounds %struct.imx_ic_priv, ptr %18, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctrl_hdlr.i, ptr %ctrl_handler.i, align 4
  %error.i = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 17, i32 9
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %prp_init_controls.exit.thread, label %unreg_vdev

prp_init_controls.exit.thread:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdlr.i) #5
  br label %cleanup

unreg_vdev:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr.i) #5
  %22 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev, align 4
  call void @imx_media_capture_device_unregister(ptr noundef %23) #5
  br label %remove_vdev

remove_vdev:                                      ; preds = %unreg_vdev, %if.end13.remove_vdev_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end13.remove_vdev_crit_edge ], [ %21, %unreg_vdev ]
  %24 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev, align 4
  call void @imx_media_capture_device_remove(ptr noundef %25) #5
  br label %cleanup

cleanup:                                          ; preds = %remove_vdev, %prp_init_controls.exit.thread, %if.then10, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then10 ], [ %ret.0, %remove_vdev ], [ 0, %prp_init_controls.exit.thread ], [ %call4, %entry.cleanup_crit_edge ], [ %call4.1, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prp_unregistered(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %task_priv.i = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv.i, align 4
  %vdev = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  tail call void @imx_media_capture_device_unregister(ptr noundef %5) #5
  %6 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev, align 4
  tail call void @imx_media_capture_device_remove(ptr noundef %7) #5
  %ctrl_hdlr = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 17
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_init_mbus_fmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_media_capture_device_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_capture_device_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %rot_mode = alloca i32, align 4
  %outfmt = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -348
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rot_mode) #5
  %4 = ptrtoint ptr %rot_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rot_mode, align 4, !annotation !152
  %lock = getelementptr i8, ptr %1, i32 -276
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %rotation2 = getelementptr i8, ptr %1, i32 184
  %5 = ptrtoint ptr %rotation2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rotation2, align 4
  %hflip3 = getelementptr i8, ptr %1, i32 188
  %7 = ptrtoint ptr %hflip3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hflip3, align 4, !range !150
  %vflip4 = getelementptr i8, ptr %1, i32 189
  %9 = ptrtoint ptr %vflip4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vflip4, align 1, !range !150
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %12, label %do.end [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb8
    i32 9963810, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %extract.t73 = icmp ne i8 %10, 0
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp10 = icmp eq i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %extract.t69 = icmp ne i8 %8, 0
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %18 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %extract.t = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %extract.t71 = icmp ne i8 %10, 0
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.imx_ic_priv, ptr %3, i32 0, i32 2, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name) #8
  br label %cleanup41

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb
  %rotation.0 = phi i32 [ %19, %sw.bb12 ], [ %6, %sw.bb8 ], [ %6, %sw.bb ]
  %hflip.0.off0 = phi i1 [ %extract.t, %sw.bb12 ], [ %extract.t69, %sw.bb8 ], [ %cmp, %sw.bb ]
  %vflip.0.off0 = phi i1 [ %extract.t71, %sw.bb12 ], [ %cmp10, %sw.bb8 ], [ %extract.t73, %sw.bb ]
  %call17 = call i32 @ipu_degrees_to_rot_mode(ptr noundef nonnull %rot_mode, i32 noundef %rotation.0, i1 noundef zeroext %hflip.0.off0, i1 noundef zeroext %vflip.0.off0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end, label %sw.epilog.cleanup41_crit_edge

sw.epilog.cleanup41_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end:                                           ; preds = %sw.epilog
  %20 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rot_mode, align 4
  %rot_mode19 = getelementptr i8, ptr %1, i32 192
  %22 = ptrtoint ptr %rot_mode19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rot_mode19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp20.not = icmp eq i32 %21, %23
  br i1 %cmp20.not, label %if.end.cleanup41_crit_edge, label %if.then21

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.then21:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %outfmt) #5
  %stream_count = getelementptr i8, ptr %1, i32 296
  %24 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22 = icmp sgt i32 %25, 0
  br i1 %cmp22, label %if.then21.cleanup_crit_edge, label %if.end24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.then21
  %format_mbus = getelementptr i8, ptr %1, i32 -136
  %arrayidx = getelementptr i8, ptr %1, i32 -88
  %26 = call ptr @memcpy(ptr %outfmt, ptr %arrayidx, i32 48)
  %27 = ptrtoint ptr %format_mbus to i32
  call void @__asan_load4_noabort(i32 %27)
  %infmt.sroa.0.0.copyload = load i32, ptr %format_mbus, align 4
  %infmt.sroa.6.0.format_mbus.sroa_idx = getelementptr i8, ptr %1, i32 -132
  %28 = ptrtoint ptr %infmt.sroa.6.0.format_mbus.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %infmt.sroa.6.0.copyload = load i32, ptr %infmt.sroa.6.0.format_mbus.sroa_idx, align 4
  %29 = ptrtoint ptr %outfmt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %outfmt, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %outfmt, i32 0, i32 1
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height.i, align 4
  %and.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %spec.select = select i1 %cmp.not.i, i32 %infmt.sroa.6.0.copyload, i32 %infmt.sroa.0.0.copyload
  %spec.select76 = select i1 %cmp.not.i, i32 %infmt.sroa.0.0.copyload, i32 %infmt.sroa.6.0.copyload
  %div826.sink.i = lshr i32 %spec.select76, 2
  %div1127.i = lshr i32 %spec.select, 2
  call void @v4l_bound_align_image(ptr noundef nonnull %outfmt, i32 noundef %div826.sink.i, i32 noundef 1024, i32 noundef 1, ptr noundef %height.i, i32 noundef %div1127.i, i32 noundef 1024, i32 noundef 1, i32 noundef 1) #5
  %33 = ptrtoint ptr %outfmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %outfmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %30)
  %cmp13.not.i = icmp eq i32 %34, %30
  br i1 %cmp13.not.i, label %prp_bound_align_output.exit, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

prp_bound_align_output.exit:                      ; preds = %if.end24
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %32)
  %cmp15.i.not = icmp eq i32 %36, %32
  br i1 %cmp15.i.not, label %if.end29, label %prp_bound_align_output.exit.cleanup_crit_edge

prp_bound_align_output.exit.cleanup_crit_edge:    ; preds = %prp_bound_align_output.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %prp_bound_align_output.exit
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rot_mode, align 4
  %39 = ptrtoint ptr %rot_mode19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rot_mode19, align 4
  %40 = ptrtoint ptr %rotation2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %rotation.0, ptr %rotation2, align 4
  %frombool34 = zext i1 %hflip.0.off0 to i8
  %41 = ptrtoint ptr %hflip3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool34, ptr %hflip3, align 4
  %frombool37 = zext i1 %vflip.0.off0 to i8
  %42 = ptrtoint ptr %vflip4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool37, ptr %vflip4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %prp_bound_align_output.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %ret.0 = phi i32 [ 0, %if.end29 ], [ -16, %if.then21.cleanup_crit_edge ], [ -22, %prp_bound_align_output.exit.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %outfmt) #5
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup, %if.end.cleanup41_crit_edge, %sw.epilog.cleanup41_crit_edge, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ %call17, %sw.epilog.cleanup41_crit_edge ], [ %ret.0, %cleanup ], [ 0, %if.end.cleanup41_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rot_mode) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_degrees_to_rot_mode(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prp_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %task_priv = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %task_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prp_link_setup.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prp_link_setup, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.imx_ic_priv, ptr %1, i32 0, i32 2, i32 9
  %entity8 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %6 = ptrtoint ptr %entity8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity8, align 4
  %name9 = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name9, align 4
  %entity10 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %10 = ptrtoint ptr %entity10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity10, align 4
  %name11 = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @prp_link_setup.__UNIQUE_ID_ddebug315, ptr noundef %5, ptr noundef nonnull @.str.63, ptr noundef %name, ptr noundef %9, ptr noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %flags12 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %14 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags12, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %entity40 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %16 = ptrtoint ptr %entity40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity40, align 4
  %tobool.not.i74 = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.end39, label %if.then14

if.then14:                                        ; preds = %do.end
  br i1 %tobool.not.i74, label %if.then14.out_crit_edge, label %is_media_entity_v4l2_subdev.exit

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

is_media_entity_v4l2_subdev.exit:                 ; preds = %if.then14
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp eq i32 %19, 2
  br i1 %cmp.i, label %if.end18, label %is_media_entity_v4l2_subdev.exit.out_crit_edge

is_media_entity_v4l2_subdev.exit.out_crit_edge:   ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %is_media_entity_v4l2_subdev.exit
  %and30 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %src_sd37 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 12
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end18
  %20 = ptrtoint ptr %src_sd37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src_sd37, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %if.end35, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end35:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %src_sd37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %src_sd37, align 4
  br label %out

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %src_sd37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %src_sd37, align 4
  br label %out

if.end39:                                         ; preds = %do.end
  br i1 %tobool.not.i74, label %if.end39.out_crit_edge, label %is_media_entity_v4l2_video_device.exit

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

is_media_entity_v4l2_video_device.exit:           ; preds = %if.end39
  %obj_type.i75 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %obj_type.i75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %obj_type.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i76 = icmp eq i32 %25, 1
  br i1 %cmp.i76, label %if.end43, label %is_media_entity_v4l2_video_device.exit.out_crit_edge

is_media_entity_v4l2_video_device.exit.out_crit_edge: ; preds = %is_media_entity_v4l2_video_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end43:                                         ; preds = %is_media_entity_v4l2_video_device.exit
  %and44 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %sink51 = getelementptr inbounds %struct.prp_priv, ptr %3, i32 0, i32 11
  br i1 %tobool45.not, label %if.else50, label %if.then46

if.then46:                                        ; preds = %if.end43
  %26 = ptrtoint ptr %sink51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sink51, align 4
  %tobool47.not = icmp eq ptr %27, null
  br i1 %tobool47.not, label %if.end52, label %if.then46.out_crit_edge

if.then46.out_crit_edge:                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %sink51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %sink51, align 4
  br label %out

if.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %sink51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %17, ptr %sink51, align 4
  br label %out

out:                                              ; preds = %if.end52, %if.else50, %if.then46.out_crit_edge, %is_media_entity_v4l2_video_device.exit.out_crit_edge, %if.end39.out_crit_edge, %if.else, %if.end35, %if.then32.out_crit_edge, %is_media_entity_v4l2_subdev.exit.out_crit_edge, %if.then14.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end35 ], [ 0, %if.else ], [ 0, %if.end52 ], [ 0, %if.else50 ], [ -22, %is_media_entity_v4l2_subdev.exit.out_crit_edge ], [ -16, %if.then32.out_crit_edge ], [ -22, %is_media_entity_v4l2_video_device.exit.out_crit_edge ], [ -16, %if.then46.out_crit_edge ], [ -22, %if.then14.out_crit_edge ], [ -22, %if.end39.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prp_eof_timeout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -588
  %vdev1 = getelementptr i8, ptr %t, i32 -520
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %name = getelementptr inbounds %struct.imx_ic_priv, ptr %3, i32 0, i32 2, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name) #8
  tail call void @imx_media_capture_device_error(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_media_capture_device_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !110, !112, !113, !115, !117, !118, !119, !120, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @imx_ic_prpencvf_ops, !1, !"imx_ic_prpencvf_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1366, i32 19}
!2 = !{ptr @prp_subdev_ops, !3, !"prp_subdev_ops", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1319, i32 37}
!4 = !{ptr @prp_video_ops, !5, !"prp_video_ops", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1308, i32 43}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1189, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @prp_s_stream.__UNIQUE_ID_ddebug316, !7, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!12 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 699, i32 11}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 701, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @prp_start._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @prp_start._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 715, i32 11}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 717, i32 3}
!25 = !{ptr @prp_start._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @prp_start._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 726, i32 3}
!29 = !{ptr @prp_start._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @prp_start._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 159, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @prp_get_ipu_resources._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @prp_get_ipu_resources._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 167, i32 3}
!38 = !{ptr @prp_get_ipu_resources._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @prp_get_ipu_resources._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @prp_get_ipu_resources._entry.21, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 176, i32 3}
!42 = !{ptr @prp_get_ipu_resources._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @prp_get_ipu_resources._entry.23, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 185, i32 3}
!45 = !{ptr @prp_get_ipu_resources._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @prp_channel, !47, !"prp_channel", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 111, i32 3}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 470, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @prp_setup_rotation._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @prp_setup_rotation._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 478, i32 3}
!58 = !{ptr @prp_setup_rotation._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @prp_setup_rotation._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 484, i32 3}
!62 = !{ptr @prp_setup_rotation._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @prp_setup_rotation._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 492, i32 3}
!66 = !{ptr @prp_setup_rotation._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @prp_setup_rotation._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 501, i32 3}
!70 = !{ptr @prp_setup_rotation._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @prp_setup_rotation._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 511, i32 3}
!74 = !{ptr @prp_setup_rotation._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @prp_setup_rotation._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 523, i32 3}
!78 = !{ptr @prp_setup_rotation._entry.43, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @prp_setup_rotation._entry_ptr.45, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 599, i32 3}
!82 = !{ptr @prp_setup_norotation._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @prp_setup_norotation._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @prp_setup_norotation._entry.47, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 608, i32 3}
!86 = !{ptr @prp_setup_norotation._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @prp_setup_norotation._entry.49, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 618, i32 3}
!89 = !{ptr @prp_setup_norotation._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 282, i32 2}
!92 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @prp_nfb4eof_interrupt._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @prp_nfb4eof_interrupt._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 768, i32 3}
!97 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @prp_stop._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @prp_stop._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 773, i32 3}
!102 = !{ptr @prp_stop._entry.55, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @prp_stop._entry_ptr.57, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @prp_pad_ops, !105, !"prp_pad_ops", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1300, i32 41}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!108 = !{ptr @prp_internal_ops, !109, !"prp_internal_ops", i1 false, i1 false}
!109 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1324, i32 46}
!110 = !{ptr @prp_init_controls._key, !111, !"_key", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1145, i32 2}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @prp_ctrl_ops, !114, !"prp_ctrl_ops", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1135, i32 35}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1098, i32 3}
!117 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @prp_s_ctrl._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @prp_s_ctrl._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @prp_entity_ops, !121, !"prp_entity_ops", i1 false, i1 false}
!121 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1314, i32 45}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1022, i32 2}
!124 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @prp_link_setup.__UNIQUE_ID_ddebug315, !123, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!126 = !{ptr @prp_init.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1341, i32 2}
!128 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @prp_init.__key.65, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1342, i32 2}
!131 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @prp_init.__key.67, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 1344, i32 2}
!134 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/media/imx/imx-ic-prpencvf.c", i32 302, i32 2}
!137 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @prp_eof_timeout._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @prp_eof_timeout._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i64 2148788688, i64 2148788693, i64 2148788706, i64 2148788750, i64 2148788784, i64 2148788805}
!150 = !{i8 0, i8 2}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 1, i32 2000}
