; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-vfe.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-vfe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vfe_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vfe_format = type { i32, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfe_device = type { ptr, i8, ptr, i32, [30 x i8], ptr, i32, %struct.completion, %struct.completion, %struct.mutex, i32, %struct.mutex, i32, %struct.spinlock, [7 x i32], [4 x %struct.vfe_line], i8, i32, i8, ptr, ptr, %struct.vfe_isr_ops, %struct.camss_video_ops }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vfe_line = type { i32, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_rect, %struct.camss_video, %struct.vfe_output, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.camss_video = type { ptr, %struct.vb2_queue, %struct.video_device, %struct.media_pad, %struct.v4l2_format, i32, %struct.media_pipeline, ptr, %struct.mutex, %struct.mutex, i32, i32, ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_format = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.100, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.100 = type { i8 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vfe_output = type { i8, [3 x i8], [2 x ptr], ptr, %struct.list_head, i32, %union.anon.101, i32, i32, i32, %struct.completion, %struct.completion }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { i32, i32 }
%struct.vfe_isr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss_video_ops = type { ptr, ptr }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.camss_buffer = type { %struct.vb2_v4l2_buffer, [3 x i32], %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.92, i32 }
%union.anon.92 = type { i32 }
%struct.resources = type { [17 x ptr], [17 x ptr], [17 x [17 x i32]], [17 x ptr], [17 x ptr] }
%struct.camss_clock = type { ptr, ptr, ptr, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@vfe_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VFE reset timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vfe_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/qcom/camss/camss-vfe.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfe_reset._entry_ptr = internal global ptr @vfe_reset._entry, section ".printk_index", align 4
@vfe_ops_4_1 = external dso_local constant %struct.vfe_hw_ops, align 4
@vfe_ops_4_7 = external dso_local constant %struct.vfe_hw_ops, align 4
@vfe_ops_4_8 = external dso_local constant %struct.vfe_hw_ops, align 4
@vfe_ops_170 = external dso_local constant %struct.vfe_hw_ops, align 4
@msm_vfe_subdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not map memory\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msm_vfe_subdev_init\00", [44 x i8] zeroinitializer }, align 32
@msm_vfe_subdev_init._entry_ptr = internal global ptr @msm_vfe_subdev_init._entry, section ".printk_index", align 4
@msm_vfe_subdev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing IRQ\0A\00", [19 x i8] zeroinitializer }, align 32
@msm_vfe_subdev_init._entry_ptr.9 = internal global ptr @msm_vfe_subdev_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_%s%d\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm_vfe\00", [24 x i8] zeroinitializer }, align 32
@msm_vfe_subdev_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 1328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_vfe_subdev_init._entry_ptr.14 = internal global ptr @msm_vfe_subdev_init._entry.12, section ".printk_index", align 4
@msm_vfe_subdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vfe->power_lock\00", [47 x i8] zeroinitializer }, align 32
@msm_vfe_subdev_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vfe->stream_lock\00", [46 x i8] zeroinitializer }, align 32
@msm_vfe_subdev_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vfe->output_lock\00", [46 x i8] zeroinitializer }, align 32
@formats_pix_8x16 = internal constant { [4 x %struct.vfe_format], [32 x i8] } { [4 x %struct.vfe_format] [%struct.vfe_format { i32 8198, i8 8 }, %struct.vfe_format { i32 8199, i8 8 }, %struct.vfe_format { i32 8200, i8 8 }, %struct.vfe_format { i32 8201, i8 8 }], [32 x i8] zeroinitializer }, align 32
@formats_rdi_8x16 = internal constant { [17 x %struct.vfe_format], [56 x i8] } { [17 x %struct.vfe_format] [%struct.vfe_format { i32 8198, i8 8 }, %struct.vfe_format { i32 8199, i8 8 }, %struct.vfe_format { i32 8200, i8 8 }, %struct.vfe_format { i32 8201, i8 8 }, %struct.vfe_format { i32 12289, i8 8 }, %struct.vfe_format { i32 12307, i8 8 }, %struct.vfe_format { i32 12290, i8 8 }, %struct.vfe_format { i32 12308, i8 8 }, %struct.vfe_format { i32 12295, i8 10 }, %struct.vfe_format { i32 12302, i8 10 }, %struct.vfe_format { i32 12298, i8 10 }, %struct.vfe_format { i32 12303, i8 10 }, %struct.vfe_format { i32 12296, i8 12 }, %struct.vfe_format { i32 12304, i8 12 }, %struct.vfe_format { i32 12305, i8 12 }, %struct.vfe_format { i32 12306, i8 12 }, %struct.vfe_format { i32 8202, i8 10 }], [56 x i8] zeroinitializer }, align 32
@formats_pix_8x96 = internal constant { [4 x %struct.vfe_format], [32 x i8] } { [4 x %struct.vfe_format] [%struct.vfe_format { i32 8198, i8 8 }, %struct.vfe_format { i32 8199, i8 8 }, %struct.vfe_format { i32 8200, i8 8 }, %struct.vfe_format { i32 8201, i8 8 }], [32 x i8] zeroinitializer }, align 32
@formats_rdi_8x96 = internal constant { [23 x %struct.vfe_format], [40 x i8] } { [23 x %struct.vfe_format] [%struct.vfe_format { i32 8198, i8 8 }, %struct.vfe_format { i32 8199, i8 8 }, %struct.vfe_format { i32 8200, i8 8 }, %struct.vfe_format { i32 8201, i8 8 }, %struct.vfe_format { i32 12289, i8 8 }, %struct.vfe_format { i32 12307, i8 8 }, %struct.vfe_format { i32 12290, i8 8 }, %struct.vfe_format { i32 12308, i8 8 }, %struct.vfe_format { i32 12295, i8 10 }, %struct.vfe_format { i32 12302, i8 10 }, %struct.vfe_format { i32 12298, i8 10 }, %struct.vfe_format { i32 12303, i8 10 }, %struct.vfe_format { i32 12292, i8 16 }, %struct.vfe_format { i32 12296, i8 12 }, %struct.vfe_format { i32 12304, i8 12 }, %struct.vfe_format { i32 12305, i8 12 }, %struct.vfe_format { i32 12306, i8 12 }, %struct.vfe_format { i32 12313, i8 14 }, %struct.vfe_format { i32 12314, i8 14 }, %struct.vfe_format { i32 12315, i8 14 }, %struct.vfe_format { i32 12316, i8 14 }, %struct.vfe_format { i32 8202, i8 10 }, %struct.vfe_format { i32 8236, i8 16 }], [40 x i8] zeroinitializer }, align 32
@formats_rdi_845 = internal constant { [23 x %struct.vfe_format], [40 x i8] } { [23 x %struct.vfe_format] [%struct.vfe_format { i32 8198, i8 8 }, %struct.vfe_format { i32 8199, i8 8 }, %struct.vfe_format { i32 8200, i8 8 }, %struct.vfe_format { i32 8201, i8 8 }, %struct.vfe_format { i32 12289, i8 8 }, %struct.vfe_format { i32 12307, i8 8 }, %struct.vfe_format { i32 12290, i8 8 }, %struct.vfe_format { i32 12308, i8 8 }, %struct.vfe_format { i32 12295, i8 10 }, %struct.vfe_format { i32 12302, i8 10 }, %struct.vfe_format { i32 12298, i8 10 }, %struct.vfe_format { i32 12303, i8 10 }, %struct.vfe_format { i32 12292, i8 16 }, %struct.vfe_format { i32 12296, i8 12 }, %struct.vfe_format { i32 12304, i8 12 }, %struct.vfe_format { i32 12305, i8 12 }, %struct.vfe_format { i32 12306, i8 12 }, %struct.vfe_format { i32 12313, i8 14 }, %struct.vfe_format { i32 12314, i8 14 }, %struct.vfe_format { i32 12315, i8 14 }, %struct.vfe_format { i32 12316, i8 14 }, %struct.vfe_format { i32 8202, i8 10 }, %struct.vfe_format { i32 8236, i8 16 }], [40 x i8] zeroinitializer }, align 32
@vfe_v4l2_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @vfe_core_ops, ptr null, ptr null, ptr @vfe_video_ops, ptr null, ptr null, ptr null, ptr @vfe_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vfe_v4l2_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @vfe_init_formats, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%d_%s\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pix\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%d_%s%d\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rdi\00", [28 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init format: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"msm_vfe_register_entities\00", [38 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry_ptr = internal global ptr @msm_vfe_register_entities._entry, section ".printk_index", align 4
@vfe_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @vfe_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init media entity: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry_ptr.28 = internal global ptr @msm_vfe_register_entities._entry.26, section ".printk_index", align 4
@msm_vfe_register_entities._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 1571, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register subdev: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry_ptr.31 = internal global ptr @msm_vfe_register_entities._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.2, i32 1588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register video node: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry_ptr.35 = internal global ptr @msm_vfe_register_entities._entry.33, section ".printk_index", align 4
@msm_vfe_register_entities._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.25, ptr @.str.2, i32 1599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to link %s->%s entities: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@msm_vfe_register_entities._entry_ptr.38 = internal global ptr @msm_vfe_register_entities._entry.36, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@vfe_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vfe_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vfe_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vfe_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vfe_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @vfe_enum_mbus_code, ptr @vfe_enum_frame_size, ptr null, ptr @vfe_get_format, ptr @vfe_set_format, ptr @vfe_get_selection, ptr @vfe_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfe0\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfe1\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe_lite\00", [23 x i8] zeroinitializer }, align 32
@vfe_set_clock_rates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Pixel clock is too high for VFE\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vfe_set_clock_rates\00", [44 x i8] zeroinitializer }, align 32
@vfe_set_clock_rates._entry_ptr = internal global ptr @vfe_set_clock_rates._entry, section ".printk_index", align 4
@vfe_set_clock_rates._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clk round rate failed: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@vfe_set_clock_rates._entry_ptr.47 = internal global ptr @vfe_set_clock_rates._entry.45, section ".printk_index", align 4
@vfe_set_clock_rates._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 503, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk set rate failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@vfe_set_clock_rates._entry_ptr.50 = internal global ptr @vfe_set_clock_rates._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown format\0A\00", [16 x i8] zeroinitializer }, align 32
@vfe_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 643, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vfe power off on power_count == 0\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vfe_put\00", [24 x i8] zeroinitializer }, align 32
@vfe_put._entry_ptr = internal global ptr @vfe_put._entry, section ".printk_index", align 4
@vfe_set_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 744, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable vfe outputs\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfe_set_stream\00", [17 x i8] zeroinitializer }, align 32
@vfe_set_stream._entry_ptr = internal global ptr @vfe_set_stream._entry, section ".printk_index", align 4
@vfe_set_stream._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 749, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to disable vfe outputs\0A\00", [33 x i8] zeroinitializer }, align 32
@vfe_set_stream._entry_ptr.58 = internal global ptr @vfe_set_stream._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__const.vfe_src_pad_code.src_code.63 = private unnamed_addr constant [5 x i32] [i32 8200, i32 8201, i32 8198, i32 8199, i32 8196], align 4
@__const.vfe_src_pad_code.src_code.64 = private unnamed_addr constant [5 x i32] [i32 8201, i32 8200, i32 8198, i32 8199, i32 8197], align 4
@__const.vfe_src_pad_code.src_code.65 = private unnamed_addr constant [5 x i32] [i32 8198, i32 8200, i32 8201, i32 8199, i32 8194], align 4
@__const.vfe_src_pad_code.src_code.66 = private unnamed_addr constant [5 x i32] [i32 8199, i32 8200, i32 8201, i32 8198, i32 8195], align 4
@switch.table.msm_vfe_subdev_init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @vfe_ops_4_1, ptr @vfe_ops_4_7, ptr @vfe_ops_4_8, ptr @vfe_ops_170], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 258]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 8198, i64 8199, i64 8200, i64 8201]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 8198, i64 8199, i64 8200, i64 8201]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 297, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1309, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1318, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1323, i32 49 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1324, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1328, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1372, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1375, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1378, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"formats_pix_8x16\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 59, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"formats_rdi_8x16\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 39, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"formats_pix_8x96\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 92, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"formats_rdi_8x96\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 66, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"formats_rdi_845\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 99, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"vfe_v4l2_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1495, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"vfe_v4l2_internal_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1501, i32 46 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1543, i32 45 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1544, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1546, i32 45 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1547, i32 29 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1553, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"vfe_media_ops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1505, i32 45 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1565, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1571, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1583, i32 28 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1587, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1597, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 87, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [13 x i8] c"vfe_core_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1478, i32 42 }
@___asan_gen_.220 = private unnamed_addr constant [14 x i8] c"vfe_video_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1482, i32 43 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"vfe_pad_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1486, i32 41 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 452, i32 28 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 453, i32 28 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 454, i32 28 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 484, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 496, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 503, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 142, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 643, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 743, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private constant [49 x i8] c"../drivers/media/platform/qcom/camss/camss-vfe.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 748, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 998, i32 6 }
@___asan_gen_.286 = private unnamed_addr constant [33 x i8] c"switch.table.msm_vfe_subdev_init\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @msm_vfe_register_entities._entry, ptr @msm_vfe_register_entities._entry.26, ptr @msm_vfe_register_entities._entry.29, ptr @msm_vfe_register_entities._entry.33, ptr @msm_vfe_register_entities._entry.36, ptr @msm_vfe_register_entities._entry_ptr, ptr @msm_vfe_register_entities._entry_ptr.28, ptr @msm_vfe_register_entities._entry_ptr.31, ptr @msm_vfe_register_entities._entry_ptr.35, ptr @msm_vfe_register_entities._entry_ptr.38, ptr @msm_vfe_subdev_init._entry, ptr @msm_vfe_subdev_init._entry.12, ptr @msm_vfe_subdev_init._entry.7, ptr @msm_vfe_subdev_init._entry_ptr, ptr @msm_vfe_subdev_init._entry_ptr.14, ptr @msm_vfe_subdev_init._entry_ptr.9, ptr @vfe_put._entry, ptr @vfe_put._entry_ptr, ptr @vfe_reset._entry, ptr @vfe_reset._entry_ptr, ptr @vfe_set_clock_rates._entry, ptr @vfe_set_clock_rates._entry.45, ptr @vfe_set_clock_rates._entry.48, ptr @vfe_set_clock_rates._entry_ptr, ptr @vfe_set_clock_rates._entry_ptr.47, ptr @vfe_set_clock_rates._entry_ptr.50, ptr @vfe_set_stream._entry, ptr @vfe_set_stream._entry.56, ptr @vfe_set_stream._entry_ptr, ptr @vfe_set_stream._entry_ptr.58, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @msm_vfe_subdev_init.__key, ptr @.str.15, ptr @msm_vfe_subdev_init.__key.16, ptr @.str.17, ptr @msm_vfe_subdev_init.__key.18, ptr @.str.19, ptr @formats_pix_8x16, ptr @formats_rdi_8x16, ptr @formats_pix_8x96, ptr @formats_rdi_8x96, ptr @formats_rdi_845, ptr @vfe_v4l2_ops, ptr @vfe_v4l2_internal_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @vfe_media_ops, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @init_completion.__key, ptr @.str.39, ptr @vfe_core_ops, ptr @vfe_video_ops, ptr @vfe_pad_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @switch.table.msm_vfe_subdev_init], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_subdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_subdev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_subdev_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_subdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_subdev_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_subdev_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_pix_8x16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_rdi_8x16 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_pix_8x96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_rdi_8x96 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_rdi_845 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_v4l2_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_v4l2_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_register_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_register_entities._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_register_entities._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_register_entities._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vfe_register_entities._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_set_clock_rates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_set_clock_rates._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_set_clock_rates._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_set_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_set_stream._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_vfe_subdev_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfe_reset(ptr noundef %vfe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 7
  %0 = ptrtoint ptr %reset_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reset_complete, align 4
  %ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %global_reset = getelementptr inbounds %struct.vfe_hw_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %global_reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %global_reset, align 4
  tail call void %4(ptr noundef %vfe) #12
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %reset_complete, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vfe, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfe_reserve_wm(ptr nocapture noundef %vfe, i32 noundef %line_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.inc.if.then_crit_edge ], [ %arrayidx.2, %for.inc.1.if.then_crit_edge ], [ %arrayidx.3, %for.inc.2.if.then_crit_edge ], [ %arrayidx.4, %for.inc.3.if.then_crit_edge ], [ %arrayidx.5, %for.inc.4.if.then_crit_edge ], [ %arrayidx.6, %for.inc.5.if.then_crit_edge ]
  %2 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %line_id, ptr %arrayidx.lcssa, align 4
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp1.1 = icmp eq i32 %4, -1
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp1.2 = icmp eq i32 %6, -1
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp1.3 = icmp eq i32 %8, -1
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp1.4 = icmp eq i32 %10, -1
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 5
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp1.5 = icmp eq i32 %12, -1
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 6
  %13 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp1.6 = icmp eq i32 %14, -1
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.end:                                          ; preds = %for.inc.5.for.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %i.010.lcssa, %if.then ], [ -16, %for.inc.5.for.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @vfe_release_wm(ptr nocapture noundef writeonly %vfe, i8 noundef zeroext %wm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %wm)
  %cmp = icmp ugt i8 %wm, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %wm to i32
  %arrayidx = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vfe_buf_get_pending(ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_bufs = getelementptr inbounds %struct.vfe_output, ptr %output, i32 0, i32 4
  %0 = ptrtoint ptr %pending_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_bufs, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_bufs
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -748
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %buffer.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr, %list_del.exit ]
  ret ptr %buffer.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfe_buf_add_pending(ptr noundef %output, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.camss_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.camss_buffer, ptr %buffer, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue, ptr %prev.i, align 4
  %pending_bufs = getelementptr inbounds %struct.vfe_output, ptr %output, i32 0, i32 4
  %prev.i3 = getelementptr inbounds %struct.vfe_output, ptr %output, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i3, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %3, ptr noundef %pending_bufs) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %prev.i3, align 4
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pending_bufs, ptr %queue, align 4
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %queue, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfe_put_output(ptr noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %line, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  %output1 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #12
  %2 = ptrtoint ptr %output1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %output1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp822.not = icmp eq i8 %3, 0
  br i1 %cmp822.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %vfe_release_wm.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %vfe_release_wm.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx10 = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.023
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp.i = icmp ugt i8 %5, 6
  br i1 %cmp.i, label %for.body.vfe_release_wm.exit_crit_edge, label %if.end.i

for.body.vfe_release_wm.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_release_wm.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 14, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %vfe_release_wm.exit

vfe_release_wm.exit:                              ; preds = %if.end.i, %for.body.vfe_release_wm.exit_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %7 = ptrtoint ptr %output1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %output1, align 4
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %vfe_release_wm.exit.for.body_crit_edge, label %vfe_release_wm.exit.for.end_crit_edge

vfe_release_wm.exit.for.end_crit_edge:            ; preds = %vfe_release_wm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

vfe_release_wm.exit.for.body_crit_edge:           ; preds = %vfe_release_wm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %vfe_release_wm.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %state = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 7
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfe_isr_comp_done(ptr noundef %vfe, i8 noundef zeroext %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.08.lcssa = phi i8 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ]
  %wm_done = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 21, i32 5
  %2 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm_done, align 4
  tail call void %3(ptr noundef %vfe, i8 noundef zeroext %i.08.lcssa) #12
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 3
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp1.2 = icmp eq i32 %7, 3
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp1.3 = icmp eq i32 %9, 3
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp1.4 = icmp eq i32 %11, 3
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp1.5 = icmp eq i32 %13, 3
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp1.6 = icmp eq i32 %15, 3
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.end:                                          ; preds = %for.inc.5.for.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfe_isr_reset_ack(ptr noundef %vfe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 7
  tail call void @complete(ptr noundef %reset_complete) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfe_flush_buffers(ptr noundef %vid, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %vid, i32 -392
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %add.ptr, i32 %sub
  %add.ptr3 = getelementptr i8, ptr %arrayidx, i32 -432
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #12
  %pending_bufs.i = getelementptr i8, ptr %vid, i32 2480
  %2 = ptrtoint ptr %pending_bufs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_bufs.i, align 4
  %cmp.not19.i = icmp eq ptr %3, %pending_bufs.i
  br i1 %cmp.not19.i, label %entry.vfe_buf_flush_pending.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.vfe_buf_flush_pending.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_buf_flush_pending.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -748
  %4 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef %state) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pending_bufs.i
  br i1 %cmp.not.i, label %list_del.exit.i.vfe_buf_flush_pending.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.vfe_buf_flush_pending.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_buf_flush_pending.exit

vfe_buf_flush_pending.exit:                       ; preds = %list_del.exit.i.vfe_buf_flush_pending.exit_crit_edge, %entry.vfe_buf_flush_pending.exit_crit_edge
  %buf = getelementptr i8, ptr %vid, i32 2468
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %vfe_buf_flush_pending.exit.if.end_crit_edge, label %if.then

vfe_buf_flush_pending.exit.if.end_crit_edge:      ; preds = %vfe_buf_flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %vfe_buf_flush_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %14, i32 noundef %state) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %vfe_buf_flush_pending.exit.if.end_crit_edge
  %arrayidx14 = getelementptr i8, ptr %vid, i32 2472
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end.if.end21_crit_edge, label %if.then16

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %16, i32 noundef %state) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end.if.end21_crit_edge
  %last_buffer = getelementptr i8, ptr %vid, i32 2476
  %17 = ptrtoint ptr %last_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last_buffer, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %if.then23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %18, i32 noundef %state) #12
  %19 = ptrtoint ptr %last_buffer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %last_buffer, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end21.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call7) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_vfe_subdev_init(ptr noundef %camss, ptr noundef %vfe, ptr nocapture noundef readonly %res, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.camss, ptr %camss, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %camss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %entry.cleanup163_crit_edge

entry.cleanup163_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.msm_vfe_subdev_init, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %ops7 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %6 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %switch.load, ptr %ops7, align 4
  %ops8 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %subdev_init = getelementptr inbounds %struct.vfe_hw_ops, ptr %switch.load, i32 0, i32 9
  %7 = ptrtoint ptr %subdev_init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subdev_init, align 4
  tail call void %8(ptr noundef %1, ptr noundef %vfe) #12
  %reg = getelementptr inbounds %struct.resources, ptr %res, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %call = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr, ptr noundef %10) #12
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #15
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup163

