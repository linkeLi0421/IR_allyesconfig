; ModuleID = '/llk/IR_all_yes/drivers/staging/media/rkvdec/rkvdec-vp9.c_pt.bc'
source_filename = "../drivers/staging/media/rkvdec/rkvdec-vp9.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rkvdec_coded_fmt_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rkvdec_vp9_ref_reg = type { i32, i32, i32, i32, i32 }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.rkvdec_ctx = type { %struct.v4l2_fh, %struct.v4l2_format, %struct.v4l2_format, ptr, %struct.v4l2_ctrl_handler, ptr, ptr }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rkvdec_dev = type { %struct.v4l2_device, %struct.media_device, %struct.video_device, ptr, ptr, ptr, ptr, %struct.mutex, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rkvdec_aux_buf = type { ptr, i32, i32 }
%struct.rkvdec_vp9_ctx = type { %struct.rkvdec_aux_buf, %struct.rkvdec_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.rkvdec_vp9_frame_info, %struct.rkvdec_vp9_frame_info }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.rkvdec_vp9_frame_info = type { i16, i32, i64, %struct.v4l2_vp9_segmentation, %struct.v4l2_vp9_loop_filter }
%struct.v4l2_vp9_segmentation = type { [8 x [4 x i16]], [8 x i8], [7 x i8], [3 x i8], i8, [5 x i8] }
%struct.v4l2_vp9_loop_filter = type { [4 x i8], [2 x i8], i8, i8, i8, [7 x i8] }
%struct.rkvdec_vp9_inter_frame_symbol_counts = type { [16 x [4 x i32]], [3 x [2 x i32]], [4 x [2 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [2 x i32]], [4 x [10 x i32]], [10 x [10 x i32]], [5 x [2 x i32]], [5 x [2 x i32]], [5 x [2 x [2 x i32]]], [7 x [4 x i32]], [4 x [3 x i32]], [4 x i32], [2 x [2 x i32]], [2 x [12 x i32]], [2 x [2 x i32]], [2 x [10 x [2 x i32]]], [2 x [2 x [4 x i32]]], [2 x [4 x i32]], [2 x [2 x i32]], [2 x [2 x i32]], [2 x [4 x [2 x [6 x [6 x %struct.rkvdec_vp9_refs_counts]]]]] }
%struct.rkvdec_vp9_refs_counts = type { [2 x i32], [3 x i32] }
%struct.rkvdec_vp9_intra_frame_symbol_counts = type { [4 x [4 x [4 x i32]]], [3 x [2 x i32]], [4 x [2 x i32]], [2 x [4 x i32]], [2 x [4 x i32]], [2 x [2 x i32]], [2 x [4 x [2 x [6 x [6 x %struct.rkvdec_vp9_refs_counts]]]]] }
%struct.rkvdec_vp9_run = type { %struct.rkvdec_run, ptr }
%struct.rkvdec_run = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.87, %union.anon.88, i32, ptr, i32, %struct.anon.89, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.87 = type { i64 }
%union.anon.88 = type { ptr }
%struct.anon.89 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_vp9_frame = type { %struct.v4l2_vp9_loop_filter, %struct.v4l2_vp9_quantization, %struct.v4l2_vp9_segmentation, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8] }
%struct.v4l2_vp9_quantization = type { i8, i8, i8, i8, [4 x i8] }
%struct.rkvdec_vp9_probs = type { [16 x [3 x i8]], [3 x i8], [7 x i8], [3 x i8], [2 x [3 x i8]], [2 x [2 x i8]], [2 x [1 x i8]], [4 x i8], [3 x i8], %union.anon.120 }
%union.anon.120 = type { %struct.rkvdec_vp9_inter_frame_probs }
%struct.rkvdec_vp9_inter_frame_probs = type { [4 x [9 x i8]], [5 x i8], [5 x i8], [5 x [2 x i8]], [7 x [3 x i8]], [4 x [2 x i8]], [11 x i8], [2 x [4 x [2 x [128 x i8]]]], [3 x [9 x i8]], [5 x i8], [3 x [9 x i8]], [5 x i8], [3 x [9 x i8]], [5 x i8], [9 x i8], [7 x i8], [16 x i8], %struct.anon.121 }
%struct.anon.121 = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.rkvdec_vp9_intra_mode_probs = type { [105 x i8], [23 x i8] }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.rkvdec_decoded_buffer = type { %struct.v4l2_m2m_buffer, %union.anon.123 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%union.anon.123 = type { %struct.rkvdec_vp9_decoded_buffer_info }
%struct.rkvdec_vp9_decoded_buffer_info = type { i16, i16, i8, [3 x i8] }

@rkvdec_vp9_fmt_ops = dso_local constant { %struct.rkvdec_coded_fmt_ops, [44 x i8] } { %struct.rkvdec_coded_fmt_ops { ptr @rkvdec_vp9_adjust_fmt, ptr @rkvdec_vp9_start, ptr @rkvdec_vp9_stop, ptr @rkvdec_vp9_run, ptr @rkvdec_vp9_done }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/rkvdec/rkvdec-vp9.c\00", [54 x i8] zeroinitializer }, align 32
@validate_dec_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 703, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"validate_dec_params\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@validate_dec_params._entry_ptr = internal global ptr @validate_dec_params._entry, section ".printk_index", align 4
@validate_dec_params._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 719, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unexpected bitstream resolution %dx%d\0A\00", [57 x i8] zeroinitializer }, align 32
@validate_dec_params._entry_ptr.7 = internal global ptr @validate_dec_params._entry.5, section ".printk_index", align 4
@v4l2_vp9_kf_partition_probs = external dso_local local_unnamed_addr constant [16 x [3 x i8]], align 1
@v4l2_vp9_kf_y_mode_prob = external dso_local local_unnamed_addr constant [10 x [10 x [9 x i8]]], align 1
@v4l2_vp9_kf_uv_mode_prob = external dso_local local_unnamed_addr constant [10 x [9 x i8]], align 1
@ref_regs = internal constant { [3 x %struct.rkvdec_vp9_ref_reg], [36 x i8] } { [3 x %struct.rkvdec_vp9_ref_reg] [%struct.rkvdec_vp9_ref_reg { i32 68, i32 148, i32 192, i32 204, i32 44 }, %struct.rkvdec_vp9_ref_reg { i32 72, i32 152, i32 196, i32 0, i32 48 }, %struct.rkvdec_vp9_ref_reg { i32 76, i32 156, i32 200, i32 0, i32 52 }], [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"rkvdec_vp9_fmt_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 1066, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 741, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 702, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 716, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"ref_regs\00", align 1
@___asan_gen_.36 = private constant [45 x i8] c"../drivers/staging/media/rkvdec/rkvdec-vp9.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 357, i32 34 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @validate_dec_params._entry, ptr @validate_dec_params._entry.5, ptr @validate_dec_params._entry_ptr, ptr @validate_dec_params._entry_ptr.7, ptr @rkvdec_vp9_fmt_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ref_regs], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_vp9_fmt_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_dec_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_dec_params._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_regs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkvdec_vp9_adjust_fmt(ptr nocapture noundef readnone %ctx, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %num_planes, align 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %1 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %plane_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %3 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %fmt1, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %height, align 1
  %mul = shl i32 %4, 1
  %mul2 = mul i32 %mul, %6
  %7 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %mul2, ptr %plane_fmt, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_vp9_start(ptr nocapture noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 24464, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %dma = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %call1.i.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 149877, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.err_free_ctx_crit_edge, label %if.end6

if.end.err_free_ctx_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_ctx

if.end6:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %call1.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 149877, ptr %size, align 8
  %6 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %call1.i.i.i, align 4096
  %7 = call ptr @memset(ptr %call.i, i32 0, i32 149877)
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %dma11 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %call1.i.i.i, i32 0, i32 1, i32 1
  %call.i50 = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 13232, ptr noundef %dma11, i32 noundef 3264, i32 noundef 0) #8
  %tobool13.not = icmp eq ptr %call.i50, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  %14 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call1.i.i.i, align 4096
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 0) #8
  br label %err_free_ctx

if.end15:                                         ; preds = %if.end6
  %count_tbl10 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %call1.i.i.i, i32 0, i32 1
  %size17 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %call1.i.i.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %size17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13232, ptr %size17, align 4
  %19 = ptrtoint ptr %count_tbl10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i50, ptr %count_tbl10, align 4
  %20 = ptrtoint ptr %call.i50 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %call.i50, align 1
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %count_tbl.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %count_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %count_tbl.i, align 4
  %inter_cnts3.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %inter_cnts3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %inter_cnts3.i, align 8
  %skip.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 1
  %skip6.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %skip6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skip.i, ptr %skip6.i, align 4
  %inter.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 2
  %intra_inter.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %intra_inter.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %inter.i, ptr %intra_inter.i, align 8
  %tx32p.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 3
  %tx32p9.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %tx32p9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx32p.i, ptr %tx32p9.i, align 4
  %tx16p.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 4
  %tx16p11.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %tx16p11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx16p.i, ptr %tx16p11.i, align 8
  %tx8p.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 5
  %tx8p13.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %tx8p13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tx8p.i, ptr %tx8p13.i, align 4
  %intra_cnts15.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3
  %31 = ptrtoint ptr %intra_cnts15.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %24, ptr %intra_cnts15.i, align 8
  %skip19.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %skip19.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skip.i, ptr %skip19.i, align 4
  %intra_inter21.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %intra_inter21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %inter.i, ptr %intra_inter21.i, align 8
  %tx32p24.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %tx32p24.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tx32p.i, ptr %tx32p24.i, align 4
  %tx16p27.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %tx16p27.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tx16p.i, ptr %tx16p27.i, align 8
  %tx8p30.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %tx8p30.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tx8p.i, ptr %tx8p30.i, align 4
  %y_mode.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 6
  %y_mode32.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 6
  %37 = ptrtoint ptr %y_mode32.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %y_mode.i, ptr %y_mode32.i, align 8
  %uv_mode.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 7
  %uv_mode34.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 7
  %38 = ptrtoint ptr %uv_mode34.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %uv_mode.i, ptr %uv_mode34.i, align 4
  %comp.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 8
  %comp36.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 8
  %39 = ptrtoint ptr %comp36.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %comp.i, ptr %comp36.i, align 8
  %comp_ref.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 9
  %comp_ref38.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 9
  %40 = ptrtoint ptr %comp_ref38.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %comp_ref.i, ptr %comp_ref38.i, align 4
  %single_ref.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 10
  %single_ref40.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 10
  %41 = ptrtoint ptr %single_ref40.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %single_ref.i, ptr %single_ref40.i, align 8
  %mv_mode.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 11
  %mv_mode42.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 11
  %42 = ptrtoint ptr %mv_mode42.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %mv_mode.i, ptr %mv_mode42.i, align 4
  %filter.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 12
  %filter44.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 12
  %43 = ptrtoint ptr %filter44.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %filter.i, ptr %filter44.i, align 8
  %mv_joint.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 13
  %mv_joint46.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 13
  %44 = ptrtoint ptr %mv_joint46.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %mv_joint.i, ptr %mv_joint46.i, align 4
  %sign.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 14
  %sign48.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 14
  %45 = ptrtoint ptr %sign48.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %sign.i, ptr %sign48.i, align 8
  %class0.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 16
  %class050.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 16
  %46 = ptrtoint ptr %class050.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %class0.i, ptr %class050.i, align 8
  %bits.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 17
  %bits52.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 17
  %47 = ptrtoint ptr %bits52.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bits.i, ptr %bits52.i, align 4
  %class0_fp.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 18
  %class0_fp54.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 18
  %48 = ptrtoint ptr %class0_fp54.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %class0_fp.i, ptr %class0_fp54.i, align 8
  %fp.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 19
  %fp56.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 19
  %49 = ptrtoint ptr %fp56.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %fp.i, ptr %fp56.i, align 4
  %class0_hp.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 20
  %class0_hp58.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 20
  %50 = ptrtoint ptr %class0_hp58.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %class0_hp.i, ptr %class0_hp58.i, align 8
  %hp.i = getelementptr inbounds %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 21
  %hp60.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 21
  %51 = ptrtoint ptr %hp60.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %hp.i, ptr %hp60.i, align 4
  br label %for.cond61.preheader.i

for.cond61.preheader.i:                           ; preds = %for.inc170.i.for.cond61.preheader.i_crit_edge, %if.end15
  %i.0307.i = phi i32 [ 0, %if.end15 ], [ %inc171.i, %for.inc170.i.for.cond61.preheader.i_crit_edge ]
  br label %for.cond64.preheader.i

for.cond64.preheader.i:                           ; preds = %for.inc167.i.for.cond64.preheader.i_crit_edge, %for.cond61.preheader.i
  %j.0306.i = phi i32 [ 0, %for.cond61.preheader.i ], [ %inc168.i, %for.inc167.i.for.cond64.preheader.i_crit_edge ]
  br label %for.cond67.preheader.i

for.cond67.preheader.i:                           ; preds = %for.inc164.i.for.cond67.preheader.i_crit_edge, %for.cond64.preheader.i
  %k.0305.i = phi i32 [ 0, %for.cond64.preheader.i ], [ %inc165.i, %for.inc164.i.for.cond67.preheader.i_crit_edge ]
  br label %for.cond70.preheader.i

for.cond70.preheader.i:                           ; preds = %for.cond70.preheader.i.for.cond70.preheader.i_crit_edge, %for.cond67.preheader.i
  %l.0304.i = phi i32 [ 0, %for.cond67.preheader.i ], [ %inc162.i, %for.cond70.preheader.i.for.cond70.preheader.i_crit_edge ]
  %arrayidx76.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 0
  %coeff.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 0, i32 1
  %arrayidx83.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 0
  %52 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %coeff.i, ptr %arrayidx83.i, align 4
  %arrayidx97.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 0
  %53 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx76.i, ptr %arrayidx97.i, align 8
  %arrayidx106.i = getelementptr [2 x i32], ptr %arrayidx76.i, i32 0, i32 1
  %arrayidx114.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx106.i, ptr %arrayidx114.i, align 4
  %arrayidx120.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 0
  %coeff121.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 0, i32 1
  %arrayidx128.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 0
  %55 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %coeff121.i, ptr %arrayidx128.i, align 4
  %arrayidx143.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 0
  %56 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx120.i, ptr %arrayidx143.i, align 8
  %arrayidx152.i = getelementptr [2 x i32], ptr %arrayidx120.i, i32 0, i32 1
  %arrayidx160.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx152.i, ptr %arrayidx160.i, align 4
  %arrayidx76.1.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 1
  %coeff.1.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 1, i32 1
  %arrayidx83.1.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 1
  %58 = ptrtoint ptr %arrayidx83.1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %coeff.1.i, ptr %arrayidx83.1.i, align 4
  %arrayidx97.1.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 1
  %59 = ptrtoint ptr %arrayidx97.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx76.1.i, ptr %arrayidx97.1.i, align 8
  %arrayidx106.1.i = getelementptr [2 x i32], ptr %arrayidx76.1.i, i32 0, i32 1
  %arrayidx114.1.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx114.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx106.1.i, ptr %arrayidx114.1.i, align 4
  %arrayidx120.1.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 1
  %coeff121.1.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 1, i32 1
  %arrayidx128.1.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 1
  %61 = ptrtoint ptr %arrayidx128.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %coeff121.1.i, ptr %arrayidx128.1.i, align 4
  %arrayidx143.1.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 1
  %62 = ptrtoint ptr %arrayidx143.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx120.1.i, ptr %arrayidx143.1.i, align 8
  %arrayidx152.1.i = getelementptr [2 x i32], ptr %arrayidx120.1.i, i32 0, i32 1
  %arrayidx160.1.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx160.1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx152.1.i, ptr %arrayidx160.1.i, align 4
  %arrayidx76.2.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 2
  %coeff.2.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 2, i32 1
  %arrayidx83.2.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 2
  %64 = ptrtoint ptr %arrayidx83.2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %coeff.2.i, ptr %arrayidx83.2.i, align 4
  %arrayidx97.2.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 2
  %65 = ptrtoint ptr %arrayidx97.2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx76.2.i, ptr %arrayidx97.2.i, align 8
  %arrayidx106.2.i = getelementptr [2 x i32], ptr %arrayidx76.2.i, i32 0, i32 1
  %arrayidx114.2.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 2, i32 1
  %66 = ptrtoint ptr %arrayidx114.2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx106.2.i, ptr %arrayidx114.2.i, align 4
  %arrayidx120.2.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 2
  %coeff121.2.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 2, i32 1
  %arrayidx128.2.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 2
  %67 = ptrtoint ptr %arrayidx128.2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %coeff121.2.i, ptr %arrayidx128.2.i, align 4
  %arrayidx143.2.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 2
  %68 = ptrtoint ptr %arrayidx143.2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx120.2.i, ptr %arrayidx143.2.i, align 8
  %arrayidx152.2.i = getelementptr [2 x i32], ptr %arrayidx120.2.i, i32 0, i32 1
  %arrayidx160.2.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 2, i32 1
  %69 = ptrtoint ptr %arrayidx160.2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx152.2.i, ptr %arrayidx160.2.i, align 4
  %arrayidx76.3.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 3
  %coeff.3.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 3, i32 1
  %arrayidx83.3.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 3
  %70 = ptrtoint ptr %arrayidx83.3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %coeff.3.i, ptr %arrayidx83.3.i, align 4
  %arrayidx97.3.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 3
  %71 = ptrtoint ptr %arrayidx97.3.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx76.3.i, ptr %arrayidx97.3.i, align 8
  %arrayidx106.3.i = getelementptr [2 x i32], ptr %arrayidx76.3.i, i32 0, i32 1
  %arrayidx114.3.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 3, i32 1
  %72 = ptrtoint ptr %arrayidx114.3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx106.3.i, ptr %arrayidx114.3.i, align 4
  %arrayidx120.3.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 3
  %coeff121.3.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 3, i32 1
  %arrayidx128.3.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 3
  %73 = ptrtoint ptr %arrayidx128.3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %coeff121.3.i, ptr %arrayidx128.3.i, align 4
  %arrayidx143.3.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 3
  %74 = ptrtoint ptr %arrayidx143.3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx120.3.i, ptr %arrayidx143.3.i, align 8
  %arrayidx152.3.i = getelementptr [2 x i32], ptr %arrayidx120.3.i, i32 0, i32 1
  %arrayidx160.3.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 3, i32 1
  %75 = ptrtoint ptr %arrayidx160.3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx152.3.i, ptr %arrayidx160.3.i, align 4
  %arrayidx76.4.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 4
  %coeff.4.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 4, i32 1
  %arrayidx83.4.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 4
  %76 = ptrtoint ptr %arrayidx83.4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %coeff.4.i, ptr %arrayidx83.4.i, align 4
  %arrayidx97.4.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 4
  %77 = ptrtoint ptr %arrayidx97.4.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx76.4.i, ptr %arrayidx97.4.i, align 8
  %arrayidx106.4.i = getelementptr [2 x i32], ptr %arrayidx76.4.i, i32 0, i32 1
  %arrayidx114.4.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 4, i32 1
  %78 = ptrtoint ptr %arrayidx114.4.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx106.4.i, ptr %arrayidx114.4.i, align 4
  %arrayidx120.4.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 4
  %coeff121.4.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 4, i32 1
  %arrayidx128.4.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 4
  %79 = ptrtoint ptr %arrayidx128.4.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %coeff121.4.i, ptr %arrayidx128.4.i, align 4
  %arrayidx143.4.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 4
  %80 = ptrtoint ptr %arrayidx143.4.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx120.4.i, ptr %arrayidx143.4.i, align 8
  %arrayidx152.4.i = getelementptr [2 x i32], ptr %arrayidx120.4.i, i32 0, i32 1
  %arrayidx160.4.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 4, i32 1
  %81 = ptrtoint ptr %arrayidx160.4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx152.4.i, ptr %arrayidx160.4.i, align 4
  %arrayidx76.5.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 5
  %coeff.5.i = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %24, i32 0, i32 22, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 5, i32 1
  %arrayidx83.5.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 5
  %82 = ptrtoint ptr %arrayidx83.5.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %coeff.5.i, ptr %arrayidx83.5.i, align 4
  %arrayidx97.5.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 5
  %83 = ptrtoint ptr %arrayidx97.5.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx76.5.i, ptr %arrayidx97.5.i, align 8
  %arrayidx106.5.i = getelementptr [2 x i32], ptr %arrayidx76.5.i, i32 0, i32 1
  %arrayidx114.5.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 2, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 5, i32 1
  %84 = ptrtoint ptr %arrayidx114.5.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx106.5.i, ptr %arrayidx114.5.i, align 4
  %arrayidx120.5.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 5
  %coeff121.5.i = getelementptr %struct.rkvdec_vp9_intra_frame_symbol_counts, ptr %24, i32 0, i32 6, i32 %k.0305.i, i32 %i.0307.i, i32 %j.0306.i, i32 %l.0304.i, i32 5, i32 1
  %arrayidx128.5.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 22, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 5
  %85 = ptrtoint ptr %arrayidx128.5.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %coeff121.5.i, ptr %arrayidx128.5.i, align 4
  %arrayidx143.5.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 5
  %86 = ptrtoint ptr %arrayidx143.5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx120.5.i, ptr %arrayidx143.5.i, align 8
  %arrayidx152.5.i = getelementptr [2 x i32], ptr %arrayidx120.5.i, i32 0, i32 1
  %arrayidx160.5.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %22, i32 0, i32 3, i32 23, i32 %i.0307.i, i32 %j.0306.i, i32 %k.0305.i, i32 %l.0304.i, i32 5, i32 1
  %87 = ptrtoint ptr %arrayidx160.5.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx152.5.i, ptr %arrayidx160.5.i, align 4
  %inc162.i = add nuw nsw i32 %l.0304.i, 1
  %exitcond.not.i = icmp eq i32 %inc162.i, 6
  br i1 %exitcond.not.i, label %for.inc164.i, label %for.cond70.preheader.i.for.cond70.preheader.i_crit_edge

for.cond70.preheader.i.for.cond70.preheader.i_crit_edge: ; preds = %for.cond70.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond70.preheader.i

for.inc164.i:                                     ; preds = %for.cond70.preheader.i
  %inc165.i = add nuw nsw i32 %k.0305.i, 1
  %exitcond308.not.i = icmp eq i32 %inc165.i, 2
  br i1 %exitcond308.not.i, label %for.inc167.i, label %for.inc164.i.for.cond67.preheader.i_crit_edge

for.inc164.i.for.cond67.preheader.i_crit_edge:    ; preds = %for.inc164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond67.preheader.i

for.inc167.i:                                     ; preds = %for.inc164.i
  %inc168.i = add nuw nsw i32 %j.0306.i, 1
  %exitcond309.not.i = icmp eq i32 %inc168.i, 2
  br i1 %exitcond309.not.i, label %for.inc170.i, label %for.inc167.i.for.cond64.preheader.i_crit_edge

for.inc167.i.for.cond64.preheader.i_crit_edge:    ; preds = %for.inc167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond64.preheader.i

for.inc170.i:                                     ; preds = %for.inc167.i
  %inc171.i = add nuw nsw i32 %i.0307.i, 1
  %exitcond310.not.i = icmp eq i32 %inc171.i, 4
  br i1 %exitcond310.not.i, label %for.inc170.i.cleanup_crit_edge, label %for.inc170.i.for.cond61.preheader.i_crit_edge

for.inc170.i.for.cond61.preheader.i_crit_edge:    ; preds = %for.inc170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond61.preheader.i

for.inc170.i.cleanup_crit_edge:                   ; preds = %for.inc170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_free_ctx:                                     ; preds = %if.then14, %if.end.err_free_ctx_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_ctx, %for.inc170.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_free_ctx ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc170.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_vp9_stop(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.rkvdec_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %count_tbl = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 1
  %size = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = ptrtoint ptr %count_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %count_tbl, align 4
  %dma = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #8
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %size5 = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size5, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %dma9 = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dma9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma9, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_vp9_run(ptr noundef %ctx) #1 align 64 {
entry:
  %ref_bufs.i = alloca [3 x ptr], align 4
  %run = alloca %struct.rkvdec_vp9_run, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %run) #8
  %2 = call ptr @memset(ptr %run, i32 0, i32 12)
  %priv.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 6
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  call void @rkvdec_run_preamble(ptr noundef %ctx, ptr noundef nonnull %run) #8
  %ctrl_hdl.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 4
  %call.i = call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i, i32 noundef 10750508) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !26

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 741, i32 noundef 9, ptr noundef null) #8
  br label %if.then

if.end23.i:                                       ; preds = %entry
  %p_cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i, i32 0, i32 26
  %5 = ptrtoint ptr %p_cur.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_cur.i, align 4
  %profile.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %profile.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %profile.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i.i = icmp eq i8 %8, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev2.i.i = getelementptr inbounds %struct.rkvdec_dev, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %conv.i.i) #12
  br label %if.then

