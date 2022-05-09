; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-vfe-170.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-vfe-170.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vfe_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vfe_isr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss_video_ops = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfe_device = type { ptr, i8, ptr, i32, [30 x i8], ptr, i32, %struct.completion, %struct.completion, %struct.mutex, i32, %struct.mutex, i32, %struct.spinlock, [7 x i32], [4 x %struct.vfe_line], i8, i32, i8, ptr, ptr, %struct.vfe_isr_ops, %struct.camss_video_ops }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_subdev_sensor_ops = type { ptr, ptr }
%struct.camss_buffer = type { %struct.vb2_v4l2_buffer, [3 x i32], %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@vfe_ops_170 = dso_local constant { %struct.vfe_hw_ops, [40 x i8] } { %struct.vfe_hw_ops { ptr null, ptr @vfe_global_reset, ptr @vfe_hw_version, ptr @vfe_isr, ptr @vfe_isr_read, ptr @vfe_pm_domain_off, ptr @vfe_pm_domain_on, ptr @vfe_reg_update, ptr @vfe_reg_update_clear, ptr @vfe_subdev_init, ptr @vfe_disable, ptr @vfe_enable, ptr @vfe_halt, ptr @vfe_violation_read }, [40 x i8] zeroinitializer }, align 32
@vfe_hw_version.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_camss\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfe_hw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/platform/qcom/camss/camss-vfe-170.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VFE HW Version = %u.%u.%u\0A\00", [37 x i8] zeroinitializer }, align 32
@vfe_isr_ops_170 = internal constant { %struct.vfe_isr_ops, [40 x i8] } { %struct.vfe_isr_ops { ptr @vfe_isr_reset_ack, ptr @vfe_isr_halt_ack, ptr @vfe_isr_reg_update, ptr @vfe_isr_sof, ptr @vfe_isr_comp_done, ptr @vfe_isr_wm_done }, [40 x i8] zeroinitializer }, align 32
@vfe_video_ops_170 = internal constant { %struct.camss_video_ops, [24 x i8] } { %struct.camss_video_ops { ptr @vfe_queue_buffer, ptr @vfe_flush_buffers }, [24 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vfe_isr_wm_done = private unnamed_addr constant [16 x i8] c"vfe_isr_wm_done\00", align 1
@vfe_isr_wm_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.vfe_isr_wm_done, ptr @.str.2, i32 657, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Received wm done for unmapped index\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._entry_ptr = internal global ptr @vfe_isr_wm_done._entry, section ".printk_index", align 4
@vfe_isr_wm_done._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.vfe_isr_wm_done, ptr @.str.2, i32 665, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing ready buf %d!\0A\00", [41 x i8] zeroinitializer }, align 32
@vfe_isr_wm_done._entry_ptr.11 = internal global ptr @vfe_isr_wm_done._entry.9, section ".printk_index", align 4
@vfe_disable_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 523, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VFE idle timeout - resetting\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vfe_disable_output\00", [45 x i8] zeroinitializer }, align 32
@vfe_disable_output._entry_ptr = internal global ptr @vfe_disable_output._entry, section ".printk_index", align 4
@vfe_get_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 423, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Output is running\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfe_get_output\00", [17 x i8] zeroinitializer }, align 32
@vfe_get_output._entry_ptr = internal global ptr @vfe_get_output._entry, section ".printk_index", align 4
@vfe_get_output._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 431, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can not reserve wm\0A\00", [44 x i8] zeroinitializer }, align 32
@vfe_get_output._entry_ptr.18 = internal global ptr @vfe_get_output._entry.16, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vfe_enable_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 477, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Output is not in reserved state %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vfe_enable_output\00", [46 x i8] zeroinitializer }, align 32
@vfe_enable_output._entry_ptr = internal global ptr @vfe_enable_output._entry, section ".printk_index", align 4
@vfe_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 405, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VFE halt timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfe_halt\00", [23 x i8] zeroinitializer }, align 32
@vfe_halt._entry_ptr = internal global ptr @vfe_halt._entry, section ".printk_index", align 4
@vfe_violation_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vfe_violation_read = private unnamed_addr constant [19 x i8] c"vfe_violation_read\00", align 1
@vfe_violation_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.vfe_violation_read, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013VFE: violation = 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@vfe_violation_read._entry_ptr = internal global ptr @vfe_violation_read._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"vfe_ops_170\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 768, i32 25 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 188, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"vfe_isr_ops_170\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 746, i32 33 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"vfe_video_ops_170\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 755, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 656, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 664, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 523, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 423, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 431, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 476, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 405, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [53 x i8] c"../drivers/media/platform/qcom/camss/camss-vfe-170.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 334, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @vfe_disable_output._entry, ptr @vfe_disable_output._entry_ptr, ptr @vfe_enable_output._entry, ptr @vfe_enable_output._entry_ptr, ptr @vfe_get_output._entry, ptr @vfe_get_output._entry.16, ptr @vfe_get_output._entry_ptr, ptr @vfe_get_output._entry_ptr.18, ptr @vfe_halt._entry, ptr @vfe_halt._entry_ptr, ptr @vfe_isr_wm_done._entry, ptr @vfe_isr_wm_done._entry.9, ptr @vfe_isr_wm_done._entry_ptr, ptr @vfe_isr_wm_done._entry_ptr.11, ptr @vfe_violation_read._entry, ptr @vfe_violation_read._entry_ptr, ptr @vfe_ops_170, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vfe_isr_ops_170, ptr @vfe_video_ops_170, ptr @vfe_isr_wm_done._rs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vfe_isr_wm_done._rs.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @vfe_violation_read._rs, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_ops_170 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_ops_170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_video_ops_170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_isr_wm_done._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_disable_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_get_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_get_output._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_enable_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_violation_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_violation_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_global_reset(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1625358336) #8, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_hw_version(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !67
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfe_hw_version.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfe_hw_version, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and3 = and i32 %3, 65535
  %shr1 = lshr i32 %3, 16
  %and2 = and i32 %shr1, 4095
  %shr = lshr i32 %3, 28
  %4 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfe, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vfe_hw_version.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %and2, i32 noundef %and3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_isr(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !67
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 112
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !67
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #8, !srcloc !65
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %9, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %5) #8, !srcloc !65
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr12 = getelementptr i8, ptr %11, i32 8284
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !67
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr19 = getelementptr i8, ptr %15, i32 8272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %12) #8, !srcloc !65
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr12.1 = getelementptr i8, ptr %17, i32 8288
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.1) #8, !srcloc !67
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr19.1 = getelementptr i8, ptr %21, i32 8276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.1, i32 %18) #8, !srcloc !65
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr12.2 = getelementptr i8, ptr %23, i32 8292
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.2) #8, !srcloc !67
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 8
  %add.ptr19.2 = getelementptr i8, ptr %26, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.2, i32 %24) #8, !srcloc !65
  %27 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %add.ptr21 = getelementptr i8, ptr %29, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 16777216) #8, !srcloc !65
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  %add.ptr23 = getelementptr i8, ptr %31, i32 8296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 16777216) #8, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool.not = icmp sgt i32 %27, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %isr_ops = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21
  %32 = ptrtoint ptr %isr_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %isr_ops, align 4
  tail call void %33(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 2
  %and28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end.for.inc33_crit_edge, label %if.then30

if.end.for.inc33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc33

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_update, align 4
  tail call void %35(ptr noundef %dev, i32 noundef 0) #8
  br label %for.inc33

for.inc33:                                        ; preds = %if.then30, %if.end.for.inc33_crit_edge
  %and28.1 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.1)
  %tobool29.not.1 = icmp eq i32 %and28.1, 0
  br i1 %tobool29.not.1, label %for.inc33.for.inc33.1_crit_edge, label %if.then30.1