if.end:                                           ; preds = %switch.lookup
  %interrupt = getelementptr inbounds %struct.resources, ptr %res, i32 0, i32 4
  %15 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt, align 4
  %call14 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 1024, ptr noundef %16) #12
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #15
  br label %cleanup163

if.end19:                                         ; preds = %if.end
  %17 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call14, align 4
  %irq = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 3
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq, align 4
  %irq_name = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end19.dev_name.exit_crit_edge ]
  %id21 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 1
  %24 = ptrtoint ptr %id21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id21, align 4
  %conv = zext i8 %25 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %irq_name, i32 noundef 30, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i, ptr noundef nonnull @.str.11, i32 noundef %conv)
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %28 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops8, align 4
  %isr = getelementptr inbounds %struct.vfe_hw_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %isr, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %27, ptr noundef %31, ptr noundef null, i32 noundef 1, ptr noundef %irq_name, ptr noundef %vfe) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end32, label %if.end33

do.end32:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %call.i) #15
  br label %cleanup163

if.end33:                                         ; preds = %dev_name.exit
  %nclocks = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end33
  %storemerge = phi i32 [ 0, %if.end33 ], [ %inc, %while.cond.while.cond_crit_edge ]
  %32 = ptrtoint ptr %nclocks to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %nclocks, align 4
  %arrayidx35 = getelementptr %struct.resources, ptr %res, i32 0, i32 1, i32 %storemerge
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %34, null
  %inc = add i32 %storemerge, 1
  br i1 %tobool36.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge, i32 16) #12
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !136

devm_kcalloc.exit.thread:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %clock40284 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 5
  %37 = ptrtoint ptr %clock40284 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %clock40284, align 8
  br label %cleanup163

devm_kcalloc.exit:                                ; preds = %while.end
  %38 = extractvalue { i32, i1 } %35, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %38, i32 noundef 3520) #12
  %clock40 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 5
  %39 = ptrtoint ptr %clock40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i, ptr %clock40, align 8
  %tobool42.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool42.not, label %devm_kcalloc.exit.cleanup163_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup163_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %40 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nclocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp46304 = icmp sgt i32 %41, 0
  br i1 %cmp46304, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body96_crit_edge

for.cond.preheader.do.body96_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body96

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc93.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0305 = phi i32 [ %inc94, %for.inc93.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %42 = ptrtoint ptr %clock40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clock40, align 8
  %arrayidx50 = getelementptr %struct.camss_clock, ptr %43, i32 %i.0305
  %arrayidx52 = getelementptr %struct.resources, ptr %res, i32 0, i32 1, i32 %i.0305
  %44 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx52, align 4
  %call53 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef %45) #12
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call53, ptr %arrayidx50, align 4
  %cmp.i275 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %if.then56, label %if.end59

if.then56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %call53 to i32
  br label %cleanup163

if.end59:                                         ; preds = %for.body
  %48 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx52, align 4
  %name = getelementptr %struct.camss_clock, ptr %43, i32 %i.0305, i32 1
  %50 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %name, align 4
  %nfreqs = getelementptr %struct.camss_clock, ptr %43, i32 %i.0305, i32 3
  br label %while.cond62

while.cond62:                                     ; preds = %while.cond62.while.cond62_crit_edge, %if.end59
  %storemerge274 = phi i32 [ 0, %if.end59 ], [ %inc69, %while.cond62.while.cond62_crit_edge ]
  %51 = ptrtoint ptr %nfreqs to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge274, ptr %nfreqs, align 4
  %arrayidx65 = getelementptr %struct.resources, ptr %res, i32 0, i32 2, i32 %i.0305, i32 %storemerge274
  %52 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq i32 %53, 0
  %inc69 = add i32 %storemerge274, 1
  br i1 %tobool66.not, label %while.end70, label %while.cond62.while.cond62_crit_edge

while.cond62.while.cond62_crit_edge:              ; preds = %while.cond62
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond62

while.end70:                                      ; preds = %while.cond62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge274)
  %tobool72.not = icmp eq i32 %storemerge274, 0
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %while.end70
  call void @__sanitizer_cov_trace_pc() #14
  %freq = getelementptr %struct.camss_clock, ptr %43, i32 %i.0305, i32 2
  %54 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %freq, align 4
  br label %for.inc93

if.end74:                                         ; preds = %while.end70
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %storemerge274, i32 4) #12
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %devm_kcalloc.exit279.thread, label %devm_kcalloc.exit279, !prof !136

devm_kcalloc.exit279.thread:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %freq77287 = getelementptr %struct.camss_clock, ptr %43, i32 %i.0305, i32 2
  %57 = ptrtoint ptr %freq77287 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %freq77287, align 4
  br label %cleanup163

devm_kcalloc.exit279:                             ; preds = %if.end74
  %58 = extractvalue { i32, i1 } %55, 0
  %call5.i.i276 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %58, i32 noundef 3520) #12
  %freq77 = getelementptr %struct.camss_clock, ptr %43, i32 %i.0305, i32 2
  %59 = ptrtoint ptr %freq77 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call5.i.i276, ptr %freq77, align 4
  %tobool79.not = icmp eq ptr %call5.i.i276, null
  br i1 %tobool79.not, label %devm_kcalloc.exit279.cleanup163_crit_edge, label %for.cond82.preheader

devm_kcalloc.exit279.cleanup163_crit_edge:        ; preds = %devm_kcalloc.exit279
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

for.cond82.preheader:                             ; preds = %devm_kcalloc.exit279
  %60 = ptrtoint ptr %nfreqs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nfreqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp84302.not = icmp eq i32 %61, 0
  br i1 %cmp84302.not, label %for.cond82.preheader.for.inc93_crit_edge, label %for.cond82.preheader.for.body86_crit_edge

for.cond82.preheader.for.body86_crit_edge:        ; preds = %for.cond82.preheader
  br label %for.body86

for.cond82.preheader.for.inc93_crit_edge:         ; preds = %for.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc93

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.cond82.preheader.for.body86_crit_edge
  %j.0303 = phi i32 [ %inc92, %for.body86.for.body86_crit_edge ], [ 0, %for.cond82.preheader.for.body86_crit_edge ]
  %arrayidx89 = getelementptr %struct.resources, ptr %res, i32 0, i32 2, i32 %i.0305, i32 %j.0303
  %62 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx89, align 4
  %64 = ptrtoint ptr %freq77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %freq77, align 4
  %arrayidx91 = getelementptr i32, ptr %65, i32 %j.0303
  %66 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %arrayidx91, align 4
  %inc92 = add nuw i32 %j.0303, 1
  %67 = ptrtoint ptr %nfreqs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nfreqs, align 4
  %cmp84 = icmp ult i32 %inc92, %68
  br i1 %cmp84, label %for.body86.for.body86_crit_edge, label %for.body86.for.inc93_crit_edge

for.body86.for.inc93_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc93

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body86

for.inc93:                                        ; preds = %for.body86.for.inc93_crit_edge, %for.cond82.preheader.for.inc93_crit_edge, %if.then73
  %inc94 = add nuw nsw i32 %i.0305, 1
  %69 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nclocks, align 4
  %cmp46 = icmp slt i32 %inc94, %70
  br i1 %cmp46, label %for.inc93.for.body_crit_edge, label %for.inc93.do.body96_crit_edge

for.inc93.do.body96_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body96

for.inc93.for.body_crit_edge:                     ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body96:                                        ; preds = %for.inc93.do.body96_crit_edge, %for.cond.preheader.do.body96_crit_edge
  %power_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %power_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @msm_vfe_subdev_init.__key) #12
  %power_count = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 10
  %71 = ptrtoint ptr %power_count to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %power_count, align 4
  %stream_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %stream_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @msm_vfe_subdev_init.__key.16) #12
  %stream_count = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 12
  %72 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %stream_count, align 4
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %output_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @msm_vfe_subdev_init.__key.18, i16 noundef signext 3) #12
  %73 = ptrtoint ptr %vfe to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %camss, ptr %vfe, align 8
  %74 = ptrtoint ptr %id21 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %id, ptr %id21, align 4
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 17
  %75 = ptrtoint ptr %reg_update to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %reg_update, align 4
  %line_num = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 16
  %76 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %line_num, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp110309.not = icmp eq i8 %77, 0
  br i1 %cmp110309.not, label %do.body96.for.end162_crit_edge, label %for.body112.preheader

do.body96.for.end162_crit_edge:                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end162

for.body112.preheader:                            ; preds = %do.body96
  %formats140 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 3, i32 8
  %nformats141 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 3, i32 9
  %formats = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 3, i32 8
  %nformats = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 3, i32 9
  br label %for.body112

for.body112:                                      ; preds = %for.inc160.for.body112_crit_edge, %for.body112.preheader
  %i.1310 = phi i32 [ %inc161, %for.inc160.for.body112_crit_edge ], [ 0, %for.body112.preheader ]
  %arrayidx113 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310
  %video_out = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 6
  %type = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 6, i32 5
  %78 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 9, ptr %type, align 4
  %79 = ptrtoint ptr %video_out to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %camss, ptr %video_out, align 8
  %80 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %i.1310, ptr %arrayidx113, align 8
  %sof = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 7, i32 10
  %81 = ptrtoint ptr %sof to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %sof, align 4
  %wait.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 7, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #12
  %reg_update118 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 7, i32 11
  %82 = ptrtoint ptr %reg_update118 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %reg_update118, align 4
  %wait.i280 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 7, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i280, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #12
  %83 = ptrtoint ptr %camss to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %camss, align 8
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %84, label %for.body112.cleanup163_crit_edge [
    i32 0, label %if.then122
    i32 1, label %for.body112.if.then136_crit_edge
    i32 2, label %for.body112.if.then136_crit_edge361
    i32 3, label %if.then150
  ]

for.body112.if.then136_crit_edge361:              ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

for.body112.if.then136_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

for.body112.cleanup163_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.then122:                                       ; preds = %for.body112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1310)
  %cmp123 = icmp eq i32 %i.1310, 3
  br i1 %cmp123, label %if.then125, label %if.else

if.then125:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %formats to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @formats_pix_8x16, ptr %formats, align 8
  %87 = ptrtoint ptr %nformats to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4, ptr %nformats, align 4
  br label %for.inc160

if.else:                                          ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  %formats126 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 8
  %88 = ptrtoint ptr %formats126 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @formats_rdi_8x16, ptr %formats126, align 8
  %nformats127 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 9
  %89 = ptrtoint ptr %nformats127 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 17, ptr %nformats127, align 4
  br label %for.inc160

if.then136:                                       ; preds = %for.body112.if.then136_crit_edge, %for.body112.if.then136_crit_edge361
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1310)
  %cmp137 = icmp eq i32 %i.1310, 3
  br i1 %cmp137, label %if.then139, label %if.else142

if.then139:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %formats140 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @formats_pix_8x96, ptr %formats140, align 8
  %91 = ptrtoint ptr %nformats141 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %nformats141, align 4
  br label %for.inc160

if.else142:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  %formats143 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 8
  %92 = ptrtoint ptr %formats143 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @formats_rdi_8x96, ptr %formats143, align 8
  %nformats144 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 9
  %93 = ptrtoint ptr %nformats144 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 23, ptr %nformats144, align 4
  br label %for.inc160

if.then150:                                       ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  %formats151 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 8
  %94 = ptrtoint ptr %formats151 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @formats_rdi_845, ptr %formats151, align 8
  %nformats152 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1310, i32 9
  %95 = ptrtoint ptr %nformats152 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 23, ptr %nformats152, align 4
  br label %for.inc160

for.inc160:                                       ; preds = %if.then150, %if.else142, %if.then139, %if.else, %if.then125
  %inc161 = add nuw nsw i32 %i.1310, 1
  %96 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %line_num, align 8
  %conv109 = zext i8 %97 to i32
  %cmp110 = icmp ult i32 %inc161, %conv109
  br i1 %cmp110, label %for.inc160.for.body112_crit_edge, label %for.inc160.for.end162_crit_edge

for.inc160.for.end162_crit_edge:                  ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end162

for.inc160.for.body112_crit_edge:                 ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body112

for.end162:                                       ; preds = %for.inc160.for.end162_crit_edge, %do.body96.for.end162_crit_edge
  %reset_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 7
  %98 = ptrtoint ptr %reset_complete to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %reset_complete, align 4
  %wait.i281 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i281, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #12
  %halt_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 8
  %99 = ptrtoint ptr %halt_complete to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %halt_complete, align 4
  %wait.i282 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i282, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #12
  br label %cleanup163

cleanup163:                                       ; preds = %for.end162, %for.body112.cleanup163_crit_edge, %devm_kcalloc.exit279.cleanup163_crit_edge, %devm_kcalloc.exit279.thread, %if.then56, %devm_kcalloc.exit.cleanup163_crit_edge, %devm_kcalloc.exit.thread, %do.end32, %do.end18, %do.end, %entry.cleanup163_crit_edge
  %retval.4 = phi i32 [ %14, %do.end ], [ %call.i, %do.end32 ], [ 0, %for.end162 ], [ -22, %do.end18 ], [ -22, %entry.cleanup163_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup163_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit279.thread ], [ %47, %if.then56 ], [ -22, %for.body112.cleanup163_crit_edge ], [ -12, %devm_kcalloc.exit279.cleanup163_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msm_vfe_get_vfe_id(ptr noundef readonly %entity, ptr nocapture noundef writeonly %id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %sub = sub i32 0, %3
  %arrayidx = getelementptr %struct.vfe_line, ptr %1, i32 %sub
  %add.ptr5 = getelementptr i8, ptr %arrayidx, i32 -432
  %id6 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr5, i32 0, i32 1
  %4 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id6, align 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %id, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @msm_vfe_get_vfe_line_id(ptr noundef readonly %entity, ptr nocapture noundef writeonly %id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_vfe_register_entities(ptr noundef %vfe, ptr noundef %v4l2_dev) local_unnamed_addr #0 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfe, align 8
  %dev1 = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %line_num = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 16
  %4 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line_num, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp218.not = icmp eq i8 %5, 0
  br i1 %cmp218.not, label %entry.cleanup100_crit_edge, label %for.body.lr.ph

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup100

for.body.lr.ph:                                   ; preds = %entry
  %id16 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %format.i, i32 4
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 1
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 2, i32 2
  %video_ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 22
  %name11 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 3, i32 1, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %arrayidx = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219
  %subdev = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 1
  %pads5 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 2
  %video_out8 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 6
  %7 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @v4l2_subdev_init(ptr noundef %subdev, ptr noundef nonnull @vfe_v4l2_ops) #12
  %internal_ops = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 1, i32 7
  %8 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vfe_v4l2_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 1, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 4
  store i32 %or, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0219)
  %cmp9 = icmp eq i32 %i.0219, 3
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %id16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id16, align 4
  %conv13 = zext i8 %12 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name11, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, i32 noundef %conv13, ptr noundef nonnull @.str.21)
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %name14 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 1, i32 9
  %13 = ptrtoint ptr %id16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id16, align 4
  %conv17 = zext i8 %14 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name14, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.11, i32 noundef %conv17, ptr noundef nonnull @.str.23, i32 noundef %i.0219)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev_priv.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 1, i32 11
  %15 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #12
  %16 = call ptr @memset(ptr %6, i32 0, i32 84)
  %17 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %format.i, align 4
  %18 = ptrtoint ptr %format1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1920, ptr %format1.i, align 4
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1080, ptr %height.i, align 4
  %20 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8198, ptr %code.i, align 4
  %call.i = call i32 @vfe_set_format(ptr noundef %subdev, ptr noundef null, ptr noundef nonnull %format.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %call.i) #15
  br label %cleanup.thread

if.end25:                                         ; preds = %if.end
  %flags27 = getelementptr inbounds %struct.media_pad, ptr %pads5, i32 0, i32 4
  %21 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags27, align 4
  %flags29 = getelementptr %struct.media_pad, ptr %pads5, i32 1, i32 4
  %22 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %flags29, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 3
  %23 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16386, ptr %function, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 11
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vfe_media_ops, ptr %ops, align 4
  %call32 = call i32 @media_entity_pads_init(ptr noundef %subdev, i16 noundef zeroext 2, ptr noundef %pads5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end38, label %if.end39

do.end38:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %call32) #15
  br label %cleanup.thread

if.end39:                                         ; preds = %if.end25
  %call40 = call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %subdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end39
  %ops48 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 6, i32 7
  %25 = ptrtoint ptr %ops48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %video_ops, ptr %ops48, align 8
  %bpl_alignment = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 6, i32 10
  %26 = ptrtoint ptr %bpl_alignment to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %bpl_alignment, align 4
  %line_based = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 6, i32 11
  %27 = ptrtoint ptr %line_based to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %line_based, align 8
  br i1 %cmp9, label %if.then51, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bpl_alignment to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %bpl_alignment, align 4
  %29 = ptrtoint ptr %line_based to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %line_based, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end47.if.end54_crit_edge
  %30 = ptrtoint ptr %id16 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %id16, align 4
  %conv57 = zext i8 %31 to i32
  %call58 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.11, i32 noundef %conv57, ptr noundef nonnull @.str.32, i32 noundef %i.0219)
  %cond = zext i1 %cmp9 to i32
  %call62 = call i32 @msm_video_register(ptr noundef %video_out8, ptr noundef %v4l2_dev, ptr noundef nonnull %name, i32 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %cleanup.thread186, label %if.end69

cleanup.thread186:                                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %call62) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  br label %error_reg_video

