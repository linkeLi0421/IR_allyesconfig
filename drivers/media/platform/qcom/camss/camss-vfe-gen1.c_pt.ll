; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-vfe-gen1.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-vfe-gen1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vfe_isr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss_video_ops = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vfe_device = type { ptr, i8, ptr, i32, [30 x i8], ptr, i32, %struct.completion, %struct.completion, %struct.mutex, i32, %struct.mutex, i32, %struct.spinlock, [7 x i32], [4 x %struct.vfe_line], i8, i32, i8, ptr, ptr, %struct.vfe_isr_ops, %struct.camss_video_ops }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vfe_line = type { i32, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_rect, %struct.camss_video, %struct.vfe_output, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vfe_output = type { i8, [3 x i8], [2 x ptr], ptr, %struct.list_head, i32, %union.anon.98, i32, i32, i32, %struct.completion, %struct.completion }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { i32, i32 }
%struct.vfe_hw_ops_gen1 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.vfe_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.camss_buffer = type { %struct.vb2_v4l2_buffer, [3 x i32], %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@vfe_gen1_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VFE halt timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vfe_gen1_halt\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/qcom/camss/camss-vfe-gen1.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfe_gen1_halt._entry_ptr = internal global ptr @vfe_gen1_halt._entry, section ".printk_index", align 4
@vfe_isr_ops_gen1 = dso_local constant { %struct.vfe_isr_ops, [40 x i8] } { %struct.vfe_isr_ops { ptr @vfe_isr_reset_ack, ptr @vfe_isr_halt_ack, ptr @vfe_isr_reg_update, ptr @vfe_isr_sof, ptr @vfe_isr_comp_done, ptr @vfe_isr_wm_done }, [40 x i8] zeroinitializer }, align 32
@vfe_video_ops_gen1 = dso_local constant { %struct.camss_video_ops, [24 x i8] } { %struct.camss_video_ops { ptr @vfe_queue_buffer, ptr @vfe_flush_buffers }, [24 x i8] zeroinitializer }, align 32
@vfe_disable_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VFE sof timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vfe_disable_output\00", [45 x i8] zeroinitializer }, align 32
@vfe_disable_output._entry_ptr = internal global ptr @vfe_disable_output._entry, section ".printk_index", align 4
@vfe_disable_output._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VFE reg update timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@vfe_disable_output._entry_ptr.9 = internal global ptr @vfe_disable_output._entry.7, section ".printk_index", align 4
@vfe_get_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Output is running\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfe_get_output\00", [17 x i8] zeroinitializer }, align 32
@vfe_get_output._entry_ptr = internal global ptr @vfe_get_output._entry, section ".printk_index", align 4
@vfe_get_output._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can not reserve wm\0A\00", [44 x i8] zeroinitializer }, align 32
@vfe_get_output._entry_ptr.14 = internal global ptr @vfe_get_output._entry.12, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vfe_enable_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Output is not in reserved state %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vfe_enable_output\00", [46 x i8] zeroinitializer }, align 32
@vfe_enable_output._entry_ptr = internal global ptr @vfe_enable_output._entry, section ".printk_index", align 4
@vfe_isr_wm_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vfe_isr_wm_done = private unnamed_addr constant [16 x i8] c"vfe_isr_wm_done\00", align 1
@vfe_isr_wm_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.vfe_isr_wm_done, ptr @.str.2, i32 624, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Received wm done for unmapped index\0A\00", [59 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._entry_ptr = internal global ptr @vfe_isr_wm_done._entry, section ".printk_index", align 4
@vfe_isr_wm_done._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.vfe_isr_wm_done, ptr @.str.2, i32 631, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Active buffer mismatch!\0A\00", [39 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._entry_ptr.22 = internal global ptr @vfe_isr_wm_done._entry.20, section ".printk_index", align 4
@vfe_isr_wm_done._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.vfe_isr_wm_done, ptr @.str.2, i32 640, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Missing ready buf %d %d!\0A\00", [38 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._entry_ptr.26 = internal global ptr @vfe_isr_wm_done._entry.24, section ".printk_index", align 4
@vfe_buf_update_wm_on_last._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vfe_buf_update_wm_on_last = private unnamed_addr constant [26 x i8] c"vfe_buf_update_wm_on_last\00", align 1
@vfe_buf_update_wm_on_last._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.vfe_buf_update_wm_on_last, ptr @.str.2, i32 452, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Last buff in wrong state! %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vfe_buf_update_wm_on_last._entry_ptr = internal global ptr @vfe_buf_update_wm_on_last._entry, section ".printk_index", align 4
@vfe_buf_update_wm_on_next._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vfe_buf_update_wm_on_next = private unnamed_addr constant [26 x i8] c"vfe_buf_update_wm_on_next\00", align 1
@vfe_buf_update_wm_on_next._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.vfe_buf_update_wm_on_next, ptr @.str.2, i32 432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Next buf in wrong state! %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vfe_buf_update_wm_on_next._entry_ptr = internal global ptr @vfe_buf_update_wm_on_next._entry, section ".printk_index", align 4
@vfe_buf_update_wm_on_new._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vfe_buf_update_wm_on_new = private unnamed_addr constant [25 x i8] c"vfe_buf_update_wm_on_new\00", align 1
@vfe_buf_update_wm_on_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.vfe_buf_update_wm_on_new, ptr @.str.2, i32 481, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Inactive buffer is busy\0A\00", [39 x i8] zeroinitializer }, align 32
@vfe_buf_update_wm_on_new._entry_ptr = internal global ptr @vfe_buf_update_wm_on_new._entry, section ".printk_index", align 4
@vfe_buf_update_wm_on_new._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vfe_buf_update_wm_on_new._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.vfe_buf_update_wm_on_new, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Output idle with buffer set!\0A\00", [34 x i8] zeroinitializer }, align 32
@vfe_buf_update_wm_on_new._entry_ptr.33 = internal global ptr @vfe_buf_update_wm_on_new._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 29, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"vfe_isr_ops_gen1\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 730, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"vfe_video_ops_gen1\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 739, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 52, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 64, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 293, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 315, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 198, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 623, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 630, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 638, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 450, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 430, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 480, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [54 x i8] c"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 495, i32 4 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @vfe_buf_update_wm_on_last._entry, ptr @vfe_buf_update_wm_on_last._entry_ptr, ptr @vfe_buf_update_wm_on_new._entry, ptr @vfe_buf_update_wm_on_new._entry.31, ptr @vfe_buf_update_wm_on_new._entry_ptr, ptr @vfe_buf_update_wm_on_new._entry_ptr.33, ptr @vfe_buf_update_wm_on_next._entry, ptr @vfe_buf_update_wm_on_next._entry_ptr, ptr @vfe_disable_output._entry, ptr @vfe_disable_output._entry.7, ptr @vfe_disable_output._entry_ptr, ptr @vfe_disable_output._entry_ptr.9, ptr @vfe_enable_output._entry, ptr @vfe_enable_output._entry_ptr, ptr @vfe_gen1_halt._entry, ptr @vfe_gen1_halt._entry_ptr, ptr @vfe_get_output._entry, ptr @vfe_get_output._entry.12, ptr @vfe_get_output._entry_ptr, ptr @vfe_get_output._entry_ptr.14, ptr @vfe_isr_wm_done._entry, ptr @vfe_isr_wm_done._entry.20, ptr @vfe_isr_wm_done._entry.24, ptr @vfe_isr_wm_done._entry_ptr, ptr @vfe_isr_wm_done._entry_ptr.22, ptr @vfe_isr_wm_done._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vfe_isr_ops_gen1, ptr @vfe_video_ops_gen1, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @vfe_isr_wm_done._rs, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @vfe_isr_wm_done._rs.23, ptr @.str.25, ptr @vfe_buf_update_wm_on_last._rs, ptr @.str.27, ptr @vfe_buf_update_wm_on_next._rs, ptr @.str.28, ptr @vfe_buf_update_wm_on_new._rs, ptr @.str.29, ptr @vfe_buf_update_wm_on_new._rs.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_gen1_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_ops_gen1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_video_ops_gen1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_disable_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_disable_output._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_get_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_get_output._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_enable_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_last._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_last._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_next._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_next._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_new._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_new._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_buf_update_wm_on_new._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfe_gen1_halt(ptr noundef %vfe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %halt_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 8
  %0 = ptrtoint ptr %halt_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %halt_complete, align 4
  %ops_gen1 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  %1 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops_gen1, align 8
  %halt_request = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %halt_request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %halt_request, align 4
  tail call void %4(ptr noundef %vfe) #5
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %halt_complete, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vfe, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfe_gen1_disable(ptr noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %line, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  %output1.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7
  %ops2.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 19
  %2 = ptrtoint ptr %ops2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2.i, align 4
  %output_lock.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 13
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #5
  %wait_sof.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 6, i32 0, i32 1
  %4 = ptrtoint ptr %wait_sof.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %wait_sof.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call5.i) #5
  %sof.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 10
  %call10.i = tail call i32 @wait_for_completion_timeout(ptr noundef %sof.i, i32 noundef 50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %do.end13.i, label %entry.do.body15.i_crit_edge

entry.do.body15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15.i

do.end13.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev.i = getelementptr inbounds %struct.camss, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5) #8
  br label %do.body15.i

do.body15.i:                                      ; preds = %do.end13.i, %entry.do.body15.i_crit_edge
  %call23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #5
  %9 = ptrtoint ptr %output1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %output1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp292.not.i = icmp eq i8 %10, 0
  br i1 %cmp292.not.i, label %do.body15.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body15.i.for.end.i_crit_edge:                  ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body15.i
  %ops_gen1.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops_gen1.i, align 8
  %wm_enable.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %wm_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wm_enable.i, align 4
  %arrayidx31.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.03.i
  %15 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx31.i, align 1
  tail call void %14(ptr noundef %add.ptr, i8 noundef zeroext %16, i8 noundef zeroext 0) #5
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %17 = ptrtoint ptr %output1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %output1.i, align 4
  %conv28.i = zext i8 %18 to i32
  %cmp29.i = icmp ult i32 %inc.i, %conv28.i
  br i1 %cmp29.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body15.i.for.end.i_crit_edge
  %reg_update.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %reg_update.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_update.i, align 4
  %21 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %line, align 8
  tail call void %20(ptr noundef %add.ptr, i32 noundef %22) #5
  %wait_reg_update.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 9
  %23 = ptrtoint ptr %wait_reg_update.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %wait_reg_update.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call23.i) #5
  %reg_update34.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 11
  %call36.i = tail call i32 @wait_for_completion_timeout(ptr noundef %reg_update34.i, i32 noundef 50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %do.end41.i, label %for.end.i.do.body46.i_crit_edge

for.end.i.do.body46.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46.i

do.end41.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %dev43.i = getelementptr inbounds %struct.camss, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev43.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.8) #8
  br label %do.body46.i

do.body46.i:                                      ; preds = %do.end41.i, %for.end.i.do.body46.i_crit_edge
  %call54.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #5
  %28 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %line, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp60.not.i = icmp eq i32 %29, 3
  br i1 %cmp60.not.i, label %for.cond78.preheader.i, label %if.then62.i

for.cond78.preheader.i:                           ; preds = %do.body46.i
  %30 = ptrtoint ptr %output1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %output1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp815.not.i = icmp eq i8 %31, 0
  br i1 %cmp815.not.i, label %for.cond78.preheader.i.for.end95.i_crit_edge, label %for.body83.lr.ph.i

for.cond78.preheader.i.for.end95.i_crit_edge:     ; preds = %for.cond78.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end95.i

for.body83.lr.ph.i:                               ; preds = %for.cond78.preheader.i
  %ops_gen184.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 20
  br label %for.body83.i

if.then62.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #7
  %ops_gen163.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 20
  %32 = ptrtoint ptr %ops_gen163.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops_gen163.i, align 8
  %wm_frame_based.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %wm_frame_based.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wm_frame_based.i, align 4
  %wm_idx64.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %wm_idx64.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wm_idx64.i, align 1
  tail call void %35(ptr noundef %add.ptr, i8 noundef zeroext %37, i8 noundef zeroext 0) #5
  %38 = ptrtoint ptr %ops_gen163.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops_gen163.i, align 8
  %bus_disconnect_wm_from_rdi.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %bus_disconnect_wm_from_rdi.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus_disconnect_wm_from_rdi.i, align 4
  %42 = ptrtoint ptr %wm_idx64.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wm_idx64.i, align 1
  %44 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %line, align 8
  tail call void %41(ptr noundef %add.ptr, i8 noundef zeroext %43, i32 noundef %45) #5
  %46 = ptrtoint ptr %ops_gen163.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops_gen163.i, align 8
  %enable_irq_wm_line.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %enable_irq_wm_line.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %enable_irq_wm_line.i, align 4
  %50 = ptrtoint ptr %wm_idx64.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %wm_idx64.i, align 1
  %52 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %line, align 8
  tail call void %49(ptr noundef %add.ptr, i8 noundef zeroext %51, i32 noundef %53, i8 noundef zeroext 0) #5
  %54 = ptrtoint ptr %ops_gen163.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops_gen163.i, align 8
  %set_cgc_override.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %set_cgc_override.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_cgc_override.i, align 4
  %58 = ptrtoint ptr %wm_idx64.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %wm_idx64.i, align 1
  tail call void %57(ptr noundef %add.ptr, i8 noundef zeroext %59, i8 noundef zeroext 0) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call54.i) #5
  br label %vfe_disable_output.exit