for.inc33.for.inc33.1_crit_edge:                  ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc33.1

if.then30.1:                                      ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_update, align 4
  tail call void %37(ptr noundef %dev, i32 noundef 1) #8
  br label %for.inc33.1

for.inc33.1:                                      ; preds = %if.then30.1, %for.inc33.for.inc33.1_crit_edge
  %and28.2 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.2)
  %tobool29.not.2 = icmp eq i32 %and28.2, 0
  br i1 %tobool29.not.2, label %for.inc33.1.for.inc33.2_crit_edge, label %if.then30.2

for.inc33.1.for.inc33.2_crit_edge:                ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc33.2

if.then30.2:                                      ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_update, align 4
  tail call void %39(ptr noundef %dev, i32 noundef 2) #8
  br label %for.inc33.2

for.inc33.2:                                      ; preds = %if.then30.2, %for.inc33.1.for.inc33.2_crit_edge
  %sof = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 3
  %and41 = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %for.inc33.2.for.inc46_crit_edge, label %if.then43

for.inc33.2.for.inc46_crit_edge:                  ; preds = %for.inc33.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc46

if.then43:                                        ; preds = %for.inc33.2
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %sof to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sof, align 4
  tail call void %41(ptr noundef %dev, i32 noundef 0) #8
  br label %for.inc46

for.inc46:                                        ; preds = %if.then43, %for.inc33.2.for.inc46_crit_edge
  %and41.1 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.1)
  %tobool42.not.1 = icmp eq i32 %and41.1, 0
  br i1 %tobool42.not.1, label %for.inc46.for.inc46.1_crit_edge, label %if.then43.1

for.inc46.for.inc46.1_crit_edge:                  ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc46.1

if.then43.1:                                      ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %sof to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sof, align 4
  tail call void %43(ptr noundef %dev, i32 noundef 1) #8
  br label %for.inc46.1

for.inc46.1:                                      ; preds = %if.then43.1, %for.inc46.for.inc46.1_crit_edge
  %and41.2 = and i32 %27, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.2)
  %tobool42.not.2 = icmp eq i32 %and41.2, 0
  br i1 %tobool42.not.2, label %for.inc46.1.for.inc46.2_crit_edge, label %if.then43.2

for.inc46.1.for.inc46.2_crit_edge:                ; preds = %for.inc46.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc46.2

if.then43.2:                                      ; preds = %for.inc46.1
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %sof to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sof, align 4
  tail call void %45(ptr noundef %dev, i32 noundef 2) #8
  br label %for.inc46.2

for.inc46.2:                                      ; preds = %if.then43.2, %for.inc46.1.for.inc46.2_crit_edge
  %comp_done = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 4
  %and55 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.inc46.2.for.inc60_crit_edge, label %if.then57

for.inc46.2.for.inc60_crit_edge:                  ; preds = %for.inc46.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60

if.then57:                                        ; preds = %for.inc46.2
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %comp_done to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %comp_done, align 4
  tail call void %47(ptr noundef %dev, i8 noundef zeroext 0) #8
  br label %for.inc60

