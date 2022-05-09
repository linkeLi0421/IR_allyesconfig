; ModuleID = '/llk/IR_all_yes/drivers/media/platform/omap3isp/ispcsi2.c_pt.bc'
source_filename = "../drivers/media/platform/omap3isp/ispcsi2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.isp_video_operations = type { ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.isp_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.isp_video, ptr, i8, i8, i8, i32, i8, i32, ptr, [8 x %struct.isp_csi2_ctx_cfg], [2 x %struct.isp_csi2_timing_cfg], %struct.isp_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.isp_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.isp_pipeline, %struct.mutex, i8, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, i32, ptr }
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
%struct.isp_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, i32, i32, i32, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.isp_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.isp_csi2_timing_cfg = type { i8, i8, i16 }
%struct.isp_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.isp_csiphy = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, i8 }
%struct.isp_device = type { %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, i32, [14 x ptr], i32, ptr, i32, i32, ptr, %struct.spinlock, %struct.mutex, i8, %struct.media_entity_enum, i32, i32, i32, [4 x ptr], [2 x %struct.isp_xclk], %struct.ispstat, %struct.ispstat, %struct.ispstat, %struct.isp_res_device, %struct.isp_prev_device, %struct.isp_ccdc_device, %struct.isp_csi2_device, %struct.isp_csi2_device, %struct.isp_ccp2_device, %struct.isp_csiphy, %struct.isp_csiphy, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.isp_xclk = type { ptr, %struct.clk_hw, ptr, i32, %struct.spinlock, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ispstat = type { %struct.v4l2_subdev, %struct.media_pad, i8, i8, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.mutex, ptr, i8, i16, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.isp_res_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, %struct.isp_video, %struct.isp_video, i32, i32, %struct.resizer_ratio, i32, i8, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.anon.95 }
%struct.resizer_ratio = type { i32, i32 }
%struct.anon.95 = type { %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isp_prev_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_ctrl_handler, i32, i32, %struct.isp_video, %struct.isp_video, %struct.anon.96, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.96 = type { i32, [2 x %struct.prev_params], i32, %struct.spinlock }
%struct.prev_params = type { i32, i32, i32, %struct.omap3isp_prev_cfa, %struct.omap3isp_prev_csup, %struct.omap3isp_prev_luma, %struct.omap3isp_prev_nf, %struct.omap3isp_prev_dcor, %struct.omap3isp_prev_gtables, %struct.omap3isp_prev_wbal, %struct.omap3isp_prev_blkadj, %struct.omap3isp_prev_rgbtorgb, %struct.omap3isp_prev_csc, %struct.omap3isp_prev_hmed, %struct.omap3isp_prev_yclimit, i8, i8 }
%struct.omap3isp_prev_cfa = type { i32, i8, i8, [4 x [144 x i32]] }
%struct.omap3isp_prev_csup = type { i8, i8, i8 }
%struct.omap3isp_prev_luma = type { [128 x i32] }
%struct.omap3isp_prev_nf = type { i8, [64 x i32] }
%struct.omap3isp_prev_dcor = type { i8, [4 x i32] }
%struct.omap3isp_prev_gtables = type { [1024 x i32], [1024 x i32], [1024 x i32] }
%struct.omap3isp_prev_wbal = type { i16, i8, i8, i8, i8 }
%struct.omap3isp_prev_blkadj = type { i8, i8, i8 }
%struct.omap3isp_prev_rgbtorgb = type { [3 x [3 x i16]], [3 x i16] }
%struct.omap3isp_prev_csc = type { [3 x [3 x i16]], [3 x i16] }
%struct.omap3isp_prev_hmed = type { i8, i8, i8 }
%struct.omap3isp_prev_yclimit = type { i8, i8, i8, i8 }
%struct.isp_ccdc_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, i32, i32, %struct.isp_video, i8, %struct.omap3isp_ccdc_blcomp, %struct.omap3isp_ccdc_bclamp, %struct.ispccdc_fpc, %struct.ispccdc_lsc, i32, i32, i8, i32, i8, i32, %struct.spinlock, %struct.wait_queue_head, i32, i8, %struct.mutex }
%struct.omap3isp_ccdc_blcomp = type { i8, i8, i8, i8 }
%struct.omap3isp_ccdc_bclamp = type { i8, i8, i8, i8, i16 }
%struct.ispccdc_fpc = type { ptr, i32, i32 }
%struct.ispccdc_lsc = type { i32, %struct.work_struct, %struct.spinlock, ptr, ptr, %struct.list_head }
%struct.isp_ccp2_device = type { %struct.v4l2_subdev, [2 x %struct.v4l2_mbus_framefmt], [2 x %struct.media_pad], i32, i32, %struct.isp_interface_lcx_config, %struct.isp_interface_mem_config, %struct.isp_video, ptr, ptr, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.isp_interface_lcx_config = type { i32, i32, i32, i32 }
%struct.isp_interface_mem_config = type { i32, i32, i32, i32, i32 }
%struct.isp_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.isp_async_subdev = type { %struct.v4l2_async_subdev, %struct.isp_bus_cfg }
%struct.v4l2_async_subdev = type { i32, %union.anon.93, %struct.list_head, %struct.list_head }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i16 }
%struct.isp_bus_cfg = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.isp_parallel_cfg, [4 x i8] }
%struct.isp_parallel_cfg = type { i16, [2 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.isp_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap3isp_csi2_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 507, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CSI2: Soft reset try count exceeded!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap3isp_csi2_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/omap3isp/ispcsi2.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap3isp_csi2_reset._entry_ptr = internal global ptr @omap3isp_csi2_reset._entry, section ".printk_index", align 4
@omap3isp_csi2_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 526, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CSI2: Reset for CSI2_96M_FCLK domain Failed!\0A\00", [50 x i8] zeroinitializer }, align 32
@omap3isp_csi2_reset._entry_ptr.7 = internal global ptr @omap3isp_csi2_reset._entry.5, section ".printk_index", align 4
@omap3isp_csi2_isr.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap3_isp\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap3isp_csi2_isr\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CSI2: ComplexIO Error IRQ %x\0A\00", [34 x i8] zeroinitializer }, align 32
@omap3isp_csi2_isr.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"CSI2 Err: OCP:%d, Short_pack:%d, ECC:%d, CPXIO2:%d, FIFO_OVF:%d,\0A\00", [62 x i8] zeroinitializer }, align 32
@omap3isp_csi2_isr.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -60, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CSI2: ECC correction done\0A\00", [37 x i8] zeroinitializer }, align 32
@omap3isp_csi2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&csi2a->wait\00", [19 x i8] zeroinitializer }, align 32
@omap3isp_csi2_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&csi2c->wait\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CSI2: pixel format %08x unsupported!\0A\00", [56 x i8] zeroinitializer }, align 32
@__csi2_fmt_map = internal unnamed_addr constant [3 x [2 x [2 x [2 x i16]]]] [[2 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 171, i16 171], [2 x i16] zeroinitializer], [2 x [2 x i16]] [[2 x i16] [i16 303, i16 303], [2 x i16] zeroinitializer]], [2 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 42, i16 64], [2 x i16] [i16 682, i16 704]], [2 x [2 x i16]] [[2 x i16] [i16 298, i16 298], [2 x i16] [i16 810, i16 832]]], [2 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 30, i16 30], [2 x i16] zeroinitializer], [2 x [2 x i16]] [[2 x i16] [i16 158, i16 158], [2 x i16] zeroinitializer]]], align 2
@csi2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @csi2_video_ops, ptr null, ptr null, ptr null, ptr @csi2_pad_ops }, [32 x i8] zeroinitializer }, align 32
@csi2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @csi2_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OMAP3 ISP CSI2a\00", [16 x i8] zeroinitializer }, align 32
@csi2_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @csi2_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@csi2_ispvideo_ops = internal constant { %struct.isp_video_operations, [28 x i8] } { %struct.isp_video_operations { ptr @csi2_queue }, [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSI2a\00", [26 x i8] zeroinitializer }, align 32
@csi2_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @csi2_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@csi2_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @csi2_enum_mbus_code, ptr @csi2_enum_frame_size, ptr null, ptr @csi2_get_format, ptr @csi2_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@csi2_set_stream.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 16, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csi2_set_stream\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: module stop timeout.\0A\00", [38 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@csi2_configure.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csi2_configure\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: l3_ick %lu, external_rate %u, vp_out_ctrl %u\0A\00", [46 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csi2_print_status\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"-------------CSI2 Register dump-------------\0A\00", [50 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 SYSCONFIG=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 SYSSTATUS=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 -95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 IRQENABLE=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.28, i8 0, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"###CSI2 IRQSTATUS=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.29, i8 0, i8 -95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"###CSI2 CTRL=0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.30, i8 0, i8 -95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###CSI2 DBG_H=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.31, i8 0, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###CSI2 GNQ=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.32, i8 0, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"###CSI2 PHY_CFG=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.33, i8 0, i8 -94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"###CSI2 PHY_IRQSTATUS=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.34, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 SHORT_PACKET=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.35, i8 0, i8 -93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"###CSI2 PHY_IRQENABLE=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.36, i8 0, i8 -93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"###CSI2 DBG_P=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.37, i8 0, i8 -93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###CSI2 TIMING=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.38, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 CTX_CTRL1(0)=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.39, i8 0, i8 -92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 CTX_CTRL2(0)=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.40, i8 0, i8 -92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"###CSI2 CTX_DAT_OFST(0)=0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.41, i8 0, i8 -92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"###CSI2 CTX_DAT_PING_ADDR(0)=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.42, i8 0, i8 -92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"###CSI2 CTX_DAT_PONG_ADDR(0)=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.43, i8 0, i8 -91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CSI2 CTX_IRQENABLE(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.44, i8 0, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"###CSI2 CTX_IRQSTATUS(0)=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.45, i8 0, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"###CSI2 CTX_CTRL3(0)=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@csi2_print_status.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.23, ptr @.str.2, ptr @.str.46, i8 0, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"--------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@csi2_input_fmts = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 12298, i32 12297, i32 12303, i32 12301, i32 12295, i32 12299, i32 12302, i32 12300, i32 8200], [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 8200, i64 12295, i64 12297, i64 12298, i64 12299, i64 12300, i64 12301, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [11 x i64] [i64 9, i64 32, i64 8200, i64 12295, i64 12297, i64 12298, i64 12299, i64 12300, i64 12301, i64 12302, i64 12303]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 131073]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 507, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 525, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 753, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 763, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 786, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1294, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1307, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 187, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"csi2_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1117, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"csi2_internal_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1123, i32 46 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1242, i32 20 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"csi2_media_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1191, i32 45 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"csi2_ispvideo_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 821, i32 42 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1268, i32 46 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"csi2_video_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1104, i32 43 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"csi2_pad_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1109, i32 41 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1088, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 574, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 640, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 642, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 643, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 644, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 645, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 646, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 647, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 648, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 649, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 650, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 651, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 652, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 653, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 654, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 655, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 656, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 657, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 658, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 659, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 660, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 661, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 662, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 664, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"csi2_input_fmts\00", align 1
@___asan_gen_.216 = private constant [45 x i8] c"../drivers/media/platform/omap3isp/ispcsi2.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 77, i32 27 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 998, i32 6 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @omap3isp_csi2_reset._entry, ptr @omap3isp_csi2_reset._entry.5, ptr @omap3isp_csi2_reset._entry_ptr, ptr @omap3isp_csi2_reset._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @omap3isp_csi2_init.__key, ptr @.str.13, ptr @omap3isp_csi2_init.__key.14, ptr @.str.15, ptr @.str.16, ptr @csi2_ops, ptr @csi2_internal_ops, ptr @.str.17, ptr @csi2_media_ops, ptr @csi2_ispvideo_ops, ptr @.str.18, ptr @csi2_video_ops, ptr @csi2_pad_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @csi2_input_fmts, ptr @.str.47], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_csi2_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_csi2_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_csi2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3isp_csi2_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_ispvideo_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi2_input_fmts to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_csi2_reset(ptr nocapture noundef readonly %csi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp1 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 4
  %0 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp1, align 8
  %available = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 5
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 11
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %entity = getelementptr inbounds %struct.isp_csiphy, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %regs1 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regs1, align 1
  %conv = zext i8 %9 to i32
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !140
  %or.i = or i32 %12, 2
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %or.i) #6, !srcloc !141
  %15 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regs1, align 1
  %conv6107 = zext i8 %16 to i32
  %arrayidx.i108 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv6107
  %17 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i108, align 4
  %add.ptr.i109 = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #6, !srcloc !140
  %and110 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %cmp.not111 = icmp eq i32 %and110, 0
  br i1 %cmp.not111, label %if.end9.preheader, label %if.end4.if.end25_crit_edge

if.end4.if.end25_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end9.preheader:                                ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #6
  %21 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %regs1, align 1
  %conv6 = zext i8 %22 to i32
  %arrayidx.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv6
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !140
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end9.1, label %if.end9.preheader.if.end25_crit_edge

if.end9.preheader.if.end25_crit_edge:             ; preds = %if.end9.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end9.1:                                        ; preds = %if.end9.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #6
  %27 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %regs1, align 1
  %conv6.1 = zext i8 %28 to i32
  %arrayidx.i.1 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv6.1
  %29 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #6, !srcloc !140
  %and.1 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp.not.1 = icmp eq i32 %and.1, 0
  br i1 %cmp.not.1, label %if.end9.2, label %if.end9.1.if.end25_crit_edge

if.end9.1.if.end25_crit_edge:                     ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end9.2:                                        ; preds = %if.end9.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #6
  %33 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %regs1, align 1
  %conv6.2 = zext i8 %34 to i32
  %arrayidx.i.2 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv6.2
  %35 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #6, !srcloc !140
  %and.2 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp.not.2 = icmp eq i32 %and.2, 0
  br i1 %cmp.not.2, label %if.end9.3, label %if.end9.2.if.end25_crit_edge

if.end9.2.if.end25_crit_edge:                     ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end9.3:                                        ; preds = %if.end9.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 21474800) #6
  %39 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %regs1, align 1
  %conv6.3 = zext i8 %40 to i32
  %arrayidx.i.3 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv6.3
  %41 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %42, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #6, !srcloc !140
  %and.3 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp.not.3 = icmp eq i32 %and.3, 0
  br i1 %cmp.not.3, label %do.end24, label %if.end9.3.if.end25_crit_edge

if.end9.3.if.end25_crit_edge:                     ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end24:                                         ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end9.3.if.end25_crit_edge, %if.end9.2.if.end25_crit_edge, %if.end9.1.if.end25_crit_edge, %if.end9.preheader.if.end25_crit_edge, %if.end4.if.end25_crit_edge
  %revision = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %47)
  %cmp26 = icmp eq i32 %47, 240
  br i1 %cmp26, label %if.then28, label %if.end25.do.body32.preheader_crit_edge

if.end25.do.body32.preheader_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32.preheader

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %regs1, align 1
  %conv30 = zext i8 %49 to i32
  %arrayidx.i.i88 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv30
  %50 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i88, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %51, i32 80
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89) #6, !srcloc !140
  %or.i90 = or i32 %52, 1073741824
  %53 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i88, align 4
  %add.ptr.i5.i91 = getelementptr i8, ptr %54, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i91, i32 %or.i90) #6, !srcloc !141
  br label %do.body32.preheader