for.body83.i:                                     ; preds = %for.body83.i.for.body83.i_crit_edge, %for.body83.lr.ph.i
  %i.16.i = phi i32 [ 0, %for.body83.lr.ph.i ], [ %inc94.i, %for.body83.i.for.body83.i_crit_edge ]
  %60 = ptrtoint ptr %ops_gen184.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops_gen184.i, align 8
  %wm_line_based.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %61, i32 0, i32 25
  %62 = ptrtoint ptr %wm_line_based.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wm_line_based.i, align 4
  %arrayidx86.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.16.i
  %64 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx86.i, align 1
  %conv87.i = zext i8 %65 to i32
  %conv88.i = trunc i32 %i.16.i to i8
  tail call void %63(ptr noundef %add.ptr, i32 noundef %conv87.i, ptr noundef null, i8 noundef zeroext %conv88.i, i32 noundef 0) #5
  %66 = ptrtoint ptr %ops_gen184.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops_gen184.i, align 8
  %set_cgc_override90.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %set_cgc_override90.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_cgc_override90.i, align 4
  %70 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx86.i, align 1
  tail call void %69(ptr noundef %add.ptr, i8 noundef zeroext %71, i8 noundef zeroext 0) #5
  %inc94.i = add nuw nsw i32 %i.16.i, 1
  %72 = ptrtoint ptr %output1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %output1.i, align 4
  %conv80.i = zext i8 %73 to i32
  %cmp81.i = icmp ult i32 %inc94.i, %conv80.i
  br i1 %cmp81.i, label %for.body83.i.for.body83.i_crit_edge, label %for.body83.i.for.end95.i_crit_edge

for.body83.i.for.end95.i_crit_edge:               ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end95.i

for.body83.i.for.body83.i_crit_edge:              ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body83.i

for.end95.i:                                      ; preds = %for.body83.i.for.end95.i_crit_edge, %for.cond78.preheader.i.for.end95.i_crit_edge
  %ops_gen196.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 20
  %74 = ptrtoint ptr %ops_gen196.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops_gen196.i, align 8
  %enable_irq_pix_line.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %enable_irq_pix_line.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %enable_irq_pix_line.i, align 4
  %78 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %line, align 8
  tail call void %77(ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %79, i8 noundef zeroext 0) #5
  %80 = ptrtoint ptr %ops_gen196.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops_gen196.i, align 8
  %set_module_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %81, i32 0, i32 18
  %82 = ptrtoint ptr %set_module_cfg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_module_cfg.i, align 4
  tail call void %83(ptr noundef %add.ptr, i8 noundef zeroext 0) #5
  %84 = ptrtoint ptr %ops_gen196.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops_gen196.i, align 8
  %set_realign_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %85, i32 0, i32 21
  %86 = ptrtoint ptr %set_realign_cfg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_realign_cfg.i, align 4
  tail call void %87(ptr noundef %add.ptr, ptr noundef %line, i8 noundef zeroext 0) #5
  %88 = ptrtoint ptr %ops_gen196.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops_gen196.i, align 8
  %set_xbar_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %89, i32 0, i32 23
  %90 = ptrtoint ptr %set_xbar_cfg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_xbar_cfg.i, align 4
  tail call void %91(ptr noundef %add.ptr, ptr noundef %output1.i, i8 noundef zeroext 0) #5
  %92 = ptrtoint ptr %ops_gen196.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops_gen196.i, align 8
  %set_camif_cmd.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %93, i32 0, i32 12
  %94 = ptrtoint ptr %set_camif_cmd.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_camif_cmd.i, align 4
  tail call void %95(ptr noundef %add.ptr, i8 noundef zeroext 0) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call54.i) #5
  %96 = ptrtoint ptr %ops_gen196.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops_gen196.i, align 8
  %camif_wait_for_stop.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %camif_wait_for_stop.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %camif_wait_for_stop.i, align 4
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 8
  %dev105.i = getelementptr inbounds %struct.camss, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %dev105.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev105.i, align 8
  %call106.i = tail call i32 %99(ptr noundef %add.ptr, ptr noundef %103) #5
  br label %vfe_disable_output.exit

vfe_disable_output.exit:                          ; preds = %for.end95.i, %if.then62.i
  %call1 = tail call i32 @vfe_put_output(ptr noundef %line) #5
  %stream_lock = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #5
  %stream_count = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 12
  %104 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp = icmp eq i32 %105, 1
  br i1 %cmp, label %if.then, label %vfe_disable_output.exit.if.end_crit_edge

vfe_disable_output.exit.if.end_crit_edge:         ; preds = %vfe_disable_output.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %vfe_disable_output.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ops_gen1 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 20
  %106 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops_gen1, align 8
  %bus_enable_wr_if = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %bus_enable_wr_if to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus_enable_wr_if, align 4
  tail call void %109(ptr noundef %add.ptr, i8 noundef zeroext 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %vfe_disable_output.exit.if.end_crit_edge
  %110 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %stream_count, align 4
  %dec = add i32 %111, -1
  store i32 %dec, ptr %stream_count, align 4
  tail call void @mutex_unlock(ptr noundef %stream_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_put_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfe_gen1_enable(ptr noundef %line) local_unnamed_addr #0 align 64 {
entry:
  %frame_skip.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %line, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  %stream_lock = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #5
  %stream_count = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 12
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ops_gen1 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 20
  %4 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops_gen1, align 8
  %enable_irq_common = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %enable_irq_common to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_irq_common, align 4
  tail call void %7(ptr noundef %add.ptr) #5
  %8 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops_gen1, align 8
  %bus_enable_wr_if = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bus_enable_wr_if to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_enable_wr_if, align 4
  tail call void %11(ptr noundef %add.ptr, i8 noundef zeroext 1) #5
  %12 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops_gen1, align 8
  %set_qos = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %set_qos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_qos, align 4
  tail call void %15(ptr noundef %add.ptr) #5
  %16 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops_gen1, align 8
  %set_ds = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %set_ds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_ds, align 4
  tail call void %19(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream_count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %stream_count, align 4
  tail call void @mutex_unlock(ptr noundef %stream_lock) #5
  %22 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %line, align 8
  %sub.i = sub i32 0, %23
  %arrayidx.i = getelementptr %struct.vfe_line, ptr %line, i32 %sub.i
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 -432
  %output_lock.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i, i32 0, i32 13
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #5
  %output6.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7
  %state.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 7
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i = icmp eq i32 %25, 0
  br i1 %cmp7.not.i, label %if.end.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.camss, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10) #8
  br label %vfe_get_output.exit.thread

if.end.i:                                         ; preds = %if.end
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %state.i, align 4
  %31 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 6
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %31, align 4
  %pixelformat.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 6, i32 4, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixelformat.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %sw.default.i [
    i32 842094158, label %if.end.i.for.body.preheader.i_crit_edge
    i32 825382478, label %if.end.i.for.body.preheader.i_crit_edge83
    i32 909203022, label %if.end.i.for.body.preheader.i_crit_edge84
    i32 825644622, label %if.end.i.for.body.preheader.i_crit_edge85
  ]

if.end.i.for.body.preheader.i_crit_edge85:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.end.i.for.body.preheader.i_crit_edge84:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.end.i.for.body.preheader.i_crit_edge83:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.end.i.for.body.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %sw.default.i, %if.end.i.for.body.preheader.i_crit_edge, %if.end.i.for.body.preheader.i_crit_edge83, %if.end.i.for.body.preheader.i_crit_edge84, %if.end.i.for.body.preheader.i_crit_edge85
  %storemerge.i = phi i8 [ 1, %sw.default.i ], [ 2, %if.end.i.for.body.preheader.i_crit_edge ], [ 2, %if.end.i.for.body.preheader.i_crit_edge83 ], [ 2, %if.end.i.for.body.preheader.i_crit_edge84 ], [ 2, %if.end.i.for.body.preheader.i_crit_edge85 ]
  %36 = ptrtoint ptr %output6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %storemerge.i, ptr %output6.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.080.i = phi i32 [ %inc.i, %if.end28.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %37 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %line, align 8
  %call19.i = tail call i32 @vfe_reserve_wm(ptr noundef %add.ptr.i, i32 noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %do.end25.i, label %if.end28.i

do.end25.i:                                       ; preds = %for.body.i
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %dev27.i = getelementptr inbounds %struct.camss, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev27.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.080.i)
  %cmp3482.not.i = icmp eq i32 %i.080.i, 0
  br i1 %cmp3482.not.i, label %do.end25.i.for.end42.i_crit_edge, label %do.end25.i.for.body36.i_crit_edge

do.end25.i.for.body36.i_crit_edge:                ; preds = %do.end25.i
  br label %for.body36.i

do.end25.i.for.end42.i_crit_edge:                 ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42.i

if.end28.i:                                       ; preds = %for.body.i
  %conv29.i = trunc i32 %call19.i to i8
  %arrayidx31.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.080.i
  %43 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv29.i, ptr %arrayidx31.i, align 1
  %inc.i = add nuw nsw i32 %i.080.i, 1
  %44 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %output6.i, align 4
  %conv15.i = zext i8 %45 to i32
  %cmp16.i = icmp ult i32 %inc.i, %conv15.i
  br i1 %cmp16.i, label %if.end28.i.for.body.i_crit_edge, label %if.end7

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %do.end25.i.for.body36.i_crit_edge
  %i.183.in.i = phi i32 [ %i.183.i, %for.body36.i.for.body36.i_crit_edge ], [ %i.080.i, %do.end25.i.for.body36.i_crit_edge ]
  %i.183.i = add nsw i32 %i.183.in.i, -1
  %arrayidx38.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.183.i
  %46 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx38.i, align 1
  %call39.i = tail call i32 @vfe_release_wm(ptr noundef %add.ptr.i, i8 noundef zeroext %47) #5
  %cmp34.i = icmp sgt i32 %i.183.in.i, 1
  br i1 %cmp34.i, label %for.body36.i.for.body36.i_crit_edge, label %for.body36.i.for.end42.i_crit_edge

for.body36.i.for.end42.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end42.i

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body36.i

for.end42.i:                                      ; preds = %for.body36.i.for.end42.i_crit_edge, %do.end25.i.for.end42.i_crit_edge
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %state.i, align 4
  br label %vfe_get_output.exit.thread

vfe_get_output.exit.thread:                       ; preds = %for.end42.i, %do.end11.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call3.i) #5
  br label %error_get_output

if.end7:                                          ; preds = %if.end28.i
  %drop_update_idx.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 5
  %49 = ptrtoint ptr %drop_update_idx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %drop_update_idx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call3.i) #5
  %50 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %line, align 8
  %sub.i47 = sub i32 0, %51
  %arrayidx.i48 = getelementptr %struct.vfe_line, ptr %line, i32 %sub.i47
  %add.ptr.i49 = getelementptr i8, ptr %arrayidx.i48, i32 -432
  %ops2.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i49, i32 0, i32 19
  %52 = ptrtoint ptr %ops2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_skip.i) #5
  %54 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %frame_skip.i, align 4
  %ops_gen1.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i49, i32 0, i32 20
  %55 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops_gen1.i, align 8
  %get_ub_size.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %get_ub_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %get_ub_size.i, align 4
  %id3.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i49, i32 0, i32 1
  %59 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %id3.i, align 4
  %call.i = tail call zeroext i16 %58(i8 noundef zeroext %60) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %vfe_enable_output.exit.thread, label %if.end.i50

vfe_enable_output.exit.thread:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_skip.i) #5
  br label %error_enable_output

if.end.i50:                                       ; preds = %if.end7
  %subdev.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 1
  %call4.i = tail call ptr @camss_find_sensor(ptr noundef %subdev.i) #5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i50.do.body42.i_crit_edge, label %if.else.i

if.end.i50.do.body42.i_crit_edge:                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42.i

if.else.i:                                        ; preds = %if.end.i50
  %ops15.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call4.i, i32 0, i32 6
  %61 = ptrtoint ptr %ops15.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops15.i, align 4
  %sensor16.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %sensor16.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sensor16.i, align 4
  %tobool17.not.i = icmp eq ptr %64, null
  br i1 %tobool17.not.i, label %if.else.i.if.end37.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end37.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %g_skip_frames.i = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %g_skip_frames.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %g_skip_frames.i, align 4
  %tobool20.not.i = icmp eq ptr %66, null
  br i1 %tobool20.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %if.else22.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

if.else22.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6), align 4
  %tobool23.not.i = icmp eq ptr %67, null
  br i1 %tobool23.not.i, label %if.else22.i.if.else30.i_crit_edge, label %land.lhs.true24.i

if.else22.i.if.else30.i_crit_edge:                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else30.i

land.lhs.true24.i:                                ; preds = %if.else22.i
  %g_skip_frames25.i = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %g_skip_frames25.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %g_skip_frames25.i, align 4
  %tobool26.not.i = icmp eq ptr %69, null
  br i1 %tobool26.not.i, label %land.lhs.true24.i.if.else30.i_crit_edge, label %land.lhs.true24.i.if.end37.sink.split.i_crit_edge

land.lhs.true24.i.if.end37.sink.split.i_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.sink.split.i

land.lhs.true24.i.if.else30.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else30.i

if.else30.i:                                      ; preds = %land.lhs.true24.i.if.else30.i_crit_edge, %if.else22.i.if.else30.i_crit_edge
  br label %if.end37.sink.split.i