if.end69:                                         ; preds = %if.end54
  %vdev = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.0219, i32 6, i32 2
  %call72 = call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext 1, ptr noundef %vdev, i16 noundef zeroext 0, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %error_link, label %for.inc

cleanup.thread:                                   ; preds = %do.end38, %do.end
  %ret.0.ph = phi i32 [ %call32, %do.end38 ], [ %call.i, %do.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  br label %error_init

cleanup:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %call40) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  br label %error_init

for.inc:                                          ; preds = %if.end69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  %inc = add nuw nsw i32 %i.0219, 1
  %32 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %line_num, align 8
  %conv = zext i8 %33 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup100_crit_edge

for.inc.cleanup100_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup100

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

error_link:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %name80 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 1
  %34 = ptrtoint ptr %name80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name80, align 4
  %name83 = getelementptr inbounds %struct.media_entity, ptr %vdev, i32 0, i32 1
  %36 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name83, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %35, ptr noundef %37, i32 noundef %call72) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  call void @msm_video_unregister(ptr noundef %video_out8) #12
  br label %error_reg_video

error_reg_video:                                  ; preds = %error_link, %cleanup.thread186
  %ret.0184 = phi i32 [ %call72, %error_link ], [ %call62, %cleanup.thread186 ]
  call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #12
  br label %error_init

error_init:                                       ; preds = %error_reg_video, %cleanup, %cleanup.thread
  %ret.0176 = phi i32 [ %ret.0.ph, %cleanup.thread ], [ %ret.0184, %error_reg_video ], [ %call40, %cleanup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0219)
  %cmp87221.not = icmp eq i32 %i.0219, 0
  br i1 %cmp87221.not, label %error_init.cleanup100_crit_edge, label %error_init.for.body89_crit_edge

error_init.for.body89_crit_edge:                  ; preds = %error_init
  br label %for.body89

error_init.cleanup100_crit_edge:                  ; preds = %error_init
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup100

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %error_init.for.body89_crit_edge
  %i.1222.in = phi i32 [ %i.1222, %for.body89.for.body89_crit_edge ], [ %i.0219, %error_init.for.body89_crit_edge ]
  %i.1222 = add nsw i32 %i.1222.in, -1
  %subdev92 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1222, i32 1
  %video_out95 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.1222, i32 6
  call void @msm_video_unregister(ptr noundef %video_out95) #12
  call void @v4l2_device_unregister_subdev(ptr noundef %subdev92) #12
  %cmp87 = icmp sgt i32 %i.1222.in, 1
  br i1 %cmp87, label %for.body89.for.body89_crit_edge, label %for.body89.cleanup100_crit_edge

for.body89.cleanup100_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup100

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body89

cleanup100:                                       ; preds = %for.body89.cleanup100_crit_edge, %error_init.cleanup100_crit_edge, %for.inc.cleanup100_crit_edge, %entry.cleanup100_crit_edge
  %retval.0 = phi i32 [ %ret.0176, %error_init.cleanup100_crit_edge ], [ 0, %entry.cleanup100_crit_edge ], [ %ret.0176, %for.body89.cleanup100_crit_edge ], [ 0, %for.inc.cleanup100_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_init_formats(ptr nocapture noundef readonly %sd, ptr noundef readonly %fh) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #12
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %tobool.not = icmp eq ptr %fh, null
  %cond = zext i1 %tobool.not to i32
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %3 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1920, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1080, ptr %height, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8198, ptr %code, align 4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond3 = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = call i32 @vfe_set_format(ptr noundef %sd, ptr noundef %cond3, ptr noundef nonnull %format)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_video_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_video_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_vfe_unregister_entities(ptr noundef %vfe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %power_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %power_lock) #12
  %stream_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 11
  tail call void @mutex_destroy(ptr noundef %stream_lock) #12
  %line_num = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 16
  %0 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %line_num, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp14.not = icmp eq i8 %1, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %subdev = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.015, i32 1
  %video_out4 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %i.015, i32 6
  tail call void @msm_video_unregister(ptr noundef %video_out4) #12
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev) #12
  %inc = add nuw nsw i32 %i.015, 1
  %2 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %line_num, align 8
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_set_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #0 align 64 {
entry:
  %pixel_clock.i77.i = alloca [4 x i64], align 8
  %min_rate.i78.i = alloca i64, align 8
  %pixel_clock.i.i = alloca [4 x i64], align 8
  %min_rate.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %sub = sub i32 0, %3
  %arrayidx = getelementptr %struct.vfe_line, ptr %1, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %power_lock.i9 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %power_lock.i9, i32 noundef 0) #12
  %power_count.i10 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 10
  %4 = ptrtoint ptr %power_count.i10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_count.i10, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 19
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %pm_domain_on.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %pm_domain_on.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm_domain_on.i, align 4
  %call.i = tail call i32 %9(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then.i.vfe_get.exit.thread_crit_edge, label %if.end.i

if.then.i.vfe_get.exit.thread_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_get.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev.i = getelementptr inbounds %struct.camss, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6.i

if.then.i.i:                                      ; preds = %if.end.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.error_domain_off.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.error_domain_off.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_domain_off.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  br label %error_domain_off.i

if.end6.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %dev1.i.i = getelementptr inbounds %struct.camss, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pixel_clock.i.i) #12
  %19 = getelementptr inbounds [4 x i64], ptr %pixel_clock.i.i, i32 0, i32 3
  %line_num.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 16
  %20 = call ptr @memset(ptr %pixel_clock.i.i, i32 255, i32 32)
  %21 = ptrtoint ptr %line_num.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %line_num.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp157.not.i.i = icmp eq i8 %22, 0
  br i1 %cmp157.not.i.i, label %if.end6.i.for.cond5.preheader.i.i_crit_edge, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

if.end6.i.for.cond5.preheader.i.i_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i.i

for.cond5.preheader.i.i:                          ; preds = %for.inc.i.i.for.cond5.preheader.i.i_crit_edge, %if.end6.i.for.cond5.preheader.i.i_crit_edge
  %nclocks.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 6
  %23 = ptrtoint ptr %nclocks.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nclocks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6169.i.i = icmp sgt i32 %24, 0
  br i1 %cmp6169.i.i, label %for.body8.lr.ph.i.i, label %for.cond5.preheader.i.i.if.end10.i_crit_edge

for.cond5.preheader.i.i.if.end10.i_crit_edge:     ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

for.body8.lr.ph.i.i:                              ; preds = %for.cond5.preheader.i.i
  %clock9.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 5
  br label %for.body8.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %i.0158.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  %subdev.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %i.0158.i.i, i32 1
  %arrayidx3.i.i = getelementptr [4 x i64], ptr %pixel_clock.i.i, i32 0, i32 %i.0158.i.i
  %call.i65.i = call i32 @camss_get_pixel_clock(ptr noundef %subdev.i.i, ptr noundef %arrayidx3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool.not.i.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i66.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i66.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %arrayidx3.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i66.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0158.i.i, 1
  %26 = ptrtoint ptr %line_num.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %line_num.i.i, align 8
  %conv.i.i = zext i8 %27 to i32
  %cmp.i67.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i67.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.cond5.preheader.i.i_crit_edge

for.inc.i.i.for.cond5.preheader.i.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body8.i.i:                                    ; preds = %for.inc96.i.i.for.body8.i.i_crit_edge, %for.body8.lr.ph.i.i
  %i.1170.i.i = phi i32 [ 0, %for.body8.lr.ph.i.i ], [ %inc97.i.i, %for.inc96.i.i.for.body8.i.i_crit_edge ]
  %28 = ptrtoint ptr %clock9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clock9.i.i, align 8
  %arrayidx10.i.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.1170.i.i
  %name.i.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.1170.i.i, i32 1
  %30 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i.i, align 4
  %call11.i.i = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(5) @.str.40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %for.body8.i.i.if.then20.i.i_crit_edge, label %lor.lhs.false.i.i

for.body8.i.i.if.then20.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i.i

lor.lhs.false.i.i:                                ; preds = %for.body8.i.i
  %call14.i.i = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(5) @.str.41) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %lor.lhs.false.i.i.if.then20.i.i_crit_edge, label %lor.lhs.false16.i.i

lor.lhs.false.i.i.if.then20.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i.i

lor.lhs.false16.i.i:                              ; preds = %lor.lhs.false.i.i
  %call18.i.i = call i32 @strcmp(ptr noundef %31, ptr noundef nonnull dereferenceable(9) @.str.42) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %lor.lhs.false16.i.i.if.then20.i.i_crit_edge, label %lor.lhs.false16.i.i.for.inc96.i.i_crit_edge

lor.lhs.false16.i.i.for.inc96.i.i_crit_edge:      ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc96.i.i

lor.lhs.false16.i.i.if.then20.i.i_crit_edge:      ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.i.i

if.then20.i.i:                                    ; preds = %lor.lhs.false16.i.i.if.then20.i.i_crit_edge, %lor.lhs.false.i.i.if.then20.i.i_crit_edge, %for.body8.i.i.if.then20.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_rate.i.i) #12
  %32 = ptrtoint ptr %min_rate.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %min_rate.i.i, align 8
  %33 = ptrtoint ptr %line_num.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %line_num.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp24160.not.i.i = icmp eq i8 %34, 0
  br i1 %cmp24160.not.i.i, label %if.then20.i.i.for.end48.i.i_crit_edge, label %if.then20.i.i.for.body26.i.i_crit_edge

if.then20.i.i.for.body26.i.i_crit_edge:           ; preds = %if.then20.i.i
  br label %for.body26.i.i

if.then20.i.i.for.end48.i.i_crit_edge:            ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48.i.i

for.body26.i.i:                                   ; preds = %if.end45.i.i.for.body26.i.i_crit_edge, %if.then20.i.i.for.body26.i.i_crit_edge
  %j.0161.i.i = phi i32 [ %inc47.i.i, %if.end45.i.i.for.body26.i.i_crit_edge ], [ 0, %if.then20.i.i.for.body26.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.0161.i.i)
  %cmp27.i.i = icmp eq i32 %j.0161.i.i, 3
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.else.i.i

if.then29.i.i:                                    ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %19, align 8
  %extract.t45 = trunc i64 %36 to i32
  br label %if.end39.i.i

if.else.i.i:                                      ; preds = %for.body26.i.i
  %formats.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %j.0161.i.i, i32 8
  %37 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %formats.i.i, align 8
  %nformats.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %j.0161.i.i, i32 9
  %39 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nformats.i.i, align 4
  %code.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %j.0161.i.i, i32 3, i32 0, i32 2
  %41 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %code.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp28.not.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp28.not.i.i.i, label %if.else.i.i.do.end.i.i.i_crit_edge, label %if.else.i.i.for.body.i.i.i_crit_edge

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

if.else.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.029.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %40
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.do.end.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.cond.i.i.i.do.end.i.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %i.029.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.vfe_format, ptr %38, i32 %i.029.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp2.i.i.i = icmp eq i32 %44, %42
  br i1 %cmp2.i.i.i, label %for.body.i.i.i.vfe_get_bpp.exit.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.vfe_get_bpp.exit.i.i_crit_edge:    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_get_bpp.exit.i.i

do.end.i.i.i:                                     ; preds = %for.cond.i.i.i.do.end.i.i.i_crit_edge, %if.else.i.i.do.end.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.51) #12
  br label %vfe_get_bpp.exit.i.i

vfe_get_bpp.exit.i.i:                             ; preds = %do.end.i.i.i, %for.body.i.i.i.vfe_get_bpp.exit.i.i_crit_edge
  %arrayidx.pn.i.i.i = phi ptr [ %38, %do.end.i.i.i ], [ %arrayidx.i.i.i, %for.body.i.i.i.vfe_get_bpp.exit.i.i_crit_edge ]
  %retval.0.in.i.i.i = getelementptr inbounds %struct.vfe_format, ptr %arrayidx.pn.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %retval.0.i.i.i = load i8, ptr %retval.0.in.i.i.i, align 4
  %arrayidx36.i.i = getelementptr [4 x i64], ptr %pixel_clock.i.i, i32 0, i32 %j.0161.i.i
  %46 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx36.i.i, align 8
  %conv37.i.i = zext i8 %retval.0.i.i.i to i64
  %mul.i.i = mul i64 %47, %conv37.i.i
  %div148.i.i = lshr i64 %mul.i.i, 6
  %extract.t = trunc i64 %div148.i.i to i32
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %vfe_get_bpp.exit.i.i, %if.then29.i.i
  %div148.i.i.sink.off0 = phi i32 [ %extract.t, %vfe_get_bpp.exit.i.i ], [ %extract.t45, %if.then29.i.i ]
  %48 = ptrtoint ptr %min_rate.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %min_rate.i.i, align 8
  %conv40.i.i = zext i32 %div148.i.i.sink.off0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %conv40.i.i)
  %cmp41.i.i = icmp ult i64 %49, %conv40.i.i
  br i1 %cmp41.i.i, label %if.then43.i.i, label %if.end39.i.i.if.end45.i.i_crit_edge

if.end39.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %min_rate.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv40.i.i, ptr %min_rate.i.i, align 8
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i.if.end45.i.i_crit_edge
  %inc47.i.i = add nuw nsw i32 %j.0161.i.i, 1
  %51 = ptrtoint ptr %line_num.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %line_num.i.i, align 8
  %conv23.i.i = zext i8 %52 to i32
  %cmp24.i.i = icmp ult i32 %inc47.i.i, %conv23.i.i
  br i1 %cmp24.i.i, label %if.end45.i.i.for.body26.i.i_crit_edge, label %if.end45.i.i.for.end48.i.i_crit_edge

if.end45.i.i.for.end48.i.i_crit_edge:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48.i.i

if.end45.i.i.for.body26.i.i_crit_edge:            ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body26.i.i

for.end48.i.i:                                    ; preds = %if.end45.i.i.for.end48.i.i_crit_edge, %if.then20.i.i.for.end48.i.i_crit_edge
  call void @camss_add_clock_margin(ptr noundef nonnull %min_rate.i.i) #12
  %nfreqs.i.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.1170.i.i, i32 3
  %53 = ptrtoint ptr %nfreqs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nfreqs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp50163.not.i.i = icmp eq i32 %54, 0
  br i1 %cmp50163.not.i.i, label %for.end48.i.i.for.end61.i.i_crit_edge, label %for.body52.lr.ph.i.i

for.end48.i.i.for.end61.i.i_crit_edge:            ; preds = %for.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end61.i.i

for.body52.lr.ph.i.i:                             ; preds = %for.end48.i.i
  %55 = ptrtoint ptr %min_rate.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %min_rate.i.i, align 8
  %freq.i.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.1170.i.i, i32 2
  %57 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %freq.i.i, align 4
  br label %for.body52.i.i

for.body52.i.i:                                   ; preds = %for.inc59.i.i.for.body52.i.i_crit_edge, %for.body52.lr.ph.i.i
  %j.1164.i.i = phi i32 [ 0, %for.body52.lr.ph.i.i ], [ %inc60.i.i, %for.inc59.i.i.for.body52.i.i_crit_edge ]
  %arrayidx53.i.i = getelementptr i32, ptr %58, i32 %j.1164.i.i
  %59 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx53.i.i, align 4
  %conv54.i.i = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %conv54.i.i)
  %cmp55.i.i = icmp ult i64 %56, %conv54.i.i
  br i1 %cmp55.i.i, label %for.body52.i.i.for.end61.i.i_crit_edge, label %for.inc59.i.i

for.body52.i.i.for.end61.i.i_crit_edge:           ; preds = %for.body52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end61.i.i

for.inc59.i.i:                                    ; preds = %for.body52.i.i
  %inc60.i.i = add nuw i32 %j.1164.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc60.i.i, %54
  br i1 %exitcond.not.i.i, label %for.inc59.i.i.do.end.i.i_crit_edge, label %for.inc59.i.i.for.body52.i.i_crit_edge

for.inc59.i.i.for.body52.i.i_crit_edge:           ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body52.i.i

for.inc59.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

for.end61.i.i:                                    ; preds = %for.body52.i.i.for.end61.i.i_crit_edge, %for.end48.i.i.for.end61.i.i_crit_edge
  %j.1.lcssa.i.i = phi i32 [ 0, %for.end48.i.i.for.end61.i.i_crit_edge ], [ %j.1164.i.i, %for.body52.i.i.for.end61.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.lcssa.i.i, i32 %54)
  %cmp63.i.i = icmp eq i32 %j.1.lcssa.i.i, %54
  br i1 %cmp63.i.i, label %for.end61.i.i.do.end.i.i_crit_edge, label %if.end66.i.i

for.end61.i.i.do.end.i.i_crit_edge:               ; preds = %for.end61.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end61.i.i.do.end.i.i_crit_edge, %for.inc59.i.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.43) #15
  br label %vfe_set_clock_rates.exit.i

if.end66.i.i:                                     ; preds = %for.end61.i.i
  %61 = ptrtoint ptr %min_rate.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %min_rate.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %cmp67.i.i = icmp eq i64 %62, 0
  %sub.i.i = add i32 %54, -1
  %spec.select.i.i = select i1 %cmp67.i.i, i32 %sub.i.i, i32 %j.1.lcssa.i.i
  %63 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx10.i.i, align 4
  %freq72.i.i = getelementptr %struct.camss_clock, ptr %29, i32 %i.1170.i.i, i32 2
  %65 = ptrtoint ptr %freq72.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %freq72.i.i, align 4
  %arrayidx73.i.i = getelementptr i32, ptr %66, i32 %spec.select.i.i
  %67 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx73.i.i, align 4
  %call74.i.i = call i32 @clk_round_rate(ptr noundef %64, i32 noundef %68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %cmp75.i.i = icmp slt i32 %call74.i.i, 0
  br i1 %cmp75.i.i, label %do.end80.i.i, label %if.end81.i.i

do.end80.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.46, i32 noundef %call74.i.i) #15
  br label %vfe_set_clock_rates.exit.i

if.end81.i.i:                                     ; preds = %if.end66.i.i
  %69 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx10.i.i, align 4
  %call83.i.i = call i32 @clk_set_rate(ptr noundef %70, i32 noundef %call74.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i.i)
  %cmp84.i.i = icmp slt i32 %call83.i.i, 0
  br i1 %cmp84.i.i, label %do.end89.i.i, label %cleanup.i.i

do.end89.i.i:                                     ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.49, i32 noundef %call83.i.i) #15
  br label %vfe_set_clock_rates.exit.i

cleanup.i.i:                                      ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_rate.i.i) #12
  br label %for.inc96.i.i

for.inc96.i.i:                                    ; preds = %cleanup.i.i, %lor.lhs.false16.i.i.for.inc96.i.i_crit_edge
  %inc97.i.i = add nuw nsw i32 %i.1170.i.i, 1
  %71 = ptrtoint ptr %nclocks.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nclocks.i.i, align 4
  %cmp6.i.i = icmp slt i32 %inc97.i.i, %72
  br i1 %cmp6.i.i, label %for.inc96.i.i.for.body8.i.i_crit_edge, label %for.inc96.i.i.if.end10.i_crit_edge

for.inc96.i.i.if.end10.i_crit_edge:               ; preds = %for.inc96.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

for.inc96.i.i.for.body8.i.i_crit_edge:            ; preds = %for.inc96.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8.i.i