do.body32.preheader:                              ; preds = %if.then28, %if.end25.do.body32.preheader_crit_edge
  br label %do.body32

do.body32:                                        ; preds = %if.end39.do.body32_crit_edge, %do.body32.preheader
  %i.0 = phi i32 [ %dec, %if.end39.do.body32_crit_edge ], [ 100, %do.body32.preheader ]
  %55 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy, align 4
  %phy_regs = getelementptr inbounds %struct.isp_csiphy, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %phy_regs, align 4
  %arrayidx.i92 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %58
  %59 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i92, align 4
  %add.ptr.i93 = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #6, !srcloc !140
  %and35 = and i32 %61, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %if.end39, label %if.end51

if.end39:                                         ; preds = %do.body32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 21474800) #6
  %dec = add nsw i32 %i.0, -1
  %cmp41.not = icmp eq i32 %dec, 0
  br i1 %cmp41.not, label %do.end49, label %if.end39.do.body32_crit_edge

if.end39.do.body32_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %dev50 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end51:                                         ; preds = %do.body32
  %autoidle = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 18
  %65 = ptrtoint ptr %autoidle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %autoidle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool52.not = icmp eq i32 %66, 0
  %67 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %regs1, align 1
  %conv60 = zext i8 %68 to i32
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %70)
  %cmp57 = icmp eq i32 %70, 240
  %cond = zext i1 %cmp57 to i32
  %arrayidx.i.i94 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv60
  %71 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i94, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %72, i32 16
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #6, !srcloc !140
  %and.i = and i32 %73, -12290
  %or = or i32 %and.i, %cond
  %or.i96 = or i32 %or, 8192
  %74 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i94, align 4
  %add.ptr.i5.i97 = getelementptr i8, ptr %75, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i97, i32 %or.i96) #6, !srcloc !141
  br label %cleanup

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i98 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv60
  %76 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i98, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %77, i32 16
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i99) #6, !srcloc !140
  %and.i100 = and i32 %78, -12290
  %or.i101 = or i32 %and.i100, 4096
  %79 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i98, align 4
  %add.ptr.i5.i102 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i102, i32 %or.i101) #6, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then53, %do.end49, %do.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end24 ], [ -16, %do.end49 ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then53 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_csi2_isr(ptr noundef %csi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %csi2, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %isp2 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 4
  %2 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp2, align 8
  %available = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 5
  %4 = ptrtoint ptr %available to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs1 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regs1, align 1
  %conv = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !140
  %11 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regs1, align 1
  %conv4 = zext i8 %12 to i32
  %arrayidx.i126 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv4
  %13 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i126, align 4
  %add.ptr.i127 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %10) #6, !srcloc !141
  %and = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end20_crit_edge, label %if.then6

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then6:                                         ; preds = %if.end
  %15 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regs1, align 1
  %conv8 = zext i8 %16 to i32
  %arrayidx.i128 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv8
  %17 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %18, i32 84
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #6, !srcloc !140
  %20 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %regs1, align 1
  %conv11 = zext i8 %21 to i32
  %arrayidx.i130 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv11
  %22 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %23, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %19) #6, !srcloc !141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_csi2_isr.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_csi2_isr, %do.end)) #6
          to label %if.then18 [label %do.end], !srcloc !142

if.then18:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_csi2_isr.__UNIQUE_ID_ddebug326, ptr noundef %25, ptr noundef nonnull @.str.10, i32 noundef %19) #6
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.then6
  %error = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %error, align 1
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.if.end20_crit_edge
  %and21 = and i32 %10, 27904
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end58_crit_edge, label %do.body24

if.end20.if.end58_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.body24:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_csi2_isr.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_csi2_isr, %do.end56)) #6
          to label %if.then38 [label %do.end56], !srcloc !142

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %dev39 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev39, align 8
  %and40 = lshr i32 %10, 14
  %and40.lobit = and i32 %and40, 1
  %and42 = lshr i32 %10, 13
  %and42.lobit = and i32 %and42, 1
  %and45 = lshr i32 %10, 11
  %and45.lobit = and i32 %and45, 1
  %and48 = lshr i32 %10, 10
  %and48.lobit = and i32 %and48, 1
  %and51 = lshr i32 %10, 8
  %and51.lobit = and i32 %and51, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_csi2_isr.__UNIQUE_ID_ddebug327, ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %and40.lobit, i32 noundef %and42.lobit, i32 noundef %and45.lobit, i32 noundef %and48.lobit, i32 noundef %and51.lobit) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then38, %do.body24
  %error57 = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %error57 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %error57, align 1
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end20.if.end58_crit_edge
  %wait = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 16
  %stopping = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 17
  %call59 = tail call i32 @omap3isp_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %and63 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end66_crit_edge, label %if.then65

if.end62.if.end66_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then65:                                        ; preds = %if.end62
  %contexts = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12
  %30 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %isp2, align 8
  %32 = ptrtoint ptr %contexts to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %contexts, align 4
  %conv.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %regs1, align 1
  %conv2.i = zext i8 %35 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add.i = add nuw nsw i32 %mul.i, 136
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %31, i32 0, i32 6, i32 %conv2.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !140
  %39 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %regs1, align 1
  %conv4.i = zext i8 %40 to i32
  %arrayidx.i41.i = getelementptr %struct.isp_device, ptr %31, i32 0, i32 6, i32 %conv4.i
  %41 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i41.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %42, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %38) #6, !srcloc !141
  %and.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then65.if.end66_crit_edge, label %if.end.i

if.then65.if.end66_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end.i:                                         ; preds = %if.then65
  %frame_skip.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 10
  %43 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool7.not.i = icmp eq i32 %44, 0
  br i1 %tobool7.not.i, label %if.end16.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  %dec.i = add i32 %44, -1
  %45 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dec.i, ptr %frame_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then12.i, label %if.then8.i.if.end66_crit_edge

if.then8.i.if.end66_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then12.i:                                      ; preds = %if.then8.i
  %call13.i = tail call fastcc zeroext i16 @csi2_ctx_map_format(ptr noundef %csi2) #6
  %format_id.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 3
  %46 = ptrtoint ptr %format_id.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %call13.i, ptr %format_id.i, align 4
  tail call fastcc void @csi2_ctx_config(ptr noundef %31, ptr noundef %csi2, ptr noundef %contexts) #6
  %47 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %regs1, align 1
  %conv.i.i = zext i8 %48 to i32
  %add.i.i = add nuw nsw i32 %mul.i, 112
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %31, i32 0, i32 6, i32 %conv.i.i
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 %add.i.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !140
  %52 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frame_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool2.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i.i = shl i32 %53, 8
  %phi.bo32.i.i = or i32 %phi.bo.i.i, 17
  br label %csi2_ctx_enable.exit.i

if.else.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %output.i.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 8
  %54 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %output.i.i, align 8
  %and.i.i = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool5.not.i.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit.i

csi2_ctx_enable.exit.i:                           ; preds = %if.else.i.i, %if.then3.i.i
  %skip.0.i.i = phi i32 [ %phi.bo32.i.i, %if.then3.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %and8.i.i = and i32 %51, -65298
  %or10.i.i = or i32 %skip.0.i.i, %and8.i.i
  %56 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %regs1, align 1
  %conv15.i.i = zext i8 %57 to i32
  %arrayidx.i33.i.i = getelementptr %struct.isp_device, ptr %31, i32 0, i32 6, i32 %conv15.i.i
  %58 = ptrtoint ptr %arrayidx.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i33.i.i, align 4
  %add.ptr.i34.i.i = getelementptr i8, ptr %59, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 %or10.i.i) #6, !srcloc !141
  %enabled.i.i = getelementptr %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 %conv.i, i32 12
  br label %cleanup.sink.split.i

if.end16.i:                                       ; preds = %if.end.i
  %output.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 8
  %60 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %output.i, align 8
  %and17.i = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end66_crit_edge, label %if.then19.i