if.end37.sink.split.i:                            ; preds = %if.else30.i, %land.lhs.true24.i.if.end37.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %66, %if.else30.i ], [ %69, %land.lhs.true24.i.if.end37.sink.split.i_crit_edge ]
  %call34.i = call i32 %.sink.i(ptr noundef nonnull %call4.i, ptr noundef nonnull %frame_skip.i) #5
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37.sink.split.i, %land.lhs.true.i.if.end37.i_crit_edge, %if.else.i.if.end37.i_crit_edge
  %70 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %frame_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %71)
  %cmp.i = icmp ugt i32 %71, 29
  br i1 %cmp.i, label %if.then39.i, label %if.end37.i.do.body42.i_crit_edge

if.end37.i.do.body42.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body42.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 29, ptr %frame_skip.i, align 4
  br label %do.body42.i

do.body42.i:                                      ; preds = %if.then39.i, %if.end37.i.do.body42.i_crit_edge, %if.end.i50.do.body42.i_crit_edge
  %output_lock.i51 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i49, i32 0, i32 13
  %call46.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i51) #5
  %reg_update_clear.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %53, i32 0, i32 8
  %73 = ptrtoint ptr %reg_update_clear.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_update_clear.i, align 4
  %75 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %line, align 8
  call void %74(ptr noundef %add.ptr.i49, i32 noundef %76) #5
  %77 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp50.not.i = icmp eq i32 %78, 1
  br i1 %cmp50.not.i, label %if.end58.i, label %vfe_enable_output.exit.thread64

vfe_enable_output.exit.thread64:                  ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %add.ptr.i49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i49, align 8
  %dev.i53 = getelementptr inbounds %struct.camss, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %dev.i53 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i53, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.15, i32 noundef %78) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i51, i32 noundef %call46.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_skip.i) #5
  br label %error_enable_output

if.end58.i:                                       ; preds = %do.body42.i
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %state.i, align 4
  %call60.i = call ptr @vfe_buf_get_pending(ptr noundef %output6.i) #5
  %buf.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 2
  %84 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call60.i, ptr %buf.i, align 4
  %call62.i = call ptr @vfe_buf_get_pending(ptr noundef %output6.i) #5
  %arrayidx64.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 2, i32 1
  %85 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call62.i, ptr %arrayidx64.i, align 4
  %86 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf.i, align 4
  %tobool67.not.i = icmp ne ptr %87, null
  %tobool71.not.i = icmp eq ptr %call62.i, null
  %or.cond.i = select i1 %tobool67.not.i, i1 true, i1 %tobool71.not.i
  br i1 %or.cond.i, label %if.end79.i, label %if.end79.thread.i

if.end79.thread.i:                                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call62.i, ptr %buf.i, align 4
  %89 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx64.i, align 4
  br label %if.then83.i

if.end79.i:                                       ; preds = %if.end58.i
  %tobool82.not.i = icmp eq ptr %87, null
  br i1 %tobool82.not.i, label %if.end79.i.if.end85.i_crit_edge, label %if.end79.i.if.then83.i_crit_edge

if.end79.i.if.then83.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then83.i

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85.i

if.then83.i:                                      ; preds = %if.end79.i.if.then83.i_crit_edge, %if.end79.thread.i
  %90 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %state.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i, %if.end79.i.if.end85.i_crit_edge
  %91 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx64.i, align 4
  %tobool88.not.i = icmp eq ptr %92, null
  br i1 %tobool88.not.i, label %if.end91.i, label %if.end91.thread.i

if.end91.thread.i:                                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3, ptr %state.i, align 4
  br label %sw.bb93.i

if.end91.i:                                       ; preds = %if.end85.i
  %94 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr.i = load i32, ptr %state.i, align 4
  %95 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %.pr.i, label %sw.default.i54 [
    i32 2, label %sw.bb.i
    i32 3, label %if.end91.i.sw.bb93.i_crit_edge
  ]

if.end91.i.sw.bb93.i_crit_edge:                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93.i

sw.bb.i:                                          ; preds = %if.end91.i
  %96 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %frame_skip.i, align 4
  %shl.i = shl nuw i32 1, %97
  %98 = ptrtoint ptr %drop_update_idx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %drop_update_idx.i, align 4
  %100 = and i32 %99, 1
  %rem.i.i = xor i32 %100, 1
  store i32 %rem.i.i, ptr %drop_update_idx.i, align 4
  %101 = trunc i32 %100 to i8
  %conv.i.i = xor i8 %101, 31
  %102 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %output6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp24.not.i.i = icmp eq i8 %103, 0
  br i1 %cmp24.not.i.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.for.body.i.i_crit_edge

sw.bb.i.for.body.i.i_crit_edge:                   ; preds = %sw.bb.i
  br label %for.body.i.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.i.for.body.i.i_crit_edge
  %i.025.i.i = phi i32 [ %inc8.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb.i.for.body.i.i_crit_edge ]
  %104 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_period.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %105, i32 0, i32 28
  %106 = ptrtoint ptr %wm_set_framedrop_period.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wm_set_framedrop_period.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.025.i.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i, align 1
  call void %107(ptr noundef %add.ptr.i49, i8 noundef zeroext %109, i8 noundef zeroext %conv.i.i) #5
  %110 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_pattern.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %111, i32 0, i32 29
  %112 = ptrtoint ptr %wm_set_framedrop_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wm_set_framedrop_pattern.i.i, align 4
  %114 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i.i, align 1
  call void %113(ptr noundef %add.ptr.i49, i8 noundef zeroext %115, i32 noundef %shl.i) #5
  %inc8.i.i = add nuw nsw i32 %i.025.i.i, 1
  %116 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %output6.i, align 4
  %conv3.i.i = zext i8 %117 to i32
  %cmp.i.i = icmp ult i32 %inc8.i.i, %conv3.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.sw.epilog.i_crit_edge

for.body.i.i.sw.epilog.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

sw.bb93.i:                                        ; preds = %if.end91.i.sw.bb93.i_crit_edge, %if.end91.thread.i
  %118 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %frame_skip.i, align 4
  %shl94.i = shl i32 3, %119
  %120 = ptrtoint ptr %drop_update_idx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %drop_update_idx.i, align 4
  %122 = and i32 %121, 1
  %rem.i343.i = xor i32 %122, 1
  store i32 %rem.i343.i, ptr %drop_update_idx.i, align 4
  %123 = trunc i32 %122 to i8
  %conv.i344.i = xor i8 %123, 31
  %124 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %output6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp24.not.i345.i = icmp eq i8 %125, 0
  br i1 %cmp24.not.i345.i, label %sw.bb93.i.sw.epilog.i_crit_edge, label %sw.bb93.i.for.body.i355.i_crit_edge

sw.bb93.i.for.body.i355.i_crit_edge:              ; preds = %sw.bb93.i
  br label %for.body.i355.i

sw.bb93.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body.i355.i:                                  ; preds = %for.body.i355.i.for.body.i355.i_crit_edge, %sw.bb93.i.for.body.i355.i_crit_edge
  %i.025.i348.i = phi i32 [ %inc8.i352.i, %for.body.i355.i.for.body.i355.i_crit_edge ], [ 0, %sw.bb93.i.for.body.i355.i_crit_edge ]
  %126 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_period.i349.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %127, i32 0, i32 28
  %128 = ptrtoint ptr %wm_set_framedrop_period.i349.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %wm_set_framedrop_period.i349.i, align 4
  %arrayidx.i350.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.025.i348.i
  %130 = ptrtoint ptr %arrayidx.i350.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i350.i, align 1
  call void %129(ptr noundef %add.ptr.i49, i8 noundef zeroext %131, i8 noundef zeroext %conv.i344.i) #5
  %132 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_pattern.i351.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %133, i32 0, i32 29
  %134 = ptrtoint ptr %wm_set_framedrop_pattern.i351.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wm_set_framedrop_pattern.i351.i, align 4
  %136 = ptrtoint ptr %arrayidx.i350.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i350.i, align 1
  call void %135(ptr noundef %add.ptr.i49, i8 noundef zeroext %137, i32 noundef %shl94.i) #5
  %inc8.i352.i = add nuw nsw i32 %i.025.i348.i, 1
  %138 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %output6.i, align 4
  %conv3.i353.i = zext i8 %139 to i32
  %cmp.i354.i = icmp ult i32 %inc8.i352.i, %conv3.i353.i
  br i1 %cmp.i354.i, label %for.body.i355.i.for.body.i355.i_crit_edge, label %for.body.i355.i.sw.epilog.i_crit_edge

for.body.i355.i.sw.epilog.i_crit_edge:            ; preds = %for.body.i355.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body.i355.i.for.body.i355.i_crit_edge:        ; preds = %for.body.i355.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i355.i

sw.default.i54:                                   ; preds = %if.end91.i
  %140 = ptrtoint ptr %drop_update_idx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %drop_update_idx.i, align 4
  %142 = and i32 %141, 1
  %rem.i361.i = xor i32 %142, 1
  store i32 %rem.i361.i, ptr %drop_update_idx.i, align 4
  %143 = trunc i32 %142 to i8
  %conv.i362.i = xor i8 %143, 31
  %144 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %output6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp24.not.i363.i = icmp eq i8 %145, 0
  br i1 %cmp24.not.i363.i, label %sw.default.i54.sw.epilog.i_crit_edge, label %sw.default.i54.for.body.i373.i_crit_edge

sw.default.i54.for.body.i373.i_crit_edge:         ; preds = %sw.default.i54
  br label %for.body.i373.i

sw.default.i54.sw.epilog.i_crit_edge:             ; preds = %sw.default.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body.i373.i:                                  ; preds = %for.body.i373.i.for.body.i373.i_crit_edge, %sw.default.i54.for.body.i373.i_crit_edge
  %i.025.i366.i = phi i32 [ %inc8.i370.i, %for.body.i373.i.for.body.i373.i_crit_edge ], [ 0, %sw.default.i54.for.body.i373.i_crit_edge ]
  %146 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_period.i367.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %147, i32 0, i32 28
  %148 = ptrtoint ptr %wm_set_framedrop_period.i367.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %wm_set_framedrop_period.i367.i, align 4
  %arrayidx.i368.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.025.i366.i
  %150 = ptrtoint ptr %arrayidx.i368.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.i368.i, align 1
  call void %149(ptr noundef %add.ptr.i49, i8 noundef zeroext %151, i8 noundef zeroext %conv.i362.i) #5
  %152 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_pattern.i369.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %153, i32 0, i32 29
  %154 = ptrtoint ptr %wm_set_framedrop_pattern.i369.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wm_set_framedrop_pattern.i369.i, align 4
  %156 = ptrtoint ptr %arrayidx.i368.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.i368.i, align 1
  call void %155(ptr noundef %add.ptr.i49, i8 noundef zeroext %157, i32 noundef 0) #5
  %inc8.i370.i = add nuw nsw i32 %i.025.i366.i, 1
  %158 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %output6.i, align 4
  %conv3.i371.i = zext i8 %159 to i32
  %cmp.i372.i = icmp ult i32 %inc8.i370.i, %conv3.i371.i
  br i1 %cmp.i372.i, label %for.body.i373.i.for.body.i373.i_crit_edge, label %for.body.i373.i.sw.epilog.i_crit_edge

for.body.i373.i.sw.epilog.i_crit_edge:            ; preds = %for.body.i373.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body.i373.i.for.body.i373.i_crit_edge:        ; preds = %for.body.i373.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i373.i

sw.epilog.i:                                      ; preds = %for.body.i373.i.sw.epilog.i_crit_edge, %sw.default.i54.sw.epilog.i_crit_edge, %for.body.i355.i.sw.epilog.i_crit_edge, %sw.bb93.i.sw.epilog.i_crit_edge, %for.body.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %160 = ptrtoint ptr %ops2.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops2.i, align 4
  %reg_update.i375.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %161, i32 0, i32 7
  %162 = ptrtoint ptr %reg_update.i375.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reg_update.i375.i, align 4
  %164 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %line, align 8
  call void %163(ptr noundef %add.ptr.i49, i32 noundef %165) #5
  %sequence.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 8
  %166 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %sequence.i, align 4
  %wait_sof.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 6, i32 0, i32 1
  %167 = ptrtoint ptr %wait_sof.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %wait_sof.i, align 4
  %wait_reg_update.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 9
  %168 = ptrtoint ptr %wait_reg_update.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %wait_reg_update.i, align 4
  %sof.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 10
  %169 = ptrtoint ptr %sof.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %sof.i, align 4
  %reg_update.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 11
  %170 = ptrtoint ptr %reg_update.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %reg_update.i, align 4
  %171 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %31, align 4
  %172 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %output6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp2.not.i.i = icmp eq i8 %173, 0
  br i1 %cmp2.not.i.i, label %sw.epilog.i.vfe_output_init_addrs.exit.i_crit_edge, label %sw.epilog.i.for.body.i380.i_crit_edge

sw.epilog.i.for.body.i380.i_crit_edge:            ; preds = %sw.epilog.i
  br label %for.body.i380.i

sw.epilog.i.vfe_output_init_addrs.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_init_addrs.exit.i