vfe_set_clock_rates.exit.i:                       ; preds = %do.end89.i.i, %do.end80.i.i, %do.end.i.i
  %retval.1.ph.i.i = phi i32 [ %call83.i.i, %do.end89.i.i ], [ -22, %do.end80.i.i ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_rate.i.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pixel_clock.i.i) #12
  br label %error_pm_runtime_get.i

if.end10.i:                                       ; preds = %for.inc96.i.i.if.end10.i_crit_edge, %for.cond5.preheader.i.i.if.end10.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pixel_clock.i.i) #12
  %73 = ptrtoint ptr %nclocks.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nclocks.i.i, align 4
  %clock.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 5
  %75 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clock.i, align 8
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 8
  %dev12.i = getelementptr inbounds %struct.camss, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev12.i, align 8
  %call13.i = call i32 @camss_enable_clocks(i32 noundef %74, ptr noundef %76, ptr noundef %80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end10.i.error_pm_runtime_get.i_crit_edge, label %if.end16.i

if.end10.i.error_pm_runtime_get.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_pm_runtime_get.i

if.end16.i:                                       ; preds = %if.end10.i
  %reset_complete.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 7
  %81 = ptrtoint ptr %reset_complete.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %reset_complete.i.i, align 4
  %82 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i, align 4
  %global_reset.i.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %global_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %global_reset.i.i, align 4
  call void %85(ptr noundef %add.ptr) #12
  %call2.i.i = call i32 @wait_for_completion_timeout(ptr noundef %reset_complete.i.i, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i68.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i68.i, label %error_reset.i, label %if.end20.i

if.end20.i:                                       ; preds = %if.end16.i
  %uglygep.i.i = getelementptr i8, ptr %add.ptr, i32 404
  %86 = call ptr @memset(ptr %uglygep.i.i, i32 255, i32 28)
  %87 = ptrtoint ptr %line_num.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %line_num.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp13.not.i.i = icmp eq i8 %88, 0
  br i1 %cmp13.not.i.i, label %if.end20.i.vfe_init_outputs.exit.i_crit_edge, label %if.end20.i.for.body.i76.i_crit_edge

if.end20.i.for.body.i76.i_crit_edge:              ; preds = %if.end20.i
  br label %for.body.i76.i

if.end20.i.vfe_init_outputs.exit.i_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_init_outputs.exit.i

for.body.i76.i:                                   ; preds = %for.body.i76.i.for.body.i76.i_crit_edge, %if.end20.i.for.body.i76.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i73.i, %for.body.i76.i.for.body.i76.i_crit_edge ], [ 0, %if.end20.i.for.body.i76.i_crit_edge ]
  %state.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %i.014.i.i, i32 7, i32 7
  %89 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %state.i.i, align 4
  %buf.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %i.014.i.i, i32 7, i32 2
  %90 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %buf.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %i.014.i.i, i32 7, i32 2, i32 1
  %91 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx5.i.i, align 4
  %pending_bufs.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %i.014.i.i, i32 7, i32 4
  %92 = ptrtoint ptr %pending_bufs.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %pending_bufs.i.i, ptr %pending_bufs.i.i, align 4
  %prev.i.i.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %i.014.i.i, i32 7, i32 4, i32 1
  %93 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %pending_bufs.i.i, ptr %prev.i.i.i, align 4
  %inc.i73.i = add nuw nsw i32 %i.014.i.i, 1
  %94 = ptrtoint ptr %line_num.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %line_num.i.i, align 8
  %conv.i74.i = zext i8 %95 to i32
  %cmp.i75.i = icmp ult i32 %inc.i73.i, %conv.i74.i
  br i1 %cmp.i75.i, label %for.body.i76.i.for.body.i76.i_crit_edge, label %for.body.i76.i.vfe_init_outputs.exit.i_crit_edge

for.body.i76.i.vfe_init_outputs.exit.i_crit_edge: ; preds = %for.body.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_init_outputs.exit.i

for.body.i76.i.for.body.i76.i_crit_edge:          ; preds = %for.body.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i76.i

vfe_init_outputs.exit.i:                          ; preds = %for.body.i76.i.vfe_init_outputs.exit.i_crit_edge, %if.end20.i.vfe_init_outputs.exit.i_crit_edge
  %96 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i, align 4
  %hw_version.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw_version.i, align 4
  %call22.i = call i32 %99(ptr noundef %add.ptr) #12
  br label %vfe_get.exit

if.else.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pixel_clock.i77.i) #12
  %100 = getelementptr inbounds [4 x i64], ptr %pixel_clock.i77.i, i32 0, i32 3
  %line_num.i79.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 16
  %101 = call ptr @memset(ptr %pixel_clock.i77.i, i32 255, i32 32)
  %102 = ptrtoint ptr %line_num.i79.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %line_num.i79.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp89.not.i.i = icmp eq i8 %103, 0
  br i1 %cmp89.not.i.i, label %if.else.i.for.cond4.preheader.i.i_crit_edge, label %if.else.i.for.body.i84.i_crit_edge

if.else.i.for.body.i84.i_crit_edge:               ; preds = %if.else.i
  br label %for.body.i84.i

if.else.i.for.cond4.preheader.i.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond4.preheader.i.i

for.cond4.preheader.i.i:                          ; preds = %for.inc.i89.i.for.cond4.preheader.i.i_crit_edge, %if.else.i.for.cond4.preheader.i.i_crit_edge
  %nclocks.i80.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 6
  %104 = ptrtoint ptr %nclocks.i80.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nclocks.i80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp595.i.i = icmp sgt i32 %105, 0
  br i1 %cmp595.i.i, label %for.body7.lr.ph.i.i, label %for.cond4.preheader.i.i.vfe_check_clock_rates.exit.thread.i_crit_edge

for.cond4.preheader.i.i.vfe_check_clock_rates.exit.thread.i_crit_edge: ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_check_clock_rates.exit.thread.i

for.body7.lr.ph.i.i:                              ; preds = %for.cond4.preheader.i.i
  %clock8.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 5
  br label %for.body7.i.i

for.body.i84.i:                                   ; preds = %for.inc.i89.i.for.body.i84.i_crit_edge, %if.else.i.for.body.i84.i_crit_edge
  %i.090.i.i = phi i32 [ %inc.i86.i, %for.inc.i89.i.for.body.i84.i_crit_edge ], [ 0, %if.else.i.for.body.i84.i_crit_edge ]
  %subdev.i81.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %i.090.i.i, i32 1
  %arrayidx2.i.i = getelementptr [4 x i64], ptr %pixel_clock.i77.i, i32 0, i32 %i.090.i.i
  %call.i82.i = call i32 @camss_get_pixel_clock(ptr noundef %subdev.i81.i, ptr noundef %arrayidx2.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool.not.i83.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool.not.i83.i, label %for.body.i84.i.for.inc.i89.i_crit_edge, label %if.then.i85.i

for.body.i84.i.for.inc.i89.i_crit_edge:           ; preds = %for.body.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i89.i

if.then.i85.i:                                    ; preds = %for.body.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 0, ptr %arrayidx2.i.i, align 8
  br label %for.inc.i89.i

for.inc.i89.i:                                    ; preds = %if.then.i85.i, %for.body.i84.i.for.inc.i89.i_crit_edge
  %inc.i86.i = add nuw nsw i32 %i.090.i.i, 1
  %107 = ptrtoint ptr %line_num.i79.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %line_num.i79.i, align 8
  %conv.i87.i = zext i8 %108 to i32
  %cmp.i88.i = icmp ult i32 %inc.i86.i, %conv.i87.i
  br i1 %cmp.i88.i, label %for.inc.i89.i.for.body.i84.i_crit_edge, label %for.inc.i89.i.for.cond4.preheader.i.i_crit_edge

for.inc.i89.i.for.cond4.preheader.i.i_crit_edge:  ; preds = %for.inc.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond4.preheader.i.i

for.inc.i89.i.for.body.i84.i_crit_edge:           ; preds = %for.inc.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i84.i

for.body7.i.i:                                    ; preds = %if.end51.i.i.for.body7.i.i_crit_edge, %for.body7.lr.ph.i.i
  %i.196.i.i = phi i32 [ 0, %for.body7.lr.ph.i.i ], [ %inc56.i.i, %if.end51.i.i.for.body7.i.i_crit_edge ]
  %109 = ptrtoint ptr %clock8.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clock8.i.i, align 8
  %arrayidx9.i.i = getelementptr %struct.camss_clock, ptr %110, i32 %i.196.i.i
  %name.i90.i = getelementptr %struct.camss_clock, ptr %110, i32 %i.196.i.i, i32 1
  %111 = ptrtoint ptr %name.i90.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name.i90.i, align 4
  %call10.i.i = call i32 @strcmp(ptr noundef %112, ptr noundef nonnull dereferenceable(5) @.str.40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %for.body7.i.i.if.then15.i.i_crit_edge, label %lor.lhs.false.i91.i

for.body7.i.i.if.then15.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

lor.lhs.false.i91.i:                              ; preds = %for.body7.i.i
  %call13.i.i = call i32 @strcmp(ptr noundef %112, ptr noundef nonnull dereferenceable(5) @.str.41) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false.i91.i.if.then15.i.i_crit_edge, label %lor.lhs.false.i91.i.if.end51.i.i_crit_edge

lor.lhs.false.i91.i.if.end51.i.i_crit_edge:       ; preds = %lor.lhs.false.i91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

lor.lhs.false.i91.i.if.then15.i.i_crit_edge:      ; preds = %lor.lhs.false.i91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %lor.lhs.false.i91.i.if.then15.i.i_crit_edge, %for.body7.i.i.if.then15.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_rate.i78.i) #12
  %113 = ptrtoint ptr %min_rate.i78.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 0, ptr %min_rate.i78.i, align 8
  %114 = ptrtoint ptr %line_num.i79.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %line_num.i79.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp1992.not.i.i = icmp eq i8 %115, 0
  br i1 %cmp1992.not.i.i, label %if.then15.i.i.for.end43.i.i_crit_edge, label %if.then15.i.i.for.body21.i.i_crit_edge

if.then15.i.i.for.body21.i.i_crit_edge:           ; preds = %if.then15.i.i
  br label %for.body21.i.i

if.then15.i.i.for.end43.i.i_crit_edge:            ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end43.i.i

for.body21.i.i:                                   ; preds = %if.end40.i.i.for.body21.i.i_crit_edge, %if.then15.i.i.for.body21.i.i_crit_edge
  %j.093.i.i = phi i32 [ %inc42.i.i, %if.end40.i.i.for.body21.i.i_crit_edge ], [ 0, %if.then15.i.i.for.body21.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.093.i.i)
  %cmp22.i.i = icmp eq i32 %j.093.i.i, 3
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.else.i96.i

if.then24.i.i:                                    ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %100 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %100, align 8
  %extract.t44 = trunc i64 %117 to i32
  br label %if.end34.i.i

if.else.i96.i:                                    ; preds = %for.body21.i.i
  %formats.i92.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %j.093.i.i, i32 8
  %118 = ptrtoint ptr %formats.i92.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %formats.i92.i, align 8
  %nformats.i93.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %j.093.i.i, i32 9
  %120 = ptrtoint ptr %nformats.i93.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nformats.i93.i, align 4
  %code.i94.i = getelementptr %struct.vfe_device, ptr %add.ptr, i32 0, i32 15, i32 %j.093.i.i, i32 3, i32 0, i32 2
  %122 = ptrtoint ptr %code.i94.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %code.i94.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp28.not.i.i95.i = icmp eq i32 %121, 0
  br i1 %cmp28.not.i.i95.i, label %if.else.i96.i.do.end.i.i104.i_crit_edge, label %if.else.i96.i.for.body.i.i103.i_crit_edge

if.else.i96.i.for.body.i.i103.i_crit_edge:        ; preds = %if.else.i96.i
  br label %for.body.i.i103.i

if.else.i96.i.do.end.i.i104.i_crit_edge:          ; preds = %if.else.i96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i104.i

for.cond.i.i99.i:                                 ; preds = %for.body.i.i103.i
  %inc.i.i97.i = add nuw i32 %i.029.i.i100.i, 1
  %exitcond.not.i.i98.i = icmp eq i32 %inc.i.i97.i, %121
  br i1 %exitcond.not.i.i98.i, label %for.cond.i.i99.i.do.end.i.i104.i_crit_edge, label %for.cond.i.i99.i.for.body.i.i103.i_crit_edge

for.cond.i.i99.i.for.body.i.i103.i_crit_edge:     ; preds = %for.cond.i.i99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i103.i

for.cond.i.i99.i.do.end.i.i104.i_crit_edge:       ; preds = %for.cond.i.i99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i104.i

for.body.i.i103.i:                                ; preds = %for.cond.i.i99.i.for.body.i.i103.i_crit_edge, %if.else.i96.i.for.body.i.i103.i_crit_edge
  %i.029.i.i100.i = phi i32 [ %inc.i.i97.i, %for.cond.i.i99.i.for.body.i.i103.i_crit_edge ], [ 0, %if.else.i96.i.for.body.i.i103.i_crit_edge ]
  %arrayidx.i.i101.i = getelementptr %struct.vfe_format, ptr %119, i32 %i.029.i.i100.i
  %124 = ptrtoint ptr %arrayidx.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i.i101.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %123)
  %cmp2.i.i102.i = icmp eq i32 %125, %123
  br i1 %cmp2.i.i102.i, label %for.body.i.i103.i.vfe_get_bpp.exit.i110.i_crit_edge, label %for.cond.i.i99.i

for.body.i.i103.i.vfe_get_bpp.exit.i110.i_crit_edge: ; preds = %for.body.i.i103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_get_bpp.exit.i110.i

do.end.i.i104.i:                                  ; preds = %for.cond.i.i99.i.do.end.i.i104.i_crit_edge, %if.else.i96.i.do.end.i.i104.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.51) #12
  br label %vfe_get_bpp.exit.i110.i

vfe_get_bpp.exit.i110.i:                          ; preds = %do.end.i.i104.i, %for.body.i.i103.i.vfe_get_bpp.exit.i110.i_crit_edge
  %arrayidx.pn.i.i105.i = phi ptr [ %119, %do.end.i.i104.i ], [ %arrayidx.i.i101.i, %for.body.i.i103.i.vfe_get_bpp.exit.i110.i_crit_edge ]
  %retval.0.in.i.i106.i = getelementptr inbounds %struct.vfe_format, ptr %arrayidx.pn.i.i105.i, i32 0, i32 1
  %126 = ptrtoint ptr %retval.0.in.i.i106.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %retval.0.i.i107.i = load i8, ptr %retval.0.in.i.i106.i, align 4
  %arrayidx31.i.i = getelementptr [4 x i64], ptr %pixel_clock.i77.i, i32 0, i32 %j.093.i.i
  %127 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx31.i.i, align 8
  %conv32.i.i = zext i8 %retval.0.i.i107.i to i64
  %mul.i108.i = mul i64 %128, %conv32.i.i
  %div86.i.i = lshr i64 %mul.i108.i, 6
  %extract.t43 = trunc i64 %div86.i.i to i32
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %vfe_get_bpp.exit.i110.i, %if.then24.i.i
  %div86.i.i.sink.off0 = phi i32 [ %extract.t43, %vfe_get_bpp.exit.i110.i ], [ %extract.t44, %if.then24.i.i ]
  %129 = ptrtoint ptr %min_rate.i78.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %min_rate.i78.i, align 8
  %conv35.i.i = zext i32 %div86.i.i.sink.off0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %130, i64 %conv35.i.i)
  %cmp36.i.i = icmp ult i64 %130, %conv35.i.i
  br i1 %cmp36.i.i, label %if.then38.i.i, label %if.end34.i.i.if.end40.i.i_crit_edge

if.end34.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i.i

if.then38.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %min_rate.i78.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv35.i.i, ptr %min_rate.i78.i, align 8
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then38.i.i, %if.end34.i.i.if.end40.i.i_crit_edge
  %inc42.i.i = add nuw nsw i32 %j.093.i.i, 1
  %132 = ptrtoint ptr %line_num.i79.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %line_num.i79.i, align 8
  %conv18.i.i = zext i8 %133 to i32
  %cmp19.i.i = icmp ult i32 %inc42.i.i, %conv18.i.i
  br i1 %cmp19.i.i, label %if.end40.i.i.for.body21.i.i_crit_edge, label %if.end40.i.i.for.end43.i.i_crit_edge

if.end40.i.i.for.end43.i.i_crit_edge:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end43.i.i

if.end40.i.i.for.body21.i.i_crit_edge:            ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21.i.i

for.end43.i.i:                                    ; preds = %if.end40.i.i.for.end43.i.i_crit_edge, %if.then15.i.i.for.end43.i.i_crit_edge
  call void @camss_add_clock_margin(ptr noundef nonnull %min_rate.i78.i) #12
  %134 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx9.i.i, align 4
  %call44.i.i = call i32 @clk_get_rate(ptr noundef %135) #12
  %conv45.i.i = zext i32 %call44.i.i to i64
  %136 = ptrtoint ptr %min_rate.i78.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %min_rate.i78.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %137, i64 %conv45.i.i)
  %cmp46.i.i = icmp ugt i64 %137, %conv45.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_rate.i78.i) #12
  br i1 %cmp46.i.i, label %vfe_check_clock_rates.exit.i, label %for.end43.i.i.if.end51.i.i_crit_edge

for.end43.i.i.if.end51.i.i_crit_edge:             ; preds = %for.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %for.end43.i.i.if.end51.i.i_crit_edge, %lor.lhs.false.i91.i.if.end51.i.i_crit_edge
  %inc56.i.i = add nuw nsw i32 %i.196.i.i, 1
  %138 = ptrtoint ptr %nclocks.i80.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nclocks.i80.i, align 4
  %cmp5.i.i = icmp slt i32 %inc56.i.i, %139
  br i1 %cmp5.i.i, label %if.end51.i.i.for.body7.i.i_crit_edge, label %if.end51.i.i.vfe_check_clock_rates.exit.thread.i_crit_edge

if.end51.i.i.vfe_check_clock_rates.exit.thread.i_crit_edge: ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_check_clock_rates.exit.thread.i

if.end51.i.i.for.body7.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.i.i

vfe_check_clock_rates.exit.thread.i:              ; preds = %if.end51.i.i.vfe_check_clock_rates.exit.thread.i_crit_edge, %for.cond4.preheader.i.i.vfe_check_clock_rates.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pixel_clock.i77.i) #12
  br label %vfe_get.exit

vfe_check_clock_rates.exit.i:                     ; preds = %for.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pixel_clock.i77.i) #12
  br label %error_pm_runtime_get.i

error_reset.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr, align 8
  %dev.i.i = getelementptr inbounds %struct.camss, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str) #15
  %144 = ptrtoint ptr %nclocks.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nclocks.i.i, align 4
  %146 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clock.i, align 8
  call void @camss_disable_clocks(i32 noundef %145, ptr noundef %147) #12
  br label %error_pm_runtime_get.i

error_pm_runtime_get.i:                           ; preds = %error_reset.i, %vfe_check_clock_rates.exit.i, %if.end10.i.error_pm_runtime_get.i_crit_edge, %vfe_set_clock_rates.exit.i
  %ret.0.i = phi i32 [ %retval.1.ph.i.i, %vfe_set_clock_rates.exit.i ], [ %call13.i, %if.end10.i.error_pm_runtime_get.i_crit_edge ], [ -5, %error_reset.i ], [ -16, %vfe_check_clock_rates.exit.i ]
  %148 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %add.ptr, align 8
  %dev33.i = getelementptr inbounds %struct.camss, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %dev33.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev33.i, align 8
  %call.i112.i = call i32 @__pm_runtime_idle(ptr noundef %151, i32 noundef 4) #12
  br label %error_domain_off.i

