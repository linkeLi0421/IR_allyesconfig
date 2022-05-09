; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus_vp8.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus_vp8.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cedrus_dec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cedrus_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, i32, %struct.v4l2_ctrl_handler, ptr, %union.anon.97 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.cedrus_dev = type { %struct.v4l2_device, %struct.video_device, %struct.media_device, [2 x %struct.media_pad], ptr, ptr, ptr, [4 x ptr], %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.cedrus_run = type { ptr, ptr, %union.anon.95 }
%union.anon.95 = type { %struct.cedrus_h264_run }
%struct.cedrus_h264_run = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_vp8_frame = type { %struct.v4l2_vp8_segment, %struct.v4l2_vp8_loop_filter, %struct.v4l2_vp8_quantization, %struct.v4l2_vp8_entropy, %struct.v4l2_vp8_entropy_coder_state, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [8 x i32], i64, i64, i64, i64 }
%struct.v4l2_vp8_segment = type { [4 x i8], [4 x i8], [3 x i8], i8, i32 }
%struct.v4l2_vp8_loop_filter = type { [4 x i8], [4 x i8], i8, i8, i16, i32 }
%struct.v4l2_vp8_quantization = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_vp8_entropy = type { [4 x [8 x [3 x [11 x i8]]]], [4 x i8], [3 x i8], [2 x [19 x i8]], [3 x i8] }
%struct.v4l2_vp8_entropy_coder_state = type { i8, i8, i8, i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }

@cedrus_dec_ops_vp8 = dso_local global { %struct.cedrus_dec_ops, [36 x i8] } { %struct.cedrus_dec_ops { ptr @cedrus_vp8_irq_clear, ptr @cedrus_vp8_irq_disable, ptr @cedrus_vp8_irq_status, ptr @cedrus_vp8_setup, ptr @cedrus_vp8_start, ptr @cedrus_vp8_stop, ptr @cedrus_vp8_trigger }, [36 x i8] zeroinitializer }, align 32
@k_mv_entropy_update_probs = internal constant { [2 x [19 x i8]], [58 x i8] } { [2 x [19 x i8]] [[19 x i8] c"\ED\F6\FD\FD\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FA\FA\FC\FE\FE", [19 x i8] c"\E7\F3\F5\FD\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FB\FB\FE\FE\FE"], [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@prob_table_init = internal constant { [2480 x i8], [624 x i8] } { [2480 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B0\F6\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\DF\F1\FC\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F9\FD\FD\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\F4\FC\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\EA\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\F6\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\EF\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\F8\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FB\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FB\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FE\FD\FF\FE\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FA\FF\FE\FF\FE\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D9\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\E1\FC\F1\FD\FF\FF\FE\FF\FF\FF\FF\00\00\00\00\00\EA\FA\F1\FA\FD\FF\FD\FE\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\DF\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\EE\FD\FE\FE\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\F8\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F9\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F7\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FD\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FE\FD\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FA\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\BA\FB\FA\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\EA\FB\F4\FE\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FB\FB\F3\FD\FE\FF\FE\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\EC\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FB\FD\FD\FE\FE\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F8\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FA\FE\FC\FE\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F8\FE\F9\FD\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FD\FD\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F6\FD\FD\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FC\FE\FB\FE\FE\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FE\FC\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F8\FE\FD\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FD\FF\FE\FE\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FB\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F5\FB\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FD\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FB\FD\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FC\FD\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FC\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\F9\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FD\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FA\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\9C\A3\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00no\96\00\00\00\00\00xZO\85WUPo\97\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\93\88\12\00j\91\01\00\B3y\01\00\DF\01\22\00\D0\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\07\01\01\8F\0E\12\0Ek\87@9D<8\80A\9F\86\80\22\EA\BC\80\1C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\84\02\04\06\80\81\82\83\80\02\04\06\81\82\83\84\80\02\81\04\82\83\00\00\00\00\00\00\00\00\00\00\00\00\02\08\04\06\80\81\82\83\0A\0C\84\85\86\87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\08\04\06\80\81\82\83\0A\0C\84\85\86\87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\83\02\82\04\80\81\00\00\80\02\81\04\82\06\08\0C\83\0A\85\86\84\0E\87\10\88\89\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8A\02\8B\04\8C\8D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87\02\85\04\86\06\88\89", [624 x i8] zeroinitializer }, align 32
@switch.table.cedrus_vp8_setup = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 6, i32 5, i32 9], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"cedrus_dec_ops_vp8\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 900, i32 23 }
@___asan_gen_.4 = private unnamed_addr constant [26 x i8] c"k_mv_entropy_update_probs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 429, i32 17 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"prob_table_init\00", align 1
@___asan_gen_.8 = private constant [51 x i8] c"../drivers/staging/media/sunxi/cedrus/cedrus_vp8.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 38, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"switch.table.cedrus_vp8_setup\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @cedrus_dec_ops_vp8, ptr @k_mv_entropy_update_probs, ptr @prob_table_init, ptr @switch.table.cedrus_vp8_setup], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_dec_ops_vp8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_mv_entropy_update_probs to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prob_table_init to i32), i32 2480, i32 3104, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cedrus_vp8_setup to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_vp8_irq_clear(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %base.i.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 117440512) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_vp8_irq_disable(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %5 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_vp8_irq_status(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 552
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !17
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %and = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = shl i32 %5, 1
  %6 = and i32 %and2, 2
  %retval.0 = select i1 %tobool.not, i32 %6, i32 1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_vp8_setup(ptr noundef %ctx, ptr nocapture noundef readonly %run) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %5 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %run, align 4
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @cedrus_engine_enable(ptr noundef %ctx, i32 noundef 3) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32) #3, !srcloc !16
  %entropy_probs_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 3
  %11 = ptrtoint ptr %entropy_probs_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entropy_probs_buf, align 4
  %arrayidx.i = getelementptr i8, ptr %12, i32 4104
  %entropy.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 3
  %y_mode_probs.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %y_mode_probs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %y_mode_probs.i, align 8
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %12, i32 4112
  %uv_mode_probs.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 3, i32 2
  %16 = call ptr @memcpy(ptr %arrayidx1.i, ptr %uv_mode_probs.i, i32 3)
  %arrayidx4.i = getelementptr i8, ptr %12, i32 4120
  %segment_probs.i = getelementptr inbounds %struct.v4l2_vp8_segment, ptr %2, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %arrayidx4.i, ptr %segment_probs.i, i32 3)
  %prob_skip_false.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 10
  %18 = ptrtoint ptr %prob_skip_false.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %prob_skip_false.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %12, i32 4124
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx6.i, align 1
  %prob_intra.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 11
  %21 = ptrtoint ptr %prob_intra.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %prob_intra.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %12, i32 4125
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx7.i, align 1
  %prob_last.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 12
  %24 = ptrtoint ptr %prob_last.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prob_last.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %12, i32 4126
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx8.i, align 1
  %prob_gf.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 13
  %27 = ptrtoint ptr %prob_gf.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %prob_gf.i, align 2
  %arrayidx9.i = getelementptr i8, ptr %12, i32 4127
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %12, i32 4128
  %mv_probs.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 3, i32 3
  %30 = call ptr @memcpy(ptr %arrayidx10.i, ptr %mv_probs.i, i32 19)
  %arrayidx14.i = getelementptr i8, ptr %12, i32 4160
  %arrayidx17.i = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 3, i32 3, i32 1
  %31 = call ptr @memcpy(ptr %arrayidx14.i, ptr %arrayidx17.i, i32 19)
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %for.cond19.preheader.i.for.cond19.preheader.i_crit_edge, %entry
  %i.069.i = phi i32 [ 0, %entry ], [ %inc38.i, %for.cond19.preheader.i.for.cond19.preheader.i_crit_edge ]
  %mul.i = shl i32 %i.069.i, 9
  %arrayidx28.i = getelementptr i8, ptr %12, i32 %mul.i
  %arrayidx32.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 0, i32 0
  %32 = call ptr @memcpy(ptr %arrayidx28.i, ptr %arrayidx32.i, i32 11)
  %add27.1.i = or i32 %mul.i, 16
  %arrayidx28.1.i = getelementptr i8, ptr %12, i32 %add27.1.i
  %arrayidx32.1.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %arrayidx28.1.i, ptr %arrayidx32.1.i, i32 11)
  %add27.2.i = or i32 %mul.i, 32
  %arrayidx28.2.i = getelementptr i8, ptr %12, i32 %add27.2.i
  %arrayidx32.2.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 0, i32 2
  %34 = call ptr @memcpy(ptr %arrayidx28.2.i, ptr %arrayidx32.2.i, i32 11)
  %add.1.i = or i32 %mul.i, 64
  %arrayidx28.170.i = getelementptr i8, ptr %12, i32 %add.1.i
  %arrayidx32.171.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 1, i32 0
  %35 = call ptr @memcpy(ptr %arrayidx28.170.i, ptr %arrayidx32.171.i, i32 11)
  %add27.1.1.i = or i32 %mul.i, 80
  %arrayidx28.1.1.i = getelementptr i8, ptr %12, i32 %add27.1.1.i
  %arrayidx32.1.1.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 1, i32 1
  %36 = call ptr @memcpy(ptr %arrayidx28.1.1.i, ptr %arrayidx32.1.1.i, i32 11)
  %add27.2.1.i = or i32 %mul.i, 96
  %arrayidx28.2.1.i = getelementptr i8, ptr %12, i32 %add27.2.1.i
  %arrayidx32.2.1.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 1, i32 2
  %37 = call ptr @memcpy(ptr %arrayidx28.2.1.i, ptr %arrayidx32.2.1.i, i32 11)
  %add.2.i = or i32 %mul.i, 128
  %arrayidx28.272.i = getelementptr i8, ptr %12, i32 %add.2.i
  %arrayidx32.273.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 2, i32 0
  %38 = call ptr @memcpy(ptr %arrayidx28.272.i, ptr %arrayidx32.273.i, i32 11)
  %add27.1.2.i = or i32 %mul.i, 144
  %arrayidx28.1.2.i = getelementptr i8, ptr %12, i32 %add27.1.2.i
  %arrayidx32.1.2.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 2, i32 1
  %39 = call ptr @memcpy(ptr %arrayidx28.1.2.i, ptr %arrayidx32.1.2.i, i32 11)
  %add27.2.2.i = or i32 %mul.i, 160
  %arrayidx28.2.2.i = getelementptr i8, ptr %12, i32 %add27.2.2.i
  %arrayidx32.2.2.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 2, i32 2
  %40 = call ptr @memcpy(ptr %arrayidx28.2.2.i, ptr %arrayidx32.2.2.i, i32 11)
  %add.3.i = or i32 %mul.i, 192
  %arrayidx28.3.i = getelementptr i8, ptr %12, i32 %add.3.i
  %arrayidx32.3.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 3, i32 0
  %41 = call ptr @memcpy(ptr %arrayidx28.3.i, ptr %arrayidx32.3.i, i32 11)
  %add27.1.3.i = or i32 %mul.i, 208
  %arrayidx28.1.3.i = getelementptr i8, ptr %12, i32 %add27.1.3.i
  %arrayidx32.1.3.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 3, i32 1
  %42 = call ptr @memcpy(ptr %arrayidx28.1.3.i, ptr %arrayidx32.1.3.i, i32 11)
  %add27.2.3.i = or i32 %mul.i, 224
  %arrayidx28.2.3.i = getelementptr i8, ptr %12, i32 %add27.2.3.i
  %arrayidx32.2.3.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 3, i32 2
  %43 = call ptr @memcpy(ptr %arrayidx28.2.3.i, ptr %arrayidx32.2.3.i, i32 11)
  %add.4.i = or i32 %mul.i, 256
  %arrayidx28.4.i = getelementptr i8, ptr %12, i32 %add.4.i
  %arrayidx32.4.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 4, i32 0
  %44 = call ptr @memcpy(ptr %arrayidx28.4.i, ptr %arrayidx32.4.i, i32 11)
  %add27.1.4.i = or i32 %mul.i, 272
  %arrayidx28.1.4.i = getelementptr i8, ptr %12, i32 %add27.1.4.i
  %arrayidx32.1.4.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 4, i32 1
  %45 = call ptr @memcpy(ptr %arrayidx28.1.4.i, ptr %arrayidx32.1.4.i, i32 11)
  %add27.2.4.i = or i32 %mul.i, 288
  %arrayidx28.2.4.i = getelementptr i8, ptr %12, i32 %add27.2.4.i
  %arrayidx32.2.4.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 4, i32 2
  %46 = call ptr @memcpy(ptr %arrayidx28.2.4.i, ptr %arrayidx32.2.4.i, i32 11)
  %add.5.i = or i32 %mul.i, 320
  %arrayidx28.5.i = getelementptr i8, ptr %12, i32 %add.5.i
  %arrayidx32.5.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 5, i32 0
  %47 = call ptr @memcpy(ptr %arrayidx28.5.i, ptr %arrayidx32.5.i, i32 11)
  %add27.1.5.i = or i32 %mul.i, 336
  %arrayidx28.1.5.i = getelementptr i8, ptr %12, i32 %add27.1.5.i
  %arrayidx32.1.5.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 5, i32 1
  %48 = call ptr @memcpy(ptr %arrayidx28.1.5.i, ptr %arrayidx32.1.5.i, i32 11)
  %add27.2.5.i = or i32 %mul.i, 352
  %arrayidx28.2.5.i = getelementptr i8, ptr %12, i32 %add27.2.5.i
  %arrayidx32.2.5.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 5, i32 2
  %49 = call ptr @memcpy(ptr %arrayidx28.2.5.i, ptr %arrayidx32.2.5.i, i32 11)
  %add.6.i = or i32 %mul.i, 384
  %arrayidx28.6.i = getelementptr i8, ptr %12, i32 %add.6.i
  %arrayidx32.6.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 6, i32 0
  %50 = call ptr @memcpy(ptr %arrayidx28.6.i, ptr %arrayidx32.6.i, i32 11)
  %add27.1.6.i = or i32 %mul.i, 400
  %arrayidx28.1.6.i = getelementptr i8, ptr %12, i32 %add27.1.6.i
  %arrayidx32.1.6.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 6, i32 1
  %51 = call ptr @memcpy(ptr %arrayidx28.1.6.i, ptr %arrayidx32.1.6.i, i32 11)
  %add27.2.6.i = or i32 %mul.i, 416
  %arrayidx28.2.6.i = getelementptr i8, ptr %12, i32 %add27.2.6.i
  %arrayidx32.2.6.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 6, i32 2
  %52 = call ptr @memcpy(ptr %arrayidx28.2.6.i, ptr %arrayidx32.2.6.i, i32 11)
  %add.7.i = or i32 %mul.i, 448
  %arrayidx28.7.i = getelementptr i8, ptr %12, i32 %add.7.i
  %arrayidx32.7.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 7, i32 0
  %53 = call ptr @memcpy(ptr %arrayidx28.7.i, ptr %arrayidx32.7.i, i32 11)
  %add27.1.7.i = or i32 %mul.i, 464
  %arrayidx28.1.7.i = getelementptr i8, ptr %12, i32 %add27.1.7.i
  %arrayidx32.1.7.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 7, i32 1
  %54 = call ptr @memcpy(ptr %arrayidx28.1.7.i, ptr %arrayidx32.1.7.i, i32 11)
  %add27.2.7.i = or i32 %mul.i, 480
  %arrayidx28.2.7.i = getelementptr i8, ptr %12, i32 %add27.2.7.i
  %arrayidx32.2.7.i = getelementptr [4 x [8 x [3 x [11 x i8]]]], ptr %entropy.i, i32 0, i32 %i.069.i, i32 7, i32 2
  %55 = call ptr @memcpy(ptr %arrayidx28.2.7.i, ptr %arrayidx32.2.7.i, i32 11)
  %inc38.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc38.i, 4
  br i1 %exitcond.not.i, label %cedrus_vp8_update_probs.exit, label %for.cond19.preheader.i.for.cond19.preheader.i_crit_edge

for.cond19.preheader.i.for.cond19.preheader.i_crit_edge: ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond19.preheader.i

cedrus_vp8_update_probs.exit:                     ; preds = %for.cond19.preheader.i
  %cap_q_ctx = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 7
  %codec = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7
  %first_part_size = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 15
  %56 = ptrtoint ptr %first_part_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %first_part_size, align 8
  %mul = shl i32 %57, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %58 = tail call i32 @llvm.bswap.i32(i32 %mul) #3
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %add.ptr.i546 = getelementptr i8, ptr %60, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i546, i32 %58) #3, !srcloc !16
  %flags = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 21
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %flags, align 8
  %and = and i64 %62, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 3, i32 10
  %63 = ptrtoint ptr %first_part_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %first_part_size, align 8
  %add = add i32 %cond, %64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %65 = tail call i32 @llvm.bswap.i32(i32 %add) #3
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 8
  %add.ptr.i548 = getelementptr i8, ptr %67, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i548, i32 %65) #3, !srcloc !16
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %6, i32 0, i32 4
  %68 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.not.i = icmp eq i32 %69, 0
  br i1 %cmp.not.i, label %cedrus_vp8_update_probs.exit.vb2_plane_size.exit_crit_edge, label %if.then.i