for.inc60:                                        ; preds = %if.then57, %for.inc46.2.for.inc60_crit_edge
  %and55.1 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.1)
  %tobool56.not.1 = icmp eq i32 %and55.1, 0
  br i1 %tobool56.not.1, label %for.inc60.for.inc60.1_crit_edge, label %if.then57.1

for.inc60.for.inc60.1_crit_edge:                  ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60.1

if.then57.1:                                      ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %comp_done to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %comp_done, align 4
  tail call void %49(ptr noundef %dev, i8 noundef zeroext 1) #8
  br label %for.inc60.1

for.inc60.1:                                      ; preds = %if.then57.1, %for.inc60.for.inc60.1_crit_edge
  %and55.2 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.2)
  %tobool56.not.2 = icmp eq i32 %and55.2, 0
  br i1 %tobool56.not.2, label %for.inc60.1.for.inc60.2_crit_edge, label %if.then57.2

for.inc60.1.for.inc60.2_crit_edge:                ; preds = %for.inc60.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60.2

if.then57.2:                                      ; preds = %for.inc60.1
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %comp_done to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %comp_done, align 4
  tail call void %51(ptr noundef %dev, i8 noundef zeroext 2) #8
  br label %for.inc60.2

for.inc60.2:                                      ; preds = %if.then57.2, %for.inc60.1.for.inc60.2_crit_edge
  %and55.3 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.3)
  %tobool56.not.3 = icmp eq i32 %and55.3, 0
  br i1 %tobool56.not.3, label %for.inc60.2.for.inc60.3_crit_edge, label %if.then57.3

for.inc60.2.for.inc60.3_crit_edge:                ; preds = %for.inc60.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc60.3

if.then57.3:                                      ; preds = %for.inc60.2
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %comp_done to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %comp_done, align 4
  tail call void %53(ptr noundef %dev, i8 noundef zeroext 3) #8
  br label %for.inc60.3

for.inc60.3:                                      ; preds = %if.then57.3, %for.inc60.2.for.inc60.3_crit_edge
  %and67 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %wm_done = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 5
  br i1 %tobool68.not, label %for.inc60.3.for.inc79.6_crit_edge, label %if.then69

for.inc60.3.for.inc79.6_crit_edge:                ; preds = %for.inc60.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc79.6

if.then69:                                        ; preds = %for.inc60.3
  %and72 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then69.if.then69.1_crit_edge, label %if.then74

if.then69.if.then69.1_crit_edge:                  ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.1

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wm_done, align 4
  tail call void %55(ptr noundef %dev, i8 noundef zeroext 0) #8
  br label %if.then69.1

if.then69.1:                                      ; preds = %if.then74, %if.then69.if.then69.1_crit_edge
  %and72.1 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.1)
  %tobool73.not.1 = icmp eq i32 %and72.1, 0
  br i1 %tobool73.not.1, label %if.then69.1.if.then69.2_crit_edge, label %if.then74.1

if.then69.1.if.then69.2_crit_edge:                ; preds = %if.then69.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.2

if.then74.1:                                      ; preds = %if.then69.1
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wm_done, align 4
  tail call void %57(ptr noundef %dev, i8 noundef zeroext 1) #8
  br label %if.then69.2

if.then69.2:                                      ; preds = %if.then74.1, %if.then69.1.if.then69.2_crit_edge
  %and72.2 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.2)
  %tobool73.not.2 = icmp eq i32 %and72.2, 0
  br i1 %tobool73.not.2, label %if.then69.2.if.then69.3_crit_edge, label %if.then74.2

if.then69.2.if.then69.3_crit_edge:                ; preds = %if.then69.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.3

if.then74.2:                                      ; preds = %if.then69.2
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wm_done, align 4
  tail call void %59(ptr noundef %dev, i8 noundef zeroext 2) #8
  br label %if.then69.3

if.then69.3:                                      ; preds = %if.then74.2, %if.then69.2.if.then69.3_crit_edge
  %and72.3 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.3)
  %tobool73.not.3 = icmp eq i32 %and72.3, 0
  br i1 %tobool73.not.3, label %if.then69.3.if.then69.4_crit_edge, label %if.then74.3

if.then69.3.if.then69.4_crit_edge:                ; preds = %if.then69.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.4

if.then74.3:                                      ; preds = %if.then69.3
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wm_done, align 4
  tail call void %61(ptr noundef %dev, i8 noundef zeroext 3) #8
  br label %if.then69.4

if.then69.4:                                      ; preds = %if.then74.3, %if.then69.3.if.then69.4_crit_edge
  %and72.4 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.4)
  %tobool73.not.4 = icmp eq i32 %and72.4, 0
  br i1 %tobool73.not.4, label %if.then69.4.if.then69.5_crit_edge, label %if.then74.4

if.then69.4.if.then69.5_crit_edge:                ; preds = %if.then69.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.5

if.then74.4:                                      ; preds = %if.then69.4
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wm_done, align 4
  tail call void %63(ptr noundef %dev, i8 noundef zeroext 4) #8
  br label %if.then69.5

if.then69.5:                                      ; preds = %if.then74.4, %if.then69.4.if.then69.5_crit_edge
  %and72.5 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.5)
  %tobool73.not.5 = icmp eq i32 %and72.5, 0
  br i1 %tobool73.not.5, label %if.then69.5.if.then69.6_crit_edge, label %if.then74.5

if.then69.5.if.then69.6_crit_edge:                ; preds = %if.then69.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69.6

