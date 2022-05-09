; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus_video.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cedrus_format = type { i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon, i32, i32 }
%union.anon = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_format = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.86, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.86 = type { i8 }
%struct.cedrus_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, i32, %struct.v4l2_ctrl_handler, ptr, %union.anon.121 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cedrus_dev = type { %struct.v4l2_device, %struct.video_device, %struct.media_device, [2 x %struct.media_pad], ptr, ptr, ptr, [4 x ptr], %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.109 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.106], %struct.media_entity_enum, i32 }
%struct.anon.106 = type { ptr, ptr }
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
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.119, i32 }
%union.anon.119 = type { i32 }
%struct.cedrus_dec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }

@cedrus_ioctl_ops = dso_local constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cedrus_querycap, ptr @cedrus_enum_fmt_vid_cap, ptr null, ptr @cedrus_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @cedrus_g_fmt_vid_cap, ptr null, ptr @cedrus_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cedrus_s_fmt_vid_cap, ptr null, ptr @cedrus_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cedrus_try_fmt_vid_cap, ptr null, ptr @cedrus_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_stateless_decoder_cmd, ptr @v4l2_m2m_ioctl_stateless_try_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@cedrus_qops = internal global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @cedrus_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @cedrus_buf_out_validate, ptr null, ptr @cedrus_buf_prepare, ptr null, ptr null, ptr @cedrus_start_streaming, ptr @cedrus_stop_streaming, ptr @cedrus_buf_queue, ptr @cedrus_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cedrus\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@cedrus_formats = internal global { [6 x %struct.cedrus_format], [56 x i8] } { [6 x %struct.cedrus_format] [%struct.cedrus_format { i32 1395803981, i32 1, i32 8 }, %struct.cedrus_format { i32 875967059, i32 1, i32 4 }, %struct.cedrus_format { i32 892744275, i32 1, i32 2 }, %struct.cedrus_format { i32 1178095702, i32 1, i32 16 }, %struct.cedrus_format { i32 842093651, i32 2, i32 0 }, %struct.cedrus_format { i32 842094158, i32 2, i32 1 }], [56 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 842093651, i64 842094158, i64 875967059, i64 892744275, i64 1178095702, i64 1395803981]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 875967059, i64 892744275]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 842093651, i64 842094158, i64 875967059, i64 892744275, i64 1178095702, i64 1395803981]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 32, i64 842093651, i64 842094158, i64 875967059, i64 892744275, i64 1178095702, i64 1395803981]
@__sancov_gen_cov_switch_values.6 = internal global [8 x i64] [i64 6, i64 32, i64 842093651, i64 842094158, i64 875967059, i64 892744275, i64 1178095702, i64 1395803981]
@__sancov_gen_cov_switch_values.7 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.8 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 875967059, i64 892744275, i64 1178095702, i64 1395803981]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.11 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.13 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"cedrus_ioctl_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 365, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"cedrus_qops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 551, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 168, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 171, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"cedrus_formats\00", align 1
@___asan_gen_.27 = private constant [53 x i8] c"../drivers/staging/media/sunxi/cedrus/cedrus_video.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 37, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1163, i32 7 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @cedrus_ioctl_ops, ptr @cedrus_qops, ptr @.str, ptr @.str.1, ptr @cedrus_formats, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_formats to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cedrus_prepare_format(ptr nocapture noundef %pix_fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pix_fmt, align 4
  %height2 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 1
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %sizeimage3 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 5
  %4 = ptrtoint ptr %sizeimage3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage3, align 4
  %bytesperline4 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 4
  %6 = ptrtoint ptr %bytesperline4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytesperline4, align 4
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %1, i32 16)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 4096)
  %11 = tail call i32 @llvm.umax.i32(i32 %3, i32 16)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 2304)
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %entry.sw.epilog_crit_edge [
    i32 1395803981, label %entry.sw.bb_crit_edge
    i32 875967059, label %entry.sw.bb_crit_edge90
    i32 892744275, label %entry.sw.bb_crit_edge91
    i32 1178095702, label %entry.sw.bb_crit_edge92
    i32 842093651, label %sw.bb29
    i32 842094158, label %sw.bb36
  ]

entry.sw.bb_crit_edge92:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge91:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge90:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge90, %entry.sw.bb_crit_edge91, %entry.sw.bb_crit_edge92
  %16 = tail call i32 @llvm.umax.i32(i32 %5, i32 1024)
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nuw nsw i32 %10, 31
  %and = and i32 %add, 16352
  %add30 = add nuw nsw i32 %12, 31
  %and31 = and i32 %add30, 8160
  %mul = mul nuw nsw i32 %and31, %and
  %add32 = add nuw nsw i32 %and31, 63
  %and33 = and i32 %add32, 16320
  %mul34 = mul nuw nsw i32 %and33, %and
  %div88 = lshr exact i32 %mul34, 1
  %add35 = add nuw nsw i32 %div88, %mul
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add37 = add nuw nsw i32 %10, 15
  %and38 = and i32 %add37, 16368
  %add39 = add nuw nsw i32 %12, 15
  %and40 = and i32 %add39, 8176
  %mul41 = mul nuw nsw i32 %and40, %and38
  %div4387 = lshr exact i32 %mul41, 1
  %add44 = add nuw nsw i32 %div4387, %mul41
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb29, %sw.bb, %entry.sw.epilog_crit_edge
  %bytesperline.0 = phi i32 [ %7, %entry.sw.epilog_crit_edge ], [ %and38, %sw.bb36 ], [ %and, %sw.bb29 ], [ 0, %sw.bb ]
  %sizeimage.0 = phi i32 [ %5, %entry.sw.epilog_crit_edge ], [ %add44, %sw.bb36 ], [ %add35, %sw.bb29 ], [ %16, %sw.bb ]
  %height.0 = phi i32 [ %12, %entry.sw.epilog_crit_edge ], [ %and40, %sw.bb36 ], [ %and31, %sw.bb29 ], [ %12, %sw.bb ]
  %17 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %pix_fmt, align 4
  %18 = ptrtoint ptr %height2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %height.0, ptr %height2, align 4
  %19 = ptrtoint ptr %bytesperline4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bytesperline.0, ptr %bytesperline4, align 4
  %20 = ptrtoint ptr %sizeimage3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sizeimage.0, ptr %sizeimage3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_enum_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cedrus_enum_fmt(ptr noundef %file, ptr noundef %f, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_enum_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cedrus_enum_fmt(ptr noundef %file, ptr noundef %f, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cedrus_g_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %dst_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %fmt, ptr %dst_fmt, i32 48)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cedrus_g_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %fmt, ptr %src_fmt, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_s_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #12
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call1, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @cedrus_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dst_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %dst_fmt, ptr %fmt, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_s_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @cedrus_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #12
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 28
  %6 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %lor.lhs.false.if.end7_crit_edge, label %land.lhs.true

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  %pixelformat5 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  %call10 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %14, i32 noundef 1) #12
  %num_buffers.i73 = getelementptr inbounds %struct.vb2_queue, ptr %call10, i32 0, i32 21
  %15 = ptrtoint ptr %num_buffers.i73 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_buffers.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i74.not = icmp eq i32 %16, 0
  br i1 %cmp.i74.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = tail call i32 @cedrus_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %src_fmt18 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2
  %fmt19 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %src_fmt18, ptr %fmt19, i32 48)
  %pixelformat21 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %pixelformat21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat21, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %19, label %sw.default [
    i32 875967059, label %if.end17.sw.bb_crit_edge
    i32 892744275, label %if.end17.sw.bb_crit_edge75
  ]