cedrus_vp8_update_probs.exit.vb2_plane_size.exit_crit_edge: ; preds = %cedrus_vp8_update_probs.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %cedrus_vp8_update_probs.exit
  call void @__sanitizer_cov_trace_pc() #5
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %6, i32 0, i32 10, i32 0, i32 4
  %70 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %cedrus_vp8_update_probs.exit.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %71, %if.then.i ], [ 0, %cedrus_vp8_update_probs.exit.vb2_plane_size.exit_crit_edge ]
  %mul5 = shl i32 %retval.0.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %72 = tail call i32 @llvm.bswap.i32(i32 %mul5) #3
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 8
  %add.ptr.i550 = getelementptr i8, ptr %74, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i550, i32 %72) #3, !srcloc !16
  %mul6 = shl nuw nsw i32 %cond, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 8
  %add.ptr.i552 = getelementptr i8, ptr %76, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i552, i32 %mul6) #3, !srcloc !16
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %6, i32 noundef 0) #3
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %call.i, align 4
  %79 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not.i554 = icmp eq i32 %80, 0
  br i1 %cmp.not.i554, label %vb2_plane_size.exit.vb2_get_plane_payload.exit_crit_edge, label %if.then.i555

vb2_plane_size.exit.vb2_get_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %vb2_get_plane_payload.exit

if.then.i555:                                     ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %6, i32 0, i32 10, i32 0, i32 3
  %81 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i555, %vb2_plane_size.exit.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i556 = phi i32 [ %82, %if.then.i555 ], [ 0, %vb2_plane_size.exit.vb2_get_plane_payload.exit_crit_edge ]
  %add9 = add i32 %retval.0.i556, %78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %83 = tail call i32 @llvm.bswap.i32(i32 %add9) #3
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 8
  %add.ptr.i558 = getelementptr i8, ptr %85, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i558, i32 %83) #3, !srcloc !16
  %and10 = and i32 %78, 268435440
  %shr = lshr i32 %78, 28
  %or = or i32 %shr, %and10
  %or13 = or i32 %or, 1879048192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %86 = tail call i32 @llvm.bswap.i32(i32 %or13) #3
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 8
  %add.ptr.i560 = getelementptr i8, ptr %88, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i560, i32 %86) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 8
  %add.ptr.i562 = getelementptr i8, ptr %90, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i562, i32 117440512) #3, !srcloc !16
  %entropy_probs_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 4
  %91 = ptrtoint ptr %entropy_probs_buf_dma to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %entropy_probs_buf_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #3
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 8
  %add.ptr.i564 = getelementptr i8, ptr %95, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i564, i32 %93) #3, !srcloc !16
  %version = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 9
  %96 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %version, align 2
  %switch.tableidx = add i8 %97, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %98 = icmp ult i8 %switch.tableidx, 3
  br i1 %98, label %switch.lookup, label %vb2_get_plane_payload.exit.sw.epilog_crit_edge