if.end16.i.if.end66_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then19.i:                                      ; preds = %if.end16.i
  %62 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %isp2, align 8
  %64 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %regs1, align 1
  %conv.i.i.i = zext i8 %65 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.isp_device, ptr %63, i32 0, i32 6, i32 %conv.i.i.i
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %67, i32 112
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !140
  %and12.i.i.i = and i32 %68, -2
  %69 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %regs1, align 1
  %conv15.i.i.i = zext i8 %70 to i32
  %arrayidx.i33.i.i.i = getelementptr %struct.isp_device, ptr %63, i32 0, i32 6, i32 %conv15.i.i.i
  %71 = ptrtoint ptr %arrayidx.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i33.i.i.i, align 4
  %add.ptr.i34.i.i.i = getelementptr i8, ptr %72, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i.i, i32 %and12.i.i.i) #6, !srcloc !141
  %enabled.i.i.i = getelementptr %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 12
  %73 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %enabled.i.i.i, align 1
  %video_out.i.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 3
  %call.i.i = tail call ptr @omap3isp_video_buffer_next(ptr noundef %video_out.i.i) #6
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then19.i.if.end66_crit_edge, label %if.end.i.i

if.then19.i.if.end66_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end.i.i:                                       ; preds = %if.then19.i
  %dma.i.i = getelementptr inbounds %struct.isp_buffer, ptr %call.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma.i.i, align 8
  %76 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %isp2, align 8
  %ping_addr.i.i.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 7
  %78 = ptrtoint ptr %ping_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %ping_addr.i.i.i, align 4
  %pong_addr.i.i.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 8
  %79 = ptrtoint ptr %pong_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %75, ptr %pong_addr.i.i.i, align 4
  %80 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %regs1, align 1
  %conv.i10.i.i = zext i8 %81 to i32
  %82 = ptrtoint ptr %contexts to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %contexts, align 4
  %conv3.i.i.i = zext i8 %83 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv3.i.i.i, 5
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 124
  %arrayidx.i.i11.i.i = getelementptr %struct.isp_device, ptr %77, i32 0, i32 6, i32 %conv.i10.i.i
  %84 = ptrtoint ptr %arrayidx.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i.i11.i.i, align 4
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %85, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12.i.i, i32 %75) #6, !srcloc !141
  %86 = ptrtoint ptr %pong_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pong_addr.i.i.i, align 4
  %88 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %regs1, align 1
  %conv6.i.i.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %contexts to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %contexts, align 4
  %conv8.i.i.i = zext i8 %91 to i32
  %mul9.i.i.i = shl nuw nsw i32 %conv8.i.i.i, 5
  %add10.i.i.i = add nuw nsw i32 %mul9.i.i.i, 128
  %arrayidx.i21.i.i.i = getelementptr %struct.isp_device, ptr %77, i32 0, i32 6, i32 %conv6.i.i.i
  %92 = ptrtoint ptr %arrayidx.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i21.i.i.i, align 4
  %add.ptr.i22.i.i.i = getelementptr i8, ptr %93, i32 %add10.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i.i, i32 %87) #6, !srcloc !141
  %94 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %regs1, align 1
  %conv.i14.i.i = zext i8 %95 to i32
  %arrayidx.i.i15.i.i = getelementptr %struct.isp_device, ptr %63, i32 0, i32 6, i32 %conv.i14.i.i
  %96 = ptrtoint ptr %arrayidx.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i15.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %97, i32 112
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i.i) #6, !srcloc !140
  %99 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %frame_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool2.not.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i.i.i = shl i32 %100, 8
  %phi.bo32.i.i.i = or i32 %phi.bo.i.i.i, 17
  br label %csi2_ctx_enable.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %output.i, align 8
  %and.i.i.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool5.not.i.i.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit.i.i

csi2_ctx_enable.exit.i.i:                         ; preds = %if.else.i.i.i, %if.then3.i.i.i
  %skip.0.i.i.i = phi i32 [ %phi.bo32.i.i.i, %if.then3.i.i.i ], [ %spec.select.i.i.i, %if.else.i.i.i ]
  %and8.i.i.i = and i32 %98, -65298
  %or10.i.i.i = or i32 %skip.0.i.i.i, %and8.i.i.i
  %103 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %regs1, align 1
  %conv15.i17.i.i = zext i8 %104 to i32
  %arrayidx.i33.i18.i.i = getelementptr %struct.isp_device, ptr %63, i32 0, i32 6, i32 %conv15.i17.i.i
  %105 = ptrtoint ptr %arrayidx.i33.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i33.i18.i.i, align 4
  %add.ptr.i34.i19.i.i = getelementptr i8, ptr %106, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i19.i.i, i32 %or10.i.i.i) #6, !srcloc !141
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %csi2_ctx_enable.exit.i.i, %csi2_ctx_enable.exit.i
  %enabled.i.i.sink.i = phi ptr [ %enabled.i.i.i, %csi2_ctx_enable.exit.i.i ], [ %enabled.i.i, %csi2_ctx_enable.exit.i ]
  %107 = ptrtoint ptr %enabled.i.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %enabled.i.i.sink.i, align 1
  br label %if.end66