error_domain_off.i:                               ; preds = %error_pm_runtime_get.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.error_domain_off.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %error_pm_runtime_get.i ], [ %call.i.i, %if.then.i.i.error_domain_off.i_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  %ops35.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 19
  %152 = ptrtoint ptr %ops35.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops35.i, align 4
  %pm_domain_off.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %pm_domain_off.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pm_domain_off.i, align 4
  call void %155(ptr noundef %add.ptr) #12
  br label %vfe_get.exit.thread

vfe_get.exit.thread:                              ; preds = %error_domain_off.i, %if.then.i.vfe_get.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %ret.1.i, %error_domain_off.i ], [ %call.i, %if.then.i.vfe_get.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %power_lock.i9) #12
  br label %cleanup

vfe_get.exit:                                     ; preds = %vfe_check_clock_rates.exit.thread.i, %vfe_init_outputs.exit.i
  %156 = ptrtoint ptr %power_count.i10 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %power_count.i10, align 4
  %inc.i = add i32 %157, 1
  store i32 %inc.i, ptr %power_count.i10, align 4
  call void @mutex_unlock(ptr noundef %power_lock.i9) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %158 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %5, label %if.else.if.end11.i_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %if.then3.i
  ]

if.else.if.end11.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr, align 8
  %dev.i11 = getelementptr inbounds %struct.camss, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %dev.i11 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.52) #15
  br label %vfe_put.exit

if.then3.i:                                       ; preds = %if.else
  %was_streaming.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 18
  %163 = ptrtoint ptr %was_streaming.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %was_streaming.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i, label %if.then3.i.if.end.i17_crit_edge, label %if.then4.i

if.then3.i.if.end.i17_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i17

if.then4.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %was_streaming.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %was_streaming.i, align 8
  %ops.i12 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 19
  %166 = ptrtoint ptr %ops.i12 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ops.i12, align 4
  %vfe_halt.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %167, i32 0, i32 12
  %168 = ptrtoint ptr %vfe_halt.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %vfe_halt.i, align 4
  %call.i13 = tail call i32 %169(ptr noundef %add.ptr) #12
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then4.i, %if.then3.i.if.end.i17_crit_edge
  %nclocks.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 6
  %170 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nclocks.i, align 4
  %clock.i14 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 5
  %172 = ptrtoint ptr %clock.i14 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %clock.i14, align 8
  tail call void @camss_disable_clocks(i32 noundef %171, ptr noundef %173) #12
  %174 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %add.ptr, align 8
  %dev7.i = getelementptr inbounds %struct.camss, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev7.i, align 8
  %call.i.i15 = tail call i32 @__pm_runtime_idle(ptr noundef %177, i32 noundef 4) #12
  %ops9.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 19
  %178 = ptrtoint ptr %ops9.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ops9.i, align 4
  %pm_domain_off.i16 = getelementptr inbounds %struct.vfe_hw_ops, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %pm_domain_off.i16 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pm_domain_off.i16, align 4
  tail call void %181(ptr noundef %add.ptr) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i17, %if.else.if.end11.i_crit_edge
  %182 = ptrtoint ptr %power_count.i10 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %power_count.i10, align 4
  %dec.i = add i32 %183, -1
  store i32 %dec.i, ptr %power_count.i10, align 4
  br label %vfe_put.exit

vfe_put.exit:                                     ; preds = %if.end11.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %power_lock.i9) #12
  br label %cleanup

cleanup:                                          ; preds = %vfe_put.exit, %vfe_get.exit, %vfe_get.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %vfe_get.exit.thread ], [ 0, %vfe_get.exit ], [ 0, %vfe_put.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @camss_enable_clocks(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_disable_clocks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @camss_get_pixel_clock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_add_clock_margin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_set_stream(ptr nocapture noundef readonly %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %sub = sub i32 0, %3
  %arrayidx = getelementptr %struct.vfe_line, ptr %1, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %ops3 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 19
  %4 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vfe_enable = getelementptr inbounds %struct.vfe_hw_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %vfe_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfe_enable, align 4
  %call1 = tail call i32 %7(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.if.end13.sink.split_crit_edge, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then.if.end13.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.sink.split

if.else:                                          ; preds = %entry
  %vfe_disable = getelementptr inbounds %struct.vfe_hw_ops, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %vfe_disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vfe_disable, align 4
  %call4 = tail call i32 %9(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.else.if.end13.sink.split_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.else.if.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else.if.end13.sink.split_crit_edge, %if.then.if.end13.sink.split_crit_edge
  %.str.57.sink = phi ptr [ @.str.54, %if.then.if.end13.sink.split_crit_edge ], [ @.str.57, %if.else.if.end13.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call1, %if.then.if.end13.sink.split_crit_edge ], [ %call4, %if.else.if.end13.sink.split_crit_edge ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev11 = getelementptr inbounds %struct.camss, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.57.sink) #15
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then.if.end13_crit_edge ], [ %call4, %if.else.if.end13_crit_edge ], [ %ret.0.ph, %if.end13.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %nformats = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp ult i32 %5, %7
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup15_crit_edge

if.then.cleanup15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %formats = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %formats, align 8
  %arrayidx = getelementptr %struct.vfe_format, ptr %9, i32 %5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %code5 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %12 = ptrtoint ptr %code5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code5, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %13 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  %num_pads.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.not.i.i.not = icmp eq i16 %16, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !136

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %17 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_state, align 4
  br label %__vfe_get_format.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.vfe_line, ptr %1, i32 0, i32 3, i32 0
  br label %__vfe_get_format.exit

__vfe_get_format.exit:                            ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %18, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %code7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %code7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code7, align 4
  %index8 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %21 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index8, align 4
  %call9 = tail call fastcc i32 @vfe_src_pad_code(ptr noundef %1, i32 noundef %20, i32 noundef %22, i32 noundef 0)
  %code10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %23 = ptrtoint ptr %code10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call9, ptr %code10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %__vfe_get_format.exit.cleanup15_crit_edge, label %__vfe_get_format.exit.if.end14_crit_edge

__vfe_get_format.exit.if.end14_crit_edge:         ; preds = %__vfe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

__vfe_get_format.exit.cleanup15_crit_edge:        ; preds = %__vfe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end14:                                         ; preds = %__vfe_get_format.exit.if.end14_crit_edge, %if.end
  br label %cleanup15

cleanup15:                                        ; preds = %if.end14, %__vfe_get_format.exit.cleanup15_crit_edge, %if.then.cleanup15_crit_edge
  %retval.1 = phi i32 [ 0, %if.end14 ], [ -22, %__vfe_get_format.exit.cleanup15_crit_edge ], [ -22, %if.then.cleanup15_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_mbus_framefmt, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %format) #12
  %2 = getelementptr inbounds i8, ptr %format, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 36)
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call fastcc void @vfe_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %12, ptr noundef nonnull %format, i32 noundef %14)
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
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
  call fastcc void @vfe_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %28, ptr noundef nonnull %format, i32 noundef %30)
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %format) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %num_pads.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !140

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__vfe_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.vfe_line, ptr %1, i32 0, i32 3, i32 %3
  br label %__vfe_get_format.exit

__vfe_get_format.exit:                            ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__vfe_get_format.exit.cleanup_crit_edge, label %if.end

__vfe_get_format.exit.cleanup_crit_edge:          ; preds = %__vfe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %__vfe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %format2, ptr %retval.0.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__vfe_get_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__vfe_get_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_set_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  %sel = alloca %struct.v4l2_subdev_selection, align 4
  call void @__sanitizer_cov_trace_pc() #14
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
  %num_pads.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !140

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %3, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  br label %__vfe_get_format.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.vfe_line, ptr %1, i32 0, i32 3, i32 %3
  br label %__vfe_get_format.exit

__vfe_get_format.exit:                            ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %__vfe_get_format.exit.cleanup30_crit_edge, label %if.end

__vfe_get_format.exit.cleanup30_crit_edge:        ; preds = %__vfe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup30

if.end:                                           ; preds = %__vfe_get_format.exit
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  tail call fastcc void @vfe_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef %11, ptr noundef %format3, i32 noundef %13)
  %14 = call ptr @memcpy(ptr %retval.0.i, ptr %format3, i32 48)
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then8, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sel) #12
  %17 = getelementptr inbounds i8, ptr %sel, i32 12
  %18 = call ptr @memset(ptr %17, i32 0, i32 52)
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i57 = icmp eq i32 %20, 0
  br i1 %cmp.i57, label %if.then.i61, label %if.end.i67

if.then.i61:                                      ; preds = %if.then8
  %num_pads.i.i58 = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %num_pads.i.i58 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_pads.i.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp.not.i.i60 = icmp ugt i16 %22, 1
  br i1 %cmp.not.i.i60, label %if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge, label %do.end.i.i62, !prof !140

if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge: ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i65

do.end.i.i62:                                     ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i65

v4l2_subdev_get_try_format.exit.i65:              ; preds = %do.end.i.i62, %if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge
  %spec.select.i.i63 = phi i32 [ 0, %do.end.i.i62 ], [ 1, %if.then.i61.v4l2_subdev_get_try_format.exit.i65_crit_edge ]
  %23 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i64 = getelementptr %struct.v4l2_subdev_pad_config, ptr %24, i32 %spec.select.i.i63
  br label %__vfe_get_format.exit69

if.end.i67:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i66 = getelementptr %struct.vfe_line, ptr %1, i32 0, i32 3, i32 1
  br label %__vfe_get_format.exit69

__vfe_get_format.exit69:                          ; preds = %if.end.i67, %v4l2_subdev_get_try_format.exit.i65
  %retval.0.i68 = phi ptr [ %arrayidx.i.i64, %v4l2_subdev_get_try_format.exit.i65 ], [ %arrayidx.i66, %if.end.i67 ]
  %25 = call ptr @memcpy(ptr %retval.0.i68, ptr %format3, i32 48)
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt, align 4
  tail call fastcc void @vfe_try_format(ptr noundef %1, ptr noundef %sd_state, i32 noundef 1, ptr noundef %retval.0.i68, i32 noundef %27)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp13.not = icmp eq i32 %29, 3
  br i1 %cmp13.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %__vfe_get_format.exit69
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sel) #12
  br label %cleanup30

cleanup:                                          ; preds = %__vfe_get_format.exit69
  %30 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmt, align 4
  %32 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sel, align 4
  %pad18 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %33 = ptrtoint ptr %pad18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pad18, align 4
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %34 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %target, align 4
  %35 = ptrtoint ptr %format3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %format3, align 4
  %width20 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %37 = ptrtoint ptr %width20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %width20, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %height23 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %height23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height23, align 4
  %call24 = call i32 @vfe_set_selection(ptr noundef %sd, ptr noundef %sd_state, ptr noundef nonnull %sel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sel) #12
  br i1 %cmp25, label %cleanup.cleanup30_crit_edge, label %cleanup.if.end29_crit_edge

cleanup.if.end29_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup30

if.end29:                                         ; preds = %cleanup.if.end29_crit_edge, %if.end.if.end29_crit_edge
  br label %cleanup30

cleanup30:                                        ; preds = %if.end29, %cleanup.cleanup30_crit_edge, %cleanup.thread, %__vfe_get_format.exit.cleanup30_crit_edge
  %retval.1 = phi i32 [ 0, %if.end29 ], [ %call24, %cleanup.cleanup30_crit_edge ], [ -22, %__vfe_get_format.exit.cleanup30_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_get_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then2
    i32 1, label %if.then25
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %8, label %if.then2.cleanup_crit_edge [
    i32 258, label %sw.bb
    i32 256, label %sw.bb16
  ]

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then2
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb
  %num_pads.i.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.i.i.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i.i.i.not, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !136

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  br label %__vfe_get_format.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.vfe_line, ptr %1, i32 0, i32 3, i32 0
  br label %__vfe_get_format.exit.i

__vfe_get_format.exit.i:                          ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %15, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.i, label %__vfe_get_format.exit.i.cleanup_crit_edge, label %if.end9

__vfe_get_format.exit.i.cleanup_crit_edge:        ; preds = %__vfe_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %__vfe_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %fmt.sroa.7.8.copyload = load i32, ptr %retval.0.i.i, align 4
  %fmt.sroa.9.8.retval.0.i.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i.i, i32 4
  %17 = ptrtoint ptr %fmt.sroa.9.8.retval.0.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %fmt.sroa.9.8.copyload = load i32, ptr %fmt.sroa.9.8.retval.0.i.i.sroa_idx, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %18 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %top, align 4
  %width12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %width12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %fmt.sroa.7.8.copyload, ptr %width12, align 4
  %height15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %fmt.sroa.9.8.copyload, ptr %height15, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.then2
  %22 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i93 = icmp eq i32 %23, 0
  br i1 %cmp.i93, label %if.then.i, label %if.end.i95

if.then.i:                                        ; preds = %sw.bb16
  %num_pads.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.i94 = icmp eq i16 %25, 0
  br i1 %cmp.i.i94, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_compose.exit.i_crit_edge, !prof !136

if.then.i.v4l2_subdev_get_try_compose.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_compose.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_compose.exit.i

v4l2_subdev_get_try_compose.exit.i:               ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_compose.exit.i_crit_edge
  %26 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %27, i32 0, i32 2
  br label %__vfe_get_compose.exit

if.end.i95:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %compose.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 4
  br label %__vfe_get_compose.exit

__vfe_get_compose.exit:                           ; preds = %if.end.i95, %v4l2_subdev_get_try_compose.exit.i
  %retval.0.i96 = phi ptr [ %try_compose.i.i, %v4l2_subdev_get_try_compose.exit.i ], [ %compose.i, %if.end.i95 ]
  %cmp19 = icmp eq ptr %retval.0.i96, null
  br i1 %cmp19, label %__vfe_get_compose.exit.cleanup_crit_edge, label %if.end21

__vfe_get_compose.exit.cleanup_crit_edge:         ; preds = %__vfe_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %__vfe_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #14
  %r22 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %28 = call ptr @memcpy(ptr %r22, ptr %retval.0.i96, i32 16)
  br label %cleanup

if.then25:                                        ; preds = %if.end
  %target26 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %29 = ptrtoint ptr %target26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %target26, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %30, label %if.then25.cleanup_crit_edge [
    i32 2, label %sw.bb27
    i32 0, label %sw.bb45
  ]

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb27:                                          ; preds = %if.then25
  %32 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i97 = icmp eq i32 %33, 0
  br i1 %cmp.i97, label %if.then.i100, label %if.end.i105

if.then.i100:                                     ; preds = %sw.bb27
  %num_pads.i.i98 = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %num_pads.i.i98 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_pads.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp.i.i99 = icmp eq i16 %35, 0
  br i1 %cmp.i.i99, label %do.end.i.i101, label %if.then.i100.v4l2_subdev_get_try_compose.exit.i103_crit_edge, !prof !136

if.then.i100.v4l2_subdev_get_try_compose.exit.i103_crit_edge: ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_compose.exit.i103

do.end.i.i101:                                    ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_compose.exit.i103

v4l2_subdev_get_try_compose.exit.i103:            ; preds = %do.end.i.i101, %if.then.i100.v4l2_subdev_get_try_compose.exit.i103_crit_edge
  %36 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i102 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %37, i32 0, i32 2
  br label %__vfe_get_compose.exit107

if.end.i105:                                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  %compose.i104 = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 4
  br label %__vfe_get_compose.exit107

__vfe_get_compose.exit107:                        ; preds = %if.end.i105, %v4l2_subdev_get_try_compose.exit.i103
  %retval.0.i106 = phi ptr [ %try_compose.i.i102, %v4l2_subdev_get_try_compose.exit.i103 ], [ %compose.i104, %if.end.i105 ]
  %cmp30 = icmp eq ptr %retval.0.i106, null
  br i1 %cmp30, label %__vfe_get_compose.exit107.cleanup_crit_edge, label %if.end32

__vfe_get_compose.exit107.cleanup_crit_edge:      ; preds = %__vfe_get_compose.exit107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %__vfe_get_compose.exit107
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %retval.0.i106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %retval.0.i106, align 4
  %r34 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %40 = ptrtoint ptr %r34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %r34, align 4
  %top36 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i106, i32 0, i32 1
  %41 = ptrtoint ptr %top36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %top36, align 4
  %top38 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %top38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %top38, align 4
  %width39 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i106, i32 0, i32 2
  %44 = ptrtoint ptr %width39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width39, align 4
  %width41 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %width41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %width41, align 4
  %height42 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i106, i32 0, i32 3
  %47 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height42, align 4
  %height44 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %height44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %height44, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %if.then25
  %50 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i108 = icmp eq i32 %51, 0
  br i1 %cmp.i108, label %if.then.i111, label %if.end.i113

if.then.i111:                                     ; preds = %sw.bb45
  %num_pads.i.i109 = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %52 = ptrtoint ptr %num_pads.i.i109 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_pads.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %53)
  %cmp.i.i110 = icmp ult i16 %53, 2
  br i1 %cmp.i.i110, label %do.end.i.i112, label %if.then.i111.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !136

if.then.i111.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i112:                                    ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 1016, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i112, %if.then.i111.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %not.cmp.i.i = xor i1 %cmp.i.i110, true
  %spec.select.i.i = zext i1 %not.cmp.i.i to i32
  %54 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %55, i32 %spec.select.i.i, i32 1
  br label %__vfe_get_crop.exit

if.end.i113:                                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #14
  %crop.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 5
  br label %__vfe_get_crop.exit

__vfe_get_crop.exit:                              ; preds = %if.end.i113, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i114 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.end.i113 ]
  %cmp48 = icmp eq ptr %retval.0.i114, null
  br i1 %cmp48, label %__vfe_get_crop.exit.cleanup_crit_edge, label %if.end50

__vfe_get_crop.exit.cleanup_crit_edge:            ; preds = %__vfe_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %__vfe_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %r51 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %56 = call ptr @memcpy(ptr %r51, ptr %retval.0.i114, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %__vfe_get_crop.exit.cleanup_crit_edge, %if.end32, %__vfe_get_compose.exit107.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end21, %__vfe_get_compose.exit.cleanup_crit_edge, %if.end9, %__vfe_get_format.exit.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %__vfe_get_compose.exit.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %__vfe_get_compose.exit107.cleanup_crit_edge ], [ -22, %__vfe_get_crop.exit.cleanup_crit_edge ], [ -22, %if.then25.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end50 ], [ 0, %if.end32 ], [ 0, %if.end9 ], [ 0, %if.end21 ], [ -22, %__vfe_get_format.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_set_selection(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  %crop = alloca %struct.v4l2_subdev_selection, align 4
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup47_crit_edge

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %if.end.cleanup47_crit_edge [
    i32 256, label %land.lhs.true
    i32 0, label %land.lhs.true18
  ]

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

land.lhs.true:                                    ; preds = %if.end
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %if.then3, label %land.lhs.true.cleanup47_crit_edge

land.lhs.true.cleanup47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.then3:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %crop) #12
  %9 = call ptr @memset(ptr %crop, i32 0, i32 64)
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then3
  %num_pads.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i.i = icmp eq i16 %13, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_compose.exit.i_crit_edge, !prof !136

if.then.i.v4l2_subdev_get_try_compose.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_compose.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_compose.exit.i

v4l2_subdev_get_try_compose.exit.i:               ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_compose.exit.i_crit_edge
  %14 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %15, i32 0, i32 2
  br label %__vfe_get_compose.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %compose.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 4
  br label %__vfe_get_compose.exit

__vfe_get_compose.exit:                           ; preds = %if.end.i, %v4l2_subdev_get_try_compose.exit.i
  %retval.0.i = phi ptr [ %try_compose.i.i, %v4l2_subdev_get_try_compose.exit.i ], [ %compose.i, %if.end.i ]
  %cmp5 = icmp eq ptr %retval.0.i, null
  br i1 %cmp5, label %cleanup.thread, label %if.end7

cleanup.thread:                                   ; preds = %__vfe_get_compose.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %crop) #12
  br label %cleanup47