if.then74.5:                                      ; preds = %if.then69.5
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wm_done, align 4
  tail call void %65(ptr noundef %dev, i8 noundef zeroext 5) #8
  br label %if.then69.6

if.then69.6:                                      ; preds = %if.then74.5, %if.then69.5.if.then69.6_crit_edge
  %and72.6 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.6)
  %tobool73.not.6 = icmp eq i32 %and72.6, 0
  br i1 %tobool73.not.6, label %if.then69.6.for.inc79.6_crit_edge, label %if.then74.6

if.then69.6.for.inc79.6_crit_edge:                ; preds = %if.then69.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc79.6

if.then74.6:                                      ; preds = %if.then69.6
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wm_done, align 4
  tail call void %67(ptr noundef %dev, i8 noundef zeroext 6) #8
  br label %for.inc79.6

for.inc79.6:                                      ; preds = %if.then74.6, %if.then69.6.for.inc79.6_crit_edge, %for.inc60.3.for.inc79.6_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_read(ptr nocapture noundef readonly %vfe, ptr nocapture noundef %status0, ptr nocapture noundef %status1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !67
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %status0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status0, align 4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 112
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !67
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status1, align 4
  %10 = ptrtoint ptr %status0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status0, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %14, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %12) #8, !srcloc !65
  %15 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %19, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %17) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %21, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #8, !srcloc !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_pm_domain_off(ptr nocapture noundef %vfe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfe_pm_domain_on(ptr nocapture noundef readnone %vfe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_reg_update(ptr nocapture noundef %vfe, i32 noundef %line_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %line_id, 1
  %shl = shl nuw i32 1, %add
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 17
  %0 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_update, align 4
  %or = or i32 %1, %shl
  store i32 %or, ptr %reg_update, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_update, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 1196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_reg_update_clear(ptr nocapture noundef %vfe, i32 noundef %line_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %line_id, 1
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 17
  %0 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_update, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %reg_update, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_subdev_init(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %vfe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 21
  %0 = call ptr @memcpy(ptr %isr_ops, ptr @vfe_isr_ops_170, i32 24)
  %video_ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 22
  %1 = load i64, ptr @vfe_video_ops_170, align 8
  %2 = ptrtoint ptr %video_ops to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %video_ops, align 4
  %line_num = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 16
  %3 = ptrtoint ptr %line_num to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %line_num, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_disable(ptr noundef %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %line, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  %output1.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7
  %output_lock.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 13
  %2 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 6
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond16.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %do.cond16.i.do.body.i_crit_edge ]
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call5.i) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout.0.i)
  %cmp9.i = icmp eq i32 %timeout.0.i, 100
  br i1 %cmp9.i, label %do.end13.i, label %do.cond16.i

do.end13.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev.i = getelementptr inbounds %struct.camss, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12) #11
  %call14.i = tail call i32 @vfe_reset(ptr noundef %add.ptr) #8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %2, align 4
  br label %vfe_disable_output.exit

do.cond16.i:                                      ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body21.i, label %do.cond16.i.do.body.i_crit_edge

do.cond16.i.do.body.i_crit_edge:                  ; preds = %do.cond16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body21.i:                                      ; preds = %do.cond16.i
  %call29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #8
  %10 = ptrtoint ptr %output1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %output1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp354.not.i = icmp eq i8 %11, 0
  br i1 %cmp354.not.i, label %do.body21.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body21.i.for.end.i_crit_edge:                  ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body21.i
  %base.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc38.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx37.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1, i32 %i.05.i
  %12 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx37.i, align 1
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 8
  %conv.i.i = zext i8 %13 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = add nuw nsw i32 %mul.i.i, 8712
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !65
  %inc38.i = add nuw nsw i32 %i.05.i, 1
  %16 = ptrtoint ptr %output1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %output1.i, align 4
  %conv34.i = zext i8 %17 to i32
  %cmp35.i = icmp ult i32 %inc38.i, %conv34.i
  br i1 %cmp35.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body21.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call29.i) #8
  br label %vfe_disable_output.exit

vfe_disable_output.exit:                          ; preds = %for.end.i, %do.end13.i
  %call1 = tail call i32 @vfe_put_output(ptr noundef %line) #8
  %stream_lock = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #8
  %stream_count = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 12
  %18 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream_count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %stream_count, align 4
  tail call void @mutex_unlock(ptr noundef %stream_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_enable(ptr noundef %line) #0 align 64 {
entry:
  %frame_skip.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 8
  %sub = sub i32 0, %1
  %arrayidx = getelementptr %struct.vfe_line, ptr %line, i32 %sub
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 -432
  %stream_lock = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #8
  %stream_count = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 12
  %2 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base.i.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 92
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !67
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -1) #8, !srcloc !65
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %10, i32 96
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #8, !srcloc !67
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 8
  %add.ptr2.i11.i = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i11.i, i32 -1) #8, !srcloc !65
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #8, !srcloc !65
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %17, i32 8264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #8, !srcloc !65
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %19, i32 8268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #8, !srcloc !65
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream_count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %stream_count, align 4
  tail call void @mutex_unlock(ptr noundef %stream_lock) #8
  %22 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %line, align 8
  %sub.i = sub i32 0, %23
  %arrayidx.i = getelementptr %struct.vfe_line, ptr %line, i32 %sub.i
  %add.ptr.i28 = getelementptr i8, ptr %arrayidx.i, i32 -432
  %output_lock.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i28, i32 0, i32 13
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #8
  %state.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 7
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.not.i = icmp eq i32 %25, 0
  br i1 %cmp7.not.i, label %if.end.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i28, align 8
  %dev.i = getelementptr inbounds %struct.camss, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14) #11
  br label %vfe_get_output.exit.thread