if.end66:                                         ; preds = %cleanup.sink.split.i, %if.then19.i.if.end66_crit_edge, %if.end16.i.if.end66_crit_edge, %if.then8.i.if.end66_crit_edge, %if.then65.if.end66_crit_edge, %if.end62.if.end66_crit_edge
  %and67 = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %do.body70

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3isp_csi2_isr.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap3isp_csi2_isr, %cleanup)) #6
          to label %if.then84 [label %cleanup], !srcloc !142

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %dev85 = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %108 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev85, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap3isp_csi2_isr.__UNIQUE_ID_ddebug328, ptr noundef %109, ptr noundef nonnull @.str.12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body70, %if.end66.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_is_stopping(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_csi2_unregister_entities(ptr noundef %csi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister_subdev(ptr noundef %csi2) #6
  %video_out = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 3
  tail call void @omap3isp_video_unregister(ptr noundef %video_out) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_csi2_register_entities(ptr noundef %csi2, ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.v4l2_subdev, ptr %csi2, i32 0, i32 14
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev1, align 4
  %call = tail call i32 @v4l2_device_register_subdev(ptr noundef %vdev, ptr noundef %csi2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %video_out = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 3
  %call3 = tail call i32 @omap3isp_video_register(ptr noundef %video_out, ptr noundef %vdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call3, %if.end.error_crit_edge ]
  tail call void @v4l2_device_unregister_subdev(ptr noundef %csi2) #6
  %video_out.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 3
  tail call void @omap3isp_video_unregister(ptr noundef %video_out.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3isp_csi2_init(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  %format.i.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_csi2a = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27
  %isp1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 4
  %0 = ptrtoint ptr %isp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %isp, ptr %isp1, align 8
  %available = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 5
  %1 = ptrtoint ptr %available to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %available, align 4
  %regs1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 6
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %regs1, align 1
  %regs2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 7
  %3 = ptrtoint ptr %regs2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %regs2, align 2
  %isp_csiphy2 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 31
  %phy = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 11
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %isp_csiphy2, ptr %phy, align 4
  %state = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 15
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %wait = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.13, ptr noundef nonnull @omap3isp_csi2_init.__key) #6
  %pads1.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 1
  tail call void @v4l2_subdev_init(ptr noundef %isp_csi2a, ptr noundef nonnull @csi2_ops) #6
  %internal_ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 0, i32 7
  %6 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @csi2_internal_ops, ptr %internal_ops.i, align 4
  %name.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str.17, i32 noundef 32) #6
  %grp_id.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 0, i32 10
  %7 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %grp_id.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 0, i32 11
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %isp_csi2a, ptr %dev_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %10, 4
  store i32 %or.i, ptr %flags.i, align 4
  %flags3.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 27, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %flags3.i, align 4
  %flags5.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %flags5.i, align 4
  %ops.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 0, i32 0, i32 11
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @csi2_media_ops, ptr %ops.i, align 4
  %call6.i = tail call i32 @media_entity_pads_init(ptr noundef %isp_csi2a, i16 noundef zeroext 2, ptr noundef %pads1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %csi2_init_entities.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

csi2_init_entities.exit:                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i.i) #6
  %14 = getelementptr inbounds i8, ptr %format.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 84)
  %16 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %format.i.i, align 4
  %format1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12298, ptr %code.i.i, align 4
  %18 = ptrtoint ptr %format1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %format1.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %height.i.i, align 4
  %call.i.i = call i32 @csi2_set_format(ptr noundef %isp_csi2a, ptr noundef null, ptr noundef nonnull %format.i.i) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i.i) #6
  %video_out.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3
  %type.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3, i32 1
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type.i, align 8
  %ops9.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3, i32 20
  %21 = ptrtoint ptr %ops9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @csi2_ispvideo_ops, ptr %ops9.i, align 4
  %bpl_alignment.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3, i32 7
  %22 = ptrtoint ptr %bpl_alignment.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %bpl_alignment.i, align 4
  %bpl_zero_padding.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3, i32 8
  %23 = ptrtoint ptr %bpl_zero_padding.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %bpl_zero_padding.i, align 8
  %bpl_max.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3, i32 9
  %24 = ptrtoint ptr %bpl_max.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 131040, ptr %bpl_max.i, align 4
  %25 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %isp1, align 8
  %isp14.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3, i32 5
  %27 = ptrtoint ptr %isp14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %isp14.i, align 4
  %capture_mem.i = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3, i32 6
  %28 = ptrtoint ptr %capture_mem.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 50331648, ptr %capture_mem.i, align 8
  %call17.i = tail call i32 @omap3isp_video_init(ptr noundef %video_out.i, ptr noundef nonnull @.str.18) #6
  %29 = tail call i32 @llvm.smin.i32(i32 %call17.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp = icmp slt i32 %call17.i, 0
  br i1 %cmp, label %csi2_init_entities.exit.cleanup_crit_edge, label %if.end

csi2_init_entities.exit.cleanup_crit_edge:        ; preds = %csi2_init_entities.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %csi2_init_entities.exit
  %revision = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 4
  %30 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %31)
  %cmp2 = icmp eq i32 %31, 240
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %isp4 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28, i32 4
  %32 = ptrtoint ptr %isp4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %isp, ptr %isp4, align 8
  %available5 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28, i32 5
  %33 = ptrtoint ptr %available5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %available5, align 4
  %regs16 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28, i32 6
  %34 = ptrtoint ptr %regs16 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 11, ptr %regs16, align 1
  %regs27 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28, i32 7
  %35 = ptrtoint ptr %regs27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 13, ptr %regs27, align 2
  %isp_csiphy1 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 30
  %phy8 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28, i32 11
  %36 = ptrtoint ptr %phy8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %isp_csiphy1, ptr %phy8, align 4
  %state9 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28, i32 15
  %37 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %state9, align 4
  %wait11 = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 28, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %wait11, ptr noundef nonnull @.str.15, ptr noundef nonnull @omap3isp_csi2_init.__key.14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %csi2_init_entities.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %csi2_init_entities.exit.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ %call6.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3isp_csi2_cleanup(ptr noundef %isp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %video_out = getelementptr inbounds %struct.isp_device, ptr %isp, i32 0, i32 27, i32 3
  tail call void @omap3isp_video_cleanup(ptr noundef %video_out) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_video_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @csi2_ctx_map_format(ptr nocapture noundef readonly %csi2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 12298, label %entry.sw.epilog_crit_edge
    i32 12303, label %entry.sw.epilog_crit_edge48
    i32 12295, label %entry.sw.epilog_crit_edge49
    i32 12302, label %entry.sw.epilog_crit_edge50
    i32 12297, label %entry.sw.bb1_crit_edge
    i32 12301, label %entry.sw.bb1_crit_edge51
    i32 12299, label %entry.sw.bb1_crit_edge52
    i32 12300, label %entry.sw.bb1_crit_edge53
    i32 8200, label %sw.bb2
  ]

entry.sw.bb1_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.epilog_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge51, %entry.sw.bb1_crit_edge52, %entry.sw.bb1_crit_edge53
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 188, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %1) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge48, %entry.sw.epilog_crit_edge49, %entry.sw.epilog_crit_edge50
  %fmtidx.0 = phi i32 [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge48 ], [ 0, %entry.sw.epilog_crit_edge49 ], [ 0, %entry.sw.epilog_crit_edge50 ]
  %output = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 8
  %3 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %output, align 8
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %sw.epilog.cleanup_crit_edge, label %if.end23

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %4, 1
  %frame_skip = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 10
  %7 = ptrtoint ptr %frame_skip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frame_skip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool24.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool24.not, i32 %and, i32 0
  %isp = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 4
  %9 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isp, align 8
  %revision = getelementptr inbounds %struct.isp_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %12)
  %cmp = icmp eq i32 %12, 240
  %conv = zext i1 %cmp to i32
  %dpcm_decompress = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 9
  %13 = ptrtoint ptr %dpcm_decompress to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dpcm_decompress, align 4, !range !143
  %15 = zext i8 %14 to i32
  %arrayidx36 = getelementptr [3 x [2 x [2 x [2 x i16]]]], ptr @__csi2_fmt_map, i32 0, i32 %fmtidx.0, i32 %spec.select, i32 %15, i32 %conv
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx36, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i16 [ 0, %do.end ], [ %17, %if.end23 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi2_ctx_config(ptr nocapture noundef readonly %isp, ptr nocapture noundef readonly %csi2, ptr noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regs1, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctx, align 4
  %conv1 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv1, 5
  %add = add nuw nsw i32 %mul, 112
  %arrayidx.i = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !140
  %eof_enabled = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 9
  %7 = ptrtoint ptr %eof_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eof_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %and = and i32 %6, -225
  %masksel = select i1 %tobool.not, i32 0, i32 128
  %reg.0 = or i32 %masksel, %and
  %eol_enabled = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 10
  %9 = ptrtoint ptr %eol_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eol_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  %masksel181 = select i1 %tobool2.not, i32 0, i32 64
  %reg.1 = or i32 %reg.0, %masksel181
  %checksum_enabled = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 11
  %11 = ptrtoint ptr %checksum_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %checksum_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %masksel182 = select i1 %tobool8.not, i32 0, i32 32
  %reg.2 = or i32 %reg.1, %masksel182
  %13 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %regs1, align 1
  %conv15 = zext i8 %14 to i32
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctx, align 4
  %conv17 = zext i8 %16 to i32
  %mul18 = shl nuw nsw i32 %conv17, 5
  %add19 = add nuw nsw i32 %mul18, 112
  %arrayidx.i163 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv15
  %17 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i163, align 4
  %add.ptr.i164 = getelementptr i8, ptr %18, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %reg.2) #6, !srcloc !141
  %19 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %regs1, align 1
  %conv21 = zext i8 %20 to i32
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctx, align 4
  %conv23 = zext i8 %22 to i32
  %mul24 = shl nuw nsw i32 %conv23, 5
  %add25 = add nuw nsw i32 %mul24, 116
  %arrayidx.i165 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv21
  %23 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i165, align 4
  %add.ptr.i166 = getelementptr i8, ptr %24, i32 %add25
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #6, !srcloc !140
  %and27 = and i32 %25, -7168
  %virtual_id = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 2
  %26 = ptrtoint ptr %virtual_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %virtual_id, align 2
  %conv28 = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv28, 11
  %or29 = or i32 %shl, %and27
  %format_id = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 3
  %28 = ptrtoint ptr %format_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %format_id, align 4
  %conv31 = zext i16 %29 to i32
  %or33 = or i32 %or29, %conv31
  %dpcm_decompress = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 1
  %30 = ptrtoint ptr %dpcm_decompress to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dpcm_decompress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool34.not = icmp eq i8 %31, 0
  br i1 %tobool34.not, label %entry.if.end42_crit_edge, label %if.then35

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then35:                                        ; preds = %entry
  %dpcm_predictor = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 4
  %32 = ptrtoint ptr %dpcm_predictor to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dpcm_predictor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool36.not = icmp eq i8 %33, 0
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %or38 = or i32 %or33, 1024
  br label %if.end42

if.else39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %and40 = and i32 %or33, -1025
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then37, %entry.if.end42_crit_edge
  %reg.3 = phi i32 [ %or38, %if.then37 ], [ %and40, %if.else39 ], [ %or33, %entry.if.end42_crit_edge ]
  %34 = and i32 %conv31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool46.not = icmp eq i32 %34, 0
  %and48 = and i32 %reg.3, -24577
  %or49 = or i32 %and48, 16384
  %reg.4 = select i1 %tobool46.not, i32 %reg.3, i32 %or49
  %35 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regs1, align 1
  %conv52 = zext i8 %36 to i32
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ctx, align 4
  %conv54 = zext i8 %38 to i32
  %mul55 = shl nuw nsw i32 %conv54, 5
  %add56 = add nuw nsw i32 %mul55, 116
  %arrayidx.i167 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv52
  %39 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i167, align 4
  %add.ptr.i168 = getelementptr i8, ptr %40, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %reg.4) #6, !srcloc !141
  %41 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %regs1, align 1
  %conv58 = zext i8 %42 to i32
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ctx, align 4
  %conv60 = zext i8 %44 to i32
  %mul61 = shl nuw nsw i32 %conv60, 5
  %add62 = add nuw nsw i32 %mul61, 140
  %arrayidx.i169 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv58
  %45 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i169, align 4
  %add.ptr.i170 = getelementptr i8, ptr %46, i32 %add62
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #6, !srcloc !140
  %and64 = and i32 %47, -524257
  %alpha = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 5
  %48 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %alpha, align 4
  %conv65 = zext i16 %49 to i32
  %shl66 = shl nuw nsw i32 %conv65, 5
  %or67 = or i32 %shl66, %and64
  %50 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %regs1, align 1
  %conv69 = zext i8 %51 to i32
  %52 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ctx, align 4
  %conv71 = zext i8 %53 to i32
  %mul72 = shl nuw nsw i32 %conv71, 5
  %add73 = add nuw nsw i32 %mul72, 140
  %arrayidx.i171 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv69
  %54 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i171, align 4
  %add.ptr.i172 = getelementptr i8, ptr %55, i32 %add73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %or67) #6, !srcloc !141
  %56 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %regs1, align 1
  %conv75 = zext i8 %57 to i32
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ctx, align 4
  %conv77 = zext i8 %59 to i32
  %mul78 = shl nuw nsw i32 %conv77, 5
  %add79 = add nuw nsw i32 %mul78, 120
  %arrayidx.i173 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv75
  %60 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i173, align 4
  %add.ptr.i174 = getelementptr i8, ptr %61, i32 %add79
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #6, !srcloc !140
  %and81 = and i32 %62, -131041
  %data_offset = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 6
  %63 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %data_offset, align 2
  %conv82 = zext i16 %64 to i32
  %or84 = or i32 %and81, %conv82
  %65 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %regs1, align 1
  %conv86 = zext i8 %66 to i32
  %67 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ctx, align 4
  %conv88 = zext i8 %68 to i32
  %mul89 = shl nuw nsw i32 %conv88, 5
  %add90 = add nuw nsw i32 %mul89, 120
  %arrayidx.i175 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv86
  %69 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i175, align 4
  %add.ptr.i176 = getelementptr i8, ptr %70, i32 %add90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %or84) #6, !srcloc !141
  %ping_addr = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 7
  %71 = ptrtoint ptr %ping_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ping_addr, align 4
  %73 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %regs1, align 1
  %conv92 = zext i8 %74 to i32
  %75 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ctx, align 4
  %conv94 = zext i8 %76 to i32
  %mul95 = shl nuw nsw i32 %conv94, 5
  %add96 = add nuw nsw i32 %mul95, 124
  %arrayidx.i177 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv92
  %77 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i177, align 4
  %add.ptr.i178 = getelementptr i8, ptr %78, i32 %add96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %72) #6, !srcloc !141
  %pong_addr = getelementptr inbounds %struct.isp_csi2_ctx_cfg, ptr %ctx, i32 0, i32 8
  %79 = ptrtoint ptr %pong_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pong_addr, align 4
  %81 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %regs1, align 1
  %conv98 = zext i8 %82 to i32
  %83 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ctx, align 4
  %conv100 = zext i8 %84 to i32
  %mul101 = shl nuw nsw i32 %conv100, 5
  %add102 = add nuw nsw i32 %mul101, 128
  %arrayidx.i179 = getelementptr %struct.isp_device, ptr %isp, i32 0, i32 6, i32 %conv98
  %85 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i179, align 4
  %add.ptr.i180 = getelementptr i8, ptr %86, i32 %add102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %80) #6, !srcloc !141
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_buffer_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @csi2_set_format(ptr noundef %sd, ptr noundef %cond5, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_video_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_set_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %isp1 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp1, align 8
  %4 = zext i32 %enable to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %enable, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %phy = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @omap3isp_csiphy_acquire(ptr noundef %6, ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %output = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output, align 8
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @omap3isp_sbl_enable(ptr noundef %3, i32 noundef 4) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call fastcc void @csi2_configure(ptr noundef %1)
  tail call fastcc void @csi2_print_status(ptr noundef %1)
  %9 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output, align 8
  %and8 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.if.end13_crit_edge, label %land.lhs.true

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %dmaqueue_flags = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 3, i32 19
  %11 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmaqueue_flags, align 8
  %and10 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %stopping = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #6
  %13 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %stopping, align 4
  %regs1.i = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %regs1.i, align 1
  %conv.i = zext i8 %15 to i32
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !140
  %frame_skip.i = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i = shl i32 %20, 8
  %phi.bo32.i = or i32 %phi.bo.i, 17
  br label %csi2_ctx_enable.exit

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %output, align 8
  %and.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit

csi2_ctx_enable.exit:                             ; preds = %if.else.i, %if.then3.i
  %skip.0.i = phi i32 [ %phi.bo32.i, %if.then3.i ], [ %spec.select.i, %if.else.i ]
  %and8.i = and i32 %18, -65298
  %or10.i = or i32 %skip.0.i, %and8.i
  %23 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %regs1.i, align 1
  %conv15.i = zext i8 %24 to i32
  %arrayidx.i33.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv15.i
  %25 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i33.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %26, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %or10.i) #6, !srcloc !141
  %enabled.i = getelementptr %struct.isp_csi2_device, ptr %1, i32 0, i32 12, i32 0, i32 12
  %27 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %enabled.i, align 1
  %28 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %regs1.i, align 1
  %conv.i70 = zext i8 %29 to i32
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i70
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 64
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !140
  %or.i.i = or i32 %32, 1
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %34, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %or.i.i) #6, !srcloc !141
  %if_enable.i = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 14, i32 5
  %35 = ptrtoint ptr %if_enable.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %if_enable.i, align 1
  %dmaqueue_flags14 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 3, i32 19
  %36 = ptrtoint ptr %dmaqueue_flags14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %dmaqueue_flags14, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp16 = icmp eq i32 %38, 0
  br i1 %cmp16, label %sw.bb15.cleanup_crit_edge, label %if.end18

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %sw.bb15
  %wait = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 16
  %stopping20 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 17
  %call21 = tail call i32 @omap3isp_module_sync_idle(ptr noundef %sd, ptr noundef %wait, ptr noundef %stopping20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end18.if.end32_crit_edge, label %do.body

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.body:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_set_stream.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_set_stream, %if.end32)) #6
          to label %if.then30 [label %if.end32], !srcloc !142

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_set_stream.__UNIQUE_ID_ddebug337, ptr noundef %40, ptr noundef nonnull @.str.20, ptr noundef %name) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %do.body, %if.end18.if.end32_crit_edge
  %regs1.i71 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %regs1.i71 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %regs1.i71, align 1
  %conv.i72 = zext i8 %42 to i32
  %arrayidx.i.i73 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i72
  %43 = ptrtoint ptr %arrayidx.i.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i73, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %44, i32 112
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #6, !srcloc !140
  %and12.i = and i32 %45, -2
  %46 = ptrtoint ptr %regs1.i71 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %regs1.i71, align 1
  %conv15.i75 = zext i8 %47 to i32
  %arrayidx.i33.i76 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv15.i75
  %48 = ptrtoint ptr %arrayidx.i33.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i33.i76, align 4
  %add.ptr.i34.i77 = getelementptr i8, ptr %49, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i77, i32 %and12.i) #6, !srcloc !141
  %enabled.i78 = getelementptr %struct.isp_csi2_device, ptr %1, i32 0, i32 12, i32 0, i32 12
  %50 = ptrtoint ptr %enabled.i78 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %enabled.i78, align 1
  %51 = ptrtoint ptr %regs1.i71 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %regs1.i71, align 1
  %conv.i80 = zext i8 %52 to i32
  %arrayidx.i.i.i81 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i80
  %53 = ptrtoint ptr %arrayidx.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i.i81, align 4
  %add.ptr.i.i.i82 = getelementptr i8, ptr %54, i32 64
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i82) #6, !srcloc !140
  %and.i.i83 = and i32 %55, -2
  %56 = ptrtoint ptr %arrayidx.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i81, align 4
  %add.ptr.i5.i.i84 = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i84, i32 %and.i.i83) #6, !srcloc !141
  %if_enable.i85 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 14, i32 5
  %58 = ptrtoint ptr %if_enable.i85 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %if_enable.i85, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end32
  %i.019.i = phi i32 [ 0, %if.end32 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %regs1.i71 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %regs1.i71, align 1
  %conv.i87 = zext i8 %60 to i32
  %mul.i = shl i32 %i.019.i, 5
  %add.i = add nuw nsw i32 %mul.i, 136
  %arrayidx.i.i88 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i87
  %61 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i88, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %62, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i89, i32 2) #6, !srcloc !141
  %63 = ptrtoint ptr %regs1.i71 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %regs1.i71, align 1
  %conv6.i = zext i8 %64 to i32
  %add8.i = add nuw nsw i32 %mul.i, 132
  %arrayidx.i.i17.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv6.i
  %65 = ptrtoint ptr %arrayidx.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i17.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %66, i32 %add8.i
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #6
  %and.i.i90 = and i32 %67, -3
  %68 = ptrtoint ptr %arrayidx.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i17.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %69, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and.i.i90) #6, !srcloc !141
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %csi2_irq_ctx_set.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