if.end.i.i:                                       ; preds = %if.end23.i
  %frame_width_minus_1.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %6, i32 0, i32 6
  %13 = ptrtoint ptr %frame_width_minus_1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %frame_width_minus_1.i.i, align 8
  %15 = or i16 %14, 63
  %or.i.i = zext i16 %15 to i32
  %add6.i.i = add nuw nsw i32 %or.i.i, 1
  %frame_height_minus_1.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %6, i32 0, i32 7
  %fmt.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fmt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i, i32 %17)
  %cmp12.not.i.i = icmp eq i32 %add6.i.i, %17
  br i1 %cmp12.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.do.end21.i.i_crit_edge

if.end.i.i.do.end21.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %18 = ptrtoint ptr %frame_height_minus_1.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frame_height_minus_1.i.i, align 2
  %20 = or i16 %19, 63
  %or10.i.i = zext i16 %20 to i32
  %add11.i.i = add nuw nsw i32 %or10.i.i, 1
  %height.i.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i, i32 %22)
  %cmp16.not.i.i = icmp eq i32 %add11.i.i, %22
  br i1 %cmp16.not.i.i, label %if.end27.i, label %lor.lhs.false.i.i.do.end21.i.i_crit_edge

lor.lhs.false.i.i.do.end21.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i.i

do.end21.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end21.i.i_crit_edge, %if.end.i.i.do.end21.i.i_crit_edge
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev23.i.i = getelementptr inbounds %struct.rkvdec_dev, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %dev23.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev23.i.i, align 4
  %conv25.i.i = zext i16 %14 to i32
  %add26.i.i = add nuw nsw i32 %conv25.i.i, 1
  %27 = ptrtoint ptr %frame_height_minus_1.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frame_height_minus_1.i.i, align 2
  %conv28.i.i = zext i16 %28 to i32
  %add29.i.i = add nuw nsw i32 %conv28.i.i, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %add26.i.i, i32 noundef %add29.i.i) #12
  br label %if.then

if.end27.i:                                       ; preds = %lor.lhs.false.i.i
  %decode_params.i = getelementptr inbounds %struct.rkvdec_vp9_run, ptr %run, i32 0, i32 1
  %29 = ptrtoint ptr %decode_params.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %6, ptr %decode_params.i, align 4
  %call29.i = call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i, i32 noundef 10750509) #8
  %tobool31.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool31.not.i, label %do.end49.i, label %if.end, !prof !26

do.end49.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 752, i32 noundef 9, ptr noundef null) #8
  br label %if.then

if.then:                                          ; preds = %do.end49.i, %do.end21.i.i, %do.end.i.i, %do.end.i
  call void @rkvdec_run_postamble(ptr noundef %ctx, ptr noundef nonnull %run) #8
  br label %cleanup

if.end:                                           ; preds = %if.end27.i
  %p_cur66.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call29.i, i32 0, i32 26
  %30 = ptrtoint ptr %p_cur66.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_cur66.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %cur.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %4, i32 0, i32 6
  %34 = ptrtoint ptr %cur.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %cur.i, align 8
  %35 = and i8 %33, 7
  %bf.value.i = zext i8 %35 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 7
  %bf.clear.i = and i16 %bf.load.i, -897
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %cur.i, align 8
  %frame_context.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %4, i32 0, i32 5
  %call67.i = call zeroext i8 @v4l2_vp9_reset_frame_ctx(ptr noundef %6, ptr noundef %frame_context.i) #8
  %conv68.i = zext i8 %call67.i to i32
  %36 = ptrtoint ptr %cur.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load70.i = load i16, ptr %cur.i, align 8
  %37 = and i8 %call67.i, 3
  %bf.value71.i = zext i8 %37 to i16
  %bf.shl72.i = shl nuw nsw i16 %bf.value71.i, 12
  %bf.clear73.i = and i16 %bf.load70.i, -12289
  %bf.set74.i = or i16 %bf.shl72.i, %bf.clear73.i
  store i16 %bf.set74.i, ptr %cur.i, align 8
  %probability_tables.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %4, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %4, i32 0, i32 5, i32 %conv68.i
  %38 = call ptr @memcpy(ptr %probability_tables.i, ptr %arrayidx.i, i32 2039)
  call void @v4l2_vp9_fw_update_probs(ptr noundef %probability_tables.i, ptr noundef %31, ptr noundef %6) #8
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = ptrtoint ptr %decode_params.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %decode_params.i, align 4
  %probability_tables.i33 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %40, i32 0, i32 4
  %45 = call ptr @memset(ptr %42, i32 0, i32 2421)
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %44, i32 0, i32 3
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %47, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i34 = icmp eq i32 %and.i, 0
  %partition5.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %40, i32 0, i32 4, i32 13
  %spec.select.i = select i1 %tobool.not.i34, ptr %partition5.i, ptr @v4l2_vp9_kf_partition_probs
  %48 = call ptr @memcpy(ptr %42, ptr %spec.select.i, i32 48)
  %pred.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %42, i32 0, i32 1
  %pred_probs.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %44, i32 0, i32 2, i32 3
  %49 = call ptr @memcpy(ptr %pred.i, ptr %pred_probs.i, i32 3)
  %tree.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %42, i32 0, i32 2
  %tree_probs.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %44, i32 0, i32 2, i32 2
  %50 = call ptr @memcpy(ptr %tree.i, ptr %tree_probs.i, i32 7)
  %skip.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %42, i32 0, i32 3
  %skip12.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %40, i32 0, i32 4, i32 4
  %51 = call ptr @memcpy(ptr %skip.i, ptr %skip12.i, i32 3)
  %tx32.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %42, i32 0, i32 4
  %tx3215.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %40, i32 0, i32 4, i32 2
  %52 = call ptr @memcpy(ptr %tx32.i, ptr %tx3215.i, i32 6)
  %tx16.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %42, i32 0, i32 5
  %tx1618.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %40, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %tx1618.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %tx1618.i, align 1
  %55 = ptrtoint ptr %tx16.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %tx16.i, align 1
  %tx8.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %42, i32 0, i32 6
  %56 = ptrtoint ptr %probability_tables.i33 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %probability_tables.i33, align 1
  %58 = ptrtoint ptr %tx8.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %tx8.i, align 1
  %is_inter.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %42, i32 0, i32 7
  %is_inter24.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %40, i32 0, i32 4, i32 7
  %59 = ptrtoint ptr %is_inter24.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %is_inter24.i, align 1
  %61 = ptrtoint ptr %is_inter.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %is_inter.i, align 1
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9
  br i1 %tobool.not.i34, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %arrayidx5.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 0, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.i.i, ptr noundef %66) #8
  %arrayidx5.1.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 0, i32 1
  %arrayidx8.1.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 0, i32 0, i32 32
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.1.i.i, ptr noundef %arrayidx8.1.i.i) #8
  %arrayidx5.114.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 1, i32 0
  %arrayidx8.115.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 0, i32 1, i32 32
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.114.i.i, ptr noundef %arrayidx8.115.i.i) #8
  %arrayidx5.1.1.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 1, i32 1
  %arrayidx8.1.1.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 1, i32 0, i32 32
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.1.1.i.i, ptr noundef %arrayidx8.1.1.i.i) #8
  %arrayidx5.2.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 2, i32 0
  %arrayidx8.2.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 1, i32 1, i32 32
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.2.i.i, ptr noundef %arrayidx8.2.i.i) #8
  %arrayidx5.1.2.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 2, i32 1
  %arrayidx8.1.2.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 2, i32 0, i32 32
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.1.2.i.i, ptr noundef %arrayidx8.1.2.i.i) #8
  %arrayidx5.3.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 3, i32 0
  %arrayidx8.3.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 2, i32 1, i32 32
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.3.i.i, ptr noundef %arrayidx8.3.i.i) #8
  %arrayidx5.1.3.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 3, i32 1
  %arrayidx8.1.3.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 3, i32 0, i32 32
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx5.1.3.i.i, ptr noundef %arrayidx8.1.3.i.i) #8
  %intra_mode.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 3, i32 1, i32 32
  br label %for.cond16.preheader.i.i