if.end.i:                                         ; preds = %if.end
  %output6.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7
  %30 = ptrtoint ptr %output6.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %output6.i, align 4
  %31 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line, align 8
  %call13.i = tail call i32 @vfe_reserve_wm(ptr noundef %add.ptr.i28, i32 noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end19.i, label %if.end4

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i28, align 8
  %dev21.i = getelementptr inbounds %struct.camss, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev21.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.17) #11
  %wm_idx27.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %wm_idx27.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wm_idx27.i, align 1
  %call29.i = tail call i32 @vfe_release_wm(ptr noundef %add.ptr.i28, i8 noundef zeroext %38) #8
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %state.i, align 4
  br label %vfe_get_output.exit.thread

vfe_get_output.exit.thread:                       ; preds = %do.end19.i, %do.end11.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call3.i) #8
  br label %error_get_output

if.end4:                                          ; preds = %if.end.i
  %conv23.i = trunc i32 %call13.i to i8
  %wm_idx24.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %wm_idx24.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv23.i, ptr %wm_idx24.i, align 1
  %drop_update_idx.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 5
  %41 = ptrtoint ptr %drop_update_idx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %drop_update_idx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call3.i) #8
  %42 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %line, align 8
  %sub.i29 = sub i32 0, %43
  %arrayidx.i30 = getelementptr %struct.vfe_line, ptr %line, i32 %sub.i29
  %add.ptr.i31 = getelementptr i8, ptr %arrayidx.i30, i32 -432
  %ops2.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i31, i32 0, i32 19
  %44 = ptrtoint ptr %ops2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_skip.i) #8
  %46 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %frame_skip.i, align 4
  %subdev.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 1
  %call.i = tail call ptr @camss_find_sensor(ptr noundef %subdev.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.do.body37.i_crit_edge, label %if.else.i

if.end4.do.body37.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37.i

if.else.i:                                        ; preds = %if.end4
  %ops11.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %ops11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops11.i, align 4
  %sensor12.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %sensor12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sensor12.i, align 4
  %tobool13.not.i = icmp eq ptr %50, null
  br i1 %tobool13.not.i, label %if.else.i.if.end32.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %g_skip_frames.i = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %g_skip_frames.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %g_skip_frames.i, align 4
  %tobool16.not.i = icmp eq ptr %52, null
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.end32.i_crit_edge, label %if.else18.i

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.else18.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 6), align 4
  %tobool19.not.i = icmp eq ptr %53, null
  br i1 %tobool19.not.i, label %if.else18.i.if.else26.i_crit_edge, label %land.lhs.true20.i

if.else18.i.if.else26.i_crit_edge:                ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26.i

land.lhs.true20.i:                                ; preds = %if.else18.i
  %g_skip_frames21.i = getelementptr inbounds %struct.v4l2_subdev_sensor_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %g_skip_frames21.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %g_skip_frames21.i, align 4
  %tobool22.not.i = icmp eq ptr %55, null
  br i1 %tobool22.not.i, label %land.lhs.true20.i.if.else26.i_crit_edge, label %land.lhs.true20.i.if.end32.sink.split.i_crit_edge

land.lhs.true20.i.if.end32.sink.split.i_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.sink.split.i

land.lhs.true20.i.if.else26.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26.i

if.else26.i:                                      ; preds = %land.lhs.true20.i.if.else26.i_crit_edge, %if.else18.i.if.else26.i_crit_edge
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.else26.i, %land.lhs.true20.i.if.end32.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %52, %if.else26.i ], [ %55, %land.lhs.true20.i.if.end32.sink.split.i_crit_edge ]
  %call30.i = call i32 %.sink.i(ptr noundef nonnull %call.i, ptr noundef nonnull %frame_skip.i) #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end32.sink.split.i, %land.lhs.true.i.if.end32.i_crit_edge, %if.else.i.if.end32.i_crit_edge
  %56 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %frame_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %57)
  %cmp.i = icmp ugt i32 %57, 29
  br i1 %cmp.i, label %if.then34.i, label %if.end32.i.do.body37.i_crit_edge

if.end32.i.do.body37.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %frame_skip.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 29, ptr %frame_skip.i, align 4
  br label %do.body37.i

do.body37.i:                                      ; preds = %if.then34.i, %if.end32.i.do.body37.i_crit_edge, %if.end4.do.body37.i_crit_edge
  %output_lock.i32 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i31, i32 0, i32 13
  %call41.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i32) #8
  %reg_update_clear.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %45, i32 0, i32 8
  %59 = ptrtoint ptr %reg_update_clear.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_update_clear.i, align 4
  %61 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %line, align 8
  call void %60(ptr noundef %add.ptr.i31, i32 noundef %62) #8
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp45.not.i = icmp eq i32 %64, 0
  br i1 %cmp45.not.i, label %if.end53.i, label %error_enable_output

if.end53.i:                                       ; preds = %do.body37.i
  %65 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 6
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool54.not.i = icmp eq i32 %67, 0
  br i1 %tobool54.not.i, label %if.end53.i.if.end72.i_crit_edge, label %do.end66.i, !prof !73

