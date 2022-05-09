; ModuleID = '/llk/IR_all_yes/drivers/media/platform/coda/coda-h264.c_pt.bc'
source_filename = "../drivers/media/platform/coda/coda-h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.coda_ctx = type { ptr, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.completion, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.coda_q_data], i32, ptr, i32, i32, i32, i32, %struct.coda_params, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_fh, i32, i32, i32, [3 x [64 x i8]], [3 x i32], %struct.kfifo, %struct.mutex, %struct.coda_aux_buf, i8, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, [19 x %struct.coda_internal_frame], %struct.list_head, %struct.spinlock, i32, i32, %struct.coda_aux_buf, i32, i32, i32, %struct.coda_iram_info, i32, i32, i32, i32, i32, i32, ptr, i8, i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.coda_q_data = type { i32, i32, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.coda_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, [3 x ptr], [3 x i32], [3 x i32], [3 x i32], ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kfifo = type { %union.anon.95, [0 x i8] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.coda_internal_frame = type { %struct.coda_aux_buf, %struct.coda_buffer_meta, i32, i32 }
%struct.coda_buffer_meta = type { %struct.list_head, i32, %struct.v4l2_timecode, i64, i32, i32, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.coda_aux_buf = type { ptr, i32, i32, %struct.debugfs_blob_wrapper, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.coda_iram_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rbsp = type { ptr, i32, i32 }
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

@coda_filler_size = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\07\0E\0D\0C\0B\0A\09", [24 x i8] zeroinitializer }, align 32
@coda_h264_sps_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Handling profile_idc %d not implemented\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coda_h264_sps_fixup\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/platform/coda/coda-h264.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@coda_h264_sps_fixup._entry_ptr = internal global ptr @coda_h264_sps_fixup._entry, section ".printk_index", align 4
@coda_h264_sps_fixup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Handling vui_parameters not implemented\0A\00", [51 x i8] zeroinitializer }, align 32
@coda_h264_sps_fixup._entry_ptr.7 = internal global ptr @coda_h264_sps_fixup._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 66, i64 77, i64 88, i64 100]
@__sancov_gen_cov_switch_values.8 = internal global [18 x i64] [i64 16, i64 32, i64 9, i64 10, i64 11, i64 12, i64 13, i64 20, i64 21, i64 22, i64 30, i64 31, i64 32, i64 40, i64 41, i64 42, i64 50, i64 51]
@__sancov_gen_cov_switch_values.9 = internal global [15 x i64] [i64 13, i64 8, i64 44, i64 83, i64 86, i64 100, i64 110, i64 118, i64 122, i64 128, i64 134, i64 135, i64 138, i64 139, i64 244]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"coda_filler_size\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 16, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 284, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [43 x i8] c"../drivers/media/platform/coda/coda-h264.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 386, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @coda_h264_sps_fixup._entry, ptr @coda_h264_sps_fixup._entry.5, ptr @coda_h264_sps_fixup._entry_ptr, ptr @coda_h264_sps_fixup._entry_ptr.7, ptr @coda_filler_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_filler_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_h264_sps_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_h264_sps_fixup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_sps_parse_profile(ptr nocapture noundef writeonly %ctx, ptr noundef %vb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_get_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %2 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ 0, %entry.vb2_get_plane_payload.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call, i32 %retval.0.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %vb2_get_plane_payload.exit
  %buf.addr.0.i = phi ptr [ %call, %vb2_get_plane_payload.exit ], [ %buf.addr.0.i.be, %do.body.i.backedge ]
  %val.0.i = phi i32 [ -1, %vb2_get_plane_payload.exit ], [ %val.0.i.be, %do.body.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.0.i, i32 1
  %cmp.not.i14 = icmp ult ptr %incdec.ptr.i, %add.ptr
  br i1 %cmp.not.i14, label %do.cond.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.i:                                        ; preds = %do.body.i
  %shl.i = shl i32 %val.0.i, 8
  %4 = ptrtoint ptr %buf.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf.addr.0.i, align 1
  %conv.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or.i)
  %cmp2.not.i = icmp eq i32 %or.i, 1
  br i1 %cmp2.not.i, label %coda_find_nal_header.exit, label %do.cond.i.do.body.i.backedge_crit_edge

do.cond.i.do.body.i.backedge_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %do.cond.do.body.i.backedge_crit_edge, %do.cond.i.do.body.i.backedge_crit_edge
  %buf.addr.0.i.be = phi ptr [ %incdec.ptr.i, %do.cond.i.do.body.i.backedge_crit_edge ], [ %incdec.ptr, %do.cond.do.body.i.backedge_crit_edge ]
  %val.0.i.be = phi i32 [ %or.i, %do.cond.i.do.body.i.backedge_crit_edge ], [ -1, %do.cond.do.body.i.backedge_crit_edge ]
  br label %do.body.i

coda_find_nal_header.exit:                        ; preds = %do.cond.i
  %tobool.not = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not, label %coda_find_nal_header.exit.cleanup_crit_edge, label %do.cond

coda_find_nal_header.exit.cleanup_crit_edge:      ; preds = %coda_find_nal_header.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %coda_find_nal_header.exit
  %incdec.ptr = getelementptr i8, ptr %buf.addr.0.i, i32 2
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i, align 1
  %8 = and i8 %7, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp.not = icmp eq i8 %8, 7
  br i1 %cmp.not, label %do.end, label %do.cond.do.body.i.backedge_crit_edge

do.cond.do.body.i.backedge_crit_edge:             ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.backedge

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %h264_profile_idc = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 10
  %11 = ptrtoint ptr %h264_profile_idc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %h264_profile_idc, align 2
  %arrayidx4 = getelementptr i8, ptr %buf.addr.0.i, i32 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %h264_level_idc = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 11
  %14 = ptrtoint ptr %h264_level_idc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %h264_level_idc, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %coda_find_nal_header.exit.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %coda_find_nal_header.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @coda_h264_filler_nal(i32 noundef %size, ptr nocapture noundef writeonly %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %size)
  %cmp = icmp slt i32 %size, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %p, align 1
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %p, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %p, i32 3
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %p, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %arrayidx4, align 1
  %add.ptr = getelementptr i8, ptr %p, i32 5
  %sub = add nsw i32 %size, -6
  %5 = call ptr @memset(ptr %add.ptr, i32 255, i32 %sub)
  %sub5 = add nsw i32 %size, -1
  %arrayidx6 = getelementptr i8, ptr %p, i32 %sub5
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %arrayidx6, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @coda_h264_padding(i32 noundef %size, ptr nocapture noundef writeonly %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = and i32 %size, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [8 x i8], ptr @coda_filler_size, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p, align 1
  %arrayidx1.i = getelementptr i8, ptr %p, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %p, i32 2
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %p, i32 3
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %p, i32 4
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %arrayidx4.i, align 1
  %add.ptr.i = getelementptr i8, ptr %p, i32 5
  %sub.i = add nsw i32 %conv, -6
  %7 = call ptr @memset(ptr %add.ptr.i, i32 255, i32 %sub.i)
  %sub5.i = add nsw i32 %conv, -1
  %arrayidx6.i = getelementptr i8, ptr %p, i32 %sub5.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %arrayidx6.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @coda_h264_profile(i32 noundef %profile_idc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %profile_idc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %profile_idc, label %sw.default [
    i32 66, label %entry.return_crit_edge
    i32 77, label %sw.bb1
    i32 88, label %sw.bb2
    i32 100, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 4, %sw.bb3 ], [ 3, %sw.bb2 ], [ 2, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @coda_h264_level(i32 noundef %level_idc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level_idc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %level_idc, label %sw.default [
    i32 10, label %entry.return_crit_edge
    i32 9, label %sw.bb1
    i32 11, label %sw.bb2
    i32 12, label %sw.bb3
    i32 13, label %sw.bb4
    i32 20, label %sw.bb5
    i32 21, label %sw.bb6
    i32 22, label %sw.bb7
    i32 30, label %sw.bb8
    i32 31, label %sw.bb9
    i32 32, label %sw.bb10
    i32 40, label %sw.bb11
    i32 41, label %sw.bb12
    i32 42, label %sw.bb13
    i32 50, label %sw.bb14
    i32 51, label %sw.bb15
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 15, %sw.bb15 ], [ 14, %sw.bb14 ], [ 13, %sw.bb13 ], [ 12, %sw.bb12 ], [ 11, %sw.bb11 ], [ 10, %sw.bb10 ], [ 9, %sw.bb9 ], [ 8, %sw.bb8 ], [ 7, %sw.bb7 ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_h264_sps_fixup(ptr nocapture noundef readonly %ctx, i32 noundef %width, i32 noundef %height, ptr noundef %buf, ptr nocapture noundef %size, i32 noundef %max_size) local_unnamed_addr #0 align 64 {
entry:
  %pic_width_in_mbs_minus1 = alloca i32, align 4
  %pic_height_in_map_units_minus1 = alloca i32, align 4
  %crop_right = alloca i32, align 4
  %crop_bottom = alloca i32, align 4
  %sps = alloca %struct.rbsp, align 4
  %num_ref_frames_in_pic_order_cnt_cycle = alloca i32, align 4
  %crop_left = alloca i32, align 4
  %crop_top = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pic_width_in_mbs_minus1) #8
  %0 = ptrtoint ptr %pic_width_in_mbs_minus1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pic_width_in_mbs_minus1, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pic_height_in_map_units_minus1) #8
  %1 = ptrtoint ptr %pic_height_in_map_units_minus1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pic_height_in_map_units_minus1, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crop_right) #8
  %2 = ptrtoint ptr %crop_right to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %crop_right, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crop_bottom) #8
  %3 = ptrtoint ptr %crop_bottom to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %crop_bottom, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sps) #8
  %4 = getelementptr inbounds %struct.rbsp, ptr %sps, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rbsp, ptr %sps, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp = icmp sgt i32 %7, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %max_size)
  %cmp1.not = icmp slt i32 %7, %max_size
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup218_crit_edge

entry.cleanup218_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 5
  %8 = ptrtoint ptr %sps to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %sps, align 4
  %sub = add nsw i32 %7, -5
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %4, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 25, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp.not.i38.i = icmp ugt i32 %sub, 3
  br i1 %cmp.not.i38.i, label %rbsp_read_bit.exit.i.preheader, label %if.end.cleanup218_crit_edge

if.end.cleanup218_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit.i.preheader:                   ; preds = %if.end
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.promoted = load i32, ptr %5, align 4
  br label %rbsp_read_bit.exit.i

rbsp_read_bit.exit.i:                             ; preds = %while.body.i.rbsp_read_bit.exit.i_crit_edge, %rbsp_read_bit.exit.i.preheader
  %14 = phi i32 [ %inc.i.i, %while.body.i.rbsp_read_bit.exit.i_crit_edge ], [ %.promoted, %rbsp_read_bit.exit.i.preheader ]
  %div.i40.i = phi i32 [ %div.i.i, %while.body.i.rbsp_read_bit.exit.i_crit_edge ], [ 3, %rbsp_read_bit.exit.i.preheader ]
  %15 = phi i32 [ %14, %while.body.i.rbsp_read_bit.exit.i_crit_edge ], [ 24, %rbsp_read_bit.exit.i.preheader ]
  %leading_zero_bits.039.i = phi i32 [ %inc.i, %while.body.i.rbsp_read_bit.exit.i_crit_edge ], [ 0, %rbsp_read_bit.exit.i.preheader ]
  %rem.i.i = srem i32 %15, 8
  %sub.i.i = sub nsw i32 7, %rem.i.i
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr, i32 %div.i40.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %18 = shl nuw nsw i32 1, %sub.i.i
  %19 = and i32 %18, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %while.body.i, label %if.end.i

while.body.i:                                     ; preds = %rbsp_read_bit.exit.i
  %inc.i = add i32 %leading_zero_bits.039.i, 1
  %inc.i.i = add i32 %14, 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i.i, ptr %5, align 4
  %div.i.i = sdiv i32 %14, 8
  %cmp.not.i.i = icmp slt i32 %div.i.i, %sub
  br i1 %cmp.not.i.i, label %while.body.i.rbsp_read_bit.exit.i_crit_edge, label %while.body.i.cleanup218_crit_edge

while.body.i.cleanup218_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

while.body.i.rbsp_read_bit.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_bit.exit.i

if.end.i:                                         ; preds = %rbsp_read_bit.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading_zero_bits.039.i)
  %cmp2.i = icmp sgt i32 %leading_zero_bits.039.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %leading_zero_bits.039.i)
  %cmp.i.i = icmp ugt i32 %leading_zero_bits.039.i, 32
  br i1 %cmp.i.i, label %if.then3.i.cleanup218_crit_edge, label %for.body.i.i.preheader