for.cond16.preheader.i.i:                         ; preds = %for.end35.i.i.for.cond16.preheader.i.i_crit_edge, %if.then.i
  %i.112.i.i = phi i32 [ 0, %if.then.i ], [ %inc37.i.i, %for.end35.i.i.for.cond16.preheader.i.i_crit_edge ]
  %arrayidx25.i.i = getelementptr [10 x %struct.rkvdec_vp9_intra_mode_probs], ptr %intra_mode.i.i, i32 0, i32 %i.112.i.i
  br label %for.cond19.preheader.i.i

for.cond19.preheader.i.i:                         ; preds = %for.cond19.preheader.i.i.for.cond19.preheader.i.i_crit_edge, %for.cond16.preheader.i.i
  %idx.011.i.i = phi i32 [ 0, %for.cond16.preheader.i.i ], [ %spec.select1.8.i.i, %for.cond19.preheader.i.i.for.cond19.preheader.i.i_crit_edge ]
  %byte_count.010.i.i = phi i32 [ 0, %for.cond16.preheader.i.i ], [ %spec.select.8.i.i, %for.cond19.preheader.i.i.for.cond19.preheader.i.i_crit_edge ]
  %j.19.i.i = phi i32 [ 0, %for.cond16.preheader.i.i ], [ %inc34.i.i, %for.cond19.preheader.i.i.for.cond19.preheader.i.i_crit_edge ]
  %arrayidx24.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 0
  %67 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx24.i.i, align 1
  %arrayidx27.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %idx.011.i.i
  %69 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx27.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %byte_count.010.i.i)
  %cmp29.i.i = icmp eq i32 %byte_count.010.i.i, 26
  %spec.select1.v.i.i = select i1 %cmp29.i.i, i32 6, i32 1
  %spec.select1.i.i = add i32 %spec.select1.v.i.i, %idx.011.i.i
  %arrayidx24.1.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 1
  %70 = ptrtoint ptr %arrayidx24.1.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx24.1.i.i, align 1
  %arrayidx27.1.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.i.i
  %72 = ptrtoint ptr %arrayidx27.1.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx27.1.i.i, align 1
  %inc28.op.i.i = add i32 %byte_count.010.i.i, 2
  %inc28.1.i.i = select i1 %cmp29.i.i, i32 1, i32 %inc28.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.1.i.i)
  %cmp29.1.i.i = icmp eq i32 %inc28.1.i.i, 27
  %spec.select1.v.1.i.i = select i1 %cmp29.1.i.i, i32 6, i32 1
  %spec.select1.1.i.i = add i32 %spec.select1.v.1.i.i, %spec.select1.i.i
  %arrayidx24.2.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 2
  %73 = ptrtoint ptr %arrayidx24.2.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx24.2.i.i, align 1
  %arrayidx27.2.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.1.i.i
  %75 = ptrtoint ptr %arrayidx27.2.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx27.2.i.i, align 1
  %inc28.1.op.i.i = add i32 %inc28.1.i.i, 1
  %inc28.2.i.i = select i1 %cmp29.1.i.i, i32 1, i32 %inc28.1.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.2.i.i)
  %cmp29.2.i.i = icmp eq i32 %inc28.2.i.i, 27
  %spec.select1.v.2.i.i = select i1 %cmp29.2.i.i, i32 6, i32 1
  %spec.select1.2.i.i = add i32 %spec.select1.v.2.i.i, %spec.select1.1.i.i
  %arrayidx24.3.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 3
  %76 = ptrtoint ptr %arrayidx24.3.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx24.3.i.i, align 1
  %arrayidx27.3.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.2.i.i
  %78 = ptrtoint ptr %arrayidx27.3.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx27.3.i.i, align 1
  %inc28.2.op.i.i = add i32 %inc28.2.i.i, 1
  %inc28.3.i.i = select i1 %cmp29.2.i.i, i32 1, i32 %inc28.2.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.3.i.i)
  %cmp29.3.i.i = icmp eq i32 %inc28.3.i.i, 27
  %spec.select1.v.3.i.i = select i1 %cmp29.3.i.i, i32 6, i32 1
  %spec.select1.3.i.i = add i32 %spec.select1.v.3.i.i, %spec.select1.2.i.i
  %arrayidx24.4.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 4
  %79 = ptrtoint ptr %arrayidx24.4.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx24.4.i.i, align 1
  %arrayidx27.4.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.3.i.i
  %81 = ptrtoint ptr %arrayidx27.4.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx27.4.i.i, align 1
  %inc28.3.op.i.i = add i32 %inc28.3.i.i, 1
  %inc28.4.i.i = select i1 %cmp29.3.i.i, i32 1, i32 %inc28.3.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.4.i.i)
  %cmp29.4.i.i = icmp eq i32 %inc28.4.i.i, 27
  %spec.select1.v.4.i.i = select i1 %cmp29.4.i.i, i32 6, i32 1
  %spec.select1.4.i.i = add i32 %spec.select1.v.4.i.i, %spec.select1.3.i.i
  %arrayidx24.5.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 5
  %82 = ptrtoint ptr %arrayidx24.5.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx24.5.i.i, align 1
  %arrayidx27.5.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.4.i.i
  %84 = ptrtoint ptr %arrayidx27.5.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx27.5.i.i, align 1
  %inc28.4.op.i.i = add i32 %inc28.4.i.i, 1
  %inc28.5.i.i = select i1 %cmp29.4.i.i, i32 1, i32 %inc28.4.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.5.i.i)
  %cmp29.5.i.i = icmp eq i32 %inc28.5.i.i, 27
  %spec.select1.v.5.i.i = select i1 %cmp29.5.i.i, i32 6, i32 1
  %spec.select1.5.i.i = add i32 %spec.select1.v.5.i.i, %spec.select1.4.i.i
  %arrayidx24.6.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 6
  %85 = ptrtoint ptr %arrayidx24.6.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx24.6.i.i, align 1
  %arrayidx27.6.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.5.i.i
  %87 = ptrtoint ptr %arrayidx27.6.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx27.6.i.i, align 1
  %inc28.5.op.i.i = add i32 %inc28.5.i.i, 1
  %inc28.6.i.i = select i1 %cmp29.5.i.i, i32 1, i32 %inc28.5.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.6.i.i)
  %cmp29.6.i.i = icmp eq i32 %inc28.6.i.i, 27
  %spec.select1.v.6.i.i = select i1 %cmp29.6.i.i, i32 6, i32 1
  %spec.select1.6.i.i = add i32 %spec.select1.v.6.i.i, %spec.select1.5.i.i
  %arrayidx24.7.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 7
  %88 = ptrtoint ptr %arrayidx24.7.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx24.7.i.i, align 1
  %arrayidx27.7.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.6.i.i
  %90 = ptrtoint ptr %arrayidx27.7.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx27.7.i.i, align 1
  %inc28.6.op.i.i = add i32 %inc28.6.i.i, 1
  %inc28.7.i.i = select i1 %cmp29.6.i.i, i32 1, i32 %inc28.6.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.7.i.i)
  %cmp29.7.i.i = icmp eq i32 %inc28.7.i.i, 27
  %spec.select1.v.7.i.i = select i1 %cmp29.7.i.i, i32 6, i32 1
  %spec.select1.7.i.i = add i32 %spec.select1.v.7.i.i, %spec.select1.6.i.i
  %arrayidx24.8.i.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.112.i.i, i32 %j.19.i.i, i32 8
  %91 = ptrtoint ptr %arrayidx24.8.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx24.8.i.i, align 1
  %arrayidx27.8.i.i = getelementptr [105 x i8], ptr %arrayidx25.i.i, i32 0, i32 %spec.select1.7.i.i
  %93 = ptrtoint ptr %arrayidx27.8.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx27.8.i.i, align 1
  %inc28.7.op.i.i = add i32 %inc28.7.i.i, 1
  %inc28.8.i.i = select i1 %cmp29.7.i.i, i32 1, i32 %inc28.7.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc28.8.i.i)
  %cmp29.8.i.i = icmp eq i32 %inc28.8.i.i, 27
  %spec.select.8.i.i = select i1 %cmp29.8.i.i, i32 0, i32 %inc28.8.i.i
  %spec.select1.v.8.i.i = select i1 %cmp29.8.i.i, i32 6, i32 1
  %spec.select1.8.i.i = add i32 %spec.select1.v.8.i.i, %spec.select1.7.i.i
  %inc34.i.i = add nuw nsw i32 %j.19.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc34.i.i, 10
  br i1 %exitcond.not.i.i, label %for.end35.i.i, label %for.cond19.preheader.i.i.for.cond19.preheader.i.i_crit_edge

for.cond19.preheader.i.i.for.cond19.preheader.i.i_crit_edge: ; preds = %for.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader.i.i

for.end35.i.i:                                    ; preds = %for.cond19.preheader.i.i
  %inc37.i.i = add nuw nsw i32 %i.112.i.i, 1
  %exitcond16.not.i.i = icmp eq i32 %inc37.i.i, 10
  br i1 %exitcond16.not.i.i, label %for.end35.i.i.for.body41.i.i_crit_edge, label %for.end35.i.i.for.cond16.preheader.i.i_crit_edge

for.end35.i.i.for.cond16.preheader.i.i_crit_edge: ; preds = %for.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond16.preheader.i.i

for.end35.i.i.for.body41.i.i_crit_edge:           ; preds = %for.end35.i.i
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %for.body41.i.i.for.body41.i.i_crit_edge, %for.end35.i.i.for.body41.i.i_crit_edge
  %i.213.i.i = phi i32 [ %inc47.i.i, %for.body41.i.i.for.body41.i.i_crit_edge ], [ 0, %for.end35.i.i.for.body41.i.i_crit_edge ]
  %arrayidx42.i.i = getelementptr i8, ptr @v4l2_vp9_kf_uv_mode_prob, i32 %i.213.i.i
  %94 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx42.i.i, align 1
  %div.lhs.trunc.i.i = trunc i32 %i.213.i.i to i8
  %div.lhs.trunc.i.i.frozen = freeze i8 %div.lhs.trunc.i.i
  %div2.i.i = udiv i8 %div.lhs.trunc.i.i.frozen, 23
  %div.zext.i.i = zext i8 %div2.i.i to i32
  %96 = mul i8 %div2.i.i, 23
  %rem3.i.i.decomposed = sub i8 %div.lhs.trunc.i.i.frozen, %96
  %rem.zext.i.i = zext i8 %rem3.i.i.decomposed to i32
  %arrayidx45.i.i = getelementptr [10 x %struct.rkvdec_vp9_intra_mode_probs], ptr %intra_mode.i.i, i32 0, i32 %div.zext.i.i, i32 1, i32 %rem.zext.i.i
  %97 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %95, ptr %arrayidx45.i.i, align 1
  %inc47.i.i = add nuw nsw i32 %i.213.i.i, 1
  %exitcond17.not.i.i = icmp eq i32 %inc47.i.i, 90
  br i1 %exitcond17.not.i.i, label %for.body41.i.i.init_probs.exit_crit_edge, label %for.body41.i.i.for.body41.i.i_crit_edge

for.body41.i.i.for.body41.i.i_crit_edge:          ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41.i.i

for.body41.i.i.init_probs.exit_crit_edge:         ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_probs.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %y_mode2.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 11
  %98 = call ptr @memcpy(ptr %66, ptr %y_mode2.i.i, i32 36)
  %comp_mode.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 1
  %comp_mode5.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 8
  %99 = call ptr @memcpy(ptr %comp_mode.i.i, ptr %comp_mode5.i.i, i32 5)
  %comp_ref.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 2
  %comp_ref8.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 10
  %100 = call ptr @memcpy(ptr %comp_ref.i.i, ptr %comp_ref8.i.i, i32 5)
  %single_ref.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 3
  %single_ref11.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 9
  %101 = call ptr @memcpy(ptr %single_ref.i.i, ptr %single_ref11.i.i, i32 10)
  %inter_mode.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 4
  %inter_mode14.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 5
  %102 = call ptr @memcpy(ptr %inter_mode.i.i, ptr %inter_mode14.i.i, i32 21)
  %interp_filter.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 5
  %interp_filter17.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 6
  %103 = ptrtoint ptr %interp_filter17.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %interp_filter17.i.i, align 1
  %105 = ptrtoint ptr %interp_filter.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 %104, ptr %interp_filter.i.i, align 1
  %arrayidx26.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 0, i32 0, i32 0
  %arrayidx31.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 0, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.i.i, ptr noundef %arrayidx31.i.i) #8
  %arrayidx26.1.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 0, i32 0, i32 1
  %arrayidx31.1.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 0, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.i.i, ptr noundef %arrayidx31.1.i.i) #8
  %arrayidx26.14.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 0, i32 1, i32 0
  %arrayidx31.15.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 0, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.14.i.i, ptr noundef %arrayidx31.15.i.i) #8
  %arrayidx26.1.1.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 0, i32 1, i32 1
  %arrayidx31.1.1.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 0, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.1.i.i, ptr noundef %arrayidx31.1.1.i.i) #8
  %arrayidx26.16.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 1, i32 0, i32 0
  %arrayidx31.17.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 1, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.16.i.i, ptr noundef %arrayidx31.17.i.i) #8
  %arrayidx26.1.18.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 1, i32 0, i32 1
  %arrayidx31.1.19.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 1, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.18.i.i, ptr noundef %arrayidx31.1.19.i.i) #8
  %arrayidx26.14.1.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 1, i32 1, i32 0
  %arrayidx31.15.1.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 1, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.14.1.i.i, ptr noundef %arrayidx31.15.1.i.i) #8
  %arrayidx26.1.1.1.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 1, i32 1, i32 1
  %arrayidx31.1.1.1.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 1, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.1.1.i.i, ptr noundef %arrayidx31.1.1.1.i.i) #8
  %arrayidx26.2.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 2, i32 0, i32 0
  %arrayidx31.2.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 2, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.2.i.i, ptr noundef %arrayidx31.2.i.i) #8
  %arrayidx26.1.2.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 2, i32 0, i32 1
  %arrayidx31.1.2.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 2, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.2.i.i, ptr noundef %arrayidx31.1.2.i.i) #8
  %arrayidx26.14.2.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 2, i32 1, i32 0
  %arrayidx31.15.2.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 2, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.14.2.i.i, ptr noundef %arrayidx31.15.2.i.i) #8
  %arrayidx26.1.1.2.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 2, i32 1, i32 1
  %arrayidx31.1.1.2.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 2, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.1.2.i.i, ptr noundef %arrayidx31.1.1.2.i.i) #8
  %arrayidx26.3.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 3, i32 0, i32 0
  %arrayidx31.3.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 3, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.3.i.i, ptr noundef %arrayidx31.3.i.i) #8
  %arrayidx26.1.3.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 3, i32 0, i32 1
  %arrayidx31.1.3.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 3, i32 0
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.3.i.i, ptr noundef %arrayidx31.1.3.i.i) #8
  %arrayidx26.14.3.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 3, i32 1, i32 0
  %arrayidx31.15.3.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 0, i32 3, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.14.3.i.i, ptr noundef %arrayidx31.15.3.i.i) #8
  %arrayidx26.1.1.3.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 3, i32 3, i32 1, i32 1
  %arrayidx31.1.1.3.i.i = getelementptr %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 7, i32 1, i32 3, i32 1
  call fastcc void @write_coeff_plane(ptr noundef %arrayidx26.1.1.3.i.i, ptr noundef %arrayidx31.1.1.3.i.i) #8
  %uv_mode_0_2.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 8
  %uv_mode.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 12
  %106 = call ptr @memcpy(ptr %uv_mode_0_2.i.i, ptr %uv_mode.i.i, i32 27)
  %uv_mode_3_5.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 10
  %arrayidx43.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 12, i32 3
  %107 = call ptr @memcpy(ptr %uv_mode_3_5.i.i, ptr %arrayidx43.i.i, i32 27)
  %uv_mode_6_8.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 12
  %arrayidx46.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 12, i32 6
  %108 = call ptr @memcpy(ptr %uv_mode_6_8.i.i, ptr %arrayidx46.i.i, i32 27)
  %uv_mode_9.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 14
  %arrayidx49.i.i = getelementptr %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 12, i32 9
  %109 = call ptr @memcpy(ptr %uv_mode_9.i.i, ptr %arrayidx49.i.i, i32 9)
  %mv.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17
  %mv51.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14
  %110 = call ptr @memcpy(ptr %mv.i.i, ptr %mv51.i.i, i32 3)
  %sign.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 1
  %sign57.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 1
  %111 = ptrtoint ptr %sign57.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %sign57.i.i, align 1
  %113 = ptrtoint ptr %sign.i.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %112, ptr %sign.i.i, align 1
  %classes.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 2
  %classes62.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 2
  %114 = call ptr @memcpy(ptr %classes.i.i, ptr %classes62.i.i, i32 20)
  %class0_bit.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 3
  %class0_bit67.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 3
  %115 = ptrtoint ptr %class0_bit67.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %class0_bit67.i.i, align 1
  %117 = ptrtoint ptr %class0_bit.i.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %class0_bit.i.i, align 1
  %bits.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 4
  %bits72.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 4
  %118 = call ptr @memcpy(ptr %bits.i.i, ptr %bits72.i.i, i32 20)
  %class0_fr.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 5
  %class0_fr77.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 5
  %119 = call ptr @memcpy(ptr %class0_fr.i.i, ptr %class0_fr77.i.i, i32 12)
  %fr.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 6
  %fr82.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 6
  %120 = call ptr @memcpy(ptr %fr.i.i, ptr %fr82.i.i, i32 6)
  %class0_hp.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 7
  %class0_hp87.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 7
  %121 = ptrtoint ptr %class0_hp87.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %class0_hp87.i.i, align 1
  %123 = ptrtoint ptr %class0_hp.i.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 %122, ptr %class0_hp.i.i, align 1
  %hp.i.i = getelementptr inbounds %struct.rkvdec_vp9_probs, ptr %65, i32 0, i32 9, i32 0, i32 17, i32 8
  %hp92.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %63, i32 0, i32 4, i32 14, i32 8
  %124 = ptrtoint ptr %hp92.i.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %hp92.i.i, align 1
  %126 = ptrtoint ptr %hp.i.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %hp.i.i, align 1
  br label %init_probs.exit