csi2_irq_ctx_set.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %phy33 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %phy33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %phy33, align 4
  tail call void @omap3isp_csiphy_release(ptr noundef %71) #6
  %dmaqueue_flags35 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 3, i32 19
  %72 = ptrtoint ptr %dmaqueue_flags35 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %dmaqueue_flags35, align 8
  tail call void @omap3isp_sbl_disable(ptr noundef %3, i32 noundef 4) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %csi2_irq_ctx_set.exit, %csi2_ctx_enable.exit, %land.lhs.true.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %state36 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 15
  %73 = ptrtoint ptr %state36 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %enable, ptr %state36, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb15.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -19, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_csiphy_acquire(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi2_configure(ptr noundef %csi2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %csi2, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %isp2 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 4
  %2 = ptrtoint ptr %isp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isp2, align 8
  %timing3 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 13
  %contexts = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12
  %enabled = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 12
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ctrl = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 14
  %if_enable = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 14, i32 5
  %6 = ptrtoint ptr %if_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_enable, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pads = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 1
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %pads) #6
  %entity8 = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %entity8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity8, align 4
  %tobool10.not = icmp eq ptr %9, null
  %external = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %external, align 4
  %asd = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %asd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asd, align 4
  %frame_skip = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 10
  %14 = ptrtoint ptr %frame_skip to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %frame_skip, align 8
  br i1 %tobool10.not, label %if.end.if.end42_crit_edge, label %if.else

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %sensor19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %sensor19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sensor19, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %if.else.if.end42_crit_edge, label %land.lhs.true

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true:                                    ; preds = %if.else
  %g_skip_frames = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %g_skip_frames to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g_skip_frames, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %land.lhs.true.if.end42_crit_edge, label %if.else25

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.else25:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6), align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %if.else25.if.else34_crit_edge, label %land.lhs.true27

if.else25.if.else34_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else34

land.lhs.true27:                                  ; preds = %if.else25
  %g_skip_frames28 = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %g_skip_frames28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %g_skip_frames28, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %land.lhs.true27.if.else34_crit_edge, label %land.lhs.true27.if.end42.sink.split_crit_edge

land.lhs.true27.if.end42.sink.split_crit_edge:    ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split

land.lhs.true27.if.else34_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else34

if.else34:                                        ; preds = %land.lhs.true27.if.else34_crit_edge, %if.else25.if.else34_crit_edge
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.else34, %land.lhs.true27.if.end42.sink.split_crit_edge
  %.sink30 = phi ptr [ %20, %if.else34 ], [ %23, %land.lhs.true27.if.end42.sink.split_crit_edge ]
  %call39 = tail call i32 %.sink30(ptr noundef nonnull %9, ptr noundef %frame_skip) #6
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %land.lhs.true.if.end42_crit_edge, %if.else.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %l3_ick = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %l3_ick to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %l3_ick, align 4
  %external_rate = getelementptr inbounds %struct.isp_pipeline, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %external_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %external_rate, align 4
  %div = udiv i32 %25, %27
  %sub = add i32 %div, -1
  %28 = tail call i32 @llvm.umax.i32(i32 %sub, i32 1)
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 3)
  %conv57 = trunc i32 %29 to i8
  %vp_out_ctrl = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 14, i32 2
  %30 = ptrtoint ptr %vp_out_ctrl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv57, ptr %vp_out_ctrl, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_configure.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_configure, %do.end)) #6
          to label %if.then65 [label %do.end], !srcloc !142

if.then65:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.isp_device, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %33 = ptrtoint ptr %l3_ick to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %l3_ick, align 4
  %35 = ptrtoint ptr %external_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %external_rate, align 4
  %37 = ptrtoint ptr %vp_out_ctrl to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vp_out_ctrl, align 2
  %conv70 = zext i8 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_configure.__UNIQUE_ID_ddebug302, ptr noundef %32, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %34, i32 noundef %36, i32 noundef %conv70) #6
  br label %do.end

do.end:                                           ; preds = %if.then65, %if.end42
  %frame_mode = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 14, i32 3
  %39 = ptrtoint ptr %frame_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %frame_mode, align 4
  %bus73 = getelementptr inbounds %struct.isp_async_subdev, ptr %13, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %bus73 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %bus73, align 4
  %ecc_enable = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 14, i32 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  %41 = ptrtoint ptr %ecc_enable to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.load.lobit, ptr %ecc_enable, align 8
  %42 = ptrtoint ptr %timing3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %timing3, align 4
  %force_rx_mode = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 13, i32 0, i32 1
  %43 = ptrtoint ptr %force_rx_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load77 = load i8, ptr %force_rx_mode, align 1
  %bf.set83 = or i8 %bf.load77, -32
  store i8 %bf.set83, ptr %force_rx_mode, align 1
  %stop_state_counter = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 13, i32 0, i32 2
  %44 = ptrtoint ptr %stop_state_counter to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 511, ptr %stop_state_counter, align 2
  %code = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 2, i32 0, i32 2
  %45 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %code, align 4
  %code87 = getelementptr %struct.isp_csi2_device, ptr %csi2, i32 0, i32 2, i32 1, i32 2
  %47 = ptrtoint ptr %code87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %code87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp88.not = icmp ne i32 %46, %48
  %spec.select = zext i1 %cmp88.not to i8
  %49 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 9
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select, ptr %49, align 4
  %call94 = tail call fastcc zeroext i16 @csi2_ctx_map_format(ptr noundef %csi2)
  %format_id = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 3
  %51 = ptrtoint ptr %format_id to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %call94, ptr %format_id, align 4
  %bpl_padding = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 3, i32 11
  %52 = ptrtoint ptr %bpl_padding to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bpl_padding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp97 = icmp eq i32 %53, 0
  br i1 %cmp97, label %do.end.if.end108_crit_edge, label %if.else102

do.end.if.end108_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.else102:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %bpl_value = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 3, i32 10
  %54 = ptrtoint ptr %bpl_value to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bpl_value, align 8
  %conv104 = trunc i32 %55 to i16
  br label %if.end108

if.end108:                                        ; preds = %if.else102, %do.end.if.end108_crit_edge
  %conv104.sink = phi i16 [ %conv104, %if.else102 ], [ 0, %do.end.if.end108_crit_edge ]
  %56 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 6
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv104.sink, ptr %56, align 2
  %eof_enabled = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 9
  %58 = ptrtoint ptr %eof_enabled to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %eof_enabled, align 4
  %eol_enabled = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 12, i32 0, i32 10
  %59 = ptrtoint ptr %eol_enabled to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %eol_enabled, align 1
  %regs1.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %60 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %regs1.i, align 1
  %conv.i = zext i8 %61 to i32
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134217727) #6, !srcloc !141
  %64 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %regs1.i, align 1
  %conv2.i = zext i8 %65 to i32
  %arrayidx.i1.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv2.i
  %66 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i1.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %67, i32 96
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #6, !srcloc !140
  %or.i = or i32 %68, 134217727
  %69 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %regs1.i, align 1
  %conv4.i = zext i8 %70 to i32
  %arrayidx.i3.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv4.i
  %71 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i3.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %72, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %or.i) #6, !srcloc !141
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end108
  %i.019.i = phi i32 [ 0, %if.end108 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %regs1.i, align 1
  %conv.i2 = zext i8 %74 to i32
  %mul.i = shl i32 %i.019.i, 5
  %add.i = add nuw nsw i32 %mul.i, 136
  %arrayidx.i.i3 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i2
  %75 = ptrtoint ptr %arrayidx.i.i3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i3, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %76, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 2) #6, !srcloc !141
  %77 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %regs1.i, align 1
  %conv6.i = zext i8 %78 to i32
  %add8.i = add nuw nsw i32 %mul.i, 132
  %arrayidx.i.i17.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv6.i
  %79 = ptrtoint ptr %arrayidx.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i17.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %80, i32 %add8.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #6
  %or.i.i = or i32 %81, 2
  %82 = ptrtoint ptr %arrayidx.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i17.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %83, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %or.i.i) #6, !srcloc !141
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %csi2_irq_ctx_set.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