if.then3.i.cleanup218_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

for.body.i.i.preheader:                           ; preds = %if.then3.i
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.promoted574 = load i32, ptr %5, align 4
  %22 = add i32 %leading_zero_bits.039.i, %.promoted574
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %23 = phi i32 [ %inc.i.i.i, %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge ], [ %.promoted574, %for.body.i.i.preheader ]
  %i.022.i.i = phi i32 [ %inc.i21.i, %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %div.i.i.i = sdiv i32 %23, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i, i32 %sub)
  %cmp.not.i.i.i = icmp slt i32 %div.i.i.i, %sub
  br i1 %cmp.not.i.i.i, label %rbsp_read_bit.exit.i.i, label %for.body.i.i.cleanup218_crit_edge

for.body.i.i.cleanup218_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit.i.i:                           ; preds = %for.body.i.i
  %inc.i.i.i = add i32 %23, 1
  %inc.i21.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i21.i, %leading_zero_bits.039.i
  br i1 %exitcond.not.i.i, label %if.end7.loopexit, label %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge

rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge:    ; preds = %rbsp_read_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end7.loopexit:                                 ; preds = %rbsp_read_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %5, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.loopexit, %if.end.i.if.end7_crit_edge
  %25 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %11, label %if.end47 [
    i8 100, label %if.end7.do.end_crit_edge
    i8 110, label %if.end7.do.end_crit_edge627
    i8 122, label %if.end7.do.end_crit_edge628
    i8 -12, label %if.end7.do.end_crit_edge629
    i8 44, label %if.end7.do.end_crit_edge630
    i8 83, label %if.end7.do.end_crit_edge631
    i8 86, label %if.end7.do.end_crit_edge632
    i8 118, label %if.end7.do.end_crit_edge633
    i8 -128, label %if.end7.do.end_crit_edge634
    i8 -118, label %if.end7.do.end_crit_edge635
    i8 -117, label %if.end7.do.end_crit_edge636
    i8 -122, label %if.end7.do.end_crit_edge637
    i8 -121, label %if.end7.do.end_crit_edge638
  ]

if.end7.do.end_crit_edge638:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge637:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge636:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge635:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge634:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge633:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge632:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge631:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge630:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge629:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge628:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge627:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %if.end7.do.end_crit_edge627, %if.end7.do.end_crit_edge628, %if.end7.do.end_crit_edge629, %if.end7.do.end_crit_edge630, %if.end7.do.end_crit_edge631, %if.end7.do.end_crit_edge632, %if.end7.do.end_crit_edge633, %if.end7.do.end_crit_edge634, %if.end7.do.end_crit_edge635, %if.end7.do.end_crit_edge636, %if.end7.do.end_crit_edge637, %if.end7.do.end_crit_edge638
  %vdev = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %26 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev, align 8
  %dev_parent = getelementptr inbounds %struct.video_device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %dev_parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  br label %cleanup218

if.end47:                                         ; preds = %if.end7
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 4
  %inc.i36.i318 = add i32 %31, 1
  store i32 %inc.i36.i318, ptr %5, align 4
  %div.i37.i319 = sdiv i32 %31, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i37.i319, i32 %sub)
  %cmp.not.i38.i320 = icmp slt i32 %div.i37.i319, %sub
  br i1 %cmp.not.i38.i320, label %rbsp_read_bit.exit.i329.preheader, label %if.end47.cleanup218_crit_edge

if.end47.cleanup218_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit.i329.preheader:                ; preds = %if.end47
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.promoted576 = load i32, ptr %5, align 4
  br label %rbsp_read_bit.exit.i329