init_probs.exit:                                  ; preds = %if.else.i, %for.body41.i.i.init_probs.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ref_bufs.i) #8
  %127 = getelementptr inbounds [3 x ptr], ptr %ref_bufs.i, i32 0, i32 1
  %128 = getelementptr inbounds [3 x ptr], ptr %ref_bufs.i, i32 0, i32 2
  %129 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv.i, align 4
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  %133 = ptrtoint ptr %decode_params.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %decode_params.i, align 4
  %dst1.i = getelementptr inbounds %struct.anon.122, ptr %run, i32 0, i32 1
  %135 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dst1.i, align 4
  %last_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 10
  %137 = ptrtoint ptr %last_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %last_frame_ts.i, align 8
  %m2m_ctx1.i.i = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %139 = ptrtoint ptr %m2m_ctx1.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %m2m_ctx1.i.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %140, i32 0, i32 7
  %call.i.i = call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i.i, i64 noundef %138, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %init_probs.exit.get_ref_buf.exit.i_crit_edge, label %if.end.i.i37

init_probs.exit.get_ref_buf.exit.i_crit_edge:     ; preds = %init_probs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ref_buf.exit.i

if.end.i.i37:                                     ; preds = %init_probs.exit
  %num_buffers.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %140, i32 0, i32 7, i32 0, i32 21
  %141 = ptrtoint ptr %num_buffers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_buffers.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %call.i.i)
  %cmp.i.i.i = icmp ugt i32 %142, %call.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i37.get_ref_buf.exit.i_crit_edge

if.end.i.i37.get_ref_buf.exit.i_crit_edge:        ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ref_buf.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i.i, i32 0, i32 20, i32 %call.i.i
  %143 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %get_ref_buf.exit.i

get_ref_buf.exit.i:                               ; preds = %if.then.i.i.i, %if.end.i.i37.get_ref_buf.exit.i_crit_edge, %init_probs.exit.get_ref_buf.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %136, %init_probs.exit.get_ref_buf.exit.i_crit_edge ], [ %144, %if.then.i.i.i ], [ null, %if.end.i.i37.get_ref_buf.exit.i_crit_edge ]
  %145 = ptrtoint ptr %ref_bufs.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %retval.0.i.i, ptr %ref_bufs.i, align 4
  %golden_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 11
  %146 = ptrtoint ptr %golden_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %golden_frame_ts.i, align 8
  %148 = ptrtoint ptr %m2m_ctx1.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %m2m_ctx1.i.i, align 4
  %cap_q_ctx.i463.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %149, i32 0, i32 7
  %call.i464.i = call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i463.i, i64 noundef %147, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i464.i)
  %cmp.i465.i = icmp slt i32 %call.i464.i, 0
  br i1 %cmp.i465.i, label %get_ref_buf.exit.i.get_ref_buf.exit472.i_crit_edge, label %if.end.i468.i

get_ref_buf.exit.i.get_ref_buf.exit472.i_crit_edge: ; preds = %get_ref_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ref_buf.exit472.i

if.end.i468.i:                                    ; preds = %get_ref_buf.exit.i
  %num_buffers.i.i466.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %149, i32 0, i32 7, i32 0, i32 21
  %150 = ptrtoint ptr %num_buffers.i.i466.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_buffers.i.i466.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %call.i464.i)
  %cmp.i.i467.i = icmp ugt i32 %151, %call.i464.i
  br i1 %cmp.i.i467.i, label %if.then.i.i470.i, label %if.end.i468.i.get_ref_buf.exit472.i_crit_edge

if.end.i468.i.get_ref_buf.exit472.i_crit_edge:    ; preds = %if.end.i468.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ref_buf.exit472.i

if.then.i.i470.i:                                 ; preds = %if.end.i468.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i469.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i463.i, i32 0, i32 20, i32 %call.i464.i
  %152 = ptrtoint ptr %arrayidx.i.i469.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i.i469.i, align 4
  br label %get_ref_buf.exit472.i

get_ref_buf.exit472.i:                            ; preds = %if.then.i.i470.i, %if.end.i468.i.get_ref_buf.exit472.i_crit_edge, %get_ref_buf.exit.i.get_ref_buf.exit472.i_crit_edge
  %retval.0.i471.i = phi ptr [ %136, %get_ref_buf.exit.i.get_ref_buf.exit472.i_crit_edge ], [ %153, %if.then.i.i470.i ], [ null, %if.end.i468.i.get_ref_buf.exit472.i_crit_edge ]
  %154 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %retval.0.i471.i, ptr %127, align 4
  %alt_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 12
  %155 = ptrtoint ptr %alt_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %alt_frame_ts.i, align 8
  %157 = ptrtoint ptr %m2m_ctx1.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %m2m_ctx1.i.i, align 4
  %cap_q_ctx.i474.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %158, i32 0, i32 7
  %call.i475.i = call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i474.i, i64 noundef %156, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i475.i)
  %cmp.i476.i = icmp slt i32 %call.i475.i, 0
  br i1 %cmp.i476.i, label %get_ref_buf.exit472.i.get_ref_buf.exit483.i_crit_edge, label %if.end.i479.i

get_ref_buf.exit472.i.get_ref_buf.exit483.i_crit_edge: ; preds = %get_ref_buf.exit472.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ref_buf.exit483.i

if.end.i479.i:                                    ; preds = %get_ref_buf.exit472.i
  %num_buffers.i.i477.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %158, i32 0, i32 7, i32 0, i32 21
  %159 = ptrtoint ptr %num_buffers.i.i477.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_buffers.i.i477.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %call.i475.i)
  %cmp.i.i478.i = icmp ugt i32 %160, %call.i475.i
  br i1 %cmp.i.i478.i, label %if.then.i.i481.i, label %if.end.i479.i.get_ref_buf.exit483.i_crit_edge

if.end.i479.i.get_ref_buf.exit483.i_crit_edge:    ; preds = %if.end.i479.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ref_buf.exit483.i

if.then.i.i481.i:                                 ; preds = %if.end.i479.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i480.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i474.i, i32 0, i32 20, i32 %call.i475.i
  %161 = ptrtoint ptr %arrayidx.i.i480.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i.i480.i, align 4
  br label %get_ref_buf.exit483.i

get_ref_buf.exit483.i:                            ; preds = %if.then.i.i481.i, %if.end.i479.i.get_ref_buf.exit483.i_crit_edge, %get_ref_buf.exit472.i.get_ref_buf.exit483.i_crit_edge
  %retval.0.i482.i = phi ptr [ %136, %get_ref_buf.exit472.i.get_ref_buf.exit483.i_crit_edge ], [ %162, %if.then.i.i481.i ], [ null, %if.end.i479.i.get_ref_buf.exit483.i_crit_edge ]
  %163 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %retval.0.i482.i, ptr %128, align 4
  %last12.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 7
  %164 = ptrtoint ptr %last12.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load.i38 = load i16, ptr %last12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i38)
  %tobool.not.i39 = icmp sgt i16 %bf.load.i38, -1
  br i1 %tobool.not.i39, label %get_ref_buf.exit483.i.if.end.i_crit_edge, label %if.then.i40

get_ref_buf.exit483.i.if.end.i_crit_edge:         ; preds = %get_ref_buf.exit483.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i40:                                      ; preds = %get_ref_buf.exit483.i
  %timestamp.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 7, i32 2
  %165 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %timestamp.i, align 8
  %167 = ptrtoint ptr %m2m_ctx1.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %m2m_ctx1.i.i, align 4
  %cap_q_ctx.i485.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %168, i32 0, i32 7
  %call.i486.i = call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i485.i, i64 noundef %166, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i486.i)
  %cmp.i487.i = icmp slt i32 %call.i486.i, 0
  br i1 %cmp.i487.i, label %if.then.i40.if.end.i_crit_edge, label %if.end.i490.i

if.then.i40.if.end.i_crit_edge:                   ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i490.i:                                    ; preds = %if.then.i40
  %num_buffers.i.i488.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %168, i32 0, i32 7, i32 0, i32 21
  %169 = ptrtoint ptr %num_buffers.i.i488.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_buffers.i.i488.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %call.i486.i)
  %cmp.i.i489.i = icmp ugt i32 %170, %call.i486.i
  br i1 %cmp.i.i489.i, label %if.then.i.i492.i, label %if.end.i490.i.if.end.i_crit_edge

if.end.i490.i.if.end.i_crit_edge:                 ; preds = %if.end.i490.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i.i492.i:                                 ; preds = %if.end.i490.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i491.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i485.i, i32 0, i32 20, i32 %call.i486.i
  %171 = ptrtoint ptr %arrayidx.i.i491.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i.i491.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i492.i, %if.end.i490.i.if.end.i_crit_edge, %if.then.i40.if.end.i_crit_edge, %get_ref_buf.exit483.i.if.end.i_crit_edge
  %last.0.i = phi ptr [ %136, %get_ref_buf.exit483.i.if.end.i_crit_edge ], [ %136, %if.then.i40.if.end.i_crit_edge ], [ %172, %if.then.i.i492.i ], [ null, %if.end.i490.i.if.end.i_crit_edge ]
  %frame_width_minus_1.i.i41 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 6
  %173 = ptrtoint ptr %frame_width_minus_1.i.i41 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %frame_width_minus_1.i.i41, align 8
  %add.i.i = add i16 %174, 1
  %175 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %136, i32 0, i32 1
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %add.i.i, ptr %175, align 8
  %frame_height_minus_1.i.i42 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 7
  %177 = ptrtoint ptr %frame_height_minus_1.i.i42 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %frame_height_minus_1.i.i42, align 2
  %add3.i.i = add i16 %178, 1
  %height.i.i43 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %136, i32 0, i32 1, i32 0, i32 1
  %179 = ptrtoint ptr %height.i.i43 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %add3.i.i, ptr %height.i.i43, align 2
  %bit_depth.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 17
  %180 = ptrtoint ptr %bit_depth.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %bit_depth.i.i, align 4
  %bit_depth6.i.i = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %136, i32 0, i32 1, i32 0, i32 2
  %182 = ptrtoint ptr %bit_depth6.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load.i.i = load i8, ptr %bit_depth6.i.i, align 4
  %bf.shl.i.i = shl i8 %181, 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %bit_depth6.i.i, align 4
  %cur.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 6
  %183 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %bf.load.i495.i = load i16, ptr %cur.i.i, align 8
  %bf.set.i496.i = or i16 %bf.load.i495.i, -32768
  store i16 %bf.set.i496.i, ptr %cur.i.i, align 8
  %reference_mode.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 21
  %184 = ptrtoint ptr %reference_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %reference_mode.i.i, align 8
  %186 = and i8 %185, 3
  %bf.value.i.i = zext i8 %186 to i16
  %bf.shl.i497.i = shl nuw nsw i16 %bf.value.i.i, 10
  %bf.clear3.i.i = and i16 %bf.set.i496.i, -3073
  %bf.set4.i.i = or i16 %bf.shl.i497.i, %bf.clear3.i.i
  store i16 %bf.set4.i.i, ptr %cur.i.i, align 8
  %interpolation_filter.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 18
  %187 = ptrtoint ptr %interpolation_filter.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %interpolation_filter.i.i, align 1
  %189 = shl i8 %188, 4
  %190 = and i8 %189, 112
  %bf.shl9.i.i = zext i8 %190 to i16
  %bf.clear10.i.i = and i16 %bf.set4.i.i, -113
  %bf.set11.i.i = or i16 %bf.clear10.i.i, %bf.shl9.i.i
  store i16 %bf.set11.i.i, ptr %cur.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 3
  %191 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flags.i.i, align 8
  %flags14.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 6, i32 1
  %193 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %flags14.i.i, align 4
  %timestamp.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %136, i32 0, i32 5
  %194 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %timestamp.i.i, align 8
  %timestamp16.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 6, i32 2
  %196 = ptrtoint ptr %timestamp16.i.i to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %195, ptr %timestamp16.i.i, align 8
  %seg.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 6, i32 3
  %seg18.i.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 2
  %197 = call ptr @memcpy(ptr %seg.i.i, ptr %seg18.i.i, i32 88)
  %lf.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 6, i32 4
  %198 = call ptr @memcpy(ptr %lf.i.i, ptr %134, i32 16)
  %199 = load i32, ptr %flags.i.i, align 8
  %and.i44 = and i32 %199, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool18.not.i = icmp eq i32 %and.i44, 0
  %regs.i = getelementptr inbounds %struct.rkvdec_dev, ptr %132, i32 0, i32 6
  %200 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %201, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8192) #8, !srcloc !27
  %202 = ptrtoint ptr %bit_depth.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %bit_depth.i.i, align 4
  %conv.i = zext i8 %203 to i32
  %204 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %height.i.i, align 4
  %sub.i = add i32 %205, -1
  %or.i = or i32 %sub.i, 63
  %add.i = add i32 %or.i, 1
  %206 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %fmt.i.i, align 4
  %mul.i = mul i32 %207, %conv.i
  %sub23.i = add i32 %mul.i, -1
  %or24.i = or i32 %sub23.i, 511
  %add25.i = add i32 %or24.i, 1
  %div451.i = lshr exact i32 %add25.i, 3
  %mul26.i = mul i32 %div451.i, %add.i
  %div27452.i = lshr exact i32 %mul26.i, 1
  %add28.i = add i32 %div27452.i, %mul26.i
  %div29453.i = lshr exact i32 %add25.i, 7
  %and30.i = and i32 %div29453.i, 508
  %or33.i = mul nuw nsw i32 %and30.i, 4097
  %208 = call i32 @llvm.bswap.i32(i32 %or33.i) #8
  %209 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %210, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %208) #8, !srcloc !27
  %div36454.i = lshr exact i32 %mul26.i, 4
  %and37.i = and i32 %div36454.i, 1048320
  %211 = call i32 @llvm.bswap.i32(i32 %and37.i) #8
  %212 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %213, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %211) #8, !srcloc !27
  %div40455.i = lshr exact i32 %add28.i, 4
  %and41.i = and i32 %div40455.i, 2097151
  %214 = call i32 @llvm.bswap.i32(i32 %and41.i) #8
  %215 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %216, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %214) #8, !srcloc !27
  %217 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %run, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp.not.i.i45 = icmp eq i32 %220, 0
  br i1 %cmp.not.i.i45, label %if.end.i.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i