if.end7:                                          ; preds = %__vfe_get_compose.exit
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %16 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i86 = icmp eq i32 %17, 0
  br i1 %cmp.i.i86, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end7
  %num_pads.i.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.not.i.i.not.i = icmp eq i16 %19, 0
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, !prof !136

if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.then.i.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %20 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_state, align 4
  br label %__vfe_get_format.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.vfe_line, ptr %1, i32 0, i32 3, i32 0
  br label %__vfe_get_format.exit.i

__vfe_get_format.exit.i:                          ; preds = %if.end.i.i, %v4l2_subdev_get_try_format.exit.i.i
  %retval.0.i.i = phi ptr [ %21, %v4l2_subdev_get_try_format.exit.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %width.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width.i, align 4
  %24 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i87 = icmp ugt i32 %23, %25
  br i1 %cmp.i87, label %if.then.i88, label %__vfe_get_format.exit.i.if.end.i89_crit_edge

__vfe_get_format.exit.i.if.end.i89_crit_edge:     ; preds = %__vfe_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i89

if.then.i88:                                      ; preds = %__vfe_get_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %width.i, align 4
  br label %if.end.i89

if.end.i89:                                       ; preds = %if.then.i88, %__vfe_get_format.exit.i.if.end.i89_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp5.i = icmp ugt i32 %28, %30
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i89.if.end9.i_crit_edge

if.end.i89.if.end9.i_crit_edge:                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i89.if.end9.i_crit_edge
  %32 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retval.0.i.i, align 4
  %34 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width.i, align 4
  %mul.i = shl i32 %35, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %mul.i)
  %cmp12.i = icmp ugt i32 %33, %mul.i
  br i1 %cmp12.i, label %if.then13.i, label %if.end9.i.if.end16.i_crit_edge

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %33, 15
  %div62.i = lshr i32 %sub.i, 4
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div62.i, ptr %width.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end9.i.if.end16.i_crit_edge
  %37 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width.i, align 4
  %and.i = and i32 %38, -2
  store i32 %and.i, ptr %width.i, align 4
  %39 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height4.i, align 4
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height.i, align 4
  %mul20.i = shl i32 %42, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %mul20.i)
  %cmp21.i = icmp ugt i32 %40, %mul20.i
  br i1 %cmp21.i, label %if.then22.i, label %if.end16.i.if.end28.i_crit_edge

if.end16.i.if.end28.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub25.i = add i32 %40, 15
  %div2661.i = lshr i32 %sub25.i, 4
  %43 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div2661.i, ptr %height.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then22.i, %if.end16.i.if.end28.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp30.i = icmp ult i32 %and.i, 16
  br i1 %cmp30.i, label %if.then31.i, label %if.end28.i.if.end33.i_crit_edge

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %width.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end33.i_crit_edge
  %45 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp35.i = icmp ult i32 %46, 4
  br i1 %cmp35.i, label %if.then36.i, label %if.end33.i.cleanup_crit_edge

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %height.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36.i, %if.end33.i.cleanup_crit_edge
  %48 = call ptr @memcpy(ptr %retval.0.i, ptr %r, i32 16)
  %49 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sel, align 4
  %51 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %crop, align 4
  %pad12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %crop, i32 0, i32 1
  %52 = ptrtoint ptr %pad12 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %pad12, align 4
  %target13 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %crop, i32 0, i32 2
  %53 = ptrtoint ptr %target13 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %target13, align 4
  %r14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %crop, i32 0, i32 4
  %54 = call ptr @memcpy(ptr %r14, ptr %r, i32 16)
  %call15 = call i32 @vfe_set_selection(ptr noundef %sd, ptr noundef %sd_state, ptr noundef nonnull %crop)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %crop) #12
  br label %cleanup47

land.lhs.true18:                                  ; preds = %if.end
  %pad19 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %55 = ptrtoint ptr %pad19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pad19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp20 = icmp eq i32 %56, 1
  br i1 %cmp20, label %if.then21, label %land.lhs.true18.cleanup47_crit_edge

land.lhs.true18.cleanup47_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.then21:                                        ; preds = %land.lhs.true18
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #12
  %57 = call ptr @memset(ptr %fmt, i32 0, i32 88)
  %58 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i90 = icmp eq i32 %59, 0
  br i1 %cmp.i90, label %if.then.i93, label %if.end.i95

if.then.i93:                                      ; preds = %if.then21
  %num_pads.i.i91 = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %60 = ptrtoint ptr %num_pads.i.i91 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %num_pads.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %61)
  %cmp.i.i92 = icmp ult i16 %61, 2
  br i1 %cmp.i.i92, label %do.end.i.i94, label %if.then.i93.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !136

if.then.i93.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i94:                                     ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 1016, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i94, %if.then.i93.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %not.cmp.i.i = xor i1 %cmp.i.i92, true
  %spec.select.i.i = zext i1 %not.cmp.i.i to i32
  %62 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %63, i32 %spec.select.i.i, i32 1
  br label %__vfe_get_crop.exit

if.end.i95:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %crop.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 5
  br label %__vfe_get_crop.exit

__vfe_get_crop.exit:                              ; preds = %if.end.i95, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i96 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.end.i95 ]
  %cmp24 = icmp eq ptr %retval.0.i96, null
  br i1 %cmp24, label %__vfe_get_crop.exit.cleanup41.thread_crit_edge, label %if.end26

__vfe_get_crop.exit.cleanup41.thread_crit_edge:   ; preds = %__vfe_get_crop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41.thread

if.end26:                                         ; preds = %__vfe_get_crop.exit
  %r27 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %64 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i97 = icmp eq i32 %65, 0
  br i1 %cmp.i.i97, label %if.then.i.i99, label %if.end.i.i101

if.then.i.i99:                                    ; preds = %if.end26
  %num_pads.i.i.i98 = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 1, i32 0, i32 5
  %66 = ptrtoint ptr %num_pads.i.i.i98 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_pads.i.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.i.i.i = icmp eq i16 %67, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i100, label %if.then.i.i99.v4l2_subdev_get_try_compose.exit.i.i_crit_edge, !prof !136

if.then.i.i99.v4l2_subdev_get_try_compose.exit.i.i_crit_edge: ; preds = %if.then.i.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_compose.exit.i.i

do.end.i.i.i100:                                  ; preds = %if.then.i.i99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_compose.exit.i.i

v4l2_subdev_get_try_compose.exit.i.i:             ; preds = %do.end.i.i.i100, %if.then.i.i99.v4l2_subdev_get_try_compose.exit.i.i_crit_edge
  %68 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sd_state, align 4
  %try_compose.i.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %69, i32 0, i32 2
  br label %__vfe_get_compose.exit.i

if.end.i.i101:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %compose.i.i = getelementptr inbounds %struct.vfe_line, ptr %1, i32 0, i32 4
  br label %__vfe_get_compose.exit.i

__vfe_get_compose.exit.i:                         ; preds = %if.end.i.i101, %v4l2_subdev_get_try_compose.exit.i.i
  %retval.0.i.i102 = phi ptr [ %try_compose.i.i.i, %v4l2_subdev_get_try_compose.exit.i.i ], [ %compose.i.i, %if.end.i.i101 ]
  %width.i103 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %70 = ptrtoint ptr %width.i103 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %width.i103, align 4
  %width1.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i.i102, i32 0, i32 2
  %72 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.i104 = icmp ugt i32 %71, %73
  br i1 %cmp.i104, label %if.then.i105, label %__vfe_get_compose.exit.i.if.end.i106_crit_edge

__vfe_get_compose.exit.i.if.end.i106_crit_edge:   ; preds = %__vfe_get_compose.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i106

if.then.i105:                                     ; preds = %__vfe_get_compose.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %width.i103 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %width.i103, align 4
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.then.i105, %__vfe_get_compose.exit.i.if.end.i106_crit_edge
  %75 = ptrtoint ptr %width.i103 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %width.i103, align 4
  %77 = ptrtoint ptr %r27 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %r27, align 4
  %add.i = add i32 %78, %76
  %79 = ptrtoint ptr %width1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %width1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %80)
  %cmp6.i = icmp ugt i32 %add.i, %80
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i106.if.end11.i_crit_edge

if.end.i106.if.end11.i_crit_edge:                 ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i107 = sub i32 %80, %76
  %81 = ptrtoint ptr %r27 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i107, ptr %r27, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i106.if.end11.i_crit_edge
  %height.i108 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %82 = ptrtoint ptr %height.i108 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height.i108, align 4
  %height12.i = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i.i102, i32 0, i32 3
  %84 = ptrtoint ptr %height12.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %height12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp13.i = icmp ugt i32 %83, %85
  br i1 %cmp13.i, label %if.then14.i, label %if.end11.i.if.end17.i_crit_edge

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %height.i108 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %height.i108, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end17.i_crit_edge
  %87 = phi i32 [ %85, %if.then14.i ], [ %83, %if.end11.i.if.end17.i_crit_edge ]
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %88 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %top.i, align 4
  %add19.i = add i32 %89, %87
  %90 = ptrtoint ptr %height12.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %height12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i, i32 %91)
  %cmp21.i109 = icmp ugt i32 %add19.i, %91
  br i1 %cmp21.i109, label %if.then22.i111, label %if.end17.i.if.end27.i_crit_edge

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then22.i111:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub25.i110 = sub i32 %91, %87
  %92 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub25.i110, ptr %top.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i111, %if.end17.i.if.end27.i_crit_edge
  %and.i112 = lshr i32 %76, 1
  %shr.i = and i32 %and.i112, 7
  %93 = ptrtoint ptr %r27 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %r27, align 4
  %add30.i = add i32 %94, %shr.i
  store i32 %add30.i, ptr %r27, align 4
  %and32.i = and i32 %76, -16
  %95 = ptrtoint ptr %width.i103 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and32.i, ptr %width.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %cmp34.i = icmp eq i32 %and32.i, 0
  br i1 %cmp34.i, label %if.then35.i, label %if.end27.i.if.end38.i_crit_edge

if.end27.i.if.end38.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %r27 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %r27, align 4
  %97 = ptrtoint ptr %width.i103 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 16, ptr %width.i103, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end27.i.if.end38.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp40.i = icmp ult i32 %87, 4
  br i1 %cmp40.i, label %if.then41.i, label %if.end38.i.vfe_try_crop.exit_crit_edge

if.end38.i.vfe_try_crop.exit_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_try_crop.exit

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %top.i, align 4
  %99 = ptrtoint ptr %height.i108 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4, ptr %height.i108, align 4
  br label %vfe_try_crop.exit

vfe_try_crop.exit:                                ; preds = %if.then41.i, %if.end38.i.vfe_try_crop.exit_crit_edge
  %100 = call ptr @memcpy(ptr %retval.0.i96, ptr %r27, i32 16)
  %101 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sel, align 4
  %103 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %fmt, align 4
  %pad32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %104 = ptrtoint ptr %pad32 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %pad32, align 4
  %105 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp.i.i113 = icmp eq i32 %102, 0
  br i1 %cmp.i.i113, label %if.then.i.i115, label %if.end.i.i119

if.then.i.i115:                                   ; preds = %vfe_try_crop.exit
  %num_pads.i.i.i114 = getelementptr inbounds %struct.vfe_line, ptr %106, i32 0, i32 1, i32 0, i32 5
  %107 = ptrtoint ptr %num_pads.i.i.i114 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %num_pads.i.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %108)
  %cmp.not.i.i.i = icmp ugt i16 %108, 1
  br i1 %cmp.not.i.i.i, label %if.then.i.i115.v4l2_subdev_get_try_format.exit.i.i117_crit_edge, label %do.end.i.i.i116, !prof !140

if.then.i.i115.v4l2_subdev_get_try_format.exit.i.i117_crit_edge: ; preds = %if.then.i.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i.i117

do.end.i.i.i116:                                  ; preds = %if.then.i.i115
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i.i117

v4l2_subdev_get_try_format.exit.i.i117:           ; preds = %do.end.i.i.i116, %if.then.i.i115.v4l2_subdev_get_try_format.exit.i.i117_crit_edge
  %spec.select.i.i.i = phi i32 [ 0, %do.end.i.i.i116 ], [ 1, %if.then.i.i115.v4l2_subdev_get_try_format.exit.i.i117_crit_edge ]
  %109 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %110, i32 %spec.select.i.i.i
  br label %__vfe_get_format.exit.i122

if.end.i.i119:                                    ; preds = %vfe_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i118 = getelementptr %struct.vfe_line, ptr %106, i32 0, i32 3, i32 1
  br label %__vfe_get_format.exit.i122

__vfe_get_format.exit.i122:                       ; preds = %if.end.i.i119, %v4l2_subdev_get_try_format.exit.i.i117
  %retval.0.i.i120 = phi ptr [ %arrayidx.i.i.i, %v4l2_subdev_get_try_format.exit.i.i117 ], [ %arrayidx.i.i118, %if.end.i.i119 ]
  %cmp.i121 = icmp eq ptr %retval.0.i.i120, null
  br i1 %cmp.i121, label %__vfe_get_format.exit.i122.cleanup41.thread_crit_edge, label %cleanup41

__vfe_get_format.exit.i122.cleanup41.thread_crit_edge: ; preds = %__vfe_get_format.exit.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41.thread

cleanup41.thread:                                 ; preds = %__vfe_get_format.exit.i122.cleanup41.thread_crit_edge, %__vfe_get_crop.exit.cleanup41.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #12
  br label %cleanup47

cleanup41:                                        ; preds = %__vfe_get_format.exit.i122
  call void @__sanitizer_cov_trace_pc() #14
  %format2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %111 = call ptr @memcpy(ptr %format2.i, ptr %retval.0.i.i120, i32 48)
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i96, i32 0, i32 2
  %112 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %width, align 4
  %114 = ptrtoint ptr %format2.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %format2.i, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i96, i32 0, i32 3
  %115 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %height, align 4
  %height39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %117 = ptrtoint ptr %height39 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %height39, align 4
  %call40 = call i32 @vfe_set_format(ptr noundef %sd, ptr noundef %sd_state, ptr noundef nonnull %fmt)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #12
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup41, %cleanup41.thread, %land.lhs.true18.cleanup47_crit_edge, %cleanup, %cleanup.thread, %land.lhs.true.cleanup47_crit_edge, %if.end.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup47_crit_edge ], [ -22, %cleanup.thread ], [ -22, %cleanup41.thread ], [ %call15, %cleanup ], [ %call40, %cleanup41 ], [ -22, %land.lhs.true18.cleanup47_crit_edge ], [ -22, %land.lhs.true.cleanup47_crit_edge ], [ -22, %if.end.cleanup47_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfe_src_pad_code(ptr nocapture noundef readonly %line, i32 noundef %sink_code, i32 noundef %index, i32 noundef %src_req_code) unnamed_addr #11 align 64 {
entry:
  %src_code = alloca [2 x i32], align 8
  %src_code2 = alloca [2 x i32], align 8
  %src_code6 = alloca [2 x i32], align 8
  %src_code10 = alloca [2 x i32], align 8
  %src_code27 = alloca [5 x i32], align 4
  %src_code31 = alloca [5 x i32], align 4
  %src_code35 = alloca [5 x i32], align 4
  %src_code39 = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %line, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %entry.if.then25_crit_edge
    i32 2, label %entry.if.then25_crit_edge218
    i32 3, label %entry.if.then25_crit_edge219
  ]

entry.if.then25_crit_edge219:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

entry.if.then25_crit_edge218:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

entry.if.then25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = zext i32 %sink_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %sink_code, label %sw.default [
    i32 8200, label %sw.bb
    i32 8201, label %sw.bb1
    i32 8198, label %sw.bb5
    i32 8199, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_code) #12
  %8 = ptrtoint ptr %src_code to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 35218731835396, ptr %src_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp.not.i = icmp ugt i32 %index, 1
  %9 = and i1 %cmp.not.i, %tobool.not.i
  br i1 %9, label %sw.bb.vfe_find_code.exit_crit_edge, label %for.body.i.preheader

sw.bb.vfe_find_code.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit

for.body.i.preheader:                             ; preds = %sw.bb
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %for.body.i.preheader
  %10 = ptrtoint ptr %src_code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_code, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %src_req_code)
  %cmp4.i = icmp eq i32 %11, %src_req_code
  br i1 %cmp4.i, label %if.then3.i.vfe_find_code.exit_crit_edge, label %if.then3.i.1

if.then3.i.vfe_find_code.exit_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit

if.else.i:                                        ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %switch = icmp ult i32 %index, 2
  %spec.select.idx = select i1 %switch, i32 %index, i32 0
  %spec.select = getelementptr i32, ptr %src_code, i32 %spec.select.idx
  br label %cleanup.sink.split.i

if.then3.i.1:                                     ; preds = %if.then3.i
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %src_code, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %src_req_code)
  %cmp4.i.1 = icmp eq i32 %13, %src_req_code
  br i1 %cmp4.i.1, label %if.then3.i.1.vfe_find_code.exit_crit_edge, label %if.then3.i.1.cleanup.sink.split.i_crit_edge

if.then3.i.1.cleanup.sink.split.i_crit_edge:      ; preds = %if.then3.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then3.i.1.vfe_find_code.exit_crit_edge:        ; preds = %if.then3.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit

cleanup.sink.split.i:                             ; preds = %if.then3.i.1.cleanup.sink.split.i_crit_edge, %if.else.i
  %code.sink.i = phi ptr [ %src_code, %if.then3.i.1.cleanup.sink.split.i_crit_edge ], [ %spec.select, %if.else.i ]
  %14 = ptrtoint ptr %code.sink.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code.sink.i, align 4
  br label %vfe_find_code.exit

vfe_find_code.exit:                               ; preds = %cleanup.sink.split.i, %if.then3.i.1.vfe_find_code.exit_crit_edge, %if.then3.i.vfe_find_code.exit_crit_edge, %sw.bb.vfe_find_code.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb.vfe_find_code.exit_crit_edge ], [ %15, %cleanup.sink.split.i ], [ %src_req_code, %if.then3.i.1.vfe_find_code.exit_crit_edge ], [ %src_req_code, %if.then3.i.vfe_find_code.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_code) #12
  br label %cleanup

sw.bb1:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_code2) #12
  %16 = ptrtoint ptr %src_code2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 35223026802693, ptr %src_code2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i71 = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp.not.i72 = icmp ugt i32 %index, 1
  %17 = and i1 %cmp.not.i72, %tobool.not.i71
  br i1 %17, label %sw.bb1.vfe_find_code.exit89_crit_edge, label %for.body.i75.preheader

sw.bb1.vfe_find_code.exit89_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit89

for.body.i75.preheader:                           ; preds = %sw.bb1
  br i1 %tobool.not.i71, label %if.else.i80, label %if.then3.i78

if.then3.i78:                                     ; preds = %for.body.i75.preheader
  %18 = ptrtoint ptr %src_code2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_code2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %src_req_code)
  %cmp4.i77 = icmp eq i32 %19, %src_req_code
  br i1 %cmp4.i77, label %if.then3.i78.vfe_find_code.exit89_crit_edge, label %if.then3.i78.1

if.then3.i78.vfe_find_code.exit89_crit_edge:      ; preds = %if.then3.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit89

if.else.i80:                                      ; preds = %for.body.i75.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %switch204 = icmp ult i32 %index, 2
  %spec.select205.idx = select i1 %switch204, i32 %index, i32 0
  %spec.select205 = getelementptr i32, ptr %src_code2, i32 %spec.select205.idx
  br label %cleanup.sink.split.i87