rbsp_read_bit.exit.i329:                          ; preds = %while.body.i334.rbsp_read_bit.exit.i329_crit_edge, %rbsp_read_bit.exit.i329.preheader
  %33 = phi i32 [ %inc.i.i331, %while.body.i334.rbsp_read_bit.exit.i329_crit_edge ], [ %.promoted576, %rbsp_read_bit.exit.i329.preheader ]
  %div.i40.i322 = phi i32 [ %div.i.i332, %while.body.i334.rbsp_read_bit.exit.i329_crit_edge ], [ %div.i37.i319, %rbsp_read_bit.exit.i329.preheader ]
  %34 = phi i32 [ %33, %while.body.i334.rbsp_read_bit.exit.i329_crit_edge ], [ %31, %rbsp_read_bit.exit.i329.preheader ]
  %leading_zero_bits.039.i323 = phi i32 [ %inc.i330, %while.body.i334.rbsp_read_bit.exit.i329_crit_edge ], [ 0, %rbsp_read_bit.exit.i329.preheader ]
  %rem.i.i324 = srem i32 %34, 8
  %sub.i.i325 = sub nsw i32 7, %rem.i.i324
  %arrayidx.i.i326 = getelementptr i8, ptr %add.ptr, i32 %div.i40.i322
  %35 = ptrtoint ptr %arrayidx.i.i326 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i326, align 1
  %conv.i.i327 = zext i8 %36 to i32
  %37 = shl nuw nsw i32 1, %sub.i.i325
  %38 = and i32 %37, %conv.i.i327
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i328 = icmp eq i32 %38, 0
  br i1 %cmp.i328, label %while.body.i334, label %if.end.i336

while.body.i334:                                  ; preds = %rbsp_read_bit.exit.i329
  %inc.i330 = add i32 %leading_zero_bits.039.i323, 1
  %inc.i.i331 = add i32 %33, 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i.i331, ptr %5, align 4
  %div.i.i332 = sdiv i32 %33, 8
  %cmp.not.i.i333 = icmp slt i32 %div.i.i332, %sub
  br i1 %cmp.not.i.i333, label %while.body.i334.rbsp_read_bit.exit.i329_crit_edge, label %while.body.i334.cleanup218_crit_edge

while.body.i334.cleanup218_crit_edge:             ; preds = %while.body.i334
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

while.body.i334.rbsp_read_bit.exit.i329_crit_edge: ; preds = %while.body.i334
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_bit.exit.i329

if.end.i336:                                      ; preds = %rbsp_read_bit.exit.i329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading_zero_bits.039.i323)
  %cmp2.i335 = icmp sgt i32 %leading_zero_bits.039.i323, 0
  br i1 %cmp2.i335, label %if.then3.i338, label %if.end.i336.if.end51_crit_edge

if.end.i336.if.end51_crit_edge:                   ; preds = %if.end.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then3.i338:                                    ; preds = %if.end.i336
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %leading_zero_bits.039.i323)
  %cmp.i.i337 = icmp ugt i32 %leading_zero_bits.039.i323, 32
  br i1 %cmp.i.i337, label %if.then3.i338.cleanup218_crit_edge, label %for.body.i.i344.preheader

if.then3.i338.cleanup218_crit_edge:               ; preds = %if.then3.i338
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

for.body.i.i344.preheader:                        ; preds = %if.then3.i338
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.promoted577 = load i32, ptr %5, align 4
  %41 = add i32 %leading_zero_bits.039.i323, %.promoted577
  br label %for.body.i.i344

for.body.i.i344:                                  ; preds = %rbsp_read_bit.exit.i.i356.for.body.i.i344_crit_edge, %for.body.i.i344.preheader
  %42 = phi i32 [ %inc.i.i.i341, %rbsp_read_bit.exit.i.i356.for.body.i.i344_crit_edge ], [ %.promoted577, %for.body.i.i344.preheader ]
  %i.022.i.i340 = phi i32 [ %inc.i21.i354, %rbsp_read_bit.exit.i.i356.for.body.i.i344_crit_edge ], [ 0, %for.body.i.i344.preheader ]
  %div.i.i.i342 = sdiv i32 %42, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i342, i32 %sub)
  %cmp.not.i.i.i343 = icmp slt i32 %div.i.i.i342, %sub
  br i1 %cmp.not.i.i.i343, label %rbsp_read_bit.exit.i.i356, label %for.body.i.i344.cleanup218_crit_edge

for.body.i.i344.cleanup218_crit_edge:             ; preds = %for.body.i.i344
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit.i.i356:                        ; preds = %for.body.i.i344
  %inc.i.i.i341 = add i32 %42, 1
  %inc.i21.i354 = add nuw nsw i32 %i.022.i.i340, 1
  %exitcond.not.i.i355 = icmp eq i32 %inc.i21.i354, %leading_zero_bits.039.i323
  br i1 %exitcond.not.i.i355, label %if.end51.loopexit, label %rbsp_read_bit.exit.i.i356.for.body.i.i344_crit_edge

rbsp_read_bit.exit.i.i356.for.body.i.i344_crit_edge: ; preds = %rbsp_read_bit.exit.i.i356
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i344

if.end51.loopexit:                                ; preds = %rbsp_read_bit.exit.i.i356
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %5, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.loopexit, %if.end.i336.if.end51_crit_edge
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %5, align 4
  %inc.i36.i363 = add i32 %45, 1
  store i32 %inc.i36.i363, ptr %5, align 4
  %div.i37.i364 = sdiv i32 %45, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i37.i364, i32 %sub)
  %cmp.not.i38.i365 = icmp slt i32 %div.i37.i364, %sub
  br i1 %cmp.not.i38.i365, label %rbsp_read_bit.exit.i374.preheader, label %if.end51.cleanup218_crit_edge

if.end51.cleanup218_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit.i374.preheader:                ; preds = %if.end51
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.promoted579 = load i32, ptr %5, align 4
  br label %rbsp_read_bit.exit.i374

rbsp_read_bit.exit.i374:                          ; preds = %while.body.i379.rbsp_read_bit.exit.i374_crit_edge, %rbsp_read_bit.exit.i374.preheader
  %47 = phi i32 [ %inc.i.i376, %while.body.i379.rbsp_read_bit.exit.i374_crit_edge ], [ %.promoted579, %rbsp_read_bit.exit.i374.preheader ]
  %div.i40.i367 = phi i32 [ %div.i.i377, %while.body.i379.rbsp_read_bit.exit.i374_crit_edge ], [ %div.i37.i364, %rbsp_read_bit.exit.i374.preheader ]
  %48 = phi i32 [ %47, %while.body.i379.rbsp_read_bit.exit.i374_crit_edge ], [ %45, %rbsp_read_bit.exit.i374.preheader ]
  %leading_zero_bits.039.i368 = phi i32 [ %inc.i375, %while.body.i379.rbsp_read_bit.exit.i374_crit_edge ], [ 0, %rbsp_read_bit.exit.i374.preheader ]
  %rem.i.i369 = srem i32 %48, 8
  %sub.i.i370 = sub nsw i32 7, %rem.i.i369
  %arrayidx.i.i371 = getelementptr i8, ptr %add.ptr, i32 %div.i40.i367
  %49 = ptrtoint ptr %arrayidx.i.i371 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i371, align 1
  %conv.i.i372 = zext i8 %50 to i32
  %51 = shl nuw nsw i32 1, %sub.i.i370
  %52 = and i32 %51, %conv.i.i372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i373 = icmp eq i32 %52, 0
  br i1 %cmp.i373, label %while.body.i379, label %if.end.i381

while.body.i379:                                  ; preds = %rbsp_read_bit.exit.i374
  %inc.i375 = add i32 %leading_zero_bits.039.i368, 1
  %inc.i.i376 = add i32 %47, 1
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc.i.i376, ptr %5, align 4
  %div.i.i377 = sdiv i32 %47, 8
  %cmp.not.i.i378 = icmp slt i32 %div.i.i377, %sub
  br i1 %cmp.not.i.i378, label %while.body.i379.rbsp_read_bit.exit.i374_crit_edge, label %while.body.i379.cleanup218_crit_edge