if.end.i.vb2_get_plane_payload.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_get_plane_payload.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %218, i32 0, i32 10, i32 0, i32 3
  %221 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %bytesused.i.i, align 4
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i, %if.end.i.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i498.i = phi i32 [ %222, %if.then.i.i ], [ 0, %if.end.i.vb2_get_plane_payload.exit.i_crit_edge ]
  %and48.i = and i32 %retval.0.i498.i, 134217727
  %223 = call i32 @llvm.bswap.i32(i32 %and48.i) #8
  %224 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %225, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %223) #8, !srcloc !27
  br i1 %tobool18.not.i, label %land.lhs.true.i, label %if.end54.i

if.end54.i:                                       ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %count_tbl.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 1
  %226 = ptrtoint ptr %count_tbl.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %count_tbl.i, align 4
  %size.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 1, i32 2
  %228 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %size.i, align 4
  %230 = call ptr @memset(ptr %227, i32 0, i32 %229)
  %231 = ptrtoint ptr %last12.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %bf.load56.i = load i16, ptr %last12.i, align 8
  %bf.clear.i46 = and i16 %bf.load56.i, 16384
  %232 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %bf.load59.i = load i16, ptr %cur.i.i, align 8
  %bf.clear60.i = and i16 %bf.load59.i, -16385
  %bf.set.i47 = or i16 %bf.clear60.i, %bf.clear.i46
  br label %if.end86.sink.split.i

land.lhs.true.i:                                  ; preds = %vb2_get_plane_payload.exit.i
  %233 = ptrtoint ptr %last12.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %bf.load56531.i = load i16, ptr %last12.i, align 8
  %bf.clear532.i = and i16 %bf.load56531.i, 16384
  %234 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %bf.load59533.i = load i16, ptr %cur.i.i, align 8
  %bf.clear60534.i = and i16 %bf.load59533.i, -16385
  %bf.set535.i = or i16 %bf.clear60534.i, %bf.clear532.i
  store i16 %bf.set535.i, ptr %cur.i.i, align 8
  %235 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flags.i.i, align 8
  %and63.i = and i32 %236, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true65.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

land.lhs.true65.i:                                ; preds = %land.lhs.true.i
  %flags66.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 2, i32 4
  %237 = ptrtoint ptr %flags66.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %flags66.i, align 2
  %239 = and i8 %238, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %239)
  %240 = icmp eq i8 %239, 1
  br i1 %240, label %land.lhs.true65.i.for.body.i.preheader_crit_edge, label %if.then74.i

land.lhs.true65.i.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.then74.i:                                      ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set84.i = xor i16 %bf.set535.i, 16384
  br label %if.end86.sink.split.i

if.end86.sink.split.i:                            ; preds = %if.then74.i, %if.end54.i
  %bf.set.sink.i = phi i16 [ %bf.set.i47, %if.end54.i ], [ %bf.set84.i, %if.then74.i ]
  %241 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %bf.set.sink.i, ptr %cur.i.i, align 8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end86.sink.split.i, %land.lhs.true65.i.for.body.i.preheader_crit_edge, %land.lhs.true.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %config_ref_registers.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0552.i = phi i32 [ %inc90.i, %config_ref_registers.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx88.i = getelementptr [3 x ptr], ptr %ref_bufs.i, i32 0, i32 %i.0552.i
  %242 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx88.i, align 4
  %arrayidx89.i = getelementptr [3 x %struct.rkvdec_vp9_ref_reg], ptr @ref_regs, i32 0, i32 %i.0552.i
  %244 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev, align 4
  %246 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %243, i32 0, i32 1
  %height.i499.i = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %243, i32 0, i32 1, i32 0, i32 1
  %247 = ptrtoint ptr %height.i499.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %height.i499.i, align 2
  %conv.i.i48 = zext i16 %248 to i32
  %249 = ptrtoint ptr %246 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %246, align 8
  %conv1.i.i = zext i16 %250 to i32
  %shl5.i.i = shl nuw i32 %conv.i.i48, 16
  %or6.i.i = or i32 %shl5.i.i, %conv1.i.i
  %251 = call i32 @llvm.bswap.i32(i32 %or6.i.i) #8
  %regs.i.i = getelementptr inbounds %struct.rkvdec_dev, ptr %245, i32 0, i32 6
  %252 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i.i, align 4
  %254 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx89.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %253, i32 %255
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %251) #8, !srcloc !27
  %call.i.i.i = call ptr @vb2_plane_cookie(ptr noundef %243, i32 noundef 0) #8
  %256 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %call.i.i.i, align 4
  %258 = call i32 @llvm.bswap.i32(i32 %257) #8
  %259 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regs.i.i, align 4
  %reg_ref_base.i.i = getelementptr [3 x %struct.rkvdec_vp9_ref_reg], ptr @ref_regs, i32 0, i32 %i.0552.i, i32 4
  %261 = ptrtoint ptr %reg_ref_base.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %reg_ref_base.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %260, i32 %262
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %258) #8, !srcloc !27
  %263 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dst1.i, align 4
  %cmp.i500.i = icmp eq ptr %264, %243
  br i1 %cmp.i500.i, label %for.body.i.config_ref_registers.exit.i_crit_edge, label %if.end.i504.i

for.body.i.config_ref_registers.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_ref_registers.exit.i

if.end.i504.i:                                    ; preds = %for.body.i
  %sub.i.i = add nsw i32 %conv.i.i48, -1
  %or.i.i49 = or i32 %sub.i.i, 63
  %add.i501.i = add nsw i32 %or.i.i49, 1
  %265 = ptrtoint ptr %246 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %246, align 8
  %conv14.i.i = zext i16 %266 to i32
  %bit_depth.i502.i = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %243, i32 0, i32 1, i32 0, i32 2
  %267 = ptrtoint ptr %bit_depth.i502.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %bf.load.i503.i = load i8, ptr %bit_depth.i502.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i503.i, 4
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %mul.i.i = mul nuw nsw i32 %bf.cast.i.i, %conv14.i.i
  %sub15.i.i = add nsw i32 %mul.i.i, -1
  %or16.i.i = or i32 %sub15.i.i, 511
  %add17.i.i = add nsw i32 %or16.i.i, 1
  %div.i.i = sdiv i32 %add17.i.i, 8
  %mul18.i.i = mul i32 %div.i.i, %add.i501.i
  %div2165.i.i = lshr i32 %div.i.i, 4
  %and22.i.i = and i32 %div2165.i.i, 511
  %or26.i.i = mul nuw nsw i32 %and22.i.i, 65537
  %268 = call i32 @llvm.bswap.i32(i32 %or26.i.i) #8
  %269 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs.i.i, align 4
  %reg_hor_stride.i.i = getelementptr [3 x %struct.rkvdec_vp9_ref_reg], ptr @ref_regs, i32 0, i32 %i.0552.i, i32 1
  %271 = ptrtoint ptr %reg_hor_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %reg_hor_stride.i.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %270, i32 %272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %268) #8, !srcloc !27
  %div2966.i.i = lshr exact i32 %mul18.i.i, 4
  %and30.i.i = and i32 %div2966.i.i, 1048572
  %273 = call i32 @llvm.bswap.i32(i32 %and30.i.i) #8
  %274 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs.i.i, align 4
  %reg_y_stride.i.i = getelementptr [3 x %struct.rkvdec_vp9_ref_reg], ptr @ref_regs, i32 0, i32 %i.0552.i, i32 2
  %276 = ptrtoint ptr %reg_y_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %reg_y_stride.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %275, i32 %277
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 %273) #8, !srcloc !27
  %278 = and i32 %i.0552.i, 1073741823
  %279 = add nsw i32 %278, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %279)
  %280 = icmp ult i32 %279, 2
  br i1 %280, label %if.end.i504.i.config_ref_registers.exit.i_crit_edge, label %if.end35.i.i

if.end.i504.i.config_ref_registers.exit.i_crit_edge: ; preds = %if.end.i504.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_ref_registers.exit.i

if.end35.i.i:                                     ; preds = %if.end.i504.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_yuv_stride.i.i = getelementptr [3 x %struct.rkvdec_vp9_ref_reg], ptr @ref_regs, i32 0, i32 %i.0552.i, i32 3
  %281 = ptrtoint ptr %reg_yuv_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %reg_yuv_stride.i.i, align 4
  %mul19.i.i = mul i32 %mul18.i.i, 3
  %div3667.i.i = lshr exact i32 %mul19.i.i, 5
  %and37.i.i = and i32 %div3667.i.i, 2097150
  %283 = call i32 @llvm.bswap.i32(i32 %and37.i.i) #8
  %284 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regs.i.i, align 4
  %add.ptr41.i.i = getelementptr i8, ptr %285, i32 %282
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i.i, i32 %283) #8, !srcloc !27
  br label %config_ref_registers.exit.i

config_ref_registers.exit.i:                      ; preds = %if.end35.i.i, %if.end.i504.i.config_ref_registers.exit.i_crit_edge, %for.body.i.config_ref_registers.exit.i_crit_edge
  %inc90.i = add nuw nsw i32 %i.0552.i, 1
  %exitcond.not.i = icmp eq i32 %inc90.i, 3
  br i1 %exitcond.not.i, label %for.body94.preheader.i, label %config_ref_registers.exit.i.for.body.i_crit_edge

config_ref_registers.exit.i.for.body.i_crit_edge: ; preds = %config_ref_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body94.preheader.i:                           ; preds = %config_ref_registers.exit.i
  %286 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %priv.i, align 4
  %288 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev, align 4
  %last.i.peel.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %287, i32 0, i32 7
  %290 = ptrtoint ptr %last.i.peel.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %bf.load.i506.peel.i = load i16, ptr %last.i.peel.i, align 8
  %seg2.i.peel.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %287, i32 0, i32 7, i32 3
  %seg3.i.peel.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %287, i32 0, i32 6, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i506.peel.i)
  %tobool.not80.i.peel.i = icmp slt i16 %bf.load.i506.peel.i, 0
  %cond.i.peel.i = select i1 %tobool.not80.i.peel.i, ptr %seg2.i.peel.i, ptr %seg3.i.peel.i
  %feature_enabled.i.peel.i = getelementptr inbounds %struct.v4l2_vp9_segmentation, ptr %cond.i.peel.i, i32 0, i32 1
  %call.i507.peel.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.peel.i, i32 noundef 0, i32 noundef 0) #8
  br i1 %call.i507.peel.i, label %if.then.i509.peel.i, label %for.body94.preheader.i.if.end.i510.peel.i_crit_edge

for.body94.preheader.i.if.end.i510.peel.i_crit_edge: ; preds = %for.body94.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i510.peel.i

if.then.i509.peel.i:                              ; preds = %for.body94.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %291 = ptrtoint ptr %cond.i.peel.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %cond.i.peel.i, align 2
  %293 = shl i16 %292, 2
  %294 = and i16 %293, 2044
  %295 = or i16 %294, 2
  %or.i508.peel.i = zext i16 %295 to i32
  br label %if.end.i510.peel.i

if.end.i510.peel.i:                               ; preds = %if.then.i509.peel.i, %for.body94.preheader.i.if.end.i510.peel.i_crit_edge
  %val.0.i.peel.i = phi i32 [ %or.i508.peel.i, %if.then.i509.peel.i ], [ 0, %for.body94.preheader.i.if.end.i510.peel.i_crit_edge ]
  %call8.i.peel.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.peel.i, i32 noundef 1, i32 noundef 0) #8
  br i1 %call8.i.peel.i, label %if.then9.i.peel.i, label %if.end.i510.peel.i.if.end18.i.peel.i_crit_edge

if.end.i510.peel.i.if.end18.i.peel.i_crit_edge:   ; preds = %if.end.i510.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.peel.i

if.then9.i.peel.i:                                ; preds = %if.end.i510.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12.i.peel.i = getelementptr [8 x [4 x i16]], ptr %cond.i.peel.i, i32 0, i32 0, i32 1
  %296 = ptrtoint ptr %arrayidx12.i.peel.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %arrayidx12.i.peel.i, align 2
  %298 = and i16 %297, 127
  %and14.i.peel.i = zext i16 %298 to i32
  %shl15.i.peel.i = shl nuw nsw i32 %and14.i.peel.i, 12
  %or16.i511.peel.i = or i32 %val.0.i.peel.i, %shl15.i.peel.i
  %or17.i.peel.i = or i32 %or16.i511.peel.i, 2048
  br label %if.end18.i.peel.i

if.end18.i.peel.i:                                ; preds = %if.then9.i.peel.i, %if.end.i510.peel.i.if.end18.i.peel.i_crit_edge
  %val.1.i.peel.i = phi i32 [ %or17.i.peel.i, %if.then9.i.peel.i ], [ %val.0.i.peel.i, %if.end.i510.peel.i.if.end18.i.peel.i_crit_edge ]
  %call21.i.peel.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.peel.i, i32 noundef 2, i32 noundef 0) #8
  br i1 %call21.i.peel.i, label %if.then22.i.peel.i, label %if.end18.i.peel.i.for.body94.peel.next.i_crit_edge

if.end18.i.peel.i.for.body94.peel.next.i_crit_edge: ; preds = %if.end18.i.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body94.peel.next.i

if.then22.i.peel.i:                               ; preds = %if.end18.i.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx25.i.peel.i = getelementptr [8 x [4 x i16]], ptr %cond.i.peel.i, i32 0, i32 0, i32 2
  %299 = ptrtoint ptr %arrayidx25.i.peel.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %arrayidx25.i.peel.i, align 2
  %301 = and i16 %300, 3
  %and27.i.peel.i = zext i16 %301 to i32
  %shl28.i.peel.i = shl nuw nsw i32 %and27.i.peel.i, 20
  %or29.i.peel.i = or i32 %val.1.i.peel.i, %shl28.i.peel.i
  %or30.i.peel.i = or i32 %or29.i.peel.i, 524288
  br label %for.body94.peel.next.i

for.body94.peel.next.i:                           ; preds = %if.then22.i.peel.i, %if.end18.i.peel.i.for.body94.peel.next.i_crit_edge
  %val.2.i.peel.i = phi i32 [ %or30.i.peel.i, %if.then22.i.peel.i ], [ %val.1.i.peel.i, %if.end18.i.peel.i.for.body94.peel.next.i_crit_edge ]
  %call34.i.peel.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.peel.i, i32 noundef 3, i32 noundef 0) #8
  %or36.i.peel.i = or i32 %val.2.i.peel.i, 4194304
  %spec.select.i.peel.i = select i1 %call34.i.peel.i, i32 %or36.i.peel.i, i32 %val.2.i.peel.i
  %flags.i512.peel.i = getelementptr inbounds %struct.v4l2_vp9_segmentation, ptr %cond.i.peel.i, i32 0, i32 4
  %302 = ptrtoint ptr %flags.i512.peel.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %flags.i512.peel.i, align 2
  %304 = lshr i8 %303, 4
  %305 = and i8 %304, 1
  %306 = zext i8 %305 to i32
  %307 = or i32 %spec.select.i.peel.i, %306
  %308 = call i32 @llvm.bswap.i32(i32 %307) #8
  %regs.i513.peel.i = getelementptr inbounds %struct.rkvdec_dev, ptr %289, i32 0, i32 6
  %309 = ptrtoint ptr %regs.i513.peel.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %regs.i513.peel.i, align 4
  %add.ptr.i516.peel.i = getelementptr i8, ptr %310, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i516.peel.i, i32 %308) #8, !srcloc !27
  br label %for.body94.i

for.body94.i:                                     ; preds = %config_seg_registers.exit.i.for.body94.i_crit_edge, %for.body94.peel.next.i
  %i.1554.i = phi i32 [ %inc96.i, %config_seg_registers.exit.i.for.body94.i_crit_edge ], [ 1, %for.body94.peel.next.i ]
  %311 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %priv.i, align 4
  %313 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev, align 4
  %last.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %312, i32 0, i32 7
  %315 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %bf.load.i506.i = load i16, ptr %last.i.i, align 8
  %seg2.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %312, i32 0, i32 7, i32 3
  %seg3.i.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %312, i32 0, i32 6, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i506.i)
  %tobool.not80.i.i = icmp slt i16 %bf.load.i506.i, 0
  %cond.i.i = select i1 %tobool.not80.i.i, ptr %seg2.i.i, ptr %seg3.i.i
  %feature_enabled.i.i = getelementptr inbounds %struct.v4l2_vp9_segmentation, ptr %cond.i.i, i32 0, i32 1
  %call.i507.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.i, i32 noundef 0, i32 noundef %i.1554.i) #8
  br i1 %call.i507.i, label %if.then.i509.i, label %for.body94.i.if.end.i510.i_crit_edge