vb2_get_plane_payload.exit.sw.epilog_crit_edge:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #5
  %99 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cedrus_vp8_setup, i32 0, i32 %99
  %100 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %100)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %vb2_get_plane_payload.exit.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 0, %vb2_get_plane_payload.exit.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %flags23 = getelementptr inbounds %struct.v4l2_vp8_segment, ptr %2, i32 0, i32 4
  %101 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags23, align 4
  %and24 = shl i32 %102, 3
  %103 = and i32 %and24, 16
  %104 = or i32 %103, %reg.0
  %and29 = shl i32 %102, 2
  %105 = and i32 %and29, 32
  %106 = or i32 %104, %105
  %and36 = shl i32 %102, 6
  %107 = and i32 %and36, 64
  %108 = or i32 %106, %107
  %109 = xor i32 %108, 32
  %last_filter_type = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 1
  %110 = ptrtoint ptr %last_filter_type to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %last_filter_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool42.not = icmp eq i32 %111, 0
  %or44 = or i32 %109, 128
  %reg.4 = select i1 %tobool42.not, i32 %109, i32 %or44
  %lf = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1
  %sharpness_level = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 2
  %112 = ptrtoint ptr %sharpness_level to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sharpness_level, align 8
  %conv46 = zext i8 %113 to i32
  %shl = shl nuw nsw i32 %conv46, 8
  %and47 = and i32 %shl, 1792
  %flags50 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 5
  %114 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags50, align 4
  %and51 = shl i32 %115, 9
  %116 = and i32 %and51, 2048
  %level = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 3
  %117 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %level, align 1
  %conv57 = zext i8 %118 to i32
  %shl58 = shl nuw nsw i32 %conv57, 12
  %and59 = and i32 %shl58, 258048
  %and63 = shl i32 %115, 18
  %119 = and i32 %and63, 262144
  %120 = and i32 %and63, 524288
  %num_dct_parts = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 14
  %121 = ptrtoint ptr %num_dct_parts to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %num_dct_parts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i.i = icmp eq i8 %122, 0
  %conv84 = zext i8 %122 to i32
  %123 = tail call i32 @llvm.ctlz.i32(i32 %conv84, i1 true) #3, !range !19
  %sub.i.op.i = shl nuw nsw i32 %123, 20
  %sub.i.op.i.op = and i32 %sub.i.op.i, 3145728
  %sub.i.op.i.op.op = xor i32 %sub.i.op.i.op, 3145728
  %and89 = select i1 %tobool.not.i.i, i32 3145728, i32 %sub.i.op.i.op.op
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %flags, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 %126, 19
  %128 = and i32 %127, 4194304
  %and99 = and i64 %125, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99)
  %tobool100.not = icmp eq i64 %and99, 0
  %reg.9.v = select i1 %tobool100.not, i32 16777216, i32 50331648
  %129 = shl i32 %126, 21
  %130 = and i32 %129, 67108864
  %or48 = or i32 %116, %and47
  %131 = or i32 %or48, %119
  %or60 = or i32 %131, %120
  %132 = or i32 %or60, %and59
  %133 = or i32 %132, %reg.4
  %or90 = or i32 %133, %and89
  %134 = or i32 %or90, %128
  %reg.9 = or i32 %134, %reg.9.v
  %135 = or i32 %reg.9, %130
  %136 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %codec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool111.not = icmp eq i32 %137, 0
  %or113 = or i32 %135, 134217728
  %reg.11 = select i1 %tobool111.not, i32 %135, i32 %or113
  %last_sharpness_level = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 2
  %138 = ptrtoint ptr %last_sharpness_level to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %last_sharpness_level, align 4
  %shl116 = shl i32 %139, 28
  %and117 = and i32 %shl116, 1879048192
  %or118 = or i32 %reg.11, %and117
  %and120 = and i64 %125, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and120)
  %tobool121.not = icmp eq i64 %and120, 0
  %or123 = or i32 %or118, -2147483648
  %reg.12 = select i1 %tobool121.not, i32 %or123, i32 %or118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %140 = tail call i32 @llvm.bswap.i32(i32 %reg.12) #3
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i, align 8
  %add.ptr.i566 = getelementptr i8, ptr %142, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i566, i32 %140) #3, !srcloc !16
  %143 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %flags, align 8
  %and.i = and i64 %144, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %if.then.i568

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i568:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %call.i567 = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  %call1.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i568, %sw.epilog.if.end.i_crit_edge
  %call2.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2.i)
  %tobool3.not.i = icmp eq i8 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %call.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  %call1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i.i)
  %tobool.not.i.i569 = icmp eq i8 %call1.i.i, 0
  br i1 %tobool.not.i.i569, label %if.then4.i.if.end22.i.i_crit_edge, label %if.then.i.i

if.then4.i.if.end22.i.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22.i.i

if.then.i.i:                                      ; preds = %if.then4.i
  %call2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  %call4.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i.i)
  %tobool5.not.i.i = icmp eq i8 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then6.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call7.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 7, i32 noundef 128) #3
  %call8.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %if.then.i.i.for.inc.i.i_crit_edge
  %call4.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.1.i.i)
  %tobool5.not.1.i.i = icmp eq i8 %call4.1.i.i, 0
  br i1 %tobool5.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then6.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.i.i

if.then6.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call7.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 7, i32 noundef 128) #3
  %call8.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then6.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %call4.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.2.i.i)
  %tobool5.not.2.i.i = icmp eq i8 %call4.2.i.i, 0
  br i1 %tobool5.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then6.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2.i.i

if.then6.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call7.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 7, i32 noundef 128) #3
  %call8.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then6.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %call4.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.3.i.i)
  %tobool5.not.3.i.i = icmp eq i8 %call4.3.i.i, 0
  br i1 %tobool5.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.then6.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3.i.i

if.then6.3.i.i:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call7.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 7, i32 noundef 128) #3
  %call8.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then6.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %call13.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13.i.i)
  %tobool14.not.i.i = icmp eq i8 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %for.inc.3.i.i.for.inc19.i.i_crit_edge, label %if.then15.i.i

for.inc.3.i.i.for.inc19.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc19.i.i

if.then15.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call16.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call17.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc19.i.i

for.inc19.i.i:                                    ; preds = %if.then15.i.i, %for.inc.3.i.i.for.inc19.i.i_crit_edge
  %call13.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13.1.i.i)
  %tobool14.not.1.i.i = icmp eq i8 %call13.1.i.i, 0
  br i1 %tobool14.not.1.i.i, label %for.inc19.i.i.for.inc19.1.i.i_crit_edge, label %if.then15.1.i.i

for.inc19.i.i.for.inc19.1.i.i_crit_edge:          ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc19.1.i.i

if.then15.1.i.i:                                  ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call16.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call17.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc19.1.i.i

for.inc19.1.i.i:                                  ; preds = %if.then15.1.i.i, %for.inc19.i.i.for.inc19.1.i.i_crit_edge
  %call13.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13.2.i.i)
  %tobool14.not.2.i.i = icmp eq i8 %call13.2.i.i, 0
  br i1 %tobool14.not.2.i.i, label %for.inc19.1.i.i.for.inc19.2.i.i_crit_edge, label %if.then15.2.i.i

for.inc19.1.i.i.for.inc19.2.i.i_crit_edge:        ; preds = %for.inc19.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc19.2.i.i

if.then15.2.i.i:                                  ; preds = %for.inc19.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call16.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call17.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc19.2.i.i

for.inc19.2.i.i:                                  ; preds = %if.then15.2.i.i, %for.inc19.1.i.i.for.inc19.2.i.i_crit_edge
  %call13.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13.3.i.i)
  %tobool14.not.3.i.i = icmp eq i8 %call13.3.i.i, 0
  br i1 %tobool14.not.3.i.i, label %for.inc19.2.i.i.if.end22.i.i_crit_edge, label %if.then15.3.i.i

for.inc19.2.i.i.if.end22.i.i_crit_edge:           ; preds = %for.inc19.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22.i.i

if.then15.3.i.i:                                  ; preds = %for.inc19.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call16.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call17.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then15.3.i.i, %for.inc19.2.i.i.if.end22.i.i_crit_edge, %if.then4.i.if.end22.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %tobool23.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end22.i.i.if.end5.i_crit_edge, label %for.body28.preheader.i.i

if.end22.i.i.if.end5.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.i

for.body28.preheader.i.i:                         ; preds = %if.end22.i.i
  %call29.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call29.i.i)
  %tobool30.not.i.i = icmp eq i8 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %for.body28.preheader.i.i.for.inc34.i.i_crit_edge, label %if.then31.i.i

for.body28.preheader.i.i.for.inc34.i.i_crit_edge: ; preds = %for.body28.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc34.i.i

if.then31.i.i:                                    ; preds = %for.body28.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call32.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  br label %for.inc34.i.i

for.inc34.i.i:                                    ; preds = %if.then31.i.i, %for.body28.preheader.i.i.for.inc34.i.i_crit_edge
  %call29.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call29.1.i.i)
  %tobool30.not.1.i.i = icmp eq i8 %call29.1.i.i, 0
  br i1 %tobool30.not.1.i.i, label %for.inc34.i.i.for.inc34.1.i.i_crit_edge, label %if.then31.1.i.i

for.inc34.i.i.for.inc34.1.i.i_crit_edge:          ; preds = %for.inc34.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc34.1.i.i

if.then31.1.i.i:                                  ; preds = %for.inc34.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call32.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  br label %for.inc34.1.i.i

for.inc34.1.i.i:                                  ; preds = %if.then31.1.i.i, %for.inc34.i.i.for.inc34.1.i.i_crit_edge
  %call29.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call29.2.i.i)
  %tobool30.not.2.i.i = icmp eq i8 %call29.2.i.i, 0
  br i1 %tobool30.not.2.i.i, label %for.inc34.1.i.i.if.end5.i_crit_edge, label %if.then31.2.i.i

for.inc34.1.i.i.if.end5.i_crit_edge:              ; preds = %for.inc34.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.i

if.then31.2.i.i:                                  ; preds = %for.inc34.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call32.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then31.2.i.i, %for.inc34.1.i.i.if.end5.i_crit_edge, %if.end22.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %call6.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  %call7.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call8.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 3, i32 noundef 128) #3
  %call9.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.i)
  %tobool10.not.i = icmp eq i8 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end5.i.if.end12.i_crit_edge, label %if.then11.i

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end5.i
  %call.i116.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i116.i)
  %tobool.not.i117.i = icmp eq i8 %call.i116.i, 0
  br i1 %tobool.not.i117.i, label %if.then11.i.if.end12.i_crit_edge, label %for.body.preheader.i.i

if.then11.i.if.end12.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12.i

for.body.preheader.i.i:                           ; preds = %if.then11.i
  %call1.i118.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i118.i)
  %tobool2.not.i.i = icmp eq i8 %call1.i118.i, 0
  br i1 %tobool2.not.i.i, label %for.body.preheader.i.i.for.inc.i120.i_crit_edge, label %if.then3.i.i

for.body.preheader.i.i.for.inc.i120.i_crit_edge:  ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i120.i

if.then3.i.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i119.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call5.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.i120.i

for.inc.i120.i:                                   ; preds = %if.then3.i.i, %for.body.preheader.i.i.for.inc.i120.i_crit_edge
  %call1.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.1.i.i)
  %tobool2.not.1.i.i = icmp eq i8 %call1.1.i.i, 0
  br i1 %tobool2.not.1.i.i, label %for.inc.i120.i.for.inc.1.i122.i_crit_edge, label %if.then3.1.i.i

for.inc.i120.i.for.inc.1.i122.i_crit_edge:        ; preds = %for.inc.i120.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1.i122.i

if.then3.1.i.i:                                   ; preds = %for.inc.i120.i
  call void @__sanitizer_cov_trace_pc() #5
  %call4.1.i121.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call5.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.1.i122.i

for.inc.1.i122.i:                                 ; preds = %if.then3.1.i.i, %for.inc.i120.i.for.inc.1.i122.i_crit_edge
  %call1.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.2.i.i)
  %tobool2.not.2.i.i = icmp eq i8 %call1.2.i.i, 0
  br i1 %tobool2.not.2.i.i, label %for.inc.1.i122.i.for.inc.2.i124.i_crit_edge, label %if.then3.2.i.i

for.inc.1.i122.i.for.inc.2.i124.i_crit_edge:      ; preds = %for.inc.1.i122.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2.i124.i

if.then3.2.i.i:                                   ; preds = %for.inc.1.i122.i
  call void @__sanitizer_cov_trace_pc() #5
  %call4.2.i123.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call5.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.2.i124.i

for.inc.2.i124.i:                                 ; preds = %if.then3.2.i.i, %for.inc.1.i122.i.for.inc.2.i124.i_crit_edge
  %call1.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.3.i.i)
  %tobool2.not.3.i.i = icmp eq i8 %call1.3.i.i, 0
  br i1 %tobool2.not.3.i.i, label %for.inc.2.i124.i.for.inc.3.i126.i_crit_edge, label %if.then3.3.i.i