for.body.i380.i:                                  ; preds = %if.end14.i.i.for.body.i380.i_crit_edge, %sw.epilog.i.for.body.i380.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %if.end14.i.i.for.body.i380.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i380.i_crit_edge ]
  %174 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %buf.i, align 4
  %tobool.not.i.i = icmp eq ptr %175, null
  br i1 %tobool.not.i.i, label %for.body.i380.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i380.i.if.end.i.i_crit_edge:             ; preds = %for.body.i380.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i380.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i.i = getelementptr %struct.camss_buffer, ptr %175, i32 0, i32 1, i32 %i.03.i.i
  %176 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx4.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i380.i.if.end.i.i_crit_edge
  %ping_addr.0.i.i = phi i32 [ %177, %if.then.i.i ], [ 0, %for.body.i380.i.if.end.i.i_crit_edge ]
  %178 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx64.i, align 4
  %tobool7.not.i.i = icmp eq ptr %179, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12.i.i = getelementptr %struct.camss_buffer, ptr %179, i32 0, i32 1, i32 %i.03.i.i
  %180 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx12.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %pong_addr.0.i.i = phi i32 [ %181, %if.then8.i.i ], [ %ping_addr.0.i.i, %if.end.i.i.if.end14.i.i_crit_edge ]
  %182 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_ping_addr.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %183, i32 0, i32 30
  %184 = ptrtoint ptr %wm_set_ping_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wm_set_ping_addr.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.03.i.i
  %186 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx15.i.i, align 1
  call void %185(ptr noundef %add.ptr.i49, i8 noundef zeroext %187, i32 noundef %ping_addr.0.i.i) #5
  %188 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_pong_addr.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %189, i32 0, i32 31
  %190 = ptrtoint ptr %wm_set_pong_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wm_set_pong_addr.i.i, align 4
  %192 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx15.i.i, align 1
  call void %191(ptr noundef %add.ptr.i49, i8 noundef zeroext %193, i32 noundef %pong_addr.0.i.i) #5
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %194 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %output6.i, align 4
  %conv.i381.i = zext i8 %195 to i32
  %cmp.i382.i = icmp ult i32 %inc.i.i, %conv.i381.i
  br i1 %cmp.i382.i, label %if.end14.i.i.for.body.i380.i_crit_edge, label %if.end14.i.i.vfe_output_init_addrs.exit.i_crit_edge

if.end14.i.i.vfe_output_init_addrs.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_init_addrs.exit.i

if.end14.i.i.for.body.i380.i_crit_edge:           ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i380.i

vfe_output_init_addrs.exit.i:                     ; preds = %if.end14.i.i.vfe_output_init_addrs.exit.i_crit_edge, %sw.epilog.i.vfe_output_init_addrs.exit.i_crit_edge
  %196 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %line, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %197)
  %cmp96.not.i = icmp eq i32 %197, 3
  br i1 %cmp96.not.i, label %if.else131.i, label %if.then98.i

if.then98.i:                                      ; preds = %vfe_output_init_addrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %198 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ops_gen1.i, align 8
  %set_cgc_override.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %199, i32 0, i32 13
  %200 = ptrtoint ptr %set_cgc_override.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %set_cgc_override.i, align 4
  %wm_idx.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1
  %202 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %wm_idx.i, align 1
  call void %201(ptr noundef %add.ptr.i49, i8 noundef zeroext %203, i8 noundef zeroext 1) #5
  %204 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ops_gen1.i, align 8
  %enable_irq_wm_line.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %205, i32 0, i32 6
  %206 = ptrtoint ptr %enable_irq_wm_line.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %enable_irq_wm_line.i, align 4
  %208 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %wm_idx.i, align 1
  %210 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %line, align 8
  call void %207(ptr noundef %add.ptr.i49, i8 noundef zeroext %209, i32 noundef %211, i8 noundef zeroext 1) #5
  %212 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ops_gen1.i, align 8
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %216 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %wm_idx.i, align 1
  %218 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %line, align 8
  call void %215(ptr noundef %add.ptr.i49, i8 noundef zeroext %217, i32 noundef %219) #5
  %220 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_subsample.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %221, i32 0, i32 27
  %222 = ptrtoint ptr %wm_set_subsample.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %wm_set_subsample.i, align 4
  %224 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %wm_idx.i, align 1
  call void %223(ptr noundef %add.ptr.i49, i8 noundef zeroext %225) #5
  %226 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ops_gen1.i, align 8
  %set_rdi_cid.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %227, i32 0, i32 20
  %228 = ptrtoint ptr %set_rdi_cid.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %set_rdi_cid.i, align 4
  %230 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %line, align 8
  call void %229(ptr noundef %add.ptr.i49, i32 noundef %231, i8 noundef zeroext 0) #5
  %232 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_ub_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %233, i32 0, i32 26
  %234 = ptrtoint ptr %wm_set_ub_cfg.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %wm_set_ub_cfg.i, align 4
  %236 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %wm_idx.i, align 1
  %add.i = add i16 %call.i, 1
  %conv120.i = zext i8 %237 to i16
  %mul.i = mul i16 %add.i, %conv120.i
  call void %235(ptr noundef %add.ptr.i49, i8 noundef zeroext %237, i16 noundef zeroext %mul.i, i16 noundef zeroext %call.i) #5
  %238 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops_gen1.i, align 8
  %wm_frame_based.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %239, i32 0, i32 24
  %240 = ptrtoint ptr %wm_frame_based.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %wm_frame_based.i, align 4
  %242 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %wm_idx.i, align 1
  call void %241(ptr noundef %add.ptr.i49, i8 noundef zeroext %243, i8 noundef zeroext 1) #5
  %244 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops_gen1.i, align 8
  %wm_enable.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %245, i32 0, i32 33
  %246 = ptrtoint ptr %wm_enable.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wm_enable.i, align 4
  %248 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %wm_idx.i, align 1
  call void %247(ptr noundef %add.ptr.i49, i8 noundef zeroext %249, i8 noundef zeroext 1) #5
  %250 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ops_gen1.i, align 8
  %bus_reload_wm.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %bus_reload_wm.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %bus_reload_wm.i, align 4
  %254 = ptrtoint ptr %wm_idx.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %wm_idx.i, align 1
  call void %253(ptr noundef %add.ptr.i49, i8 noundef zeroext %255) #5
  br label %if.end11

if.else131.i:                                     ; preds = %vfe_output_init_addrs.exit.i
  %256 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %output6.i, align 4
  %conv132.i = zext i8 %257 to i16
  %div.i = udiv i16 %call.i, %conv132.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %cmp137385.not.i = icmp eq i8 %257, 0
  br i1 %cmp137385.not.i, label %if.else131.i.for.end.i57_crit_edge, label %for.body.lr.ph.i

if.else131.i.for.end.i57_crit_edge:               ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i57

for.body.lr.ph.i:                                 ; preds = %if.else131.i
  %add152.i = add i16 %div.i, 1
  %fmt.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 6, i32 4, i32 1
  br label %for.body.i56

for.body.i56:                                     ; preds = %for.body.i56.for.body.i56_crit_edge, %for.body.lr.ph.i
  %i.0386.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i55, %for.body.i56.for.body.i56_crit_edge ]
  %258 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ops_gen1.i, align 8
  %set_cgc_override140.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %259, i32 0, i32 13
  %260 = ptrtoint ptr %set_cgc_override140.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %set_cgc_override140.i, align 4
  %arrayidx142.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.0386.i
  %262 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx142.i, align 1
  call void %261(ptr noundef %add.ptr.i49, i8 noundef zeroext %263, i8 noundef zeroext 1) #5
  %264 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_subsample144.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %265, i32 0, i32 27
  %266 = ptrtoint ptr %wm_set_subsample144.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wm_set_subsample144.i, align 4
  %268 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx142.i, align 1
  call void %267(ptr noundef %add.ptr.i49, i8 noundef zeroext %269) #5
  %270 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_ub_cfg148.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %271, i32 0, i32 26
  %272 = ptrtoint ptr %wm_set_ub_cfg148.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %wm_set_ub_cfg148.i, align 4
  %274 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx142.i, align 1
  %conv155.i = zext i8 %275 to i16
  %mul156.i = mul i16 %add152.i, %conv155.i
  call void %273(ptr noundef %add.ptr.i49, i8 noundef zeroext %275, i16 noundef zeroext %mul156.i, i16 noundef zeroext %div.i) #5
  %276 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ops_gen1.i, align 8
  %wm_line_based.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %277, i32 0, i32 25
  %278 = ptrtoint ptr %wm_line_based.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %wm_line_based.i, align 4
  %280 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx142.i, align 1
  %conv161.i = zext i8 %281 to i32
  %conv162.i = trunc i32 %i.0386.i to i8
  call void %279(ptr noundef %add.ptr.i49, i32 noundef %conv161.i, ptr noundef %fmt.i, i8 noundef zeroext %conv162.i, i32 noundef 1) #5
  %282 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ops_gen1.i, align 8
  %wm_enable164.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %283, i32 0, i32 33
  %284 = ptrtoint ptr %wm_enable164.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wm_enable164.i, align 4
  %286 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx142.i, align 1
  call void %285(ptr noundef %add.ptr.i49, i8 noundef zeroext %287, i8 noundef zeroext 1) #5
  %288 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ops_gen1.i, align 8
  %bus_reload_wm168.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %289, i32 0, i32 3
  %290 = ptrtoint ptr %bus_reload_wm168.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %bus_reload_wm168.i, align 4
  %292 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx142.i, align 1
  call void %291(ptr noundef %add.ptr.i49, i8 noundef zeroext %293) #5
  %inc.i55 = add nuw nsw i32 %i.0386.i, 1
  %294 = ptrtoint ptr %output6.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %output6.i, align 4
  %conv136.i = zext i8 %295 to i32
  %cmp137.i = icmp ult i32 %inc.i55, %conv136.i
  br i1 %cmp137.i, label %for.body.i56.for.body.i56_crit_edge, label %for.body.i56.for.end.i57_crit_edge

for.body.i56.for.end.i57_crit_edge:               ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i57

for.body.i56.for.body.i56_crit_edge:              ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i56

for.end.i57:                                      ; preds = %for.body.i56.for.end.i57_crit_edge, %if.else131.i.for.end.i57_crit_edge
  %296 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ops_gen1.i, align 8
  %enable_irq_pix_line.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %297, i32 0, i32 7
  %298 = ptrtoint ptr %enable_irq_pix_line.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %enable_irq_pix_line.i, align 4
  %300 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %line, align 8
  call void %299(ptr noundef %add.ptr.i49, i8 noundef zeroext 0, i32 noundef %301, i8 noundef zeroext 1) #5
  %302 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ops_gen1.i, align 8
  %set_module_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %303, i32 0, i32 18
  %304 = ptrtoint ptr %set_module_cfg.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %set_module_cfg.i, align 4
  call void %305(ptr noundef %add.ptr.i49, i8 noundef zeroext 1) #5
  %306 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ops_gen1.i, align 8
  %set_camif_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %307, i32 0, i32 11
  %308 = ptrtoint ptr %set_camif_cfg.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %set_camif_cfg.i, align 4
  call void %309(ptr noundef %add.ptr.i49, ptr noundef %line) #5
  %310 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ops_gen1.i, align 8
  %set_realign_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %311, i32 0, i32 21
  %312 = ptrtoint ptr %set_realign_cfg.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %set_realign_cfg.i, align 4
  call void %313(ptr noundef %add.ptr.i49, ptr noundef %line, i8 noundef zeroext 1) #5
  %314 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ops_gen1.i, align 8
  %set_xbar_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %315, i32 0, i32 23
  %316 = ptrtoint ptr %set_xbar_cfg.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %set_xbar_cfg.i, align 4
  call void %317(ptr noundef %add.ptr.i49, ptr noundef %output6.i, i8 noundef zeroext 1) #5
  %318 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ops_gen1.i, align 8
  %set_demux_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %319, i32 0, i32 16
  %320 = ptrtoint ptr %set_demux_cfg.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %set_demux_cfg.i, align 4
  call void %321(ptr noundef %add.ptr.i49, ptr noundef %line) #5
  %322 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %ops_gen1.i, align 8
  %set_scale_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %323, i32 0, i32 19
  %324 = ptrtoint ptr %set_scale_cfg.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %set_scale_cfg.i, align 4
  call void %325(ptr noundef %add.ptr.i49, ptr noundef %line) #5
  %326 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ops_gen1.i, align 8
  %set_crop_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %327, i32 0, i32 15
  %328 = ptrtoint ptr %set_crop_cfg.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %set_crop_cfg.i, align 4
  call void %329(ptr noundef %add.ptr.i49, ptr noundef %line) #5
  %330 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ops_gen1.i, align 8
  %set_clamp_cfg.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %331, i32 0, i32 14
  %332 = ptrtoint ptr %set_clamp_cfg.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %set_clamp_cfg.i, align 4
  call void %333(ptr noundef %add.ptr.i49) #5
  %334 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %ops_gen1.i, align 8
  %set_camif_cmd.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %335, i32 0, i32 12
  %336 = ptrtoint ptr %set_camif_cmd.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %set_camif_cmd.i, align 4
  call void %337(ptr noundef %add.ptr.i49, i8 noundef zeroext 1) #5
  br label %if.end11

if.end11:                                         ; preds = %for.end.i57, %if.then98.i
  %reg_update183.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %53, i32 0, i32 7
  %338 = ptrtoint ptr %reg_update183.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %reg_update183.i, align 4
  %340 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %line, align 8
  call void %339(ptr noundef %add.ptr.i49, i32 noundef %341) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i51, i32 noundef %call46.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_skip.i) #5
  %was_streaming = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 18
  %342 = ptrtoint ptr %was_streaming to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 1, ptr %was_streaming, align 8
  br label %cleanup