if.end17.sw.bb_crit_edge75:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end17.sw.bb_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end17.sw.bb_crit_edge, %if.end17.sw.bb_crit_edge75
  %subsystem_flags = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 11
  %21 = ptrtoint ptr %subsystem_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %subsystem_flags, align 4
  %or = or i32 %22, 1
  store i32 %or, ptr %subsystem_flags, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %subsystem_flags22 = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 11
  %23 = ptrtoint ptr %subsystem_flags22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %subsystem_flags22, align 4
  %and = and i32 %24, -2
  store i32 %and, ptr %subsystem_flags22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorspace, align 4
  %dst_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3
  %colorspace24 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 6
  %27 = ptrtoint ptr %colorspace24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %colorspace24, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xfer_func, align 4
  %xfer_func27 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 11
  %30 = ptrtoint ptr %xfer_func27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %xfer_func27, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quantization, align 4
  %quantization32 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 10
  %38 = ptrtoint ptr %quantization32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %quantization32, align 4
  %39 = ptrtoint ptr %src_fmt18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %src_fmt18, align 4
  %height = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height, align 4
  %height38 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 1
  %sizeimage3.i = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 5
  %43 = ptrtoint ptr %sizeimage3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sizeimage3.i, align 4
  %bytesperline4.i = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bytesperline4.i, align 4
  %field.i = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %field.i, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %40, i32 16) #12
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 4096) #12
  %50 = tail call i32 @llvm.umax.i32(i32 %42, i32 16) #12
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 2304) #12
  %pixelformat.i = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pixelformat.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %53, label %sw.epilog.cedrus_prepare_format.exit_crit_edge [
    i32 1395803981, label %sw.epilog.sw.bb.i_crit_edge
    i32 875967059, label %sw.epilog.sw.bb.i_crit_edge76
    i32 892744275, label %sw.epilog.sw.bb.i_crit_edge77
    i32 1178095702, label %sw.epilog.sw.bb.i_crit_edge78
    i32 842093651, label %sw.bb29.i
    i32 842094158, label %sw.bb36.i
  ]

sw.epilog.sw.bb.i_crit_edge78:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge77:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge76:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.epilog.sw.bb.i_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.epilog.cedrus_prepare_format.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cedrus_prepare_format.exit

sw.bb.i:                                          ; preds = %sw.epilog.sw.bb.i_crit_edge, %sw.epilog.sw.bb.i_crit_edge76, %sw.epilog.sw.bb.i_crit_edge77, %sw.epilog.sw.bb.i_crit_edge78
  %55 = tail call i32 @llvm.umax.i32(i32 %44, i32 1024) #12
  br label %cedrus_prepare_format.exit

sw.bb29.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nuw nsw i32 %49, 31
  %and.i = and i32 %add.i, 16352
  %add30.i = add nuw nsw i32 %51, 31
  %and31.i = and i32 %add30.i, 8160
  %mul.i = mul nuw nsw i32 %and31.i, %and.i
  %add32.i = add nuw nsw i32 %and31.i, 63
  %and33.i = and i32 %add32.i, 16320
  %mul34.i = mul nuw nsw i32 %and33.i, %and.i
  %div88.i = lshr exact i32 %mul34.i, 1
  %add35.i = add nuw nsw i32 %div88.i, %mul.i
  br label %cedrus_prepare_format.exit

sw.bb36.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %add37.i = add nuw nsw i32 %49, 15
  %and38.i = and i32 %add37.i, 16368
  %add39.i = add nuw nsw i32 %51, 15
  %and40.i = and i32 %add39.i, 8176
  %mul41.i = mul nuw nsw i32 %and40.i, %and38.i
  %div4387.i = lshr exact i32 %mul41.i, 1
  %add44.i = add nuw nsw i32 %div4387.i, %mul41.i
  br label %cedrus_prepare_format.exit