for.inc.2.i124.i.for.inc.3.i126.i_crit_edge:      ; preds = %for.inc.2.i124.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3.i126.i

if.then3.3.i.i:                                   ; preds = %for.inc.2.i124.i
  call void @__sanitizer_cov_trace_pc() #5
  %call4.3.i125.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call5.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc.3.i126.i

for.inc.3.i126.i:                                 ; preds = %if.then3.3.i.i, %for.inc.2.i124.i.for.inc.3.i126.i_crit_edge
  %call9.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.i.i)
  %tobool10.not.i.i = icmp eq i8 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %for.inc.3.i126.i.for.inc15.i.i_crit_edge, label %if.then11.i.i

for.inc.3.i126.i.for.inc15.i.i_crit_edge:         ; preds = %for.inc.3.i126.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc15.i.i

if.then11.i.i:                                    ; preds = %for.inc.3.i126.i
  call void @__sanitizer_cov_trace_pc() #5
  %call12.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call13.i127.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc15.i.i

for.inc15.i.i:                                    ; preds = %if.then11.i.i, %for.inc.3.i126.i.for.inc15.i.i_crit_edge
  %call9.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.1.i.i)
  %tobool10.not.1.i.i = icmp eq i8 %call9.1.i.i, 0
  br i1 %tobool10.not.1.i.i, label %for.inc15.i.i.for.inc15.1.i.i_crit_edge, label %if.then11.1.i.i

for.inc15.i.i.for.inc15.1.i.i_crit_edge:          ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc15.1.i.i

if.then11.1.i.i:                                  ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call12.1.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call13.1.i128.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc15.1.i.i

for.inc15.1.i.i:                                  ; preds = %if.then11.1.i.i, %for.inc15.i.i.for.inc15.1.i.i_crit_edge
  %call9.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.2.i.i)
  %tobool10.not.2.i.i = icmp eq i8 %call9.2.i.i, 0
  br i1 %tobool10.not.2.i.i, label %for.inc15.1.i.i.for.inc15.2.i.i_crit_edge, label %if.then11.2.i.i

for.inc15.1.i.i.for.inc15.2.i.i_crit_edge:        ; preds = %for.inc15.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc15.2.i.i

if.then11.2.i.i:                                  ; preds = %for.inc15.1.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call12.2.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call13.2.i129.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %for.inc15.2.i.i

for.inc15.2.i.i:                                  ; preds = %if.then11.2.i.i, %for.inc15.1.i.i.for.inc15.2.i.i_crit_edge
  %call9.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.3.i.i)
  %tobool10.not.3.i.i = icmp eq i8 %call9.3.i.i, 0
  br i1 %tobool10.not.3.i.i, label %for.inc15.2.i.i.if.end12.i_crit_edge, label %if.then11.3.i.i

for.inc15.2.i.i.if.end12.i_crit_edge:             ; preds = %for.inc15.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12.i

if.then11.3.i.i:                                  ; preds = %for.inc15.2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call12.3.i.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 6, i32 noundef 128) #3
  %call13.3.i130.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.3.i.i, %for.inc15.2.i.i.if.end12.i_crit_edge, %if.then11.i.if.end12.i_crit_edge, %if.end5.i.if.end12.i_crit_edge
  %call13.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 2, i32 noundef 128) #3
  %call14.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 7, i32 noundef 128) #3
  %call.i131.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i131.i)
  %tobool.not.i132.i = icmp eq i8 %call.i131.i, 0
  br i1 %tobool.not.i132.i, label %if.end12.i.get_delta_q.exit.i_crit_edge, label %if.then.i135.i

if.end12.i.get_delta_q.exit.i_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_delta_q.exit.i

if.then.i135.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i133.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 4, i32 noundef 128) #3
  %call2.i134.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %get_delta_q.exit.i

get_delta_q.exit.i:                               ; preds = %if.then.i135.i, %if.end12.i.get_delta_q.exit.i_crit_edge
  %call.i131.1.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i131.1.i)
  %tobool.not.i132.1.i = icmp eq i8 %call.i131.1.i, 0
  br i1 %tobool.not.i132.1.i, label %get_delta_q.exit.i.get_delta_q.exit.1.i_crit_edge, label %if.then.i135.1.i

get_delta_q.exit.i.get_delta_q.exit.1.i_crit_edge: ; preds = %get_delta_q.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_delta_q.exit.1.i

if.then.i135.1.i:                                 ; preds = %get_delta_q.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i133.1.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 4, i32 noundef 128) #3
  %call2.i134.1.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %get_delta_q.exit.1.i

get_delta_q.exit.1.i:                             ; preds = %if.then.i135.1.i, %get_delta_q.exit.i.get_delta_q.exit.1.i_crit_edge
  %call.i131.2.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i131.2.i)
  %tobool.not.i132.2.i = icmp eq i8 %call.i131.2.i, 0
  br i1 %tobool.not.i132.2.i, label %get_delta_q.exit.1.i.get_delta_q.exit.2.i_crit_edge, label %if.then.i135.2.i

get_delta_q.exit.1.i.get_delta_q.exit.2.i_crit_edge: ; preds = %get_delta_q.exit.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_delta_q.exit.2.i

if.then.i135.2.i:                                 ; preds = %get_delta_q.exit.1.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i133.2.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 4, i32 noundef 128) #3
  %call2.i134.2.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %get_delta_q.exit.2.i

get_delta_q.exit.2.i:                             ; preds = %if.then.i135.2.i, %get_delta_q.exit.1.i.get_delta_q.exit.2.i_crit_edge
  %call.i131.3.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i131.3.i)
  %tobool.not.i132.3.i = icmp eq i8 %call.i131.3.i, 0
  br i1 %tobool.not.i132.3.i, label %get_delta_q.exit.2.i.get_delta_q.exit.3.i_crit_edge, label %if.then.i135.3.i

get_delta_q.exit.2.i.get_delta_q.exit.3.i_crit_edge: ; preds = %get_delta_q.exit.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_delta_q.exit.3.i

if.then.i135.3.i:                                 ; preds = %get_delta_q.exit.2.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i133.3.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 4, i32 noundef 128) #3
  %call2.i134.3.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %get_delta_q.exit.3.i

get_delta_q.exit.3.i:                             ; preds = %if.then.i135.3.i, %get_delta_q.exit.2.i.get_delta_q.exit.3.i_crit_edge
  %call.i131.4.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i131.4.i)
  %tobool.not.i132.4.i = icmp eq i8 %call.i131.4.i, 0
  br i1 %tobool.not.i132.4.i, label %get_delta_q.exit.3.i.get_delta_q.exit.4.i_crit_edge, label %if.then.i135.4.i

get_delta_q.exit.3.i.get_delta_q.exit.4.i_crit_edge: ; preds = %get_delta_q.exit.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_delta_q.exit.4.i

if.then.i135.4.i:                                 ; preds = %get_delta_q.exit.3.i
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i133.4.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 4, i32 noundef 128) #3
  %call2.i134.4.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %get_delta_q.exit.4.i

get_delta_q.exit.4.i:                             ; preds = %if.then.i135.4.i, %get_delta_q.exit.3.i.get_delta_q.exit.4.i_crit_edge
  %145 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %flags, align 8
  %and16.i = and i64 %146, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool17.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %get_delta_q.exit.4.i.if.end19.i_crit_edge

get_delta_q.exit.4.i.if.end19.i_crit_edge:        ; preds = %get_delta_q.exit.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19.i

if.then18.i:                                      ; preds = %get_delta_q.exit.4.i
  %call.i136.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  %call1.i137.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i136.i)
  %tobool.not.i138.i = icmp eq i8 %call.i136.i, 0
  br i1 %tobool.not.i138.i, label %if.then.i140.i, label %if.then18.i.if.end.i.i_crit_edge

if.then18.i.if.end.i.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.then.i140.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i139.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 2, i32 noundef 128) #3
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i140.i, %if.then18.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1.i137.i)
  %tobool3.not.i.i = icmp eq i8 %call1.i137.i, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i.process_ref_frame_info.exit.i_crit_edge

if.end.i.i.process_ref_frame_info.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %process_ref_frame_info.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call5.i141.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 2, i32 noundef 128) #3
  br label %process_ref_frame_info.exit.i

process_ref_frame_info.exit.i:                    ; preds = %if.then4.i.i, %if.end.i.i.process_ref_frame_info.exit.i_crit_edge
  %call7.i142.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  %call8.i143.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %if.end19.i

if.end19.i:                                       ; preds = %process_ref_frame_info.exit.i, %get_delta_q.exit.4.i.if.end19.i_crit_edge
  %call20.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %flags, align 8
  %and22.i = and i64 %148, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22.i)
  %tobool23.not.i = icmp eq i64 %and22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end19.i.if.end26.i_crit_edge

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  %call25.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end19.i.if.end26.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %150, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 234881024) #3, !srcloc !16
  %call.i144.i = tail call i64 @ktime_get() #3
  %add.i.i.i = add i64 %call.i144.i, 1000000
  %151 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %152, i32 552
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %154 = and i32 %153, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp4.i.i = icmp eq i32 %154, 0
  br i1 %cmp4.i.i, label %if.end26.i.cedrus_wait_for.exit.i_crit_edge, label %if.end26.i.land.lhs.true.i.i_crit_edge

if.end26.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end26.i
  br label %land.lhs.true.i.i

if.end26.i.cedrus_wait_for.exit.i_crit_edge:      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_wait_for.exit.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %if.end26.i.land.lhs.true.i.i_crit_edge
  %call4.i146.i = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i146.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call4.i146.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then7.i.i, label %cond.false.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %155 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %156, i32 552
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  br label %cedrus_wait_for.exit.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 2147480) #3
  %159 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i, align 8
  %add.ptr.i147.i = getelementptr i8, ptr %160, i32 552
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147.i) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %162 = and i32 %161, 512
  %cmp.i.i = icmp eq i32 %162, 0
  br i1 %cmp.i.i, label %cond.false.i.i.cedrus_wait_for.exit.i_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i.i

cond.false.i.i.cedrus_wait_for.exit.i_crit_edge:  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_wait_for.exit.i

cedrus_wait_for.exit.i:                           ; preds = %cond.false.i.i.cedrus_wait_for.exit.i_crit_edge, %if.then7.i.i, %if.end26.i.cedrus_wait_for.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %163 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %164, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 117440512) #3, !srcloc !16
  %call28.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call28.i)
  %tobool29.not.i = icmp eq i8 %call28.i, 0
  br i1 %tobool29.not.i, label %cedrus_wait_for.exit.i.if.end32.i_crit_edge, label %if.then30.i

cedrus_wait_for.exit.i.if.end32.i_crit_edge:      ; preds = %cedrus_wait_for.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32.i

if.then30.i:                                      ; preds = %cedrus_wait_for.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call31.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %cedrus_wait_for.exit.i.if.end32.i_crit_edge
  %165 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %flags, align 8
  %and34.i = and i64 %166, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34.i)
  %tobool35.not.i = icmp eq i64 %and34.i, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end32.i.cedrus_read_header.exit_crit_edge

if.end32.i.cedrus_read_header.exit_crit_edge:     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_read_header.exit