while.body.i379.cleanup218_crit_edge:             ; preds = %while.body.i379
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

while.body.i379.rbsp_read_bit.exit.i374_crit_edge: ; preds = %while.body.i379
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_bit.exit.i374

if.end.i381:                                      ; preds = %rbsp_read_bit.exit.i374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading_zero_bits.039.i368)
  %cmp2.i380 = icmp sgt i32 %leading_zero_bits.039.i368, 0
  br i1 %cmp2.i380, label %if.then3.i383, label %if.end.i381.if.end55_crit_edge

if.end.i381.if.end55_crit_edge:                   ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then3.i383:                                    ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %leading_zero_bits.039.i368)
  %cmp.i.i382 = icmp ugt i32 %leading_zero_bits.039.i368, 32
  br i1 %cmp.i.i382, label %if.then3.i383.cleanup218_crit_edge, label %for.body.i.i389.preheader

if.then3.i383.cleanup218_crit_edge:               ; preds = %if.then3.i383
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

for.body.i.i389.preheader:                        ; preds = %if.then3.i383
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.promoted580 = load i32, ptr %5, align 4
  %55 = add i32 %leading_zero_bits.039.i368, %.promoted580
  br label %for.body.i.i389

for.body.i.i389:                                  ; preds = %rbsp_read_bit.exit.i.i401.for.body.i.i389_crit_edge, %for.body.i.i389.preheader
  %56 = phi i32 [ %inc.i.i.i386, %rbsp_read_bit.exit.i.i401.for.body.i.i389_crit_edge ], [ %.promoted580, %for.body.i.i389.preheader ]
  %tmp.023.i.i384 = phi i32 [ %or.i.i398, %rbsp_read_bit.exit.i.i401.for.body.i.i389_crit_edge ], [ 0, %for.body.i.i389.preheader ]
  %i.022.i.i385 = phi i32 [ %inc.i21.i399, %rbsp_read_bit.exit.i.i401.for.body.i.i389_crit_edge ], [ 0, %for.body.i.i389.preheader ]
  %.frozen = freeze i32 %56
  %div.i.i.i387 = sdiv i32 %.frozen, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i387, i32 %sub)
  %cmp.not.i.i.i388 = icmp slt i32 %div.i.i.i387, %sub
  br i1 %cmp.not.i.i.i388, label %rbsp_read_bit.exit.i.i401, label %for.body.i.i389.cleanup218_crit_edge

for.body.i.i389.cleanup218_crit_edge:             ; preds = %for.body.i.i389
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit.i.i401:                        ; preds = %for.body.i.i389
  %inc.i.i.i386 = add i32 %56, 1
  %57 = mul i32 %div.i.i.i387, 8
  %rem.i.i.i390.decomposed = sub i32 %.frozen, %57
  %sub.i.i.i391 = sub nsw i32 7, %rem.i.i.i390.decomposed
  %arrayidx.i.i.i392 = getelementptr i8, ptr %add.ptr, i32 %div.i.i.i387
  %58 = ptrtoint ptr %arrayidx.i.i.i392 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.i392, align 1
  %conv.i.i.i393 = zext i8 %59 to i32
  %shr.i.i.i394 = lshr i32 %conv.i.i.i393, %sub.i.i.i391
  %and.i.i.i395 = and i32 %shr.i.i.i394, 1
  %60 = xor i32 %i.022.i.i385, -1
  %sub5.i.i396 = add i32 %leading_zero_bits.039.i368, %60
  %shl.i.i397 = shl nuw i32 %and.i.i.i395, %sub5.i.i396
  %or.i.i398 = or i32 %shl.i.i397, %tmp.023.i.i384
  %inc.i21.i399 = add nuw nsw i32 %i.022.i.i385, 1
  %exitcond.not.i.i400 = icmp eq i32 %inc.i21.i399, %leading_zero_bits.039.i368
  br i1 %exitcond.not.i.i400, label %if.end55.loopexit, label %rbsp_read_bit.exit.i.i401.for.body.i.i389_crit_edge

rbsp_read_bit.exit.i.i401.for.body.i.i389_crit_edge: ; preds = %rbsp_read_bit.exit.i.i401
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i389

if.end55.loopexit:                                ; preds = %rbsp_read_bit.exit.i.i401
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %55, ptr %5, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.loopexit, %if.end.i381.if.end55_crit_edge
  %tmp.1.i402 = phi i32 [ 0, %if.end.i381.if.end55_crit_edge ], [ %or.i.i398, %if.end55.loopexit ]
  %notmask.i = shl nsw i32 -1, %leading_zero_bits.039.i368
  %sub.i = xor i32 %notmask.i, -1
  %add.i = add i32 %tmp.1.i402, %sub.i
  %62 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %add.i, label %if.end55.if.end91_crit_edge [
    i32 0, label %if.then58
    i32 1, label %if.then65
  ]

if.end55.if.end91_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then58:                                        ; preds = %if.end55
  %call59 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end91_crit_edge, label %if.then58.cleanup218_crit_edge

if.then58.cleanup218_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.then58.if.end91_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then65:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_ref_frames_in_pic_order_cnt_cycle) #8
  %63 = ptrtoint ptr %num_ref_frames_in_pic_order_cnt_cycle to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4, !annotation !23
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %5, align 4
  %inc.i406 = add i32 %65, 1
  store i32 %inc.i406, ptr %5, align 4
  %div.i = sdiv i32 %65, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %sub)
  %cmp.not.i = icmp slt i32 %div.i, %sub
  br i1 %cmp.not.i, label %rbsp_read_bit.exit, label %if.then65.cleanup.thread_crit_edge

if.then65.cleanup.thread_crit_edge:               ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

rbsp_read_bit.exit:                               ; preds = %if.then65
  %call71 = call fastcc i32 @rbsp_read_sev(ptr noundef nonnull %sps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %rbsp_read_bit.exit.cleanup.thread_crit_edge

rbsp_read_bit.exit.cleanup.thread_crit_edge:      ; preds = %rbsp_read_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end74:                                         ; preds = %rbsp_read_bit.exit
  %call75 = call fastcc i32 @rbsp_read_sev(ptr noundef nonnull %sps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup.thread_crit_edge

if.end74.cleanup.thread_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end78:                                         ; preds = %if.end74
  %call79 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef nonnull %num_ref_frames_in_pic_order_cnt_cycle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %for.cond.preheader, label %if.end78.cleanup.thread_crit_edge

if.end78.cleanup.thread_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond.preheader:                               ; preds = %if.end78
  %66 = ptrtoint ptr %num_ref_frames_in_pic_order_cnt_cycle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp83582.not = icmp eq i32 %67, 0
  br i1 %cmp83582.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0583, 1
  %68 = ptrtoint ptr %num_ref_frames_in_pic_order_cnt_cycle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %cmp83 = icmp ult i32 %inc, %69
  br i1 %cmp83, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0583 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call85 = call fastcc i32 @rbsp_read_sev(ptr noundef nonnull %sps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.cond, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body.cleanup.thread_crit_edge, %if.end78.cleanup.thread_crit_edge, %if.end74.cleanup.thread_crit_edge, %rbsp_read_bit.exit.cleanup.thread_crit_edge, %if.then65.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call79, %if.end78.cleanup.thread_crit_edge ], [ %call75, %if.end74.cleanup.thread_crit_edge ], [ %call71, %rbsp_read_bit.exit.cleanup.thread_crit_edge ], [ -22, %if.then65.cleanup.thread_crit_edge ], [ %call85, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_ref_frames_in_pic_order_cnt_cycle) #8
  br label %cleanup218

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_ref_frames_in_pic_order_cnt_cycle) #8
  br label %if.end91

if.end91:                                         ; preds = %cleanup, %if.then58.if.end91_crit_edge, %if.end55.if.end91_crit_edge
  %call92 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.cleanup218_crit_edge

if.end91.cleanup218_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end95:                                         ; preds = %if.end91
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %5, align 4
  %inc.i411 = add i32 %71, 1
  store i32 %inc.i411, ptr %5, align 4
  %div.i412 = sdiv i32 %71, 8
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i412, i32 %73)
  %cmp.not.i414 = icmp slt i32 %div.i412, %73
  br i1 %cmp.not.i414, label %rbsp_read_bit.exit423, label %if.end95.cleanup218_crit_edge