csi2_irq_ctx_set.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %regs1.i, align 1
  %conv.i6 = zext i8 %85 to i32
  %arrayidx.i.i7 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i6
  %86 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i7, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %87, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 32513) #6, !srcloc !141
  %88 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %regs1.i, align 1
  %conv2.i9 = zext i8 %89 to i32
  %arrayidx.i1.i10 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv2.i9
  %90 = ptrtoint ptr %arrayidx.i1.i10 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i1.i10, align 4
  %add.ptr.i2.i11 = getelementptr i8, ptr %91, i32 28
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i11) #6, !srcloc !140
  %or.i12 = or i32 %92, 32513
  %93 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %regs1.i, align 1
  %conv4.i13 = zext i8 %94 to i32
  %arrayidx.i3.i14 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv4.i13
  %95 = ptrtoint ptr %arrayidx.i3.i14 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i3.i14, align 4
  %add.ptr.i4.i15 = getelementptr i8, ptr %96, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i15, i32 %or.i12) #6, !srcloc !141
  %97 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %regs1.i, align 1
  %conv.i17 = zext i8 %98 to i32
  %arrayidx.i.i18 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i17
  %99 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i.i18, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %100, i32 108
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #6, !srcloc !140
  %102 = ptrtoint ptr %force_rx_mode to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load.i = load i8, ptr %force_rx_mode, align 1
  %103 = ptrtoint ptr %timing3 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %timing3, align 4
  %conv3.i = zext i8 %104 to i32
  %sub4.i = shl nuw nsw i32 %conv3.i, 4
  %add6.i = add nsw i32 %sub4.i, -1
  %shl7.i = shl nuw i32 1, %add6.i
  %or.i20 = or i32 %shl7.i, %101
  %neg.i = xor i32 %shl7.i, -1
  %and.i = and i32 %101, %neg.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not92.i = icmp slt i8 %bf.load.i, 0
  %reg.0.i = select i1 %tobool.not92.i, i32 %or.i20, i32 %and.i
  %105 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool11.not.i = icmp eq i8 %105, 0
  %add25.i = add nsw i32 %sub4.i, -2
  %shl26.i = shl nuw i32 1, %add25.i
  %or19.i = or i32 %reg.0.i, %shl26.i
  %neg27.i = xor i32 %shl26.i, -1
  %and28.i = and i32 %reg.0.i, %neg27.i
  %reg.1.i = select i1 %tobool11.not.i, i32 %and28.i, i32 %or19.i
  %106 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool34.not.i = icmp eq i8 %106, 0
  %add48.i = add nsw i32 %sub4.i, -3
  %shl49.i = shl nuw i32 1, %add48.i
  %or42.i = or i32 %reg.1.i, %shl49.i
  %neg50.i = xor i32 %shl49.i, -1
  %and51.i = and i32 %reg.1.i, %neg50.i
  %reg.2.i = select i1 %tobool34.not.i, i32 %and51.i, i32 %or42.i
  %mul56.i = add nsw i32 %sub4.i, -16
  %shl57.i = shl i32 8191, %mul56.i
  %neg58.i = xor i32 %shl57.i, -1
  %and59.i = and i32 %reg.2.i, %neg58.i
  %107 = ptrtoint ptr %stop_state_counter to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %stop_state_counter, align 2
  %conv60.i = zext i16 %108 to i32
  %shl65.i = shl i32 %conv60.i, %mul56.i
  %or66.i = or i32 %and59.i, %shl65.i
  %109 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %regs1.i, align 1
  %conv68.i = zext i8 %110 to i32
  %arrayidx.i90.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv68.i
  %111 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i90.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %112, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %or66.i) #6, !srcloc !141
  %113 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %regs1.i, align 1
  %conv.i22 = zext i8 %114 to i32
  %arrayidx.i.i23 = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv.i22
  %115 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i23, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %116, i32 64
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #6, !srcloc !140
  %118 = ptrtoint ptr %frame_mode to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %frame_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i = icmp eq i32 %119, 0
  %and.i25 = and i32 %117, -35597
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 8
  %reg.0.i26 = or i32 %masksel.i, %and.i25
  %120 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ctrl, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool1.not.i = icmp eq i8 %121, 0
  %masksel42.i = select i1 %tobool1.not.i, i32 0, i32 32768
  %reg.1.i27 = or i32 %reg.0.i26, %masksel42.i
  %vp_only_enable.i = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 14, i32 1
  %122 = ptrtoint ptr %vp_only_enable.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %vp_only_enable.i, align 1, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool7.not.i = icmp eq i8 %123, 0
  %masksel43.i = select i1 %tobool7.not.i, i32 0, i32 2048
  %reg.2.i28 = or i32 %reg.1.i27, %masksel43.i
  %124 = ptrtoint ptr %vp_out_ctrl to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %vp_out_ctrl, align 2
  %conv14.i = zext i8 %125 to i32
  %shl.i = shl nuw nsw i32 %conv14.i, 8
  %or15.i = or i32 %reg.2.i28, %shl.i
  %126 = ptrtoint ptr %ecc_enable to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %ecc_enable, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool16.not.i = icmp eq i8 %127, 0
  %masksel44.i = select i1 %tobool16.not.i, i32 0, i32 4
  %reg.3.i = or i32 %or15.i, %masksel44.i
  %128 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %regs1.i, align 1
  %conv23.i = zext i8 %129 to i32
  %arrayidx.i40.i = getelementptr %struct.isp_device, ptr %3, i32 0, i32 6, i32 %conv23.i
  %130 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i40.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %131, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %reg.3.i) #6, !srcloc !141
  tail call fastcc void @csi2_ctx_config(ptr noundef %3, ptr noundef %csi2, ptr noundef %contexts)
  br label %cleanup

cleanup:                                          ; preds = %csi2_irq_ctx_set.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi2_print_status(ptr noundef readonly %csi2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp1 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 4
  %0 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp1, align 8
  %available = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 5
  %2 = ptrtoint ptr %available to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %available, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body8)) #6
          to label %if.then6 [label %do.body8], !srcloc !142

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.24) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body28)) #6
          to label %if.then22 [label %do.body28], !srcloc !142

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev23, align 8
  %regs1 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regs1, align 1
  %conv = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug304, ptr noundef %7, ptr noundef nonnull @.str.25, i32 noundef %12) #6
  br label %do.body28

do.body28:                                        ; preds = %if.then22, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body50)) #6
          to label %if.then42 [label %do.body50], !srcloc !142

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %dev43 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev43, align 8
  %regs144 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %15 = ptrtoint ptr %regs144 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regs144, align 1
  %conv45 = zext i8 %16 to i32
  %arrayidx.i618 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv45
  %17 = ptrtoint ptr %arrayidx.i618 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i618, align 4
  %add.ptr.i619 = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i619) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug305, ptr noundef %14, ptr noundef nonnull @.str.26, i32 noundef %19) #6
  br label %do.body50

do.body50:                                        ; preds = %if.then42, %do.body28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body72)) #6
          to label %if.then64 [label %do.body72], !srcloc !142

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %dev65 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev65, align 8
  %regs166 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %22 = ptrtoint ptr %regs166 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regs166, align 1
  %conv67 = zext i8 %23 to i32
  %arrayidx.i620 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv67
  %24 = ptrtoint ptr %arrayidx.i620 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i620, align 4
  %add.ptr.i621 = getelementptr i8, ptr %25, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i621) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug306, ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %26) #6
  br label %do.body72

do.body72:                                        ; preds = %if.then64, %do.body50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body94)) #6
          to label %if.then86 [label %do.body94], !srcloc !142

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  %dev87 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev87, align 8
  %regs188 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %29 = ptrtoint ptr %regs188 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %regs188, align 1
  %conv89 = zext i8 %30 to i32
  %arrayidx.i622 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv89
  %31 = ptrtoint ptr %arrayidx.i622 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i622, align 4
  %add.ptr.i623 = getelementptr i8, ptr %32, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i623) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug307, ptr noundef %28, ptr noundef nonnull @.str.28, i32 noundef %33) #6
  br label %do.body94

do.body94:                                        ; preds = %if.then86, %do.body72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body116)) #6
          to label %if.then108 [label %do.body116], !srcloc !142

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  %dev109 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev109, align 8
  %regs1110 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %36 = ptrtoint ptr %regs1110 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %regs1110, align 1
  %conv111 = zext i8 %37 to i32
  %arrayidx.i624 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv111
  %38 = ptrtoint ptr %arrayidx.i624 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i624, align 4
  %add.ptr.i625 = getelementptr i8, ptr %39, i32 64
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i625) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug308, ptr noundef %35, ptr noundef nonnull @.str.29, i32 noundef %40) #6
  br label %do.body116

do.body116:                                       ; preds = %if.then108, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body138)) #6
          to label %if.then130 [label %do.body138], !srcloc !142

if.then130:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #8
  %dev131 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev131, align 8
  %regs1132 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %43 = ptrtoint ptr %regs1132 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %regs1132, align 1
  %conv133 = zext i8 %44 to i32
  %arrayidx.i626 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv133
  %45 = ptrtoint ptr %arrayidx.i626 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i626, align 4
  %add.ptr.i627 = getelementptr i8, ptr %46, i32 68
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i627) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug309, ptr noundef %42, ptr noundef nonnull @.str.30, i32 noundef %47) #6
  br label %do.body138

do.body138:                                       ; preds = %if.then130, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body160)) #6
          to label %if.then152 [label %do.body160], !srcloc !142

if.then152:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  %dev153 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %dev153 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev153, align 8
  %regs1154 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %50 = ptrtoint ptr %regs1154 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %regs1154, align 1
  %conv155 = zext i8 %51 to i32
  %arrayidx.i628 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv155
  %52 = ptrtoint ptr %arrayidx.i628 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i628, align 4
  %add.ptr.i629 = getelementptr i8, ptr %53, i32 72
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i629) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug310, ptr noundef %49, ptr noundef nonnull @.str.31, i32 noundef %54) #6
  br label %do.body160

do.body160:                                       ; preds = %if.then152, %do.body138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body182)) #6
          to label %if.then174 [label %do.body182], !srcloc !142

if.then174:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #8
  %dev175 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev175, align 8
  %regs1176 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %57 = ptrtoint ptr %regs1176 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %regs1176, align 1
  %conv177 = zext i8 %58 to i32
  %arrayidx.i630 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv177
  %59 = ptrtoint ptr %arrayidx.i630 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i630, align 4
  %add.ptr.i631 = getelementptr i8, ptr %60, i32 80
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i631) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug311, ptr noundef %56, ptr noundef nonnull @.str.32, i32 noundef %61) #6
  br label %do.body182

do.body182:                                       ; preds = %if.then174, %do.body160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body204)) #6
          to label %if.then196 [label %do.body204], !srcloc !142

if.then196:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #8
  %dev197 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev197, align 8
  %regs1198 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %64 = ptrtoint ptr %regs1198 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %regs1198, align 1
  %conv199 = zext i8 %65 to i32
  %arrayidx.i632 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv199
  %66 = ptrtoint ptr %arrayidx.i632 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i632, align 4
  %add.ptr.i633 = getelementptr i8, ptr %67, i32 84
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i633) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug312, ptr noundef %63, ptr noundef nonnull @.str.33, i32 noundef %68) #6
  br label %do.body204

do.body204:                                       ; preds = %if.then196, %do.body182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body226)) #6
          to label %if.then218 [label %do.body226], !srcloc !142

if.then218:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #8
  %dev219 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %dev219 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev219, align 8
  %regs1220 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %71 = ptrtoint ptr %regs1220 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %regs1220, align 1
  %conv221 = zext i8 %72 to i32
  %arrayidx.i634 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv221
  %73 = ptrtoint ptr %arrayidx.i634 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i634, align 4
  %add.ptr.i635 = getelementptr i8, ptr %74, i32 92
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i635) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug313, ptr noundef %70, ptr noundef nonnull @.str.34, i32 noundef %75) #6
  br label %do.body226

do.body226:                                       ; preds = %if.then218, %do.body204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body248)) #6
          to label %if.then240 [label %do.body248], !srcloc !142

if.then240:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #8
  %dev241 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %dev241 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev241, align 8
  %regs1242 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %78 = ptrtoint ptr %regs1242 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %regs1242, align 1
  %conv243 = zext i8 %79 to i32
  %arrayidx.i636 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv243
  %80 = ptrtoint ptr %arrayidx.i636 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i636, align 4
  %add.ptr.i637 = getelementptr i8, ptr %81, i32 96
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i637) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug314, ptr noundef %77, ptr noundef nonnull @.str.35, i32 noundef %82) #6
  br label %do.body248