if.then36.i:                                      ; preds = %if.end32.i
  %call37.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call38.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call39.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call40.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call40.i)
  %tobool41.not.i = icmp eq i8 %call40.i, 0
  br i1 %tobool41.not.i, label %if.then36.i.if.end47.i_crit_edge, label %if.then42.i

if.then36.i.if.end47.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47.i

if.then42.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #5
  %call43.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call44.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call45.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call46.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then42.i, %if.then36.i.if.end47.i_crit_edge
  %call48.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef 128) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call48.i)
  %tobool49.not.i = icmp eq i8 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end47.i.for.body60.i.preheader_crit_edge, label %if.then50.i

if.end47.i.for.body60.i.preheader_crit_edge:      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body60.i.preheader

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #5
  %call51.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call52.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  %call53.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 8, i32 noundef 128) #3
  br label %for.body60.i.preheader

for.body60.i.preheader:                           ; preds = %if.then50.i, %if.end47.i.for.body60.i.preheader_crit_edge
  br label %for.body60.i

for.body60.i:                                     ; preds = %for.inc67.i.for.body60.i_crit_edge, %for.body60.i.preheader
  %j.0149.i = phi i32 [ %inc68.i, %for.inc67.i.for.body60.i_crit_edge ], [ 0, %for.body60.i.preheader ]
  %arrayidx61.i = getelementptr [2 x [19 x i8]], ptr @k_mv_entropy_update_probs, i32 0, i32 0, i32 %j.0149.i
  %167 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx61.i, align 1
  %conv.i = zext i8 %168 to i32
  %call62.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call62.i)
  %tobool63.not.i = icmp eq i8 %call62.i, 0
  br i1 %tobool63.not.i, label %for.body60.i.for.inc67.i_crit_edge, label %if.then64.i

for.body60.i.for.inc67.i_crit_edge:               ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc67.i

if.then64.i:                                      ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #5
  %call65.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 7, i32 noundef 128) #3
  br label %for.inc67.i

for.inc67.i:                                      ; preds = %if.then64.i, %for.body60.i.for.inc67.i_crit_edge
  %inc68.i = add nuw nsw i32 %j.0149.i, 1
  %exitcond.not.i570 = icmp eq i32 %inc68.i, 19
  br i1 %exitcond.not.i570, label %for.inc67.i.for.body60.1.i_crit_edge, label %for.inc67.i.for.body60.i_crit_edge

for.inc67.i.for.body60.i_crit_edge:               ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body60.i

for.inc67.i.for.body60.1.i_crit_edge:             ; preds = %for.inc67.i
  br label %for.body60.1.i

for.body60.1.i:                                   ; preds = %for.inc67.1.i.for.body60.1.i_crit_edge, %for.inc67.i.for.body60.1.i_crit_edge
  %j.0149.1.i = phi i32 [ %inc68.1.i, %for.inc67.1.i.for.body60.1.i_crit_edge ], [ 0, %for.inc67.i.for.body60.1.i_crit_edge ]
  %arrayidx61.1.i = getelementptr [2 x [19 x i8]], ptr @k_mv_entropy_update_probs, i32 0, i32 1, i32 %j.0149.1.i
  %169 = ptrtoint ptr %arrayidx61.1.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx61.1.i, align 1
  %conv.1.i = zext i8 %170 to i32
  %call62.1.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 1, i32 noundef %conv.1.i) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call62.1.i)
  %tobool63.not.1.i = icmp eq i8 %call62.1.i, 0
  br i1 %tobool63.not.1.i, label %for.body60.1.i.for.inc67.1.i_crit_edge, label %if.then64.1.i

for.body60.1.i.for.inc67.1.i_crit_edge:           ; preds = %for.body60.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc67.1.i

if.then64.1.i:                                    ; preds = %for.body60.1.i
  call void @__sanitizer_cov_trace_pc() #5
  %call65.1.i = tail call fastcc zeroext i8 @read_bits(ptr noundef %8, i32 noundef 7, i32 noundef 128) #3
  br label %for.inc67.1.i

for.inc67.1.i:                                    ; preds = %if.then64.1.i, %for.body60.1.i.for.inc67.1.i_crit_edge
  %inc68.1.i = add nuw nsw i32 %j.0149.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc68.1.i, 19
  br i1 %exitcond.1.not.i, label %for.inc67.1.i.cedrus_read_header.exit_crit_edge, label %for.inc67.1.i.for.body60.1.i_crit_edge

for.inc67.1.i.for.body60.1.i_crit_edge:           ; preds = %for.inc67.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body60.1.i

for.inc67.1.i.cedrus_read_header.exit_crit_edge:  ; preds = %for.inc67.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_read_header.exit

cedrus_read_header.exit:                          ; preds = %for.inc67.1.i.cedrus_read_header.exit_crit_edge, %if.end32.i.cedrus_read_header.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %171 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base.i, align 8
  %add.ptr.i572 = getelementptr i8, ptr %172, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i572, i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %173 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base.i, align 8
  %add.ptr.i574 = getelementptr i8, ptr %174, i32 608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i574, i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %175 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base.i, align 8
  %add.ptr.i576 = getelementptr i8, ptr %176, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i576, i32 0) #3, !srcloc !16
  %quant = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 2
  %uv_ac_delta = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 2, i32 5
  %177 = ptrtoint ptr %uv_ac_delta to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %uv_ac_delta, align 1
  %conv125533 = zext i8 %178 to i32
  %shl126 = shl i32 %conv125533, 27
  %uv_dc_delta = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 2, i32 4
  %179 = ptrtoint ptr %uv_dc_delta to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %uv_dc_delta, align 4
  %conv130 = sext i8 %180 to i32
  %shl131 = shl nsw i32 %conv130, 22
  %and132 = and i32 %shl131, 130023424
  %or133 = or i32 %and132, %shl126
  %y2_ac_delta = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 2, i32 3
  %181 = ptrtoint ptr %y2_ac_delta to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %y2_ac_delta, align 1
  %conv135 = sext i8 %182 to i32
  %shl136 = shl nsw i32 %conv135, 17
  %and137 = and i32 %shl136, 4063232
  %or138 = or i32 %or133, %and137
  %y2_dc_delta = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 2, i32 2
  %183 = ptrtoint ptr %y2_dc_delta to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %y2_dc_delta, align 2
  %conv140 = sext i8 %184 to i32
  %shl141 = shl nsw i32 %conv140, 12
  %and142 = and i32 %shl141, 126976
  %or143 = or i32 %or138, %and142
  %y_dc_delta = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 2, i32 1
  %185 = ptrtoint ptr %y_dc_delta to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %y_dc_delta, align 1
  %conv145 = sext i8 %186 to i32
  %shl146 = shl nsw i32 %conv145, 7
  %and147 = and i32 %shl146, 3968
  %or148 = or i32 %or143, %and147
  %187 = ptrtoint ptr %quant to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %quant, align 8
  %189 = and i8 %188, 127
  %and152 = zext i8 %189 to i32
  %or153 = or i32 %or148, %and152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %190 = tail call i32 @llvm.bswap.i32(i32 %or153) #3
  %191 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i, align 8
  %add.ptr.i578 = getelementptr i8, ptr %192, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i578, i32 %190) #3, !srcloc !16
  %width = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 5
  %193 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %width, align 4
  %conv154 = zext i16 %194 to i32
  %sub156 = shl nuw nsw i32 %conv154, 4
  %195 = add nuw nsw i32 %sub156, 240
  %and158 = and i32 %195, 65280
  %height = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 6
  %196 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %height, align 2
  %conv160 = zext i16 %197 to i32
  %sub162 = add nuw nsw i32 %conv160, 15
  %div163535 = lshr i32 %sub162, 4
  %and165 = and i32 %div163535, 255
  %or166 = or i32 %and165, %and158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %198 = tail call i32 @llvm.bswap.i32(i32 %or166) #3
  %199 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base.i, align 8
  %add.ptr.i580 = getelementptr i8, ptr %200, i32 600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i580, i32 %198) #3, !srcloc !16
  %201 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %width, align 4
  %conv168 = zext i16 %202 to i32
  %shl169 = shl nuw i32 %conv168, 16
  %and170 = and i32 %shl169, 268369920
  %203 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %height, align 2
  %205 = and i16 %204, 4095
  %and175 = zext i16 %205 to i32
  %or176 = or i32 %and170, %and175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %206 = tail call i32 @llvm.bswap.i32(i32 %or176) #3
  %207 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base.i, align 8
  %add.ptr.i582 = getelementptr i8, ptr %208, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i582, i32 %206) #3, !srcloc !16
  %arrayidx = getelementptr [4 x i8], ptr %2, i32 0, i32 3
  %209 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx, align 1
  %conv178536 = zext i8 %210 to i32
  %shl179 = shl nuw i32 %conv178536, 24
  %arrayidx184 = getelementptr [4 x i8], ptr %2, i32 0, i32 2
  %211 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx184, align 2
  %conv185 = sext i8 %212 to i32
  %shl186 = shl nsw i32 %conv185, 16
  %and187 = and i32 %shl186, 16711680
  %or188 = or i32 %and187, %shl179
  %arrayidx191 = getelementptr [4 x i8], ptr %2, i32 0, i32 1
  %213 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx191, align 1
  %conv192 = sext i8 %214 to i32
  %shl193 = shl nsw i32 %conv192, 8
  %and194 = and i32 %shl193, 65280
  %or195 = or i32 %or188, %and194
  %215 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %2, align 8
  %conv199537 = zext i8 %216 to i32
  %or202 = or i32 %or195, %conv199537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %217 = tail call i32 @llvm.bswap.i32(i32 %or202) #3
  %218 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base.i, align 8
  %add.ptr.i584 = getelementptr i8, ptr %219, i32 752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i584, i32 %217) #3, !srcloc !16
  %lf_update = getelementptr inbounds %struct.v4l2_vp8_segment, ptr %2, i32 0, i32 1
  %arrayidx204 = getelementptr %struct.v4l2_vp8_segment, ptr %2, i32 0, i32 1, i32 3
  %220 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx204, align 1
  %conv205538 = zext i8 %221 to i32
  %shl206 = shl nuw i32 %conv205538, 24
  %arrayidx211 = getelementptr %struct.v4l2_vp8_segment, ptr %2, i32 0, i32 1, i32 2
  %222 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx211, align 2
  %conv212 = sext i8 %223 to i32
  %shl213 = shl nsw i32 %conv212, 16
  %and214 = and i32 %shl213, 16711680
  %or215 = or i32 %and214, %shl206
  %arrayidx218 = getelementptr %struct.v4l2_vp8_segment, ptr %2, i32 0, i32 1, i32 1
  %224 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx218, align 1
  %conv219 = sext i8 %225 to i32
  %shl220 = shl nsw i32 %conv219, 8
  %and221 = and i32 %shl220, 65280
  %or222 = or i32 %or215, %and221
  %226 = ptrtoint ptr %lf_update to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %lf_update, align 4
  %conv226539 = zext i8 %227 to i32
  %or229 = or i32 %or222, %conv226539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %228 = tail call i32 @llvm.bswap.i32(i32 %or229) #3
  %229 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base.i, align 8
  %add.ptr.i586 = getelementptr i8, ptr %230, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i586, i32 %228) #3, !srcloc !16
  %arrayidx231 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 0, i32 3
  %231 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx231, align 1
  %conv232540 = zext i8 %232 to i32
  %shl233 = shl nuw i32 %conv232540, 24
  %and234 = and i32 %shl233, 2130706432
  %arrayidx238 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 0, i32 2
  %233 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx238, align 2
  %conv239 = sext i8 %234 to i32
  %shl240 = shl nsw i32 %conv239, 16
  %and241 = and i32 %shl240, 8323072
  %or242 = or i32 %and241, %and234
  %arrayidx245 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 0, i32 1
  %235 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx245, align 1
  %conv246 = sext i8 %236 to i32
  %shl247 = shl nsw i32 %conv246, 8
  %and248 = and i32 %shl247, 32512
  %or249 = or i32 %or242, %and248
  %237 = ptrtoint ptr %lf to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %lf, align 8
  %239 = and i8 %238, 127
  %and255 = zext i8 %239 to i32
  %or256 = or i32 %or249, %and255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %240 = tail call i32 @llvm.bswap.i32(i32 %or256) #3
  %241 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %base.i, align 8
  %add.ptr.i588 = getelementptr i8, ptr %242, i32 760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i588, i32 %240) #3, !srcloc !16
  %mb_mode_delta = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 1
  %arrayidx258 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 1, i32 3
  %243 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx258, align 1
  %conv259542 = zext i8 %244 to i32
  %shl260 = shl nuw i32 %conv259542, 24
  %and261 = and i32 %shl260, 2130706432
  %arrayidx265 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 1, i32 2
  %245 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx265, align 2
  %conv266 = sext i8 %246 to i32
  %shl267 = shl nsw i32 %conv266, 16
  %and268 = and i32 %shl267, 8323072
  %or269 = or i32 %and268, %and261
  %arrayidx272 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 1, i32 1, i32 1
  %247 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx272, align 1
  %conv273 = sext i8 %248 to i32
  %shl274 = shl nsw i32 %conv273, 8
  %and275 = and i32 %shl274, 32512
  %or276 = or i32 %or269, %and275
  %249 = ptrtoint ptr %mb_mode_delta to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %mb_mode_delta, align 4
  %251 = and i8 %250, 127
  %and282 = zext i8 %251 to i32
  %or283 = or i32 %or276, %and282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %252 = tail call i32 @llvm.bswap.i32(i32 %or283) #3
  %253 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %base.i, align 8
  %add.ptr.i590 = getelementptr i8, ptr %254, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i590, i32 %252) #3, !srcloc !16
  %dst = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 1
  %255 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %cmp.i = icmp slt i32 %258, 0
  br i1 %cmp.i, label %cedrus_read_header.exit.cedrus_dst_buf_addr.exit_crit_edge, label %if.end.i593