if.end95.cleanup218_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit423:                            ; preds = %if.end95
  %call101 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef nonnull %pic_width_in_mbs_minus1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %rbsp_read_bit.exit423.cleanup218_crit_edge

rbsp_read_bit.exit423.cleanup218_crit_edge:       ; preds = %rbsp_read_bit.exit423
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end104:                                        ; preds = %rbsp_read_bit.exit423
  %call105 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef nonnull %pic_height_in_map_units_minus1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end104.cleanup218_crit_edge

if.end104.cleanup218_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end108:                                        ; preds = %if.end104
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %5, align 4
  %inc.i425 = add i32 %75, 1
  store i32 %inc.i425, ptr %5, align 4
  %.frozen623 = freeze i32 %75
  %div.i426 = sdiv i32 %.frozen623, 8
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i426, i32 %77)
  %cmp.not.i428 = icmp slt i32 %div.i426, %77
  br i1 %cmp.not.i428, label %rbsp_read_bit.exit437, label %if.end108.cleanup218_crit_edge

if.end108.cleanup218_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit437:                            ; preds = %if.end108
  %78 = mul i32 %div.i426, 8
  %rem.i429.decomposed = sub i32 %.frozen623, %78
  %sub.i430 = sub nsw i32 7, %rem.i429.decomposed
  %79 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sps, align 4
  %arrayidx.i431 = getelementptr i8, ptr %80, i32 %div.i426
  %81 = ptrtoint ptr %arrayidx.i431 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i431, align 1
  %conv.i432 = zext i8 %82 to i32
  %83 = shl nuw nsw i32 1, %sub.i430
  %84 = and i32 %83, %conv.i432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool114.not = icmp eq i32 %84, 0
  br i1 %tobool114.not, label %if.then115, label %rbsp_read_bit.exit437.if.end121_crit_edge

rbsp_read_bit.exit437.if.end121_crit_edge:        ; preds = %rbsp_read_bit.exit437
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then115:                                       ; preds = %rbsp_read_bit.exit437
  %inc.i439 = add i32 %75, 2
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %inc.i439, ptr %5, align 4
  %div.i440 = sdiv i32 %inc.i425, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i440, i32 %77)
  %cmp.not.i442 = icmp slt i32 %div.i440, %77
  br i1 %cmp.not.i442, label %if.then115.if.end121_crit_edge, label %if.then115.cleanup218_crit_edge

if.then115.cleanup218_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.then115.if.end121_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.end121:                                        ; preds = %if.then115.if.end121_crit_edge, %rbsp_read_bit.exit437.if.end121_crit_edge
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %5, align 4
  %inc.i453 = add i32 %87, 1
  %div.i454 = sdiv i32 %87, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i454, i32 %77)
  %cmp.not.i456 = icmp slt i32 %div.i454, %77
  br i1 %cmp.not.i456, label %rbsp_read_bit.exit465, label %if.end121.cleanup218_crit_edge

if.end121.cleanup218_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit465:                            ; preds = %if.end121
  %inc.i467 = add i32 %87, 2
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %inc.i467, ptr %5, align 4
  %inc.i453.frozen = freeze i32 %inc.i453
  %div.i468 = sdiv i32 %inc.i453.frozen, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i468, i32 %77)
  %cmp.not.i470 = icmp slt i32 %div.i468, %77
  br i1 %cmp.not.i470, label %rbsp_read_bit.exit479, label %rbsp_read_bit.exit465.cleanup218_crit_edge

rbsp_read_bit.exit465.cleanup218_crit_edge:       ; preds = %rbsp_read_bit.exit465
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit479:                            ; preds = %rbsp_read_bit.exit465
  %89 = mul i32 %div.i468, 8
  %rem.i471.decomposed = sub i32 %inc.i453.frozen, %89
  %sub.i472 = sub nsw i32 7, %rem.i471.decomposed
  %90 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sps, align 4
  %arrayidx.i473 = getelementptr i8, ptr %91, i32 %div.i468
  %92 = ptrtoint ptr %arrayidx.i473 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i473, align 1
  %conv.i474 = zext i8 %93 to i32
  %94 = shl nuw nsw i32 1, %sub.i472
  %95 = and i32 %94, %conv.i474
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool133.not = icmp eq i32 %95, 0
  br i1 %tobool133.not, label %rbsp_read_bit.exit479.if.end155_crit_edge, label %if.then134

rbsp_read_bit.exit479.if.end155_crit_edge:        ; preds = %rbsp_read_bit.exit479
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then134:                                       ; preds = %rbsp_read_bit.exit479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crop_left) #8
  %96 = ptrtoint ptr %crop_left to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %crop_left, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crop_top) #8
  %97 = ptrtoint ptr %crop_top to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %crop_top, align 4, !annotation !23
  %call135 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef nonnull %crop_left)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.then134.cleanup151.thread_crit_edge

if.then134.cleanup151.thread_crit_edge:           ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup151.thread

if.end138:                                        ; preds = %if.then134
  %call139 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef nonnull %crop_right)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end138.cleanup151.thread_crit_edge

if.end138.cleanup151.thread_crit_edge:            ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup151.thread

if.end142:                                        ; preds = %if.end138
  %call143 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef nonnull %crop_top)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %cleanup151, label %if.end142.cleanup151.thread_crit_edge

if.end142.cleanup151.thread_crit_edge:            ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup151.thread

cleanup151.thread:                                ; preds = %if.end142.cleanup151.thread_crit_edge, %if.end138.cleanup151.thread_crit_edge, %if.then134.cleanup151.thread_crit_edge
  %retval.2.ph = phi i32 [ %call143, %if.end142.cleanup151.thread_crit_edge ], [ %call139, %if.end138.cleanup151.thread_crit_edge ], [ %call135, %if.then134.cleanup151.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crop_top) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crop_left) #8
  br label %cleanup218

cleanup151:                                       ; preds = %if.end142
  %call147 = call fastcc i32 @rbsp_read_uev(ptr noundef nonnull %sps, ptr noundef nonnull %crop_bottom)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crop_top) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crop_left) #8
  br i1 %tobool148.not, label %cleanup151.if.end155_crit_edge, label %cleanup151.cleanup218_crit_edge

cleanup151.cleanup218_crit_edge:                  ; preds = %cleanup151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

cleanup151.if.end155_crit_edge:                   ; preds = %cleanup151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.end155:                                        ; preds = %cleanup151.if.end155_crit_edge, %rbsp_read_bit.exit479.if.end155_crit_edge
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %5, align 4
  %inc.i481 = add i32 %99, 1
  store i32 %inc.i481, ptr %5, align 4
  %.frozen624 = freeze i32 %99
  %div.i482 = sdiv i32 %.frozen624, 8
  %100 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i482, i32 %101)
  %cmp.not.i484 = icmp slt i32 %div.i482, %101
  br i1 %cmp.not.i484, label %rbsp_read_bit.exit493, label %if.end155.cleanup218_crit_edge

if.end155.cleanup218_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

rbsp_read_bit.exit493:                            ; preds = %if.end155
  %102 = mul i32 %div.i482, 8
  %rem.i485.decomposed = sub i32 %.frozen624, %102
  %sub.i486 = sub nsw i32 7, %rem.i485.decomposed
  %103 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sps, align 4
  %arrayidx.i487 = getelementptr i8, ptr %104, i32 %div.i482
  %105 = ptrtoint ptr %arrayidx.i487 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i487, align 1
  %conv.i488 = zext i8 %106 to i32
  %107 = shl nuw nsw i32 1, %sub.i486
  %108 = and i32 %107, %conv.i488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool161.not = icmp eq i32 %108, 0
  br i1 %tobool161.not, label %if.end169, label %do.end165

do.end165:                                        ; preds = %rbsp_read_bit.exit493
  call void @__sanitizer_cov_trace_pc() #10
  %vdev167 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 1
  %109 = ptrtoint ptr %vdev167 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vdev167, align 8
  %dev_parent168 = getelementptr inbounds %struct.video_device, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %dev_parent168 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_parent168, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #11
  br label %cleanup218