cedrus_prepare_format.exit:                       ; preds = %sw.bb36.i, %sw.bb29.i, %sw.bb.i, %sw.epilog.cedrus_prepare_format.exit_crit_edge
  %bytesperline.0.i = phi i32 [ %46, %sw.epilog.cedrus_prepare_format.exit_crit_edge ], [ %and38.i, %sw.bb36.i ], [ %and.i, %sw.bb29.i ], [ 0, %sw.bb.i ]
  %sizeimage.0.i = phi i32 [ %44, %sw.epilog.cedrus_prepare_format.exit_crit_edge ], [ %add44.i, %sw.bb36.i ], [ %add35.i, %sw.bb29.i ], [ %55, %sw.bb.i ]
  %height.0.i = phi i32 [ %51, %sw.epilog.cedrus_prepare_format.exit_crit_edge ], [ %and40.i, %sw.bb36.i ], [ %and31.i, %sw.bb29.i ], [ %51, %sw.bb.i ]
  %56 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %49, ptr %dst_fmt, align 4
  %57 = ptrtoint ptr %height38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %height.0.i, ptr %height38, align 4
  %58 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %bytesperline.0.i, ptr %bytesperline4.i, align 4
  %59 = ptrtoint ptr %sizeimage3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sizeimage.0.i, ptr %sizeimage3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cedrus_prepare_format.exit, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cedrus_prepare_format.exit ], [ %call1, %entry.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_try_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %capabilities = getelementptr inbounds %struct.cedrus_dev, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 4
  %call3 = tail call fastcc ptr @cedrus_find_format(i32 noundef %5, i32 noundef 2, i32 noundef %7)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call3, align 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src_fmt, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %height8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %sizeimage3.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %16 = ptrtoint ptr %sizeimage3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sizeimage3.i, align 4
  %bytesperline4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesperline4.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field.i, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %12, i32 16) #12
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 4096) #12
  %23 = tail call i32 @llvm.umax.i32(i32 %15, i32 16) #12
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 2304) #12
  %25 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %9, label %if.end.cedrus_prepare_format.exit_crit_edge [
    i32 1395803981, label %if.end.sw.bb.i_crit_edge
    i32 875967059, label %if.end.sw.bb.i_crit_edge19
    i32 892744275, label %if.end.sw.bb.i_crit_edge20
    i32 1178095702, label %if.end.sw.bb.i_crit_edge21
    i32 842093651, label %sw.bb29.i
    i32 842094158, label %sw.bb36.i
  ]

if.end.sw.bb.i_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge19:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.cedrus_prepare_format.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cedrus_prepare_format.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge19, %if.end.sw.bb.i_crit_edge20, %if.end.sw.bb.i_crit_edge21
  %26 = tail call i32 @llvm.umax.i32(i32 %17, i32 1024) #12
  br label %cedrus_prepare_format.exit

sw.bb29.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nuw nsw i32 %22, 31
  %and.i = and i32 %add.i, 16352
  %add30.i = add nuw nsw i32 %24, 31
  %and31.i = and i32 %add30.i, 8160
  %mul.i = mul nuw nsw i32 %and31.i, %and.i
  %add32.i = add nuw nsw i32 %and31.i, 63
  %and33.i = and i32 %add32.i, 16320
  %mul34.i = mul nuw nsw i32 %and33.i, %and.i
  %div88.i = lshr exact i32 %mul34.i, 1
  %add35.i = add nuw nsw i32 %div88.i, %mul.i
  br label %cedrus_prepare_format.exit

sw.bb36.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add37.i = add nuw nsw i32 %22, 15
  %and38.i = and i32 %add37.i, 16368
  %add39.i = add nuw nsw i32 %24, 15
  %and40.i = and i32 %add39.i, 8176
  %mul41.i = mul nuw nsw i32 %and40.i, %and38.i
  %div4387.i = lshr exact i32 %mul41.i, 1
  %add44.i = add nuw nsw i32 %div4387.i, %mul41.i
  br label %cedrus_prepare_format.exit

cedrus_prepare_format.exit:                       ; preds = %sw.bb36.i, %sw.bb29.i, %sw.bb.i, %if.end.cedrus_prepare_format.exit_crit_edge
  %bytesperline.0.i = phi i32 [ %19, %if.end.cedrus_prepare_format.exit_crit_edge ], [ %and38.i, %sw.bb36.i ], [ %and.i, %sw.bb29.i ], [ 0, %sw.bb.i ]
  %sizeimage.0.i = phi i32 [ %17, %if.end.cedrus_prepare_format.exit_crit_edge ], [ %add44.i, %sw.bb36.i ], [ %add35.i, %sw.bb29.i ], [ %26, %sw.bb.i ]
  %height.0.i = phi i32 [ %24, %if.end.cedrus_prepare_format.exit_crit_edge ], [ %and40.i, %sw.bb36.i ], [ %and31.i, %sw.bb29.i ], [ %24, %sw.bb.i ]
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %fmt, align 4
  %28 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %height.0.i, ptr %height8, align 4
  %29 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bytesperline.0.i, ptr %bytesperline4.i, align 4
  %30 = ptrtoint ptr %sizeimage3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sizeimage.0.i, ptr %sizeimage3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cedrus_prepare_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cedrus_prepare_format.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_try_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %capabilities = getelementptr inbounds %struct.cedrus_dev, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 4
  %call3 = tail call fastcc ptr @cedrus_find_format(i32 noundef %5, i32 noundef 1, i32 noundef %7)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call3, align 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height2.i, align 4
  %sizeimage3.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %sizeimage3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizeimage3.i, align 4
  %bytesperline4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesperline4.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field.i, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %12, i32 16) #12
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 4096) #12
  %22 = tail call i32 @llvm.umax.i32(i32 %14, i32 16) #12
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 2304) #12
  %24 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %9, label %if.end.cedrus_prepare_format.exit_crit_edge [
    i32 1395803981, label %if.end.sw.bb.i_crit_edge
    i32 875967059, label %if.end.sw.bb.i_crit_edge12
    i32 892744275, label %if.end.sw.bb.i_crit_edge13
    i32 1178095702, label %if.end.sw.bb.i_crit_edge14
    i32 842093651, label %sw.bb29.i
    i32 842094158, label %sw.bb36.i
  ]

if.end.sw.bb.i_crit_edge14:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge13:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge12:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.cedrus_prepare_format.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cedrus_prepare_format.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge12, %if.end.sw.bb.i_crit_edge13, %if.end.sw.bb.i_crit_edge14
  %25 = tail call i32 @llvm.umax.i32(i32 %16, i32 1024) #12
  br label %cedrus_prepare_format.exit

sw.bb29.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nuw nsw i32 %21, 31
  %and.i = and i32 %add.i, 16352
  %add30.i = add nuw nsw i32 %23, 31
  %and31.i = and i32 %add30.i, 8160
  %mul.i = mul nuw nsw i32 %and31.i, %and.i
  %add32.i = add nuw nsw i32 %and31.i, 63
  %and33.i = and i32 %add32.i, 16320
  %mul34.i = mul nuw nsw i32 %and33.i, %and.i
  %div88.i = lshr exact i32 %mul34.i, 1
  %add35.i = add nuw nsw i32 %div88.i, %mul.i
  br label %cedrus_prepare_format.exit