cedrus_read_header.exit.cedrus_dst_buf_addr.exit_crit_edge: ; preds = %cedrus_read_header.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit

if.end.i593:                                      ; preds = %cedrus_read_header.exit
  %259 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %m2m_ctx, align 4
  %call.i591 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %260, i32 noundef 1) #3
  %tobool.not.i592 = icmp eq ptr %call.i591, null
  br i1 %tobool.not.i592, label %if.end.i593.cedrus_dst_buf_addr.exit_crit_edge, label %if.then1.i

if.end.i593.cedrus_dst_buf_addr.exit_crit_edge:   ; preds = %if.end.i593
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit

if.then1.i:                                       ; preds = %if.end.i593
  %num_buffers.i.i = getelementptr inbounds %struct.vb2_queue, ptr %call.i591, i32 0, i32 21
  %261 = ptrtoint ptr %num_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %num_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %258)
  %cmp.i.i594 = icmp ugt i32 %262, %258
  br i1 %cmp.i.i594, label %if.end3.i, label %if.then1.i.cedrus_dst_buf_addr.exit_crit_edge

if.then1.i.cedrus_dst_buf_addr.exit_crit_edge:    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit

if.end3.i:                                        ; preds = %if.then1.i
  %arrayidx.i.i = getelementptr %struct.vb2_queue, ptr %call.i591, i32 0, i32 20, i32 %258
  %263 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i = icmp eq ptr %264, null
  br i1 %tobool4.not.i, label %if.end3.i.cedrus_dst_buf_addr.exit_crit_edge, label %cond.true.i

if.end3.i.cedrus_dst_buf_addr.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit

cond.true.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %264, i32 noundef 0) #3
  %265 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %call.i.i.i, align 4
  br label %cedrus_dst_buf_addr.exit

cedrus_dst_buf_addr.exit:                         ; preds = %cond.true.i, %if.end3.i.cedrus_dst_buf_addr.exit_crit_edge, %if.then1.i.cedrus_dst_buf_addr.exit_crit_edge, %if.end.i593.cedrus_dst_buf_addr.exit_crit_edge, %cedrus_read_header.exit.cedrus_dst_buf_addr.exit_crit_edge
  %retval.0.i595 = phi i32 [ 0, %cedrus_read_header.exit.cedrus_dst_buf_addr.exit_crit_edge ], [ %266, %cond.true.i ], [ 0, %if.end3.i.cedrus_dst_buf_addr.exit_crit_edge ], [ 0, %if.end.i593.cedrus_dst_buf_addr.exit_crit_edge ], [ 0, %if.then1.i.cedrus_dst_buf_addr.exit_crit_edge ]
  %267 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dst, align 4
  %index288 = getelementptr inbounds %struct.vb2_buffer, ptr %268, i32 0, i32 1
  %269 = ptrtoint ptr %index288 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %index288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %cmp.i596 = icmp slt i32 %270, 0
  br i1 %cmp.i596, label %cedrus_dst_buf_addr.exit.cedrus_dst_buf_addr.exit613_crit_edge, label %if.end.i600

cedrus_dst_buf_addr.exit.cedrus_dst_buf_addr.exit613_crit_edge: ; preds = %cedrus_dst_buf_addr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit613

if.end.i600:                                      ; preds = %cedrus_dst_buf_addr.exit
  %271 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %m2m_ctx, align 4
  %call.i598 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %272, i32 noundef 1) #3
  %tobool.not.i599 = icmp eq ptr %call.i598, null
  br i1 %tobool.not.i599, label %if.end.i600.cedrus_dst_buf_addr.exit613_crit_edge, label %if.then1.i603

if.end.i600.cedrus_dst_buf_addr.exit613_crit_edge: ; preds = %if.end.i600
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit613

if.then1.i603:                                    ; preds = %if.end.i600
  %num_buffers.i.i601 = getelementptr inbounds %struct.vb2_queue, ptr %call.i598, i32 0, i32 21
  %273 = ptrtoint ptr %num_buffers.i.i601 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %num_buffers.i.i601, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %270)
  %cmp.i.i602 = icmp ugt i32 %274, %270
  br i1 %cmp.i.i602, label %if.end3.i606, label %if.then1.i603.cedrus_dst_buf_addr.exit613_crit_edge

if.then1.i603.cedrus_dst_buf_addr.exit613_crit_edge: ; preds = %if.then1.i603
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit613

if.end3.i606:                                     ; preds = %if.then1.i603
  %arrayidx.i.i604 = getelementptr %struct.vb2_queue, ptr %call.i598, i32 0, i32 20, i32 %270
  %275 = ptrtoint ptr %arrayidx.i.i604 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %arrayidx.i.i604, align 4
  %tobool4.not.i605 = icmp eq ptr %276, null
  br i1 %tobool4.not.i605, label %if.end3.i606.cedrus_dst_buf_addr.exit613_crit_edge, label %cond.true.i609

if.end3.i606.cedrus_dst_buf_addr.exit613_crit_edge: ; preds = %if.end3.i606
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit613

cond.true.i609:                                   ; preds = %if.end3.i606
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i608 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %276, i32 noundef 0) #3
  %277 = ptrtoint ptr %call.i.i.i608 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %call.i.i.i608, align 4
  %bytesperline.i.i610 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %279 = ptrtoint ptr %bytesperline.i.i610 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %bytesperline.i.i610, align 4
  %height.i.i611 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %281 = ptrtoint ptr %height.i.i611 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %height.i.i611, align 4
  %mul1.i.i = mul i32 %282, %280
  %add.i.i = add i32 %mul1.i.i, %278
  br label %cedrus_dst_buf_addr.exit613

cedrus_dst_buf_addr.exit613:                      ; preds = %cond.true.i609, %if.end3.i606.cedrus_dst_buf_addr.exit613_crit_edge, %if.then1.i603.cedrus_dst_buf_addr.exit613_crit_edge, %if.end.i600.cedrus_dst_buf_addr.exit613_crit_edge, %cedrus_dst_buf_addr.exit.cedrus_dst_buf_addr.exit613_crit_edge
  %retval.0.i612 = phi i32 [ 0, %cedrus_dst_buf_addr.exit.cedrus_dst_buf_addr.exit613_crit_edge ], [ %add.i.i, %cond.true.i609 ], [ 0, %if.end3.i606.cedrus_dst_buf_addr.exit613_crit_edge ], [ 0, %if.end.i600.cedrus_dst_buf_addr.exit613_crit_edge ], [ 0, %if.then1.i603.cedrus_dst_buf_addr.exit613_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %283 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i595) #3
  %284 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %base.i, align 8
  %add.ptr.i615 = getelementptr i8, ptr %285, i32 684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i615, i32 %283) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %286 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i612) #3
  %287 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %base.i, align 8
  %add.ptr.i617 = getelementptr i8, ptr %288, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i617, i32 %286) #3, !srcloc !16
  %last_frame_ts = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 18
  %289 = ptrtoint ptr %last_frame_ts to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %last_frame_ts, align 8
  %call290 = tail call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx, i64 noundef %290, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call290)
  %cmp291 = icmp sgt i32 %call290, -1
  br i1 %cmp291, label %if.end.i622, label %if.else

if.end.i622:                                      ; preds = %cedrus_dst_buf_addr.exit613
  %291 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %m2m_ctx, align 4
  %call.i620 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %292, i32 noundef 1) #3
  %tobool.not.i621 = icmp eq ptr %call.i620, null
  br i1 %tobool.not.i621, label %if.end.i622.if.end.i641_crit_edge, label %if.then1.i625

if.end.i622.if.end.i641_crit_edge:                ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i641

if.then1.i625:                                    ; preds = %if.end.i622
  %num_buffers.i.i623 = getelementptr inbounds %struct.vb2_queue, ptr %call.i620, i32 0, i32 21
  %293 = ptrtoint ptr %num_buffers.i.i623 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %num_buffers.i.i623, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %294, i32 %call290)
  %cmp.i.i624 = icmp ugt i32 %294, %call290
  br i1 %cmp.i.i624, label %if.end3.i628, label %if.then1.i625.if.end.i641_crit_edge

if.then1.i625.if.end.i641_crit_edge:              ; preds = %if.then1.i625
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i641