if.then3.i78.1:                                   ; preds = %if.then3.i78
  %arrayidx.i76.1 = getelementptr inbounds i32, ptr %src_code2, i32 1
  %20 = ptrtoint ptr %arrayidx.i76.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i76.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %src_req_code)
  %cmp4.i77.1 = icmp eq i32 %21, %src_req_code
  br i1 %cmp4.i77.1, label %if.then3.i78.1.vfe_find_code.exit89_crit_edge, label %if.then3.i78.1.cleanup.sink.split.i87_crit_edge

if.then3.i78.1.cleanup.sink.split.i87_crit_edge:  ; preds = %if.then3.i78.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i87

if.then3.i78.1.vfe_find_code.exit89_crit_edge:    ; preds = %if.then3.i78.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit89

cleanup.sink.split.i87:                           ; preds = %if.then3.i78.1.cleanup.sink.split.i87_crit_edge, %if.else.i80
  %code.sink.i86 = phi ptr [ %src_code2, %if.then3.i78.1.cleanup.sink.split.i87_crit_edge ], [ %spec.select205, %if.else.i80 ]
  %22 = ptrtoint ptr %code.sink.i86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code.sink.i86, align 4
  br label %vfe_find_code.exit89

vfe_find_code.exit89:                             ; preds = %cleanup.sink.split.i87, %if.then3.i78.1.vfe_find_code.exit89_crit_edge, %if.then3.i78.vfe_find_code.exit89_crit_edge, %sw.bb1.vfe_find_code.exit89_crit_edge
  %retval.0.i88 = phi i32 [ 0, %sw.bb1.vfe_find_code.exit89_crit_edge ], [ %23, %cleanup.sink.split.i87 ], [ %src_req_code, %if.then3.i78.1.vfe_find_code.exit89_crit_edge ], [ %src_req_code, %if.then3.i78.vfe_find_code.exit89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_code2) #12
  br label %cleanup

sw.bb5:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_code6) #12
  %24 = ptrtoint ptr %src_code6 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 35210141900802, ptr %src_code6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i90 = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp.not.i91 = icmp ugt i32 %index, 1
  %25 = and i1 %cmp.not.i91, %tobool.not.i90
  br i1 %25, label %sw.bb5.vfe_find_code.exit108_crit_edge, label %for.body.i94.preheader

sw.bb5.vfe_find_code.exit108_crit_edge:           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit108

for.body.i94.preheader:                           ; preds = %sw.bb5
  br i1 %tobool.not.i90, label %if.else.i99, label %if.then3.i97

if.then3.i97:                                     ; preds = %for.body.i94.preheader
  %26 = ptrtoint ptr %src_code6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_code6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %src_req_code)
  %cmp4.i96 = icmp eq i32 %27, %src_req_code
  br i1 %cmp4.i96, label %if.then3.i97.vfe_find_code.exit108_crit_edge, label %if.then3.i97.1

if.then3.i97.vfe_find_code.exit108_crit_edge:     ; preds = %if.then3.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit108

if.else.i99:                                      ; preds = %for.body.i94.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %switch206 = icmp ult i32 %index, 2
  %spec.select207.idx = select i1 %switch206, i32 %index, i32 0
  %spec.select207 = getelementptr i32, ptr %src_code6, i32 %spec.select207.idx
  br label %cleanup.sink.split.i106

if.then3.i97.1:                                   ; preds = %if.then3.i97
  %arrayidx.i95.1 = getelementptr inbounds i32, ptr %src_code6, i32 1
  %28 = ptrtoint ptr %arrayidx.i95.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i95.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %src_req_code)
  %cmp4.i96.1 = icmp eq i32 %29, %src_req_code
  br i1 %cmp4.i96.1, label %if.then3.i97.1.vfe_find_code.exit108_crit_edge, label %if.then3.i97.1.cleanup.sink.split.i106_crit_edge

if.then3.i97.1.cleanup.sink.split.i106_crit_edge: ; preds = %if.then3.i97.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i106

if.then3.i97.1.vfe_find_code.exit108_crit_edge:   ; preds = %if.then3.i97.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit108

cleanup.sink.split.i106:                          ; preds = %if.then3.i97.1.cleanup.sink.split.i106_crit_edge, %if.else.i99
  %code.sink.i105 = phi ptr [ %src_code6, %if.then3.i97.1.cleanup.sink.split.i106_crit_edge ], [ %spec.select207, %if.else.i99 ]
  %30 = ptrtoint ptr %code.sink.i105 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %code.sink.i105, align 4
  br label %vfe_find_code.exit108

vfe_find_code.exit108:                            ; preds = %cleanup.sink.split.i106, %if.then3.i97.1.vfe_find_code.exit108_crit_edge, %if.then3.i97.vfe_find_code.exit108_crit_edge, %sw.bb5.vfe_find_code.exit108_crit_edge
  %retval.0.i107 = phi i32 [ 0, %sw.bb5.vfe_find_code.exit108_crit_edge ], [ %31, %cleanup.sink.split.i106 ], [ %src_req_code, %if.then3.i97.1.vfe_find_code.exit108_crit_edge ], [ %src_req_code, %if.then3.i97.vfe_find_code.exit108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_code6) #12
  br label %cleanup

sw.bb9:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_code10) #12
  %32 = ptrtoint ptr %src_code10 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 35214436868099, ptr %src_code10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i109 = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp.not.i110 = icmp ugt i32 %index, 1
  %33 = and i1 %cmp.not.i110, %tobool.not.i109
  br i1 %33, label %sw.bb9.vfe_find_code.exit127_crit_edge, label %for.body.i113.preheader

sw.bb9.vfe_find_code.exit127_crit_edge:           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit127

for.body.i113.preheader:                          ; preds = %sw.bb9
  br i1 %tobool.not.i109, label %if.else.i118, label %if.then3.i116

if.then3.i116:                                    ; preds = %for.body.i113.preheader
  %34 = ptrtoint ptr %src_code10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %src_code10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %src_req_code)
  %cmp4.i115 = icmp eq i32 %35, %src_req_code
  br i1 %cmp4.i115, label %if.then3.i116.vfe_find_code.exit127_crit_edge, label %if.then3.i116.1

if.then3.i116.vfe_find_code.exit127_crit_edge:    ; preds = %if.then3.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit127

if.else.i118:                                     ; preds = %for.body.i113.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %switch208 = icmp ult i32 %index, 2
  %spec.select209.idx = select i1 %switch208, i32 %index, i32 0
  %spec.select209 = getelementptr i32, ptr %src_code10, i32 %spec.select209.idx
  br label %cleanup.sink.split.i125

if.then3.i116.1:                                  ; preds = %if.then3.i116
  %arrayidx.i114.1 = getelementptr inbounds i32, ptr %src_code10, i32 1
  %36 = ptrtoint ptr %arrayidx.i114.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i114.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %src_req_code)
  %cmp4.i115.1 = icmp eq i32 %37, %src_req_code
  br i1 %cmp4.i115.1, label %if.then3.i116.1.vfe_find_code.exit127_crit_edge, label %if.then3.i116.1.cleanup.sink.split.i125_crit_edge

if.then3.i116.1.cleanup.sink.split.i125_crit_edge: ; preds = %if.then3.i116.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i125

if.then3.i116.1.vfe_find_code.exit127_crit_edge:  ; preds = %if.then3.i116.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit127

cleanup.sink.split.i125:                          ; preds = %if.then3.i116.1.cleanup.sink.split.i125_crit_edge, %if.else.i118
  %code.sink.i124 = phi ptr [ %src_code10, %if.then3.i116.1.cleanup.sink.split.i125_crit_edge ], [ %spec.select209, %if.else.i118 ]
  %38 = ptrtoint ptr %code.sink.i124 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %code.sink.i124, align 4
  br label %vfe_find_code.exit127

vfe_find_code.exit127:                            ; preds = %cleanup.sink.split.i125, %if.then3.i116.1.vfe_find_code.exit127_crit_edge, %if.then3.i116.vfe_find_code.exit127_crit_edge, %sw.bb9.vfe_find_code.exit127_crit_edge
  %retval.0.i126 = phi i32 [ 0, %sw.bb9.vfe_find_code.exit127_crit_edge ], [ %39, %cleanup.sink.split.i125 ], [ %src_req_code, %if.then3.i116.1.vfe_find_code.exit127_crit_edge ], [ %src_req_code, %if.then3.i116.vfe_find_code.exit127_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_code10) #12
  br label %cleanup

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp13.not = icmp eq i32 %index, 0
  %sink_code. = select i1 %cmp13.not, i32 %sink_code, i32 0
  br label %cleanup

if.then25:                                        ; preds = %entry.if.then25_crit_edge, %entry.if.then25_crit_edge218, %entry.if.then25_crit_edge219
  %40 = zext i32 %sink_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %sink_code, label %sw.default42 [
    i32 8200, label %sw.bb26
    i32 8201, label %sw.bb30
    i32 8198, label %sw.bb34
    i32 8199, label %sw.bb38
  ]

sw.bb26:                                          ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_code27) #12
  %41 = call ptr @memcpy(ptr %src_code27, ptr @__const.vfe_src_pad_code.src_code.63, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i128 = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %cmp.not.i129 = icmp ugt i32 %index, 4
  %42 = and i1 %cmp.not.i129, %tobool.not.i128
  br i1 %42, label %sw.bb26.vfe_find_code.exit146_crit_edge, label %for.body.i132.preheader

sw.bb26.vfe_find_code.exit146_crit_edge:          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit146

for.body.i132.preheader:                          ; preds = %sw.bb26
  br i1 %tobool.not.i128, label %if.else.i137, label %if.then3.i135

if.then3.i135:                                    ; preds = %for.body.i132.preheader
  %43 = ptrtoint ptr %src_code27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %src_code27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %src_req_code)
  %cmp4.i134 = icmp eq i32 %44, %src_req_code
  br i1 %cmp4.i134, label %if.then3.i135.vfe_find_code.exit146_crit_edge, label %if.then3.i135.1

if.then3.i135.vfe_find_code.exit146_crit_edge:    ; preds = %if.then3.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit146

if.else.i137:                                     ; preds = %for.body.i132.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %index)
  %switch210 = icmp ult i32 %index, 5
  %spec.select211.idx = select i1 %switch210, i32 %index, i32 0
  %spec.select211 = getelementptr i32, ptr %src_code27, i32 %spec.select211.idx
  br label %cleanup.sink.split.i144

if.then3.i135.1:                                  ; preds = %if.then3.i135
  %arrayidx.i133.1 = getelementptr inbounds i32, ptr %src_code27, i32 1
  %45 = ptrtoint ptr %arrayidx.i133.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i133.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %src_req_code)
  %cmp4.i134.1 = icmp eq i32 %46, %src_req_code
  br i1 %cmp4.i134.1, label %if.then3.i135.1.vfe_find_code.exit146_crit_edge, label %if.then3.i135.2

if.then3.i135.1.vfe_find_code.exit146_crit_edge:  ; preds = %if.then3.i135.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit146

if.then3.i135.2:                                  ; preds = %if.then3.i135.1
  %arrayidx.i133.2 = getelementptr inbounds i32, ptr %src_code27, i32 2
  %47 = ptrtoint ptr %arrayidx.i133.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i133.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %src_req_code)
  %cmp4.i134.2 = icmp eq i32 %48, %src_req_code
  br i1 %cmp4.i134.2, label %if.then3.i135.2.vfe_find_code.exit146_crit_edge, label %if.then3.i135.3

if.then3.i135.2.vfe_find_code.exit146_crit_edge:  ; preds = %if.then3.i135.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit146

if.then3.i135.3:                                  ; preds = %if.then3.i135.2
  %arrayidx.i133.3 = getelementptr inbounds i32, ptr %src_code27, i32 3
  %49 = ptrtoint ptr %arrayidx.i133.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i133.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %src_req_code)
  %cmp4.i134.3 = icmp eq i32 %50, %src_req_code
  br i1 %cmp4.i134.3, label %if.then3.i135.3.vfe_find_code.exit146_crit_edge, label %if.then3.i135.4

if.then3.i135.3.vfe_find_code.exit146_crit_edge:  ; preds = %if.then3.i135.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit146

if.then3.i135.4:                                  ; preds = %if.then3.i135.3
  %arrayidx.i133.4 = getelementptr inbounds i32, ptr %src_code27, i32 4
  %51 = ptrtoint ptr %arrayidx.i133.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i133.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %src_req_code)
  %cmp4.i134.4 = icmp eq i32 %52, %src_req_code
  br i1 %cmp4.i134.4, label %if.then3.i135.4.vfe_find_code.exit146_crit_edge, label %if.then3.i135.4.cleanup.sink.split.i144_crit_edge

if.then3.i135.4.cleanup.sink.split.i144_crit_edge: ; preds = %if.then3.i135.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i144

if.then3.i135.4.vfe_find_code.exit146_crit_edge:  ; preds = %if.then3.i135.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit146

cleanup.sink.split.i144:                          ; preds = %if.then3.i135.4.cleanup.sink.split.i144_crit_edge, %if.else.i137
  %code.sink.i143 = phi ptr [ %src_code27, %if.then3.i135.4.cleanup.sink.split.i144_crit_edge ], [ %spec.select211, %if.else.i137 ]
  %53 = ptrtoint ptr %code.sink.i143 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %code.sink.i143, align 4
  br label %vfe_find_code.exit146

vfe_find_code.exit146:                            ; preds = %cleanup.sink.split.i144, %if.then3.i135.4.vfe_find_code.exit146_crit_edge, %if.then3.i135.3.vfe_find_code.exit146_crit_edge, %if.then3.i135.2.vfe_find_code.exit146_crit_edge, %if.then3.i135.1.vfe_find_code.exit146_crit_edge, %if.then3.i135.vfe_find_code.exit146_crit_edge, %sw.bb26.vfe_find_code.exit146_crit_edge
  %retval.0.i145 = phi i32 [ 0, %sw.bb26.vfe_find_code.exit146_crit_edge ], [ %54, %cleanup.sink.split.i144 ], [ %src_req_code, %if.then3.i135.4.vfe_find_code.exit146_crit_edge ], [ %src_req_code, %if.then3.i135.3.vfe_find_code.exit146_crit_edge ], [ %src_req_code, %if.then3.i135.2.vfe_find_code.exit146_crit_edge ], [ %src_req_code, %if.then3.i135.1.vfe_find_code.exit146_crit_edge ], [ %src_req_code, %if.then3.i135.vfe_find_code.exit146_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_code27) #12
  br label %cleanup

sw.bb30:                                          ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_code31) #12
  %55 = call ptr @memcpy(ptr %src_code31, ptr @__const.vfe_src_pad_code.src_code.64, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i147 = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %cmp.not.i148 = icmp ugt i32 %index, 4
  %56 = and i1 %cmp.not.i148, %tobool.not.i147
  br i1 %56, label %sw.bb30.vfe_find_code.exit165_crit_edge, label %for.body.i151.preheader

sw.bb30.vfe_find_code.exit165_crit_edge:          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit165

for.body.i151.preheader:                          ; preds = %sw.bb30
  br i1 %tobool.not.i147, label %if.else.i156, label %if.then3.i154

if.then3.i154:                                    ; preds = %for.body.i151.preheader
  %57 = ptrtoint ptr %src_code31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %src_code31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %src_req_code)
  %cmp4.i153 = icmp eq i32 %58, %src_req_code
  br i1 %cmp4.i153, label %if.then3.i154.vfe_find_code.exit165_crit_edge, label %if.then3.i154.1

if.then3.i154.vfe_find_code.exit165_crit_edge:    ; preds = %if.then3.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit165

if.else.i156:                                     ; preds = %for.body.i151.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %index)
  %switch212 = icmp ult i32 %index, 5
  %spec.select213.idx = select i1 %switch212, i32 %index, i32 0
  %spec.select213 = getelementptr i32, ptr %src_code31, i32 %spec.select213.idx
  br label %cleanup.sink.split.i163

if.then3.i154.1:                                  ; preds = %if.then3.i154
  %arrayidx.i152.1 = getelementptr inbounds i32, ptr %src_code31, i32 1
  %59 = ptrtoint ptr %arrayidx.i152.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i152.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %src_req_code)
  %cmp4.i153.1 = icmp eq i32 %60, %src_req_code
  br i1 %cmp4.i153.1, label %if.then3.i154.1.vfe_find_code.exit165_crit_edge, label %if.then3.i154.2

if.then3.i154.1.vfe_find_code.exit165_crit_edge:  ; preds = %if.then3.i154.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit165

if.then3.i154.2:                                  ; preds = %if.then3.i154.1
  %arrayidx.i152.2 = getelementptr inbounds i32, ptr %src_code31, i32 2
  %61 = ptrtoint ptr %arrayidx.i152.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i152.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %src_req_code)
  %cmp4.i153.2 = icmp eq i32 %62, %src_req_code
  br i1 %cmp4.i153.2, label %if.then3.i154.2.vfe_find_code.exit165_crit_edge, label %if.then3.i154.3

if.then3.i154.2.vfe_find_code.exit165_crit_edge:  ; preds = %if.then3.i154.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit165

if.then3.i154.3:                                  ; preds = %if.then3.i154.2
  %arrayidx.i152.3 = getelementptr inbounds i32, ptr %src_code31, i32 3
  %63 = ptrtoint ptr %arrayidx.i152.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i152.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %src_req_code)
  %cmp4.i153.3 = icmp eq i32 %64, %src_req_code
  br i1 %cmp4.i153.3, label %if.then3.i154.3.vfe_find_code.exit165_crit_edge, label %if.then3.i154.4

if.then3.i154.3.vfe_find_code.exit165_crit_edge:  ; preds = %if.then3.i154.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit165

if.then3.i154.4:                                  ; preds = %if.then3.i154.3
  %arrayidx.i152.4 = getelementptr inbounds i32, ptr %src_code31, i32 4
  %65 = ptrtoint ptr %arrayidx.i152.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i152.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %src_req_code)
  %cmp4.i153.4 = icmp eq i32 %66, %src_req_code
  br i1 %cmp4.i153.4, label %if.then3.i154.4.vfe_find_code.exit165_crit_edge, label %if.then3.i154.4.cleanup.sink.split.i163_crit_edge

if.then3.i154.4.cleanup.sink.split.i163_crit_edge: ; preds = %if.then3.i154.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i163

if.then3.i154.4.vfe_find_code.exit165_crit_edge:  ; preds = %if.then3.i154.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit165

cleanup.sink.split.i163:                          ; preds = %if.then3.i154.4.cleanup.sink.split.i163_crit_edge, %if.else.i156
  %code.sink.i162 = phi ptr [ %src_code31, %if.then3.i154.4.cleanup.sink.split.i163_crit_edge ], [ %spec.select213, %if.else.i156 ]
  %67 = ptrtoint ptr %code.sink.i162 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %code.sink.i162, align 4
  br label %vfe_find_code.exit165

vfe_find_code.exit165:                            ; preds = %cleanup.sink.split.i163, %if.then3.i154.4.vfe_find_code.exit165_crit_edge, %if.then3.i154.3.vfe_find_code.exit165_crit_edge, %if.then3.i154.2.vfe_find_code.exit165_crit_edge, %if.then3.i154.1.vfe_find_code.exit165_crit_edge, %if.then3.i154.vfe_find_code.exit165_crit_edge, %sw.bb30.vfe_find_code.exit165_crit_edge
  %retval.0.i164 = phi i32 [ 0, %sw.bb30.vfe_find_code.exit165_crit_edge ], [ %68, %cleanup.sink.split.i163 ], [ %src_req_code, %if.then3.i154.4.vfe_find_code.exit165_crit_edge ], [ %src_req_code, %if.then3.i154.3.vfe_find_code.exit165_crit_edge ], [ %src_req_code, %if.then3.i154.2.vfe_find_code.exit165_crit_edge ], [ %src_req_code, %if.then3.i154.1.vfe_find_code.exit165_crit_edge ], [ %src_req_code, %if.then3.i154.vfe_find_code.exit165_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_code31) #12
  br label %cleanup