if.end169:                                        ; preds = %rbsp_read_bit.exit493
  %sub170 = add i32 %width, -1
  %or = or i32 %sub170, 15
  %add = sub i32 1, %width
  %sub171 = add i32 %add, %or
  %sub172 = add i32 %height, -1
  %or173 = or i32 %sub172, 15
  %add174 = sub i32 1, %height
  %sub175 = add i32 %add174, %or173
  %div313 = lshr i32 %sub171, 1
  %113 = ptrtoint ptr %crop_right to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %div313, ptr %crop_right, align 4
  %storemerge.v = select i1 %tobool114.not, i32 2, i32 1
  %storemerge = lshr i32 %sub175, %storemerge.v
  %114 = ptrtoint ptr %crop_bottom to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %storemerge, ptr %crop_bottom, align 4
  %sub182 = add i32 %max_size, -5
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub182, ptr %4, align 4
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %inc.i467, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i468, i32 %sub182)
  %cmp.not.i498 = icmp slt i32 %div.i468, %sub182
  br i1 %cmp.not.i498, label %if.end188, label %if.end169.cleanup218_crit_edge

if.end169.cleanup218_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end188:                                        ; preds = %if.end169
  %117 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sps, align 4
  %arrayidx.i501 = getelementptr i8, ptr %118, i32 %div.i468
  %119 = ptrtoint ptr %arrayidx.i501 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i501, align 1
  %121 = trunc i32 %94 to i8
  %122 = xor i8 %121, -1
  %conv2.i = and i8 %120, %122
  store i8 %conv2.i, ptr %arrayidx.i501, align 1
  %123 = load ptr, ptr %sps, align 4
  %arrayidx5.i = getelementptr i8, ptr %123, i32 %div.i468
  %124 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx5.i, align 1
  %conv7.i = or i8 %125, %121
  store i8 %conv7.i, ptr %arrayidx5.i, align 1
  %call189 = call fastcc i32 @rbsp_write_uev(ptr noundef nonnull %sps, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %if.end188.cleanup218_crit_edge

if.end188.cleanup218_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end192:                                        ; preds = %if.end188
  %126 = ptrtoint ptr %crop_right to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %crop_right, align 4
  %call193 = call fastcc i32 @rbsp_write_uev(ptr noundef nonnull %sps, i32 noundef %127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %if.end192.cleanup218_crit_edge

if.end192.cleanup218_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end196:                                        ; preds = %if.end192
  %call197 = call fastcc i32 @rbsp_write_uev(ptr noundef nonnull %sps, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %if.end196.cleanup218_crit_edge

if.end196.cleanup218_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end200:                                        ; preds = %if.end196
  %128 = ptrtoint ptr %crop_bottom to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %crop_bottom, align 4
  %call201 = call fastcc i32 @rbsp_write_uev(ptr noundef nonnull %sps, i32 noundef %129)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.end204, label %if.end200.cleanup218_crit_edge

if.end200.cleanup218_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end204:                                        ; preds = %if.end200
  %130 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %5, align 4
  %inc.i505 = add i32 %131, 1
  store i32 %inc.i505, ptr %5, align 4
  %.frozen625 = freeze i32 %131
  %div.i506 = sdiv i32 %.frozen625, 8
  %132 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i506, i32 %133)
  %cmp.not.i508 = icmp slt i32 %div.i506, %133
  br i1 %cmp.not.i508, label %if.end208, label %if.end204.cleanup218_crit_edge

if.end204.cleanup218_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end208:                                        ; preds = %if.end204
  %134 = mul i32 %div.i506, 8
  %rem.i509.decomposed = sub i32 %.frozen625, %134
  %sub.i510 = sub nsw i32 7, %rem.i509.decomposed
  %shl.i511 = shl nuw nsw i32 1, %sub.i510
  %135 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sps, align 4
  %arrayidx.i512 = getelementptr i8, ptr %136, i32 %div.i506
  %137 = ptrtoint ptr %arrayidx.i512 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i512, align 1
  %139 = trunc i32 %shl.i511 to i8
  %140 = xor i8 %139, -1
  %conv2.i513 = and i8 %138, %140
  store i8 %conv2.i513, ptr %arrayidx.i512, align 1
  %141 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %5, align 4
  %inc.i519 = add i32 %142, 1
  store i32 %inc.i519, ptr %5, align 4
  %.frozen626 = freeze i32 %142
  %div.i520 = sdiv i32 %.frozen626, 8
  %143 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i520, i32 %144)
  %cmp.not.i522 = icmp slt i32 %div.i520, %144
  br i1 %cmp.not.i522, label %if.end212, label %if.end208.cleanup218_crit_edge

if.end208.cleanup218_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup218

if.end212:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  %145 = mul i32 %div.i520, 8
  %rem.i523.decomposed = sub i32 %.frozen626, %145
  %sub.i524 = sub nsw i32 7, %rem.i523.decomposed
  %shl.i525 = shl nuw nsw i32 1, %sub.i524
  %146 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sps, align 4
  %arrayidx.i526 = getelementptr i8, ptr %147, i32 %div.i520
  %148 = ptrtoint ptr %arrayidx.i526 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i526, align 1
  %150 = trunc i32 %shl.i525 to i8
  %151 = xor i8 %150, -1
  %conv2.i527 = and i8 %149, %151
  store i8 %conv2.i527, ptr %arrayidx.i526, align 1
  %152 = load ptr, ptr %sps, align 4
  %arrayidx5.i529 = getelementptr i8, ptr %152, i32 %div.i520
  %153 = ptrtoint ptr %arrayidx5.i529 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx5.i529, align 1
  %conv7.i530 = or i8 %154, %150
  store i8 %conv7.i530, ptr %arrayidx5.i529, align 1
  %155 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %5, align 4
  %sub215 = add i32 %156, 7
  %div216 = sdiv i32 %sub215, 8
  %add217 = add nsw i32 %div216, 5
  %157 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add217, ptr %size, align 4
  br label %cleanup218

cleanup218:                                       ; preds = %if.end212, %if.end208.cleanup218_crit_edge, %if.end204.cleanup218_crit_edge, %if.end200.cleanup218_crit_edge, %if.end196.cleanup218_crit_edge, %if.end192.cleanup218_crit_edge, %if.end188.cleanup218_crit_edge, %if.end169.cleanup218_crit_edge, %do.end165, %if.end155.cleanup218_crit_edge, %cleanup151.cleanup218_crit_edge, %cleanup151.thread, %rbsp_read_bit.exit465.cleanup218_crit_edge, %if.end121.cleanup218_crit_edge, %if.then115.cleanup218_crit_edge, %if.end108.cleanup218_crit_edge, %if.end104.cleanup218_crit_edge, %rbsp_read_bit.exit423.cleanup218_crit_edge, %if.end95.cleanup218_crit_edge, %if.end91.cleanup218_crit_edge, %cleanup.thread, %if.then58.cleanup218_crit_edge, %for.body.i.i389.cleanup218_crit_edge, %if.then3.i383.cleanup218_crit_edge, %while.body.i379.cleanup218_crit_edge, %if.end51.cleanup218_crit_edge, %for.body.i.i344.cleanup218_crit_edge, %if.then3.i338.cleanup218_crit_edge, %while.body.i334.cleanup218_crit_edge, %if.end47.cleanup218_crit_edge, %do.end, %for.body.i.i.cleanup218_crit_edge, %if.then3.i.cleanup218_crit_edge, %while.body.i.cleanup218_crit_edge, %if.end.cleanup218_crit_edge, %entry.cleanup218_crit_edge
  %retval.3 = phi i32 [ -22, %do.end ], [ -22, %do.end165 ], [ 0, %if.end212 ], [ %call147, %cleanup151.cleanup218_crit_edge ], [ -22, %entry.cleanup218_crit_edge ], [ %call59, %if.then58.cleanup218_crit_edge ], [ %call92, %if.end91.cleanup218_crit_edge ], [ %call101, %rbsp_read_bit.exit423.cleanup218_crit_edge ], [ %call105, %if.end104.cleanup218_crit_edge ], [ %call189, %if.end188.cleanup218_crit_edge ], [ %call193, %if.end192.cleanup218_crit_edge ], [ %call197, %if.end196.cleanup218_crit_edge ], [ %call201, %if.end200.cleanup218_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %retval.2.ph, %cleanup151.thread ], [ -22, %if.end169.cleanup218_crit_edge ], [ -22, %if.end204.cleanup218_crit_edge ], [ -22, %if.end208.cleanup218_crit_edge ], [ -22, %if.then3.i.cleanup218_crit_edge ], [ -22, %if.end.cleanup218_crit_edge ], [ -22, %if.then3.i338.cleanup218_crit_edge ], [ -22, %if.end47.cleanup218_crit_edge ], [ -22, %if.then3.i383.cleanup218_crit_edge ], [ -22, %if.end51.cleanup218_crit_edge ], [ -22, %if.end95.cleanup218_crit_edge ], [ -22, %if.end108.cleanup218_crit_edge ], [ -22, %if.then115.cleanup218_crit_edge ], [ -22, %if.end121.cleanup218_crit_edge ], [ -22, %rbsp_read_bit.exit465.cleanup218_crit_edge ], [ -22, %if.end155.cleanup218_crit_edge ], [ -22, %for.body.i.i389.cleanup218_crit_edge ], [ -22, %while.body.i379.cleanup218_crit_edge ], [ -22, %for.body.i.i344.cleanup218_crit_edge ], [ -22, %while.body.i334.cleanup218_crit_edge ], [ -22, %for.body.i.i.cleanup218_crit_edge ], [ -22, %while.body.i.cleanup218_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crop_bottom) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crop_right) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pic_height_in_map_units_minus1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pic_width_in_mbs_minus1) #8
  ret i32 %retval.3
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rbsp_read_uev(ptr nocapture noundef %rbsp, ptr noundef writeonly %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pos.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.i, align 4
  %inc.i36 = add i32 %3, 1
  store i32 %inc.i36, ptr %pos.i, align 4
  %div.i37 = sdiv i32 %3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i37, i32 %1)
  %cmp.not.i38 = icmp slt i32 %div.i37, %1
  br i1 %cmp.not.i38, label %rbsp_read_bit.exit.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rbsp_read_bit.exit.lr.ph:                         ; preds = %entry
  %4 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbsp, align 4
  br label %rbsp_read_bit.exit