if.end3.i628:                                     ; preds = %if.then1.i625
  %arrayidx.i.i626 = getelementptr %struct.vb2_queue, ptr %call.i620, i32 0, i32 20, i32 %call290
  %295 = ptrtoint ptr %arrayidx.i.i626 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx.i.i626, align 4
  %tobool4.not.i627 = icmp eq ptr %296, null
  br i1 %tobool4.not.i627, label %if.end3.i628.if.end.i641_crit_edge, label %cond.true.i631

if.end3.i628.if.end.i641_crit_edge:               ; preds = %if.end3.i628
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i641

cond.true.i631:                                   ; preds = %if.end3.i628
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i630 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %296, i32 noundef 0) #3
  %297 = ptrtoint ptr %call.i.i.i630 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %call.i.i.i630, align 4
  br label %if.end.i641

if.end.i641:                                      ; preds = %cond.true.i631, %if.end3.i628.if.end.i641_crit_edge, %if.then1.i625.if.end.i641_crit_edge, %if.end.i622.if.end.i641_crit_edge
  %retval.0.i635 = phi i32 [ %298, %cond.true.i631 ], [ 0, %if.end3.i628.if.end.i641_crit_edge ], [ 0, %if.end.i622.if.end.i641_crit_edge ], [ 0, %if.then1.i625.if.end.i641_crit_edge ]
  %299 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %m2m_ctx, align 4
  %call.i639 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %300, i32 noundef 1) #3
  %tobool.not.i640 = icmp eq ptr %call.i639, null
  br i1 %tobool.not.i640, label %if.end.i641.cedrus_dst_buf_addr.exit656_crit_edge, label %if.then1.i644

if.end.i641.cedrus_dst_buf_addr.exit656_crit_edge: ; preds = %if.end.i641
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit656

if.then1.i644:                                    ; preds = %if.end.i641
  %num_buffers.i.i642 = getelementptr inbounds %struct.vb2_queue, ptr %call.i639, i32 0, i32 21
  %301 = ptrtoint ptr %num_buffers.i.i642 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %num_buffers.i.i642, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %302, i32 %call290)
  %cmp.i.i643 = icmp ugt i32 %302, %call290
  br i1 %cmp.i.i643, label %if.end3.i647, label %if.then1.i644.cedrus_dst_buf_addr.exit656_crit_edge

if.then1.i644.cedrus_dst_buf_addr.exit656_crit_edge: ; preds = %if.then1.i644
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit656

if.end3.i647:                                     ; preds = %if.then1.i644
  %arrayidx.i.i645 = getelementptr %struct.vb2_queue, ptr %call.i639, i32 0, i32 20, i32 %call290
  %303 = ptrtoint ptr %arrayidx.i.i645 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %arrayidx.i.i645, align 4
  %tobool4.not.i646 = icmp eq ptr %304, null
  br i1 %tobool4.not.i646, label %if.end3.i647.cedrus_dst_buf_addr.exit656_crit_edge, label %cond.true.i650

if.end3.i647.cedrus_dst_buf_addr.exit656_crit_edge: ; preds = %if.end3.i647
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit656

cond.true.i650:                                   ; preds = %if.end3.i647
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i649 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %304, i32 noundef 0) #3
  %305 = ptrtoint ptr %call.i.i.i649 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %call.i.i.i649, align 4
  %bytesperline.i.i651 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %307 = ptrtoint ptr %bytesperline.i.i651 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %bytesperline.i.i651, align 4
  %height.i.i652 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %309 = ptrtoint ptr %height.i.i652 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %height.i.i652, align 4
  %mul1.i.i653 = mul i32 %310, %308
  %add.i.i654 = add i32 %mul1.i.i653, %306
  br label %cedrus_dst_buf_addr.exit656

cedrus_dst_buf_addr.exit656:                      ; preds = %cond.true.i650, %if.end3.i647.cedrus_dst_buf_addr.exit656_crit_edge, %if.then1.i644.cedrus_dst_buf_addr.exit656_crit_edge, %if.end.i641.cedrus_dst_buf_addr.exit656_crit_edge
  %retval.0.i655 = phi i32 [ %add.i.i654, %cond.true.i650 ], [ 0, %if.end3.i647.cedrus_dst_buf_addr.exit656_crit_edge ], [ 0, %if.end.i641.cedrus_dst_buf_addr.exit656_crit_edge ], [ 0, %if.then1.i644.cedrus_dst_buf_addr.exit656_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %311 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i635) #3
  %312 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %base.i, align 8
  %add.ptr.i658 = getelementptr i8, ptr %313, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i658, i32 %311) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %314 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i655) #3
  %315 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %base.i, align 8
  %add.ptr.i660 = getelementptr i8, ptr %316, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i660, i32 %314) #3, !srcloc !16
  br label %if.end296

if.else:                                          ; preds = %cedrus_dst_buf_addr.exit613
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %317 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %base.i, align 8
  %add.ptr.i662 = getelementptr i8, ptr %318, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i662, i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %319 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %base.i, align 8
  %add.ptr.i664 = getelementptr i8, ptr %320, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i664, i32 0) #3, !srcloc !16
  br label %if.end296

if.end296:                                        ; preds = %if.else, %cedrus_dst_buf_addr.exit656
  %golden_frame_ts = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 19
  %321 = ptrtoint ptr %golden_frame_ts to i32
  call void @__asan_load8_noabort(i32 %321)
  %322 = load i64, ptr %golden_frame_ts, align 8
  %call297 = tail call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx, i64 noundef %322, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call297)
  %cmp298 = icmp sgt i32 %call297, -1
  br i1 %cmp298, label %if.end.i669, label %if.else303

if.end.i669:                                      ; preds = %if.end296
  %323 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %m2m_ctx, align 4
  %call.i667 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %324, i32 noundef 1) #3
  %tobool.not.i668 = icmp eq ptr %call.i667, null
  br i1 %tobool.not.i668, label %if.end.i669.if.end.i688_crit_edge, label %if.then1.i672

if.end.i669.if.end.i688_crit_edge:                ; preds = %if.end.i669
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i688

if.then1.i672:                                    ; preds = %if.end.i669
  %num_buffers.i.i670 = getelementptr inbounds %struct.vb2_queue, ptr %call.i667, i32 0, i32 21
  %325 = ptrtoint ptr %num_buffers.i.i670 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %num_buffers.i.i670, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %326, i32 %call297)
  %cmp.i.i671 = icmp ugt i32 %326, %call297
  br i1 %cmp.i.i671, label %if.end3.i675, label %if.then1.i672.if.end.i688_crit_edge

if.then1.i672.if.end.i688_crit_edge:              ; preds = %if.then1.i672
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i688

if.end3.i675:                                     ; preds = %if.then1.i672
  %arrayidx.i.i673 = getelementptr %struct.vb2_queue, ptr %call.i667, i32 0, i32 20, i32 %call297
  %327 = ptrtoint ptr %arrayidx.i.i673 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %arrayidx.i.i673, align 4
  %tobool4.not.i674 = icmp eq ptr %328, null
  br i1 %tobool4.not.i674, label %if.end3.i675.if.end.i688_crit_edge, label %cond.true.i678

if.end3.i675.if.end.i688_crit_edge:               ; preds = %if.end3.i675
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i688

cond.true.i678:                                   ; preds = %if.end3.i675
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i677 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %328, i32 noundef 0) #3
  %329 = ptrtoint ptr %call.i.i.i677 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %call.i.i.i677, align 4
  br label %if.end.i688

if.end.i688:                                      ; preds = %cond.true.i678, %if.end3.i675.if.end.i688_crit_edge, %if.then1.i672.if.end.i688_crit_edge, %if.end.i669.if.end.i688_crit_edge
  %retval.0.i682 = phi i32 [ %330, %cond.true.i678 ], [ 0, %if.end3.i675.if.end.i688_crit_edge ], [ 0, %if.end.i669.if.end.i688_crit_edge ], [ 0, %if.then1.i672.if.end.i688_crit_edge ]
  %331 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %m2m_ctx, align 4
  %call.i686 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %332, i32 noundef 1) #3
  %tobool.not.i687 = icmp eq ptr %call.i686, null
  br i1 %tobool.not.i687, label %if.end.i688.cedrus_dst_buf_addr.exit703_crit_edge, label %if.then1.i691

if.end.i688.cedrus_dst_buf_addr.exit703_crit_edge: ; preds = %if.end.i688
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit703

if.then1.i691:                                    ; preds = %if.end.i688
  %num_buffers.i.i689 = getelementptr inbounds %struct.vb2_queue, ptr %call.i686, i32 0, i32 21
  %333 = ptrtoint ptr %num_buffers.i.i689 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %num_buffers.i.i689, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %call297)
  %cmp.i.i690 = icmp ugt i32 %334, %call297
  br i1 %cmp.i.i690, label %if.end3.i694, label %if.then1.i691.cedrus_dst_buf_addr.exit703_crit_edge

if.then1.i691.cedrus_dst_buf_addr.exit703_crit_edge: ; preds = %if.then1.i691
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit703

if.end3.i694:                                     ; preds = %if.then1.i691
  %arrayidx.i.i692 = getelementptr %struct.vb2_queue, ptr %call.i686, i32 0, i32 20, i32 %call297
  %335 = ptrtoint ptr %arrayidx.i.i692 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %arrayidx.i.i692, align 4
  %tobool4.not.i693 = icmp eq ptr %336, null
  br i1 %tobool4.not.i693, label %if.end3.i694.cedrus_dst_buf_addr.exit703_crit_edge, label %cond.true.i697

if.end3.i694.cedrus_dst_buf_addr.exit703_crit_edge: ; preds = %if.end3.i694
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit703

cond.true.i697:                                   ; preds = %if.end3.i694
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i696 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %336, i32 noundef 0) #3
  %337 = ptrtoint ptr %call.i.i.i696 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %call.i.i.i696, align 4
  %bytesperline.i.i698 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %339 = ptrtoint ptr %bytesperline.i.i698 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %bytesperline.i.i698, align 4
  %height.i.i699 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %341 = ptrtoint ptr %height.i.i699 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %height.i.i699, align 4
  %mul1.i.i700 = mul i32 %342, %340
  %add.i.i701 = add i32 %mul1.i.i700, %338
  br label %cedrus_dst_buf_addr.exit703

cedrus_dst_buf_addr.exit703:                      ; preds = %cond.true.i697, %if.end3.i694.cedrus_dst_buf_addr.exit703_crit_edge, %if.then1.i691.cedrus_dst_buf_addr.exit703_crit_edge, %if.end.i688.cedrus_dst_buf_addr.exit703_crit_edge
  %retval.0.i702 = phi i32 [ %add.i.i701, %cond.true.i697 ], [ 0, %if.end3.i694.cedrus_dst_buf_addr.exit703_crit_edge ], [ 0, %if.end.i688.cedrus_dst_buf_addr.exit703_crit_edge ], [ 0, %if.then1.i691.cedrus_dst_buf_addr.exit703_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %343 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i682) #3
  %344 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %base.i, align 8
  %add.ptr.i705 = getelementptr i8, ptr %345, i32 692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i705, i32 %343) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %346 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i702) #3
  %347 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %base.i, align 8
  %add.ptr.i707 = getelementptr i8, ptr %348, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i707, i32 %346) #3, !srcloc !16
  br label %if.end304