for.body94.i.if.end.i510.i_crit_edge:             ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i510.i

if.then.i509.i:                                   ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr [8 x [4 x i16]], ptr %cond.i.i, i32 0, i32 %i.1554.i
  %316 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %arrayidx.i.i, align 2
  %318 = shl i16 %317, 2
  %319 = and i16 %318, 2044
  %320 = or i16 %319, 2
  %or.i508.i = zext i16 %320 to i32
  br label %if.end.i510.i

if.end.i510.i:                                    ; preds = %if.then.i509.i, %for.body94.i.if.end.i510.i_crit_edge
  %val.0.i.i = phi i32 [ %or.i508.i, %if.then.i509.i ], [ 0, %for.body94.i.if.end.i510.i_crit_edge ]
  %call8.i.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.i, i32 noundef 1, i32 noundef %i.1554.i) #8
  br i1 %call8.i.i, label %if.then9.i.i, label %if.end.i510.i.if.end18.i.i_crit_edge

if.end.i510.i.if.end18.i.i_crit_edge:             ; preds = %if.end.i510.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.then9.i.i:                                     ; preds = %if.end.i510.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12.i.i = getelementptr [8 x [4 x i16]], ptr %cond.i.i, i32 0, i32 %i.1554.i, i32 1
  %321 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %arrayidx12.i.i, align 2
  %323 = and i16 %322, 127
  %and14.i.i = zext i16 %323 to i32
  %shl15.i.i = shl nuw nsw i32 %and14.i.i, 12
  %or16.i511.i = or i32 %val.0.i.i, %shl15.i.i
  %or17.i.i = or i32 %or16.i511.i, 2048
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then9.i.i, %if.end.i510.i.if.end18.i.i_crit_edge
  %val.1.i.i = phi i32 [ %or17.i.i, %if.then9.i.i ], [ %val.0.i.i, %if.end.i510.i.if.end18.i.i_crit_edge ]
  %call21.i.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.i, i32 noundef 2, i32 noundef %i.1554.i) #8
  br i1 %call21.i.i, label %if.then22.i.i, label %if.end18.i.i.config_seg_registers.exit.i_crit_edge

if.end18.i.i.config_seg_registers.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_seg_registers.exit.i

if.then22.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx25.i.i50 = getelementptr [8 x [4 x i16]], ptr %cond.i.i, i32 0, i32 %i.1554.i, i32 2
  %324 = ptrtoint ptr %arrayidx25.i.i50 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %arrayidx25.i.i50, align 2
  %326 = and i16 %325, 3
  %and27.i.i = zext i16 %326 to i32
  %shl28.i.i = shl nuw nsw i32 %and27.i.i, 20
  %or29.i.i = or i32 %val.1.i.i, %shl28.i.i
  %or30.i.i = or i32 %or29.i.i, 524288
  br label %config_seg_registers.exit.i

config_seg_registers.exit.i:                      ; preds = %if.then22.i.i, %if.end18.i.i.config_seg_registers.exit.i_crit_edge
  %val.2.i.i = phi i32 [ %or30.i.i, %if.then22.i.i ], [ %val.1.i.i, %if.end18.i.i.config_seg_registers.exit.i_crit_edge ]
  %call34.i.i = call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i.i, i32 noundef 3, i32 noundef %i.1554.i) #8
  %or36.i.i = or i32 %val.2.i.i, 4194304
  %spec.select.i.i = select i1 %call34.i.i, i32 %or36.i.i, i32 %val.2.i.i
  %327 = call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #8
  %regs.i513.i = getelementptr inbounds %struct.rkvdec_dev, ptr %314, i32 0, i32 6
  %328 = ptrtoint ptr %regs.i513.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %regs.i513.i, align 4
  %mul.i514.i = shl nuw nsw i32 %i.1554.i, 2
  %add.i515.i = add nuw nsw i32 %mul.i514.i, 80
  %add.ptr.i516.i = getelementptr i8, ptr %329, i32 %add.i515.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i516.i, i32 %327) #8, !srcloc !27
  %inc96.i = add nuw nsw i32 %i.1554.i, 1
  %exitcond560.not.i = icmp eq i32 %inc96.i, 8
  br i1 %exitcond560.not.i, label %for.end97.i, label %config_seg_registers.exit.i.for.body94.i_crit_edge, !llvm.loop !28

config_seg_registers.exit.i.for.body94.i_crit_edge: ; preds = %config_seg_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body94.i

for.end97.i:                                      ; preds = %config_seg_registers.exit.i
  %330 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %bf.load99.i = load i16, ptr %cur.i.i, align 8
  %bf.lshr100.i = lshr i16 %bf.load99.i, 7
  %331 = and i16 %bf.lshr100.i, 7
  %and103.i = zext i16 %331 to i32
  %332 = ptrtoint ptr %reference_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %reference_mode.i.i, align 8
  %334 = shl i8 %333, 3
  %335 = and i8 %334, 24
  %shl106.i = zext i8 %335 to i32
  %or107.i = or i32 %shl106.i, %and103.i
  %336 = shl nuw nsw i32 %or107.i, 24
  %337 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %regs.i, align 4
  %add.ptr109.i = getelementptr i8, ptr %338, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 %336) #8, !srcloc !27
  %339 = ptrtoint ptr %last12.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %bf.load113.i = load i16, ptr %last12.i, align 8
  br i1 %tobool18.not.i, label %if.then111.i, label %if.end152.thread.i

if.end152.thread.i:                               ; preds = %for.end97.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load113.i)
  %tobool157.not539.i = icmp sgt i16 %bf.load113.i, -1
  br i1 %tobool157.not539.i, label %if.end152.thread.i.if.end217.i_crit_edge, label %if.end152.thread.i.land.lhs.true201.i_crit_edge

if.end152.thread.i.land.lhs.true201.i_crit_edge:  ; preds = %if.end152.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true201.i

if.end152.thread.i.if.end217.i_crit_edge:         ; preds = %if.end152.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217.i

if.then111.i:                                     ; preds = %for.end97.i
  %lf119.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 7, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load113.i)
  %tobool116.not551.i = icmp slt i16 %bf.load113.i, 0
  %lf.0.i = select i1 %tobool116.not551.i, ptr %lf119.i, ptr %lf.i.i
  %340 = ptrtoint ptr %lf.0.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %lf.0.i, align 1
  %342 = and i8 %341, 127
  %and130.i = zext i8 %342 to i32
  %arrayidx128.1.i = getelementptr [4 x i8], ptr %lf.0.i, i32 0, i32 1
  %343 = ptrtoint ptr %arrayidx128.1.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx128.1.i, align 1
  %345 = and i8 %344, 127
  %and130.1.i = zext i8 %345 to i32
  %shl132.1.i = shl nuw nsw i32 %and130.1.i, 7
  %or133.1.i = or i32 %shl132.1.i, %and130.i
  %arrayidx128.2.i = getelementptr [4 x i8], ptr %lf.0.i, i32 0, i32 2
  %346 = ptrtoint ptr %arrayidx128.2.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx128.2.i, align 1
  %348 = and i8 %347, 127
  %and130.2.i = zext i8 %348 to i32
  %shl132.2.i = shl nuw nsw i32 %and130.2.i, 14
  %or133.2.i = or i32 %shl132.2.i, %or133.1.i
  %arrayidx128.3.i = getelementptr [4 x i8], ptr %lf.0.i, i32 0, i32 3
  %349 = ptrtoint ptr %arrayidx128.3.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx128.3.i, align 1
  %351 = and i8 %350, 127
  %and130.3.i = zext i8 %351 to i32
  %shl132.3.i = shl nuw nsw i32 %and130.3.i, 21
  %or133.3.i = or i32 %shl132.3.i, %or133.2.i
  %352 = call i32 @llvm.bswap.i32(i32 %or133.3.i) #8
  %353 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %regs.i, align 4
  %add.ptr138.i = getelementptr i8, ptr %354, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138.i, i32 %352) #8, !srcloc !27
  %arrayidx143.i = getelementptr %struct.v4l2_vp9_loop_filter, ptr %lf.0.i, i32 0, i32 1, i32 0
  %355 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx143.i, align 1
  %357 = and i8 %356, 127
  %and145.i = zext i8 %357 to i32
  %arrayidx143.1.i = getelementptr %struct.v4l2_vp9_loop_filter, ptr %lf.0.i, i32 0, i32 1, i32 1
  %358 = ptrtoint ptr %arrayidx143.1.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx143.1.i, align 1
  %360 = and i8 %359, 127
  %and145.1.i = zext i8 %360 to i32
  %shl147.1.i = shl nuw nsw i32 %and145.1.i, 7
  %or148.1.i = or i32 %shl147.1.i, %and145.i
  %361 = ptrtoint ptr %last12.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %bf.load154.i = load i16, ptr %last12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load154.i)
  %tobool157.not.i = icmp sgt i16 %bf.load154.i, -1
  br i1 %tobool157.not.i, label %if.then111.i.if.end217.i_crit_edge, label %land.lhs.true160.i

if.then111.i.if.end217.i_crit_edge:               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217.i

land.lhs.true160.i:                               ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags163.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 7, i32 3, i32 4
  %362 = ptrtoint ptr %flags163.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %flags163.i, align 2
  %364 = and i8 %363, 1
  %365 = zext i8 %364 to i32
  %366 = shl nuw nsw i32 %365, 16
  %367 = or i32 %366, %or148.1.i
  br label %land.lhs.true201.i

land.lhs.true201.i:                               ; preds = %land.lhs.true160.i, %if.end152.thread.i.land.lhs.true201.i_crit_edge
  %last_frame_info.2545.i = phi i32 [ %367, %land.lhs.true160.i ], [ 0, %if.end152.thread.i.land.lhs.true201.i_crit_edge ]
  %flags177.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 7, i32 1
  %368 = ptrtoint ptr %flags177.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %flags177.i, align 4
  %and178.i = shl i32 %369, 16
  %370 = and i32 %and178.i, 131072
  %371 = or i32 %370, %last_frame_info.2545.i
  %and191.i = and i32 %369, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  %or194.i = or i32 %371, 262144
  %spec.select459.i = select i1 %tobool192.not.i, i32 %371, i32 %or194.i
  %372 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %last.0.i, i32 0, i32 1
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %372, align 8
  %375 = ptrtoint ptr %175 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %175, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %374, i16 %376)
  %cmp206.i = icmp eq i16 %374, %376
  br i1 %cmp206.i, label %land.lhs.true208.i, label %land.lhs.true201.i.if.end217.i_crit_edge

land.lhs.true201.i.if.end217.i_crit_edge:         ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217.i

land.lhs.true208.i:                               ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #10
  %height209.i = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %last.0.i, i32 0, i32 1, i32 0, i32 1
  %377 = ptrtoint ptr %height209.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %height209.i, align 2
  %379 = ptrtoint ptr %height.i.i43 to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %height.i.i43, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %378, i16 %380)
  %cmp213.i = icmp eq i16 %378, %380
  %or216.i = or i32 %spec.select459.i, 524288
  %spec.select460.i = select i1 %cmp213.i, i32 %or216.i, i32 %spec.select459.i
  br label %if.end217.i

if.end217.i:                                      ; preds = %land.lhs.true208.i, %land.lhs.true201.i.if.end217.i_crit_edge, %if.then111.i.if.end217.i_crit_edge, %if.end152.thread.i.if.end217.i_crit_edge
  %last_frame_info.5.i = phi i32 [ %spec.select459.i, %land.lhs.true201.i.if.end217.i_crit_edge ], [ %spec.select460.i, %land.lhs.true208.i ], [ 0, %if.end152.thread.i.if.end217.i_crit_edge ], [ %or148.1.i, %if.then111.i.if.end217.i_crit_edge ]
  %381 = call i32 @llvm.bswap.i32(i32 %last_frame_info.5.i) #8
  %382 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %regs.i, align 4
  %add.ptr219.i = getelementptr i8, ptr %383, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219.i, i32 %381) #8, !srcloc !27
  %compressed_header_size.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 4
  %384 = ptrtoint ptr %compressed_header_size.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %compressed_header_size.i, align 4
  %conv220.i = zext i16 %385 to i32
  %uncompressed_header_size.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %134, i32 0, i32 5
  %386 = ptrtoint ptr %uncompressed_header_size.i to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %uncompressed_header_size.i, align 2
  %conv222.i = zext i16 %387 to i32
  %388 = add nuw nsw i32 %conv220.i, %conv222.i
  %sub223.i = sub i32 %retval.0.i498.i, %388
  %389 = call i32 @llvm.bswap.i32(i32 %sub223.i) #8
  %390 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %regs.i, align 4
  %add.ptr225.i = getelementptr i8, ptr %391, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr225.i, i32 %389) #8, !srcloc !27
  br i1 %tobool18.not.i, label %for.body230.i.preheader, label %if.end217.i.for.end255.i_crit_edge

if.end217.i.for.end255.i_crit_edge:               ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end255.i

for.body230.i.preheader:                          ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #10
  %392 = ptrtoint ptr %ref_bufs.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ref_bufs.i, align 4
  %394 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %393, i32 0, i32 1
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %394, align 8
  %conv233.i = zext i16 %396 to i32
  %height235.i = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %393, i32 0, i32 1, i32 0, i32 1
  %397 = ptrtoint ptr %height235.i to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %height235.i, align 2
  %conv236.i = zext i16 %398 to i32
  %shl237.i = shl nuw nsw i32 %conv233.i, 14
  %399 = ptrtoint ptr %175 to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %175, align 8
  %conv239.i = zext i16 %400 to i32
  %div240.i = udiv i32 %shl237.i, %conv239.i
  %shl241.i = shl nuw nsw i32 %conv236.i, 14
  %401 = ptrtoint ptr %height.i.i43 to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %height.i.i43, align 2
  %conv243.i = zext i16 %402 to i32
  %div244.i = udiv i32 %shl241.i, %conv243.i
  %and245.i = and i32 %div240.i, 65535
  %shl247.i = shl i32 %div244.i, 16
  %or248.i = or i32 %shl247.i, %and245.i
  %403 = call i32 @llvm.bswap.i32(i32 %or248.i) #8
  %404 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %regs.i, align 4
  %add.ptr252.i = getelementptr i8, ptr %405, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252.i, i32 %403) #8, !srcloc !27
  %406 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %127, align 4
  %408 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %407, i32 0, i32 1
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %408, align 8
  %conv233.i.1 = zext i16 %410 to i32
  %height235.i.1 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %407, i32 0, i32 1, i32 0, i32 1
  %411 = ptrtoint ptr %height235.i.1 to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %height235.i.1, align 2
  %conv236.i.1 = zext i16 %412 to i32
  %shl237.i.1 = shl nuw nsw i32 %conv233.i.1, 14
  %413 = ptrtoint ptr %175 to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %175, align 8
  %conv239.i.1 = zext i16 %414 to i32
  %div240.i.1 = udiv i32 %shl237.i.1, %conv239.i.1
  %shl241.i.1 = shl nuw nsw i32 %conv236.i.1, 14
  %415 = ptrtoint ptr %height.i.i43 to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %height.i.i43, align 2
  %conv243.i.1 = zext i16 %416 to i32
  %div244.i.1 = udiv i32 %shl241.i.1, %conv243.i.1
  %and245.i.1 = and i32 %div240.i.1, 65535
  %shl247.i.1 = shl i32 %div244.i.1, 16
  %or248.i.1 = or i32 %shl247.i.1, %and245.i.1
  %417 = call i32 @llvm.bswap.i32(i32 %or248.i.1) #8
  %418 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %regs.i, align 4
  %add.ptr252.i.1 = getelementptr i8, ptr %419, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252.i.1, i32 %417) #8, !srcloc !27
  %420 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %128, align 4
  %422 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %421, i32 0, i32 1
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %422, align 8
  %conv233.i.2 = zext i16 %424 to i32
  %height235.i.2 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %421, i32 0, i32 1, i32 0, i32 1
  %425 = ptrtoint ptr %height235.i.2 to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %height235.i.2, align 2
  %conv236.i.2 = zext i16 %426 to i32
  %shl237.i.2 = shl nuw nsw i32 %conv233.i.2, 14
  %427 = ptrtoint ptr %175 to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %175, align 8
  %conv239.i.2 = zext i16 %428 to i32
  %div240.i.2 = udiv i32 %shl237.i.2, %conv239.i.2
  %shl241.i.2 = shl nuw nsw i32 %conv236.i.2, 14
  %429 = ptrtoint ptr %height.i.i43 to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %height.i.i43, align 2
  %conv243.i.2 = zext i16 %430 to i32
  %div244.i.2 = udiv i32 %shl241.i.2, %conv243.i.2
  %and245.i.2 = and i32 %div240.i.2, 65535
  %shl247.i.2 = shl i32 %div244.i.2, 16
  %or248.i.2 = or i32 %shl247.i.2, %and245.i.2
  %431 = call i32 @llvm.bswap.i32(i32 %or248.i.2) #8
  %432 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %regs.i, align 4
  %add.ptr252.i.2 = getelementptr i8, ptr %433, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252.i.2, i32 %431) #8, !srcloc !27
  br label %for.end255.i