error_enable_output:                              ; preds = %vfe_enable_output.exit.thread64, %vfe_enable_output.exit.thread
  %call12 = call i32 @vfe_put_output(ptr noundef %line) #5
  br label %error_get_output

error_get_output:                                 ; preds = %error_enable_output, %vfe_get_output.exit.thread
  call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #5
  %343 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %344)
  %cmp15 = icmp eq i32 %344, 1
  br i1 %cmp15, label %if.then16, label %error_get_output.if.end19_crit_edge

error_get_output.if.end19_crit_edge:              ; preds = %error_get_output
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %error_get_output
  call void @__sanitizer_cov_trace_pc() #7
  %ops_gen117 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 20
  %345 = ptrtoint ptr %ops_gen117 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %ops_gen117, align 8
  %bus_enable_wr_if18 = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %346, i32 0, i32 2
  %347 = ptrtoint ptr %bus_enable_wr_if18 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %bus_enable_wr_if18, align 4
  call void %348(ptr noundef %add.ptr, i8 noundef zeroext 0) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %error_get_output.if.end19_crit_edge
  %349 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %stream_count, align 4
  %dec = add i32 %350, -1
  store i32 %dec, ptr %stream_count, align 4
  call void @mutex_unlock(ptr noundef %stream_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end11
  %retval.0 = phi i32 [ -22, %if.end19 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vfe_word_per_line(i32 noundef %format, i32 noundef %width) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %format, label %entry.sw.epilog_crit_edge [
    i32 842094158, label %entry.sw.bb_crit_edge
    i32 825382478, label %entry.sw.bb_crit_edge9
    i32 909203022, label %entry.sw.bb_crit_edge10
    i32 825644622, label %entry.sw.bb_crit_edge11
    i32 1448695129, label %entry.sw.bb1_crit_edge
    i32 1431918169, label %entry.sw.bb1_crit_edge12
    i32 1498831189, label %entry.sw.bb1_crit_edge13
    i32 1498765654, label %entry.sw.bb1_crit_edge14
  ]

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  %sub = add i32 %width, 7
  %div8 = lshr i32 %sub, 3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge12, %entry.sw.bb1_crit_edge13, %entry.sw.bb1_crit_edge14
  %mul2 = shl i32 %width, 1
  %sub4 = add i32 %mul2, 7
  %div57 = lshr i32 %sub4, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %div57, %sw.bb1 ], [ %div8, %sw.bb ]
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfe_isr_reset_ack(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_halt_ack(ptr noundef %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %halt_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 8
  tail call void @complete(ptr noundef %halt_complete) #5
  %ops_gen1 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  %0 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops_gen1, align 8
  %halt_clear = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %halt_clear to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %halt_clear, align 4
  tail call void %3(ptr noundef %vfe) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_reg_update(ptr noundef %vfe, i32 noundef %line_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #5
  %ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %reg_update_clear = getelementptr inbounds %struct.vfe_hw_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reg_update_clear to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_update_clear, align 4
  tail call void %3(ptr noundef %vfe, i32 noundef %line_id) #5
  %output6 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7
  %wait_reg_update = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 9
  %4 = ptrtoint ptr %wait_reg_update to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wait_reg_update, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %wait_reg_update to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait_reg_update, align 4
  %reg_update = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 11
  tail call void @complete(ptr noundef %reg_update) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 7
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp9 = icmp eq i32 %8, 5
  br i1 %cmp9, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %last_buffer = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 3
  %9 = ptrtoint ptr %last_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last_buffer, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.then11.if.end16_crit_edge, label %if.then13

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_buffer_done(ptr noundef nonnull %10, i32 noundef 5) #5
  %11 = ptrtoint ptr %last_buffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %last_buffer, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then11.if.end16_crit_edge
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state, align 4
  %call18 = tail call ptr @vfe_buf_get_pending(ptr noundef %output6) #5
  %buf = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 2
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %buf, align 4
  %call20 = tail call ptr @vfe_buf_get_pending(ptr noundef %output6) #5
  %arrayidx22 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %arrayidx22, align 4
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %tobool25.not = icmp ne ptr %16, null
  %tobool28.not = icmp eq ptr %call20, null
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end36, label %if.end36.thread

if.end36.thread:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %buf, align 4
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx22, align 4
  br label %if.then40

if.end36:                                         ; preds = %if.end16
  %tobool39.not = icmp eq ptr %16, null
  br i1 %tobool39.not, label %if.end36.if.end42_crit_edge, label %if.end36.if.then40_crit_edge

if.end36.if.then40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then40:                                        ; preds = %if.end36.if.then40_crit_edge, %if.end36.thread
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %state, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %tobool45.not = icmp eq ptr %21, null
  br i1 %tobool45.not, label %if.end48, label %if.end48.thread

if.end48.thread:                                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %state, align 4
  br label %sw.bb50

if.end48:                                         ; preds = %if.end42
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %state, align 4
  %24 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %.pr, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %if.end48.sw.bb50_crit_edge
  ]

if.end48.sw.bb50_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb50

sw.bb:                                            ; preds = %if.end48
  %drop_update_idx.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 5
  %25 = ptrtoint ptr %drop_update_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %drop_update_idx.i, align 4
  %27 = and i32 %26, 1
  %rem.i = xor i32 %27, 1
  store i32 %rem.i, ptr %drop_update_idx.i, align 4
  %28 = trunc i32 %27 to i8
  %conv.i = xor i8 %28, 31
  %29 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %output6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp24.not.i = icmp eq i8 %30, 0
  br i1 %cmp24.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %ops_gen1.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc8.i, %for.body.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_period.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %32, i32 0, i32 28
  %33 = ptrtoint ptr %wm_set_framedrop_period.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wm_set_framedrop_period.i, align 4
  %arrayidx.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 1, i32 %i.025.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  tail call void %34(ptr noundef %vfe, i8 noundef zeroext %36, i8 noundef zeroext %conv.i) #5
  %37 = ptrtoint ptr %ops_gen1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops_gen1.i, align 8
  %wm_set_framedrop_pattern.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %38, i32 0, i32 29
  %39 = ptrtoint ptr %wm_set_framedrop_pattern.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wm_set_framedrop_pattern.i, align 4
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  tail call void %40(ptr noundef %vfe, i8 noundef zeroext %42, i32 noundef 2) #5
  %inc8.i = add nuw nsw i32 %i.025.i, 1
  %43 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %output6, align 4
  %conv3.i = zext i8 %44 to i32
  %cmp.i = icmp ult i32 %inc8.i, %conv3.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

sw.bb50:                                          ; preds = %if.end48.sw.bb50_crit_edge, %if.end48.thread
  %drop_update_idx.i95 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 5
  %45 = ptrtoint ptr %drop_update_idx.i95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %drop_update_idx.i95, align 4
  %47 = and i32 %46, 1
  %rem.i96 = xor i32 %47, 1
  store i32 %rem.i96, ptr %drop_update_idx.i95, align 4
  %48 = trunc i32 %47 to i8
  %conv.i97 = xor i8 %48, 31
  %49 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %output6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp24.not.i98 = icmp eq i8 %50, 0
  br i1 %cmp24.not.i98, label %sw.bb50.sw.epilog_crit_edge, label %for.body.lr.ph.i100

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i100:                              ; preds = %sw.bb50
  %ops_gen1.i99 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  br label %for.body.i108

for.body.i108:                                    ; preds = %for.body.i108.for.body.i108_crit_edge, %for.body.lr.ph.i100
  %i.025.i101 = phi i32 [ 0, %for.body.lr.ph.i100 ], [ %inc8.i105, %for.body.i108.for.body.i108_crit_edge ]
  %51 = ptrtoint ptr %ops_gen1.i99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops_gen1.i99, align 8
  %wm_set_framedrop_period.i102 = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %52, i32 0, i32 28
  %53 = ptrtoint ptr %wm_set_framedrop_period.i102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wm_set_framedrop_period.i102, align 4
  %arrayidx.i103 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 1, i32 %i.025.i101
  %55 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i103, align 1
  tail call void %54(ptr noundef %vfe, i8 noundef zeroext %56, i8 noundef zeroext %conv.i97) #5
  %57 = ptrtoint ptr %ops_gen1.i99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops_gen1.i99, align 8
  %wm_set_framedrop_pattern.i104 = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %58, i32 0, i32 29
  %59 = ptrtoint ptr %wm_set_framedrop_pattern.i104 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wm_set_framedrop_pattern.i104, align 4
  %61 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i103, align 1
  tail call void %60(ptr noundef %vfe, i8 noundef zeroext %62, i32 noundef 3) #5
  %inc8.i105 = add nuw nsw i32 %i.025.i101, 1
  %63 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %output6, align 4
  %conv3.i106 = zext i8 %64 to i32
  %cmp.i107 = icmp ult i32 %inc8.i105, %conv3.i106
  br i1 %cmp.i107, label %for.body.i108.for.body.i108_crit_edge, label %for.body.i108.sw.epilog_crit_edge

for.body.i108.sw.epilog_crit_edge:                ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.i108.for.body.i108_crit_edge:            ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i108

sw.default:                                       ; preds = %if.end48
  %drop_update_idx.i113 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 5
  %65 = ptrtoint ptr %drop_update_idx.i113 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %drop_update_idx.i113, align 4
  %67 = and i32 %66, 1
  %rem.i114 = xor i32 %67, 1
  store i32 %rem.i114, ptr %drop_update_idx.i113, align 4
  %68 = trunc i32 %67 to i8
  %conv.i115 = xor i8 %68, 31
  %69 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %output6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp24.not.i116 = icmp eq i8 %70, 0
  br i1 %cmp24.not.i116, label %sw.default.sw.epilog_crit_edge, label %for.body.lr.ph.i118

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.lr.ph.i118:                              ; preds = %sw.default
  %ops_gen1.i117 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  br label %for.body.i126

for.body.i126:                                    ; preds = %for.body.i126.for.body.i126_crit_edge, %for.body.lr.ph.i118
  %i.025.i119 = phi i32 [ 0, %for.body.lr.ph.i118 ], [ %inc8.i123, %for.body.i126.for.body.i126_crit_edge ]
  %71 = ptrtoint ptr %ops_gen1.i117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops_gen1.i117, align 8
  %wm_set_framedrop_period.i120 = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %72, i32 0, i32 28
  %73 = ptrtoint ptr %wm_set_framedrop_period.i120 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wm_set_framedrop_period.i120, align 4
  %arrayidx.i121 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 1, i32 %i.025.i119
  %75 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i121, align 1
  tail call void %74(ptr noundef %vfe, i8 noundef zeroext %76, i8 noundef zeroext %conv.i115) #5
  %77 = ptrtoint ptr %ops_gen1.i117 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops_gen1.i117, align 8
  %wm_set_framedrop_pattern.i122 = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %78, i32 0, i32 29
  %79 = ptrtoint ptr %wm_set_framedrop_pattern.i122 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wm_set_framedrop_pattern.i122, align 4
  %81 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i121, align 1
  tail call void %80(ptr noundef %vfe, i8 noundef zeroext %82, i32 noundef 0) #5
  %inc8.i123 = add nuw nsw i32 %i.025.i119, 1
  %83 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %output6, align 4
  %conv3.i124 = zext i8 %84 to i32
  %cmp.i125 = icmp ult i32 %inc8.i123, %conv3.i124
  br i1 %cmp.i125, label %for.body.i126.for.body.i126_crit_edge, label %for.body.i126.sw.epilog_crit_edge

for.body.i126.sw.epilog_crit_edge:                ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.i126.for.body.i126_crit_edge:            ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i126

sw.epilog:                                        ; preds = %for.body.i126.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %for.body.i108.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %85 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops, align 4
  %reg_update.i128 = getelementptr inbounds %struct.vfe_hw_ops, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %reg_update.i128 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_update.i128, align 4
  %add.ptr.i129 = getelementptr i8, ptr %output6, i32 -2856
  %89 = ptrtoint ptr %add.ptr.i129 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i129, align 8
  tail call void %88(ptr noundef %vfe, i32 noundef %90) #5
  %91 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 6
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %91, align 4
  %93 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %output6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp2.not.i = icmp eq i8 %94, 0
  br i1 %cmp2.not.i, label %sw.epilog.cleanup_crit_edge, label %for.body.lr.ph.i132

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i132:                              ; preds = %sw.epilog
  %ops_gen1.i131 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  br label %for.body.i133

for.body.i133:                                    ; preds = %if.end14.i.for.body.i133_crit_edge, %for.body.lr.ph.i132
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i132 ], [ %inc.i, %if.end14.i.for.body.i133_crit_edge ]
  %95 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buf, align 4
  %tobool.not.i = icmp eq ptr %96, null
  br i1 %tobool.not.i, label %for.body.i133.if.end.i_crit_edge, label %if.then.i

for.body.i133.if.end.i_crit_edge:                 ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i = getelementptr %struct.camss_buffer, ptr %96, i32 0, i32 1, i32 %i.03.i
  %97 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx4.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i133.if.end.i_crit_edge
  %ping_addr.0.i = phi i32 [ %98, %if.then.i ], [ 0, %for.body.i133.if.end.i_crit_edge ]
  %99 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx22, align 4
  %tobool7.not.i = icmp eq ptr %100, null
  br i1 %tobool7.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then8.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12.i = getelementptr %struct.camss_buffer, ptr %100, i32 0, i32 1, i32 %i.03.i
  %101 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx12.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end.i.if.end14.i_crit_edge
  %pong_addr.0.i = phi i32 [ %102, %if.then8.i ], [ %ping_addr.0.i, %if.end.i.if.end14.i_crit_edge ]
  %103 = ptrtoint ptr %ops_gen1.i131 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops_gen1.i131, align 8
  %wm_set_ping_addr.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %104, i32 0, i32 30
  %105 = ptrtoint ptr %wm_set_ping_addr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wm_set_ping_addr.i, align 4
  %arrayidx15.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 1, i32 %i.03.i
  %107 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx15.i, align 1
  tail call void %106(ptr noundef %vfe, i8 noundef zeroext %108, i32 noundef %ping_addr.0.i) #5
  %109 = ptrtoint ptr %ops_gen1.i131 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops_gen1.i131, align 8
  %wm_set_pong_addr.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %110, i32 0, i32 31
  %111 = ptrtoint ptr %wm_set_pong_addr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wm_set_pong_addr.i, align 4
  %113 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx15.i, align 1
  tail call void %112(ptr noundef %vfe, i8 noundef zeroext %114, i32 noundef %pong_addr.0.i) #5
  %115 = ptrtoint ptr %ops_gen1.i131 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops_gen1.i131, align 8
  %bus_reload_wm.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %bus_reload_wm.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bus_reload_wm.i, align 4
  %119 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx15.i, align 1
  tail call void %118(ptr noundef %vfe, i8 noundef zeroext %120) #5
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %121 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %output6, align 4
  %conv.i134 = zext i8 %122 to i32
  %cmp.i135 = icmp ult i32 %inc.i, %conv.i134
  br i1 %cmp.i135, label %if.end14.i.for.body.i133_crit_edge, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.i.for.body.i133_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i133

cleanup:                                          ; preds = %if.end14.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_sof(ptr noundef %vfe, i32 noundef %line_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #5
  %wait_sof = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %wait_sof to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wait_sof, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %wait_sof to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wait_sof, align 4
  %sof = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 10
  tail call void @complete(ptr noundef %sof) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfe_isr_comp_done(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_wm_done(ptr noundef %vfe, i8 noundef zeroext %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #5
  %ops_gen1 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  %0 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops_gen1, align 8
  %wm_get_ping_pong_status = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %wm_get_ping_pong_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm_get_ping_pong_status, align 4
  %call1 = tail call i32 %3(ptr noundef %vfe, i8 noundef zeroext %wm) #5
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #5
  %idxprom = zext i8 %wm to i32
  %arrayidx = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp7 = icmp eq i32 %5, -1
  br i1 %cmp7, label %do.body9, label %if.end17

do.body9:                                         ; preds = %entry
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_isr_wm_done._rs, ptr noundef nonnull @__func__.vfe_isr_wm_done) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.body9.out_unlock_crit_edge, label %do.end14

do.body9.out_unlock_crit_edge:                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfe, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.18) #8
  br label %out_unlock

if.end17:                                         ; preds = %entry
  %output22 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7
  %10 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool40.not = icmp eq i32 %call1, 0
  %lnot.ext = zext i1 %tobool40.not to i32
  %arrayidx41 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 2, i32 %lnot.ext
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %13, null
  br i1 %tobool42.not, label %do.body44, label %if.end59

do.body44:                                        ; preds = %if.end17
  %call45 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_isr_wm_done._rs.23, ptr noundef nonnull @__func__.vfe_isr_wm_done) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body44.out_unlock_crit_edge, label %do.end50

do.body44.out_unlock_crit_edge:                   ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfe, align 8
  %dev52 = getelementptr inbounds %struct.camss, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev52, align 8
  %state = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef %lnot.ext, i32 noundef %19) #8
  br label %out_unlock

if.end59:                                         ; preds = %if.end17
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 8
  %21 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sequence, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence61 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 4
  %23 = ptrtoint ptr %sequence61 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sequence61, align 8
  %call62 = tail call ptr @vfe_buf_get_pending(ptr noundef %output22) #5
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call62, ptr %arrayidx41, align 4
  %tobool73.not = icmp eq ptr %call62, null
  %state.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 7
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i, align 4
  br i1 %tobool73.not, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end59
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %26, label %do.body.i [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then74
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %state.i, align 4
  %drop_update_idx.i.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 5
  %29 = ptrtoint ptr %drop_update_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %drop_update_idx.i.i, align 4
  %31 = and i32 %30, 1
  %rem.i.i = xor i32 %31, 1
  store i32 %rem.i.i, ptr %drop_update_idx.i.i, align 4
  %32 = trunc i32 %31 to i8
  %conv.i.i = xor i8 %32, 31
  %33 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %output22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp24.not.i.i = icmp eq i8 %34, 0
  br i1 %cmp24.not.i.i, label %sw.bb.i.vfe_output_frame_drop.exit.i_crit_edge, label %sw.bb.i.for.body.i.i_crit_edge

sw.bb.i.for.body.i.i_crit_edge:                   ; preds = %sw.bb.i
  br label %for.body.i.i

sw.bb.i.vfe_output_frame_drop.exit.i_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.i.for.body.i.i_crit_edge
  %i.025.i.i = phi i32 [ %inc8.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops_gen1, align 8
  %wm_set_framedrop_period.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %36, i32 0, i32 28
  %37 = ptrtoint ptr %wm_set_framedrop_period.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wm_set_framedrop_period.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 1, i32 %i.025.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  tail call void %38(ptr noundef %vfe, i8 noundef zeroext %40, i8 noundef zeroext %conv.i.i) #5
  %41 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops_gen1, align 8
  %wm_set_framedrop_pattern.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %42, i32 0, i32 29
  %43 = ptrtoint ptr %wm_set_framedrop_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wm_set_framedrop_pattern.i.i, align 4
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i, align 1
  tail call void %44(ptr noundef %vfe, i8 noundef zeroext %46, i32 noundef 1) #5
  %inc8.i.i = add nuw nsw i32 %i.025.i.i, 1
  %47 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %output22, align 4
  %conv3.i.i = zext i8 %48 to i32
  %cmp.i.i = icmp ult i32 %inc8.i.i, %conv3.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.vfe_output_frame_drop.exit.i_crit_edge

for.body.i.i.vfe_output_frame_drop.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

vfe_output_frame_drop.exit.i:                     ; preds = %for.body.i.i.vfe_output_frame_drop.exit.i_crit_edge, %sw.bb.i.vfe_output_frame_drop.exit.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %49 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i, align 4
  %reg_update.i.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %reg_update.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_update.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %output22, i32 -2856
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i, align 8
  tail call void %52(ptr noundef %vfe, i32 noundef %54) #5
  br label %if.end82

sw.bb2.i:                                         ; preds = %if.then74
  %55 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 5, ptr %state.i, align 4
  %drop_update_idx.i14.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 5
  %56 = ptrtoint ptr %drop_update_idx.i14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %drop_update_idx.i14.i, align 4
  %58 = and i32 %57, 1
  %rem.i15.i = xor i32 %58, 1
  store i32 %rem.i15.i, ptr %drop_update_idx.i14.i, align 4
  %59 = trunc i32 %58 to i8
  %conv.i16.i = xor i8 %59, 31
  %60 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %output22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp24.not.i17.i = icmp eq i8 %61, 0
  br i1 %cmp24.not.i17.i, label %sw.bb2.i.vfe_output_frame_drop.exit31.i_crit_edge, label %sw.bb2.i.for.body.i27.i_crit_edge

sw.bb2.i.for.body.i27.i_crit_edge:                ; preds = %sw.bb2.i
  br label %for.body.i27.i

sw.bb2.i.vfe_output_frame_drop.exit31.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit31.i

for.body.i27.i:                                   ; preds = %for.body.i27.i.for.body.i27.i_crit_edge, %sw.bb2.i.for.body.i27.i_crit_edge
  %i.025.i20.i = phi i32 [ %inc8.i24.i, %for.body.i27.i.for.body.i27.i_crit_edge ], [ 0, %sw.bb2.i.for.body.i27.i_crit_edge ]
  %62 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops_gen1, align 8
  %wm_set_framedrop_period.i21.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %63, i32 0, i32 28
  %64 = ptrtoint ptr %wm_set_framedrop_period.i21.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wm_set_framedrop_period.i21.i, align 4
  %arrayidx.i22.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 1, i32 %i.025.i20.i
  %66 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i22.i, align 1
  tail call void %65(ptr noundef %vfe, i8 noundef zeroext %67, i8 noundef zeroext %conv.i16.i) #5
  %68 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops_gen1, align 8
  %wm_set_framedrop_pattern.i23.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %69, i32 0, i32 29
  %70 = ptrtoint ptr %wm_set_framedrop_pattern.i23.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wm_set_framedrop_pattern.i23.i, align 4
  %72 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i22.i, align 1
  tail call void %71(ptr noundef %vfe, i8 noundef zeroext %73, i32 noundef 0) #5
  %inc8.i24.i = add nuw nsw i32 %i.025.i20.i, 1
  %74 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %output22, align 4
  %conv3.i25.i = zext i8 %75 to i32
  %cmp.i26.i = icmp ult i32 %inc8.i24.i, %conv3.i25.i
  br i1 %cmp.i26.i, label %for.body.i27.i.for.body.i27.i_crit_edge, label %for.body.i27.i.vfe_output_frame_drop.exit31.i_crit_edge

for.body.i27.i.vfe_output_frame_drop.exit31.i_crit_edge: ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit31.i

for.body.i27.i.for.body.i27.i_crit_edge:          ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27.i

vfe_output_frame_drop.exit31.i:                   ; preds = %for.body.i27.i.vfe_output_frame_drop.exit31.i_crit_edge, %sw.bb2.i.vfe_output_frame_drop.exit31.i_crit_edge
  %ops.i28.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %76 = ptrtoint ptr %ops.i28.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i28.i, align 4
  %reg_update.i29.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %reg_update.i29.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_update.i29.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %output22, i32 -2856
  %80 = ptrtoint ptr %add.ptr.i30.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i30.i, align 8
  tail call void %79(ptr noundef %vfe, i32 noundef %81) #5
  br label %if.end82

do.body.i:                                        ; preds = %if.then74
  %call.i178 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_buf_update_wm_on_last._rs, ptr noundef nonnull @__func__.vfe_buf_update_wm_on_last) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i, label %do.body.i.if.end82_crit_edge, label %do.end.i

do.body.i.if.end82_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vfe, align 8
  %dev.i = getelementptr inbounds %struct.camss, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 8
  %86 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.27, i32 noundef %87) #8
  br label %if.end82

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cond.i = icmp eq i32 %26, 3
  br i1 %cond.i, label %sw.bb.i184, label %do.body.i201

sw.bb.i184:                                       ; preds = %if.else
  %drop_update_idx.i.i180 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 5
  %88 = ptrtoint ptr %drop_update_idx.i.i180 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %drop_update_idx.i.i180, align 4
  %90 = and i32 %89, 1
  %rem.i.i181 = xor i32 %90, 1
  store i32 %rem.i.i181, ptr %drop_update_idx.i.i180, align 4
  %91 = trunc i32 %90 to i8
  %conv.i.i182 = xor i8 %91, 31
  %92 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %output22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp24.not.i.i183 = icmp eq i8 %93, 0
  br i1 %cmp24.not.i.i183, label %sw.bb.i184.vfe_output_frame_drop.exit.i198_crit_edge, label %sw.bb.i184.for.body.i.i194_crit_edge

sw.bb.i184.for.body.i.i194_crit_edge:             ; preds = %sw.bb.i184
  br label %for.body.i.i194

sw.bb.i184.vfe_output_frame_drop.exit.i198_crit_edge: ; preds = %sw.bb.i184
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit.i198

for.body.i.i194:                                  ; preds = %for.body.i.i194.for.body.i.i194_crit_edge, %sw.bb.i184.for.body.i.i194_crit_edge
  %i.025.i.i187 = phi i32 [ %inc8.i.i191, %for.body.i.i194.for.body.i.i194_crit_edge ], [ 0, %sw.bb.i184.for.body.i.i194_crit_edge ]
  %94 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops_gen1, align 8
  %wm_set_framedrop_period.i.i188 = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %95, i32 0, i32 28
  %96 = ptrtoint ptr %wm_set_framedrop_period.i.i188 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wm_set_framedrop_period.i.i188, align 4
  %arrayidx.i.i189 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 1, i32 %i.025.i.i187
  %98 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.i189, align 1
  tail call void %97(ptr noundef %vfe, i8 noundef zeroext %99, i8 noundef zeroext %conv.i.i182) #5
  %100 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops_gen1, align 8
  %wm_set_framedrop_pattern.i.i190 = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %101, i32 0, i32 29
  %102 = ptrtoint ptr %wm_set_framedrop_pattern.i.i190 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wm_set_framedrop_pattern.i.i190, align 4
  %104 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i.i189, align 1
  tail call void %103(ptr noundef %vfe, i8 noundef zeroext %105, i32 noundef 3) #5
  %inc8.i.i191 = add nuw nsw i32 %i.025.i.i187, 1
  %106 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %output22, align 4
  %conv3.i.i192 = zext i8 %107 to i32
  %cmp.i.i193 = icmp ult i32 %inc8.i.i191, %conv3.i.i192
  br i1 %cmp.i.i193, label %for.body.i.i194.for.body.i.i194_crit_edge, label %for.body.i.i194.vfe_output_frame_drop.exit.i198_crit_edge

for.body.i.i194.vfe_output_frame_drop.exit.i198_crit_edge: ; preds = %for.body.i.i194
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit.i198

for.body.i.i194.for.body.i.i194_crit_edge:        ; preds = %for.body.i.i194
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i194

vfe_output_frame_drop.exit.i198:                  ; preds = %for.body.i.i194.vfe_output_frame_drop.exit.i198_crit_edge, %sw.bb.i184.vfe_output_frame_drop.exit.i198_crit_edge
  %ops.i.i195 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %108 = ptrtoint ptr %ops.i.i195 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i.i195, align 4
  %reg_update.i.i196 = getelementptr inbounds %struct.vfe_hw_ops, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %reg_update.i.i196 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_update.i.i196, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %output22, i32 -2856
  %112 = ptrtoint ptr %add.ptr.i.i197 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i197, align 8
  tail call void %111(ptr noundef %vfe, i32 noundef %113) #5
  br label %if.end82

do.body.i201:                                     ; preds = %if.else
  %call.i199 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_buf_update_wm_on_next._rs, ptr noundef nonnull @__func__.vfe_buf_update_wm_on_next) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %do.body.i201.if.end82_crit_edge, label %do.end.i203