rbsp_read_bit.exit:                               ; preds = %while.body.rbsp_read_bit.exit_crit_edge, %rbsp_read_bit.exit.lr.ph
  %div.i40 = phi i32 [ %div.i37, %rbsp_read_bit.exit.lr.ph ], [ %div.i, %while.body.rbsp_read_bit.exit_crit_edge ]
  %6 = phi i32 [ %3, %rbsp_read_bit.exit.lr.ph ], [ %12, %while.body.rbsp_read_bit.exit_crit_edge ]
  %leading_zero_bits.039 = phi i32 [ 0, %rbsp_read_bit.exit.lr.ph ], [ %inc, %while.body.rbsp_read_bit.exit_crit_edge ]
  %rem.i = srem i32 %6, 8
  %sub.i = sub nsw i32 7, %rem.i
  %arrayidx.i = getelementptr i8, ptr %5, i32 %div.i40
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %9 = shl nuw nsw i32 1, %sub.i
  %10 = and i32 %9, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %while.body, label %if.end

while.body:                                       ; preds = %rbsp_read_bit.exit
  %inc = add i32 %leading_zero_bits.039, 1
  %11 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %pos.i, align 4
  %div.i = sdiv i32 %12, 8
  %cmp.not.i = icmp slt i32 %div.i, %1
  br i1 %cmp.not.i, label %while.body.rbsp_read_bit.exit_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.rbsp_read_bit.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_bit.exit

if.end:                                           ; preds = %rbsp_read_bit.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading_zero_bits.039)
  %cmp2 = icmp sgt i32 %leading_zero_bits.039, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %leading_zero_bits.039)
  %cmp.i = icmp ugt i32 %leading_zero_bits.039, 32
  br i1 %cmp.i, label %if.then3.cleanup_crit_edge, label %if.then3.for.body.i_crit_edge

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %rbsp_read_bit.exit.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %tmp.023.i = phi i32 [ %or.i, %rbsp_read_bit.exit.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %i.022.i = phi i32 [ %inc.i21, %rbsp_read_bit.exit.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %pos.i, align 4
  %.frozen = freeze i32 %14
  %div.i.i = sdiv i32 %.frozen, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %1)
  %cmp.not.i.i = icmp slt i32 %div.i.i, %1
  br i1 %cmp.not.i.i, label %rbsp_read_bit.exit.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rbsp_read_bit.exit.i:                             ; preds = %for.body.i
  %15 = mul i32 %div.i.i, 8
  %rem.i.i.decomposed = sub i32 %.frozen, %15
  %sub.i.i = sub nsw i32 7, %rem.i.i.decomposed
  %16 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rbsp, align 4
  %arrayidx.i.i = getelementptr i8, ptr %17, i32 %div.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %shr.i.i = lshr i32 %conv.i.i, %sub.i.i
  %and.i.i = and i32 %shr.i.i, 1
  %20 = xor i32 %i.022.i, -1
  %sub5.i = add i32 %leading_zero_bits.039, %20
  %shl.i = shl nuw i32 %and.i.i, %sub5.i
  %or.i = or i32 %shl.i, %tmp.023.i
  %inc.i21 = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i21, %leading_zero_bits.039
  br i1 %exitcond.not.i, label %rbsp_read_bit.exit.i.if.end7_crit_edge, label %rbsp_read_bit.exit.i.for.body.i_crit_edge

rbsp_read_bit.exit.i.for.body.i_crit_edge:        ; preds = %rbsp_read_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rbsp_read_bit.exit.i.if.end7_crit_edge:           ; preds = %rbsp_read_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %rbsp_read_bit.exit.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %tmp.1 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ %or.i, %rbsp_read_bit.exit.i.if.end7_crit_edge ]
  %tobool8.not = icmp eq ptr %val, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %notmask = shl nsw i32 -1, %leading_zero_bits.039
  %sub = xor i32 %notmask, -1
  %add = add i32 %tmp.1, %sub
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rbsp_read_sev(ptr nocapture noundef %rbsp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pos.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %0 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i.i, align 4
  %2 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.i.i, align 4
  %inc.i36.i = add i32 %3, 1
  store i32 %inc.i36.i, ptr %pos.i.i, align 4
  %div.i37.i = sdiv i32 %3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i37.i, i32 %1)
  %cmp.not.i38.i = icmp slt i32 %div.i37.i, %1
  br i1 %cmp.not.i38.i, label %rbsp_read_bit.exit.lr.ph.i, label %entry.rbsp_read_uev.exit_crit_edge

entry.rbsp_read_uev.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_uev.exit

rbsp_read_bit.exit.lr.ph.i:                       ; preds = %entry
  %4 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbsp, align 4
  br label %rbsp_read_bit.exit.i

rbsp_read_bit.exit.i:                             ; preds = %while.body.i.rbsp_read_bit.exit.i_crit_edge, %rbsp_read_bit.exit.lr.ph.i
  %div.i40.i = phi i32 [ %div.i37.i, %rbsp_read_bit.exit.lr.ph.i ], [ %div.i.i, %while.body.i.rbsp_read_bit.exit.i_crit_edge ]
  %6 = phi i32 [ %3, %rbsp_read_bit.exit.lr.ph.i ], [ %12, %while.body.i.rbsp_read_bit.exit.i_crit_edge ]
  %leading_zero_bits.039.i = phi i32 [ 0, %rbsp_read_bit.exit.lr.ph.i ], [ %inc.i, %while.body.i.rbsp_read_bit.exit.i_crit_edge ]
  %rem.i.i = srem i32 %6, 8
  %sub.i.i = sub nsw i32 7, %rem.i.i
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 %div.i40.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %8 to i32
  %9 = shl nuw nsw i32 1, %sub.i.i
  %10 = and i32 %9, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %while.body.i, label %if.end.i