for.end255.i:                                     ; preds = %for.body230.i.preheader, %if.end217.i.for.end255.i_crit_edge
  %call.i517.i = call ptr @vb2_plane_cookie(ptr noundef %136, i32 noundef 0) #8
  %434 = ptrtoint ptr %call.i517.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %call.i517.i, align 4
  %436 = call i32 @llvm.bswap.i32(i32 %435) #8
  %437 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %regs.i, align 4
  %add.ptr261.i = getelementptr i8, ptr %438, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr261.i, i32 %436) #8, !srcloc !27
  %439 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %run, align 4
  %call.i518.i = call ptr @vb2_plane_cookie(ptr noundef %440, i32 noundef 0) #8
  %441 = ptrtoint ptr %call.i518.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %call.i518.i, align 4
  %443 = call i32 @llvm.bswap.i32(i32 %442) #8
  %444 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %regs.i, align 4
  %add.ptr268.i = getelementptr i8, ptr %445, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268.i, i32 %443) #8, !srcloc !27
  %dma.i = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %130, i32 0, i32 1
  %446 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %dma.i, align 4
  %448 = call i32 @llvm.bswap.i32(i32 %447) #8
  %449 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %regs.i, align 4
  %add.ptr271.i = getelementptr i8, ptr %450, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr271.i, i32 %448) #8, !srcloc !27
  %dma273.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %130, i32 0, i32 1, i32 1
  %451 = ptrtoint ptr %dma273.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %dma273.i, align 4
  %453 = call i32 @llvm.bswap.i32(i32 %452) #8
  %454 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %regs.i, align 4
  %add.ptr275.i = getelementptr i8, ptr %455, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275.i, i32 %453) #8, !srcloc !27
  %456 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %dma.i, align 4
  %add278.i = add i32 %457, 2421
  %458 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load2_noabort(i32 %458)
  %bf.load280.i = load i16, ptr %cur.i.i, align 8
  %bf.lshr281.i = lshr i16 %bf.load280.i, 14
  %bf.clear282.i = and i16 %bf.lshr281.i, 1
  %bf.cast283.i = zext i16 %bf.clear282.i to i32
  %mul284.i = mul nuw nsw i32 %bf.cast283.i, 73728
  %add285.i = add i32 %add278.i, %mul284.i
  %459 = call i32 @llvm.bswap.i32(i32 %add285.i) #8
  %460 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %regs.i, align 4
  %add.ptr287.i = getelementptr i8, ptr %461, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287.i, i32 %459) #8, !srcloc !27
  %462 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %dma.i, align 4
  %add290.i = add i32 %463, 2421
  %464 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %bf.load292.i = load i16, ptr %cur.i.i, align 8
  %465 = lshr i16 %bf.load292.i, 14
  %.lobit.i = and i16 %465, 1
  %466 = xor i16 %.lobit.i, 1
  %467 = zext i16 %466 to i32
  %mul298.i = mul nuw nsw i32 %467, 73728
  %add299.i = add i32 %add290.i, %mul298.i
  %468 = call i32 @llvm.bswap.i32(i32 %add299.i) #8
  %469 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %regs.i, align 4
  %add.ptr301.i = getelementptr i8, ptr %470, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr301.i, i32 %468) #8, !srcloc !27
  br i1 %tobool18.not.i, label %land.lhs.true303.i, label %for.end255.i.if.else314.i_crit_edge

for.end255.i.if.else314.i_crit_edge:              ; preds = %for.end255.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else314.i

land.lhs.true303.i:                               ; preds = %for.end255.i
  %471 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %flags.i.i, align 8
  %and305.i = and i32 %472, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305.i)
  %tobool306.not.i = icmp eq i32 %and305.i, 0
  br i1 %tobool306.not.i, label %land.lhs.true307.i, label %land.lhs.true303.i.if.else314.i_crit_edge

land.lhs.true303.i.if.else314.i_crit_edge:        ; preds = %land.lhs.true303.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else314.i

land.lhs.true307.i:                               ; preds = %land.lhs.true303.i
  %473 = ptrtoint ptr %last12.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %bf.load309.i = load i16, ptr %last12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load309.i)
  %tobool312.not.i = icmp sgt i16 %bf.load309.i, -1
  br i1 %tobool312.not.i, label %land.lhs.true307.i.if.else314.i_crit_edge, label %land.lhs.true307.i.config_registers.exit_crit_edge

land.lhs.true307.i.config_registers.exit_crit_edge: ; preds = %land.lhs.true307.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %config_registers.exit

land.lhs.true307.i.if.else314.i_crit_edge:        ; preds = %land.lhs.true307.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else314.i

if.else314.i:                                     ; preds = %land.lhs.true307.i.if.else314.i_crit_edge, %land.lhs.true303.i.if.else314.i_crit_edge, %for.end255.i.if.else314.i_crit_edge
  br label %config_registers.exit

config_registers.exit:                            ; preds = %if.else314.i, %land.lhs.true307.i.config_registers.exit_crit_edge
  %mv_ref.0.i = phi ptr [ %136, %if.else314.i ], [ %last.0.i, %land.lhs.true307.i.config_registers.exit_crit_edge ]
  %474 = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %mv_ref.0.i, i32 0, i32 1
  %height.i519.i = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %mv_ref.0.i, i32 0, i32 1, i32 0, i32 1
  %475 = ptrtoint ptr %height.i519.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %height.i519.i, align 2
  %conv.i520.i = zext i16 %476 to i32
  %sub.i521.i = add nsw i32 %conv.i520.i, -1
  %or.i522.i = or i32 %sub.i521.i, 63
  %477 = ptrtoint ptr %474 to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %474, align 8
  %conv1.i523.i = zext i16 %478 to i32
  %bit_depth.i524.i = getelementptr inbounds %struct.rkvdec_decoded_buffer, ptr %mv_ref.0.i, i32 0, i32 1, i32 0, i32 2
  %479 = ptrtoint ptr %bit_depth.i524.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %bf.load.i525.i = load i8, ptr %bit_depth.i524.i, align 4
  %bf.lshr.i526.i = lshr i8 %bf.load.i525.i, 4
  %bf.cast.i527.i = zext i8 %bf.lshr.i526.i to i32
  %mul.i528.i = mul nuw nsw i32 %bf.cast.i527.i, %conv1.i523.i
  %sub2.i.i = add nsw i32 %mul.i528.i, -1
  %or3.i.i = or i32 %sub2.i.i, 511
  %add4.i.i = add nsw i32 %or3.i.i, 1
  %div.i529.i = sdiv i32 %add4.i.i, 8
  %480 = mul nsw i32 %or.i522.i, 3
  %mul5.i.i = add nsw i32 %480, 3
  %mul6.i.i = mul i32 %div.i529.i, %mul5.i.i
  %div712.i.i = lshr exact i32 %mul6.i.i, 1
  %call.i.i530.i = call ptr @vb2_plane_cookie(ptr noundef %mv_ref.0.i, i32 noundef 0) #8
  %481 = ptrtoint ptr %call.i.i530.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %call.i.i530.i, align 4
  %add8.i.i = add i32 %div712.i.i, %482
  %483 = call i32 @llvm.bswap.i32(i32 %add8.i.i) #8
  %484 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %regs.i, align 4
  %add.ptr318.i = getelementptr i8, ptr %485, i32 208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr318.i, i32 %483) #8, !srcloc !27
  %486 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %fmt.i.i, align 4
  %488 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %height.i.i, align 4
  %shl325.i = shl i32 %489, 16
  %or326.i = or i32 %shl325.i, %487
  %490 = call i32 @llvm.bswap.i32(i32 %or326.i) #8
  %491 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %regs.i, align 4
  %add.ptr328.i = getelementptr i8, ptr %492, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr328.i, i32 %490) #8, !srcloc !27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ref_bufs.i) #8
  call void @rkvdec_run_postamble(ptr noundef %ctx, ptr noundef nonnull %run) #8
  %watchdog_work = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %493 = load ptr, ptr @system_wq, align 4
  %call.i.i51 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %493, ptr noundef %watchdog_work, i32 noundef 200) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 6
  %494 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %495, i32 1040
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  call void @arm_heavy_mb() #8
  %496 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %497, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @arm_heavy_mb() #8
  %498 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %499, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 234881024) #8, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  call void @arm_heavy_mb() #8
  %500 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %501, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 1660944384) #8, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %config_registers.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %config_registers.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %run) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_vp9_done(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %src_buf, ptr nocapture noundef readnone %dst_buf, i32 noundef %result) #1 align 64 {
entry:
  %classes = alloca [2 x [11 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %result)
  %cmp = icmp eq i32 %result, 6
  br i1 %cmp, label %entry.out_update_last_crit_edge, label %if.end

entry.out_update_last_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_update_last

if.end:                                           ; preds = %entry
  %cur = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 6
  %flags = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.out_update_last_crit_edge, label %if.end2

if.end.out_update_last_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_update_last

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %cur, align 8
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %and6 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end2.if.end90_crit_edge

if.end2.if.end90_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then8:                                         ; preds = %if.end2
  %probability_tables = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4
  %and11 = and i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %do.body29, label %cond.false

do.body29:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %probability_tables to i32
  call void @__asan_load1_noabort(i32 %5)
  %_tx_skip.sroa.0.0.copyload = load i8, ptr %probability_tables, align 1
  %_tx_skip.sroa.5.0.arraydecay16.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %_tx_skip.sroa.5.0.arraydecay16.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %_tx_skip.sroa.5.0.copyload = load i8, ptr %_tx_skip.sroa.5.0.arraydecay16.sroa_idx, align 1
  %tx1618 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %tx1618 to i32
  call void @__asan_load1_noabort(i32 %7)
  %_tx_skip.sroa.6.2.copyload = load i8, ptr %tx1618, align 1
  %_tx_skip.sroa.9.2.arraydecay19.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %_tx_skip.sroa.9.2.arraydecay19.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %_tx_skip.sroa.9.2.copyload = load i8, ptr %_tx_skip.sroa.9.2.arraydecay19.sroa_idx, align 1
  %_tx_skip.sroa.10.2.arraydecay19.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %_tx_skip.sroa.10.2.arraydecay19.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %_tx_skip.sroa.10.2.copyload = load i8, ptr %_tx_skip.sroa.10.2.arraydecay19.sroa_idx, align 1
  %_tx_skip.sroa.11.2.arraydecay19.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %_tx_skip.sroa.11.2.arraydecay19.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %_tx_skip.sroa.11.2.copyload = load i8, ptr %_tx_skip.sroa.11.2.arraydecay19.sroa_idx, align 1
  %tx3221 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %tx3221 to i32
  call void @__asan_load1_noabort(i32 %11)
  %_tx_skip.sroa.12.6.copyload = load i8, ptr %tx3221, align 1
  %_tx_skip.sroa.15.6.arraydecay22.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %_tx_skip.sroa.15.6.arraydecay22.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %_tx_skip.sroa.15.6.copyload = load i8, ptr %_tx_skip.sroa.15.6.arraydecay22.sroa_idx, align 1
  %_tx_skip.sroa.16.6.arraydecay22.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %_tx_skip.sroa.16.6.arraydecay22.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %_tx_skip.sroa.16.6.copyload = load i8, ptr %_tx_skip.sroa.16.6.arraydecay22.sroa_idx, align 1
  %_tx_skip.sroa.17.6.arraydecay22.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 2, i32 1
  %14 = ptrtoint ptr %_tx_skip.sroa.17.6.arraydecay22.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %_tx_skip.sroa.17.6.copyload = load i8, ptr %_tx_skip.sroa.17.6.arraydecay22.sroa_idx, align 1
  %_tx_skip.sroa.18.6.arraydecay22.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %_tx_skip.sroa.18.6.arraydecay22.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %_tx_skip.sroa.18.6.copyload = load i8, ptr %_tx_skip.sroa.18.6.arraydecay22.sroa_idx, align 1
  %_tx_skip.sroa.19.6.arraydecay22.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 2, i32 1, i32 2
  %16 = ptrtoint ptr %_tx_skip.sroa.19.6.arraydecay22.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %_tx_skip.sroa.19.6.copyload = load i8, ptr %_tx_skip.sroa.19.6.arraydecay22.sroa_idx, align 1
  %skip24 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 4
  %17 = ptrtoint ptr %skip24 to i32
  call void @__asan_load1_noabort(i32 %17)
  %_tx_skip.sroa.20.12.copyload = load i8, ptr %skip24, align 1
  %_tx_skip.sroa.23.12.arraydecay25.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 4, i32 1
  %18 = ptrtoint ptr %_tx_skip.sroa.23.12.arraydecay25.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %_tx_skip.sroa.23.12.copyload = load i8, ptr %_tx_skip.sroa.23.12.arraydecay25.sroa_idx, align 1
  %_tx_skip.sroa.24.12.arraydecay25.sroa_idx = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4, i32 4, i32 2
  %19 = ptrtoint ptr %_tx_skip.sroa.24.12.arraydecay25.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %_tx_skip.sroa.24.12.copyload = load i8, ptr %_tx_skip.sroa.24.12.arraydecay25.sroa_idx, align 1
  %arrayidx168 = getelementptr %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 5, i32 %bf.cast
  %20 = call ptr @memcpy(ptr %probability_tables, ptr %arrayidx168, i32 2039)
  store i8 %_tx_skip.sroa.0.0.copyload, ptr %probability_tables, align 1
  store i8 %_tx_skip.sroa.5.0.copyload, ptr %_tx_skip.sroa.5.0.arraydecay16.sroa_idx, align 1
  store i8 %_tx_skip.sroa.6.2.copyload, ptr %tx1618, align 1
  store i8 %_tx_skip.sroa.9.2.copyload, ptr %_tx_skip.sroa.9.2.arraydecay19.sroa_idx, align 1
  store i8 %_tx_skip.sroa.10.2.copyload, ptr %_tx_skip.sroa.10.2.arraydecay19.sroa_idx, align 1
  store i8 %_tx_skip.sroa.11.2.copyload, ptr %_tx_skip.sroa.11.2.arraydecay19.sroa_idx, align 1
  store i8 %_tx_skip.sroa.12.6.copyload, ptr %tx3221, align 1
  store i8 %_tx_skip.sroa.15.6.copyload, ptr %_tx_skip.sroa.15.6.arraydecay22.sroa_idx, align 1
  store i8 %_tx_skip.sroa.16.6.copyload, ptr %_tx_skip.sroa.16.6.arraydecay22.sroa_idx, align 1
  store i8 %_tx_skip.sroa.17.6.copyload, ptr %_tx_skip.sroa.17.6.arraydecay22.sroa_idx, align 1
  store i8 %_tx_skip.sroa.18.6.copyload, ptr %_tx_skip.sroa.18.6.arraydecay22.sroa_idx, align 1
  store i8 %_tx_skip.sroa.19.6.copyload, ptr %_tx_skip.sroa.19.6.arraydecay22.sroa_idx, align 1
  store i8 %_tx_skip.sroa.20.12.copyload, ptr %skip24, align 1
  store i8 %_tx_skip.sroa.23.12.copyload, ptr %_tx_skip.sroa.23.12.arraydecay25.sroa_idx, align 1
  store i8 %_tx_skip.sroa.24.12.copyload, ptr %_tx_skip.sroa.24.12.arraydecay25.sroa_idx, align 1
  %intra_cnts = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 3
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 5, i32 %bf.cast
  %21 = call ptr @memcpy(ptr %probability_tables, ptr %arrayidx, i32 2039)
  %inter_cnts = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body29
  %cond = phi ptr [ %intra_cnts, %do.body29 ], [ %inter_cnts, %cond.false ]
  %last = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load50 = load i16, ptr %last, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50)
  %tobool53.not = icmp sgt i16 %bf.load50, -1
  br i1 %tobool53.not, label %cond.end.lor.end_crit_edge, label %lor.rhs