do.body.i201.if.end82_crit_edge:                  ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end.i203:                                      ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vfe, align 8
  %dev.i202 = getelementptr inbounds %struct.camss, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %dev.i202 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i202, align 8
  %118 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %state.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.28, i32 noundef %119) #8
  br label %if.end82

if.end82:                                         ; preds = %do.end.i203, %do.body.i201.if.end82_crit_edge, %vfe_output_frame_drop.exit.i198, %do.end.i, %do.body.i.if.end82_crit_edge, %vfe_output_frame_drop.exit31.i, %vfe_output_frame_drop.exit.i
  %call62.pn = phi ptr [ %13, %vfe_output_frame_drop.exit.i ], [ %13, %vfe_output_frame_drop.exit31.i ], [ %13, %do.body.i.if.end82_crit_edge ], [ %13, %do.end.i ], [ %call62, %vfe_output_frame_drop.exit.i198 ], [ %call62, %do.body.i201.if.end82_crit_edge ], [ %call62, %do.end.i203 ]
  %new_addr.0 = getelementptr inbounds %struct.camss_buffer, ptr %call62.pn, i32 0, i32 1
  %120 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %output22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp96209.not = icmp eq i8 %121, 0
  br i1 %tobool40.not, label %for.cond93.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end82
  br i1 %cmp96209.not, label %for.cond.preheader.if.end106_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end106_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