do.body248:                                       ; preds = %if.then240, %do.body226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body270)) #6
          to label %if.then262 [label %do.body270], !srcloc !142

if.then262:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #8
  %dev263 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %dev263 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev263, align 8
  %regs1264 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %85 = ptrtoint ptr %regs1264 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %regs1264, align 1
  %conv265 = zext i8 %86 to i32
  %arrayidx.i638 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv265
  %87 = ptrtoint ptr %arrayidx.i638 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i638, align 4
  %add.ptr.i639 = getelementptr i8, ptr %88, i32 104
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i639) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug315, ptr noundef %84, ptr noundef nonnull @.str.36, i32 noundef %89) #6
  br label %do.body270

do.body270:                                       ; preds = %if.then262, %do.body248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body292)) #6
          to label %if.then284 [label %do.body292], !srcloc !142

if.then284:                                       ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #8
  %dev285 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %dev285 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev285, align 8
  %regs1286 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %92 = ptrtoint ptr %regs1286 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %regs1286, align 1
  %conv287 = zext i8 %93 to i32
  %arrayidx.i640 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv287
  %94 = ptrtoint ptr %arrayidx.i640 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i640, align 4
  %add.ptr.i641 = getelementptr i8, ptr %95, i32 108
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i641) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug316, ptr noundef %91, ptr noundef nonnull @.str.37, i32 noundef %96) #6
  br label %do.body292

do.body292:                                       ; preds = %if.then284, %do.body270
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body314)) #6
          to label %if.then306 [label %do.body314], !srcloc !142

if.then306:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #8
  %dev307 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %97 = ptrtoint ptr %dev307 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev307, align 8
  %regs1308 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %99 = ptrtoint ptr %regs1308 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %regs1308, align 1
  %conv309 = zext i8 %100 to i32
  %arrayidx.i642 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv309
  %101 = ptrtoint ptr %arrayidx.i642 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i642, align 4
  %add.ptr.i643 = getelementptr i8, ptr %102, i32 112
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i643) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug317, ptr noundef %98, ptr noundef nonnull @.str.38, i32 noundef %103) #6
  br label %do.body314

do.body314:                                       ; preds = %if.then306, %do.body292
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body336)) #6
          to label %if.then328 [label %do.body336], !srcloc !142

if.then328:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #8
  %dev329 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %104 = ptrtoint ptr %dev329 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev329, align 8
  %regs1330 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %106 = ptrtoint ptr %regs1330 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %regs1330, align 1
  %conv331 = zext i8 %107 to i32
  %arrayidx.i644 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv331
  %108 = ptrtoint ptr %arrayidx.i644 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i644, align 4
  %add.ptr.i645 = getelementptr i8, ptr %109, i32 116
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i645) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug318, ptr noundef %105, ptr noundef nonnull @.str.39, i32 noundef %110) #6
  br label %do.body336

do.body336:                                       ; preds = %if.then328, %do.body314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body358)) #6
          to label %if.then350 [label %do.body358], !srcloc !142

if.then350:                                       ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #8
  %dev351 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %111 = ptrtoint ptr %dev351 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev351, align 8
  %regs1352 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %113 = ptrtoint ptr %regs1352 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %regs1352, align 1
  %conv353 = zext i8 %114 to i32
  %arrayidx.i646 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv353
  %115 = ptrtoint ptr %arrayidx.i646 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i646, align 4
  %add.ptr.i647 = getelementptr i8, ptr %116, i32 120
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i647) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug319, ptr noundef %112, ptr noundef nonnull @.str.40, i32 noundef %117) #6
  br label %do.body358

do.body358:                                       ; preds = %if.then350, %do.body336
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body380)) #6
          to label %if.then372 [label %do.body380], !srcloc !142

if.then372:                                       ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #8
  %dev373 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %118 = ptrtoint ptr %dev373 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev373, align 8
  %regs1374 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %120 = ptrtoint ptr %regs1374 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %regs1374, align 1
  %conv375 = zext i8 %121 to i32
  %arrayidx.i648 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv375
  %122 = ptrtoint ptr %arrayidx.i648 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i648, align 4
  %add.ptr.i649 = getelementptr i8, ptr %123, i32 124
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i649) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug320, ptr noundef %119, ptr noundef nonnull @.str.41, i32 noundef %124) #6
  br label %do.body380

do.body380:                                       ; preds = %if.then372, %do.body358
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body402)) #6
          to label %if.then394 [label %do.body402], !srcloc !142

if.then394:                                       ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #8
  %dev395 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %125 = ptrtoint ptr %dev395 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev395, align 8
  %regs1396 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %127 = ptrtoint ptr %regs1396 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %regs1396, align 1
  %conv397 = zext i8 %128 to i32
  %arrayidx.i650 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv397
  %129 = ptrtoint ptr %arrayidx.i650 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i650, align 4
  %add.ptr.i651 = getelementptr i8, ptr %130, i32 128
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i651) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug321, ptr noundef %126, ptr noundef nonnull @.str.42, i32 noundef %131) #6
  br label %do.body402

do.body402:                                       ; preds = %if.then394, %do.body380
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body424)) #6
          to label %if.then416 [label %do.body424], !srcloc !142

if.then416:                                       ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #8
  %dev417 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %132 = ptrtoint ptr %dev417 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev417, align 8
  %regs1418 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %134 = ptrtoint ptr %regs1418 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %regs1418, align 1
  %conv419 = zext i8 %135 to i32
  %arrayidx.i652 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv419
  %136 = ptrtoint ptr %arrayidx.i652 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i652, align 4
  %add.ptr.i653 = getelementptr i8, ptr %137, i32 132
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i653) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug322, ptr noundef %133, ptr noundef nonnull @.str.43, i32 noundef %138) #6
  br label %do.body424

do.body424:                                       ; preds = %if.then416, %do.body402
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body446)) #6
          to label %if.then438 [label %do.body446], !srcloc !142

if.then438:                                       ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #8
  %dev439 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %139 = ptrtoint ptr %dev439 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev439, align 8
  %regs1440 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %141 = ptrtoint ptr %regs1440 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %regs1440, align 1
  %conv441 = zext i8 %142 to i32
  %arrayidx.i654 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv441
  %143 = ptrtoint ptr %arrayidx.i654 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i654, align 4
  %add.ptr.i655 = getelementptr i8, ptr %144, i32 136
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i655) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug323, ptr noundef %140, ptr noundef nonnull @.str.44, i32 noundef %145) #6
  br label %do.body446

do.body446:                                       ; preds = %if.then438, %do.body424
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %do.body468)) #6
          to label %if.then460 [label %do.body468], !srcloc !142

if.then460:                                       ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #8
  %dev461 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %146 = ptrtoint ptr %dev461 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev461, align 8
  %regs1462 = getelementptr inbounds %struct.isp_csi2_device, ptr %csi2, i32 0, i32 6
  %148 = ptrtoint ptr %regs1462 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %regs1462, align 1
  %conv463 = zext i8 %149 to i32
  %arrayidx.i656 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv463
  %150 = ptrtoint ptr %arrayidx.i656 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i656, align 4
  %add.ptr.i657 = getelementptr i8, ptr %151, i32 140
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i657) #6, !srcloc !140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug324, ptr noundef %147, ptr noundef nonnull @.str.45, i32 noundef %152) #6
  br label %do.body468

do.body468:                                       ; preds = %if.then460, %do.body446
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csi2_print_status.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csi2_print_status, %cleanup)) #6
          to label %if.then482 [label %cleanup], !srcloc !142

if.then482:                                       ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #8
  %dev483 = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 3
  %153 = ptrtoint ptr %dev483 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev483, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csi2_print_status.__UNIQUE_ID_ddebug325, ptr noundef %154, ptr noundef nonnull @.str.46) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then482, %do.body468, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3isp_module_sync_idle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_csiphy_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3isp_sbl_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp1 = icmp ugt i32 %5, 8
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [9 x i32], ptr @csi2_input_fmts, i32 0, i32 %5
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %entry
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %6 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i.i.not = icmp eq i16 %9, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !144

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  br label %__csi2_get_format.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_csi2_device, ptr %1, i32 0, i32 2, i32 0
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %11, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %index6 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %12 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index6, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %13, label %__csi2_get_format.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

__csi2_get_format.exit.cleanup_crit_edge:         ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %code7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  br label %cleanup.sink.split.sink.split

sw.bb9:                                           ; preds = %__csi2_get_format.exit
  %code10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %code10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code10, align 4
  %call11 = tail call ptr @omap3isp_video_format_info(i32 noundef %16) #6
  %uncompressed = getelementptr inbounds %struct.isp_format_info, ptr %call11, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #6
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csi2_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !145

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csi2_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_csi2_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__csi2_get_format.exit.cleanup_crit_edge, label %if.end

__csi2_get_format.exit.cleanup_crit_edge:         ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !145

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__csi2_get_format.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_csi2_device, ptr %1, i32 0, i32 2, i32 %3
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__csi2_get_format.exit.cleanup_crit_edge, label %if.end

__csi2_get_format.exit.cleanup_crit_edge:         ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i33 = icmp eq i32 %18, 0
  br i1 %cmp.i33, label %if.then.i37, label %if.else.i43

if.then.i37:                                      ; preds = %if.then8
  %num_pads.i.i34 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %num_pads.i.i34 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_pads.i.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %20)
  %cmp.not.i.i36 = icmp ugt i16 %20, 1
  br i1 %cmp.not.i.i36, label %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge, label %do.end.i.i38, !prof !145

if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge: ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i41

do.end.i.i38:                                     ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i41

v4l2_subdev_get_try_format.exit.i41:              ; preds = %do.end.i.i38, %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge
  %spec.select.i.i39 = phi i32 [ 0, %do.end.i.i38 ], [ 1, %if.then.i37.v4l2_subdev_get_try_format.exit.i41_crit_edge ]
  %21 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i40 = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %spec.select.i.i39
  br label %__csi2_get_format.exit45

if.else.i43:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i42 = getelementptr %struct.isp_csi2_device, ptr %1, i32 0, i32 2, i32 1
  br label %__csi2_get_format.exit45

__csi2_get_format.exit45:                         ; preds = %if.else.i43, %v4l2_subdev_get_try_format.exit.i41
  %retval.0.i44 = phi ptr [ %arrayidx.i.i40, %v4l2_subdev_get_try_format.exit.i41 ], [ %arrayidx.i42, %if.else.i43 ]
  %23 = call ptr @memcpy(ptr %retval.0.i44, ptr %format3, i32 48)
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %code28.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 2
  %26 = ptrtoint ptr %code28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %code28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %__csi2_get_format.exit45
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i.i.not.i = icmp eq i16 %29, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !144

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  br label %__csi2_get_format.exit.i

if.else.i.i:                                      ; preds = %__csi2_get_format.exit45
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i46 = getelementptr %struct.isp_csi2_device, ptr %1, i32 0, i32 2, i32 0
  br label %__csi2_get_format.exit.i

__csi2_get_format.exit.i:                         ; preds = %if.else.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %31, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i46, %if.else.i.i ]
  %32 = call ptr @memcpy(ptr %retval.0.i44, ptr %retval.0.i.i, i32 48)
  %33 = ptrtoint ptr %code28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %code28.i, align 4
  %call30.i = tail call ptr @omap3isp_video_format_info(i32 noundef %34) #6
  %uncompressed.i = getelementptr inbounds %struct.isp_format_info, ptr %call30.i, i32 0, i32 2
  %35 = ptrtoint ptr %uncompressed.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uncompressed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %27)
  %cmp31.i = icmp eq i32 %36, %27
  br i1 %cmp31.i, label %if.then32.i, label %__csi2_get_format.exit.i.csi2_try_format.exit_crit_edge