if.else303:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %349 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %base.i, align 8
  %add.ptr.i709 = getelementptr i8, ptr %350, i32 692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i709, i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %351 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %base.i, align 8
  %add.ptr.i711 = getelementptr i8, ptr %352, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i711, i32 0) #3, !srcloc !16
  br label %if.end304

if.end304:                                        ; preds = %if.else303, %cedrus_dst_buf_addr.exit703
  %alt_frame_ts = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %2, i32 0, i32 20
  %353 = ptrtoint ptr %alt_frame_ts to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %alt_frame_ts, align 8
  %call305 = tail call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx, i64 noundef %354, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call305)
  %cmp306 = icmp sgt i32 %call305, -1
  br i1 %cmp306, label %if.end.i716, label %if.else311

if.end.i716:                                      ; preds = %if.end304
  %355 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %m2m_ctx, align 4
  %call.i714 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %356, i32 noundef 1) #3
  %tobool.not.i715 = icmp eq ptr %call.i714, null
  br i1 %tobool.not.i715, label %if.end.i716.if.end.i735_crit_edge, label %if.then1.i719

if.end.i716.if.end.i735_crit_edge:                ; preds = %if.end.i716
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i735

if.then1.i719:                                    ; preds = %if.end.i716
  %num_buffers.i.i717 = getelementptr inbounds %struct.vb2_queue, ptr %call.i714, i32 0, i32 21
  %357 = ptrtoint ptr %num_buffers.i.i717 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %num_buffers.i.i717, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %358, i32 %call305)
  %cmp.i.i718 = icmp ugt i32 %358, %call305
  br i1 %cmp.i.i718, label %if.end3.i722, label %if.then1.i719.if.end.i735_crit_edge

if.then1.i719.if.end.i735_crit_edge:              ; preds = %if.then1.i719
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i735

if.end3.i722:                                     ; preds = %if.then1.i719
  %arrayidx.i.i720 = getelementptr %struct.vb2_queue, ptr %call.i714, i32 0, i32 20, i32 %call305
  %359 = ptrtoint ptr %arrayidx.i.i720 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %arrayidx.i.i720, align 4
  %tobool4.not.i721 = icmp eq ptr %360, null
  br i1 %tobool4.not.i721, label %if.end3.i722.if.end.i735_crit_edge, label %cond.true.i725

if.end3.i722.if.end.i735_crit_edge:               ; preds = %if.end3.i722
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i735

cond.true.i725:                                   ; preds = %if.end3.i722
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i724 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %360, i32 noundef 0) #3
  %361 = ptrtoint ptr %call.i.i.i724 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %call.i.i.i724, align 4
  br label %if.end.i735

if.end.i735:                                      ; preds = %cond.true.i725, %if.end3.i722.if.end.i735_crit_edge, %if.then1.i719.if.end.i735_crit_edge, %if.end.i716.if.end.i735_crit_edge
  %retval.0.i729 = phi i32 [ %362, %cond.true.i725 ], [ 0, %if.end3.i722.if.end.i735_crit_edge ], [ 0, %if.end.i716.if.end.i735_crit_edge ], [ 0, %if.then1.i719.if.end.i735_crit_edge ]
  %363 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %m2m_ctx, align 4
  %call.i733 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %364, i32 noundef 1) #3
  %tobool.not.i734 = icmp eq ptr %call.i733, null
  br i1 %tobool.not.i734, label %if.end.i735.cedrus_dst_buf_addr.exit750_crit_edge, label %if.then1.i738

if.end.i735.cedrus_dst_buf_addr.exit750_crit_edge: ; preds = %if.end.i735
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit750

if.then1.i738:                                    ; preds = %if.end.i735
  %num_buffers.i.i736 = getelementptr inbounds %struct.vb2_queue, ptr %call.i733, i32 0, i32 21
  %365 = ptrtoint ptr %num_buffers.i.i736 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %num_buffers.i.i736, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %366, i32 %call305)
  %cmp.i.i737 = icmp ugt i32 %366, %call305
  br i1 %cmp.i.i737, label %if.end3.i741, label %if.then1.i738.cedrus_dst_buf_addr.exit750_crit_edge

if.then1.i738.cedrus_dst_buf_addr.exit750_crit_edge: ; preds = %if.then1.i738
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit750

if.end3.i741:                                     ; preds = %if.then1.i738
  %arrayidx.i.i739 = getelementptr %struct.vb2_queue, ptr %call.i733, i32 0, i32 20, i32 %call305
  %367 = ptrtoint ptr %arrayidx.i.i739 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %arrayidx.i.i739, align 4
  %tobool4.not.i740 = icmp eq ptr %368, null
  br i1 %tobool4.not.i740, label %if.end3.i741.cedrus_dst_buf_addr.exit750_crit_edge, label %cond.true.i744

if.end3.i741.cedrus_dst_buf_addr.exit750_crit_edge: ; preds = %if.end3.i741
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit750

cond.true.i744:                                   ; preds = %if.end3.i741
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i743 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %368, i32 noundef 0) #3
  %369 = ptrtoint ptr %call.i.i.i743 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %call.i.i.i743, align 4
  %bytesperline.i.i745 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %371 = ptrtoint ptr %bytesperline.i.i745 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %bytesperline.i.i745, align 4
  %height.i.i746 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %373 = ptrtoint ptr %height.i.i746 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %height.i.i746, align 4
  %mul1.i.i747 = mul i32 %374, %372
  %add.i.i748 = add i32 %mul1.i.i747, %370
  br label %cedrus_dst_buf_addr.exit750

cedrus_dst_buf_addr.exit750:                      ; preds = %cond.true.i744, %if.end3.i741.cedrus_dst_buf_addr.exit750_crit_edge, %if.then1.i738.cedrus_dst_buf_addr.exit750_crit_edge, %if.end.i735.cedrus_dst_buf_addr.exit750_crit_edge
  %retval.0.i749 = phi i32 [ %add.i.i748, %cond.true.i744 ], [ 0, %if.end3.i741.cedrus_dst_buf_addr.exit750_crit_edge ], [ 0, %if.end.i735.cedrus_dst_buf_addr.exit750_crit_edge ], [ 0, %if.then1.i738.cedrus_dst_buf_addr.exit750_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %375 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i729) #3
  %376 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %base.i, align 8
  %add.ptr.i752 = getelementptr i8, ptr %377, i32 744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i752, i32 %375) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %378 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i749) #3
  %379 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %base.i, align 8
  %add.ptr.i754 = getelementptr i8, ptr %380, i32 748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i754, i32 %378) #3, !srcloc !16
  br label %if.end312

if.else311:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %381 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %base.i, align 8
  %add.ptr.i756 = getelementptr i8, ptr %382, i32 744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i756, i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %383 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %base.i, align 8
  %add.ptr.i758 = getelementptr i8, ptr %384, i32 748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i758, i32 0) #3, !srcloc !16
  br label %if.end312

if.end312:                                        ; preds = %if.else311, %cedrus_dst_buf_addr.exit750
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %385 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %base.i, align 8
  %add.ptr.i760 = getelementptr i8, ptr %386, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i760, i32 50331680) #3, !srcloc !16
  %387 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool315.not = icmp eq i8 %388, 0
  br i1 %tobool315.not, label %if.end312.if.end341_crit_edge, label %if.then316

if.end312.if.end341_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end341

if.then316:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #5
  %389 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %flags50, align 4
  %and319 = lshr i32 %390, 2
  %and319.lobit = and i32 %and319, 1
  %391 = ptrtoint ptr %last_filter_type to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %and319.lobit, ptr %last_filter_type, align 4
  %392 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %flags, align 8
  %394 = trunc i64 %393 to i32
  %395 = and i32 %394, 1
  %396 = xor i32 %395, 1
  %397 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %codec, align 4
  %398 = ptrtoint ptr %sharpness_level to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %sharpness_level, align 8
  %conv338 = zext i8 %399 to i32
  %400 = ptrtoint ptr %last_sharpness_level to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %conv338, ptr %last_sharpness_level, align 4
  br label %if.end341

if.end341:                                        ; preds = %if.then316, %if.end312.if.end341_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_vp8_start(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %entropy_probs_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 9216, ptr noundef %entropy_probs_buf_dma, i32 noundef 3264, i32 noundef 0) #3
  %entropy_probs_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 3
  %4 = ptrtoint ptr %entropy_probs_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %entropy_probs_buf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr i8, ptr %call.i, i32 2048
  %5 = call ptr @memcpy(ptr %arrayidx, ptr @prob_table_init, i32 2480)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_vp8_stop(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @cedrus_engine_disable(ptr noundef %1) #3
  %dev2 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %entropy_probs_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 3
  %4 = ptrtoint ptr %entropy_probs_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entropy_probs_buf, align 4
  %entropy_probs_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 4
  %6 = ptrtoint ptr %entropy_probs_buf_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entropy_probs_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 9216, ptr noundef %5, i32 noundef %7, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_vp8_trigger(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 167772160) #3, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cedrus_engine_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @read_bits(ptr nocapture noundef readonly %dev, i32 noundef %bits_count, i32 noundef %probability) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = shl i32 %bits_count, 16
  %shl = add i32 %sub, 458752
  %and = and i32 %shl, 458752
  %shl1 = shl i32 %probability, 24
  %or = or i32 %and, %shl1
  %or3 = or i32 %or, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %or3) #3
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 9
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #3, !srcloc !16
  %call.i = tail call i64 @ktime_get() #3
  %add.i.i = add i64 %call.i, 1000000
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %4, i32 552
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i = icmp eq i32 %6, 0
  br i1 %cmp4.i, label %entry.cedrus_wait_for.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.cedrus_wait_for.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_wait_for.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %8, i32 552
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  br label %cedrus_wait_for.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #3
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %12, i32 552
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %14 = and i32 %13, 65536
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %cond.false.i.cedrus_wait_for.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

cond.false.i.cedrus_wait_for.exit_crit_edge:      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_wait_for.exit

cedrus_wait_for.exit:                             ; preds = %cond.false.i.cedrus_wait_for.exit_crit_edge, %if.then7.i, %entry.cedrus_wait_for.exit_crit_edge
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 732
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #3, !srcloc !17
  %18 = lshr i32 %17, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %conv = trunc i32 %18 to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cedrus_engine_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @cedrus_dec_ops_vp8, !1, !"cedrus_dec_ops_vp8", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_vp8.c", i32 900, i32 23}
!2 = !{ptr @k_mv_entropy_update_probs, !3, !"k_mv_entropy_update_probs", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_vp8.c", i32 429, i32 17}
!4 = !{ptr @prob_table_init, !5, !"prob_table_init", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_vp8.c", i32 38, i32 17}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2156442342}
!16 = !{i64 5416939}
!17 = !{i64 5417357}
!18 = !{i64 2156443162}
!19 = !{i32 0, i32 33}
!20 = !{i64 2156445236}
!21 = !{i64 2156445714}