sw.bb36.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add37.i = add nuw nsw i32 %21, 15
  %and38.i = and i32 %add37.i, 16368
  %add39.i = add nuw nsw i32 %23, 15
  %and40.i = and i32 %add39.i, 8176
  %mul41.i = mul nuw nsw i32 %and40.i, %and38.i
  %div4387.i = lshr exact i32 %mul41.i, 1
  %add44.i = add nuw nsw i32 %div4387.i, %mul41.i
  br label %cedrus_prepare_format.exit

cedrus_prepare_format.exit:                       ; preds = %sw.bb36.i, %sw.bb29.i, %sw.bb.i, %if.end.cedrus_prepare_format.exit_crit_edge
  %bytesperline.0.i = phi i32 [ %18, %if.end.cedrus_prepare_format.exit_crit_edge ], [ %and38.i, %sw.bb36.i ], [ %and.i, %sw.bb29.i ], [ 0, %sw.bb.i ]
  %sizeimage.0.i = phi i32 [ %16, %if.end.cedrus_prepare_format.exit_crit_edge ], [ %add44.i, %sw.bb36.i ], [ %add35.i, %sw.bb29.i ], [ %25, %sw.bb.i ]
  %height.0.i = phi i32 [ %23, %if.end.cedrus_prepare_format.exit_crit_edge ], [ %and40.i, %sw.bb36.i ], [ %and31.i, %sw.bb29.i ], [ %23, %sw.bb.i ]
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %21, ptr %fmt, align 4
  %27 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %height.0.i, ptr %height2.i, align 4
  %28 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bytesperline.0.i, ptr %bytesperline4.i, align 4
  %29 = ptrtoint ptr %sizeimage3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sizeimage.0.i, ptr %sizeimage3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cedrus_prepare_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cedrus_prepare_format.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_stateless_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_stateless_try_decoder_cmd(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cedrus_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %io_modes, align 4
  %dma_attrs = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 3
  %2 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %dma_attrs, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %4 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 752, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cedrus_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %7 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.cedrus_ctx, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.cedrus_dev, ptr %9, i32 0, i32 8
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev_mutex, ptr %lock, align 4
  %11 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.cedrus_dev, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev3, align 4
  %supports_requests = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %15 = ptrtoint ptr %supports_requests to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %supports_requests, align 4
  %bf.set6 = or i16 %bf.load, 1536
  store i16 %bf.set6, ptr %supports_requests, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dst_vq, align 4
  %io_modes8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %17 = ptrtoint ptr %io_modes8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %io_modes8, align 4
  %drv_priv9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %18 = ptrtoint ptr %drv_priv9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %priv, ptr %drv_priv9, align 4
  %buf_struct_size10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %19 = ptrtoint ptr %buf_struct_size10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 752, ptr %buf_struct_size10, align 4
  %ops11 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %20 = ptrtoint ptr %ops11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cedrus_qops, ptr %ops11, align 4
  %mem_ops12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %21 = ptrtoint ptr %mem_ops12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops12, align 4
  %timestamp_flags13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %22 = ptrtoint ptr %timestamp_flags13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16384, ptr %timestamp_flags13, align 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev_mutex15 = getelementptr inbounds %struct.cedrus_dev, ptr %24, i32 0, i32 8
  %lock16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %25 = ptrtoint ptr %lock16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev_mutex15, ptr %lock16, align 4
  %26 = load ptr, ptr %dev, align 4
  %dev18 = getelementptr inbounds %struct.cedrus_dev, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev18, align 4
  %dev19 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %29 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dev19, align 4
  %call20 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cedrus_enum_fmt(ptr nocapture noundef readonly %file, ptr nocapture noundef %f, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %capabilities2 = getelementptr inbounds %struct.cedrus_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %capabilities2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities2, align 4
  %6 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %and = and i32 %6, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp6.not = icmp eq i32 %and, %6
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  %7 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 0, i32 1), align 4
  %and8 = and i32 %7, %direction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.for.inc_crit_edge, label %if.end11

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.end11.if.then18.critedge_crit_edge, label %if.end11.for.inc_crit_edge

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end11.if.then18.critedge_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.critedge

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %index.1 = phi i32 [ 0, %if.end.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ], [ 1, %if.end11.for.inc_crit_edge ]
  %10 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1 = icmp eq i32 %10, 0
  %and.1 = and i32 %10, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %10)
  %cmp6.not.1 = icmp eq i32 %and.1, %10
  %or.cond.1 = select i1 %tobool.not.1, i1 true, i1 %cmp6.not.1
  br i1 %or.cond.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %11 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 1, i32 1), align 4
  %and8.1 = and i32 %11, %direction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end11.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end11.1:                                       ; preds = %if.end.1
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1, i32 %13)
  %cmp13.1 = icmp eq i32 %index.1, %13
  br i1 %cmp13.1, label %if.end11.1.if.then18.critedge_crit_edge, label %if.end15.1

if.end11.1.if.then18.critedge_crit_edge:          ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.critedge

if.end15.1:                                       ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #14
  %inc.1 = add nuw nsw i32 %index.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end15.1, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %index.1.1 = phi i32 [ %inc.1, %if.end15.1 ], [ %index.1, %if.end.1.for.inc.1_crit_edge ], [ %index.1, %for.inc.for.inc.1_crit_edge ]
  %14 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.2 = icmp eq i32 %14, 0
  %and.2 = and i32 %14, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2, i32 %14)
  %cmp6.not.2 = icmp eq i32 %and.2, %14
  %or.cond.2 = select i1 %tobool.not.2, i1 true, i1 %cmp6.not.2
  br i1 %or.cond.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %15 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 2, i32 1), align 4
  %and8.2 = and i32 %15, %direction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2)
  %tobool9.not.2 = icmp eq i32 %and8.2, 0
  br i1 %tobool9.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.end11.2

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end11.2:                                       ; preds = %if.end.2
  %16 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.1, i32 %17)
  %cmp13.2 = icmp eq i32 %index.1.1, %17
  br i1 %cmp13.2, label %if.end11.2.if.then18.critedge_crit_edge, label %if.end15.2

if.end11.2.if.then18.critedge_crit_edge:          ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.critedge