while.body.i:                                     ; preds = %rbsp_read_bit.exit.i
  %inc.i = add i32 %leading_zero_bits.039.i, 1
  %11 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %pos.i.i, align 4
  %div.i.i = sdiv i32 %12, 8
  %cmp.not.i.i = icmp slt i32 %div.i.i, %1
  br i1 %cmp.not.i.i, label %while.body.i.rbsp_read_bit.exit.i_crit_edge, label %while.body.i.rbsp_read_uev.exit_crit_edge

while.body.i.rbsp_read_uev.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_uev.exit

while.body.i.rbsp_read_bit.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_bit.exit.i

if.end.i:                                         ; preds = %rbsp_read_bit.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading_zero_bits.039.i)
  %cmp2.i = icmp sgt i32 %leading_zero_bits.039.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.rbsp_read_uev.exit_crit_edge

if.end.i.rbsp_read_uev.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_uev.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %leading_zero_bits.039.i)
  %cmp.i.i = icmp ugt i32 %leading_zero_bits.039.i, 32
  br i1 %cmp.i.i, label %if.then3.i.rbsp_read_uev.exit_crit_edge, label %for.body.i.i.preheader

if.then3.i.rbsp_read_uev.exit_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_uev.exit

for.body.i.i.preheader:                           ; preds = %if.then3.i
  %13 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pos.i.i.promoted = load i32, ptr %pos.i.i, align 4
  %14 = add i32 %leading_zero_bits.039.i, %pos.i.i.promoted
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %inc.i.i.i3 = phi i32 [ %inc.i.i.i, %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge ], [ %pos.i.i.promoted, %for.body.i.i.preheader ]
  %i.022.i.i = phi i32 [ %inc.i21.i, %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %inc.i.i.i = add i32 %inc.i.i.i3, 1
  %div.i.i.i = sdiv i32 %inc.i.i.i3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i, i32 %1)
  %cmp.not.i.i.i = icmp slt i32 %div.i.i.i, %1
  br i1 %cmp.not.i.i.i, label %rbsp_read_bit.exit.i.i, label %for.body.i.i.rbsp_read_uev.exit.loopexit_crit_edge

for.body.i.i.rbsp_read_uev.exit.loopexit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_uev.exit.loopexit

rbsp_read_bit.exit.i.i:                           ; preds = %for.body.i.i
  %inc.i21.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i21.i, %leading_zero_bits.039.i
  br i1 %exitcond.not.i.i, label %rbsp_read_bit.exit.i.i.rbsp_read_uev.exit.loopexit_crit_edge, label %rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge

rbsp_read_bit.exit.i.i.for.body.i.i_crit_edge:    ; preds = %rbsp_read_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

rbsp_read_bit.exit.i.i.rbsp_read_uev.exit.loopexit_crit_edge: ; preds = %rbsp_read_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rbsp_read_uev.exit.loopexit

rbsp_read_uev.exit.loopexit:                      ; preds = %rbsp_read_bit.exit.i.i.rbsp_read_uev.exit.loopexit_crit_edge, %for.body.i.i.rbsp_read_uev.exit.loopexit_crit_edge
  %inc.i.i.i.lcssa = phi i32 [ %inc.i.i.i, %for.body.i.i.rbsp_read_uev.exit.loopexit_crit_edge ], [ %14, %rbsp_read_bit.exit.i.i.rbsp_read_uev.exit.loopexit_crit_edge ]
  %retval.0.i.ph = phi i32 [ -22, %for.body.i.i.rbsp_read_uev.exit.loopexit_crit_edge ], [ 0, %rbsp_read_bit.exit.i.i.rbsp_read_uev.exit.loopexit_crit_edge ]
  %15 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i.i.i.lcssa, ptr %pos.i.i, align 4
  br label %rbsp_read_uev.exit

rbsp_read_uev.exit:                               ; preds = %rbsp_read_uev.exit.loopexit, %if.then3.i.rbsp_read_uev.exit_crit_edge, %if.end.i.rbsp_read_uev.exit_crit_edge, %while.body.i.rbsp_read_uev.exit_crit_edge, %entry.rbsp_read_uev.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then3.i.rbsp_read_uev.exit_crit_edge ], [ -22, %entry.rbsp_read_uev.exit_crit_edge ], [ 0, %if.end.i.rbsp_read_uev.exit_crit_edge ], [ %retval.0.i.ph, %rbsp_read_uev.exit.loopexit ], [ -22, %while.body.i.rbsp_read_uev.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rbsp_write_uev(ptr nocapture noundef %rbsp, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %value, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not.i = icmp eq i32 %add, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 true) #8, !range !24
  %sub.i = sub nuw nsw i32 32, %0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp18 = icmp ugt i32 %cond.i, 1
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pos.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %1 = add nsw i32 %cond.i, -2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %pos.i, align 4
  %.frozen = freeze i32 %3
  %div.i = sdiv i32 %.frozen, 8
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %5)
  %cmp.not.i = icmp slt i32 %div.i, %5
  br i1 %cmp.not.i, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %6 = mul i32 %div.i, 8
  %rem.i.decomposed = sub i32 %.frozen, %6
  %sub.i12 = sub nsw i32 7, %rem.i.decomposed
  %shl.i = shl nuw nsw i32 1, %sub.i12
  %7 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rbsp, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 %div.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = trunc i32 %shl.i to i8
  %12 = xor i8 %11, -1
  %conv2.i = and i8 %10, %12
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %i.019, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not7.i = icmp eq i32 %cond.i, 0
  br i1 %tobool.not7.i, label %for.end.cleanup_crit_edge, label %while.body.lr.ph.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %for.end
  %size.i.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %rbsp_write_bit.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %num.addr.08.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %dec.i, %rbsp_write_bit.exit.i.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i.i, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %pos.i.i, align 4
  %.frozen24 = freeze i32 %14
  %div.i.i = sdiv i32 %.frozen24, 8
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %16)
  %cmp.not.i.i = icmp slt i32 %div.i.i, %16
  br i1 %cmp.not.i.i, label %rbsp_write_bit.exit.i, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rbsp_write_bit.exit.i:                            ; preds = %while.body.i
  %dec.i = add nsw i32 %num.addr.08.i, -1
  %shr4.i = lshr i32 %add, %dec.i
  %and.i = and i32 %shr4.i, 1
  %17 = mul i32 %div.i.i, 8
  %rem.i.i.decomposed = sub i32 %.frozen24, %17
  %sub.i.i = sub nsw i32 7, %rem.i.i.decomposed
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %18 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rbsp, align 4
  %arrayidx.i.i = getelementptr i8, ptr %19, i32 %div.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 1
  %22 = trunc i32 %shl.i.i to i8
  %23 = xor i8 %22, -1
  %conv2.i.i = and i8 %21, %23
  store i8 %conv2.i.i, ptr %arrayidx.i.i, align 1
  %shl3.i.i = shl nuw nsw i32 %and.i, %sub.i.i
  %24 = load ptr, ptr %rbsp, align 4
  %arrayidx5.i.i = getelementptr i8, ptr %24, i32 %div.i.i
  %25 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.i.i, align 1
  %27 = trunc i32 %shl3.i.i to i8
  %conv7.i.i = or i8 %26, %27
  store i8 %conv7.i.i, ptr %arrayidx5.i.i, align 1
  %tobool.not.i13 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i13, label %rbsp_write_bit.exit.i.cleanup_crit_edge, label %rbsp_write_bit.exit.i.while.body.i_crit_edge

rbsp_write_bit.exit.i.while.body.i_crit_edge:     ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

rbsp_write_bit.exit.i.cleanup_crit_edge:          ; preds = %rbsp_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %rbsp_write_bit.exit.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %rbsp_write_bit.exit.i.cleanup_crit_edge ], [ -22, %while.body.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/coda/coda-h264.c", i32 284, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @coda_h264_sps_fixup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @coda_h264_sps_fixup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/coda/coda-h264.c", i32 386, i32 3}
!10 = !{ptr @coda_h264_sps_fixup._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @coda_h264_sps_fixup._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @coda_filler_size, !13, !"coda_filler_size", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/coda/coda-h264.c", i32 16, i32 17}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i32 0, i32 33}