cond.end.lor.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags55 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags55, align 4
  %and56 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57 = icmp ne i32 %and56, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end.lor.end_crit_edge
  %25 = phi i1 [ true, %cond.end.lor.end_crit_edge ], [ %tobool57, %lor.rhs ]
  tail call void @v4l2_vp9_adapt_coef_probs(ptr noundef %probability_tables, ptr noundef %cond, i1 noundef zeroext %25, i1 noundef zeroext %tobool12) #8
  br i1 %tobool12, label %lor.end.if.end90_crit_edge, label %if.then60

lor.end.if.end90_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then60:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %classes) #8
  %count_tbl = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %count_tbl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %count_tbl, align 4
  %arrayidx66 = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %27, i32 0, i32 15, i32 0
  %28 = call ptr @memcpy(ptr %classes, ptr %arrayidx66, i32 44)
  %arrayidx63.1 = getelementptr inbounds [2 x [11 x i32]], ptr %classes, i32 0, i32 1
  %arrayidx66.1 = getelementptr %struct.rkvdec_vp9_inter_frame_symbol_counts, ptr %27, i32 0, i32 15, i32 1
  %29 = call ptr @memcpy(ptr %arrayidx63.1, ptr %arrayidx66.1, i32 44)
  %classes68 = getelementptr inbounds %struct.v4l2_vp9_frame_symbol_counts, ptr %cond, i32 0, i32 15
  %30 = ptrtoint ptr %classes68 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %classes, ptr %classes68, align 4
  %31 = ptrtoint ptr %cur to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load71 = load i16, ptr %cur, align 8
  %bf.lshr72 = lshr i16 %bf.load71, 10
  %32 = trunc i16 %bf.lshr72 to i8
  %conv = and i8 %32, 3
  %33 = trunc i16 %bf.load71 to i8
  %34 = lshr i8 %33, 4
  %conv80 = and i8 %34, 7
  %bf.lshr83 = lshr i16 %bf.load71, 7
  %35 = trunc i16 %bf.lshr83 to i8
  %conv86 = and i8 %35, 7
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  call void @v4l2_vp9_adapt_noncoef_probs(ptr noundef %probability_tables, ptr noundef %cond, i8 noundef zeroext %conv, i8 noundef zeroext %conv80, i8 noundef zeroext %conv86, i32 noundef %37) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %classes) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then60, %lor.end.if.end90_crit_edge, %if.end2.if.end90_crit_edge
  %arrayidx92 = getelementptr %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 5, i32 %bf.cast
  %probability_tables93 = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 4
  %38 = call ptr @memcpy(ptr %arrayidx92, ptr %probability_tables93, i32 2039)
  br label %out_update_last

out_update_last:                                  ; preds = %if.end90, %if.end.out_update_last_crit_edge, %entry.out_update_last_crit_edge
  %last.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 7
  %cur.i = getelementptr inbounds %struct.rkvdec_vp9_ctx, ptr %1, i32 0, i32 6
  %39 = call ptr @memcpy(ptr %last.i, ptr %cur.i, i32 120)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkvdec_run_postamble(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkvdec_run_preamble(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @v4l2_vp9_reset_frame_ctx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_vp9_fw_update_probs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_coeff_plane(ptr nocapture noundef readonly %coef, ptr nocapture noundef writeonly %coeff_plane) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.for.cond1.preheader_crit_edge, %entry
  %k.036 = phi i32 [ 0, %entry ], [ %inc17, %for.cond1.preheader.for.cond1.preheader_crit_edge ]
  %byte_count.035 = phi i32 [ 0, %entry ], [ %spec.select27.2.5, %for.cond1.preheader.for.cond1.preheader_crit_edge ]
  %idx.034 = phi i32 [ 0, %entry ], [ %spec.select.2.5, %for.cond1.preheader.for.cond1.preheader_crit_edge ]
  %arrayidx8 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 0, i32 0
  %0 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %coeff_plane, i32 %idx.034
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %byte_count.035)
  %cmp11 = icmp eq i32 %byte_count.035, 26
  %spec.select.v = select i1 %cmp11, i32 6, i32 1
  %spec.select = add i32 %spec.select.v, %idx.034
  %arrayidx8.1 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx8.1, align 1
  %arrayidx9.1 = getelementptr i8, ptr %coeff_plane, i32 %spec.select
  %5 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx9.1, align 1
  %inc10.op = add i32 %byte_count.035, 2
  %inc10.1 = select i1 %cmp11, i32 1, i32 %inc10.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.1)
  %cmp11.1 = icmp eq i32 %inc10.1, 27
  %spec.select.v.1 = select i1 %cmp11.1, i32 6, i32 1
  %spec.select.1 = add i32 %spec.select.v.1, %spec.select
  %arrayidx8.2 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.2, align 1
  %arrayidx9.2 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.1
  %8 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx9.2, align 1
  %inc10.1.op = add i32 %inc10.1, 1
  %inc10.2 = select i1 %cmp11.1, i32 1, i32 %inc10.1.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.2)
  %cmp11.2 = icmp eq i32 %inc10.2, 27
  %spec.select.v.2 = select i1 %cmp11.2, i32 6, i32 1
  %spec.select.2 = add i32 %spec.select.v.2, %spec.select.1
  %arrayidx8.137 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx8.137 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8.137, align 1
  %arrayidx9.138 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.2
  %11 = ptrtoint ptr %arrayidx9.138 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx9.138, align 1
  %inc10.2.op = add i32 %inc10.2, 1
  %inc10.139 = select i1 %cmp11.2, i32 1, i32 %inc10.2.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.139)
  %cmp11.140 = icmp eq i32 %inc10.139, 27
  %spec.select.v.141 = select i1 %cmp11.140, i32 6, i32 1
  %spec.select.142 = add i32 %spec.select.v.141, %spec.select.2
  %arrayidx8.1.1 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx8.1.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8.1.1, align 1
  %arrayidx9.1.1 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.142
  %14 = ptrtoint ptr %arrayidx9.1.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx9.1.1, align 1
  %inc10.139.op = add i32 %inc10.139, 1
  %inc10.1.1 = select i1 %cmp11.140, i32 1, i32 %inc10.139.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.1.1)
  %cmp11.1.1 = icmp eq i32 %inc10.1.1, 27
  %spec.select.v.1.1 = select i1 %cmp11.1.1, i32 6, i32 1
  %spec.select.1.1 = add i32 %spec.select.v.1.1, %spec.select.142
  %arrayidx8.2.1 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx8.2.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.2.1, align 1
  %arrayidx9.2.1 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.1.1
  %17 = ptrtoint ptr %arrayidx9.2.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx9.2.1, align 1
  %inc10.1.1.op = add i32 %inc10.1.1, 1
  %inc10.2.1 = select i1 %cmp11.1.1, i32 1, i32 %inc10.1.1.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.2.1)
  %cmp11.2.1 = icmp eq i32 %inc10.2.1, 27
  %spec.select.v.2.1 = select i1 %cmp11.2.1, i32 6, i32 1
  %spec.select.2.1 = add i32 %spec.select.v.2.1, %spec.select.1.1
  %arrayidx8.244 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx8.244 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8.244, align 1
  %arrayidx9.245 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.2.1
  %20 = ptrtoint ptr %arrayidx9.245 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx9.245, align 1
  %inc10.2.1.op = add i32 %inc10.2.1, 1
  %inc10.246 = select i1 %cmp11.2.1, i32 1, i32 %inc10.2.1.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.246)
  %cmp11.247 = icmp eq i32 %inc10.246, 27
  %spec.select.v.248 = select i1 %cmp11.247, i32 6, i32 1
  %spec.select.249 = add i32 %spec.select.v.248, %spec.select.2.1
  %arrayidx8.1.2 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx8.1.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.1.2, align 1
  %arrayidx9.1.2 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.249
  %23 = ptrtoint ptr %arrayidx9.1.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx9.1.2, align 1
  %inc10.246.op = add i32 %inc10.246, 1
  %inc10.1.2 = select i1 %cmp11.247, i32 1, i32 %inc10.246.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.1.2)
  %cmp11.1.2 = icmp eq i32 %inc10.1.2, 27
  %spec.select.v.1.2 = select i1 %cmp11.1.2, i32 6, i32 1
  %spec.select.1.2 = add i32 %spec.select.v.1.2, %spec.select.249
  %arrayidx8.2.2 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx8.2.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx8.2.2, align 1
  %arrayidx9.2.2 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.1.2
  %26 = ptrtoint ptr %arrayidx9.2.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx9.2.2, align 1
  %inc10.1.2.op = add i32 %inc10.1.2, 1
  %inc10.2.2 = select i1 %cmp11.1.2, i32 1, i32 %inc10.1.2.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.2.2)
  %cmp11.2.2 = icmp eq i32 %inc10.2.2, 27
  %spec.select.v.2.2 = select i1 %cmp11.2.2, i32 6, i32 1
  %spec.select.2.2 = add i32 %spec.select.v.2.2, %spec.select.1.2
  %arrayidx8.3 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx8.3, align 1
  %arrayidx9.3 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.2.2
  %29 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx9.3, align 1
  %inc10.2.2.op = add i32 %inc10.2.2, 1
  %inc10.3 = select i1 %cmp11.2.2, i32 1, i32 %inc10.2.2.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.3)
  %cmp11.3 = icmp eq i32 %inc10.3, 27
  %spec.select.v.3 = select i1 %cmp11.3, i32 6, i32 1
  %spec.select.3 = add i32 %spec.select.v.3, %spec.select.2.2
  %arrayidx8.1.3 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx8.1.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.1.3, align 1
  %arrayidx9.1.3 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.3
  %32 = ptrtoint ptr %arrayidx9.1.3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx9.1.3, align 1
  %inc10.3.op = add i32 %inc10.3, 1
  %inc10.1.3 = select i1 %cmp11.3, i32 1, i32 %inc10.3.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.1.3)
  %cmp11.1.3 = icmp eq i32 %inc10.1.3, 27
  %spec.select.v.1.3 = select i1 %cmp11.1.3, i32 6, i32 1
  %spec.select.1.3 = add i32 %spec.select.v.1.3, %spec.select.3
  %arrayidx8.2.3 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx8.2.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx8.2.3, align 1
  %arrayidx9.2.3 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.1.3
  %35 = ptrtoint ptr %arrayidx9.2.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx9.2.3, align 1
  %inc10.1.3.op = add i32 %inc10.1.3, 1
  %inc10.2.3 = select i1 %cmp11.1.3, i32 1, i32 %inc10.1.3.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.2.3)
  %cmp11.2.3 = icmp eq i32 %inc10.2.3, 27
  %spec.select.v.2.3 = select i1 %cmp11.2.3, i32 6, i32 1
  %spec.select.2.3 = add i32 %spec.select.v.2.3, %spec.select.1.3
  %arrayidx8.4 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 4, i32 0
  %36 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx8.4, align 1
  %arrayidx9.4 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.2.3
  %38 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx9.4, align 1
  %inc10.2.3.op = add i32 %inc10.2.3, 1
  %inc10.4 = select i1 %cmp11.2.3, i32 1, i32 %inc10.2.3.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.4)
  %cmp11.4 = icmp eq i32 %inc10.4, 27
  %spec.select.v.4 = select i1 %cmp11.4, i32 6, i32 1
  %spec.select.4 = add i32 %spec.select.v.4, %spec.select.2.3
  %arrayidx8.1.4 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 4, i32 1
  %39 = ptrtoint ptr %arrayidx8.1.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.1.4, align 1
  %arrayidx9.1.4 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.4
  %41 = ptrtoint ptr %arrayidx9.1.4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx9.1.4, align 1
  %inc10.4.op = add i32 %inc10.4, 1
  %inc10.1.4 = select i1 %cmp11.4, i32 1, i32 %inc10.4.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.1.4)
  %cmp11.1.4 = icmp eq i32 %inc10.1.4, 27
  %spec.select.v.1.4 = select i1 %cmp11.1.4, i32 6, i32 1
  %spec.select.1.4 = add i32 %spec.select.v.1.4, %spec.select.4
  %arrayidx8.2.4 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 4, i32 2
  %42 = ptrtoint ptr %arrayidx8.2.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx8.2.4, align 1
  %arrayidx9.2.4 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.1.4
  %44 = ptrtoint ptr %arrayidx9.2.4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx9.2.4, align 1
  %inc10.1.4.op = add i32 %inc10.1.4, 1
  %inc10.2.4 = select i1 %cmp11.1.4, i32 1, i32 %inc10.1.4.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.2.4)
  %cmp11.2.4 = icmp eq i32 %inc10.2.4, 27
  %spec.select.v.2.4 = select i1 %cmp11.2.4, i32 6, i32 1
  %spec.select.2.4 = add i32 %spec.select.v.2.4, %spec.select.1.4
  %arrayidx8.5 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 5, i32 0
  %45 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8.5, align 1
  %arrayidx9.5 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.2.4
  %47 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx9.5, align 1
  %inc10.2.4.op = add i32 %inc10.2.4, 1
  %inc10.5 = select i1 %cmp11.2.4, i32 1, i32 %inc10.2.4.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.5)
  %cmp11.5 = icmp eq i32 %inc10.5, 27
  %spec.select.v.5 = select i1 %cmp11.5, i32 6, i32 1
  %spec.select.5 = add i32 %spec.select.v.5, %spec.select.2.4
  %arrayidx8.1.5 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 5, i32 1
  %48 = ptrtoint ptr %arrayidx8.1.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx8.1.5, align 1
  %arrayidx9.1.5 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.5
  %50 = ptrtoint ptr %arrayidx9.1.5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx9.1.5, align 1
  %inc10.5.op = add i32 %inc10.5, 1
  %inc10.1.5 = select i1 %cmp11.5, i32 1, i32 %inc10.5.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.1.5)
  %cmp11.1.5 = icmp eq i32 %inc10.1.5, 27
  %spec.select.v.1.5 = select i1 %cmp11.1.5, i32 6, i32 1
  %spec.select.1.5 = add i32 %spec.select.v.1.5, %spec.select.5
  %arrayidx8.2.5 = getelementptr [6 x [3 x i8]], ptr %coef, i32 %k.036, i32 5, i32 2
  %51 = ptrtoint ptr %arrayidx8.2.5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx8.2.5, align 1
  %arrayidx9.2.5 = getelementptr i8, ptr %coeff_plane, i32 %spec.select.1.5
  %53 = ptrtoint ptr %arrayidx9.2.5 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx9.2.5, align 1
  %inc10.1.5.op = add i32 %inc10.1.5, 1
  %inc10.2.5 = select i1 %cmp11.1.5, i32 1, i32 %inc10.1.5.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %inc10.2.5)
  %cmp11.2.5 = icmp eq i32 %inc10.2.5, 27
  %spec.select.v.2.5 = select i1 %cmp11.2.5, i32 6, i32 1
  %spec.select.2.5 = add i32 %spec.select.v.2.5, %spec.select.1.5
  %spec.select27.2.5 = select i1 %cmp11.2.5, i32 0, i32 %inc10.2.5
  %inc17 = add nuw nsw i32 %k.036, 1
  %exitcond.not = icmp eq i32 %inc17, 6
  br i1 %exitcond.not, label %for.end18, label %for.cond1.preheader.for.cond1.preheader_crit_edge

for.cond1.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.end18:                                        ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_vp9_adapt_coef_probs(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_vp9_adapt_noncoef_probs(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @rkvdec_vp9_fmt_ops, !1, !"rkvdec_vp9_fmt_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/rkvdec/rkvdec-vp9.c", i32 1066, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/rkvdec/rkvdec-vp9.c", i32 741, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/rkvdec/rkvdec-vp9.c", i32 702, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @validate_dec_params._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @validate_dec_params._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/rkvdec/rkvdec-vp9.c", i32 716, i32 3}
!13 = !{ptr @validate_dec_params._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @validate_dec_params._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @ref_regs, !16, !"ref_regs", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/rkvdec/rkvdec-vp9.c", i32 357, i32 34}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 5460270}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{i64 2156530877}
!31 = !{i64 2156531270}
!32 = !{i64 2156531665}
!33 = !{i64 2156532508}