if.end15.2:                                       ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #14
  %inc.2 = add nuw nsw i32 %index.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end15.2, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %index.1.2 = phi i32 [ %inc.2, %if.end15.2 ], [ %index.1.1, %if.end.2.for.inc.2_crit_edge ], [ %index.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.3 = icmp eq i32 %18, 0
  %and.3 = and i32 %18, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.3, i32 %18)
  %cmp6.not.3 = icmp eq i32 %and.3, %18
  %or.cond.3 = select i1 %tobool.not.3, i1 true, i1 %cmp6.not.3
  br i1 %or.cond.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %19 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 3, i32 1), align 4
  %and8.3 = and i32 %19, %direction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3)
  %tobool9.not.3 = icmp eq i32 %and8.3, 0
  br i1 %tobool9.not.3, label %if.end.3.for.inc.3_crit_edge, label %if.end11.3

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end11.3:                                       ; preds = %if.end.3
  %20 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.2, i32 %21)
  %cmp13.3 = icmp eq i32 %index.1.2, %21
  br i1 %cmp13.3, label %if.end11.3.if.then18.critedge_crit_edge, label %if.end15.3

if.end11.3.if.then18.critedge_crit_edge:          ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.critedge

if.end15.3:                                       ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #14
  %inc.3 = add nuw nsw i32 %index.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end15.3, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %index.1.3 = phi i32 [ %inc.3, %if.end15.3 ], [ %index.1.2, %if.end.3.for.inc.3_crit_edge ], [ %index.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %22 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.4 = icmp eq i32 %22, 0
  %and.4 = and i32 %22, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.4, i32 %22)
  %cmp6.not.4 = icmp eq i32 %and.4, %22
  %or.cond.4 = select i1 %tobool.not.4, i1 true, i1 %cmp6.not.4
  br i1 %or.cond.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %23 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 4, i32 1), align 4
  %and8.4 = and i32 %23, %direction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4)
  %tobool9.not.4 = icmp eq i32 %and8.4, 0
  br i1 %tobool9.not.4, label %if.end.4.for.inc.4_crit_edge, label %if.end11.4

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end11.4:                                       ; preds = %if.end.4
  %24 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.3, i32 %25)
  %cmp13.4 = icmp eq i32 %index.1.3, %25
  br i1 %cmp13.4, label %if.end11.4.if.then18.critedge_crit_edge, label %if.end15.4

if.end11.4.if.then18.critedge_crit_edge:          ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.critedge

if.end15.4:                                       ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #14
  %inc.4 = add nuw nsw i32 %index.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end15.4, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %index.1.4 = phi i32 [ %inc.4, %if.end15.4 ], [ %index.1.3, %if.end.4.for.inc.4_crit_edge ], [ %index.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %26 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.5 = icmp eq i32 %26, 0
  %and.5 = and i32 %26, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and.5, i32 %26)
  %cmp6.not.5 = icmp eq i32 %and.5, %26
  %or.cond.5 = select i1 %tobool.not.5, i1 true, i1 %cmp6.not.5
  br i1 %or.cond.5, label %if.end.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.5:                                         ; preds = %for.inc.4
  %27 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 5, i32 1), align 4
  %and8.5 = and i32 %27, %direction
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.5)
  %tobool9.not.5 = icmp eq i32 %and8.5, 0
  br i1 %tobool9.not.5, label %if.end.5.cleanup_crit_edge, label %if.end11.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.5:                                       ; preds = %if.end.5
  %28 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.4, i32 %29)
  %cmp13.5 = icmp eq i32 %index.1.4, %29
  br i1 %cmp13.5, label %if.end11.5.if.then18.critedge_crit_edge, label %if.end11.5.cleanup_crit_edge

if.end11.5.cleanup_crit_edge:                     ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.5.if.then18.critedge_crit_edge:          ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.critedge

if.then18.critedge:                               ; preds = %if.end11.5.if.then18.critedge_crit_edge, %if.end11.4.if.then18.critedge_crit_edge, %if.end11.3.if.then18.critedge_crit_edge, %if.end11.2.if.then18.critedge_crit_edge, %if.end11.1.if.then18.critedge_crit_edge, %if.end11.if.then18.critedge_crit_edge
  %i.037.lcssa = phi i32 [ 0, %if.end11.if.then18.critedge_crit_edge ], [ 1, %if.end11.1.if.then18.critedge_crit_edge ], [ 2, %if.end11.2.if.then18.critedge_crit_edge ], [ 3, %if.end11.3.if.then18.critedge_crit_edge ], [ 4, %if.end11.4.if.then18.critedge_crit_edge ], [ 5, %if.end11.5.if.then18.critedge_crit_edge ]
  %arrayidx19 = getelementptr [6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 %i.037.lcssa
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19, align 4
  %pixelformat20 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %32 = ptrtoint ptr %pixelformat20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pixelformat20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18.critedge, %if.end11.5.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18.critedge ], [ -22, %if.end11.5.cleanup_crit_edge ], [ -22, %if.end.5.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cedrus_find_format(i32 noundef %pixelformat, i32 noundef %directions, i32 noundef %capabilities) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 0, i32 2), align 4
  %and = and i32 %0, %capabilities
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %0)
  %cmp3.not = icmp eq i32 %and, %0
  br i1 %cmp3.not, label %lor.lhs.false, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 0, i32 1), align 4
  %and5 = and i32 %1, %directions
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr @cedrus_formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pixelformat)
  %cmp7 = icmp eq i32 %2, %pixelformat
  br i1 %cmp7, label %if.end.for.end.thread_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %tobool10.not.1 = phi ptr [ getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 1), %entry.for.inc_crit_edge ], [ getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 1), %lor.lhs.false.for.inc_crit_edge ], [ @cedrus_formats, %if.end.for.inc_crit_edge ]
  %first_valid_fmt.1 = phi ptr [ null, %entry.for.inc_crit_edge ], [ null, %lor.lhs.false.for.inc_crit_edge ], [ @cedrus_formats, %if.end.for.inc_crit_edge ]
  %3 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 1, i32 2), align 4
  %and.1 = and i32 %3, %capabilities
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %3)
  %cmp3.not.1 = icmp eq i32 %and.1, %3
  br i1 %cmp3.not.1, label %lor.lhs.false.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %4 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 1, i32 1), align 4
  %and5.1 = and i32 %4, %directions
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1)
  %tobool.not.1 = icmp eq i32 %and5.1, 0
  br i1 %tobool.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  %5 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pixelformat)
  %cmp7.1 = icmp eq i32 %5, %pixelformat
  br i1 %cmp7.1, label %if.end.1.for.end.thread_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1.for.end.thread_crit_edge:                ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %first_valid_fmt.1.1 = phi ptr [ %first_valid_fmt.1, %for.inc.for.inc.1_crit_edge ], [ %first_valid_fmt.1, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %tobool10.not.1, %if.end.1.for.inc.1_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 2, i32 2), align 4
  %and.2 = and i32 %6, %capabilities
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2, i32 %6)
  %cmp3.not.2 = icmp eq i32 %and.2, %6
  br i1 %cmp3.not.2, label %lor.lhs.false.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %7 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 2, i32 1), align 4
  %and5.2 = and i32 %7, %directions
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2)
  %tobool.not.2 = icmp eq i32 %and5.2, 0
  br i1 %tobool.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %if.end.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %lor.lhs.false.2
  %8 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %pixelformat)
  %cmp7.2 = icmp eq i32 %8, %pixelformat
  br i1 %cmp7.2, label %if.end.2.for.end.thread_crit_edge, label %if.end9.2