for.cond93.preheader:                             ; preds = %if.end82
  br i1 %cmp96209.not, label %for.cond93.preheader.if.end106_crit_edge, label %for.cond93.preheader.for.body98_crit_edge

for.cond93.preheader.for.body98_crit_edge:        ; preds = %for.cond93.preheader
  br label %for.body98

for.cond93.preheader.if.end106_crit_edge:         ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0207 = phi i32 [ %inc91, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %122 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops_gen1, align 8
  %wm_set_ping_addr = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %123, i32 0, i32 30
  %124 = ptrtoint ptr %wm_set_ping_addr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wm_set_ping_addr, align 4
  %arrayidx89 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 1, i32 %i.0207
  %126 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx89, align 1
  %arrayidx90 = getelementptr i32, ptr %new_addr.0, i32 %i.0207
  %128 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx90, align 4
  tail call void %125(ptr noundef %vfe, i8 noundef zeroext %127, i32 noundef %129) #5
  %inc91 = add nuw nsw i32 %i.0207, 1
  %130 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %output22, align 4
  %conv85 = zext i8 %131 to i32
  %cmp86 = icmp ult i32 %inc91, %conv85
  br i1 %cmp86, label %for.body.for.body_crit_edge, label %for.body.if.end106_crit_edge

for.body.if.end106_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.cond93.preheader.for.body98_crit_edge
  %i.1210 = phi i32 [ %inc104, %for.body98.for.body98_crit_edge ], [ 0, %for.cond93.preheader.for.body98_crit_edge ]
  %132 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops_gen1, align 8
  %wm_set_pong_addr = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %133, i32 0, i32 31
  %134 = ptrtoint ptr %wm_set_pong_addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wm_set_pong_addr, align 4
  %arrayidx101 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 1, i32 %i.1210
  %136 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx101, align 1
  %arrayidx102 = getelementptr i32, ptr %new_addr.0, i32 %i.1210
  %138 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx102, align 4
  tail call void %135(ptr noundef %vfe, i8 noundef zeroext %137, i32 noundef %139) #5
  %inc104 = add nuw nsw i32 %i.1210, 1
  %140 = ptrtoint ptr %output22 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %output22, align 4
  %conv95 = zext i8 %141 to i32
  %cmp96 = icmp ult i32 %inc104, %conv95
  br i1 %cmp96, label %for.body98.for.body98_crit_edge, label %for.body98.if.end106_crit_edge

for.body98.if.end106_crit_edge:                   ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body98

if.end106:                                        ; preds = %for.body98.if.end106_crit_edge, %for.body.if.end106_crit_edge, %for.cond93.preheader.if.end106_crit_edge, %for.cond.preheader.if.end106_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call4) #5
  %state108 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 7
  %142 = ptrtoint ptr %state108 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %state108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %143)
  %cmp109 = icmp eq i32 %143, 5
  br i1 %cmp109, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %last_buffer = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %5, i32 7, i32 3
  %144 = ptrtoint ptr %last_buffer to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %13, ptr %last_buffer, align 4
  br label %cleanup

if.else112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef 5) #5
  br label %cleanup

out_unlock:                                       ; preds = %do.end50, %do.body44.out_unlock_crit_edge, %do.end14, %do.body9.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.else112, %if.then111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_queue_buffer(ptr noundef %vid, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %vid, i32 -392
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %add.ptr, i32 %sub
  %add.ptr3 = getelementptr i8, ptr %arrayidx, i32 -432
  %output4 = getelementptr i8, ptr %vid, i32 2464
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #5
  %state.i = getelementptr i8, ptr %vid, i32 2500
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 4, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %entry
  %5 = getelementptr i8, ptr %vid, i32 2492
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %arrayidx.i = getelementptr %struct.vfe_output, ptr %output4, i32 0, i32 2, i32 %lnot.ext.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.then.i, label %if.else7.i

if.then.i:                                        ; preds = %sw.bb.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %output4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp2.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  br i1 %cmp2.not.i.i, label %if.then5.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then5.i
  %arrayidx.i.i = getelementptr i8, ptr %vid, i32 2472
  %ops_gen1.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 20
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5.i.i = getelementptr %struct.camss_buffer, ptr %14, i32 0, i32 1, i32 %i.03.i.i
  %15 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %addr.0.i.i = phi i32 [ %16, %if.then.i.i ], [ 0, %for.body.i.i.if.end.i.i_crit_edge ]
  %17 = ptrtoint ptr %ops_gen1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops_gen1.i.i, align 8
  %wm_set_pong_addr.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %wm_set_pong_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wm_set_pong_addr.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.vfe_output, ptr %output4, i32 0, i32 1, i32 %i.03.i.i
  %21 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx6.i.i, align 1
  tail call void %20(ptr noundef %add.ptr3, i8 noundef zeroext %22, i32 noundef %addr.0.i.i) #5
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %23 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %output4, align 4
  %conv.i.i = zext i8 %24 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.else.i:                                        ; preds = %if.then.i
  br i1 %cmp2.not.i.i, label %if.else.i.if.end.i_crit_edge, label %for.body.lr.ph.i3.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.body.lr.ph.i3.i:                              ; preds = %if.else.i
  %buf.i.i = getelementptr i8, ptr %vid, i32 2468
  %ops_gen1.i2.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 20
  br label %for.body.i6.i

for.body.i6.i:                                    ; preds = %if.end.i14.i.for.body.i6.i_crit_edge, %for.body.lr.ph.i3.i
  %i.03.i4.i = phi i32 [ 0, %for.body.lr.ph.i3.i ], [ %inc.i11.i, %if.end.i14.i.for.body.i6.i_crit_edge ]
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %26, null
  br i1 %tobool.not.i5.i, label %for.body.i6.i.if.end.i14.i_crit_edge, label %if.then.i8.i

for.body.i6.i.if.end.i14.i_crit_edge:             ; preds = %for.body.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i14.i

if.then.i8.i:                                     ; preds = %for.body.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5.i7.i = getelementptr %struct.camss_buffer, ptr %26, i32 0, i32 1, i32 %i.03.i4.i
  %27 = ptrtoint ptr %arrayidx5.i7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i7.i, align 4
  br label %if.end.i14.i

if.end.i14.i:                                     ; preds = %if.then.i8.i, %for.body.i6.i.if.end.i14.i_crit_edge
  %addr.0.i9.i = phi i32 [ %28, %if.then.i8.i ], [ 0, %for.body.i6.i.if.end.i14.i_crit_edge ]
  %29 = ptrtoint ptr %ops_gen1.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops_gen1.i2.i, align 8
  %wm_set_ping_addr.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %30, i32 0, i32 30
  %31 = ptrtoint ptr %wm_set_ping_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wm_set_ping_addr.i.i, align 4
  %arrayidx6.i10.i = getelementptr %struct.vfe_output, ptr %output4, i32 0, i32 1, i32 %i.03.i4.i
  %33 = ptrtoint ptr %arrayidx6.i10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx6.i10.i, align 1
  tail call void %32(ptr noundef %add.ptr3, i8 noundef zeroext %34, i32 noundef %addr.0.i9.i) #5
  %inc.i11.i = add nuw nsw i32 %i.03.i4.i, 1
  %35 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %output4, align 4
  %conv.i12.i = zext i8 %36 to i32
  %cmp.i13.i = icmp ult i32 %inc.i11.i, %conv.i12.i
  br i1 %cmp.i13.i, label %if.end.i14.i.for.body.i6.i_crit_edge, label %if.end.i14.i.if.end.i_crit_edge

if.end.i14.i.if.end.i_crit_edge:                  ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i14.i.for.body.i6.i_crit_edge:             ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i6.i

if.end.i:                                         ; preds = %if.end.i14.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %if.then5.i.if.end.i_crit_edge
  %drop_update_idx.i.i = getelementptr i8, ptr %vid, i32 2488
  %37 = ptrtoint ptr %drop_update_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drop_update_idx.i.i, align 4
  %39 = and i32 %38, 1
  %rem.i.i = xor i32 %39, 1
  store i32 %rem.i.i, ptr %drop_update_idx.i.i, align 4
  %40 = trunc i32 %39 to i8
  %conv.i15.i = xor i8 %40, 31
  %41 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %output4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp24.not.i.i = icmp eq i8 %42, 0
  br i1 %cmp24.not.i.i, label %if.end.i.vfe_output_frame_drop.exit.i_crit_edge, label %for.body.lr.ph.i17.i

if.end.i.vfe_output_frame_drop.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit.i

for.body.lr.ph.i17.i:                             ; preds = %if.end.i
  %ops_gen1.i16.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 20
  br label %for.body.i20.i

for.body.i20.i:                                   ; preds = %for.body.i20.i.for.body.i20.i_crit_edge, %for.body.lr.ph.i17.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i17.i ], [ %inc8.i.i, %for.body.i20.i.for.body.i20.i_crit_edge ]
  %43 = ptrtoint ptr %ops_gen1.i16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops_gen1.i16.i, align 8
  %wm_set_framedrop_period.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %44, i32 0, i32 28
  %45 = ptrtoint ptr %wm_set_framedrop_period.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wm_set_framedrop_period.i.i, align 4
  %arrayidx.i18.i = getelementptr %struct.vfe_output, ptr %output4, i32 0, i32 1, i32 %i.025.i.i
  %47 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i18.i, align 1
  tail call void %46(ptr noundef %add.ptr3, i8 noundef zeroext %48, i8 noundef zeroext %conv.i15.i) #5
  %49 = ptrtoint ptr %ops_gen1.i16.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops_gen1.i16.i, align 8
  %wm_set_framedrop_pattern.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %50, i32 0, i32 29
  %51 = ptrtoint ptr %wm_set_framedrop_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wm_set_framedrop_pattern.i.i, align 4
  %53 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i18.i, align 1
  tail call void %52(ptr noundef %add.ptr3, i8 noundef zeroext %54, i32 noundef 3) #5
  %inc8.i.i = add nuw nsw i32 %i.025.i.i, 1
  %55 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %output4, align 4
  %conv3.i.i = zext i8 %56 to i32
  %cmp.i19.i = icmp ult i32 %inc8.i.i, %conv3.i.i
  br i1 %cmp.i19.i, label %for.body.i20.i.for.body.i20.i_crit_edge, label %for.body.i20.i.vfe_output_frame_drop.exit.i_crit_edge

for.body.i20.i.vfe_output_frame_drop.exit.i_crit_edge: ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit.i

for.body.i20.i.for.body.i20.i_crit_edge:          ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i20.i

vfe_output_frame_drop.exit.i:                     ; preds = %for.body.i20.i.vfe_output_frame_drop.exit.i_crit_edge, %if.end.i.vfe_output_frame_drop.exit.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 19
  %57 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i.i, align 4
  %reg_update.i.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %reg_update.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_update.i.i, align 4
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr, align 8
  tail call void %60(ptr noundef %add.ptr3, i32 noundef %62) #5
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3, ptr %state.i, align 4
  br label %vfe_buf_update_wm_on_new.exit