__csi2_get_format.exit.i.csi2_try_format.exit_crit_edge: ; preds = %__csi2_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %csi2_try_format.exit

if.then32.i:                                      ; preds = %__csi2_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %code28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %27, ptr %code28.i, align 4
  br label %csi2_try_format.exit

csi2_try_format.exit:                             ; preds = %if.then32.i, %__csi2_get_format.exit.i.csi2_try_format.exit_crit_edge
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 4
  %38 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i44, i32 0, i32 3
  %39 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %csi2_try_format.exit, %if.end.cleanup_crit_edge, %__csi2_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %__csi2_get_format.exit.cleanup_crit_edge ], [ 0, %csi2_try_format.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap3isp_video_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csi2_try_format(ptr nocapture noundef readonly %csi2, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %1 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %code, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %2, label %for.cond.8 [
    i32 12298, label %for.cond.preheader.if.end5_crit_edge
    i32 12297, label %for.cond.preheader.if.end5_crit_edge62
    i32 12303, label %for.cond.preheader.if.end5_crit_edge63
    i32 12301, label %for.cond.preheader.if.end5_crit_edge64
    i32 12295, label %for.cond.preheader.if.end5_crit_edge65
    i32 12299, label %for.cond.preheader.if.end5_crit_edge66
    i32 12302, label %for.cond.preheader.if.end5_crit_edge67
    i32 12300, label %for.cond.preheader.if.end5_crit_edge68
    i32 8200, label %for.cond.preheader.if.end5_crit_edge69
  ]

for.cond.preheader.if.end5_crit_edge69:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge68:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge67:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge66:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge65:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge64:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge63:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge62:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.cond.8:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12298, ptr %code, align 4
  br label %if.end5

if.end5:                                          ; preds = %for.cond.8, %for.cond.preheader.if.end5_crit_edge, %for.cond.preheader.if.end5_crit_edge62, %for.cond.preheader.if.end5_crit_edge63, %for.cond.preheader.if.end5_crit_edge64, %for.cond.preheader.if.end5_crit_edge65, %for.cond.preheader.if.end5_crit_edge66, %for.cond.preheader.if.end5_crit_edge67, %for.cond.preheader.if.end5_crit_edge68, %for.cond.preheader.if.end5_crit_edge69
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
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb27
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %csi2, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not.i.i.not = icmp eq i16 %18, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !144

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 998, i32 noundef 9, ptr noundef null) #6
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  br label %__csi2_get_format.exit

if.else.i:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.isp_csi2_device, ptr %csi2, i32 0, i32 2, i32 0
  br label %__csi2_get_format.exit

__csi2_get_format.exit:                           ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %20, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.else.i ]
  %21 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i, i32 48)
  %22 = ptrtoint ptr %code28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code28, align 4
  %call30 = tail call ptr @omap3isp_video_format_info(i32 noundef %23) #6
  %uncompressed = getelementptr inbounds %struct.isp_format_info, ptr %call30, i32 0, i32 2
  %24 = ptrtoint ptr %uncompressed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uncompressed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %16)
  %cmp31 = icmp eq i32 %25, %16
  br i1 %cmp31, label %if.then32, label %__csi2_get_format.exit.sw.epilog_crit_edge

__csi2_get_format.exit.sw.epilog_crit_edge:       ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then32:                                        ; preds = %__csi2_get_format.exit
  call void @__sanitizer_cov_trace_pc() #8
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @csi2_link_setup(ptr noundef readonly %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %ctrl2 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 14
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %is_media_entity_v4l2_subdev.exit.thread

is_media_entity_v4l2_subdev.exit:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %8, label %is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 131073, label %sw.bb17
  ]

is_media_entity_v4l2_subdev.exit.thread.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %output14 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %output14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output14, align 8
  %and15 = and i32 %11, -3
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool9.not = icmp eq i32 %and15, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %or13 = or i32 %11, 2
  %12 = ptrtoint ptr %output14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or13, ptr %output14, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %output14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and15, ptr %output14, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %is_media_entity_v4l2_subdev.exit.thread
  %and18 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %output29 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %output29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output29, align 8
  br i1 %tobool19.not, label %if.else28, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %tobool23.not = icmp ult i32 %15, 2
  br i1 %tobool23.not, label %if.end25, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %or27 = or i32 %15, 1
  %16 = ptrtoint ptr %output29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or27, ptr %output29, align 8
  br label %sw.epilog

if.else28:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %and30 = and i32 %15, -2
  %17 = ptrtoint ptr %output29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and30, ptr %output29, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else28, %if.end25, %if.else, %if.end11
  %output32 = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %output32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output32, align 8
  %vp_only_enable = getelementptr inbounds %struct.isp_csi2_device, ptr %1, i32 0, i32 14, i32 1
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
define internal i32 @csi2_queue(ptr nocapture noundef readonly %video, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %isp1 = getelementptr inbounds %struct.isp_video, ptr %video, i32 0, i32 5
  %0 = ptrtoint ptr %isp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %isp1, align 4
  %dma = getelementptr inbounds %struct.isp_buffer, ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 8
  %isp1.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 4
  %4 = ptrtoint ptr %isp1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isp1.i, align 8
  %contexts.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 12
  %ping_addr.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 12, i32 0, i32 7
  %6 = ptrtoint ptr %ping_addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %ping_addr.i, align 4
  %pong_addr.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 12, i32 0, i32 8
  %7 = ptrtoint ptr %pong_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %pong_addr.i, align 4
  %regs1.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 6
  %8 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regs1.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %contexts.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %contexts.i, align 4
  %conv3.i = zext i8 %11 to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 5
  %add.i = add nuw nsw i32 %mul.i, 124
  %arrayidx.i.i = getelementptr %struct.isp_device, ptr %5, i32 0, i32 6, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #6, !srcloc !141
  %14 = ptrtoint ptr %pong_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pong_addr.i, align 4
  %16 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %regs1.i, align 1
  %conv6.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %contexts.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %contexts.i, align 4
  %conv8.i = zext i8 %19 to i32
  %mul9.i = shl nuw nsw i32 %conv8.i, 5
  %add10.i = add nuw nsw i32 %mul9.i, 128
  %arrayidx.i21.i = getelementptr %struct.isp_device, ptr %5, i32 0, i32 6, i32 %conv6.i
  %20 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i21.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %21, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %15) #6, !srcloc !141
  %dmaqueue_flags = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 3, i32 19
  %22 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dmaqueue_flags, align 8
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %24 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %regs1.i, align 1
  %conv.i11 = zext i8 %25 to i32
  %arrayidx.i.i.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv.i11
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !140
  %or.i.i = or i32 %28, 1
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %30, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %or.i.i) #6, !srcloc !141
  %if_enable.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 14, i32 5
  %31 = ptrtoint ptr %if_enable.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %if_enable.i, align 1
  %32 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %regs1.i, align 1
  %conv.i13 = zext i8 %33 to i32
  %arrayidx.i.i14 = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv.i13
  %34 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i14, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %35, i32 112
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #6, !srcloc !140
  %frame_skip.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 10
  %37 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frame_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo.i = shl i32 %38, 8
  %phi.bo32.i = or i32 %phi.bo.i, 17
  br label %csi2_ctx_enable.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %output.i = getelementptr inbounds %struct.isp_device, ptr %1, i32 0, i32 27, i32 8
  %39 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %output.i, align 8
  %and.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 17, i32 273
  br label %csi2_ctx_enable.exit

csi2_ctx_enable.exit:                             ; preds = %if.else.i, %if.then3.i
  %skip.0.i = phi i32 [ %phi.bo32.i, %if.then3.i ], [ %spec.select.i, %if.else.i ]
  %and8.i = and i32 %36, -65298
  %or10.i = or i32 %skip.0.i, %and8.i
  %41 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %regs1.i, align 1
  %conv15.i = zext i8 %42 to i32
  %arrayidx.i33.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 6, i32 %conv15.i
  %43 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i33.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %44, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %or10.i) #6, !srcloc !141
  %enabled.i = getelementptr %struct.isp_device, ptr %1, i32 0, i32 27, i32 12, i32 0, i32 12
  %45 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %enabled.i, align 1
  %46 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %dmaqueue_flags, align 8
  br label %if.end

if.end:                                           ; preds = %csi2_ctx_enable.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 507, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap3isp_csi2_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap3isp_csi2_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 525, i32 3}
!10 = !{ptr @omap3isp_csi2_reset._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap3isp_csi2_reset._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 753, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @omap3isp_csi2_isr.__UNIQUE_ID_ddebug326, !13, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 763, i32 3}
!19 = !{ptr @omap3isp_csi2_isr.__UNIQUE_ID_ddebug327, !18, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 786, i32 3}
!22 = !{ptr @omap3isp_csi2_isr.__UNIQUE_ID_ddebug328, !21, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!23 = !{ptr @omap3isp_csi2_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1294, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @omap3isp_csi2_init.__key.14, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1307, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 187, i32 3}
!31 = !{ptr @__csi2_fmt_map, !32, !"__csi2_fmt_map", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 99, i32 18}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1242, i32 20}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1268, i32 46}
!37 = !{ptr @csi2_ops, !38, !"csi2_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1117, i32 37}
!39 = !{ptr @csi2_video_ops, !40, !"csi2_video_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1104, i32 43}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1088, i32 4}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @csi2_set_stream.__UNIQUE_ID_ddebug337, !42, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 574, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @csi2_configure.__UNIQUE_ID_ddebug302, !46, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 640, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug303, !50, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 642, i32 2}
!55 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug304, !54, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 643, i32 2}
!58 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug305, !57, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 644, i32 2}
!61 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug306, !60, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 645, i32 2}
!64 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug307, !63, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 646, i32 2}
!67 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug308, !66, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 647, i32 2}
!70 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug309, !69, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 648, i32 2}
!73 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug310, !72, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 649, i32 2}
!76 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug311, !75, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 650, i32 2}
!79 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug312, !78, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 651, i32 2}
!82 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug313, !81, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 652, i32 2}
!85 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug314, !84, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 653, i32 2}
!88 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug315, !87, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 654, i32 2}
!91 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug316, !90, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 655, i32 2}
!94 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug317, !93, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 656, i32 2}
!97 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug318, !96, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 657, i32 2}
!100 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug319, !99, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 658, i32 2}
!103 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug320, !102, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 659, i32 2}
!106 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug321, !105, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 660, i32 2}
!109 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug322, !108, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 661, i32 2}
!112 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug323, !111, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 662, i32 2}
!115 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug324, !114, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 664, i32 2}
!118 = !{ptr @csi2_print_status.__UNIQUE_ID_ddebug325, !117, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!119 = !{ptr @csi2_pad_ops, !120, !"csi2_pad_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1109, i32 41}
!121 = !{ptr @csi2_input_fmts, !122, !"csi2_input_fmts", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 77, i32 27}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!125 = !{ptr @csi2_internal_ops, !126, !"csi2_internal_ops", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1123, i32 46}
!127 = !{ptr @csi2_media_ops, !128, !"csi2_media_ops", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 1191, i32 45}
!129 = !{ptr @csi2_ispvideo_ops, !130, !"csi2_ispvideo_ops", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/omap3isp/ispcsi2.c", i32 821, i32 42}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 7185771}
!141 = !{i64 7185353}
!142 = !{i64 2148791721, i64 2148791726, i64 2148791739, i64 2148791783, i64 2148791817, i64 2148791838}
!143 = !{i8 0, i8 2}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{!"branch_weights", i32 2000, i32 1}