if.end.2.for.end.thread_crit_edge:                ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

if.end9.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %tobool10.not.2 = icmp eq ptr %first_valid_fmt.1.1, null
  %spec.select.2 = select i1 %tobool10.not.2, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 2), ptr %first_valid_fmt.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end9.2, %lor.lhs.false.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %first_valid_fmt.1.2 = phi ptr [ %first_valid_fmt.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %first_valid_fmt.1.1, %lor.lhs.false.2.for.inc.2_crit_edge ], [ %spec.select.2, %if.end9.2 ]
  %9 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 3, i32 2), align 4
  %and.3 = and i32 %9, %capabilities
  call void @__sanitizer_cov_trace_cmp4(i32 %and.3, i32 %9)
  %cmp3.not.3 = icmp eq i32 %and.3, %9
  br i1 %cmp3.not.3, label %lor.lhs.false.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %10 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 3, i32 1), align 4
  %and5.3 = and i32 %10, %directions
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3)
  %tobool.not.3 = icmp eq i32 %and5.3, 0
  br i1 %tobool.not.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %if.end.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3:                                         ; preds = %lor.lhs.false.3
  %11 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pixelformat)
  %cmp7.3 = icmp eq i32 %11, %pixelformat
  br i1 %cmp7.3, label %if.end.3.for.end.thread_crit_edge, label %if.end9.3

if.end.3.for.end.thread_crit_edge:                ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

if.end9.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  %tobool10.not.3 = icmp eq ptr %first_valid_fmt.1.2, null
  %spec.select.3 = select i1 %tobool10.not.3, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 3), ptr %first_valid_fmt.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end9.3, %lor.lhs.false.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %first_valid_fmt.1.3 = phi ptr [ %first_valid_fmt.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %first_valid_fmt.1.2, %lor.lhs.false.3.for.inc.3_crit_edge ], [ %spec.select.3, %if.end9.3 ]
  %12 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 4, i32 2), align 4
  %and.4 = and i32 %12, %capabilities
  call void @__sanitizer_cov_trace_cmp4(i32 %and.4, i32 %12)
  %cmp3.not.4 = icmp eq i32 %and.4, %12
  br i1 %cmp3.not.4, label %lor.lhs.false.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %13 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 4, i32 1), align 4
  %and5.4 = and i32 %13, %directions
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.4)
  %tobool.not.4 = icmp eq i32 %and5.4, 0
  br i1 %tobool.not.4, label %lor.lhs.false.4.for.inc.4_crit_edge, label %if.end.4

lor.lhs.false.4.for.inc.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.4:                                         ; preds = %lor.lhs.false.4
  %14 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %pixelformat)
  %cmp7.4 = icmp eq i32 %14, %pixelformat
  br i1 %cmp7.4, label %if.end.4.for.end.thread_crit_edge, label %if.end9.4

if.end.4.for.end.thread_crit_edge:                ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

if.end9.4:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #14
  %tobool10.not.4 = icmp eq ptr %first_valid_fmt.1.3, null
  %spec.select.4 = select i1 %tobool10.not.4, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 4), ptr %first_valid_fmt.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end9.4, %lor.lhs.false.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %first_valid_fmt.1.4 = phi ptr [ %first_valid_fmt.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %first_valid_fmt.1.3, %lor.lhs.false.4.for.inc.4_crit_edge ], [ %spec.select.4, %if.end9.4 ]
  %15 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 5, i32 2), align 4
  %and.5 = and i32 %15, %capabilities
  call void @__sanitizer_cov_trace_cmp4(i32 %and.5, i32 %15)
  %cmp3.not.5 = icmp eq i32 %and.5, %15
  br i1 %cmp3.not.5, label %lor.lhs.false.5, label %for.inc.4._crit_edge

for.inc.4._crit_edge:                             ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %18

lor.lhs.false.5:                                  ; preds = %for.inc.4
  %16 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 5, i32 1), align 4
  %and5.5 = and i32 %16, %directions
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.5)
  %tobool.not.5 = icmp eq i32 %and5.5, 0
  br i1 %tobool.not.5, label %lor.lhs.false.5._crit_edge, label %if.end.5

lor.lhs.false.5._crit_edge:                       ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %18

if.end.5:                                         ; preds = %lor.lhs.false.5
  %17 = load i32, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %pixelformat)
  %cmp7.5 = icmp eq i32 %17, %pixelformat
  br i1 %cmp7.5, label %if.end.5.for.end.thread_crit_edge, label %if.end9.5

if.end.5.for.end.thread_crit_edge:                ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