if.else7.i:                                       ; preds = %sw.bb.i
  tail call void @vfe_buf_add_pending(ptr noundef %output4, ptr noundef %buf) #5
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_buf_update_wm_on_new._rs, ptr noundef nonnull @__func__.vfe_buf_update_wm_on_new) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.else7.i.vfe_buf_update_wm_on_new.exit_crit_edge, label %do.end.i

if.else7.i.vfe_buf_update_wm_on_new.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_buf_update_wm_on_new.exit

do.end.i:                                         ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr3, align 8
  %dev.i = getelementptr inbounds %struct.camss, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.29) #8
  br label %vfe_buf_update_wm_on_new.exit

sw.bb15.i:                                        ; preds = %entry
  %buf16.i = getelementptr i8, ptr %vid, i32 2468
  %68 = ptrtoint ptr %buf16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf16.i, align 4
  %tobool18.not.i = icmp eq ptr %69, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.else23.i

if.then19.i:                                      ; preds = %sw.bb15.i
  %70 = ptrtoint ptr %buf16.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf, ptr %buf16.i, align 4
  %71 = getelementptr i8, ptr %vid, i32 2492
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %71, align 4
  %73 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %output4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp2.not.i21.i = icmp eq i8 %74, 0
  br i1 %cmp2.not.i21.i, label %if.then19.i.vfe_output_init_addrs.exit.i_crit_edge, label %for.body.lr.ph.i25.i

if.then19.i.vfe_output_init_addrs.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_init_addrs.exit.i

for.body.lr.ph.i25.i:                             ; preds = %if.then19.i
  %arrayidx6.i23.i = getelementptr i8, ptr %vid, i32 2472
  %ops_gen1.i24.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 20
  br label %for.body.i28.i

for.body.i28.i:                                   ; preds = %if.end14.i.i.for.body.i28.i_crit_edge, %for.body.lr.ph.i25.i
  %i.03.i26.i = phi i32 [ 0, %for.body.lr.ph.i25.i ], [ %inc.i33.i, %if.end14.i.i.for.body.i28.i_crit_edge ]
  %75 = ptrtoint ptr %buf16.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf16.i, align 4
  %tobool.not.i27.i = icmp eq ptr %76, null
  br i1 %tobool.not.i27.i, label %for.body.i28.i.if.end.i30.i_crit_edge, label %if.then.i29.i

for.body.i28.i.if.end.i30.i_crit_edge:            ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i30.i

if.then.i29.i:                                    ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i.i = getelementptr %struct.camss_buffer, ptr %76, i32 0, i32 1, i32 %i.03.i26.i
  %77 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx4.i.i, align 4
  br label %if.end.i30.i

if.end.i30.i:                                     ; preds = %if.then.i29.i, %for.body.i28.i.if.end.i30.i_crit_edge
  %ping_addr.0.i.i = phi i32 [ %78, %if.then.i29.i ], [ 0, %for.body.i28.i.if.end.i30.i_crit_edge ]
  %79 = ptrtoint ptr %arrayidx6.i23.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx6.i23.i, align 4
  %tobool7.not.i.i = icmp eq ptr %80, null
  br i1 %tobool7.not.i.i, label %if.end.i30.i.if.end14.i.i_crit_edge, label %if.then8.i.i

if.end.i30.i.if.end14.i.i_crit_edge:              ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12.i.i = getelementptr %struct.camss_buffer, ptr %80, i32 0, i32 1, i32 %i.03.i26.i
  %81 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx12.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i, %if.end.i30.i.if.end14.i.i_crit_edge
  %pong_addr.0.i.i = phi i32 [ %82, %if.then8.i.i ], [ %ping_addr.0.i.i, %if.end.i30.i.if.end14.i.i_crit_edge ]
  %83 = ptrtoint ptr %ops_gen1.i24.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops_gen1.i24.i, align 8
  %wm_set_ping_addr.i31.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %84, i32 0, i32 30
  %85 = ptrtoint ptr %wm_set_ping_addr.i31.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wm_set_ping_addr.i31.i, align 4
  %arrayidx15.i.i = getelementptr %struct.vfe_output, ptr %output4, i32 0, i32 1, i32 %i.03.i26.i
  %87 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx15.i.i, align 1
  tail call void %86(ptr noundef %add.ptr3, i8 noundef zeroext %88, i32 noundef %ping_addr.0.i.i) #5
  %89 = ptrtoint ptr %ops_gen1.i24.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops_gen1.i24.i, align 8
  %wm_set_pong_addr.i32.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %90, i32 0, i32 31
  %91 = ptrtoint ptr %wm_set_pong_addr.i32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wm_set_pong_addr.i32.i, align 4
  %93 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx15.i.i, align 1
  tail call void %92(ptr noundef %add.ptr3, i8 noundef zeroext %94, i32 noundef %pong_addr.0.i.i) #5
  %95 = ptrtoint ptr %ops_gen1.i24.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops_gen1.i24.i, align 8
  %bus_reload_wm.i.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %bus_reload_wm.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus_reload_wm.i.i, align 4
  %99 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx15.i.i, align 1
  tail call void %98(ptr noundef %add.ptr3, i8 noundef zeroext %100) #5
  %inc.i33.i = add nuw nsw i32 %i.03.i26.i, 1
  %101 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %output4, align 4
  %conv.i34.i = zext i8 %102 to i32
  %cmp.i35.i = icmp ult i32 %inc.i33.i, %conv.i34.i
  br i1 %cmp.i35.i, label %if.end14.i.i.for.body.i28.i_crit_edge, label %if.end14.i.i.vfe_output_init_addrs.exit.i_crit_edge

if.end14.i.i.vfe_output_init_addrs.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_init_addrs.exit.i

if.end14.i.i.for.body.i28.i_crit_edge:            ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i28.i

vfe_output_init_addrs.exit.i:                     ; preds = %if.end14.i.i.vfe_output_init_addrs.exit.i_crit_edge, %if.then19.i.vfe_output_init_addrs.exit.i_crit_edge
  %drop_update_idx.i36.i = getelementptr i8, ptr %vid, i32 2488
  %103 = ptrtoint ptr %drop_update_idx.i36.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %drop_update_idx.i36.i, align 4
  %105 = and i32 %104, 1
  %rem.i37.i = xor i32 %105, 1
  store i32 %rem.i37.i, ptr %drop_update_idx.i36.i, align 4
  %106 = trunc i32 %105 to i8
  %conv.i38.i = xor i8 %106, 31
  %107 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %output4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp24.not.i39.i = icmp eq i8 %108, 0
  br i1 %cmp24.not.i39.i, label %vfe_output_init_addrs.exit.i.vfe_output_frame_drop.exit53.i_crit_edge, label %for.body.lr.ph.i41.i

vfe_output_init_addrs.exit.i.vfe_output_frame_drop.exit53.i_crit_edge: ; preds = %vfe_output_init_addrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit53.i

for.body.lr.ph.i41.i:                             ; preds = %vfe_output_init_addrs.exit.i
  %ops_gen1.i40.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 20
  br label %for.body.i49.i

for.body.i49.i:                                   ; preds = %for.body.i49.i.for.body.i49.i_crit_edge, %for.body.lr.ph.i41.i
  %i.025.i42.i = phi i32 [ 0, %for.body.lr.ph.i41.i ], [ %inc8.i46.i, %for.body.i49.i.for.body.i49.i_crit_edge ]
  %109 = ptrtoint ptr %ops_gen1.i40.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops_gen1.i40.i, align 8
  %wm_set_framedrop_period.i43.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %110, i32 0, i32 28
  %111 = ptrtoint ptr %wm_set_framedrop_period.i43.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wm_set_framedrop_period.i43.i, align 4
  %arrayidx.i44.i = getelementptr %struct.vfe_output, ptr %output4, i32 0, i32 1, i32 %i.025.i42.i
  %113 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i44.i, align 1
  tail call void %112(ptr noundef %add.ptr3, i8 noundef zeroext %114, i8 noundef zeroext %conv.i38.i) #5
  %115 = ptrtoint ptr %ops_gen1.i40.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops_gen1.i40.i, align 8
  %wm_set_framedrop_pattern.i45.i = getelementptr inbounds %struct.vfe_hw_ops_gen1, ptr %116, i32 0, i32 29
  %117 = ptrtoint ptr %wm_set_framedrop_pattern.i45.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wm_set_framedrop_pattern.i45.i, align 4
  %119 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i44.i, align 1
  tail call void %118(ptr noundef %add.ptr3, i8 noundef zeroext %120, i32 noundef 1) #5
  %inc8.i46.i = add nuw nsw i32 %i.025.i42.i, 1
  %121 = ptrtoint ptr %output4 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %output4, align 4
  %conv3.i47.i = zext i8 %122 to i32
  %cmp.i48.i = icmp ult i32 %inc8.i46.i, %conv3.i47.i
  br i1 %cmp.i48.i, label %for.body.i49.i.for.body.i49.i_crit_edge, label %for.body.i49.i.vfe_output_frame_drop.exit53.i_crit_edge

for.body.i49.i.vfe_output_frame_drop.exit53.i_crit_edge: ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_output_frame_drop.exit53.i

for.body.i49.i.for.body.i49.i_crit_edge:          ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i49.i

vfe_output_frame_drop.exit53.i:                   ; preds = %for.body.i49.i.vfe_output_frame_drop.exit53.i_crit_edge, %vfe_output_init_addrs.exit.i.vfe_output_frame_drop.exit53.i_crit_edge
  %ops.i50.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 19
  %123 = ptrtoint ptr %ops.i50.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops.i50.i, align 4
  %reg_update.i51.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %reg_update.i51.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg_update.i51.i, align 4
  %127 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr, align 8
  tail call void %126(ptr noundef %add.ptr3, i32 noundef %128) #5
  %129 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2, ptr %state.i, align 4
  br label %vfe_buf_update_wm_on_new.exit

if.else23.i:                                      ; preds = %sw.bb15.i
  tail call void @vfe_buf_add_pending(ptr noundef %output4, ptr noundef %buf) #5
  %call25.i = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_buf_update_wm_on_new._rs.30, ptr noundef nonnull @__func__.vfe_buf_update_wm_on_new) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.else23.i.vfe_buf_update_wm_on_new.exit_crit_edge, label %do.end30.i

if.else23.i.vfe_buf_update_wm_on_new.exit_crit_edge: ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vfe_buf_update_wm_on_new.exit

do.end30.i:                                       ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr3, align 8
  %dev32.i = getelementptr inbounds %struct.camss, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev32.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.32) #8
  br label %vfe_buf_update_wm_on_new.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vfe_buf_add_pending(ptr noundef %output4, ptr noundef %buf) #5
  br label %vfe_buf_update_wm_on_new.exit

vfe_buf_update_wm_on_new.exit:                    ; preds = %sw.default.i, %do.end30.i, %if.else23.i.vfe_buf_update_wm_on_new.exit_crit_edge, %vfe_output_frame_drop.exit53.i, %do.end.i, %if.else7.i.vfe_buf_update_wm_on_new.exit_crit_edge, %vfe_output_frame_drop.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_flush_buffers(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_reserve_wm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_release_wm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @camss_find_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfe_buf_get_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfe_buf_add_pending(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 29, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vfe_gen1_halt._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vfe_gen1_halt._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @vfe_isr_ops_gen1, !9, !"vfe_isr_ops_gen1", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 730, i32 26}
!10 = !{ptr @vfe_video_ops_gen1, !11, !"vfe_video_ops_gen1", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 739, i32 30}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 52, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @vfe_disable_output._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @vfe_disable_output._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 64, i32 3}
!19 = !{ptr @vfe_disable_output._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @vfe_disable_output._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 293, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vfe_get_output._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @vfe_get_output._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 315, i32 4}
!28 = !{ptr @vfe_get_output._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vfe_get_output._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 198, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vfe_enable_output._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @vfe_enable_output._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 623, i32 3}
!37 = !{ptr @vfe_isr_wm_done._rs, !36, !"_rs", i1 false, i1 false}
!38 = !{ptr @__func__.vfe_isr_wm_done, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vfe_isr_wm_done._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @vfe_isr_wm_done._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"_rs", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 630, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vfe_isr_wm_done._entry.20, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vfe_isr_wm_done._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @vfe_isr_wm_done._rs.23, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 638, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vfe_isr_wm_done._entry.24, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @vfe_isr_wm_done._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vfe_buf_update_wm_on_last._rs, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 450, i32 3}
!54 = !{ptr @__func__.vfe_buf_update_wm_on_last, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vfe_buf_update_wm_on_last._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @vfe_buf_update_wm_on_last._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @vfe_buf_update_wm_on_next._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 430, i32 3}
!60 = !{ptr @__func__.vfe_buf_update_wm_on_next, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vfe_buf_update_wm_on_next._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @vfe_buf_update_wm_on_next._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @vfe_buf_update_wm_on_new._rs, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 480, i32 4}
!66 = !{ptr @__func__.vfe_buf_update_wm_on_new, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vfe_buf_update_wm_on_new._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @vfe_buf_update_wm_on_new._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @vfe_buf_update_wm_on_new._rs.30, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-gen1.c", i32 495, i32 4}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vfe_buf_update_wm_on_new._entry.31, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @vfe_buf_update_wm_on_new._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