if.end53.i.if.end72.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

do.end66.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 482, i32 noundef 9, ptr noundef null) #8
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end66.i, %if.end53.i.if.end72.i_crit_edge
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 6, ptr %state.i, align 4
  %sequence.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 8
  %69 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %sequence.i, align 4
  %wait_reg_update.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 9
  %70 = ptrtoint ptr %wait_reg_update.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %wait_reg_update.i, align 4
  %reg_update.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 7, i32 11
  %71 = ptrtoint ptr %reg_update.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %reg_update.i, align 4
  %72 = ptrtoint ptr %wm_idx24.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %wm_idx24.i, align 1
  %base.i.i35 = getelementptr inbounds %struct.vfe_device, ptr %add.ptr.i31, i32 0, i32 2
  %74 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i35, align 8
  %add.ptr.i.i36 = getelementptr i8, ptr %75, i32 8812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36, i32 -2113929216) #8, !srcloc !65
  %76 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i35, align 8
  %add.ptr2.i.i37 = getelementptr i8, ptr %77, i32 8320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i37, i32 0) #8, !srcloc !65
  %78 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i35, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %79, i32 8204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 -61696) #8, !srcloc !65
  %80 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i35, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %81, i32 8476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 0) #8, !srcloc !65
  %82 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i35, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %83, i32 8324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 -256) #8, !srcloc !65
  %84 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i35, align 8
  %conv.i.i = zext i8 %73 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = add nuw nsw i32 %mul.i.i, 8796
  %add.ptr10.i.i = getelementptr i8, ptr %85, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 251658240) #8, !srcloc !65
  %86 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i35, align 8
  %add14.i.i = add nuw nsw i32 %mul.i.i, 8732
  %add.ptr15.i.i = getelementptr i8, ptr %87, i32 %add14.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 33488896) #8, !srcloc !65
  %88 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i35, align 8
  %add19.i.i = add nuw nsw i32 %mul.i.i, 8736
  %add.ptr20.i.i = getelementptr i8, ptr %89, i32 %add19.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 0) #8, !srcloc !65
  %90 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i35, align 8
  %add24.i.i = add nuw nsw i32 %mul.i.i, 8740
  %add.ptr25.i.i = getelementptr i8, ptr %91, i32 %add24.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 0) #8, !srcloc !65
  %92 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i35, align 8
  %add29.i.i = add nuw nsw i32 %mul.i.i, 8744
  %add.ptr30.i.i = getelementptr i8, ptr %93, i32 %add29.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 33488896) #8, !srcloc !65
  %94 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i35, align 8
  %add34.i.i = add nuw nsw i32 %mul.i.i, 8712
  %add.ptr35.i.i = getelementptr i8, ptr %95, i32 %add34.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i, i32 50331648) #8, !srcloc !65
  %bytesperline.i.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 6, i32 4, i32 1, i32 0, i32 5, i32 0, i32 1
  %height.i.i = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 6, i32 4, i32 1, i32 0, i32 1
  %call84.i = call ptr @vfe_buf_get_pending(ptr noundef %output6.i) #8
  %arrayidx85.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 2, i32 0
  %96 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call84.i, ptr %arrayidx85.i, align 4
  %tobool88.not.i = icmp eq ptr %call84.i, null
  br i1 %tobool88.not.i, label %if.end72.i.if.end8_crit_edge, label %if.end90.i

if.end72.i.if.end8_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end90.i:                                       ; preds = %if.end72.i
  %97 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %65, align 4
  %inc.i = add i32 %98, 1
  store i32 %inc.i, ptr %65, align 4
  %99 = ptrtoint ptr %wm_idx24.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %wm_idx24.i, align 1
  %addr.i = getelementptr inbounds %struct.camss_buffer, ptr %call84.i, i32 0, i32 1
  %101 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %addr.i, align 8
  %103 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %bytesperline.i.i, align 1
  %105 = call i32 @llvm.bswap.i32(i32 %102) #8
  %106 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i.i35, align 8
  %conv.i153.i = zext i8 %100 to i32
  %mul.i154.i = shl nuw nsw i32 %conv.i153.i, 8
  %add.i155.i = add nuw nsw i32 %mul.i154.i, 8724
  %add.ptr.i156.i = getelementptr i8, ptr %107, i32 %add.i155.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 %105) #8, !srcloc !65
  %108 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %height.i.i, align 1
  %mul1.i.i = mul i32 %109, %104
  %110 = call i32 @llvm.bswap.i32(i32 %mul1.i.i) #8
  %111 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i.i35, align 8
  %add5.i.i = add nuw nsw i32 %mul.i154.i, 8792
  %add.ptr6.i157.i = getelementptr i8, ptr %112, i32 %add5.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i157.i, i32 %110) #8, !srcloc !65
  %call84.1.i = call ptr @vfe_buf_get_pending(ptr noundef %output6.i) #8
  %arrayidx85.1.i = getelementptr %struct.vfe_line, ptr %line, i32 0, i32 7, i32 2, i32 1
  %113 = ptrtoint ptr %arrayidx85.1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call84.1.i, ptr %arrayidx85.1.i, align 4
  %tobool88.not.1.i = icmp eq ptr %call84.1.i, null
  br i1 %tobool88.not.1.i, label %if.end90.i.if.end8_crit_edge, label %if.end90.1.i