if.end9.5:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #14
  %tobool10.not.5 = icmp eq ptr %first_valid_fmt.1.4, null
  %spec.select.5 = select i1 %tobool10.not.5, ptr getelementptr inbounds ([6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 5), ptr %first_valid_fmt.1.4
  br label %18

for.end.thread:                                   ; preds = %if.end.5.for.end.thread_crit_edge, %if.end.4.for.end.thread_crit_edge, %if.end.3.for.end.thread_crit_edge, %if.end.2.for.end.thread_crit_edge, %if.end.1.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  %i.0.lcssa.ph = phi i32 [ 5, %if.end.5.for.end.thread_crit_edge ], [ 4, %if.end.4.for.end.thread_crit_edge ], [ 3, %if.end.3.for.end.thread_crit_edge ], [ 2, %if.end.2.for.end.thread_crit_edge ], [ 1, %if.end.1.for.end.thread_crit_edge ], [ 0, %if.end.for.end.thread_crit_edge ]
  %arrayidx1634 = getelementptr [6 x %struct.cedrus_format], ptr @cedrus_formats, i32 0, i32 %i.0.lcssa.ph
  br label %18

18:                                               ; preds = %for.end.thread, %if.end9.5, %lor.lhs.false.5._crit_edge, %for.inc.4._crit_edge
  %19 = phi ptr [ %arrayidx1634, %for.end.thread ], [ %first_valid_fmt.1.4, %for.inc.4._crit_edge ], [ %first_valid_fmt.1.4, %lor.lhs.false.5._crit_edge ], [ %spec.select.5, %if.end9.5 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cedrus_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbufs, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %3, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge42
    i32 3, label %entry.if.then_crit_edge43
    i32 8, label %entry.if.then_crit_edge44
    i32 5, label %entry.if.then_crit_edge45
    i32 7, label %entry.if.then_crit_edge46
    i32 12, label %entry.if.then_crit_edge47
    i32 14, label %entry.if.then_crit_edge48
  ]

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge42, %entry.if.then_crit_edge43, %entry.if.then_crit_edge44, %entry.if.then_crit_edge45, %entry.if.then_crit_edge46, %entry.if.then_crit_edge47, %entry.if.then_crit_edge48
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dst_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pix_fmt.0 = phi ptr [ %src_fmt, %if.then ], [ %dst_fmt, %if.else ]
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else25, label %if.then21

if.then21:                                        ; preds = %if.end
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt.0, i32 0, i32 5
  %9 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp22 = icmp ult i32 %8, %10
  br i1 %cmp22, label %if.then21.cleanup_crit_edge, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sizeimage26 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt.0, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage26, align 4
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sizes, align 4
  %14 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nplanes, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then21.if.end28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cedrus_buf_out_validate(ptr nocapture noundef writeonly %vb) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_buf_prepare(ptr nocapture noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %5, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge79
    i32 3, label %entry.if.then_crit_edge80
    i32 8, label %entry.if.then_crit_edge81
    i32 5, label %entry.if.then_crit_edge82
    i32 7, label %entry.if.then_crit_edge83
    i32 12, label %entry.if.then_crit_edge84
    i32 14, label %entry.if.then_crit_edge85
  ]

entry.if.then_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge79:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge79, %entry.if.then_crit_edge80, %entry.if.then_crit_edge81, %entry.if.then_crit_edge82, %entry.if.then_crit_edge83, %entry.if.then_crit_edge84, %entry.if.then_crit_edge85
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %3, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dst_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %3, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pix_fmt.0 = phi ptr [ %src_fmt, %if.then ], [ %dst_fmt, %if.else ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end.vb2_plane_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then.i ], [ 0, %if.end.vb2_plane_size.exit_crit_edge ]
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt.0, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %12)
  %cmp22 = icmp ult i32 %retval.0.i, %12
  br i1 %cmp22, label %vb2_plane_size.exit.cleanup_crit_edge, label %if.end24

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %vb2_plane_size.exit
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 13
  br i1 %13, label %switch.hole_check, label %if.then48

if.then48:                                        ; preds = %if.end24
  br i1 %cmp.not.i, label %if.then48.cleanup_crit_edge, label %if.then48.if.then.i78_crit_edge

if.then48.if.then.i78_crit_edge:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i78

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i78:                                      ; preds = %switch.hole_check.if.then.i78_crit_edge, %if.then48.if.then.i78_crit_edge
  %length.i77 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %14 = ptrtoint ptr %length.i77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp1.i = icmp ult i32 %15, %12
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i78.if.end42.i_crit_edge

if.then.i78.if.end42.i_crit_edge:                 ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i78
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !22

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %16 = ptrtoint ptr %length.i77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i77, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i78.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %17, %if.then38.i ], [ %12, %if.then.i78.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %18 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

switch.hole_check:                                ; preds = %if.end24
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 5483, %switch.maskindex
  %19 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %switch.lobit = icmp ne i16 %19, 0
  %brmerge = select i1 %switch.lobit, i1 true, i1 %cmp.not.i
  br i1 %brmerge, label %switch.hole_check.cleanup_crit_edge, label %switch.hole_check.if.then.i78_crit_edge

switch.hole_check.if.then.i78_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i78

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.end42.i, %if.then48.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.then48.cleanup_crit_edge ], [ 0, %if.end42.i ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %pixelformat = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1395803981, label %entry.sw.epilog_crit_edge
    i32 875967059, label %sw.bb2
    i32 892744275, label %sw.bb4
    i32 1178095702, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 3, %sw.bb6 ], [ 2, %sw.bb4 ], [ 1, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %current_codec7 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %current_codec7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %current_codec7, align 4
  %8 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vq, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %9, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.epilog.if.then_crit_edge
    i32 10, label %sw.epilog.if.then_crit_edge75
    i32 3, label %sw.epilog.if.then_crit_edge76
    i32 8, label %sw.epilog.if.then_crit_edge77
    i32 5, label %sw.epilog.if.then_crit_edge78
    i32 7, label %sw.epilog.if.then_crit_edge79
    i32 12, label %sw.epilog.if.then_crit_edge80
    i32 14, label %sw.epilog.if.then_crit_edge81
  ]

sw.epilog.if.then_crit_edge81:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.if.then_crit_edge80:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.if.then_crit_edge79:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.if.then_crit_edge78:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.if.then_crit_edge77:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.if.then_crit_edge76:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.if.then_crit_edge75:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %sw.epilog.if.then_crit_edge75, %sw.epilog.if.then_crit_edge76, %sw.epilog.if.then_crit_edge77, %sw.epilog.if.then_crit_edge78, %sw.epilog.if.then_crit_edge79, %sw.epilog.if.then_crit_edge80, %sw.epilog.if.then_crit_edge81
  %dev28 = getelementptr inbounds %struct.cedrus_dev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev28, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_cleanup_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !25
  br label %err_cleanup