sw.bb34:                                          ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_code35) #12
  %69 = call ptr @memcpy(ptr %src_code35, ptr @__const.vfe_src_pad_code.src_code.65, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i166 = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %cmp.not.i167 = icmp ugt i32 %index, 4
  %70 = and i1 %cmp.not.i167, %tobool.not.i166
  br i1 %70, label %sw.bb34.vfe_find_code.exit184_crit_edge, label %for.body.i170.preheader

sw.bb34.vfe_find_code.exit184_crit_edge:          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit184

for.body.i170.preheader:                          ; preds = %sw.bb34
  br i1 %tobool.not.i166, label %if.else.i175, label %if.then3.i173

if.then3.i173:                                    ; preds = %for.body.i170.preheader
  %71 = ptrtoint ptr %src_code35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %src_code35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %src_req_code)
  %cmp4.i172 = icmp eq i32 %72, %src_req_code
  br i1 %cmp4.i172, label %if.then3.i173.vfe_find_code.exit184_crit_edge, label %if.then3.i173.1

if.then3.i173.vfe_find_code.exit184_crit_edge:    ; preds = %if.then3.i173
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit184

if.else.i175:                                     ; preds = %for.body.i170.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %index)
  %switch214 = icmp ult i32 %index, 5
  %spec.select215.idx = select i1 %switch214, i32 %index, i32 0
  %spec.select215 = getelementptr i32, ptr %src_code35, i32 %spec.select215.idx
  br label %cleanup.sink.split.i182

if.then3.i173.1:                                  ; preds = %if.then3.i173
  %arrayidx.i171.1 = getelementptr inbounds i32, ptr %src_code35, i32 1
  %73 = ptrtoint ptr %arrayidx.i171.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i171.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %src_req_code)
  %cmp4.i172.1 = icmp eq i32 %74, %src_req_code
  br i1 %cmp4.i172.1, label %if.then3.i173.1.vfe_find_code.exit184_crit_edge, label %if.then3.i173.2

if.then3.i173.1.vfe_find_code.exit184_crit_edge:  ; preds = %if.then3.i173.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit184

if.then3.i173.2:                                  ; preds = %if.then3.i173.1
  %arrayidx.i171.2 = getelementptr inbounds i32, ptr %src_code35, i32 2
  %75 = ptrtoint ptr %arrayidx.i171.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i171.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %src_req_code)
  %cmp4.i172.2 = icmp eq i32 %76, %src_req_code
  br i1 %cmp4.i172.2, label %if.then3.i173.2.vfe_find_code.exit184_crit_edge, label %if.then3.i173.3

if.then3.i173.2.vfe_find_code.exit184_crit_edge:  ; preds = %if.then3.i173.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit184

if.then3.i173.3:                                  ; preds = %if.then3.i173.2
  %arrayidx.i171.3 = getelementptr inbounds i32, ptr %src_code35, i32 3
  %77 = ptrtoint ptr %arrayidx.i171.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i171.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %src_req_code)
  %cmp4.i172.3 = icmp eq i32 %78, %src_req_code
  br i1 %cmp4.i172.3, label %if.then3.i173.3.vfe_find_code.exit184_crit_edge, label %if.then3.i173.4

if.then3.i173.3.vfe_find_code.exit184_crit_edge:  ; preds = %if.then3.i173.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit184

if.then3.i173.4:                                  ; preds = %if.then3.i173.3
  %arrayidx.i171.4 = getelementptr inbounds i32, ptr %src_code35, i32 4
  %79 = ptrtoint ptr %arrayidx.i171.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i171.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %src_req_code)
  %cmp4.i172.4 = icmp eq i32 %80, %src_req_code
  br i1 %cmp4.i172.4, label %if.then3.i173.4.vfe_find_code.exit184_crit_edge, label %if.then3.i173.4.cleanup.sink.split.i182_crit_edge

if.then3.i173.4.cleanup.sink.split.i182_crit_edge: ; preds = %if.then3.i173.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i182

if.then3.i173.4.vfe_find_code.exit184_crit_edge:  ; preds = %if.then3.i173.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit184

cleanup.sink.split.i182:                          ; preds = %if.then3.i173.4.cleanup.sink.split.i182_crit_edge, %if.else.i175
  %code.sink.i181 = phi ptr [ %src_code35, %if.then3.i173.4.cleanup.sink.split.i182_crit_edge ], [ %spec.select215, %if.else.i175 ]
  %81 = ptrtoint ptr %code.sink.i181 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %code.sink.i181, align 4
  br label %vfe_find_code.exit184

vfe_find_code.exit184:                            ; preds = %cleanup.sink.split.i182, %if.then3.i173.4.vfe_find_code.exit184_crit_edge, %if.then3.i173.3.vfe_find_code.exit184_crit_edge, %if.then3.i173.2.vfe_find_code.exit184_crit_edge, %if.then3.i173.1.vfe_find_code.exit184_crit_edge, %if.then3.i173.vfe_find_code.exit184_crit_edge, %sw.bb34.vfe_find_code.exit184_crit_edge
  %retval.0.i183 = phi i32 [ 0, %sw.bb34.vfe_find_code.exit184_crit_edge ], [ %82, %cleanup.sink.split.i182 ], [ %src_req_code, %if.then3.i173.4.vfe_find_code.exit184_crit_edge ], [ %src_req_code, %if.then3.i173.3.vfe_find_code.exit184_crit_edge ], [ %src_req_code, %if.then3.i173.2.vfe_find_code.exit184_crit_edge ], [ %src_req_code, %if.then3.i173.1.vfe_find_code.exit184_crit_edge ], [ %src_req_code, %if.then3.i173.vfe_find_code.exit184_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_code35) #12
  br label %cleanup

sw.bb38:                                          ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_code39) #12
  %83 = call ptr @memcpy(ptr %src_code39, ptr @__const.vfe_src_pad_code.src_code.66, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_req_code)
  %tobool.not.i185 = icmp eq i32 %src_req_code, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %cmp.not.i186 = icmp ugt i32 %index, 4
  %84 = and i1 %cmp.not.i186, %tobool.not.i185
  br i1 %84, label %sw.bb38.vfe_find_code.exit203_crit_edge, label %for.body.i189.preheader

sw.bb38.vfe_find_code.exit203_crit_edge:          ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit203

for.body.i189.preheader:                          ; preds = %sw.bb38
  br i1 %tobool.not.i185, label %if.else.i194, label %if.then3.i192

if.then3.i192:                                    ; preds = %for.body.i189.preheader
  %85 = ptrtoint ptr %src_code39 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %src_code39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %src_req_code)
  %cmp4.i191 = icmp eq i32 %86, %src_req_code
  br i1 %cmp4.i191, label %if.then3.i192.vfe_find_code.exit203_crit_edge, label %if.then3.i192.1

if.then3.i192.vfe_find_code.exit203_crit_edge:    ; preds = %if.then3.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit203

if.else.i194:                                     ; preds = %for.body.i189.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %index)
  %switch216 = icmp ult i32 %index, 5
  %spec.select217.idx = select i1 %switch216, i32 %index, i32 0
  %spec.select217 = getelementptr i32, ptr %src_code39, i32 %spec.select217.idx
  br label %cleanup.sink.split.i201

if.then3.i192.1:                                  ; preds = %if.then3.i192
  %arrayidx.i190.1 = getelementptr inbounds i32, ptr %src_code39, i32 1
  %87 = ptrtoint ptr %arrayidx.i190.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i190.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %src_req_code)
  %cmp4.i191.1 = icmp eq i32 %88, %src_req_code
  br i1 %cmp4.i191.1, label %if.then3.i192.1.vfe_find_code.exit203_crit_edge, label %if.then3.i192.2

if.then3.i192.1.vfe_find_code.exit203_crit_edge:  ; preds = %if.then3.i192.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit203

if.then3.i192.2:                                  ; preds = %if.then3.i192.1
  %arrayidx.i190.2 = getelementptr inbounds i32, ptr %src_code39, i32 2
  %89 = ptrtoint ptr %arrayidx.i190.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i190.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %src_req_code)
  %cmp4.i191.2 = icmp eq i32 %90, %src_req_code
  br i1 %cmp4.i191.2, label %if.then3.i192.2.vfe_find_code.exit203_crit_edge, label %if.then3.i192.3

if.then3.i192.2.vfe_find_code.exit203_crit_edge:  ; preds = %if.then3.i192.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit203

if.then3.i192.3:                                  ; preds = %if.then3.i192.2
  %arrayidx.i190.3 = getelementptr inbounds i32, ptr %src_code39, i32 3
  %91 = ptrtoint ptr %arrayidx.i190.3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i190.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %src_req_code)
  %cmp4.i191.3 = icmp eq i32 %92, %src_req_code
  br i1 %cmp4.i191.3, label %if.then3.i192.3.vfe_find_code.exit203_crit_edge, label %if.then3.i192.4

if.then3.i192.3.vfe_find_code.exit203_crit_edge:  ; preds = %if.then3.i192.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit203

if.then3.i192.4:                                  ; preds = %if.then3.i192.3
  %arrayidx.i190.4 = getelementptr inbounds i32, ptr %src_code39, i32 4
  %93 = ptrtoint ptr %arrayidx.i190.4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i190.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %src_req_code)
  %cmp4.i191.4 = icmp eq i32 %94, %src_req_code
  br i1 %cmp4.i191.4, label %if.then3.i192.4.vfe_find_code.exit203_crit_edge, label %if.then3.i192.4.cleanup.sink.split.i201_crit_edge

if.then3.i192.4.cleanup.sink.split.i201_crit_edge: ; preds = %if.then3.i192.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i201

if.then3.i192.4.vfe_find_code.exit203_crit_edge:  ; preds = %if.then3.i192.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %vfe_find_code.exit203

cleanup.sink.split.i201:                          ; preds = %if.then3.i192.4.cleanup.sink.split.i201_crit_edge, %if.else.i194
  %code.sink.i200 = phi ptr [ %src_code39, %if.then3.i192.4.cleanup.sink.split.i201_crit_edge ], [ %spec.select217, %if.else.i194 ]
  %95 = ptrtoint ptr %code.sink.i200 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %code.sink.i200, align 4
  br label %vfe_find_code.exit203

vfe_find_code.exit203:                            ; preds = %cleanup.sink.split.i201, %if.then3.i192.4.vfe_find_code.exit203_crit_edge, %if.then3.i192.3.vfe_find_code.exit203_crit_edge, %if.then3.i192.2.vfe_find_code.exit203_crit_edge, %if.then3.i192.1.vfe_find_code.exit203_crit_edge, %if.then3.i192.vfe_find_code.exit203_crit_edge, %sw.bb38.vfe_find_code.exit203_crit_edge
  %retval.0.i202 = phi i32 [ 0, %sw.bb38.vfe_find_code.exit203_crit_edge ], [ %96, %cleanup.sink.split.i201 ], [ %src_req_code, %if.then3.i192.4.vfe_find_code.exit203_crit_edge ], [ %src_req_code, %if.then3.i192.3.vfe_find_code.exit203_crit_edge ], [ %src_req_code, %if.then3.i192.2.vfe_find_code.exit203_crit_edge ], [ %src_req_code, %if.then3.i192.1.vfe_find_code.exit203_crit_edge ], [ %src_req_code, %if.then3.i192.vfe_find_code.exit203_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_code39) #12
  br label %cleanup

sw.default42:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp43.not = icmp eq i32 %index, 0
  %sink_code.70 = select i1 %cmp43.not, i32 %sink_code, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.default42, %vfe_find_code.exit203, %vfe_find_code.exit184, %vfe_find_code.exit165, %vfe_find_code.exit146, %sw.default, %vfe_find_code.exit127, %vfe_find_code.exit108, %vfe_find_code.exit89, %vfe_find_code.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i126, %vfe_find_code.exit127 ], [ %retval.0.i107, %vfe_find_code.exit108 ], [ %retval.0.i88, %vfe_find_code.exit89 ], [ %retval.0.i, %vfe_find_code.exit ], [ %retval.0.i202, %vfe_find_code.exit203 ], [ %retval.0.i183, %vfe_find_code.exit184 ], [ %retval.0.i164, %vfe_find_code.exit165 ], [ %retval.0.i145, %vfe_find_code.exit146 ], [ %sink_code., %sw.default ], [ %sink_code.70, %sw.default42 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfe_try_format(ptr nocapture noundef readonly %line, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %nformats = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 9
  %1 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nformats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp85.not = icmp eq i32 %2, 0
  br i1 %cmp85.not, label %for.cond.preheader.if.then6_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then6_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %code1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %3 = ptrtoint ptr %code1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code1, align 4
  %formats = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 8
  %5 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %formats, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.cond.if.then6_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.if.then6_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vfe_format, ptr %6, i32 %i.086
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp3 = icmp eq i32 %4, %8
  br i1 %cmp3, label %for.body.if.end8_crit_edge, label %for.cond

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %for.cond.if.then6_crit_edge, %for.cond.preheader.if.then6_crit_edge
  %code7 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %9 = ptrtoint ptr %code7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8198, ptr %code7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body.if.end8_crit_edge
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8191)
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 1)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 8191)
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %code31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %21 = ptrtoint ptr %code31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb30
  %num_pads.i.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.not.i.i.not = icmp eq i16 %24, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !136

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  br label %__vfe_get_format.exit

if.end.i:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 3, i32 0
  br label %__vfe_get_format.exit

__vfe_get_format.exit:                            ; preds = %if.end.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %26, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i, %if.end.i ]
  %27 = call ptr @memcpy(ptr %fmt, ptr %retval.0.i, i32 48)
  %28 = ptrtoint ptr %code31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code31, align 4
  %call33 = tail call fastcc i32 @vfe_src_pad_code(ptr noundef %line, i32 noundef %29, i32 noundef 0, i32 noundef %22)
  %30 = ptrtoint ptr %code31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call33, ptr %code31, align 4
  %31 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp35 = icmp eq i32 %32, 3
  br i1 %cmp35, label %if.then36, label %__vfe_get_format.exit.sw.epilog_crit_edge

__vfe_get_format.exit.sw.epilog_crit_edge:        ; preds = %__vfe_get_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then36:                                        ; preds = %__vfe_get_format.exit
  br i1 %cmp.i, label %if.then.i81, label %if.end.i83

if.then.i81:                                      ; preds = %if.then36
  %num_pads.i.i80 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %num_pads.i.i80 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %num_pads.i.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %34)
  %cmp.i.i = icmp ult i16 %34, 2
  br i1 %cmp.i.i, label %do.end.i.i82, label %if.then.i81.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !136

if.then.i81.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i82:                                     ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 1016, i32 noundef 9, ptr noundef null) #12
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i82, %if.then.i81.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %not.cmp.i.i = xor i1 %cmp.i.i, true
  %spec.select.i.i = zext i1 %not.cmp.i.i to i32
  %35 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %36, i32 %spec.select.i.i, i32 1
  br label %__vfe_get_crop.exit

if.end.i83:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %crop.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 5
  br label %__vfe_get_crop.exit

__vfe_get_crop.exit:                              ; preds = %if.end.i83, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i84 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %crop.i, %if.end.i83 ]
  %width38 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i84, i32 0, i32 2
  %37 = ptrtoint ptr %width38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width38, align 4
  %39 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %fmt, align 4
  %height40 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i84, i32 0, i32 3
  %40 = ptrtoint ptr %height40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height40, align 4
  %height41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %42 = ptrtoint ptr %height41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %height41, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %__vfe_get_crop.exit, %__vfe_get_format.exit.sw.epilog_crit_edge, %if.end8, %entry.sw.epilog_crit_edge
  %colorspace43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %43 = ptrtoint ptr %colorspace43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %colorspace43, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_link_setup(ptr nocapture noundef readnone %entity, ptr noundef %local, ptr nocapture noundef readnone %remote, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %local) #12
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %return

return:                                           ; preds = %if.end3, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 297, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vfe_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vfe_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1309, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @msm_vfe_subdev_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @msm_vfe_subdev_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1318, i32 3}
!15 = !{ptr @msm_vfe_subdev_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @msm_vfe_subdev_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1323, i32 49}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1324, i32 19}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1328, i32 3}
!23 = !{ptr @msm_vfe_subdev_init._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @msm_vfe_subdev_init._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @msm_vfe_subdev_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1372, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @msm_vfe_subdev_init.__key.16, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1375, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @msm_vfe_subdev_init.__key.18, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1378, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1543, i32 45}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1544, i32 29}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1546, i32 45}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1547, i32 29}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1553, i32 4}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @msm_vfe_register_entities._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @msm_vfe_register_entities._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1565, i32 4}
!49 = !{ptr @msm_vfe_register_entities._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @msm_vfe_register_entities._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1571, i32 4}
!53 = !{ptr @msm_vfe_register_entities._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @msm_vfe_register_entities._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1583, i32 28}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1587, i32 4}
!59 = !{ptr @msm_vfe_register_entities._entry.33, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @msm_vfe_register_entities._entry_ptr.35, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1597, i32 4}
!63 = !{ptr @msm_vfe_register_entities._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @msm_vfe_register_entities._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @init_completion.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../include/linux/completion.h", i32 87, i32 2}
!67 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @formats_pix_8x16, !69, !"formats_pix_8x16", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 59, i32 32}
!70 = !{ptr @formats_rdi_8x16, !71, !"formats_rdi_8x16", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 39, i32 32}
!72 = !{ptr @formats_pix_8x96, !73, !"formats_pix_8x96", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 92, i32 32}
!74 = !{ptr @formats_rdi_8x96, !75, !"formats_rdi_8x96", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 66, i32 32}
!76 = !{ptr @formats_rdi_845, !77, !"formats_rdi_845", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 99, i32 32}
!78 = !{ptr @vfe_v4l2_ops, !79, !"vfe_v4l2_ops", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1495, i32 37}
!80 = !{ptr @vfe_core_ops, !81, !"vfe_core_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1478, i32 42}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 452, i32 28}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 453, i32 28}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 454, i32 28}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 484, i32 5}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @vfe_set_clock_rates._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @vfe_set_clock_rates._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 496, i32 5}
!95 = !{ptr @vfe_set_clock_rates._entry.45, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @vfe_set_clock_rates._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 503, i32 5}
!99 = !{ptr @vfe_set_clock_rates._entry.48, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @vfe_set_clock_rates._entry_ptr.50, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 142, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 643, i32 3}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @vfe_put._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @vfe_put._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @vfe_video_ops, !109, !"vfe_video_ops", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1482, i32 43}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 743, i32 4}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vfe_set_stream._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @vfe_set_stream._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 748, i32 4}
!117 = !{ptr @vfe_set_stream._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @vfe_set_stream._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @vfe_pad_ops, !120, !"vfe_pad_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1486, i32 41}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!123 = !{ptr @vfe_v4l2_internal_ops, !124, !"vfe_v4l2_internal_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1501, i32 46}
!125 = !{ptr @vfe_media_ops, !126, !"vfe_media_ops", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/qcom/camss/camss-vfe.c", i32 1505, i32 45}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 2148276327}
!138 = !{i64 761150, i64 761175, i64 761197, i64 761213, i64 761225, i64 761245, i64 761269, i64 761285, i64 761297}
!139 = !{i64 2148276515}
!140 = !{!"branch_weights", i32 2000, i32 1}