if.end90.i.if.end8_crit_edge:                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end90.1.i:                                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %65, align 4
  %inc.1.i = add i32 %115, 1
  store i32 %inc.1.i, ptr %65, align 4
  %116 = ptrtoint ptr %wm_idx24.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %wm_idx24.i, align 1
  %addr.1.i = getelementptr inbounds %struct.camss_buffer, ptr %call84.1.i, i32 0, i32 1
  %118 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %addr.1.i, align 8
  %120 = ptrtoint ptr %bytesperline.i.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %bytesperline.i.i, align 1
  %122 = call i32 @llvm.bswap.i32(i32 %119) #8
  %123 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i.i35, align 8
  %conv.i153.1.i = zext i8 %117 to i32
  %mul.i154.1.i = shl nuw nsw i32 %conv.i153.1.i, 8
  %add.i155.1.i = add nuw nsw i32 %mul.i154.1.i, 8724
  %add.ptr.i156.1.i = getelementptr i8, ptr %124, i32 %add.i155.1.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.1.i, i32 %122) #8, !srcloc !65
  %125 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %height.i.i, align 1
  %mul1.i.1.i = mul i32 %126, %121
  %127 = call i32 @llvm.bswap.i32(i32 %mul1.i.1.i) #8
  %128 = ptrtoint ptr %base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i.i35, align 8
  %add5.i.1.i = add nuw nsw i32 %mul.i154.1.i, 8792
  %add.ptr6.i157.1.i = getelementptr i8, ptr %129, i32 %add5.i.1.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i157.1.i, i32 %127) #8, !srcloc !65
  br label %if.end8

if.end8:                                          ; preds = %if.end90.1.i, %if.end90.i.if.end8_crit_edge, %if.end72.i.if.end8_crit_edge
  %reg_update98.i = getelementptr inbounds %struct.vfe_hw_ops, ptr %45, i32 0, i32 7
  %130 = ptrtoint ptr %reg_update98.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_update98.i, align 4
  %132 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %line, align 8
  call void %131(ptr noundef %add.ptr.i31, i32 noundef %133) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i32, i32 noundef %call41.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_skip.i) #8
  %was_streaming = getelementptr inbounds %struct.vfe_device, ptr %add.ptr, i32 0, i32 18
  %134 = ptrtoint ptr %was_streaming to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %was_streaming, align 8
  br label %cleanup

error_enable_output:                              ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %add.ptr.i31 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i31, align 8
  %dev.i34 = getelementptr inbounds %struct.camss, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.19, i32 noundef %64) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i32, i32 noundef %call41.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_skip.i) #8
  %call9 = call i32 @vfe_put_output(ptr noundef %line) #8
  br label %error_get_output