if.end:                                           ; preds = %if.then
  %current_codec32 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %current_codec32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_codec32, align 4
  %arrayidx = getelementptr %struct.cedrus_dev, ptr %3, i32 0, i32 7, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %start = getelementptr inbounds %struct.cedrus_dec_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %if.end
  %call38 = tail call i32 %19(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then33.cleanup_crit_edge, label %err_pm

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_pm:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev28, align 4
  %call.i71 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #12
  br label %err_cleanup

err_cleanup:                                      ; preds = %err_pm, %do.end11.i.i.i.i.i, %if.then.i.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call38, %err_pm ], [ %call.i, %if.then.i.err_cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %22 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %23, i32 0, i32 10
  %hdl.i = getelementptr inbounds %struct.cedrus_ctx, ptr %23, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end26.i, %err_cleanup
  %24 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vq, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %25, label %if.else.i [
    i32 2, label %for.cond.i.if.then.i72_crit_edge
    i32 10, label %for.cond.i.if.then.i72_crit_edge82
    i32 3, label %for.cond.i.if.then.i72_crit_edge83
    i32 8, label %for.cond.i.if.then.i72_crit_edge84
    i32 5, label %for.cond.i.if.then.i72_crit_edge85
    i32 7, label %for.cond.i.if.then.i72_crit_edge86
    i32 12, label %for.cond.i.if.then.i72_crit_edge87
    i32 14, label %for.cond.i.if.then.i72_crit_edge88
  ]

for.cond.i.if.then.i72_crit_edge88:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

for.cond.i.if.then.i72_crit_edge87:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

for.cond.i.if.then.i72_crit_edge86:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

for.cond.i.if.then.i72_crit_edge85:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

for.cond.i.if.then.i72_crit_edge84:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

for.cond.i.if.then.i72_crit_edge83:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

for.cond.i.if.then.i72_crit_edge82:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

for.cond.i.if.then.i72_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i72

if.then.i72:                                      ; preds = %for.cond.i.if.then.i72_crit_edge, %for.cond.i.if.then.i72_crit_edge82, %for.cond.i.if.then.i72_crit_edge83, %for.cond.i.if.then.i72_crit_edge84, %for.cond.i.if.then.i72_crit_edge85, %for.cond.i.if.then.i72_crit_edge86, %for.cond.i.if.then.i72_crit_edge87, %for.cond.i.if.then.i72_crit_edge88
  %27 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %28, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %30, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i72
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i72 ]
  %call.i39.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #12
  %tobool.not.i = icmp eq ptr %call.i39.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end26.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %req.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i39.i, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %32, ptr noundef %hdl.i) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i39.i, i32 noundef 3) #12
  br label %for.cond.i

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ], [ %ret.0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_stop_streaming(ptr nocapture noundef readonly %vq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %5, label %entry.if.end29_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge45
    i32 3, label %entry.if.then_crit_edge46
    i32 8, label %entry.if.then_crit_edge47
    i32 5, label %entry.if.then_crit_edge48
    i32 7, label %entry.if.then_crit_edge49
    i32 12, label %entry.if.then_crit_edge50
    i32 14, label %entry.if.then_crit_edge51
  ]

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge45, %entry.if.then_crit_edge46, %entry.if.then_crit_edge47, %entry.if.then_crit_edge48, %entry.if.then_crit_edge49, %entry.if.then_crit_edge50, %entry.if.then_crit_edge51
  %current_codec = getelementptr inbounds %struct.cedrus_ctx, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %current_codec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_codec, align 4
  %arrayidx = getelementptr %struct.cedrus_dev, ptr %3, i32 0, i32 7, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %stop = getelementptr inbounds %struct.cedrus_dec_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then22

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %12(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.then.if.end_crit_edge
  %dev27 = getelementptr inbounds %struct.cedrus_dev, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev27, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #12
  br label %if.end29

if.end29:                                         ; preds = %if.end, %entry.if.end29_crit_edge
  %15 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %16, i32 0, i32 10
  %hdl.i = getelementptr inbounds %struct.cedrus_ctx, ptr %16, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end26.i, %if.end29
  %17 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vq, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %18, label %if.else.i [
    i32 2, label %for.cond.i.if.then.i_crit_edge
    i32 10, label %for.cond.i.if.then.i_crit_edge52
    i32 3, label %for.cond.i.if.then.i_crit_edge53
    i32 8, label %for.cond.i.if.then.i_crit_edge54
    i32 5, label %for.cond.i.if.then.i_crit_edge55
    i32 7, label %for.cond.i.if.then.i_crit_edge56
    i32 12, label %for.cond.i.if.then.i_crit_edge57
    i32 14, label %for.cond.i.if.then.i_crit_edge58
  ]

for.cond.i.if.then.i_crit_edge58:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.i.if.then.i_crit_edge57:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.i.if.then.i_crit_edge56:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.i.if.then.i_crit_edge55:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.i.if.then.i_crit_edge54:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.i.if.then.i_crit_edge53:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.i.if.then.i_crit_edge52:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge52, %for.cond.i.if.then.i_crit_edge53, %for.cond.i.if.then.i_crit_edge54, %for.cond.i.if.then.i_crit_edge55, %for.cond.i.if.then.i_crit_edge56, %for.cond.i.if.then.i_crit_edge57, %for.cond.i.if.then.i_crit_edge58
  %20 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %21, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i39.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #12
  %tobool.not.i = icmp eq ptr %call.i39.i, null
  br i1 %tobool.not.i, label %cedrus_queue_cleanup.exit, label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %req.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i39.i, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req.i, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %25, ptr noundef %hdl.i) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i39.i, i32 noundef 6) #12
  br label %for.cond.i

cedrus_queue_cleanup.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_buf_queue(ptr noundef %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_buf_request_complete(ptr nocapture noundef readonly %vb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %hdl = getelementptr inbounds %struct.cedrus_ctx, ptr %3, i32 0, i32 5
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %hdl) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @cedrus_ioctl_ops, !1, !"cedrus_ioctl_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_video.c", i32 365, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_video.c", i32 168, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_video.c", i32 171, i32 4}
!6 = !{ptr @cedrus_formats, !7, !"cedrus_formats", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_video.c", i32 37, i32 29}
!8 = !{ptr @cedrus_qops, !9, !"cedrus_qops", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_video.c", i32 551, i32 23}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148496595}
!24 = !{i64 983195, i64 983220, i64 983242, i64 983258, i64 983270, i64 983290, i64 983314, i64 983330, i64 983342}
!25 = !{i64 2148496783}