error_get_output:                                 ; preds = %error_enable_output, %vfe_get_output.exit.thread
  call void @mutex_lock_nested(ptr noundef %stream_lock, i32 noundef 0) #8
  %139 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %stream_count, align 4
  %dec = add i32 %140, -1
  store i32 %dec, ptr %stream_count, align 4
  call void @mutex_unlock(ptr noundef %stream_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %error_get_output, %if.end8
  %retval.0 = phi i32 [ -22, %error_get_output ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_halt(ptr noundef %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %halt_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 8
  %0 = ptrtoint ptr %halt_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %halt_complete, align 4
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %halt_complete, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vfe, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_violation_read(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !67
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_violation_read._rs, ptr noundef nonnull @__func__.vfe_violation_read) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfe_isr_reset_ack(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_halt_ack(ptr noundef %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %halt_complete = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 8
  tail call void @complete(ptr noundef %halt_complete) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_reg_update(ptr noundef %vfe, i32 noundef %line_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #8
  %ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 19
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %reg_update_clear = getelementptr inbounds %struct.vfe_hw_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reg_update_clear to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_update_clear, align 4
  tail call void %3(ptr noundef %vfe, i32 noundef %line_id) #8
  %wait_reg_update = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 9
  %4 = ptrtoint ptr %wait_reg_update to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wait_reg_update, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %wait_reg_update to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait_reg_update, align 4
  %reg_update = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 11
  tail call void @complete(ptr noundef %reg_update) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_isr_sof(ptr nocapture noundef %vfe, i32 noundef %line_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfe_isr_comp_done(ptr noundef, i8 noundef zeroext) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_wm_done(ptr noundef %vfe, i8 noundef zeroext %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %wm to i32
  %arrayidx = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 14, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i64 @ktime_get() #8
  %output_lock = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 13
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp11 = icmp eq i32 %3, -1
  br i1 %cmp11, label %do.body13, label %if.end21

do.body13:                                        ; preds = %entry
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_isr_wm_done._rs, ptr noundef nonnull @__func__.vfe_isr_wm_done) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %do.body13.out_unlock_crit_edge, label %do.end18

do.body13.out_unlock_crit_edge:                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfe, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #11
  br label %out_unlock

if.end21:                                         ; preds = %entry
  %buf = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7, i32 2
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %tobool29.not = icmp eq ptr %9, null
  br i1 %tobool29.not, label %do.body31, label %if.end43

do.body31:                                        ; preds = %if.end21
  %call32 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_isr_wm_done._rs.8, ptr noundef nonnull @__func__.vfe_isr_wm_done) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body31.out_unlock_crit_edge, label %do.end37

do.body31.out_unlock_crit_edge:                   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfe, align 8
  %dev39 = getelementptr inbounds %struct.camss, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev39, align 8
  %state = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7, i32 7
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %15) #11
  br label %out_unlock

if.end43:                                         ; preds = %if.end21
  %output27 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %9, i32 0, i32 5
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7, i32 8
  %17 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sequence, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence45 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %sequence45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sequence45, align 8
  %arrayidx47 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx47, align 4
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %buf, align 4
  %tobool52.not = icmp ne ptr %21, null
  %spec.select = zext i1 %tobool52.not to i32
  %call55 = tail call ptr @vfe_buf_get_pending(ptr noundef %output27) #8
  %arrayidx57 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7, i32 2, i32 %spec.select
  %23 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call55, ptr %arrayidx57, align 4
  %tobool60.not = icmp eq ptr %call55, null
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %wm_idx = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7, i32 1
  %24 = ptrtoint ptr %wm_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wm_idx, align 1
  %addr = getelementptr inbounds %struct.camss_buffer, ptr %call55, i32 0, i32 1
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr, align 8
  %bytesperline.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %1, i32 6, i32 4, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %bytesperline.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %conv.i = zext i8 %25 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 8
  %add.i = add nuw nsw i32 %mul.i, 8724
  %add.ptr.i = getelementptr i8, ptr %32, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #8, !srcloc !65
  %height.i = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %1, i32 6, i32 4, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %height.i, align 1
  %mul1.i = mul i32 %34, %29
  %35 = tail call i32 @llvm.bswap.i32(i32 %mul1.i) #8
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %add5.i = add nuw nsw i32 %mul.i, 8792
  %add.ptr6.i = getelementptr i8, ptr %37, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %35) #8, !srcloc !65
  br label %if.end66

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %38 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %3, i32 7, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %38, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call5) #8
  tail call void @vb2_buffer_done(ptr noundef nonnull %9, i32 noundef 5) #8
  br label %cleanup

out_unlock:                                       ; preds = %do.end37, %do.body31.out_unlock_crit_edge, %do.end18, %do.body13.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfe_buf_get_pending(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_queue_buffer(ptr noundef %vid, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #8
  %state = getelementptr i8, ptr %vid, i32 2500
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp10 = icmp eq i32 %3, 6
  br i1 %cmp10, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = getelementptr i8, ptr %vid, i32 2492
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp12 = icmp slt i32 %6, 2
  br i1 %cmp12, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %buf14 = getelementptr i8, ptr %vid, i32 2468
  %inc = add nsw i32 %6, 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %4, align 4
  %arrayidx16 = getelementptr [2 x ptr], ptr %buf14, i32 0, i32 %6
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %arrayidx16, align 4
  %wm_idx = getelementptr i8, ptr %vid, i32 2465
  %9 = ptrtoint ptr %wm_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wm_idx, align 1
  %addr = getelementptr inbounds %struct.camss_buffer, ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 8
  %bytesperline.i = getelementptr i8, ptr %vid, i32 1932
  %13 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %bytesperline.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %add.ptr3, i32 0, i32 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %conv.i = zext i8 %10 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 8
  %add.i = add nuw nsw i32 %mul.i, 8724
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #8, !srcloc !65
  %height.i = getelementptr i8, ptr %vid, i32 1912
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %height.i, align 1
  %mul1.i = mul i32 %19, %14
  %20 = tail call i32 @llvm.bswap.i32(i32 %mul1.i) #8
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 8
  %add5.i = add nuw nsw i32 %mul.i, 8792
  %add.ptr6.i = getelementptr i8, ptr %22, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %20) #8, !srcloc !65
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @vfe_buf_add_pending(ptr noundef %output4, ptr noundef %buf) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_flush_buffers(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfe_buf_add_pending(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_put_output(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_reserve_wm(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_release_wm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @camss_find_sensor(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @vfe_ops_170, !1, !"vfe_ops_170", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 768, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 188, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vfe_hw_version.__UNIQUE_ID_ddebug298, !3, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!8 = !{ptr @vfe_isr_ops_170, !9, !"vfe_isr_ops_170", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 746, i32 33}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 656, i32 3}
!12 = !{ptr @vfe_isr_wm_done._rs, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.vfe_isr_wm_done, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vfe_isr_wm_done._entry, !11, !"_entry", i1 false, i1 false}
!18 = !{ptr @vfe_isr_wm_done._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @vfe_isr_wm_done._rs.8, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 664, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vfe_isr_wm_done._entry.9, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @vfe_isr_wm_done._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @vfe_video_ops_170, !25, !"vfe_video_ops_170", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 755, i32 37}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 523, i32 4}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vfe_disable_output._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @vfe_disable_output._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 423, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vfe_get_output._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @vfe_get_output._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 431, i32 3}
!38 = !{ptr @vfe_get_output._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vfe_get_output._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 476, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vfe_enable_output._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @vfe_enable_output._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 405, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @vfe_halt._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @vfe_halt._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @vfe_violation_read._rs, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-170.c", i32 334, i32 2}
!52 = !{ptr @__func__.vfe_violation_read, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @vfe_violation_read._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @vfe_violation_read._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 4224908}
!66 = !{i64 2156442940}
!67 = !{i64 4225326}
!68 = !{i64 2148775799, i64 2148775804, i64 2148775817, i64 2148775861, i64 2148775895, i64 2148775916}
!69 = !{i64 2156454235}
!70 = !{i64 2156449132}
!71 = !{i64 2156446617}
!72 = !{i64 2156446986}
!73 = !{!"branch_weights", i32 2000, i32 1}
