; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_g2_vp9_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_g2_vp9_dec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hantro_vp9_ref_reg = type { %struct.hantro_reg, %struct.hantro_reg, %struct.hantro_reg, %struct.hantro_reg, i32, i32 }
%struct.hantro_reg = type { i32, i32, i32 }
%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.114 }
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
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.114 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_vp9_frame = type { %struct.v4l2_vp9_loop_filter, %struct.v4l2_vp9_quantization, %struct.v4l2_vp9_segmentation, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8] }
%struct.v4l2_vp9_loop_filter = type { [4 x i8], [2 x i8], i8, i8, i8, [7 x i8] }
%struct.v4l2_vp9_quantization = type { i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_vp9_segmentation = type { [8 x [4 x i16]], [8 x i8], [7 x i8], [3 x i8], i8, [5 x i8] }
%struct.hantro_decoded_buffer = type { %struct.v4l2_m2m_buffer, %union.anon.121 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%union.anon.121 = type { %struct.hantro_vp9_decoded_buffer_info }
%struct.hantro_vp9_decoded_buffer_info = type { i16, i16, i8, [3 x i8] }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.hantro_g2_all_probs = type { [10 x [10 x [8 x i8]]], [10 x [10 x [1 x i8]]], [3 x i8], [7 x i8], [3 x i8], [4 x i8], [2 x i8], [9 x i8], [10 x [8 x i8]], [10 x [1 x i8]], [6 x i8], %struct.hantro_g2_probs }
%struct.hantro_g2_probs = type { [7 x [4 x i8]], [4 x i8], [10 x [8 x i8]], [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [1 x i8]], [4 x [8 x i8]], [2 x [16 x [4 x i8]]], [10 x [1 x i8]], [4 x [2 x i8]], [5 x i8], [3 x i8], [1 x i8], %struct.hantro_g2_mv_probs, [5 x [2 x i8]], [5 x i8], [17 x i8], [4 x [2 x [2 x [6 x [6 x [4 x i8]]]]]] }
%struct.hantro_g2_mv_probs = type { [3 x i8], [2 x i8], [2 x [1 x i8]], [2 x [3 x i8]], [2 x i8], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [10 x i8]] }
%struct.symbol_counts = type { [7 x [3 x [2 x i32]]], [4 x [10 x i32]], [10 x [10 x i32]], [16 x [4 x i32]], [4 x [3 x i32]], [4 x [2 x i32]], [5 x [2 x i32]], [5 x [2 x [2 x i32]]], [5 x [2 x i32]], [2 x [4 x i32]], [2 x [3 x i32]], [2 x [2 x i32]], [3 x [2 x i32]], %struct.mv_counts, [2 x [2 x [6 x [6 x [4 x i32]]]]], [2 x [2 x [6 x [6 x [4 x i32]]]]], [2 x [2 x [6 x [6 x [4 x i32]]]]], [2 x [2 x [6 x [6 x [4 x i32]]]]], [4 x [2 x [2 x [6 x [6 x i32]]]]] }
%struct.mv_counts = type { [4 x i32], [2 x [2 x i32]], [2 x [11 x i32]], [2 x [2 x i32]], [2 x [10 x [2 x i32]]], [2 x [2 x [4 x i32]]], [2 x [4 x i32]], [2 x [2 x i32]], [2 x [2 x i32]] }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/staging/media/hantro/hantro_g2_vp9_dec.c\00", [47 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdpu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_write_relaxed._entry_ptr = internal global ptr @vdpu_write_relaxed._entry, section ".printk_index", align 4
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str.3, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@config_ref_registers.ref_regs = internal constant { [3 x %struct.hantro_vp9_ref_reg], [56 x i8] } { [3 x %struct.hantro_vp9_ref_reg] [%struct.hantro_vp9_ref_reg { %struct.hantro_reg { i32 132, i32 16, i32 65535 }, %struct.hantro_reg { i32 132, i32 0, i32 65535 }, %struct.hantro_reg { i32 144, i32 16, i32 65535 }, %struct.hantro_reg { i32 144, i32 0, i32 65535 }, i32 268, i32 404 }, %struct.hantro_vp9_ref_reg { %struct.hantro_reg { i32 136, i32 16, i32 65535 }, %struct.hantro_reg { i32 136, i32 0, i32 65535 }, %struct.hantro_reg { i32 148, i32 16, i32 65535 }, %struct.hantro_reg { i32 148, i32 0, i32 65535 }, i32 300, i32 436 }, %struct.hantro_vp9_ref_reg { %struct.hantro_reg { i32 140, i32 16, i32 65535 }, %struct.hantro_reg { i32 140, i32 0, i32 65535 }, %struct.hantro_reg { i32 152, i32 16, i32 65535 }, %struct.hantro_reg { i32 152, i32 0, i32 65535 }, i32 308, i32 444 }], [56 x i8] zeroinitializer }, align 32
@config_segment.seg_regs = internal constant { [8 x [4 x %struct.hantro_reg]], [96 x i8] } { [8 x [4 x %struct.hantro_reg]] [[4 x %struct.hantro_reg] [%struct.hantro_reg { i32 56, i32 0, i32 255 }, %struct.hantro_reg { i32 56, i32 8, i32 63 }, %struct.hantro_reg { i32 56, i32 15, i32 7 }, %struct.hantro_reg { i32 56, i32 14, i32 1 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 60, i32 0, i32 255 }, %struct.hantro_reg { i32 60, i32 8, i32 63 }, %struct.hantro_reg { i32 60, i32 15, i32 7 }, %struct.hantro_reg { i32 60, i32 14, i32 1 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 64, i32 0, i32 255 }, %struct.hantro_reg { i32 64, i32 8, i32 63 }, %struct.hantro_reg { i32 64, i32 15, i32 7 }, %struct.hantro_reg { i32 64, i32 14, i32 1 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 68, i32 0, i32 255 }, %struct.hantro_reg { i32 68, i32 8, i32 63 }, %struct.hantro_reg { i32 68, i32 15, i32 7 }, %struct.hantro_reg { i32 68, i32 14, i32 1 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 72, i32 0, i32 255 }, %struct.hantro_reg { i32 72, i32 8, i32 63 }, %struct.hantro_reg { i32 72, i32 15, i32 7 }, %struct.hantro_reg { i32 72, i32 14, i32 1 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 76, i32 0, i32 255 }, %struct.hantro_reg { i32 76, i32 8, i32 63 }, %struct.hantro_reg { i32 76, i32 15, i32 7 }, %struct.hantro_reg { i32 76, i32 14, i32 1 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 124, i32 0, i32 255 }, %struct.hantro_reg { i32 124, i32 8, i32 63 }, %struct.hantro_reg { i32 124, i32 15, i32 7 }, %struct.hantro_reg { i32 124, i32 14, i32 1 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 128, i32 0, i32 255 }, %struct.hantro_reg { i32 128, i32 8, i32 63 }, %struct.hantro_reg { i32 128, i32 15, i32 7 }, %struct.hantro_reg { i32 128, i32 14, i32 1 }]], [96 x i8] zeroinitializer }, align 32
@v4l2_vp9_kf_y_mode_prob = external dso_local local_unnamed_addr constant [10 x [10 x [9 x i8]]], align 1
@v4l2_vp9_kf_uv_mode_prob = external dso_local local_unnamed_addr constant [10 x [9 x i8]], align 1
@v4l2_vp9_kf_partition_probs = external dso_local local_unnamed_addr constant [16 x [3 x i8]], align 1
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str.3, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@switch.table.config_registers = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 256, i32 0, i32 512, i32 768, i32 1024], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 40, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 392, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 413, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"ref_regs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 207, i32 41 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"seg_regs\00", align 1
@___asan_gen_.31 = private constant [52 x i8] c"../drivers/staging/media/hantro/hantro_g2_vp9_dec.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 412, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 398, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"switch.table.config_registers\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @config_ref_registers.ref_regs, ptr @config_segment.seg_regs, ptr @.str.5, ptr @switch.table.config_registers], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_ref_registers.ref_regs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_segment.seg_regs to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.config_registers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_g2_vp9_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  tail call void @hantro_g2_check_idle(ptr noundef %1) #5
  tail call void @hantro_start_prepare_run(ptr noundef %ctx) #5
  %ctrl_handler.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 9
  %call.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler.i, i32 noundef 10750508) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end23.i, !prof !29

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end23.i:                                       ; preds = %entry
  %p_cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i, i32 0, i32 26
  %2 = ptrtoint ptr %p_cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_cur.i, align 4
  %call25.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler.i, i32 noundef 10750509) #5
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.end23.i.if.then_crit_edge, label %if.end, !prof !29

if.end23.i.if.then_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.end23.i.if.then_crit_edge, %entry.if.then_crit_edge
  %.sink = phi i32 [ 40, %entry.if.then_crit_edge ], [ 45, %if.end23.i.if.then_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #5
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #5
  br label %cleanup

if.end:                                           ; preds = %if.end23.i
  %p_cur62.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call25.i, i32 0, i32 26
  %4 = ptrtoint ptr %p_cur62.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_cur62.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %cur.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 6
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %cur.i, align 8
  %9 = and i8 %7, 7
  %bf.value.i = zext i8 %9 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 8
  %bf.clear.i = and i16 %bf.load.i, -1793
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %cur.i, align 8
  %frame_context.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 5
  %call63.i = tail call zeroext i8 @v4l2_vp9_reset_frame_ctx(ptr noundef %3, ptr noundef %frame_context.i) #5
  %conv64.i = zext i8 %call63.i to i32
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load66.i = load i16, ptr %cur.i, align 8
  %11 = and i8 %call63.i, 3
  %bf.value67.i = zext i8 %11 to i16
  %bf.shl68.i = shl nuw nsw i16 %bf.value67.i, 13
  %bf.clear69.i = and i16 %bf.load66.i, -24577
  %bf.set70.i = or i16 %bf.shl68.i, %bf.clear69.i
  store i16 %bf.set70.i, ptr %cur.i, align 8
  %probability_tables.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 5, i32 %conv64.i
  %12 = call ptr @memcpy(ptr %probability_tables.i, ptr %arrayidx.i, i32 2039)
  tail call void @v4l2_vp9_fw_update_probs(ptr noundef %probability_tables.i, ptr noundef %5, ptr noundef %3) #5
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i) #5
  %15 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 7
  %call.i.i16 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #5
  tail call fastcc void @config_registers(ptr noundef %ctx, ptr noundef %3, ptr noundef %call.i.i, ptr noundef %call.i.i16)
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #5
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %19 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %if.end.vdpu_write.exit_crit_edge, label %do.end.i19

if.end.vdpu_write.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_write.exit

do.end.i19:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 1, i32 noundef 1) #8
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i19, %if.end.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %18, i32 0, i32 11
  %20 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !31
  br label %cleanup

cleanup:                                          ; preds = %vdpu_write.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %vdpu_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_g2_check_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_end_prepare_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_registers(ptr noundef %ctx, ptr noundef readonly %dec_params, ptr noundef %vb2_src, ptr noundef %vb2_dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %last1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 7
  %1 = ptrtoint ptr %last1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %last1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %timestamp = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timestamp, align 8
  %m2m_ctx1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %m2m_ctx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx1.i, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i = tail call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i, i64 noundef %3, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %num_buffers.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call.i)
  %cmp.i.i = icmp ugt i32 %7, %call.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i, i32 0, i32 20, i32 %call.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %last.0 = phi ptr [ %vb2_dst, %entry.if.end_crit_edge ], [ %vb2_dst, %if.then.if.end_crit_edge ], [ %9, %if.then.i.i ], [ null, %if.end.i.if.end_crit_edge ]
  %frame_width_minus_1.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 6
  %10 = ptrtoint ptr %frame_width_minus_1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frame_width_minus_1.i, align 8
  %add.i = add i16 %11, 1
  %12 = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %vb2_dst, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %add.i, ptr %12, align 8
  %frame_height_minus_1.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 7
  %14 = ptrtoint ptr %frame_height_minus_1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frame_height_minus_1.i, align 2
  %add3.i = add i16 %15, 1
  %height.i = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %vb2_dst, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %add3.i, ptr %height.i, align 2
  %bit_depth.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 17
  %17 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bit_depth.i, align 4
  %bit_depth6.i = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %vb2_dst, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %bit_depth6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %bit_depth6.i, align 4
  %bf.shl.i = shl i8 %18, 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %bit_depth6.i, align 4
  %cur.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 6
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i222 = load i16, ptr %cur.i, align 8
  %bf.set.i223 = or i16 %bf.load.i222, -32768
  store i16 %bf.set.i223, ptr %cur.i, align 8
  %reference_mode.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 21
  %21 = ptrtoint ptr %reference_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reference_mode.i, align 8
  %23 = and i8 %22, 3
  %bf.value.i = zext i8 %23 to i16
  %bf.shl.i224 = shl nuw nsw i16 %bf.value.i, 11
  %bf.clear3.i = and i16 %bf.set.i223, -6145
  %bf.set4.i = or i16 %bf.shl.i224, %bf.clear3.i
  store i16 %bf.set4.i, ptr %cur.i, align 8
  %interpolation_filter.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 18
  %24 = ptrtoint ptr %interpolation_filter.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %interpolation_filter.i, align 1
  %26 = shl i8 %25, 5
  %bf.shl9.i = zext i8 %26 to i16
  %bf.clear10.i = and i16 %bf.set4.i, -225
  %bf.set11.i = or i16 %bf.clear10.i, %bf.shl9.i
  store i16 %bf.set11.i, ptr %cur.i, align 8
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 3
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 8
  %flags14.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flags14.i, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2_dst, i32 0, i32 5
  %30 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %timestamp.i, align 8
  %timestamp16.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %timestamp16.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %timestamp16.i, align 8
  %33 = load i32, ptr %flags.i, align 8
  %and = and i32 %33, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not1055 = icmp eq i32 %and, 0
  %34 = and i32 %33, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %land.lhs.true11, label %if.end.if.else18_crit_edge

if.end.if.else18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18

land.lhs.true11:                                  ; preds = %if.end
  %36 = ptrtoint ptr %last1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load13 = load i16, ptr %last1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load13)
  %tobool16.not = icmp sgt i16 %bf.load13, -1
  br i1 %tobool16.not, label %land.lhs.true11.if.else18_crit_edge, label %land.lhs.true11.if.end19_crit_edge

land.lhs.true11.if.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

land.lhs.true11.if.else18_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true11.if.else18_crit_edge, %if.end.if.else18_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %land.lhs.true11.if.end19_crit_edge
  %mv_ref.0 = phi ptr [ %vb2_dst, %if.else18 ], [ %last.0, %land.lhs.true11.if.end19_crit_edge ]
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %12, align 8
  %39 = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %last.0, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %41)
  %cmp.not = icmp eq i16 %38, %41
  br i1 %cmp.not, label %lor.rhs, label %if.end19.lor.end_crit_edge

if.end19.lor.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %height.i, align 2
  %height24 = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %last.0, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %height24 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %height24, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp26 = icmp ne i16 %43, %45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end19.lor.end_crit_edge
  %46 = phi i1 [ true, %if.end19.lor.end_crit_edge ], [ %cmp26, %lor.rhs ]
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !32
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %53 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.end.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i

lor.end.vdpu_read_mask.exit.i_crit_edge:          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i

do.end.i.i.i:                                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %52) #8
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i, %lor.end.vdpu_read_mask.exit.i_crit_edge
  %and.i.i = and i32 %52, 134217727
  %or.i.i = or i32 %and.i.i, 1744830464
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %54 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge, label %do.end.i.i

vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit

do.end.i.i:                                       ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i) #8
  br label %hantro_reg_write.exit

hantro_reg_write.exit:                            ; preds = %do.end.i.i, %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %56 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %55) #5, !srcloc !31
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %variant, align 8
  %legacy_regs = getelementptr inbounds %struct.hantro_variant, ptr %61, i32 0, i32 19
  %62 = ptrtoint ptr %legacy_regs to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load31 = load i8, ptr %legacy_regs, align 4
  %63 = and i8 %bf.load31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool34.not = icmp eq i8 %63, 0
  %dec_base.i.i.i225 = getelementptr inbounds %struct.hantro_dev, ptr %59, i32 0, i32 11
  %64 = ptrtoint ptr %dec_base.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dec_base.i.i.i225, align 8
  %add.ptr.i.i.i226 = getelementptr i8, ptr %65, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i226) #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %68 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i227 = and i32 %68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i227)
  %tobool.not.i.i.i228 = icmp eq i32 %and.i.i.i227, 0
  br i1 %tobool34.not, label %if.then35, label %if.else56

if.then35:                                        ; preds = %hantro_reg_write.exit
  br i1 %tobool.not.i.i.i228, label %if.then35.vdpu_read_mask.exit.i242_crit_edge, label %do.end.i.i.i231

if.then35.vdpu_read_mask.exit.i242_crit_edge:     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i242

do.end.i.i.i231:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %67) #8
  br label %vdpu_read_mask.exit.i242

vdpu_read_mask.exit.i242:                         ; preds = %do.end.i.i.i231, %if.then35.vdpu_read_mask.exit.i242_crit_edge
  %or.i.i239 = or i32 %67, -268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %69 = load i32, ptr @hantro_debug, align 4
  %and.i3.i240 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i240)
  %tobool.not.i.i241 = icmp eq i32 %and.i3.i240, 0
  br i1 %tobool.not.i.i241, label %vdpu_read_mask.exit.i242.hantro_reg_write.exit247_crit_edge, label %do.end.i.i245

vdpu_read_mask.exit.i242.hantro_reg_write.exit247_crit_edge: ; preds = %vdpu_read_mask.exit.i242
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit247

do.end.i.i245:                                    ; preds = %vdpu_read_mask.exit.i242
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i239) #8
  br label %hantro_reg_write.exit247

hantro_reg_write.exit247:                         ; preds = %do.end.i.i245, %vdpu_read_mask.exit.i242.hantro_reg_write.exit247_crit_edge
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i.i239) #5
  %71 = ptrtoint ptr %dec_base.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dec_base.i.i.i225, align 8
  %add.ptr.i.i246 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i246, i32 %70) #5, !srcloc !31
  %73 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i248 = getelementptr inbounds %struct.hantro_dev, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %dec_base.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dec_base.i.i.i248, align 8
  %add.ptr.i.i.i249 = getelementptr i8, ptr %76, i32 8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i249) #5, !srcloc !32
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %79 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i250 = and i32 %79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i250)
  %tobool.not.i.i.i251 = icmp eq i32 %and.i.i.i250, 0
  br i1 %tobool.not.i.i.i251, label %hantro_reg_write.exit247.vdpu_read_mask.exit.i265_crit_edge, label %do.end.i.i.i254

hantro_reg_write.exit247.vdpu_read_mask.exit.i265_crit_edge: ; preds = %hantro_reg_write.exit247
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i265

do.end.i.i.i254:                                  ; preds = %hantro_reg_write.exit247
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %78) #8
  br label %vdpu_read_mask.exit.i265

vdpu_read_mask.exit.i265:                         ; preds = %do.end.i.i.i254, %hantro_reg_write.exit247.vdpu_read_mask.exit.i265_crit_edge
  %or.i.i262 = or i32 %78, 15728640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %80 = load i32, ptr @hantro_debug, align 4
  %and.i3.i263 = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i263)
  %tobool.not.i.i264 = icmp eq i32 %and.i3.i263, 0
  br i1 %tobool.not.i.i264, label %vdpu_read_mask.exit.i265.hantro_reg_write.exit270_crit_edge, label %do.end.i.i268

vdpu_read_mask.exit.i265.hantro_reg_write.exit270_crit_edge: ; preds = %vdpu_read_mask.exit.i265
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit270

do.end.i.i268:                                    ; preds = %vdpu_read_mask.exit.i265
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i262) #8
  br label %hantro_reg_write.exit270

hantro_reg_write.exit270:                         ; preds = %do.end.i.i268, %vdpu_read_mask.exit.i265.hantro_reg_write.exit270_crit_edge
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i.i262) #5
  %82 = ptrtoint ptr %dec_base.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dec_base.i.i.i248, align 8
  %add.ptr.i.i269 = getelementptr i8, ptr %83, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i269, i32 %81) #5, !srcloc !31
  %84 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i271 = getelementptr inbounds %struct.hantro_dev, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %dec_base.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dec_base.i.i.i271, align 8
  %add.ptr.i.i.i272 = getelementptr i8, ptr %87, i32 12
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i272) #5, !srcloc !32
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %90 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i273 = and i32 %90, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i273)
  %tobool.not.i.i.i274 = icmp eq i32 %and.i.i.i273, 0
  br i1 %tobool.not.i.i.i274, label %hantro_reg_write.exit270.vdpu_read_mask.exit.i288_crit_edge, label %do.end.i.i.i277

hantro_reg_write.exit270.vdpu_read_mask.exit.i288_crit_edge: ; preds = %hantro_reg_write.exit270
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i288

do.end.i.i.i277:                                  ; preds = %hantro_reg_write.exit270
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %89) #8
  br label %vdpu_read_mask.exit.i288

vdpu_read_mask.exit.i288:                         ; preds = %do.end.i.i.i277, %hantro_reg_write.exit270.vdpu_read_mask.exit.i288_crit_edge
  %or.i.i285 = or i32 %89, 15728640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %91 = load i32, ptr @hantro_debug, align 4
  %and.i3.i286 = and i32 %91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i286)
  %tobool.not.i.i287 = icmp eq i32 %and.i3.i286, 0
  br i1 %tobool.not.i.i287, label %vdpu_read_mask.exit.i288.hantro_reg_write.exit293_crit_edge, label %do.end.i.i291

vdpu_read_mask.exit.i288.hantro_reg_write.exit293_crit_edge: ; preds = %vdpu_read_mask.exit.i288
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit293

do.end.i.i291:                                    ; preds = %vdpu_read_mask.exit.i288
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i285) #8
  br label %hantro_reg_write.exit293

hantro_reg_write.exit293:                         ; preds = %do.end.i.i291, %vdpu_read_mask.exit.i288.hantro_reg_write.exit293_crit_edge
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i285) #5
  %93 = ptrtoint ptr %dec_base.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dec_base.i.i.i271, align 8
  %add.ptr.i.i292 = getelementptr i8, ptr %94, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i292, i32 %92) #5, !srcloc !31
  %95 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i294 = getelementptr inbounds %struct.hantro_dev, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %dec_base.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dec_base.i.i.i294, align 8
  %add.ptr.i.i.i295 = getelementptr i8, ptr %98, i32 12
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i295) #5, !srcloc !32
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %101 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i296 = and i32 %101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i296)
  %tobool.not.i.i.i297 = icmp eq i32 %and.i.i.i296, 0
  br i1 %tobool.not.i.i.i297, label %hantro_reg_write.exit293.vdpu_read_mask.exit.i311_crit_edge, label %do.end.i.i.i300

hantro_reg_write.exit293.vdpu_read_mask.exit.i311_crit_edge: ; preds = %hantro_reg_write.exit293
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i311

do.end.i.i.i300:                                  ; preds = %hantro_reg_write.exit293
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %100) #8
  br label %vdpu_read_mask.exit.i311

vdpu_read_mask.exit.i311:                         ; preds = %do.end.i.i.i300, %hantro_reg_write.exit293.vdpu_read_mask.exit.i311_crit_edge
  %or.i.i308 = or i32 %100, 131072
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %102 = load i32, ptr @hantro_debug, align 4
  %and.i3.i309 = and i32 %102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i309)
  %tobool.not.i.i310 = icmp eq i32 %and.i3.i309, 0
  br i1 %tobool.not.i.i310, label %vdpu_read_mask.exit.i311.hantro_reg_write.exit316_crit_edge, label %do.end.i.i314

vdpu_read_mask.exit.i311.hantro_reg_write.exit316_crit_edge: ; preds = %vdpu_read_mask.exit.i311
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit316

do.end.i.i314:                                    ; preds = %vdpu_read_mask.exit.i311
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i308) #8
  br label %hantro_reg_write.exit316

hantro_reg_write.exit316:                         ; preds = %do.end.i.i314, %vdpu_read_mask.exit.i311.hantro_reg_write.exit316_crit_edge
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i.i308) #5
  %104 = ptrtoint ptr %dec_base.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dec_base.i.i.i294, align 8
  %add.ptr.i.i315 = getelementptr i8, ptr %105, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i315, i32 %103) #5, !srcloc !31
  br label %if.end97

if.else56:                                        ; preds = %hantro_reg_write.exit
  br i1 %tobool.not.i.i.i228, label %if.else56.vdpu_read_mask.exit.i334_crit_edge, label %do.end.i.i.i323

if.else56.vdpu_read_mask.exit.i334_crit_edge:     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i334

do.end.i.i.i323:                                  ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i322 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %67) #8
  br label %vdpu_read_mask.exit.i334

vdpu_read_mask.exit.i334:                         ; preds = %do.end.i.i.i323, %if.else56.vdpu_read_mask.exit.i334_crit_edge
  %or.i.i331 = or i32 %67, -134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %106 = load i32, ptr @hantro_debug, align 4
  %and.i3.i332 = and i32 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i332)
  %tobool.not.i.i333 = icmp eq i32 %and.i3.i332, 0
  br i1 %tobool.not.i.i333, label %vdpu_read_mask.exit.i334.hantro_reg_write.exit339_crit_edge, label %do.end.i.i337

vdpu_read_mask.exit.i334.hantro_reg_write.exit339_crit_edge: ; preds = %vdpu_read_mask.exit.i334
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit339

do.end.i.i337:                                    ; preds = %vdpu_read_mask.exit.i334
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i331) #8
  br label %hantro_reg_write.exit339

hantro_reg_write.exit339:                         ; preds = %do.end.i.i337, %vdpu_read_mask.exit.i334.hantro_reg_write.exit339_crit_edge
  %107 = tail call i32 @llvm.bswap.i32(i32 %or.i.i331) #5
  %108 = ptrtoint ptr %dec_base.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dec_base.i.i.i225, align 8
  %add.ptr.i.i338 = getelementptr i8, ptr %109, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i338, i32 %107) #5, !srcloc !31
  %110 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i340 = getelementptr inbounds %struct.hantro_dev, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %dec_base.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dec_base.i.i.i340, align 8
  %add.ptr.i.i.i341 = getelementptr i8, ptr %113, i32 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i341) #5, !srcloc !32
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %116 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i342 = and i32 %116, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i342)
  %tobool.not.i.i.i343 = icmp eq i32 %and.i.i.i342, 0
  br i1 %tobool.not.i.i.i343, label %hantro_reg_write.exit339.vdpu_read_mask.exit.i357_crit_edge, label %do.end.i.i.i346

hantro_reg_write.exit339.vdpu_read_mask.exit.i357_crit_edge: ; preds = %hantro_reg_write.exit339
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i357

do.end.i.i.i346:                                  ; preds = %hantro_reg_write.exit339
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %115) #8
  br label %vdpu_read_mask.exit.i357

vdpu_read_mask.exit.i357:                         ; preds = %do.end.i.i.i346, %hantro_reg_write.exit339.vdpu_read_mask.exit.i357_crit_edge
  %and.i.i351 = and i32 %115, -130023425
  %or.i.i354 = or i32 %and.i.i351, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %117 = load i32, ptr @hantro_debug, align 4
  %and.i3.i355 = and i32 %117, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i355)
  %tobool.not.i.i356 = icmp eq i32 %and.i3.i355, 0
  br i1 %tobool.not.i.i356, label %vdpu_read_mask.exit.i357.hantro_reg_write.exit362_crit_edge, label %do.end.i.i360

vdpu_read_mask.exit.i357.hantro_reg_write.exit362_crit_edge: ; preds = %vdpu_read_mask.exit.i357
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit362

do.end.i.i360:                                    ; preds = %vdpu_read_mask.exit.i357
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i354) #8
  br label %hantro_reg_write.exit362

hantro_reg_write.exit362:                         ; preds = %do.end.i.i360, %vdpu_read_mask.exit.i357.hantro_reg_write.exit362_crit_edge
  %118 = tail call i32 @llvm.bswap.i32(i32 %or.i.i354) #5
  %119 = ptrtoint ptr %dec_base.i.i.i340 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dec_base.i.i.i340, align 8
  %add.ptr.i.i361 = getelementptr i8, ptr %120, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i361, i32 %118) #5, !srcloc !31
  %121 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i363 = getelementptr inbounds %struct.hantro_dev, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %dec_base.i.i.i363 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dec_base.i.i.i363, align 8
  %add.ptr.i.i.i364 = getelementptr i8, ptr %124, i32 8
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i364) #5, !srcloc !32
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %127 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i365 = and i32 %127, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i365)
  %tobool.not.i.i.i366 = icmp eq i32 %and.i.i.i365, 0
  br i1 %tobool.not.i.i.i366, label %hantro_reg_write.exit362.vdpu_read_mask.exit.i380_crit_edge, label %do.end.i.i.i369

hantro_reg_write.exit362.vdpu_read_mask.exit.i380_crit_edge: ; preds = %hantro_reg_write.exit362
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i380

do.end.i.i.i369:                                  ; preds = %hantro_reg_write.exit362
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %126) #8
  br label %vdpu_read_mask.exit.i380

vdpu_read_mask.exit.i380:                         ; preds = %do.end.i.i.i369, %hantro_reg_write.exit362.vdpu_read_mask.exit.i380_crit_edge
  %and.i.i374 = and i32 %126, -4063233
  %or.i.i377 = or i32 %and.i.i374, 2097152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %128 = load i32, ptr @hantro_debug, align 4
  %and.i3.i378 = and i32 %128, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i378)
  %tobool.not.i.i379 = icmp eq i32 %and.i3.i378, 0
  br i1 %tobool.not.i.i379, label %vdpu_read_mask.exit.i380.hantro_reg_write.exit385_crit_edge, label %do.end.i.i383

vdpu_read_mask.exit.i380.hantro_reg_write.exit385_crit_edge: ; preds = %vdpu_read_mask.exit.i380
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit385

do.end.i.i383:                                    ; preds = %vdpu_read_mask.exit.i380
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i377) #8
  br label %hantro_reg_write.exit385

hantro_reg_write.exit385:                         ; preds = %do.end.i.i383, %vdpu_read_mask.exit.i380.hantro_reg_write.exit385_crit_edge
  %129 = tail call i32 @llvm.bswap.i32(i32 %or.i.i377) #5
  %130 = ptrtoint ptr %dec_base.i.i.i363 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dec_base.i.i.i363, align 8
  %add.ptr.i.i384 = getelementptr i8, ptr %131, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i384, i32 %129) #5, !srcloc !31
  %132 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i386 = getelementptr inbounds %struct.hantro_dev, ptr %133, i32 0, i32 11
  %134 = ptrtoint ptr %dec_base.i.i.i386 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dec_base.i.i.i386, align 8
  %add.ptr.i.i.i387 = getelementptr i8, ptr %135, i32 8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i387) #5, !srcloc !32
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %138 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i388 = and i32 %138, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i388)
  %tobool.not.i.i.i389 = icmp eq i32 %and.i.i.i388, 0
  br i1 %tobool.not.i.i.i389, label %hantro_reg_write.exit385.vdpu_read_mask.exit.i403_crit_edge, label %do.end.i.i.i392

hantro_reg_write.exit385.vdpu_read_mask.exit.i403_crit_edge: ; preds = %hantro_reg_write.exit385
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i403

do.end.i.i.i392:                                  ; preds = %hantro_reg_write.exit385
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i391 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %137) #8
  br label %vdpu_read_mask.exit.i403

vdpu_read_mask.exit.i403:                         ; preds = %do.end.i.i.i392, %hantro_reg_write.exit385.vdpu_read_mask.exit.i403_crit_edge
  %and.i.i397 = and i32 %137, -126977
  %or.i.i400 = or i32 %and.i.i397, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %139 = load i32, ptr @hantro_debug, align 4
  %and.i3.i401 = and i32 %139, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i401)
  %tobool.not.i.i402 = icmp eq i32 %and.i3.i401, 0
  br i1 %tobool.not.i.i402, label %vdpu_read_mask.exit.i403.hantro_reg_write.exit408_crit_edge, label %do.end.i.i406

vdpu_read_mask.exit.i403.hantro_reg_write.exit408_crit_edge: ; preds = %vdpu_read_mask.exit.i403
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit408

do.end.i.i406:                                    ; preds = %vdpu_read_mask.exit.i403
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i405 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i400) #8
  br label %hantro_reg_write.exit408

hantro_reg_write.exit408:                         ; preds = %do.end.i.i406, %vdpu_read_mask.exit.i403.hantro_reg_write.exit408_crit_edge
  %140 = tail call i32 @llvm.bswap.i32(i32 %or.i.i400) #5
  %141 = ptrtoint ptr %dec_base.i.i.i386 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dec_base.i.i.i386, align 8
  %add.ptr.i.i407 = getelementptr i8, ptr %142, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i407, i32 %140) #5, !srcloc !31
  %143 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i409 = getelementptr inbounds %struct.hantro_dev, ptr %144, i32 0, i32 11
  %145 = ptrtoint ptr %dec_base.i.i.i409 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dec_base.i.i.i409, align 8
  %add.ptr.i.i.i410 = getelementptr i8, ptr %146, i32 8
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i410) #5, !srcloc !32
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %149 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i411 = and i32 %149, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i411)
  %tobool.not.i.i.i412 = icmp eq i32 %and.i.i.i411, 0
  br i1 %tobool.not.i.i.i412, label %hantro_reg_write.exit408.vdpu_read_mask.exit.i426_crit_edge, label %do.end.i.i.i415

hantro_reg_write.exit408.vdpu_read_mask.exit.i426_crit_edge: ; preds = %hantro_reg_write.exit408
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i426

do.end.i.i.i415:                                  ; preds = %hantro_reg_write.exit408
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i414 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %148) #8
  br label %vdpu_read_mask.exit.i426

vdpu_read_mask.exit.i426:                         ; preds = %do.end.i.i.i415, %hantro_reg_write.exit408.vdpu_read_mask.exit.i426_crit_edge
  %and.i.i420 = and i32 %148, -3969
  %or.i.i423 = or i32 %and.i.i420, 2048
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %150 = load i32, ptr @hantro_debug, align 4
  %and.i3.i424 = and i32 %150, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i424)
  %tobool.not.i.i425 = icmp eq i32 %and.i3.i424, 0
  br i1 %tobool.not.i.i425, label %vdpu_read_mask.exit.i426.hantro_reg_write.exit431_crit_edge, label %do.end.i.i429

vdpu_read_mask.exit.i426.hantro_reg_write.exit431_crit_edge: ; preds = %vdpu_read_mask.exit.i426
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit431

do.end.i.i429:                                    ; preds = %vdpu_read_mask.exit.i426
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i428 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i423) #8
  br label %hantro_reg_write.exit431

hantro_reg_write.exit431:                         ; preds = %do.end.i.i429, %vdpu_read_mask.exit.i426.hantro_reg_write.exit431_crit_edge
  %151 = tail call i32 @llvm.bswap.i32(i32 %or.i.i423) #5
  %152 = ptrtoint ptr %dec_base.i.i.i409 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dec_base.i.i.i409, align 8
  %add.ptr.i.i430 = getelementptr i8, ptr %153, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i430, i32 %151) #5, !srcloc !31
  %154 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i432 = getelementptr inbounds %struct.hantro_dev, ptr %155, i32 0, i32 11
  %156 = ptrtoint ptr %dec_base.i.i.i432 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dec_base.i.i.i432, align 8
  %add.ptr.i.i.i433 = getelementptr i8, ptr %157, i32 8
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i433) #5, !srcloc !32
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %160 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i434 = and i32 %160, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i434)
  %tobool.not.i.i.i435 = icmp eq i32 %and.i.i.i434, 0
  br i1 %tobool.not.i.i.i435, label %hantro_reg_write.exit431.vdpu_read_mask.exit.i449_crit_edge, label %do.end.i.i.i438

hantro_reg_write.exit431.vdpu_read_mask.exit.i449_crit_edge: ; preds = %hantro_reg_write.exit431
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i449

do.end.i.i.i438:                                  ; preds = %hantro_reg_write.exit431
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 2, i32 noundef %159) #8
  br label %vdpu_read_mask.exit.i449

vdpu_read_mask.exit.i449:                         ; preds = %do.end.i.i.i438, %hantro_reg_write.exit431.vdpu_read_mask.exit.i449_crit_edge
  %and.i.i443 = and i32 %159, -125
  %or.i.i446 = or i32 %and.i.i443, 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %161 = load i32, ptr @hantro_debug, align 4
  %and.i3.i447 = and i32 %161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i447)
  %tobool.not.i.i448 = icmp eq i32 %and.i3.i447, 0
  br i1 %tobool.not.i.i448, label %vdpu_read_mask.exit.i449.hantro_reg_write.exit454_crit_edge, label %do.end.i.i452

vdpu_read_mask.exit.i449.hantro_reg_write.exit454_crit_edge: ; preds = %vdpu_read_mask.exit.i449
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit454

do.end.i.i452:                                    ; preds = %vdpu_read_mask.exit.i449
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i451 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef %or.i.i446) #8
  br label %hantro_reg_write.exit454

hantro_reg_write.exit454:                         ; preds = %do.end.i.i452, %vdpu_read_mask.exit.i449.hantro_reg_write.exit454_crit_edge
  %162 = tail call i32 @llvm.bswap.i32(i32 %or.i.i446) #5
  %163 = ptrtoint ptr %dec_base.i.i.i432 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dec_base.i.i.i432, align 8
  %add.ptr.i.i453 = getelementptr i8, ptr %164, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i453, i32 %162) #5, !srcloc !31
  %165 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i455 = getelementptr inbounds %struct.hantro_dev, ptr %166, i32 0, i32 11
  %167 = ptrtoint ptr %dec_base.i.i.i455 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dec_base.i.i.i455, align 8
  %add.ptr.i.i.i456 = getelementptr i8, ptr %168, i32 12
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i456) #5, !srcloc !32
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %171 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i457 = and i32 %171, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i457)
  %tobool.not.i.i.i458 = icmp eq i32 %and.i.i.i457, 0
  br i1 %tobool.not.i.i.i458, label %hantro_reg_write.exit454.vdpu_read_mask.exit.i472_crit_edge, label %do.end.i.i.i461

hantro_reg_write.exit454.vdpu_read_mask.exit.i472_crit_edge: ; preds = %hantro_reg_write.exit454
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i472

do.end.i.i.i461:                                  ; preds = %hantro_reg_write.exit454
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i460 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %170) #8
  br label %vdpu_read_mask.exit.i472

vdpu_read_mask.exit.i472:                         ; preds = %do.end.i.i.i461, %hantro_reg_write.exit454.vdpu_read_mask.exit.i472_crit_edge
  %and.i.i466 = and i32 %170, -3969
  %or.i.i469 = or i32 %and.i.i466, 2048
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %172 = load i32, ptr @hantro_debug, align 4
  %and.i3.i470 = and i32 %172, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i470)
  %tobool.not.i.i471 = icmp eq i32 %and.i3.i470, 0
  br i1 %tobool.not.i.i471, label %vdpu_read_mask.exit.i472.hantro_reg_write.exit477_crit_edge, label %do.end.i.i475

vdpu_read_mask.exit.i472.hantro_reg_write.exit477_crit_edge: ; preds = %vdpu_read_mask.exit.i472
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit477

do.end.i.i475:                                    ; preds = %vdpu_read_mask.exit.i472
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i474 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i469) #8
  br label %hantro_reg_write.exit477

hantro_reg_write.exit477:                         ; preds = %do.end.i.i475, %vdpu_read_mask.exit.i472.hantro_reg_write.exit477_crit_edge
  %173 = tail call i32 @llvm.bswap.i32(i32 %or.i.i469) #5
  %174 = ptrtoint ptr %dec_base.i.i.i455 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dec_base.i.i.i455, align 8
  %add.ptr.i.i476 = getelementptr i8, ptr %175, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i476, i32 %173) #5, !srcloc !31
  %176 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i478 = getelementptr inbounds %struct.hantro_dev, ptr %177, i32 0, i32 11
  %178 = ptrtoint ptr %dec_base.i.i.i478 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dec_base.i.i.i478, align 8
  %add.ptr.i.i.i479 = getelementptr i8, ptr %179, i32 12
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i479) #5, !srcloc !32
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %182 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i480 = and i32 %182, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i480)
  %tobool.not.i.i.i481 = icmp eq i32 %and.i.i.i480, 0
  br i1 %tobool.not.i.i.i481, label %hantro_reg_write.exit477.vdpu_read_mask.exit.i495_crit_edge, label %do.end.i.i.i484

hantro_reg_write.exit477.vdpu_read_mask.exit.i495_crit_edge: ; preds = %hantro_reg_write.exit477
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i495

do.end.i.i.i484:                                  ; preds = %hantro_reg_write.exit477
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i483 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %181) #8
  br label %vdpu_read_mask.exit.i495

vdpu_read_mask.exit.i495:                         ; preds = %do.end.i.i.i484, %hantro_reg_write.exit477.vdpu_read_mask.exit.i495_crit_edge
  %and.i.i489 = and i32 %181, -125
  %or.i.i492 = or i32 %and.i.i489, 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %183 = load i32, ptr @hantro_debug, align 4
  %and.i3.i493 = and i32 %183, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i493)
  %tobool.not.i.i494 = icmp eq i32 %and.i3.i493, 0
  br i1 %tobool.not.i.i494, label %vdpu_read_mask.exit.i495.hantro_reg_write.exit500_crit_edge, label %do.end.i.i498

vdpu_read_mask.exit.i495.hantro_reg_write.exit500_crit_edge: ; preds = %vdpu_read_mask.exit.i495
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit500

do.end.i.i498:                                    ; preds = %vdpu_read_mask.exit.i495
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i497 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i492) #8
  br label %hantro_reg_write.exit500

hantro_reg_write.exit500:                         ; preds = %do.end.i.i498, %vdpu_read_mask.exit.i495.hantro_reg_write.exit500_crit_edge
  %184 = tail call i32 @llvm.bswap.i32(i32 %or.i.i492) #5
  %185 = ptrtoint ptr %dec_base.i.i.i478 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dec_base.i.i.i478, align 8
  %add.ptr.i.i499 = getelementptr i8, ptr %186, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i499, i32 %184) #5, !srcloc !31
  br label %if.end97

if.end97:                                         ; preds = %hantro_reg_write.exit500, %hantro_reg_write.exit316
  %187 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i501 = getelementptr inbounds %struct.hantro_dev, ptr %188, i32 0, i32 11
  %189 = ptrtoint ptr %dec_base.i.i.i501 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dec_base.i.i.i501, align 8
  %add.ptr.i.i.i502 = getelementptr i8, ptr %190, i32 232
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i502) #5, !srcloc !32
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %193 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i503 = and i32 %193, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i503)
  %tobool.not.i.i.i504 = icmp eq i32 %and.i.i.i503, 0
  br i1 %tobool.not.i.i.i504, label %if.end97.vdpu_read_mask.exit.i518_crit_edge, label %do.end.i.i.i507

if.end97.vdpu_read_mask.exit.i518_crit_edge:      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i518

do.end.i.i.i507:                                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i506 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 58, i32 noundef %192) #8
  br label %vdpu_read_mask.exit.i518

vdpu_read_mask.exit.i518:                         ; preds = %do.end.i.i.i507, %if.end97.vdpu_read_mask.exit.i518_crit_edge
  %and.i.i512 = and i32 %192, -1793
  %or.i.i515 = or i32 %and.i.i512, 512
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %194 = load i32, ptr @hantro_debug, align 4
  %and.i3.i516 = and i32 %194, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i516)
  %tobool.not.i.i517 = icmp eq i32 %and.i3.i516, 0
  br i1 %tobool.not.i.i517, label %vdpu_read_mask.exit.i518.hantro_reg_write.exit523_crit_edge, label %do.end.i.i521

vdpu_read_mask.exit.i518.hantro_reg_write.exit523_crit_edge: ; preds = %vdpu_read_mask.exit.i518
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit523

do.end.i.i521:                                    ; preds = %vdpu_read_mask.exit.i518
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i520 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 58, i32 noundef %or.i.i515) #8
  br label %hantro_reg_write.exit523

hantro_reg_write.exit523:                         ; preds = %do.end.i.i521, %vdpu_read_mask.exit.i518.hantro_reg_write.exit523_crit_edge
  %195 = tail call i32 @llvm.bswap.i32(i32 %or.i.i515) #5
  %196 = ptrtoint ptr %dec_base.i.i.i501 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dec_base.i.i.i501, align 8
  %add.ptr.i.i522 = getelementptr i8, ptr %197, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i522, i32 %195) #5, !srcloc !31
  %198 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i524 = getelementptr inbounds %struct.hantro_dev, ptr %199, i32 0, i32 11
  %200 = ptrtoint ptr %dec_base.i.i.i524 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dec_base.i.i.i524, align 8
  %add.ptr.i.i.i525 = getelementptr i8, ptr %201, i32 232
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i525) #5, !srcloc !32
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %204 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i526 = and i32 %204, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i526)
  %tobool.not.i.i.i527 = icmp eq i32 %and.i.i.i526, 0
  br i1 %tobool.not.i.i.i527, label %hantro_reg_write.exit523.vdpu_read_mask.exit.i541_crit_edge, label %do.end.i.i.i530

hantro_reg_write.exit523.vdpu_read_mask.exit.i541_crit_edge: ; preds = %hantro_reg_write.exit523
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i541

do.end.i.i.i530:                                  ; preds = %hantro_reg_write.exit523
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i529 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 58, i32 noundef %203) #8
  br label %vdpu_read_mask.exit.i541

vdpu_read_mask.exit.i541:                         ; preds = %do.end.i.i.i530, %hantro_reg_write.exit523.vdpu_read_mask.exit.i541_crit_edge
  %and.i.i535 = and i32 %203, -256
  %or.i.i538 = or i32 %and.i.i535, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %205 = load i32, ptr @hantro_debug, align 4
  %and.i3.i539 = and i32 %205, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i539)
  %tobool.not.i.i540 = icmp eq i32 %and.i3.i539, 0
  br i1 %tobool.not.i.i540, label %vdpu_read_mask.exit.i541.hantro_reg_write.exit546_crit_edge, label %do.end.i.i544

vdpu_read_mask.exit.i541.hantro_reg_write.exit546_crit_edge: ; preds = %vdpu_read_mask.exit.i541
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit546

do.end.i.i544:                                    ; preds = %vdpu_read_mask.exit.i541
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i543 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 58, i32 noundef %or.i.i538) #8
  br label %hantro_reg_write.exit546

hantro_reg_write.exit546:                         ; preds = %do.end.i.i544, %vdpu_read_mask.exit.i541.hantro_reg_write.exit546_crit_edge
  %206 = tail call i32 @llvm.bswap.i32(i32 %or.i.i538) #5
  %207 = ptrtoint ptr %dec_base.i.i.i524 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dec_base.i.i.i524, align 8
  %add.ptr.i.i545 = getelementptr i8, ptr %208, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i545, i32 %206) #5, !srcloc !31
  %209 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i547 = getelementptr inbounds %struct.hantro_dev, ptr %210, i32 0, i32 11
  %211 = ptrtoint ptr %dec_base.i.i.i547 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dec_base.i.i.i547, align 8
  %add.ptr.i.i.i548 = getelementptr i8, ptr %212, i32 220
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i548) #5, !srcloc !32
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %215 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i549 = and i32 %215, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i549)
  %tobool.not.i.i.i550 = icmp eq i32 %and.i.i.i549, 0
  br i1 %tobool.not.i.i.i550, label %hantro_reg_write.exit546.vdpu_read_mask.exit.i564_crit_edge, label %do.end.i.i.i553

hantro_reg_write.exit546.vdpu_read_mask.exit.i564_crit_edge: ; preds = %hantro_reg_write.exit546
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i564

do.end.i.i.i553:                                  ; preds = %hantro_reg_write.exit546
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i552 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 55, i32 noundef %214) #8
  br label %vdpu_read_mask.exit.i564

vdpu_read_mask.exit.i564:                         ; preds = %do.end.i.i.i553, %hantro_reg_write.exit546.vdpu_read_mask.exit.i564_crit_edge
  %and.i.i558 = and i32 %214, -65536
  %or.i.i561 = or i32 %and.i.i558, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %216 = load i32, ptr @hantro_debug, align 4
  %and.i3.i562 = and i32 %216, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i562)
  %tobool.not.i.i563 = icmp eq i32 %and.i3.i562, 0
  br i1 %tobool.not.i.i563, label %vdpu_read_mask.exit.i564.hantro_reg_write.exit569_crit_edge, label %do.end.i.i567

vdpu_read_mask.exit.i564.hantro_reg_write.exit569_crit_edge: ; preds = %vdpu_read_mask.exit.i564
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit569

do.end.i.i567:                                    ; preds = %vdpu_read_mask.exit.i564
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i566 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 55, i32 noundef %or.i.i561) #8
  br label %hantro_reg_write.exit569

hantro_reg_write.exit569:                         ; preds = %do.end.i.i567, %vdpu_read_mask.exit.i564.hantro_reg_write.exit569_crit_edge
  %217 = tail call i32 @llvm.bswap.i32(i32 %or.i.i561) #5
  %218 = ptrtoint ptr %dec_base.i.i.i547 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dec_base.i.i.i547, align 8
  %add.ptr.i.i568 = getelementptr i8, ptr %219, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i568, i32 %217) #5, !srcloc !31
  %220 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i570 = getelementptr inbounds %struct.hantro_dev, ptr %221, i32 0, i32 11
  %222 = ptrtoint ptr %dec_base.i.i.i570 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dec_base.i.i.i570, align 8
  %add.ptr.i.i.i571 = getelementptr i8, ptr %223, i32 232
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i571) #5, !srcloc !32
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %226 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i572 = and i32 %226, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i572)
  %tobool.not.i.i.i573 = icmp eq i32 %and.i.i.i572, 0
  br i1 %tobool.not.i.i.i573, label %hantro_reg_write.exit569.vdpu_read_mask.exit.i587_crit_edge, label %do.end.i.i.i576

hantro_reg_write.exit569.vdpu_read_mask.exit.i587_crit_edge: ; preds = %hantro_reg_write.exit569
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i587

do.end.i.i.i576:                                  ; preds = %hantro_reg_write.exit569
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i575 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 58, i32 noundef %225) #8
  br label %vdpu_read_mask.exit.i587

vdpu_read_mask.exit.i587:                         ; preds = %do.end.i.i.i576, %hantro_reg_write.exit569.vdpu_read_mask.exit.i587_crit_edge
  %or.i.i584 = or i32 %225, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %227 = load i32, ptr @hantro_debug, align 4
  %and.i3.i585 = and i32 %227, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i585)
  %tobool.not.i.i586 = icmp eq i32 %and.i3.i585, 0
  br i1 %tobool.not.i.i586, label %vdpu_read_mask.exit.i587.hantro_reg_write.exit592_crit_edge, label %do.end.i.i590

vdpu_read_mask.exit.i587.hantro_reg_write.exit592_crit_edge: ; preds = %vdpu_read_mask.exit.i587
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit592

do.end.i.i590:                                    ; preds = %vdpu_read_mask.exit.i587
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i589 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 58, i32 noundef %or.i.i584) #8
  br label %hantro_reg_write.exit592

hantro_reg_write.exit592:                         ; preds = %do.end.i.i590, %vdpu_read_mask.exit.i587.hantro_reg_write.exit592_crit_edge
  %228 = tail call i32 @llvm.bswap.i32(i32 %or.i.i584) #5
  %229 = ptrtoint ptr %dec_base.i.i.i570 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dec_base.i.i.i570, align 8
  %add.ptr.i.i591 = getelementptr i8, ptr %230, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i591, i32 %228) #5, !srcloc !31
  %231 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i593 = getelementptr inbounds %struct.hantro_dev, ptr %232, i32 0, i32 11
  %233 = ptrtoint ptr %dec_base.i.i.i593 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dec_base.i.i.i593, align 8
  %add.ptr.i.i.i594 = getelementptr i8, ptr %234, i32 48
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i594) #5, !srcloc !32
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %237 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i595 = and i32 %237, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i595)
  %tobool.not.i.i.i596 = icmp eq i32 %and.i.i.i595, 0
  br i1 %tobool.not.i.i.i596, label %hantro_reg_write.exit592.vdpu_read_mask.exit.i610_crit_edge, label %do.end.i.i.i599

hantro_reg_write.exit592.vdpu_read_mask.exit.i610_crit_edge: ; preds = %hantro_reg_write.exit592
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i610

do.end.i.i.i599:                                  ; preds = %hantro_reg_write.exit592
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i598 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 12, i32 noundef %236) #8
  br label %vdpu_read_mask.exit.i610

vdpu_read_mask.exit.i610:                         ; preds = %do.end.i.i.i599, %hantro_reg_write.exit592.vdpu_read_mask.exit.i610_crit_edge
  %and.i.i604 = and i32 %236, -7169
  %or.i.i607 = or i32 %and.i.i604, 6144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %238 = load i32, ptr @hantro_debug, align 4
  %and.i3.i608 = and i32 %238, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i608)
  %tobool.not.i.i609 = icmp eq i32 %and.i3.i608, 0
  br i1 %tobool.not.i.i609, label %vdpu_read_mask.exit.i610.hantro_reg_write.exit615_crit_edge, label %do.end.i.i613

vdpu_read_mask.exit.i610.hantro_reg_write.exit615_crit_edge: ; preds = %vdpu_read_mask.exit.i610
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit615

do.end.i.i613:                                    ; preds = %vdpu_read_mask.exit.i610
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i612 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i607) #8
  br label %hantro_reg_write.exit615

hantro_reg_write.exit615:                         ; preds = %do.end.i.i613, %vdpu_read_mask.exit.i610.hantro_reg_write.exit615_crit_edge
  %239 = tail call i32 @llvm.bswap.i32(i32 %or.i.i607) #5
  %240 = ptrtoint ptr %dec_base.i.i.i593 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dec_base.i.i.i593, align 8
  %add.ptr.i.i614 = getelementptr i8, ptr %241, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i614, i32 %239) #5, !srcloc !31
  %242 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i616 = getelementptr inbounds %struct.hantro_dev, ptr %243, i32 0, i32 11
  %244 = ptrtoint ptr %dec_base.i.i.i616 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dec_base.i.i.i616, align 8
  %add.ptr.i.i.i617 = getelementptr i8, ptr %245, i32 48
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i617) #5, !srcloc !32
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %248 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i618 = and i32 %248, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i618)
  %tobool.not.i.i.i619 = icmp eq i32 %and.i.i.i618, 0
  br i1 %tobool.not.i.i.i619, label %hantro_reg_write.exit615.vdpu_read_mask.exit.i633_crit_edge, label %do.end.i.i.i622

hantro_reg_write.exit615.vdpu_read_mask.exit.i633_crit_edge: ; preds = %hantro_reg_write.exit615
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i633

do.end.i.i.i622:                                  ; preds = %hantro_reg_write.exit615
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i621 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 12, i32 noundef %247) #8
  br label %vdpu_read_mask.exit.i633

vdpu_read_mask.exit.i633:                         ; preds = %do.end.i.i.i622, %hantro_reg_write.exit615.vdpu_read_mask.exit.i633_crit_edge
  %and.i.i627 = and i32 %247, -57345
  %or.i.i630 = or i32 %and.i.i627, 24576
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %249 = load i32, ptr @hantro_debug, align 4
  %and.i3.i631 = and i32 %249, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i631)
  %tobool.not.i.i632 = icmp eq i32 %and.i3.i631, 0
  br i1 %tobool.not.i.i632, label %vdpu_read_mask.exit.i633.hantro_reg_write.exit638_crit_edge, label %do.end.i.i636

vdpu_read_mask.exit.i633.hantro_reg_write.exit638_crit_edge: ; preds = %vdpu_read_mask.exit.i633
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit638

do.end.i.i636:                                    ; preds = %vdpu_read_mask.exit.i633
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i635 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 12, i32 noundef %or.i.i630) #8
  br label %hantro_reg_write.exit638

hantro_reg_write.exit638:                         ; preds = %do.end.i.i636, %vdpu_read_mask.exit.i633.hantro_reg_write.exit638_crit_edge
  %250 = tail call i32 @llvm.bswap.i32(i32 %or.i.i630) #5
  %251 = ptrtoint ptr %dec_base.i.i.i616 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dec_base.i.i.i616, align 8
  %add.ptr.i.i637 = getelementptr i8, ptr %252, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i637, i32 %250) #5, !srcloc !31
  %253 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %ctx, align 8
  %variant129 = getelementptr inbounds %struct.hantro_dev, ptr %254, i32 0, i32 15
  %255 = ptrtoint ptr %variant129 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %variant129, align 8
  %double_buffer = getelementptr inbounds %struct.hantro_variant, ptr %256, i32 0, i32 19
  %257 = ptrtoint ptr %double_buffer to i32
  call void @__asan_load1_noabort(i32 %257)
  %bf.load130 = load i8, ptr %double_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load130)
  %tobool133.not = icmp sgt i8 %bf.load130, -1
  br i1 %tobool133.not, label %hantro_reg_write.exit638.if.end140_crit_edge, label %if.then134

hantro_reg_write.exit638.if.end140_crit_edge:     ; preds = %hantro_reg_write.exit638
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

if.then134:                                       ; preds = %hantro_reg_write.exit638
  %dec_base.i.i.i639 = getelementptr inbounds %struct.hantro_dev, ptr %254, i32 0, i32 11
  %258 = ptrtoint ptr %dec_base.i.i.i639 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dec_base.i.i.i639, align 8
  %add.ptr.i.i.i640 = getelementptr i8, ptr %259, i32 232
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i640) #5, !srcloc !32
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %262 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i641 = and i32 %262, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i641)
  %tobool.not.i.i.i642 = icmp eq i32 %and.i.i.i641, 0
  br i1 %tobool.not.i.i.i642, label %if.then134.vdpu_read_mask.exit.i656_crit_edge, label %do.end.i.i.i645

if.then134.vdpu_read_mask.exit.i656_crit_edge:    ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i656

do.end.i.i.i645:                                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i644 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 58, i32 noundef %261) #8
  br label %vdpu_read_mask.exit.i656

vdpu_read_mask.exit.i656:                         ; preds = %do.end.i.i.i645, %if.then134.vdpu_read_mask.exit.i656_crit_edge
  %or.i.i653 = or i32 %261, 32768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %263 = load i32, ptr @hantro_debug, align 4
  %and.i3.i654 = and i32 %263, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i654)
  %tobool.not.i.i655 = icmp eq i32 %and.i3.i654, 0
  br i1 %tobool.not.i.i655, label %vdpu_read_mask.exit.i656.hantro_reg_write.exit661_crit_edge, label %do.end.i.i659

vdpu_read_mask.exit.i656.hantro_reg_write.exit661_crit_edge: ; preds = %vdpu_read_mask.exit.i656
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit661

do.end.i.i659:                                    ; preds = %vdpu_read_mask.exit.i656
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i658 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 58, i32 noundef %or.i.i653) #8
  br label %hantro_reg_write.exit661

hantro_reg_write.exit661:                         ; preds = %do.end.i.i659, %vdpu_read_mask.exit.i656.hantro_reg_write.exit661_crit_edge
  %264 = tail call i32 @llvm.bswap.i32(i32 %or.i.i653) #5
  %265 = ptrtoint ptr %dec_base.i.i.i639 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dec_base.i.i.i639, align 8
  %add.ptr.i.i660 = getelementptr i8, ptr %266, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i660, i32 %264) #5, !srcloc !31
  br label %if.end140

if.end140:                                        ; preds = %hantro_reg_write.exit661, %hantro_reg_write.exit638.if.end140_crit_edge
  %267 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %268, i32 0, i32 11
  %269 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %270, i32 12
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !32
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %273 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i = and i32 %273, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end140.vdpu_read_mask.exit.i.i_crit_edge, label %do.end.i.i.i.i

if.end140.vdpu_read_mask.exit.i.i_crit_edge:      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %272) #8
  br label %vdpu_read_mask.exit.i.i

vdpu_read_mask.exit.i.i:                          ; preds = %do.end.i.i.i.i, %if.end140.vdpu_read_mask.exit.i.i_crit_edge
  %and.i.i.i662 = and i32 %272, -32769
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %274 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i = and i32 %274, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i.i.i663 = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool.not.i.i.i663, label %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge, label %do.end.i.i.i664

vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge: ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i

do.end.i.i.i664:                                  ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %and.i.i.i662) #8
  br label %hantro_reg_write.exit.i

hantro_reg_write.exit.i:                          ; preds = %do.end.i.i.i664, %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge
  %275 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i662) #5
  %276 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i665 = getelementptr i8, ptr %277, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i665, i32 %275) #5, !srcloc !31
  %278 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ctx, align 8
  %variant.i = getelementptr inbounds %struct.hantro_dev, ptr %279, i32 0, i32 15
  %280 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %variant.i, align 8
  %legacy_regs.i = getelementptr inbounds %struct.hantro_variant, ptr %281, i32 0, i32 19
  %282 = ptrtoint ptr %legacy_regs.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %bf.load.i666 = load i8, ptr %legacy_regs.i, align 4
  %283 = and i8 %bf.load.i666, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i = icmp eq i8 %283, 0
  br i1 %tobool.not.i, label %if.then.i, label %hantro_reg_write.exit.i.if.end.i668_crit_edge

hantro_reg_write.exit.i.if.end.i668_crit_edge:    ; preds = %hantro_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i668

if.then.i:                                        ; preds = %hantro_reg_write.exit.i
  %dec_base.i.i.i25.i = getelementptr inbounds %struct.hantro_dev, ptr %279, i32 0, i32 11
  %284 = ptrtoint ptr %dec_base.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dec_base.i.i.i25.i, align 8
  %add.ptr.i.i.i26.i = getelementptr i8, ptr %285, i32 32
  %286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26.i) #5, !srcloc !32
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %288 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i27.i = and i32 %288, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i)
  %tobool.not.i.i.i28.i = icmp eq i32 %and.i.i.i27.i, 0
  br i1 %tobool.not.i.i.i28.i, label %if.then.i.vdpu_read_mask.exit.i39.i_crit_edge, label %do.end.i.i.i31.i

if.then.i.vdpu_read_mask.exit.i39.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i39.i

do.end.i.i.i31.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %287) #8
  br label %vdpu_read_mask.exit.i39.i

vdpu_read_mask.exit.i39.i:                        ; preds = %do.end.i.i.i31.i, %if.then.i.vdpu_read_mask.exit.i39.i_crit_edge
  %and.i.i36.i = and i32 %287, -8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %289 = load i32, ptr @hantro_debug, align 4
  %and.i3.i37.i = and i32 %289, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i37.i)
  %tobool.not.i.i38.i = icmp eq i32 %and.i3.i37.i, 0
  br i1 %tobool.not.i.i38.i, label %vdpu_read_mask.exit.i39.i.hantro_reg_write.exit44.i_crit_edge, label %do.end.i.i42.i

vdpu_read_mask.exit.i39.i.hantro_reg_write.exit44.i_crit_edge: ; preds = %vdpu_read_mask.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit44.i

do.end.i.i42.i:                                   ; preds = %vdpu_read_mask.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %and.i.i36.i) #8
  br label %hantro_reg_write.exit44.i

hantro_reg_write.exit44.i:                        ; preds = %do.end.i.i42.i, %vdpu_read_mask.exit.i39.i.hantro_reg_write.exit44.i_crit_edge
  %290 = tail call i32 @llvm.bswap.i32(i32 %and.i.i36.i) #5
  %291 = ptrtoint ptr %dec_base.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dec_base.i.i.i25.i, align 8
  %add.ptr.i.i43.i = getelementptr i8, ptr %292, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43.i, i32 %290) #5, !srcloc !31
  br label %if.end.i668

if.end.i668:                                      ; preds = %hantro_reg_write.exit44.i, %hantro_reg_write.exit.i.if.end.i668_crit_edge
  %vpu_dst_fmt.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %293 = ptrtoint ptr %vpu_dst_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %vpu_dst_fmt.i.i, align 4
  %call.i.i667 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %294) #5
  br i1 %call.i.i667, label %if.then.i.i669, label %if.end.i.i

if.then.i.i669:                                   ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #7
  %postproc.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2_dst, i32 0, i32 1
  %295 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %index.i.i, align 4
  %dma.i.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i.i, i32 0, i32 %296, i32 1
  br label %hantro_get_dec_buf_addr.exit.i

if.end.i.i:                                       ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i45.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb2_dst, i32 noundef 0) #5
  br label %hantro_get_dec_buf_addr.exit.i

hantro_get_dec_buf_addr.exit.i:                   ; preds = %if.end.i.i, %if.then.i.i669
  %retval.0.in.i.i = phi ptr [ %dma.i.i, %if.then.i.i669 ], [ %call.i.i45.i, %if.end.i.i ]
  %297 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %298 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %300 = load i32, ptr @hantro_debug, align 4
  %and.i.i46.i = and i32 %300, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46.i)
  %tobool.not.i.i47.i = icmp eq i32 %and.i.i46.i, 0
  br i1 %tobool.not.i.i47.i, label %hantro_get_dec_buf_addr.exit.i.hantro_write_addr.exit.i_crit_edge, label %do.end.i.i49.i

hantro_get_dec_buf_addr.exit.i.hantro_write_addr.exit.i_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i

do.end.i.i49.i:                                   ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 65, i32 noundef %retval.0.i.i) #8
  br label %hantro_write_addr.exit.i

hantro_write_addr.exit.i:                         ; preds = %do.end.i.i49.i, %hantro_get_dec_buf_addr.exit.i.hantro_write_addr.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %301 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #5
  %dec_base.i.i.i670 = getelementptr inbounds %struct.hantro_dev, ptr %299, i32 0, i32 11
  %302 = ptrtoint ptr %dec_base.i.i.i670 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dec_base.i.i.i670, align 8
  %add.ptr.i.i50.i = getelementptr i8, ptr %303, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50.i, i32 %301) #5, !srcloc !31
  %304 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %bit_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %305)
  %cmp.i.i671 = icmp eq i8 %305, 8
  %cond.i.i = select i1 %cmp.i.i671, i32 1, i32 2
  %src_fmt.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %306 = ptrtoint ptr %src_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %src_fmt.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %308 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %height.i.i, align 4
  %mul.i.i = mul i32 %309, %307
  %mul3.i.i = mul i32 %mul.i.i, %cond.i.i
  %add.i672 = add i32 %mul3.i.i, %retval.0.i.i
  %310 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %312 = load i32, ptr @hantro_debug, align 4
  %and.i.i51.i = and i32 %312, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51.i)
  %tobool.not.i.i52.i = icmp eq i32 %and.i.i51.i, 0
  br i1 %tobool.not.i.i52.i, label %hantro_write_addr.exit.i.hantro_write_addr.exit57.i_crit_edge, label %do.end.i.i54.i

hantro_write_addr.exit.i.hantro_write_addr.exit57.i_crit_edge: ; preds = %hantro_write_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit57.i

do.end.i.i54.i:                                   ; preds = %hantro_write_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 99, i32 noundef %add.i672) #8
  br label %hantro_write_addr.exit57.i

hantro_write_addr.exit57.i:                       ; preds = %do.end.i.i54.i, %hantro_write_addr.exit.i.hantro_write_addr.exit57.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %313 = tail call i32 @llvm.bswap.i32(i32 %add.i672) #5
  %dec_base.i.i55.i = getelementptr inbounds %struct.hantro_dev, ptr %311, i32 0, i32 11
  %314 = ptrtoint ptr %dec_base.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dec_base.i.i55.i, align 8
  %add.ptr.i.i56.i = getelementptr i8, ptr %315, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56.i, i32 %313) #5, !srcloc !31
  %316 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %bit_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %317)
  %cmp.i.i.i = icmp eq i8 %317, 8
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 1, i32 2
  %318 = ptrtoint ptr %src_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %src_fmt.i.i, align 4
  %320 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %height.i.i, align 4
  %mul.i.i.i = mul i32 %319, 3
  %mul3.i.i.i = mul i32 %mul.i.i.i, %321
  %mul.i58.i = mul i32 %mul3.i.i.i, %cond.i.i.i
  %div1.i.i = lshr i32 %mul.i58.i, 1
  %add.i.i = add nuw i32 %div1.i.i, 15
  %and.i.i673 = and i32 %add.i.i, -16
  %add12.i = add i32 %and.i.i673, %retval.0.i.i
  %322 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %324 = load i32, ptr @hantro_debug, align 4
  %and.i.i59.i = and i32 %324, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59.i)
  %tobool.not.i.i60.i = icmp eq i32 %and.i.i59.i, 0
  br i1 %tobool.not.i.i60.i, label %hantro_write_addr.exit57.i.config_output.exit_crit_edge, label %do.end.i.i62.i

hantro_write_addr.exit57.i.config_output.exit_crit_edge: ; preds = %hantro_write_addr.exit57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_output.exit

do.end.i.i62.i:                                   ; preds = %hantro_write_addr.exit57.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 133, i32 noundef %add12.i) #8
  br label %config_output.exit

config_output.exit:                               ; preds = %do.end.i.i62.i, %hantro_write_addr.exit57.i.config_output.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %325 = tail call i32 @llvm.bswap.i32(i32 %add12.i) #5
  %dec_base.i.i63.i = getelementptr inbounds %struct.hantro_dev, ptr %323, i32 0, i32 11
  %326 = ptrtoint ptr %dec_base.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dec_base.i.i63.i, align 8
  %add.ptr.i.i64.i = getelementptr i8, ptr %327, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64.i, i32 %325) #5, !srcloc !31
  br i1 %tobool5.not1055, label %if.then142, label %config_output.exit.if.end143_crit_edge

config_output.exit.if.end143_crit_edge:           ; preds = %config_output.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end143

if.then142:                                       ; preds = %config_output.exit
  %last_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 10
  %328 = ptrtoint ptr %last_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %last_frame_ts.i, align 8
  tail call fastcc void @config_ref(ptr noundef %ctx, ptr noundef %vb2_dst, ptr noundef nonnull @config_ref_registers.ref_regs, ptr noundef %dec_params, i64 noundef %329) #5
  %golden_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 11
  %330 = ptrtoint ptr %golden_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %golden_frame_ts.i, align 8
  tail call fastcc void @config_ref(ptr noundef %ctx, ptr noundef %vb2_dst, ptr noundef getelementptr inbounds ([3 x %struct.hantro_vp9_ref_reg], ptr @config_ref_registers.ref_regs, i32 0, i32 1), ptr noundef %dec_params, i64 noundef %331) #5
  %alt_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 12
  %332 = ptrtoint ptr %alt_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %alt_frame_ts.i, align 8
  tail call fastcc void @config_ref(ptr noundef %ctx, ptr noundef %vb2_dst, ptr noundef getelementptr inbounds ([3 x %struct.hantro_vp9_ref_reg], ptr @config_ref_registers.ref_regs, i32 0, i32 2), ptr noundef %dec_params, i64 noundef %333) #5
  %334 = ptrtoint ptr %vpu_dst_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %vpu_dst_fmt.i.i, align 4
  %call.i.i675 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %335) #5
  br i1 %call.i.i675, label %if.then.i.i679, label %if.end.i.i681

if.then.i.i679:                                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  %postproc.i.i676 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i.i677 = getelementptr inbounds %struct.vb2_buffer, ptr %mv_ref.0, i32 0, i32 1
  %336 = ptrtoint ptr %index.i.i677 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %index.i.i677, align 4
  %dma.i.i678 = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i.i676, i32 0, i32 %337, i32 1
  br label %hantro_get_dec_buf_addr.exit.i695

if.end.i.i681:                                    ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i680 = tail call ptr @vb2_plane_cookie(ptr noundef %mv_ref.0, i32 noundef 0) #5
  br label %hantro_get_dec_buf_addr.exit.i695

hantro_get_dec_buf_addr.exit.i695:                ; preds = %if.end.i.i681, %if.then.i.i679
  %retval.0.in.i.i682 = phi ptr [ %dma.i.i678, %if.then.i.i679 ], [ %call.i.i.i680, %if.end.i.i681 ]
  %338 = ptrtoint ptr %retval.0.in.i.i682 to i32
  call void @__asan_load4_noabort(i32 %338)
  %retval.0.i.i683 = load i32, ptr %retval.0.in.i.i682, align 4
  %339 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %bit_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %340)
  %cmp.i.i.i684 = icmp eq i8 %340, 8
  %cond.i.i.i685 = select i1 %cmp.i.i.i684, i32 1, i32 2
  %341 = ptrtoint ptr %src_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %src_fmt.i.i, align 4
  %343 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %height.i.i, align 4
  %mul.i.i.i686 = mul i32 %342, 3
  %mul3.i.i.i687 = mul i32 %mul.i.i.i686, %344
  %mul.i.i688 = mul i32 %mul3.i.i.i687, %cond.i.i.i685
  %div1.i.i689 = lshr i32 %mul.i.i688, 1
  %add.i.i690 = add nuw i32 %div1.i.i689, 15
  %and.i.i691 = and i32 %add.i.i690, -16
  %add.i692 = add i32 %and.i.i691, %retval.0.i.i683
  %345 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %347 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i693 = and i32 %347, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i693)
  %tobool.not.i.i.i694 = icmp eq i32 %and.i.i.i693, 0
  br i1 %tobool.not.i.i.i694, label %hantro_get_dec_buf_addr.exit.i695.hantro_write_addr.exit.i703_crit_edge, label %do.end.i.i.i696

hantro_get_dec_buf_addr.exit.i695.hantro_write_addr.exit.i703_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit.i695
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i703

do.end.i.i.i696:                                  ; preds = %hantro_get_dec_buf_addr.exit.i695
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 135, i32 noundef %add.i692) #8
  br label %hantro_write_addr.exit.i703

hantro_write_addr.exit.i703:                      ; preds = %do.end.i.i.i696, %hantro_get_dec_buf_addr.exit.i695.hantro_write_addr.exit.i703_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %348 = tail call i32 @llvm.bswap.i32(i32 %add.i692) #5
  %dec_base.i.i.i697 = getelementptr inbounds %struct.hantro_dev, ptr %346, i32 0, i32 11
  %349 = ptrtoint ptr %dec_base.i.i.i697 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dec_base.i.i.i697, align 8
  %add.ptr.i.i.i698 = getelementptr i8, ptr %350, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i698, i32 %348) #5, !srcloc !31
  %351 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ctx, align 8
  %ref_frame_sign_bias.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 13
  %353 = ptrtoint ptr %ref_frame_sign_bias.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %ref_frame_sign_bias.i, align 8
  %dec_base.i.i.i.i699 = getelementptr inbounds %struct.hantro_dev, ptr %352, i32 0, i32 11
  %355 = ptrtoint ptr %dec_base.i.i.i.i699 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dec_base.i.i.i.i699, align 8
  %add.ptr.i.i.i.i700 = getelementptr i8, ptr %356, i32 52
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i700) #5, !srcloc !32
  %358 = tail call i32 @llvm.bswap.i32(i32 %357) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %359 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i701 = and i32 %359, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i701)
  %tobool.not.i.i.i.i702 = icmp eq i32 %and.i.i.i.i701, 0
  br i1 %tobool.not.i.i.i.i702, label %hantro_write_addr.exit.i703.vdpu_read_mask.exit.i.i707_crit_edge, label %do.end.i.i.i.i705

hantro_write_addr.exit.i703.vdpu_read_mask.exit.i.i707_crit_edge: ; preds = %hantro_write_addr.exit.i703
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i707

do.end.i.i.i.i705:                                ; preds = %hantro_write_addr.exit.i703
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i704 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %358) #8
  br label %vdpu_read_mask.exit.i.i707

vdpu_read_mask.exit.i.i707:                       ; preds = %do.end.i.i.i.i705, %hantro_write_addr.exit.i703.vdpu_read_mask.exit.i.i707_crit_edge
  %and.i.i45.i = and i32 %358, -1025
  %360 = and i8 %354, 1
  %and2.i.i.i = zext i8 %360 to i32
  %shl4.i.i.i = shl nuw nsw i32 %and2.i.i.i, 10
  %or.i.i.i = or i32 %and.i.i45.i, %shl4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %361 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i706 = and i32 %361, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i706)
  %tobool.not.i.i46.i = icmp eq i32 %and.i3.i.i706, 0
  br i1 %tobool.not.i.i46.i, label %vdpu_read_mask.exit.i.i707.hantro_reg_write.exit.i708_crit_edge, label %do.end.i.i48.i

vdpu_read_mask.exit.i.i707.hantro_reg_write.exit.i708_crit_edge: ; preds = %vdpu_read_mask.exit.i.i707
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i708

do.end.i.i48.i:                                   ; preds = %vdpu_read_mask.exit.i.i707
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i.i) #8
  br label %hantro_reg_write.exit.i708

hantro_reg_write.exit.i708:                       ; preds = %do.end.i.i48.i, %vdpu_read_mask.exit.i.i707.hantro_reg_write.exit.i708_crit_edge
  %362 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  %363 = ptrtoint ptr %dec_base.i.i.i.i699 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dec_base.i.i.i.i699, align 8
  %add.ptr.i.i49.i = getelementptr i8, ptr %364, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i, i32 %362) #5, !srcloc !31
  %365 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %ctx, align 8
  %367 = ptrtoint ptr %ref_frame_sign_bias.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %ref_frame_sign_bias.i, align 8
  %dec_base.i.i.i50.i = getelementptr inbounds %struct.hantro_dev, ptr %366, i32 0, i32 11
  %369 = ptrtoint ptr %dec_base.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dec_base.i.i.i50.i, align 8
  %add.ptr.i.i.i51.i = getelementptr i8, ptr %370, i32 44
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i51.i) #5, !srcloc !32
  %372 = tail call i32 @llvm.bswap.i32(i32 %371) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %373 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i52.i = and i32 %373, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i52.i)
  %tobool.not.i.i.i53.i = icmp eq i32 %and.i.i.i52.i, 0
  br i1 %tobool.not.i.i.i53.i, label %hantro_reg_write.exit.i708.vdpu_read_mask.exit.i67.i_crit_edge, label %do.end.i.i.i56.i

hantro_reg_write.exit.i708.vdpu_read_mask.exit.i67.i_crit_edge: ; preds = %hantro_reg_write.exit.i708
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i67.i

do.end.i.i.i56.i:                                 ; preds = %hantro_reg_write.exit.i708
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 11, i32 noundef %372) #8
  br label %vdpu_read_mask.exit.i67.i

vdpu_read_mask.exit.i67.i:                        ; preds = %do.end.i.i.i56.i, %hantro_reg_write.exit.i708.vdpu_read_mask.exit.i67.i_crit_edge
  %and.i.i61.i = and i32 %372, -5
  %374 = shl i8 %368, 1
  %375 = and i8 %374, 4
  %shl4.i.i63.i = zext i8 %375 to i32
  %or.i.i64.i = or i32 %and.i.i61.i, %shl4.i.i63.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %376 = load i32, ptr @hantro_debug, align 4
  %and.i3.i65.i = and i32 %376, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i65.i)
  %tobool.not.i.i66.i = icmp eq i32 %and.i3.i65.i, 0
  br i1 %tobool.not.i.i66.i, label %vdpu_read_mask.exit.i67.i.hantro_reg_write.exit72.i_crit_edge, label %do.end.i.i70.i

vdpu_read_mask.exit.i67.i.hantro_reg_write.exit72.i_crit_edge: ; preds = %vdpu_read_mask.exit.i67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit72.i

do.end.i.i70.i:                                   ; preds = %vdpu_read_mask.exit.i67.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 11, i32 noundef %or.i.i64.i) #8
  br label %hantro_reg_write.exit72.i

hantro_reg_write.exit72.i:                        ; preds = %do.end.i.i70.i, %vdpu_read_mask.exit.i67.i.hantro_reg_write.exit72.i_crit_edge
  %377 = tail call i32 @llvm.bswap.i32(i32 %or.i.i64.i) #5
  %378 = ptrtoint ptr %dec_base.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dec_base.i.i.i50.i, align 8
  %add.ptr.i.i71.i = getelementptr i8, ptr %379, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i71.i, i32 %377) #5, !srcloc !31
  %380 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ctx, align 8
  %382 = ptrtoint ptr %ref_frame_sign_bias.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %ref_frame_sign_bias.i, align 8
  %384 = lshr i8 %383, 2
  %dec_base.i.i.i73.i = getelementptr inbounds %struct.hantro_dev, ptr %381, i32 0, i32 11
  %385 = ptrtoint ptr %dec_base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dec_base.i.i.i73.i, align 8
  %add.ptr.i.i.i74.i = getelementptr i8, ptr %386, i32 44
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i74.i) #5, !srcloc !32
  %388 = tail call i32 @llvm.bswap.i32(i32 %387) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %389 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i75.i = and i32 %389, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i75.i)
  %tobool.not.i.i.i76.i = icmp eq i32 %and.i.i.i75.i, 0
  br i1 %tobool.not.i.i.i76.i, label %hantro_reg_write.exit72.i.vdpu_read_mask.exit.i90.i_crit_edge, label %do.end.i.i.i79.i

hantro_reg_write.exit72.i.vdpu_read_mask.exit.i90.i_crit_edge: ; preds = %hantro_reg_write.exit72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i90.i

do.end.i.i.i79.i:                                 ; preds = %hantro_reg_write.exit72.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 11, i32 noundef %388) #8
  br label %vdpu_read_mask.exit.i90.i

vdpu_read_mask.exit.i90.i:                        ; preds = %do.end.i.i.i79.i, %hantro_reg_write.exit72.i.vdpu_read_mask.exit.i90.i_crit_edge
  %and.i.i84.i = and i32 %388, -2
  %390 = and i8 %384, 1
  %and2.i.i85.i = zext i8 %390 to i32
  %or.i.i87.i = or i32 %and.i.i84.i, %and2.i.i85.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %391 = load i32, ptr @hantro_debug, align 4
  %and.i3.i88.i = and i32 %391, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i88.i)
  %tobool.not.i.i89.i = icmp eq i32 %and.i3.i88.i, 0
  br i1 %tobool.not.i.i89.i, label %vdpu_read_mask.exit.i90.i.config_ref_registers.exit_crit_edge, label %do.end.i.i93.i

vdpu_read_mask.exit.i90.i.config_ref_registers.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_ref_registers.exit

do.end.i.i93.i:                                   ; preds = %vdpu_read_mask.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 11, i32 noundef %or.i.i87.i) #8
  br label %config_ref_registers.exit

config_ref_registers.exit:                        ; preds = %do.end.i.i93.i, %vdpu_read_mask.exit.i90.i.config_ref_registers.exit_crit_edge
  %392 = tail call i32 @llvm.bswap.i32(i32 %or.i.i87.i) #5
  %393 = ptrtoint ptr %dec_base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %dec_base.i.i.i73.i, align 8
  %add.ptr.i.i94.i = getelementptr i8, ptr %394, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i94.i, i32 %392) #5, !srcloc !31
  br label %if.end143

if.end143:                                        ; preds = %config_ref_registers.exit, %config_output.exit.if.end143_crit_edge
  %misc1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %395 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %dma.i, align 4
  %tile_info_offset.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 11
  %397 = ptrtoint ptr %tile_info_offset.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %tile_info_offset.i, align 4
  %add.i709 = add i32 %398, %396
  %399 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %401 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i710 = and i32 %401, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i710)
  %tobool.not.i.i.i711 = icmp eq i32 %and.i.i.i710, 0
  br i1 %tobool.not.i.i.i711, label %if.end143.hantro_write_addr.exit.i717_crit_edge, label %do.end.i.i.i713

if.end143.hantro_write_addr.exit.i717_crit_edge:  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i717

do.end.i.i.i713:                                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i712 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 167, i32 noundef %add.i709) #8
  br label %hantro_write_addr.exit.i717

hantro_write_addr.exit.i717:                      ; preds = %do.end.i.i.i713, %if.end143.hantro_write_addr.exit.i717_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %402 = tail call i32 @llvm.bswap.i32(i32 %add.i709) #5
  %dec_base.i.i.i714 = getelementptr inbounds %struct.hantro_dev, ptr %400, i32 0, i32 11
  %403 = ptrtoint ptr %dec_base.i.i.i714 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %dec_base.i.i.i714, align 8
  %add.ptr.i.i.i715 = getelementptr i8, ptr %404, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i715, i32 %402) #5, !srcloc !31
  %405 = ptrtoint ptr %misc1.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %misc1.i, align 4
  %407 = ptrtoint ptr %tile_info_offset.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %tile_info_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %406, i32 %408
  %tile_cols_log2.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 19
  %409 = ptrtoint ptr %tile_cols_log2.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %tile_cols_log2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %410)
  %tobool.not.i716 = icmp eq i8 %410, 0
  br i1 %tobool.not.i716, label %lor.lhs.false.i, label %hantro_write_addr.exit.i717.if.then.i720_crit_edge

hantro_write_addr.exit.i717.if.then.i720_crit_edge: ; preds = %hantro_write_addr.exit.i717
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i720

lor.lhs.false.i:                                  ; preds = %hantro_write_addr.exit.i717
  %tile_rows_log2.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 20
  %411 = ptrtoint ptr %tile_rows_log2.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %tile_rows_log2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %412)
  %tobool5.not.i = icmp eq i8 %412, 0
  br i1 %tobool5.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i720_crit_edge

lor.lhs.false.i.if.then.i720_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i720

if.then.i720:                                     ; preds = %lor.lhs.false.i.if.then.i720_crit_edge, %hantro_write_addr.exit.i717.if.then.i720_crit_edge
  %tile_rows_log26.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 20
  %413 = ptrtoint ptr %tile_rows_log26.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %tile_rows_log26.i, align 1
  %conv7.i = zext i8 %414 to i32
  %shl.i = shl nuw i32 1, %conv7.i
  %conv9.i = zext i8 %410 to i32
  %shl10.i = shl nuw i32 1, %conv9.i
  %415 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %height.i, align 2
  %conv.i.i = zext i16 %416 to i32
  %add.i.i719 = add nuw nsw i32 %conv.i.i, 63
  %div2.i.i = lshr i32 %add.i.i719, 6
  %417 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %12, align 8
  %conv.i111.i = zext i16 %418 to i32
  %add.i112.i = add nuw nsw i32 %conv.i111.i, 63
  %div2.i113.i = lshr i32 %add.i112.i, 6
  %last_tile_r.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 14
  %419 = ptrtoint ptr %last_tile_r.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %last_tile_r.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %420)
  %cmp.not.i = icmp eq i32 %shl.i, %420
  br i1 %cmp.not.i, label %lor.lhs.false15.i, label %if.then.i720.if.then24.i_crit_edge

if.then.i720.if.then24.i_crit_edge:               ; preds = %if.then.i720
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

lor.lhs.false15.i:                                ; preds = %if.then.i720
  %last_tile_c.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 15
  %421 = ptrtoint ptr %last_tile_c.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %last_tile_c.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl10.i, i32 %422)
  %cmp16.not.i = icmp eq i32 %shl10.i, %422
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false15.i.if.then24.i_crit_edge

lor.lhs.false15.i.if.then24.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false15.i
  %last_sbs_r.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 16
  %423 = ptrtoint ptr %last_sbs_r.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %last_sbs_r.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %424, i32 %div2.i.i)
  %cmp19.not.i = icmp eq i32 %424, %div2.i.i
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false18.i.if.then24.i_crit_edge

lor.lhs.false18.i.if.then24.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false18.i
  %last_sbs_c.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 17
  %425 = ptrtoint ptr %last_sbs_c.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %last_sbs_c.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %426, i32 %div2.i113.i)
  %cmp22.not.i = icmp eq i32 %426, %div2.i113.i
  br i1 %cmp22.not.i, label %lor.lhs.false21.i.if.end.i723_crit_edge, label %lor.lhs.false21.i.if.then24.i_crit_edge

lor.lhs.false21.i.if.then24.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

lor.lhs.false21.i.if.end.i723_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i723

if.then24.i:                                      ; preds = %lor.lhs.false21.i.if.then24.i_crit_edge, %lor.lhs.false18.i.if.then24.i_crit_edge, %lor.lhs.false15.i.if.then24.i_crit_edge, %if.then.i720.if.then24.i_crit_edge
  %tile_r_info.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 12
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then24.i
  %accumulated.08.i.i.i = phi i32 [ %div.i.i262.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then24.i ]
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %if.then24.i ]
  %tile_info.addr.06.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %tile_r_info.i.i, %if.then24.i ]
  %mul.i.i.i721 = mul i32 %i.07.i.i.i, %div2.i.i
  %div.i.i262.i = lshr i32 %mul.i.i.i721, %conv7.i
  %sub.i.i.i = sub i32 %div.i.i262.i, %accumulated.08.i.i.i
  %conv.i.i.i = trunc i32 %sub.i.i.i to i16
  %incdec.ptr.i.i.i = getelementptr i16, ptr %tile_info.addr.06.i.i.i, i32 1
  %427 = ptrtoint ptr %tile_info.addr.06.i.i.i to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %conv.i.i.i, ptr %tile_info.addr.06.i.i.i, align 2
  %inc.i.i.i = add i32 %i.07.i.i.i, 1
  %cmp.not.i.i.i = icmp ugt i32 %inc.i.i.i, %shl.i
  br i1 %cmp.not.i.i.i, label %recompute_tile_info.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

recompute_tile_info.exit.i.i:                     ; preds = %for.body.i.i.i
  %tile_c_info.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 13
  br label %for.body.i22.i.i

for.body.i22.i.i:                                 ; preds = %for.body.i22.i.i.for.body.i22.i.i_crit_edge, %recompute_tile_info.exit.i.i
  %accumulated.08.i12.i.i = phi i32 [ %div.i16.i263.i, %for.body.i22.i.i.for.body.i22.i.i_crit_edge ], [ 0, %recompute_tile_info.exit.i.i ]
  %i.07.i13.i.i = phi i32 [ %inc.i20.i.i, %for.body.i22.i.i.for.body.i22.i.i_crit_edge ], [ 1, %recompute_tile_info.exit.i.i ]
  %tile_info.addr.06.i14.i.i = phi ptr [ %incdec.ptr.i19.i.i, %for.body.i22.i.i.for.body.i22.i.i_crit_edge ], [ %tile_c_info.i.i, %recompute_tile_info.exit.i.i ]
  %mul.i15.i.i = mul i32 %i.07.i13.i.i, %div2.i113.i
  %div.i16.i263.i = lshr i32 %mul.i15.i.i, %conv9.i
  %sub.i17.i.i = sub i32 %div.i16.i263.i, %accumulated.08.i12.i.i
  %conv.i18.i.i = trunc i32 %sub.i17.i.i to i16
  %incdec.ptr.i19.i.i = getelementptr i16, ptr %tile_info.addr.06.i14.i.i, i32 1
  %428 = ptrtoint ptr %tile_info.addr.06.i14.i.i to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 %conv.i18.i.i, ptr %tile_info.addr.06.i14.i.i, align 2
  %inc.i20.i.i = add i32 %i.07.i13.i.i, 1
  %cmp.not.i21.i.i = icmp ugt i32 %inc.i20.i.i, %shl10.i
  br i1 %cmp.not.i21.i.i, label %recompute_tile_rc_info.exit.i, label %for.body.i22.i.i.for.body.i22.i.i_crit_edge

for.body.i22.i.i.for.body.i22.i.i_crit_edge:      ; preds = %for.body.i22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i22.i.i

recompute_tile_rc_info.exit.i:                    ; preds = %for.body.i22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %429 = ptrtoint ptr %last_tile_r.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %shl.i, ptr %last_tile_r.i, align 4
  %last_tile_c.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 15
  %430 = ptrtoint ptr %last_tile_c.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %shl10.i, ptr %last_tile_c.i.i, align 8
  %last_sbs_r.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 16
  %431 = ptrtoint ptr %last_sbs_r.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %div2.i.i, ptr %last_sbs_r.i.i, align 4
  %last_sbs_c.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 17
  %432 = ptrtoint ptr %last_sbs_c.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %div2.i113.i, ptr %last_sbs_c.i.i, align 8
  br label %if.end.i723

if.end.i723:                                      ; preds = %recompute_tile_rc_info.exit.i, %lor.lhs.false21.i.if.end.i723_crit_edge
  %add.i.i.i = add nuw nsw i32 %div2.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %shl.i)
  %cmp.i.i.i722 = icmp eq i32 %add.i.i.i, %shl.i
  %add1.i.i.i = add nuw nsw i32 %div2.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i.i, i32 %shl.i)
  %cmp2.i.i.i = icmp eq i32 %add1.i.i.i, %shl.i
  %..i.i.i = select i1 %cmp2.i.i.i, i32 2, i32 0
  %retval.0.i.i.i = select i1 %cmp.i.i.i722, i32 1, i32 %..i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %shl.i)
  %cmp8.i.i = icmp ult i32 %retval.0.i.i.i, %shl.i
  br i1 %cmp8.i.i, label %for.body.lr.ph.i.i, label %if.end.i723.fill_tile_info.exit.i_crit_edge

if.end.i723.fill_tile_info.exit.i_crit_edge:      ; preds = %if.end.i723
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_tile_info.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i723
  %tile_r_info.i115.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 12
  %arrayidx11.i.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 12, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %first.0.off012.i.i = phi i1 [ false, %for.body.lr.ph.i.i ], [ true, %for.end.i.i.for.body.i.i_crit_edge ]
  %i.010.i.i = phi i32 [ %retval.0.i.i.i, %for.body.lr.ph.i.i ], [ %inc25.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %tile_mem.addr.09.i.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i.i ], [ %incdec.ptr23.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i724 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 12, i32 %i.010.i.i
  %433 = ptrtoint ptr %arrayidx.i.i724 to i32
  call void @__asan_load2_noabort(i32 %433)
  %434 = load i16, ptr %arrayidx.i.i724, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.010.i.i)
  %cmp1.not.i.i = icmp eq i32 %i.010.i.i, 0
  %or.cond.i.i = select i1 %first.0.off012.i.i, i1 true, i1 %cmp1.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.if.end17.i.i_crit_edge, label %if.end.i.i725

for.body.i.i.if.end17.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

if.end.i.i725:                                    ; preds = %for.body.i.i
  %435 = ptrtoint ptr %tile_r_info.i115.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %tile_r_info.i115.i, align 8
  %add.i116.i = add i16 %436, %434
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.010.i.i)
  %cmp7.i.i = icmp eq i32 %i.010.i.i, 2
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end.i.i725.if.end17.i.i_crit_edge

if.end.i.i725.if.end17.i.i_crit_edge:             ; preds = %if.end.i.i725
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i725
  call void @__sanitizer_cov_trace_pc() #7
  %437 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %arrayidx11.i.i, align 2
  %add14.i.i = add i16 %438, %add.i116.i
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i725.if.end17.i.i_crit_edge, %for.body.i.i.if.end17.i.i_crit_edge
  %r_info.2.i.i = phi i16 [ %434, %for.body.i.i.if.end17.i.i_crit_edge ], [ %add14.i.i, %if.then9.i.i ], [ %add.i116.i, %if.end.i.i725.if.end17.i.i_crit_edge ]
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %if.end17.i.i
  %j.06.i.i = phi i32 [ %inc.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ 0, %if.end17.i.i ]
  %tile_mem.addr.15.i.i = phi ptr [ %incdec.ptr23.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ %tile_mem.addr.09.i.i, %if.end17.i.i ]
  %arrayidx22.i.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 13, i32 %j.06.i.i
  %439 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %arrayidx22.i.i, align 2
  %incdec.ptr.i.i = getelementptr i16, ptr %tile_mem.addr.15.i.i, i32 1
  %441 = ptrtoint ptr %tile_mem.addr.15.i.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %440, ptr %tile_mem.addr.15.i.i, align 2
  %incdec.ptr23.i.i = getelementptr i16, ptr %tile_mem.addr.15.i.i, i32 2
  %442 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %r_info.2.i.i, ptr %incdec.ptr.i.i, align 2
  %inc.i.i = add nuw i32 %j.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shl10.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body21.i.i.for.body21.i.i_crit_edge

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21.i.i

for.end.i.i:                                      ; preds = %for.body21.i.i
  %inc25.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond13.not.i.i = icmp eq i32 %inc25.i.i, %shl.i
  br i1 %exitcond13.not.i.i, label %for.end.i.i.fill_tile_info.exit.i_crit_edge, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.i.i.fill_tile_info.exit.i_crit_edge:      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_tile_info.exit.i

fill_tile_info.exit.i:                            ; preds = %for.end.i.i.fill_tile_info.exit.i_crit_edge, %if.end.i723.fill_tile_info.exit.i_crit_edge
  %443 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i726 = getelementptr inbounds %struct.hantro_dev, ptr %444, i32 0, i32 11
  %445 = ptrtoint ptr %dec_base.i.i.i.i726 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %dec_base.i.i.i.i726, align 8
  %add.ptr.i.i.i.i727 = getelementptr i8, ptr %446, i32 40
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i727) #5, !srcloc !32
  %448 = tail call i32 @llvm.bswap.i32(i32 %447) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %449 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i728 = and i32 %449, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i728)
  %tobool.not.i.i.i.i729 = icmp eq i32 %and.i.i.i.i728, 0
  br i1 %tobool.not.i.i.i.i729, label %fill_tile_info.exit.i.vdpu_read_mask.exit.i.i734_crit_edge, label %do.end.i.i.i.i731

fill_tile_info.exit.i.vdpu_read_mask.exit.i.i734_crit_edge: ; preds = %fill_tile_info.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i734

do.end.i.i.i.i731:                                ; preds = %fill_tile_info.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i730 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 10, i32 noundef %448) #8
  br label %vdpu_read_mask.exit.i.i734

vdpu_read_mask.exit.i.i734:                       ; preds = %do.end.i.i.i.i731, %fill_tile_info.exit.i.vdpu_read_mask.exit.i.i734_crit_edge
  %or.i.i.i732 = or i32 %448, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %450 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i733 = and i32 %450, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i733)
  %tobool.not.i.i118.i = icmp eq i32 %and.i3.i.i733, 0
  br i1 %tobool.not.i.i118.i, label %vdpu_read_mask.exit.i.i734.hantro_reg_write.exit.i735_crit_edge, label %do.end.i.i120.i

vdpu_read_mask.exit.i.i734.hantro_reg_write.exit.i735_crit_edge: ; preds = %vdpu_read_mask.exit.i.i734
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i735

do.end.i.i120.i:                                  ; preds = %vdpu_read_mask.exit.i.i734
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i.i732) #8
  br label %hantro_reg_write.exit.i735

hantro_reg_write.exit.i735:                       ; preds = %do.end.i.i120.i, %vdpu_read_mask.exit.i.i734.hantro_reg_write.exit.i735_crit_edge
  %451 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i732) #5
  %452 = ptrtoint ptr %dec_base.i.i.i.i726 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %dec_base.i.i.i.i726, align 8
  %add.ptr.i.i121.i = getelementptr i8, ptr %453, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121.i, i32 %451) #5, !srcloc !31
  br label %if.end36.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %454 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %12, align 8
  %conv.i122.i = zext i16 %455 to i32
  %add.i123.i = add nuw nsw i32 %conv.i122.i, 63
  %div2.i124.i = lshr i32 %add.i123.i, 6
  %conv1.i125.i = trunc i32 %div2.i124.i to i16
  %456 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 %conv1.i125.i, ptr %add.ptr.i, align 2
  %457 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %457)
  %458 = load i16, ptr %height.i, align 2
  %conv.i126.i = zext i16 %458 to i32
  %add.i127.i = add nuw nsw i32 %conv.i126.i, 63
  %div2.i128.i = lshr i32 %add.i127.i, 6
  %conv1.i129.i = trunc i32 %div2.i128.i to i16
  %arrayidx30.i = getelementptr i16, ptr %add.ptr.i, i32 1
  %459 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 %conv1.i129.i, ptr %arrayidx30.i, align 2
  %460 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i130.i = getelementptr inbounds %struct.hantro_dev, ptr %461, i32 0, i32 11
  %462 = ptrtoint ptr %dec_base.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dec_base.i.i.i130.i, align 8
  %add.ptr.i.i.i131.i = getelementptr i8, ptr %463, i32 40
  %464 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i131.i) #5, !srcloc !32
  %465 = tail call i32 @llvm.bswap.i32(i32 %464) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %466 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i132.i = and i32 %466, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i132.i)
  %tobool.not.i.i.i133.i = icmp eq i32 %and.i.i.i132.i, 0
  br i1 %tobool.not.i.i.i133.i, label %if.else.i.vdpu_read_mask.exit.i144.i_crit_edge, label %do.end.i.i.i136.i

if.else.i.vdpu_read_mask.exit.i144.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i144.i

do.end.i.i.i136.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i135.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 10, i32 noundef %465) #8
  br label %vdpu_read_mask.exit.i144.i

vdpu_read_mask.exit.i144.i:                       ; preds = %do.end.i.i.i136.i, %if.else.i.vdpu_read_mask.exit.i144.i_crit_edge
  %and.i.i141.i = and i32 %465, -3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %467 = load i32, ptr @hantro_debug, align 4
  %and.i3.i142.i = and i32 %467, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i142.i)
  %tobool.not.i.i143.i = icmp eq i32 %and.i3.i142.i, 0
  br i1 %tobool.not.i.i143.i, label %vdpu_read_mask.exit.i144.i.hantro_reg_write.exit149.i_crit_edge, label %do.end.i.i147.i

vdpu_read_mask.exit.i144.i.hantro_reg_write.exit149.i_crit_edge: ; preds = %vdpu_read_mask.exit.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit149.i

do.end.i.i147.i:                                  ; preds = %vdpu_read_mask.exit.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 10, i32 noundef %and.i.i141.i) #8
  br label %hantro_reg_write.exit149.i

hantro_reg_write.exit149.i:                       ; preds = %do.end.i.i147.i, %vdpu_read_mask.exit.i144.i.hantro_reg_write.exit149.i_crit_edge
  %468 = tail call i32 @llvm.bswap.i32(i32 %and.i.i141.i) #5
  %469 = ptrtoint ptr %dec_base.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %dec_base.i.i.i130.i, align 8
  %add.ptr.i.i148.i = getelementptr i8, ptr %470, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i148.i, i32 %468) #5, !srcloc !31
  br label %if.end36.i

if.end36.i:                                       ; preds = %hantro_reg_write.exit149.i, %hantro_reg_write.exit.i735
  %rows.0.i = phi i32 [ %shl.i, %hantro_reg_write.exit.i735 ], [ 1, %hantro_reg_write.exit149.i ]
  %cols.0.i = phi i32 [ %shl10.i, %hantro_reg_write.exit.i735 ], [ 1, %hantro_reg_write.exit149.i ]
  %471 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %ctx, align 8
  %variant.i736 = getelementptr inbounds %struct.hantro_dev, ptr %472, i32 0, i32 15
  %473 = ptrtoint ptr %variant.i736 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %variant.i736, align 8
  %legacy_regs.i737 = getelementptr inbounds %struct.hantro_variant, ptr %474, i32 0, i32 19
  %475 = ptrtoint ptr %legacy_regs.i737 to i32
  call void @__asan_load1_noabort(i32 %475)
  %bf.load.i738 = load i8, ptr %legacy_regs.i737, align 4
  %476 = and i8 %bf.load.i738, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %476)
  %tobool38.not.i = icmp eq i8 %476, 0
  %dec_base.i.i.i196.i = getelementptr inbounds %struct.hantro_dev, ptr %472, i32 0, i32 11
  %477 = ptrtoint ptr %dec_base.i.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %dec_base.i.i.i196.i, align 8
  %add.ptr.i.i.i197.i = getelementptr i8, ptr %478, i32 40
  %479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i197.i) #5
  %480 = tail call i32 @llvm.bswap.i32(i32 %479) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %481 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i198.i = and i32 %481, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i198.i)
  %tobool.not.i.i.i199.i = icmp eq i32 %and.i.i.i198.i, 0
  br i1 %tobool38.not.i, label %if.else50.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  br i1 %tobool.not.i.i.i199.i, label %if.then39.i.vdpu_read_mask.exit.i167.i_crit_edge, label %do.end.i.i.i156.i

if.then39.i.vdpu_read_mask.exit.i167.i_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i167.i

do.end.i.i.i156.i:                                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i155.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 10, i32 noundef %480) #8
  br label %vdpu_read_mask.exit.i167.i

vdpu_read_mask.exit.i167.i:                       ; preds = %do.end.i.i.i156.i, %if.then39.i.vdpu_read_mask.exit.i167.i_crit_edge
  %and.i.i161.i = and i32 %480, -32505857
  %and2.i.i162.i = shl i32 %cols.0.i, 20
  %shl4.i.i163.i = and i32 %and2.i.i162.i, 32505856
  %or.i.i164.i = or i32 %and.i.i161.i, %shl4.i.i163.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %482 = load i32, ptr @hantro_debug, align 4
  %and.i3.i165.i = and i32 %482, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i165.i)
  %tobool.not.i.i166.i = icmp eq i32 %and.i3.i165.i, 0
  br i1 %tobool.not.i.i166.i, label %vdpu_read_mask.exit.i167.i.hantro_reg_write.exit172.i_crit_edge, label %do.end.i.i170.i

vdpu_read_mask.exit.i167.i.hantro_reg_write.exit172.i_crit_edge: ; preds = %vdpu_read_mask.exit.i167.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit172.i

do.end.i.i170.i:                                  ; preds = %vdpu_read_mask.exit.i167.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i169.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i164.i) #8
  br label %hantro_reg_write.exit172.i

hantro_reg_write.exit172.i:                       ; preds = %do.end.i.i170.i, %vdpu_read_mask.exit.i167.i.hantro_reg_write.exit172.i_crit_edge
  %483 = tail call i32 @llvm.bswap.i32(i32 %or.i.i164.i) #5
  %484 = ptrtoint ptr %dec_base.i.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %dec_base.i.i.i196.i, align 8
  %add.ptr.i.i171.i = getelementptr i8, ptr %485, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i171.i, i32 %483) #5, !srcloc !31
  %486 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i173.i = getelementptr inbounds %struct.hantro_dev, ptr %487, i32 0, i32 11
  %488 = ptrtoint ptr %dec_base.i.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %dec_base.i.i.i173.i, align 8
  %add.ptr.i.i.i174.i = getelementptr i8, ptr %489, i32 40
  %490 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i174.i) #5, !srcloc !32
  %491 = tail call i32 @llvm.bswap.i32(i32 %490) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %492 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i175.i = and i32 %492, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i175.i)
  %tobool.not.i.i.i176.i = icmp eq i32 %and.i.i.i175.i, 0
  br i1 %tobool.not.i.i.i176.i, label %hantro_reg_write.exit172.i.vdpu_read_mask.exit.i190.i_crit_edge, label %do.end.i.i.i179.i

hantro_reg_write.exit172.i.vdpu_read_mask.exit.i190.i_crit_edge: ; preds = %hantro_reg_write.exit172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i190.i

do.end.i.i.i179.i:                                ; preds = %hantro_reg_write.exit172.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i178.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 10, i32 noundef %491) #8
  br label %vdpu_read_mask.exit.i190.i

vdpu_read_mask.exit.i190.i:                       ; preds = %do.end.i.i.i179.i, %hantro_reg_write.exit172.i.vdpu_read_mask.exit.i190.i_crit_edge
  %and.i.i184.i = and i32 %491, -1015809
  %and2.i.i185.i = shl i32 %rows.0.i, 15
  %shl4.i.i186.i = and i32 %and2.i.i185.i, 1015808
  %or.i.i187.i = or i32 %and.i.i184.i, %shl4.i.i186.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %493 = load i32, ptr @hantro_debug, align 4
  %and.i3.i188.i = and i32 %493, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i188.i)
  %tobool.not.i.i189.i = icmp eq i32 %and.i3.i188.i, 0
  br i1 %tobool.not.i.i189.i, label %vdpu_read_mask.exit.i190.i.hantro_reg_write.exit195.i_crit_edge, label %do.end.i.i193.i

vdpu_read_mask.exit.i190.i.hantro_reg_write.exit195.i_crit_edge: ; preds = %vdpu_read_mask.exit.i190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit195.i

do.end.i.i193.i:                                  ; preds = %vdpu_read_mask.exit.i190.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i192.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i187.i) #8
  br label %hantro_reg_write.exit195.i

hantro_reg_write.exit195.i:                       ; preds = %do.end.i.i193.i, %vdpu_read_mask.exit.i190.i.hantro_reg_write.exit195.i_crit_edge
  %494 = tail call i32 @llvm.bswap.i32(i32 %or.i.i187.i) #5
  %495 = ptrtoint ptr %dec_base.i.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %dec_base.i.i.i173.i, align 8
  %add.ptr.i.i194.i = getelementptr i8, ptr %496, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i194.i, i32 %494) #5, !srcloc !31
  br label %if.end61.i

if.else50.i:                                      ; preds = %if.end36.i
  br i1 %tobool.not.i.i.i199.i, label %if.else50.i.vdpu_read_mask.exit.i213.i_crit_edge, label %do.end.i.i.i202.i

if.else50.i.vdpu_read_mask.exit.i213.i_crit_edge: ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i213.i

do.end.i.i.i202.i:                                ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i201.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 10, i32 noundef %480) #8
  br label %vdpu_read_mask.exit.i213.i

vdpu_read_mask.exit.i213.i:                       ; preds = %do.end.i.i.i202.i, %if.else50.i.vdpu_read_mask.exit.i213.i_crit_edge
  %and.i.i207.i = and i32 %480, -16252929
  %and2.i.i208.i = shl i32 %cols.0.i, 19
  %shl4.i.i209.i = and i32 %and2.i.i208.i, 16252928
  %or.i.i210.i = or i32 %and.i.i207.i, %shl4.i.i209.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %497 = load i32, ptr @hantro_debug, align 4
  %and.i3.i211.i = and i32 %497, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i211.i)
  %tobool.not.i.i212.i = icmp eq i32 %and.i3.i211.i, 0
  br i1 %tobool.not.i.i212.i, label %vdpu_read_mask.exit.i213.i.hantro_reg_write.exit218.i_crit_edge, label %do.end.i.i216.i

vdpu_read_mask.exit.i213.i.hantro_reg_write.exit218.i_crit_edge: ; preds = %vdpu_read_mask.exit.i213.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit218.i

do.end.i.i216.i:                                  ; preds = %vdpu_read_mask.exit.i213.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i215.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i210.i) #8
  br label %hantro_reg_write.exit218.i

hantro_reg_write.exit218.i:                       ; preds = %do.end.i.i216.i, %vdpu_read_mask.exit.i213.i.hantro_reg_write.exit218.i_crit_edge
  %498 = tail call i32 @llvm.bswap.i32(i32 %or.i.i210.i) #5
  %499 = ptrtoint ptr %dec_base.i.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %dec_base.i.i.i196.i, align 8
  %add.ptr.i.i217.i = getelementptr i8, ptr %500, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i217.i, i32 %498) #5, !srcloc !31
  %501 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i219.i = getelementptr inbounds %struct.hantro_dev, ptr %502, i32 0, i32 11
  %503 = ptrtoint ptr %dec_base.i.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %dec_base.i.i.i219.i, align 8
  %add.ptr.i.i.i220.i = getelementptr i8, ptr %504, i32 40
  %505 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i220.i) #5, !srcloc !32
  %506 = tail call i32 @llvm.bswap.i32(i32 %505) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %507 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i221.i = and i32 %507, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i221.i)
  %tobool.not.i.i.i222.i = icmp eq i32 %and.i.i.i221.i, 0
  br i1 %tobool.not.i.i.i222.i, label %hantro_reg_write.exit218.i.vdpu_read_mask.exit.i236.i_crit_edge, label %do.end.i.i.i225.i

hantro_reg_write.exit218.i.vdpu_read_mask.exit.i236.i_crit_edge: ; preds = %hantro_reg_write.exit218.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i236.i

do.end.i.i.i225.i:                                ; preds = %hantro_reg_write.exit218.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i224.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 10, i32 noundef %506) #8
  br label %vdpu_read_mask.exit.i236.i

vdpu_read_mask.exit.i236.i:                       ; preds = %do.end.i.i.i225.i, %hantro_reg_write.exit218.i.vdpu_read_mask.exit.i236.i_crit_edge
  %and.i.i230.i = and i32 %506, -507905
  %and2.i.i231.i = shl i32 %rows.0.i, 14
  %shl4.i.i232.i = and i32 %and2.i.i231.i, 507904
  %or.i.i233.i = or i32 %and.i.i230.i, %shl4.i.i232.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %508 = load i32, ptr @hantro_debug, align 4
  %and.i3.i234.i = and i32 %508, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i234.i)
  %tobool.not.i.i235.i = icmp eq i32 %and.i3.i234.i, 0
  br i1 %tobool.not.i.i235.i, label %vdpu_read_mask.exit.i236.i.hantro_reg_write.exit241.i_crit_edge, label %do.end.i.i239.i

vdpu_read_mask.exit.i236.i.hantro_reg_write.exit241.i_crit_edge: ; preds = %vdpu_read_mask.exit.i236.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit241.i

do.end.i.i239.i:                                  ; preds = %vdpu_read_mask.exit.i236.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i238.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 10, i32 noundef %or.i.i233.i) #8
  br label %hantro_reg_write.exit241.i

hantro_reg_write.exit241.i:                       ; preds = %do.end.i.i239.i, %vdpu_read_mask.exit.i236.i.hantro_reg_write.exit241.i_crit_edge
  %509 = tail call i32 @llvm.bswap.i32(i32 %or.i.i233.i) #5
  %510 = ptrtoint ptr %dec_base.i.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %dec_base.i.i.i219.i, align 8
  %add.ptr.i.i240.i = getelementptr i8, ptr %511, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i240.i, i32 %509) #5, !srcloc !31
  br label %if.end61.i

if.end61.i:                                       ; preds = %hantro_reg_write.exit241.i, %hantro_reg_write.exit195.i
  %dma62.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %512 = ptrtoint ptr %dma62.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %dma62.i, align 4
  %514 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %516 = load i32, ptr @hantro_debug, align 4
  %and.i.i242.i = and i32 %516, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i242.i)
  %tobool.not.i.i243.i = icmp eq i32 %and.i.i242.i, 0
  br i1 %tobool.not.i.i243.i, label %if.end61.i.hantro_write_addr.exit248.i_crit_edge, label %do.end.i.i245.i

if.end61.i.hantro_write_addr.exit248.i_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit248.i

do.end.i.i245.i:                                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i244.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 179, i32 noundef %513) #8
  br label %hantro_write_addr.exit248.i

hantro_write_addr.exit248.i:                      ; preds = %do.end.i.i245.i, %if.end61.i.hantro_write_addr.exit248.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %517 = tail call i32 @llvm.bswap.i32(i32 %513) #5
  %dec_base.i.i246.i = getelementptr inbounds %struct.hantro_dev, ptr %515, i32 0, i32 11
  %518 = ptrtoint ptr %dec_base.i.i246.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %dec_base.i.i246.i, align 8
  %add.ptr.i.i247.i = getelementptr i8, ptr %519, i32 716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i247.i, i32 %517) #5, !srcloc !31
  %520 = ptrtoint ptr %dma62.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %dma62.i, align 4
  %bsd_ctrl_offset.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 8
  %522 = ptrtoint ptr %bsd_ctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %bsd_ctrl_offset.i, align 8
  %add65.i = add i32 %523, %521
  %524 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %526 = load i32, ptr @hantro_debug, align 4
  %and.i.i249.i = and i32 %526, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i249.i)
  %tobool.not.i.i250.i = icmp eq i32 %and.i.i249.i, 0
  br i1 %tobool.not.i.i250.i, label %hantro_write_addr.exit248.i.config_tiles.exit_crit_edge, label %do.end.i.i252.i

hantro_write_addr.exit248.i.config_tiles.exit_crit_edge: ; preds = %hantro_write_addr.exit248.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_tiles.exit

do.end.i.i252.i:                                  ; preds = %hantro_write_addr.exit248.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i251.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 183, i32 noundef %add65.i) #8
  br label %config_tiles.exit

config_tiles.exit:                                ; preds = %do.end.i.i252.i, %hantro_write_addr.exit248.i.config_tiles.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %527 = tail call i32 @llvm.bswap.i32(i32 %add65.i) #5
  %dec_base.i.i253.i = getelementptr inbounds %struct.hantro_dev, ptr %525, i32 0, i32 11
  %528 = ptrtoint ptr %dec_base.i.i253.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %dec_base.i.i253.i, align 8
  %add.ptr.i.i254.i = getelementptr i8, ptr %529, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i254.i, i32 %527) #5, !srcloc !31
  %seg1.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2
  %flags.i739 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2, i32 4
  %530 = ptrtoint ptr %flags.i739 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %flags.i739, align 2
  %532 = and i8 %531, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %532)
  %tobool.not.i740 = icmp eq i8 %532, 0
  %533 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i741 = getelementptr inbounds %struct.hantro_dev, ptr %534, i32 0, i32 11
  %535 = ptrtoint ptr %dec_base.i.i.i.i741 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %dec_base.i.i.i.i741, align 8
  %add.ptr.i.i.i.i742 = getelementptr i8, ptr %536, i32 52
  %537 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i742) #5, !srcloc !32
  %538 = tail call i32 @llvm.bswap.i32(i32 %537) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %539 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i743 = and i32 %539, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i743)
  %tobool.not.i.i.i.i744 = icmp eq i32 %and.i.i.i.i743, 0
  br i1 %tobool.not.i.i.i.i744, label %config_tiles.exit.vdpu_read_mask.exit.i.i752_crit_edge, label %do.end.i.i.i.i746

config_tiles.exit.vdpu_read_mask.exit.i.i752_crit_edge: ; preds = %config_tiles.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i752

do.end.i.i.i.i746:                                ; preds = %config_tiles.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i745 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %538) #8
  br label %vdpu_read_mask.exit.i.i752

vdpu_read_mask.exit.i.i752:                       ; preds = %do.end.i.i.i.i746, %config_tiles.exit.vdpu_read_mask.exit.i.i752_crit_edge
  %and.i.i.i747 = and i32 %538, -2
  %and2.i.i.i748 = zext i8 %532 to i32
  %or.i.i.i749 = or i32 %and.i.i.i747, %and2.i.i.i748
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %540 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i750 = and i32 %540, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i750)
  %tobool.not.i.i.i751 = icmp eq i32 %and.i3.i.i750, 0
  br i1 %tobool.not.i.i.i751, label %vdpu_read_mask.exit.i.i752.hantro_reg_write.exit.i756_crit_edge, label %do.end.i.i.i754

vdpu_read_mask.exit.i.i752.hantro_reg_write.exit.i756_crit_edge: ; preds = %vdpu_read_mask.exit.i.i752
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i756

do.end.i.i.i754:                                  ; preds = %vdpu_read_mask.exit.i.i752
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i753 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i.i749) #8
  br label %hantro_reg_write.exit.i756

hantro_reg_write.exit.i756:                       ; preds = %do.end.i.i.i754, %vdpu_read_mask.exit.i.i752.hantro_reg_write.exit.i756_crit_edge
  %541 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i749) #5
  %542 = ptrtoint ptr %dec_base.i.i.i.i741 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %dec_base.i.i.i.i741, align 8
  %add.ptr.i.i.i755 = getelementptr i8, ptr %543, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i755, i32 %541) #5, !srcloc !31
  %544 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %ctx, align 8
  %546 = ptrtoint ptr %flags.i739 to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %flags.i739, align 2
  %dec_base.i.i.i216.i = getelementptr inbounds %struct.hantro_dev, ptr %545, i32 0, i32 11
  %548 = ptrtoint ptr %dec_base.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dec_base.i.i.i216.i, align 8
  %add.ptr.i.i.i217.i = getelementptr i8, ptr %549, i32 52
  %550 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i217.i) #5, !srcloc !32
  %551 = tail call i32 @llvm.bswap.i32(i32 %550) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %552 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i218.i = and i32 %552, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i218.i)
  %tobool.not.i.i.i219.i = icmp eq i32 %and.i.i.i218.i, 0
  br i1 %tobool.not.i.i.i219.i, label %hantro_reg_write.exit.i756.vdpu_read_mask.exit.i233.i_crit_edge, label %do.end.i.i.i222.i

hantro_reg_write.exit.i756.vdpu_read_mask.exit.i233.i_crit_edge: ; preds = %hantro_reg_write.exit.i756
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i233.i

do.end.i.i.i222.i:                                ; preds = %hantro_reg_write.exit.i756
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i221.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %551) #8
  br label %vdpu_read_mask.exit.i233.i

vdpu_read_mask.exit.i233.i:                       ; preds = %do.end.i.i.i222.i, %hantro_reg_write.exit.i756.vdpu_read_mask.exit.i233.i_crit_edge
  %and.i.i227.i = and i32 %551, -3
  %553 = and i8 %547, 2
  %shl4.i.i229.i = zext i8 %553 to i32
  %or.i.i230.i = or i32 %and.i.i227.i, %shl4.i.i229.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %554 = load i32, ptr @hantro_debug, align 4
  %and.i3.i231.i = and i32 %554, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i231.i)
  %tobool.not.i.i232.i = icmp eq i32 %and.i3.i231.i, 0
  br i1 %tobool.not.i.i232.i, label %vdpu_read_mask.exit.i233.i.hantro_reg_write.exit238.i_crit_edge, label %do.end.i.i236.i

vdpu_read_mask.exit.i233.i.hantro_reg_write.exit238.i_crit_edge: ; preds = %vdpu_read_mask.exit.i233.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit238.i

do.end.i.i236.i:                                  ; preds = %vdpu_read_mask.exit.i233.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i235.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i230.i) #8
  br label %hantro_reg_write.exit238.i

hantro_reg_write.exit238.i:                       ; preds = %do.end.i.i236.i, %vdpu_read_mask.exit.i233.i.hantro_reg_write.exit238.i_crit_edge
  %555 = tail call i32 @llvm.bswap.i32(i32 %or.i.i230.i) #5
  %556 = ptrtoint ptr %dec_base.i.i.i216.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %dec_base.i.i.i216.i, align 8
  %add.ptr.i.i237.i = getelementptr i8, ptr %557, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i237.i, i32 %555) #5, !srcloc !31
  %558 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %ctx, align 8
  %560 = ptrtoint ptr %flags.i739 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %flags.i739, align 2
  %dec_base.i.i.i239.i = getelementptr inbounds %struct.hantro_dev, ptr %559, i32 0, i32 11
  %562 = ptrtoint ptr %dec_base.i.i.i239.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %dec_base.i.i.i239.i, align 8
  %add.ptr.i.i.i240.i = getelementptr i8, ptr %563, i32 52
  %564 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i240.i) #5, !srcloc !32
  %565 = tail call i32 @llvm.bswap.i32(i32 %564) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %566 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i241.i = and i32 %566, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i241.i)
  %tobool.not.i.i.i242.i = icmp eq i32 %and.i.i.i241.i, 0
  br i1 %tobool.not.i.i.i242.i, label %hantro_reg_write.exit238.i.vdpu_read_mask.exit.i256.i_crit_edge, label %do.end.i.i.i245.i

hantro_reg_write.exit238.i.vdpu_read_mask.exit.i256.i_crit_edge: ; preds = %hantro_reg_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i256.i

do.end.i.i.i245.i:                                ; preds = %hantro_reg_write.exit238.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i244.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %565) #8
  br label %vdpu_read_mask.exit.i256.i

vdpu_read_mask.exit.i256.i:                       ; preds = %do.end.i.i.i245.i, %hantro_reg_write.exit238.i.vdpu_read_mask.exit.i256.i_crit_edge
  %and.i.i250.i = and i32 %565, -5
  %567 = and i8 %561, 4
  %shl4.i.i252.i = zext i8 %567 to i32
  %or.i.i253.i = or i32 %and.i.i250.i, %shl4.i.i252.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %568 = load i32, ptr @hantro_debug, align 4
  %and.i3.i254.i = and i32 %568, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i254.i)
  %tobool.not.i.i255.i = icmp eq i32 %and.i3.i254.i, 0
  br i1 %tobool.not.i.i255.i, label %vdpu_read_mask.exit.i256.i.hantro_reg_write.exit261.i_crit_edge, label %do.end.i.i259.i

vdpu_read_mask.exit.i256.i.hantro_reg_write.exit261.i_crit_edge: ; preds = %vdpu_read_mask.exit.i256.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit261.i

do.end.i.i259.i:                                  ; preds = %vdpu_read_mask.exit.i256.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i258.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i253.i) #8
  br label %hantro_reg_write.exit261.i

hantro_reg_write.exit261.i:                       ; preds = %do.end.i.i259.i, %vdpu_read_mask.exit.i256.i.hantro_reg_write.exit261.i_crit_edge
  %569 = tail call i32 @llvm.bswap.i32(i32 %or.i.i253.i) #5
  %570 = ptrtoint ptr %dec_base.i.i.i239.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %dec_base.i.i.i239.i, align 8
  %add.ptr.i.i260.i = getelementptr i8, ptr %571, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i260.i, i32 %569) #5, !srcloc !31
  %572 = ptrtoint ptr %flags.i739 to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %flags.i739, align 2
  %conv33.i = zext i8 %573 to i32
  %and34.i = and i32 %conv33.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  %and43.i = and i32 %conv33.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %quant.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 1
  %feature_enabled.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 19
  %level.i = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %dec_params, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %hantro_reg_write.exit441.i.for.body.i_crit_edge, %hantro_reg_write.exit261.i
  %segid.0447.i = phi i32 [ 0, %hantro_reg_write.exit261.i ], [ %inc.i, %hantro_reg_write.exit441.i.for.body.i_crit_edge ]
  %574 = ptrtoint ptr %quant.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %quant.i, align 8
  %conv51.i = zext i8 %575 to i16
  br i1 %tobool.not.i740, label %for.body.i.if.end62.i_crit_edge, label %if.then.i757

for.body.i.if.end62.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.then.i757:                                     ; preds = %for.body.i
  br i1 %tobool44.not.i, label %if.then.i757.if.end.i759_crit_edge, label %if.then54.i

if.then.i757.if.end.i759_crit_edge:               ; preds = %if.then.i757
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i759

if.then54.i:                                      ; preds = %if.then.i757
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i.i = getelementptr [8 x [4 x i16]], ptr %seg1.i, i32 0, i32 %segid.0447.i, i32 0
  %576 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %576)
  %577 = load i16, ptr %arrayidx1.i.i, align 2
  %arrayidx4.i.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 20, i32 %segid.0447.i, i32 0
  %578 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store2_noabort(i32 %578)
  store i16 %577, ptr %arrayidx4.i.i, align 2
  %arrayidx6.i.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 19, i32 %segid.0447.i
  %579 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx6.i.i, align 1
  %conv8.i.i = and i8 %580, -2
  store i8 %conv8.i.i, ptr %arrayidx6.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2, i32 1, i32 %segid.0447.i
  %581 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %arrayidx10.i.i, align 1
  %583 = and i8 %582, 1
  %conv17.i.i = or i8 %583, %conv8.i.i
  store i8 %conv17.i.i, ptr %arrayidx6.i.i, align 1
  br label %if.end.i759

if.end.i759:                                      ; preds = %if.then54.i, %if.then.i757.if.end.i759_crit_edge
  %call.i758 = tail call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i, i32 noundef 0, i32 noundef %segid.0447.i) #5
  br i1 %call.i758, label %if.then57.i, label %if.end.i759.if.end62.i_crit_edge

if.end.i759.if.end62.i_crit_edge:                 ; preds = %if.end.i759
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.end.i759
  %arrayidx.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 20, i32 %segid.0447.i
  %584 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %arrayidx.i, align 2
  br i1 %tobool35.not.i, label %if.end.i.i761, label %if.then57.i.if.end62.i_crit_edge

if.then57.i.if.end62.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.end.i.i761:                                    ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i760 = add i16 %585, %conv51.i
  %586 = tail call i16 @llvm.smin.i16(i16 %add.i.i760, i16 255) #5
  %587 = tail call i16 @llvm.smax.i16(i16 %586, i16 0) #5
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end.i.i761, %if.then57.i.if.end62.i_crit_edge, %if.end.i759.if.end62.i_crit_edge, %for.body.i.if.end62.i_crit_edge
  %feat_val.0.i = phi i16 [ %conv51.i, %if.end.i759.if.end62.i_crit_edge ], [ %conv51.i, %for.body.i.if.end62.i_crit_edge ], [ %587, %if.end.i.i761 ], [ %585, %if.then57.i.if.end62.i_crit_edge ]
  %588 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %ctx, align 8
  %arrayidx64.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i
  %conv67.i = sext i16 %feat_val.0.i to i32
  %590 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %arrayidx64.i, align 4
  %dec_base.i.i.i262.i = getelementptr inbounds %struct.hantro_dev, ptr %589, i32 0, i32 11
  %592 = ptrtoint ptr %dec_base.i.i.i262.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %dec_base.i.i.i262.i, align 8
  %add.ptr.i.i.i263.i = getelementptr i8, ptr %593, i32 %591
  %594 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i263.i) #5, !srcloc !32
  %595 = tail call i32 @llvm.bswap.i32(i32 %594) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %596 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i264.i = and i32 %596, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i264.i)
  %tobool.not.i.i.i265.i = icmp eq i32 %and.i.i.i264.i, 0
  br i1 %tobool.not.i.i.i265.i, label %if.end62.i.vdpu_read_mask.exit.i279.i_crit_edge, label %do.end.i.i.i268.i

if.end62.i.vdpu_read_mask.exit.i279.i_crit_edge:  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i279.i

do.end.i.i.i268.i:                                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i266.i = lshr i32 %591, 2
  %call4.i.i.i267.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i266.i, i32 noundef %595) #8
  br label %vdpu_read_mask.exit.i279.i

vdpu_read_mask.exit.i279.i:                       ; preds = %do.end.i.i.i268.i, %if.end62.i.vdpu_read_mask.exit.i279.i_crit_edge
  %mask.i.i269.i = getelementptr inbounds %struct.hantro_reg, ptr %arrayidx64.i, i32 0, i32 2
  %597 = ptrtoint ptr %mask.i.i269.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %mask.i.i269.i, align 4
  %shift.i.i270.i = getelementptr inbounds %struct.hantro_reg, ptr %arrayidx64.i, i32 0, i32 1
  %599 = ptrtoint ptr %shift.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %shift.i.i270.i, align 4
  %shl.i.i271.i = shl i32 %598, %600
  %neg.i.i272.i = xor i32 %shl.i.i271.i, -1
  %and.i.i273.i = and i32 %595, %neg.i.i272.i
  %and2.i.i274.i = and i32 %598, %conv67.i
  %shl4.i.i275.i = shl i32 %and2.i.i274.i, %600
  %or.i.i276.i = or i32 %and.i.i273.i, %shl4.i.i275.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %601 = load i32, ptr @hantro_debug, align 4
  %and.i3.i277.i = and i32 %601, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i277.i)
  %tobool.not.i.i278.i = icmp eq i32 %and.i3.i277.i, 0
  br i1 %tobool.not.i.i278.i, label %vdpu_read_mask.exit.i279.i.hantro_reg_write.exit284.i_crit_edge, label %do.end.i.i282.i

vdpu_read_mask.exit.i279.i.hantro_reg_write.exit284.i_crit_edge: ; preds = %vdpu_read_mask.exit.i279.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit284.i

do.end.i.i282.i:                                  ; preds = %vdpu_read_mask.exit.i279.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i280.i = lshr i32 %591, 2
  %call.i.i281.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i280.i, i32 noundef %or.i.i276.i) #8
  br label %hantro_reg_write.exit284.i

hantro_reg_write.exit284.i:                       ; preds = %do.end.i.i282.i, %vdpu_read_mask.exit.i279.i.hantro_reg_write.exit284.i_crit_edge
  %602 = tail call i32 @llvm.bswap.i32(i32 %or.i.i276.i) #5
  %603 = ptrtoint ptr %dec_base.i.i.i262.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %dec_base.i.i.i262.i, align 8
  %add.ptr.i.i283.i = getelementptr i8, ptr %604, i32 %591
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i283.i, i32 %602) #5, !srcloc !31
  %605 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %level.i, align 2
  %conv68.i = zext i8 %606 to i16
  br i1 %tobool.not.i740, label %if.end115.critedge.i, label %if.then70.i

if.then70.i:                                      ; preds = %hantro_reg_write.exit284.i
  br i1 %tobool44.not.i, label %if.then70.i.if.end74.i_crit_edge, label %if.then72.i

if.then70.i.if.end74.i_crit_edge:                 ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74.i

if.then72.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i285.i = getelementptr [8 x [4 x i16]], ptr %seg1.i, i32 0, i32 %segid.0447.i, i32 1
  %607 = ptrtoint ptr %arrayidx1.i285.i to i32
  call void @__asan_load2_noabort(i32 %607)
  %608 = load i16, ptr %arrayidx1.i285.i, align 2
  %arrayidx4.i286.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 20, i32 %segid.0447.i, i32 1
  %609 = ptrtoint ptr %arrayidx4.i286.i to i32
  call void @__asan_store2_noabort(i32 %609)
  store i16 %608, ptr %arrayidx4.i286.i, align 2
  %arrayidx6.i287.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 19, i32 %segid.0447.i
  %610 = ptrtoint ptr %arrayidx6.i287.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %arrayidx6.i287.i, align 1
  %conv8.i288.i = and i8 %611, -3
  store i8 %conv8.i288.i, ptr %arrayidx6.i287.i, align 1
  %arrayidx10.i289.i = getelementptr %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2, i32 1, i32 %segid.0447.i
  %612 = ptrtoint ptr %arrayidx10.i289.i to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %arrayidx10.i289.i, align 1
  %614 = and i8 %613, 2
  %conv17.i290.i = or i8 %614, %conv8.i288.i
  store i8 %conv17.i290.i, ptr %arrayidx6.i287.i, align 1
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then72.i, %if.then70.i.if.end74.i_crit_edge
  %call78.i = tail call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i, i32 noundef 1, i32 noundef %segid.0447.i) #5
  br i1 %call78.i, label %if.then79.i, label %if.then94.critedge.i

if.then79.i:                                      ; preds = %if.end74.i
  %arrayidx83.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 20, i32 %segid.0447.i, i32 1
  %615 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load2_noabort(i32 %615)
  %616 = load i16, ptr %arrayidx83.i, align 2
  br i1 %tobool35.not.i, label %if.end.i292.i, label %if.then79.i.feat_val_clip3.exit294.i_crit_edge

if.then79.i.feat_val_clip3.exit294.i_crit_edge:   ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %feat_val_clip3.exit294.i

if.end.i292.i:                                    ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i291.i = add i16 %616, %conv68.i
  %617 = tail call i16 @llvm.smin.i16(i16 %add.i291.i, i16 255) #5
  %618 = tail call i16 @llvm.smax.i16(i16 %617, i16 0) #5
  br label %feat_val_clip3.exit294.i

feat_val_clip3.exit294.i:                         ; preds = %if.end.i292.i, %if.then79.i.feat_val_clip3.exit294.i_crit_edge
  %retval.0.i293.i = phi i16 [ %618, %if.end.i292.i ], [ %616, %if.then79.i.feat_val_clip3.exit294.i_crit_edge ]
  %619 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %ctx, align 8
  %arrayidx91.c212.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1
  %conv92.c213.i = sext i16 %retval.0.i293.i to i32
  %621 = ptrtoint ptr %arrayidx91.c212.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %arrayidx91.c212.i, align 4
  %dec_base.i.i.i295.i = getelementptr inbounds %struct.hantro_dev, ptr %620, i32 0, i32 11
  %623 = ptrtoint ptr %dec_base.i.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %dec_base.i.i.i295.i, align 8
  %add.ptr.i.i.i296.i = getelementptr i8, ptr %624, i32 %622
  %625 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i296.i) #5, !srcloc !32
  %626 = tail call i32 @llvm.bswap.i32(i32 %625) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %627 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i297.i = and i32 %627, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i297.i)
  %tobool.not.i.i.i298.i = icmp eq i32 %and.i.i.i297.i, 0
  br i1 %tobool.not.i.i.i298.i, label %feat_val_clip3.exit294.i.vdpu_read_mask.exit.i312.i_crit_edge, label %do.end.i.i.i301.i

feat_val_clip3.exit294.i.vdpu_read_mask.exit.i312.i_crit_edge: ; preds = %feat_val_clip3.exit294.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i312.i

do.end.i.i.i301.i:                                ; preds = %feat_val_clip3.exit294.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i299.i = lshr i32 %622, 2
  %call4.i.i.i300.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i299.i, i32 noundef %626) #8
  br label %vdpu_read_mask.exit.i312.i

vdpu_read_mask.exit.i312.i:                       ; preds = %do.end.i.i.i301.i, %feat_val_clip3.exit294.i.vdpu_read_mask.exit.i312.i_crit_edge
  %mask.i.i302.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1, i32 2
  %628 = ptrtoint ptr %mask.i.i302.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %mask.i.i302.i, align 4
  %shift.i.i303.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1, i32 1
  %630 = ptrtoint ptr %shift.i.i303.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %shift.i.i303.i, align 4
  %shl.i.i304.i = shl i32 %629, %631
  %neg.i.i305.i = xor i32 %shl.i.i304.i, -1
  %and.i.i306.i = and i32 %626, %neg.i.i305.i
  %and2.i.i307.i = and i32 %629, %conv92.c213.i
  %shl4.i.i308.i = shl i32 %and2.i.i307.i, %631
  %or.i.i309.i = or i32 %and.i.i306.i, %shl4.i.i308.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %632 = load i32, ptr @hantro_debug, align 4
  %and.i3.i310.i = and i32 %632, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i310.i)
  %tobool.not.i.i311.i = icmp eq i32 %and.i3.i310.i, 0
  br i1 %tobool.not.i.i311.i, label %vdpu_read_mask.exit.i312.i.hantro_reg_write.exit317.i_crit_edge, label %do.end.i.i315.i

vdpu_read_mask.exit.i312.i.hantro_reg_write.exit317.i_crit_edge: ; preds = %vdpu_read_mask.exit.i312.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit317.i

do.end.i.i315.i:                                  ; preds = %vdpu_read_mask.exit.i312.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i313.i = lshr i32 %622, 2
  %call.i.i314.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i313.i, i32 noundef %or.i.i309.i) #8
  br label %hantro_reg_write.exit317.i

hantro_reg_write.exit317.i:                       ; preds = %do.end.i.i315.i, %vdpu_read_mask.exit.i312.i.hantro_reg_write.exit317.i_crit_edge
  %633 = tail call i32 @llvm.bswap.i32(i32 %or.i.i309.i) #5
  %634 = ptrtoint ptr %dec_base.i.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %dec_base.i.i.i295.i, align 8
  %add.ptr.i.i316.i = getelementptr i8, ptr %635, i32 %622
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i316.i, i32 %633) #5, !srcloc !31
  br label %if.then94.i

if.then94.critedge.i:                             ; preds = %if.end74.i
  %636 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %ctx, align 8
  %arrayidx91.c.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1
  %conv92.c446.i = zext i8 %606 to i32
  %638 = ptrtoint ptr %arrayidx91.c.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %arrayidx91.c.i, align 4
  %dec_base.i.i.i318.i = getelementptr inbounds %struct.hantro_dev, ptr %637, i32 0, i32 11
  %640 = ptrtoint ptr %dec_base.i.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %dec_base.i.i.i318.i, align 8
  %add.ptr.i.i.i319.i = getelementptr i8, ptr %641, i32 %639
  %642 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i319.i) #5, !srcloc !32
  %643 = tail call i32 @llvm.bswap.i32(i32 %642) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %644 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i320.i = and i32 %644, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i320.i)
  %tobool.not.i.i.i321.i = icmp eq i32 %and.i.i.i320.i, 0
  br i1 %tobool.not.i.i.i321.i, label %if.then94.critedge.i.vdpu_read_mask.exit.i335.i_crit_edge, label %do.end.i.i.i324.i

if.then94.critedge.i.vdpu_read_mask.exit.i335.i_crit_edge: ; preds = %if.then94.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i335.i

do.end.i.i.i324.i:                                ; preds = %if.then94.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i322.i = lshr i32 %639, 2
  %call4.i.i.i323.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i322.i, i32 noundef %643) #8
  br label %vdpu_read_mask.exit.i335.i

vdpu_read_mask.exit.i335.i:                       ; preds = %do.end.i.i.i324.i, %if.then94.critedge.i.vdpu_read_mask.exit.i335.i_crit_edge
  %mask.i.i325.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1, i32 2
  %645 = ptrtoint ptr %mask.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %mask.i.i325.i, align 4
  %shift.i.i326.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1, i32 1
  %647 = ptrtoint ptr %shift.i.i326.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %shift.i.i326.i, align 4
  %shl.i.i327.i = shl i32 %646, %648
  %neg.i.i328.i = xor i32 %shl.i.i327.i, -1
  %and.i.i329.i = and i32 %643, %neg.i.i328.i
  %and2.i.i330.i = and i32 %646, %conv92.c446.i
  %shl4.i.i331.i = shl i32 %and2.i.i330.i, %648
  %or.i.i332.i = or i32 %and.i.i329.i, %shl4.i.i331.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %649 = load i32, ptr @hantro_debug, align 4
  %and.i3.i333.i = and i32 %649, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i333.i)
  %tobool.not.i.i334.i = icmp eq i32 %and.i3.i333.i, 0
  br i1 %tobool.not.i.i334.i, label %vdpu_read_mask.exit.i335.i.hantro_reg_write.exit340.i_crit_edge, label %do.end.i.i338.i

vdpu_read_mask.exit.i335.i.hantro_reg_write.exit340.i_crit_edge: ; preds = %vdpu_read_mask.exit.i335.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit340.i

do.end.i.i338.i:                                  ; preds = %vdpu_read_mask.exit.i335.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i336.i = lshr i32 %639, 2
  %call.i.i337.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i336.i, i32 noundef %or.i.i332.i) #8
  br label %hantro_reg_write.exit340.i

hantro_reg_write.exit340.i:                       ; preds = %do.end.i.i338.i, %vdpu_read_mask.exit.i335.i.hantro_reg_write.exit340.i_crit_edge
  %650 = tail call i32 @llvm.bswap.i32(i32 %or.i.i332.i) #5
  %651 = ptrtoint ptr %dec_base.i.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %dec_base.i.i.i318.i, align 8
  %add.ptr.i.i339.i = getelementptr i8, ptr %652, i32 %639
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i339.i, i32 %650) #5, !srcloc !31
  br label %if.then94.i

if.then94.i:                                      ; preds = %hantro_reg_write.exit340.i, %hantro_reg_write.exit317.i
  br i1 %tobool44.not.i, label %if.then94.i.if.end98.i_crit_edge, label %if.then96.i

if.then94.i.if.end98.i_crit_edge:                 ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98.i

if.then96.i:                                      ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i341.i = getelementptr [8 x [4 x i16]], ptr %seg1.i, i32 0, i32 %segid.0447.i, i32 2
  %653 = ptrtoint ptr %arrayidx1.i341.i to i32
  call void @__asan_load2_noabort(i32 %653)
  %654 = load i16, ptr %arrayidx1.i341.i, align 2
  %arrayidx4.i342.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 20, i32 %segid.0447.i, i32 2
  %655 = ptrtoint ptr %arrayidx4.i342.i to i32
  call void @__asan_store2_noabort(i32 %655)
  store i16 %654, ptr %arrayidx4.i342.i, align 2
  %arrayidx6.i343.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 19, i32 %segid.0447.i
  %656 = ptrtoint ptr %arrayidx6.i343.i to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %arrayidx6.i343.i, align 1
  %conv8.i344.i = and i8 %657, -5
  store i8 %conv8.i344.i, ptr %arrayidx6.i343.i, align 1
  %arrayidx10.i345.i = getelementptr %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2, i32 1, i32 %segid.0447.i
  %658 = ptrtoint ptr %arrayidx10.i345.i to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %arrayidx10.i345.i, align 1
  %660 = and i8 %659, 4
  %conv17.i346.i = or i8 %660, %conv8.i344.i
  store i8 %conv17.i346.i, ptr %arrayidx6.i343.i, align 1
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then96.i, %if.then94.i.if.end98.i_crit_edge
  %661 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %flags.i, align 8
  %and100.i = and i32 %662, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %land.lhs.true.i, label %if.end98.i.if.end115.i_crit_edge

if.end98.i.if.end115.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.i

land.lhs.true.i:                                  ; preds = %if.end98.i
  %call105.i = tail call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i, i32 noundef 2, i32 noundef %segid.0447.i) #5
  br i1 %call105.i, label %if.then107.i, label %land.lhs.true.i.if.end115.i_crit_edge

land.lhs.true.i.if.end115.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.i

if.then107.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx111.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 20, i32 %segid.0447.i, i32 2
  %663 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load2_noabort(i32 %663)
  %664 = load i16, ptr %arrayidx111.i, align 2
  %conv112450.i = zext i16 %664 to i32
  %add.i762 = add nuw nsw i32 %conv112450.i, 1
  br label %if.end115.i

if.end115.critedge.i:                             ; preds = %hantro_reg_write.exit284.i
  %665 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %ctx, align 8
  %arrayidx91.c214.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1
  %conv92.c215445.i = zext i8 %606 to i32
  %667 = ptrtoint ptr %arrayidx91.c214.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %arrayidx91.c214.i, align 4
  %dec_base.i.i.i347.i = getelementptr inbounds %struct.hantro_dev, ptr %666, i32 0, i32 11
  %669 = ptrtoint ptr %dec_base.i.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %dec_base.i.i.i347.i, align 8
  %add.ptr.i.i.i348.i = getelementptr i8, ptr %670, i32 %668
  %671 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i348.i) #5, !srcloc !32
  %672 = tail call i32 @llvm.bswap.i32(i32 %671) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %673 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i349.i = and i32 %673, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i349.i)
  %tobool.not.i.i.i350.i = icmp eq i32 %and.i.i.i349.i, 0
  br i1 %tobool.not.i.i.i350.i, label %if.end115.critedge.i.vdpu_read_mask.exit.i364.i_crit_edge, label %do.end.i.i.i353.i

if.end115.critedge.i.vdpu_read_mask.exit.i364.i_crit_edge: ; preds = %if.end115.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i364.i

do.end.i.i.i353.i:                                ; preds = %if.end115.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i351.i = lshr i32 %668, 2
  %call4.i.i.i352.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i351.i, i32 noundef %672) #8
  br label %vdpu_read_mask.exit.i364.i

vdpu_read_mask.exit.i364.i:                       ; preds = %do.end.i.i.i353.i, %if.end115.critedge.i.vdpu_read_mask.exit.i364.i_crit_edge
  %mask.i.i354.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1, i32 2
  %674 = ptrtoint ptr %mask.i.i354.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %mask.i.i354.i, align 4
  %shift.i.i355.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 1, i32 1
  %676 = ptrtoint ptr %shift.i.i355.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %shift.i.i355.i, align 4
  %shl.i.i356.i = shl i32 %675, %677
  %neg.i.i357.i = xor i32 %shl.i.i356.i, -1
  %and.i.i358.i = and i32 %672, %neg.i.i357.i
  %and2.i.i359.i = and i32 %675, %conv92.c215445.i
  %shl4.i.i360.i = shl i32 %and2.i.i359.i, %677
  %or.i.i361.i = or i32 %and.i.i358.i, %shl4.i.i360.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %678 = load i32, ptr @hantro_debug, align 4
  %and.i3.i362.i = and i32 %678, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i362.i)
  %tobool.not.i.i363.i = icmp eq i32 %and.i3.i362.i, 0
  br i1 %tobool.not.i.i363.i, label %vdpu_read_mask.exit.i364.i.hantro_reg_write.exit369.i_crit_edge, label %do.end.i.i367.i

vdpu_read_mask.exit.i364.i.hantro_reg_write.exit369.i_crit_edge: ; preds = %vdpu_read_mask.exit.i364.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit369.i

do.end.i.i367.i:                                  ; preds = %vdpu_read_mask.exit.i364.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i365.i = lshr i32 %668, 2
  %call.i.i366.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i365.i, i32 noundef %or.i.i361.i) #8
  br label %hantro_reg_write.exit369.i

hantro_reg_write.exit369.i:                       ; preds = %do.end.i.i367.i, %vdpu_read_mask.exit.i364.i.hantro_reg_write.exit369.i_crit_edge
  %679 = tail call i32 @llvm.bswap.i32(i32 %or.i.i361.i) #5
  %680 = ptrtoint ptr %dec_base.i.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %dec_base.i.i.i347.i, align 8
  %add.ptr.i.i368.i = getelementptr i8, ptr %681, i32 %668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i368.i, i32 %679) #5, !srcloc !31
  %682 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %ctx, align 8
  %arrayidx119.c.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 2
  %684 = ptrtoint ptr %arrayidx119.c.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %arrayidx119.c.i, align 4
  %dec_base.i.i.i370.i = getelementptr inbounds %struct.hantro_dev, ptr %683, i32 0, i32 11
  %686 = ptrtoint ptr %dec_base.i.i.i370.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %dec_base.i.i.i370.i, align 8
  %add.ptr.i.i.i371.i = getelementptr i8, ptr %687, i32 %685
  %688 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i371.i) #5, !srcloc !32
  %689 = tail call i32 @llvm.bswap.i32(i32 %688) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %690 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i372.i = and i32 %690, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i372.i)
  %tobool.not.i.i.i373.i = icmp eq i32 %and.i.i.i372.i, 0
  br i1 %tobool.not.i.i.i373.i, label %hantro_reg_write.exit369.i.vdpu_read_mask.exit.i384.i_crit_edge, label %do.end.i.i.i376.i

hantro_reg_write.exit369.i.vdpu_read_mask.exit.i384.i_crit_edge: ; preds = %hantro_reg_write.exit369.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i384.i

do.end.i.i.i376.i:                                ; preds = %hantro_reg_write.exit369.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i374.i = lshr i32 %685, 2
  %call4.i.i.i375.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i374.i, i32 noundef %689) #8
  br label %vdpu_read_mask.exit.i384.i

vdpu_read_mask.exit.i384.i:                       ; preds = %do.end.i.i.i376.i, %hantro_reg_write.exit369.i.vdpu_read_mask.exit.i384.i_crit_edge
  %mask.i.i377.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 2, i32 2
  %691 = ptrtoint ptr %mask.i.i377.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %mask.i.i377.i, align 4
  %shift.i.i378.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 2, i32 1
  %693 = ptrtoint ptr %shift.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %shift.i.i378.i, align 4
  %shl.i.i379.i = shl i32 %692, %694
  %neg.i.i380.i = xor i32 %shl.i.i379.i, -1
  %and.i.i381.i = and i32 %689, %neg.i.i380.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %695 = load i32, ptr @hantro_debug, align 4
  %and.i3.i382.i = and i32 %695, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i382.i)
  %tobool.not.i.i383.i = icmp eq i32 %and.i3.i382.i, 0
  br i1 %tobool.not.i.i383.i, label %vdpu_read_mask.exit.i384.i.hantro_reg_write.exit389.i_crit_edge, label %do.end.i.i387.i

vdpu_read_mask.exit.i384.i.hantro_reg_write.exit389.i_crit_edge: ; preds = %vdpu_read_mask.exit.i384.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit389.i

do.end.i.i387.i:                                  ; preds = %vdpu_read_mask.exit.i384.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i385.i = lshr i32 %685, 2
  %call.i.i386.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i385.i, i32 noundef %and.i.i381.i) #8
  br label %hantro_reg_write.exit389.i

hantro_reg_write.exit389.i:                       ; preds = %do.end.i.i387.i, %vdpu_read_mask.exit.i384.i.hantro_reg_write.exit389.i_crit_edge
  %696 = tail call i32 @llvm.bswap.i32(i32 %and.i.i381.i) #5
  %697 = ptrtoint ptr %dec_base.i.i.i370.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %dec_base.i.i.i370.i, align 8
  %add.ptr.i.i388.i = getelementptr i8, ptr %698, i32 %685
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i388.i, i32 %696) #5, !srcloc !31
  br label %if.end133.i

if.end115.i:                                      ; preds = %if.then107.i, %land.lhs.true.i.if.end115.i_crit_edge, %if.end98.i.if.end115.i_crit_edge
  %feat_val.2.i = phi i32 [ 0, %if.end98.i.if.end115.i_crit_edge ], [ %add.i762, %if.then107.i ], [ 0, %land.lhs.true.i.if.end115.i_crit_edge ]
  %699 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %ctx, align 8
  %arrayidx119.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 2
  %sext.i = shl i32 %feat_val.2.i, 16
  %conv120.i = ashr exact i32 %sext.i, 16
  %701 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %arrayidx119.i, align 4
  %dec_base.i.i.i390.i = getelementptr inbounds %struct.hantro_dev, ptr %700, i32 0, i32 11
  %703 = ptrtoint ptr %dec_base.i.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %dec_base.i.i.i390.i, align 8
  %add.ptr.i.i.i391.i = getelementptr i8, ptr %704, i32 %702
  %705 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i391.i) #5, !srcloc !32
  %706 = tail call i32 @llvm.bswap.i32(i32 %705) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %707 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i392.i = and i32 %707, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i392.i)
  %tobool.not.i.i.i393.i = icmp eq i32 %and.i.i.i392.i, 0
  br i1 %tobool.not.i.i.i393.i, label %if.end115.i.vdpu_read_mask.exit.i407.i_crit_edge, label %do.end.i.i.i396.i

if.end115.i.vdpu_read_mask.exit.i407.i_crit_edge: ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i407.i

do.end.i.i.i396.i:                                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i394.i = lshr i32 %702, 2
  %call4.i.i.i395.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i394.i, i32 noundef %706) #8
  br label %vdpu_read_mask.exit.i407.i

vdpu_read_mask.exit.i407.i:                       ; preds = %do.end.i.i.i396.i, %if.end115.i.vdpu_read_mask.exit.i407.i_crit_edge
  %mask.i.i397.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 2, i32 2
  %708 = ptrtoint ptr %mask.i.i397.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %mask.i.i397.i, align 4
  %shift.i.i398.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 2, i32 1
  %710 = ptrtoint ptr %shift.i.i398.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %shift.i.i398.i, align 4
  %shl.i.i399.i = shl i32 %709, %711
  %neg.i.i400.i = xor i32 %shl.i.i399.i, -1
  %and.i.i401.i = and i32 %706, %neg.i.i400.i
  %and2.i.i402.i = and i32 %709, %conv120.i
  %shl4.i.i403.i = shl i32 %and2.i.i402.i, %711
  %or.i.i404.i = or i32 %and.i.i401.i, %shl4.i.i403.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %712 = load i32, ptr @hantro_debug, align 4
  %and.i3.i405.i = and i32 %712, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i405.i)
  %tobool.not.i.i406.i = icmp eq i32 %and.i3.i405.i, 0
  br i1 %tobool.not.i.i406.i, label %vdpu_read_mask.exit.i407.i.if.then122.i_crit_edge, label %do.end.i.i410.i

vdpu_read_mask.exit.i407.i.if.then122.i_crit_edge: ; preds = %vdpu_read_mask.exit.i407.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then122.i

do.end.i.i410.i:                                  ; preds = %vdpu_read_mask.exit.i407.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i408.i = lshr i32 %702, 2
  %call.i.i409.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i408.i, i32 noundef %or.i.i404.i) #8
  br label %if.then122.i

if.then122.i:                                     ; preds = %do.end.i.i410.i, %vdpu_read_mask.exit.i407.i.if.then122.i_crit_edge
  %713 = tail call i32 @llvm.bswap.i32(i32 %or.i.i404.i) #5
  %714 = ptrtoint ptr %dec_base.i.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %dec_base.i.i.i390.i, align 8
  %add.ptr.i.i411.i = getelementptr i8, ptr %715, i32 %702
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i411.i, i32 %713) #5, !srcloc !31
  br i1 %tobool44.not.i, label %if.then122.i.if.end126.i_crit_edge, label %if.then124.i

if.then122.i.if.end126.i_crit_edge:               ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126.i

if.then124.i:                                     ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i413.i = getelementptr [8 x [4 x i16]], ptr %seg1.i, i32 0, i32 %segid.0447.i, i32 3
  %716 = ptrtoint ptr %arrayidx1.i413.i to i32
  call void @__asan_load2_noabort(i32 %716)
  %717 = load i16, ptr %arrayidx1.i413.i, align 2
  %arrayidx4.i414.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 20, i32 %segid.0447.i, i32 3
  %718 = ptrtoint ptr %arrayidx4.i414.i to i32
  call void @__asan_store2_noabort(i32 %718)
  store i16 %717, ptr %arrayidx4.i414.i, align 2
  %arrayidx6.i415.i = getelementptr %struct.hantro_vp9_dec_hw_ctx, ptr %0, i32 0, i32 19, i32 %segid.0447.i
  %719 = ptrtoint ptr %arrayidx6.i415.i to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %arrayidx6.i415.i, align 1
  %conv8.i416.i = and i8 %720, -9
  store i8 %conv8.i416.i, ptr %arrayidx6.i415.i, align 1
  %arrayidx10.i417.i = getelementptr %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2, i32 1, i32 %segid.0447.i
  %721 = ptrtoint ptr %arrayidx10.i417.i to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %arrayidx10.i417.i, align 1
  %723 = and i8 %722, 8
  %conv17.i418.i = or i8 %723, %conv8.i416.i
  store i8 %conv17.i418.i, ptr %arrayidx6.i415.i, align 1
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then124.i, %if.then122.i.if.end126.i_crit_edge
  %call130.i = tail call zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef %feature_enabled.i, i32 noundef 3, i32 noundef %segid.0447.i) #5
  %cond.i = zext i1 %call130.i to i32
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.end126.i, %hantro_reg_write.exit389.i
  %feat_val.3.i = phi i32 [ %cond.i, %if.end126.i ], [ 0, %hantro_reg_write.exit389.i ]
  %724 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %ctx, align 8
  %arrayidx137.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 3
  %726 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %arrayidx137.i, align 4
  %dec_base.i.i.i419.i = getelementptr inbounds %struct.hantro_dev, ptr %725, i32 0, i32 11
  %728 = ptrtoint ptr %dec_base.i.i.i419.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %dec_base.i.i.i419.i, align 8
  %add.ptr.i.i.i420.i = getelementptr i8, ptr %729, i32 %727
  %730 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i420.i) #5, !srcloc !32
  %731 = tail call i32 @llvm.bswap.i32(i32 %730) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %732 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i421.i = and i32 %732, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i421.i)
  %tobool.not.i.i.i422.i = icmp eq i32 %and.i.i.i421.i, 0
  br i1 %tobool.not.i.i.i422.i, label %if.end133.i.vdpu_read_mask.exit.i436.i_crit_edge, label %do.end.i.i.i425.i

if.end133.i.vdpu_read_mask.exit.i436.i_crit_edge: ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i436.i

do.end.i.i.i425.i:                                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i423.i = lshr i32 %727, 2
  %call4.i.i.i424.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i423.i, i32 noundef %731) #8
  br label %vdpu_read_mask.exit.i436.i

vdpu_read_mask.exit.i436.i:                       ; preds = %do.end.i.i.i425.i, %if.end133.i.vdpu_read_mask.exit.i436.i_crit_edge
  %mask.i.i426.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 3, i32 2
  %733 = ptrtoint ptr %mask.i.i426.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %mask.i.i426.i, align 4
  %shift.i.i427.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @config_segment.seg_regs, i32 0, i32 %segid.0447.i, i32 3, i32 1
  %735 = ptrtoint ptr %shift.i.i427.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %shift.i.i427.i, align 4
  %shl.i.i428.i = shl i32 %734, %736
  %neg.i.i429.i = xor i32 %shl.i.i428.i, -1
  %and.i.i430.i = and i32 %731, %neg.i.i429.i
  %and2.i.i431.i = and i32 %734, %feat_val.3.i
  %shl4.i.i432.i = shl nuw i32 %and2.i.i431.i, %736
  %or.i.i433.i = or i32 %and.i.i430.i, %shl4.i.i432.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %737 = load i32, ptr @hantro_debug, align 4
  %and.i3.i434.i = and i32 %737, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i434.i)
  %tobool.not.i.i435.i = icmp eq i32 %and.i3.i434.i, 0
  br i1 %tobool.not.i.i435.i, label %vdpu_read_mask.exit.i436.i.hantro_reg_write.exit441.i_crit_edge, label %do.end.i.i439.i

vdpu_read_mask.exit.i436.i.hantro_reg_write.exit441.i_crit_edge: ; preds = %vdpu_read_mask.exit.i436.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit441.i

do.end.i.i439.i:                                  ; preds = %vdpu_read_mask.exit.i436.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i437.i = lshr i32 %727, 2
  %call.i.i438.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i437.i, i32 noundef %or.i.i433.i) #8
  br label %hantro_reg_write.exit441.i

hantro_reg_write.exit441.i:                       ; preds = %do.end.i.i439.i, %vdpu_read_mask.exit.i436.i.hantro_reg_write.exit441.i_crit_edge
  %738 = tail call i32 @llvm.bswap.i32(i32 %or.i.i433.i) #5
  %739 = ptrtoint ptr %dec_base.i.i.i419.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %dec_base.i.i.i419.i, align 8
  %add.ptr.i.i440.i = getelementptr i8, ptr %740, i32 %727
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i440.i, i32 %738) #5, !srcloc !31
  %inc.i = add nuw nsw i32 %segid.0447.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %config_segment.exit, label %hantro_reg_write.exit441.i.for.body.i_crit_edge

hantro_reg_write.exit441.i.for.body.i_crit_edge:  ; preds = %hantro_reg_write.exit441.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

config_segment.exit:                              ; preds = %hantro_reg_write.exit441.i
  %flags.i763 = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %dec_params, i32 0, i32 4
  %741 = ptrtoint ptr %flags.i763 to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %flags.i763, align 8
  %743 = and i8 %742, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %743)
  %tobool.not.i764 = icmp eq i8 %743, 0
  %744 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %ctx, align 8
  %746 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %level.i, align 2
  %dec_base.i.i.i.i766 = getelementptr inbounds %struct.hantro_dev, ptr %745, i32 0, i32 11
  %748 = ptrtoint ptr %dec_base.i.i.i.i766 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %dec_base.i.i.i.i766, align 8
  %add.ptr.i.i.i.i767 = getelementptr i8, ptr %749, i32 56
  %750 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i767) #5, !srcloc !32
  %751 = tail call i32 @llvm.bswap.i32(i32 %750) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %752 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i768 = and i32 %752, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i768)
  %tobool.not.i.i.i.i769 = icmp eq i32 %and.i.i.i.i768, 0
  br i1 %tobool.not.i.i.i.i769, label %config_segment.exit.vdpu_read_mask.exit.i.i778_crit_edge, label %do.end.i.i.i.i771

config_segment.exit.vdpu_read_mask.exit.i.i778_crit_edge: ; preds = %config_segment.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i778

do.end.i.i.i.i771:                                ; preds = %config_segment.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i770 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 14, i32 noundef %751) #8
  br label %vdpu_read_mask.exit.i.i778

vdpu_read_mask.exit.i.i778:                       ; preds = %do.end.i.i.i.i771, %config_segment.exit.vdpu_read_mask.exit.i.i778_crit_edge
  %and.i.i.i772 = and i32 %751, -16515073
  %753 = and i8 %747, 63
  %and2.i.i.i773 = zext i8 %753 to i32
  %shl4.i.i.i774 = shl nuw nsw i32 %and2.i.i.i773, 18
  %or.i.i.i775 = or i32 %and.i.i.i772, %shl4.i.i.i774
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %754 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i776 = and i32 %754, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i776)
  %tobool.not.i.i.i777 = icmp eq i32 %and.i3.i.i776, 0
  br i1 %tobool.not.i.i.i777, label %vdpu_read_mask.exit.i.i778.hantro_reg_write.exit.i783_crit_edge, label %do.end.i.i.i780

vdpu_read_mask.exit.i.i778.hantro_reg_write.exit.i783_crit_edge: ; preds = %vdpu_read_mask.exit.i.i778
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i783

do.end.i.i.i780:                                  ; preds = %vdpu_read_mask.exit.i.i778
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i779 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 14, i32 noundef %or.i.i.i775) #8
  br label %hantro_reg_write.exit.i783

hantro_reg_write.exit.i783:                       ; preds = %do.end.i.i.i780, %vdpu_read_mask.exit.i.i778.hantro_reg_write.exit.i783_crit_edge
  %755 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i775) #5
  %756 = ptrtoint ptr %dec_base.i.i.i.i766 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %dec_base.i.i.i.i766, align 8
  %add.ptr.i.i.i781 = getelementptr i8, ptr %757, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i781, i32 %755) #5, !srcloc !31
  %758 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %ctx, align 8
  %760 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %level.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %761)
  %cmp.i782 = icmp eq i8 %761, 0
  %dec_base.i.i.i124.i = getelementptr inbounds %struct.hantro_dev, ptr %759, i32 0, i32 11
  %762 = ptrtoint ptr %dec_base.i.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %dec_base.i.i.i124.i, align 8
  %add.ptr.i.i.i125.i = getelementptr i8, ptr %763, i32 12
  %764 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i125.i) #5, !srcloc !32
  %765 = tail call i32 @llvm.bswap.i32(i32 %764) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %766 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i126.i = and i32 %766, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i126.i)
  %tobool.not.i.i.i127.i = icmp eq i32 %and.i.i.i126.i, 0
  br i1 %tobool.not.i.i.i127.i, label %hantro_reg_write.exit.i783.vdpu_read_mask.exit.i141.i_crit_edge, label %do.end.i.i.i130.i

hantro_reg_write.exit.i783.vdpu_read_mask.exit.i141.i_crit_edge: ; preds = %hantro_reg_write.exit.i783
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i141.i

do.end.i.i.i130.i:                                ; preds = %hantro_reg_write.exit.i783
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %765) #8
  br label %vdpu_read_mask.exit.i141.i

vdpu_read_mask.exit.i141.i:                       ; preds = %do.end.i.i.i130.i, %hantro_reg_write.exit.i783.vdpu_read_mask.exit.i141.i_crit_edge
  %and.i.i135.i = and i32 %765, -16385
  %shl4.i.i137.i = select i1 %cmp.i782, i32 16384, i32 0
  %or.i.i138.i = or i32 %and.i.i135.i, %shl4.i.i137.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %767 = load i32, ptr @hantro_debug, align 4
  %and.i3.i139.i = and i32 %767, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i139.i)
  %tobool.not.i.i140.i = icmp eq i32 %and.i3.i139.i, 0
  br i1 %tobool.not.i.i140.i, label %vdpu_read_mask.exit.i141.i.hantro_reg_write.exit146.i_crit_edge, label %do.end.i.i144.i

vdpu_read_mask.exit.i141.i.hantro_reg_write.exit146.i_crit_edge: ; preds = %vdpu_read_mask.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit146.i

do.end.i.i144.i:                                  ; preds = %vdpu_read_mask.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i143.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i138.i) #8
  br label %hantro_reg_write.exit146.i

hantro_reg_write.exit146.i:                       ; preds = %do.end.i.i144.i, %vdpu_read_mask.exit.i141.i.hantro_reg_write.exit146.i_crit_edge
  %768 = tail call i32 @llvm.bswap.i32(i32 %or.i.i138.i) #5
  %769 = ptrtoint ptr %dec_base.i.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %dec_base.i.i.i124.i, align 8
  %add.ptr.i.i145.i = getelementptr i8, ptr %770, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.i, i32 %768) #5, !srcloc !31
  %771 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %ctx, align 8
  %sharpness.i = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %dec_params, i32 0, i32 3
  %773 = ptrtoint ptr %sharpness.i to i32
  call void @__asan_load1_noabort(i32 %773)
  %774 = load i8, ptr %sharpness.i, align 1
  %dec_base.i.i.i147.i = getelementptr inbounds %struct.hantro_dev, ptr %772, i32 0, i32 11
  %775 = ptrtoint ptr %dec_base.i.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %dec_base.i.i.i147.i, align 8
  %add.ptr.i.i.i148.i = getelementptr i8, ptr %776, i32 44
  %777 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i148.i) #5, !srcloc !32
  %778 = tail call i32 @llvm.bswap.i32(i32 %777) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %779 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i149.i = and i32 %779, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i149.i)
  %tobool.not.i.i.i150.i = icmp eq i32 %and.i.i.i149.i, 0
  br i1 %tobool.not.i.i.i150.i, label %hantro_reg_write.exit146.i.vdpu_read_mask.exit.i164.i_crit_edge, label %do.end.i.i.i153.i

hantro_reg_write.exit146.i.vdpu_read_mask.exit.i164.i_crit_edge: ; preds = %hantro_reg_write.exit146.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i164.i

do.end.i.i.i153.i:                                ; preds = %hantro_reg_write.exit146.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 11, i32 noundef %778) #8
  br label %vdpu_read_mask.exit.i164.i

vdpu_read_mask.exit.i164.i:                       ; preds = %do.end.i.i.i153.i, %hantro_reg_write.exit146.i.vdpu_read_mask.exit.i164.i_crit_edge
  %and.i.i158.i = and i32 %778, -14680065
  %780 = and i8 %774, 7
  %and2.i.i159.i = zext i8 %780 to i32
  %shl4.i.i160.i = shl nuw nsw i32 %and2.i.i159.i, 21
  %or.i.i161.i = or i32 %and.i.i158.i, %shl4.i.i160.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %781 = load i32, ptr @hantro_debug, align 4
  %and.i3.i162.i = and i32 %781, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i162.i)
  %tobool.not.i.i163.i = icmp eq i32 %and.i3.i162.i, 0
  br i1 %tobool.not.i.i163.i, label %vdpu_read_mask.exit.i164.i.hantro_reg_write.exit169.i_crit_edge, label %do.end.i.i167.i

vdpu_read_mask.exit.i164.i.hantro_reg_write.exit169.i_crit_edge: ; preds = %vdpu_read_mask.exit.i164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit169.i

do.end.i.i167.i:                                  ; preds = %vdpu_read_mask.exit.i164.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 11, i32 noundef %or.i.i161.i) #8
  br label %hantro_reg_write.exit169.i

hantro_reg_write.exit169.i:                       ; preds = %do.end.i.i167.i, %vdpu_read_mask.exit.i164.i.hantro_reg_write.exit169.i_crit_edge
  %782 = tail call i32 @llvm.bswap.i32(i32 %or.i.i161.i) #5
  %783 = ptrtoint ptr %dec_base.i.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %dec_base.i.i.i147.i, align 8
  %add.ptr.i.i168.i = getelementptr i8, ptr %784, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168.i, i32 %782) #5, !srcloc !31
  %785 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %ctx, align 8
  br i1 %tobool.not.i764, label %hantro_reg_write.exit169.i.cond.end.i_crit_edge, label %cond.true.i

hantro_reg_write.exit169.i.cond.end.i_crit_edge:  ; preds = %hantro_reg_write.exit169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %hantro_reg_write.exit169.i
  call void @__sanitizer_cov_trace_pc() #7
  %787 = ptrtoint ptr %dec_params to i32
  call void @__asan_load1_noabort(i32 %787)
  %788 = load i8, ptr %dec_params, align 8
  %conv27.i = sext i8 %788 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %hantro_reg_write.exit169.i.cond.end.i_crit_edge
  %cond.i784 = phi i32 [ %conv27.i, %cond.true.i ], [ 0, %hantro_reg_write.exit169.i.cond.end.i_crit_edge ]
  %dec_base.i.i.i170.i = getelementptr inbounds %struct.hantro_dev, ptr %786, i32 0, i32 11
  %789 = ptrtoint ptr %dec_base.i.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %dec_base.i.i.i170.i, align 8
  %add.ptr.i.i.i171.i = getelementptr i8, ptr %790, i32 184
  %791 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i171.i) #5, !srcloc !32
  %792 = tail call i32 @llvm.bswap.i32(i32 %791) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %793 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i172.i = and i32 %793, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i172.i)
  %tobool.not.i.i.i173.i = icmp eq i32 %and.i.i.i172.i, 0
  br i1 %tobool.not.i.i.i173.i, label %cond.end.i.vdpu_read_mask.exit.i187.i_crit_edge, label %do.end.i.i.i176.i

cond.end.i.vdpu_read_mask.exit.i187.i_crit_edge:  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i187.i

do.end.i.i.i176.i:                                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i175.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 46, i32 noundef %792) #8
  br label %vdpu_read_mask.exit.i187.i

vdpu_read_mask.exit.i187.i:                       ; preds = %do.end.i.i.i176.i, %cond.end.i.vdpu_read_mask.exit.i187.i_crit_edge
  %and.i.i181.i = and i32 %792, -2130706433
  %and2.i.i182.i = shl nsw i32 %cond.i784, 24
  %shl4.i.i183.i = and i32 %and2.i.i182.i, 2130706432
  %or.i.i184.i = or i32 %and.i.i181.i, %shl4.i.i183.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %794 = load i32, ptr @hantro_debug, align 4
  %and.i3.i185.i = and i32 %794, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i185.i)
  %tobool.not.i.i186.i = icmp eq i32 %and.i3.i185.i, 0
  br i1 %tobool.not.i.i186.i, label %vdpu_read_mask.exit.i187.i.hantro_reg_write.exit192.i_crit_edge, label %do.end.i.i190.i

vdpu_read_mask.exit.i187.i.hantro_reg_write.exit192.i_crit_edge: ; preds = %vdpu_read_mask.exit.i187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit192.i

do.end.i.i190.i:                                  ; preds = %vdpu_read_mask.exit.i187.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 46, i32 noundef %or.i.i184.i) #8
  br label %hantro_reg_write.exit192.i

hantro_reg_write.exit192.i:                       ; preds = %do.end.i.i190.i, %vdpu_read_mask.exit.i187.i.hantro_reg_write.exit192.i_crit_edge
  %795 = tail call i32 @llvm.bswap.i32(i32 %or.i.i184.i) #5
  %796 = ptrtoint ptr %dec_base.i.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %dec_base.i.i.i170.i, align 8
  %add.ptr.i.i191.i = getelementptr i8, ptr %797, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i191.i, i32 %795) #5, !srcloc !31
  %798 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %ctx, align 8
  br i1 %tobool.not.i764, label %hantro_reg_write.exit192.i.cond.end41.i_crit_edge, label %cond.true35.i

hantro_reg_write.exit192.i.cond.end41.i_crit_edge: ; preds = %hantro_reg_write.exit192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end41.i

cond.true35.i:                                    ; preds = %hantro_reg_write.exit192.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx38.i = getelementptr [4 x i8], ptr %dec_params, i32 0, i32 1
  %800 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %arrayidx38.i, align 1
  %802 = and i8 %801, 127
  %phi.bo.i = zext i8 %802 to i32
  %phi.bo318.i = shl nuw nsw i32 %phi.bo.i, 16
  br label %cond.end41.i

cond.end41.i:                                     ; preds = %cond.true35.i, %hantro_reg_write.exit192.i.cond.end41.i_crit_edge
  %cond42.i = phi i32 [ %phi.bo318.i, %cond.true35.i ], [ 0, %hantro_reg_write.exit192.i.cond.end41.i_crit_edge ]
  %dec_base.i.i.i193.i = getelementptr inbounds %struct.hantro_dev, ptr %799, i32 0, i32 11
  %803 = ptrtoint ptr %dec_base.i.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %dec_base.i.i.i193.i, align 8
  %add.ptr.i.i.i194.i = getelementptr i8, ptr %804, i32 184
  %805 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i194.i) #5, !srcloc !32
  %806 = tail call i32 @llvm.bswap.i32(i32 %805) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %807 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i195.i = and i32 %807, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i195.i)
  %tobool.not.i.i.i196.i = icmp eq i32 %and.i.i.i195.i, 0
  br i1 %tobool.not.i.i.i196.i, label %cond.end41.i.vdpu_read_mask.exit.i210.i_crit_edge, label %do.end.i.i.i199.i

cond.end41.i.vdpu_read_mask.exit.i210.i_crit_edge: ; preds = %cond.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i210.i

do.end.i.i.i199.i:                                ; preds = %cond.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i198.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 46, i32 noundef %806) #8
  br label %vdpu_read_mask.exit.i210.i

vdpu_read_mask.exit.i210.i:                       ; preds = %do.end.i.i.i199.i, %cond.end41.i.vdpu_read_mask.exit.i210.i_crit_edge
  %and.i.i204.i = and i32 %806, -8323073
  %or.i.i207.i = or i32 %and.i.i204.i, %cond42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %808 = load i32, ptr @hantro_debug, align 4
  %and.i3.i208.i = and i32 %808, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i208.i)
  %tobool.not.i.i209.i = icmp eq i32 %and.i3.i208.i, 0
  br i1 %tobool.not.i.i209.i, label %vdpu_read_mask.exit.i210.i.hantro_reg_write.exit215.i_crit_edge, label %do.end.i.i213.i

vdpu_read_mask.exit.i210.i.hantro_reg_write.exit215.i_crit_edge: ; preds = %vdpu_read_mask.exit.i210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit215.i

do.end.i.i213.i:                                  ; preds = %vdpu_read_mask.exit.i210.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i212.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 46, i32 noundef %or.i.i207.i) #8
  br label %hantro_reg_write.exit215.i

hantro_reg_write.exit215.i:                       ; preds = %do.end.i.i213.i, %vdpu_read_mask.exit.i210.i.hantro_reg_write.exit215.i_crit_edge
  %809 = tail call i32 @llvm.bswap.i32(i32 %or.i.i207.i) #5
  %810 = ptrtoint ptr %dec_base.i.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %dec_base.i.i.i193.i, align 8
  %add.ptr.i.i214.i = getelementptr i8, ptr %811, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i214.i, i32 %809) #5, !srcloc !31
  %812 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %ctx, align 8
  br i1 %tobool.not.i764, label %hantro_reg_write.exit215.i.cond.end56.i_crit_edge, label %cond.true50.i

hantro_reg_write.exit215.i.cond.end56.i_crit_edge: ; preds = %hantro_reg_write.exit215.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end56.i

cond.true50.i:                                    ; preds = %hantro_reg_write.exit215.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx53.i = getelementptr [4 x i8], ptr %dec_params, i32 0, i32 2
  %814 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %arrayidx53.i, align 2
  %816 = and i8 %815, 127
  %phi.bo319.i = zext i8 %816 to i32
  %phi.bo321.i = shl nuw nsw i32 %phi.bo319.i, 8
  br label %cond.end56.i

cond.end56.i:                                     ; preds = %cond.true50.i, %hantro_reg_write.exit215.i.cond.end56.i_crit_edge
  %cond57.i = phi i32 [ %phi.bo321.i, %cond.true50.i ], [ 0, %hantro_reg_write.exit215.i.cond.end56.i_crit_edge ]
  %dec_base.i.i.i216.i785 = getelementptr inbounds %struct.hantro_dev, ptr %813, i32 0, i32 11
  %817 = ptrtoint ptr %dec_base.i.i.i216.i785 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %dec_base.i.i.i216.i785, align 8
  %add.ptr.i.i.i217.i786 = getelementptr i8, ptr %818, i32 184
  %819 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i217.i786) #5, !srcloc !32
  %820 = tail call i32 @llvm.bswap.i32(i32 %819) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %821 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i218.i787 = and i32 %821, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i218.i787)
  %tobool.not.i.i.i219.i788 = icmp eq i32 %and.i.i.i218.i787, 0
  br i1 %tobool.not.i.i.i219.i788, label %cond.end56.i.vdpu_read_mask.exit.i233.i795_crit_edge, label %do.end.i.i.i222.i790

cond.end56.i.vdpu_read_mask.exit.i233.i795_crit_edge: ; preds = %cond.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i233.i795

do.end.i.i.i222.i790:                             ; preds = %cond.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i221.i789 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 46, i32 noundef %820) #8
  br label %vdpu_read_mask.exit.i233.i795

vdpu_read_mask.exit.i233.i795:                    ; preds = %do.end.i.i.i222.i790, %cond.end56.i.vdpu_read_mask.exit.i233.i795_crit_edge
  %and.i.i227.i791 = and i32 %820, -32513
  %or.i.i230.i792 = or i32 %and.i.i227.i791, %cond57.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %822 = load i32, ptr @hantro_debug, align 4
  %and.i3.i231.i793 = and i32 %822, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i231.i793)
  %tobool.not.i.i232.i794 = icmp eq i32 %and.i3.i231.i793, 0
  br i1 %tobool.not.i.i232.i794, label %vdpu_read_mask.exit.i233.i795.hantro_reg_write.exit238.i799_crit_edge, label %do.end.i.i236.i797

vdpu_read_mask.exit.i233.i795.hantro_reg_write.exit238.i799_crit_edge: ; preds = %vdpu_read_mask.exit.i233.i795
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit238.i799

do.end.i.i236.i797:                               ; preds = %vdpu_read_mask.exit.i233.i795
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i235.i796 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 46, i32 noundef %or.i.i230.i792) #8
  br label %hantro_reg_write.exit238.i799

hantro_reg_write.exit238.i799:                    ; preds = %do.end.i.i236.i797, %vdpu_read_mask.exit.i233.i795.hantro_reg_write.exit238.i799_crit_edge
  %823 = tail call i32 @llvm.bswap.i32(i32 %or.i.i230.i792) #5
  %824 = ptrtoint ptr %dec_base.i.i.i216.i785 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %dec_base.i.i.i216.i785, align 8
  %add.ptr.i.i237.i798 = getelementptr i8, ptr %825, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i237.i798, i32 %823) #5, !srcloc !31
  %826 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %ctx, align 8
  br i1 %tobool.not.i764, label %hantro_reg_write.exit238.i799.cond.end71.i_crit_edge, label %cond.true65.i

hantro_reg_write.exit238.i799.cond.end71.i_crit_edge: ; preds = %hantro_reg_write.exit238.i799
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end71.i

cond.true65.i:                                    ; preds = %hantro_reg_write.exit238.i799
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx68.i = getelementptr [4 x i8], ptr %dec_params, i32 0, i32 3
  %828 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %828)
  %829 = load i8, ptr %arrayidx68.i, align 1
  %830 = and i8 %829, 127
  %phi.bo322.i = zext i8 %830 to i32
  br label %cond.end71.i

cond.end71.i:                                     ; preds = %cond.true65.i, %hantro_reg_write.exit238.i799.cond.end71.i_crit_edge
  %cond72.i = phi i32 [ %phi.bo322.i, %cond.true65.i ], [ 0, %hantro_reg_write.exit238.i799.cond.end71.i_crit_edge ]
  %dec_base.i.i.i239.i800 = getelementptr inbounds %struct.hantro_dev, ptr %827, i32 0, i32 11
  %831 = ptrtoint ptr %dec_base.i.i.i239.i800 to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %dec_base.i.i.i239.i800, align 8
  %add.ptr.i.i.i240.i801 = getelementptr i8, ptr %832, i32 184
  %833 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i240.i801) #5, !srcloc !32
  %834 = tail call i32 @llvm.bswap.i32(i32 %833) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %835 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i241.i802 = and i32 %835, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i241.i802)
  %tobool.not.i.i.i242.i803 = icmp eq i32 %and.i.i.i241.i802, 0
  br i1 %tobool.not.i.i.i242.i803, label %cond.end71.i.vdpu_read_mask.exit.i256.i810_crit_edge, label %do.end.i.i.i245.i805

cond.end71.i.vdpu_read_mask.exit.i256.i810_crit_edge: ; preds = %cond.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i256.i810

do.end.i.i.i245.i805:                             ; preds = %cond.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i244.i804 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 46, i32 noundef %834) #8
  br label %vdpu_read_mask.exit.i256.i810

vdpu_read_mask.exit.i256.i810:                    ; preds = %do.end.i.i.i245.i805, %cond.end71.i.vdpu_read_mask.exit.i256.i810_crit_edge
  %and.i.i250.i806 = and i32 %834, -128
  %or.i.i253.i807 = or i32 %and.i.i250.i806, %cond72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %836 = load i32, ptr @hantro_debug, align 4
  %and.i3.i254.i808 = and i32 %836, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i254.i808)
  %tobool.not.i.i255.i809 = icmp eq i32 %and.i3.i254.i808, 0
  br i1 %tobool.not.i.i255.i809, label %vdpu_read_mask.exit.i256.i810.hantro_reg_write.exit261.i814_crit_edge, label %do.end.i.i259.i812

vdpu_read_mask.exit.i256.i810.hantro_reg_write.exit261.i814_crit_edge: ; preds = %vdpu_read_mask.exit.i256.i810
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit261.i814

do.end.i.i259.i812:                               ; preds = %vdpu_read_mask.exit.i256.i810
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i258.i811 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 46, i32 noundef %or.i.i253.i807) #8
  br label %hantro_reg_write.exit261.i814

hantro_reg_write.exit261.i814:                    ; preds = %do.end.i.i259.i812, %vdpu_read_mask.exit.i256.i810.hantro_reg_write.exit261.i814_crit_edge
  %837 = tail call i32 @llvm.bswap.i32(i32 %or.i.i253.i807) #5
  %838 = ptrtoint ptr %dec_base.i.i.i239.i800 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %dec_base.i.i.i239.i800, align 8
  %add.ptr.i.i260.i813 = getelementptr i8, ptr %839, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i260.i813, i32 %837) #5, !srcloc !31
  %840 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %ctx, align 8
  br i1 %tobool.not.i764, label %hantro_reg_write.exit261.i814.cond.end85.i_crit_edge, label %cond.true80.i

hantro_reg_write.exit261.i814.cond.end85.i_crit_edge: ; preds = %hantro_reg_write.exit261.i814
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end85.i

cond.true80.i:                                    ; preds = %hantro_reg_write.exit261.i814
  call void @__sanitizer_cov_trace_pc() #7
  %mode_deltas.i = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %dec_params, i32 0, i32 1
  %842 = ptrtoint ptr %mode_deltas.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %mode_deltas.i, align 4
  %844 = and i8 %843, 127
  %phi.bo324.i = zext i8 %844 to i32
  %phi.bo326.i = shl nuw nsw i32 %phi.bo324.i, 24
  br label %cond.end85.i

cond.end85.i:                                     ; preds = %cond.true80.i, %hantro_reg_write.exit261.i814.cond.end85.i_crit_edge
  %cond86.i = phi i32 [ %phi.bo326.i, %cond.true80.i ], [ 0, %hantro_reg_write.exit261.i814.cond.end85.i_crit_edge ]
  %dec_base.i.i.i262.i815 = getelementptr inbounds %struct.hantro_dev, ptr %841, i32 0, i32 11
  %845 = ptrtoint ptr %dec_base.i.i.i262.i815 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %dec_base.i.i.i262.i815, align 8
  %add.ptr.i.i.i263.i816 = getelementptr i8, ptr %846, i32 188
  %847 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i263.i816) #5, !srcloc !32
  %848 = tail call i32 @llvm.bswap.i32(i32 %847) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %849 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i264.i817 = and i32 %849, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i264.i817)
  %tobool.not.i.i.i265.i818 = icmp eq i32 %and.i.i.i264.i817, 0
  br i1 %tobool.not.i.i.i265.i818, label %cond.end85.i.vdpu_read_mask.exit.i279.i825_crit_edge, label %do.end.i.i.i268.i820

cond.end85.i.vdpu_read_mask.exit.i279.i825_crit_edge: ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i279.i825

do.end.i.i.i268.i820:                             ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i267.i819 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 47, i32 noundef %848) #8
  br label %vdpu_read_mask.exit.i279.i825

vdpu_read_mask.exit.i279.i825:                    ; preds = %do.end.i.i.i268.i820, %cond.end85.i.vdpu_read_mask.exit.i279.i825_crit_edge
  %and.i.i273.i821 = and i32 %848, -2130706433
  %or.i.i276.i822 = or i32 %and.i.i273.i821, %cond86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %850 = load i32, ptr @hantro_debug, align 4
  %and.i3.i277.i823 = and i32 %850, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i277.i823)
  %tobool.not.i.i278.i824 = icmp eq i32 %and.i3.i277.i823, 0
  br i1 %tobool.not.i.i278.i824, label %vdpu_read_mask.exit.i279.i825.hantro_reg_write.exit284.i829_crit_edge, label %do.end.i.i282.i827

vdpu_read_mask.exit.i279.i825.hantro_reg_write.exit284.i829_crit_edge: ; preds = %vdpu_read_mask.exit.i279.i825
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit284.i829

do.end.i.i282.i827:                               ; preds = %vdpu_read_mask.exit.i279.i825
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i281.i826 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 47, i32 noundef %or.i.i276.i822) #8
  br label %hantro_reg_write.exit284.i829

hantro_reg_write.exit284.i829:                    ; preds = %do.end.i.i282.i827, %vdpu_read_mask.exit.i279.i825.hantro_reg_write.exit284.i829_crit_edge
  %851 = tail call i32 @llvm.bswap.i32(i32 %or.i.i276.i822) #5
  %852 = ptrtoint ptr %dec_base.i.i.i262.i815 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %dec_base.i.i.i262.i815, align 8
  %add.ptr.i.i283.i828 = getelementptr i8, ptr %853, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i283.i828, i32 %851) #5, !srcloc !31
  %854 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %ctx, align 8
  br i1 %tobool.not.i764, label %hantro_reg_write.exit284.i829.cond.end100.i_crit_edge, label %cond.true94.i

hantro_reg_write.exit284.i829.cond.end100.i_crit_edge: ; preds = %hantro_reg_write.exit284.i829
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end100.i

cond.true94.i:                                    ; preds = %hantro_reg_write.exit284.i829
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx97.i = getelementptr %struct.v4l2_vp9_loop_filter, ptr %dec_params, i32 0, i32 1, i32 1
  %856 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %856)
  %857 = load i8, ptr %arrayidx97.i, align 1
  %858 = and i8 %857, 127
  %phi.bo327.i = zext i8 %858 to i32
  %phi.bo329.i = shl nuw nsw i32 %phi.bo327.i, 16
  br label %cond.end100.i

cond.end100.i:                                    ; preds = %cond.true94.i, %hantro_reg_write.exit284.i829.cond.end100.i_crit_edge
  %cond101.i = phi i32 [ %phi.bo329.i, %cond.true94.i ], [ 0, %hantro_reg_write.exit284.i829.cond.end100.i_crit_edge ]
  %dec_base.i.i.i285.i = getelementptr inbounds %struct.hantro_dev, ptr %855, i32 0, i32 11
  %859 = ptrtoint ptr %dec_base.i.i.i285.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %dec_base.i.i.i285.i, align 8
  %add.ptr.i.i.i286.i = getelementptr i8, ptr %860, i32 188
  %861 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i286.i) #5, !srcloc !32
  %862 = tail call i32 @llvm.bswap.i32(i32 %861) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %863 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i287.i = and i32 %863, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i287.i)
  %tobool.not.i.i.i288.i = icmp eq i32 %and.i.i.i287.i, 0
  br i1 %tobool.not.i.i.i288.i, label %cond.end100.i.vdpu_read_mask.exit.i302.i_crit_edge, label %do.end.i.i.i291.i

cond.end100.i.vdpu_read_mask.exit.i302.i_crit_edge: ; preds = %cond.end100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i302.i

do.end.i.i.i291.i:                                ; preds = %cond.end100.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i290.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 47, i32 noundef %862) #8
  br label %vdpu_read_mask.exit.i302.i

vdpu_read_mask.exit.i302.i:                       ; preds = %do.end.i.i.i291.i, %cond.end100.i.vdpu_read_mask.exit.i302.i_crit_edge
  %and.i.i296.i = and i32 %862, -8323073
  %or.i.i299.i = or i32 %and.i.i296.i, %cond101.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %864 = load i32, ptr @hantro_debug, align 4
  %and.i3.i300.i = and i32 %864, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i300.i)
  %tobool.not.i.i301.i = icmp eq i32 %and.i3.i300.i, 0
  br i1 %tobool.not.i.i301.i, label %vdpu_read_mask.exit.i302.i.config_loop_filter.exit_crit_edge, label %do.end.i.i305.i

vdpu_read_mask.exit.i302.i.config_loop_filter.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i302.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_loop_filter.exit

do.end.i.i305.i:                                  ; preds = %vdpu_read_mask.exit.i302.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i304.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 47, i32 noundef %or.i.i299.i) #8
  br label %config_loop_filter.exit

config_loop_filter.exit:                          ; preds = %do.end.i.i305.i, %vdpu_read_mask.exit.i302.i.config_loop_filter.exit_crit_edge
  %865 = tail call i32 @llvm.bswap.i32(i32 %or.i.i299.i) #5
  %866 = ptrtoint ptr %dec_base.i.i.i285.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %dec_base.i.i.i285.i, align 8
  %add.ptr.i.i306.i = getelementptr i8, ptr %867, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i306.i, i32 %865) #5, !srcloc !31
  %868 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %ctx, align 8
  %870 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %870)
  %871 = load i16, ptr %12, align 8
  %conv.i = zext i16 %871 to i32
  %dec_base.i.i.i.i830 = getelementptr inbounds %struct.hantro_dev, ptr %869, i32 0, i32 11
  %872 = ptrtoint ptr %dec_base.i.i.i.i830 to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %dec_base.i.i.i.i830, align 8
  %add.ptr.i.i.i.i831 = getelementptr i8, ptr %873, i32 16
  %874 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i831) #5, !srcloc !32
  %875 = tail call i32 @llvm.bswap.i32(i32 %874) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %876 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i832 = and i32 %876, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i832)
  %tobool.not.i.i.i.i833 = icmp eq i32 %and.i.i.i.i832, 0
  br i1 %tobool.not.i.i.i.i833, label %config_loop_filter.exit.vdpu_read_mask.exit.i.i842_crit_edge, label %do.end.i.i.i.i835

config_loop_filter.exit.vdpu_read_mask.exit.i.i842_crit_edge: ; preds = %config_loop_filter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i842

do.end.i.i.i.i835:                                ; preds = %config_loop_filter.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i834 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 4, i32 noundef %875) #8
  br label %vdpu_read_mask.exit.i.i842

vdpu_read_mask.exit.i.i842:                       ; preds = %do.end.i.i.i.i835, %config_loop_filter.exit.vdpu_read_mask.exit.i.i842_crit_edge
  %and.i.i.i836 = and i32 %875, 524287
  %add.i837 = shl nuw i32 %conv.i, 16
  %877 = add i32 %add.i837, 458752
  %and2.i.i.i838 = and i32 %877, -524288
  %or.i.i.i839 = or i32 %and.i.i.i836, %and2.i.i.i838
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %878 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i840 = and i32 %878, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i840)
  %tobool.not.i.i.i841 = icmp eq i32 %and.i3.i.i840, 0
  br i1 %tobool.not.i.i.i841, label %vdpu_read_mask.exit.i.i842.hantro_reg_write.exit.i847_crit_edge, label %do.end.i.i.i844

vdpu_read_mask.exit.i.i842.hantro_reg_write.exit.i847_crit_edge: ; preds = %vdpu_read_mask.exit.i.i842
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i847

do.end.i.i.i844:                                  ; preds = %vdpu_read_mask.exit.i.i842
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i843 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 4, i32 noundef %or.i.i.i839) #8
  br label %hantro_reg_write.exit.i847

hantro_reg_write.exit.i847:                       ; preds = %do.end.i.i.i844, %vdpu_read_mask.exit.i.i842.hantro_reg_write.exit.i847_crit_edge
  %879 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i839) #5
  %880 = ptrtoint ptr %dec_base.i.i.i.i830 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %dec_base.i.i.i.i830, align 8
  %add.ptr.i.i.i845 = getelementptr i8, ptr %881, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i845, i32 %879) #5, !srcloc !31
  %882 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %ctx, align 8
  %884 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %884)
  %885 = load i16, ptr %height.i, align 2
  %conv6.i = zext i16 %885 to i32
  %dec_base.i.i.i46.i = getelementptr inbounds %struct.hantro_dev, ptr %883, i32 0, i32 11
  %886 = ptrtoint ptr %dec_base.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %dec_base.i.i.i46.i, align 8
  %add.ptr.i.i.i47.i = getelementptr i8, ptr %887, i32 16
  %888 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i47.i) #5, !srcloc !32
  %889 = tail call i32 @llvm.bswap.i32(i32 %888) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %890 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i48.i = and i32 %890, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i48.i)
  %tobool.not.i.i.i49.i = icmp eq i32 %and.i.i.i48.i, 0
  br i1 %tobool.not.i.i.i49.i, label %hantro_reg_write.exit.i847.vdpu_read_mask.exit.i63.i_crit_edge, label %do.end.i.i.i52.i

hantro_reg_write.exit.i847.vdpu_read_mask.exit.i63.i_crit_edge: ; preds = %hantro_reg_write.exit.i847
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i63.i

do.end.i.i.i52.i:                                 ; preds = %hantro_reg_write.exit.i847
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 4, i32 noundef %889) #8
  br label %vdpu_read_mask.exit.i63.i

vdpu_read_mask.exit.i63.i:                        ; preds = %do.end.i.i.i52.i, %hantro_reg_write.exit.i847.vdpu_read_mask.exit.i63.i_crit_edge
  %and.i.i57.i = and i32 %889, -524225
  %add7.i = shl nuw nsw i32 %conv6.i, 3
  %891 = add nuw nsw i32 %add7.i, 56
  %shl4.i.i59.i = and i32 %891, 524224
  %or.i.i60.i = or i32 %and.i.i57.i, %shl4.i.i59.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %892 = load i32, ptr @hantro_debug, align 4
  %and.i3.i61.i = and i32 %892, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i61.i)
  %tobool.not.i.i62.i = icmp eq i32 %and.i3.i61.i, 0
  br i1 %tobool.not.i.i62.i, label %vdpu_read_mask.exit.i63.i.hantro_reg_write.exit68.i_crit_edge, label %do.end.i.i66.i

vdpu_read_mask.exit.i63.i.hantro_reg_write.exit68.i_crit_edge: ; preds = %vdpu_read_mask.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit68.i

do.end.i.i66.i:                                   ; preds = %vdpu_read_mask.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 4, i32 noundef %or.i.i60.i) #8
  br label %hantro_reg_write.exit68.i

hantro_reg_write.exit68.i:                        ; preds = %do.end.i.i66.i, %vdpu_read_mask.exit.i63.i.hantro_reg_write.exit68.i_crit_edge
  %893 = tail call i32 @llvm.bswap.i32(i32 %or.i.i60.i) #5
  %894 = ptrtoint ptr %dec_base.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %dec_base.i.i.i46.i, align 8
  %add.ptr.i.i67.i = getelementptr i8, ptr %895, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67.i, i32 %893) #5, !srcloc !31
  %896 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %896)
  %897 = load i16, ptr %12, align 8
  %conv10.i = zext i16 %897 to i32
  %898 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %898)
  %899 = load i16, ptr %height.i, align 2
  %conv16.i = zext i16 %899 to i32
  %add18.i = add nuw nsw i32 %conv16.i, 7
  %div1945.i = lshr i32 %add18.i, 2
  %900 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i69.i = getelementptr inbounds %struct.hantro_dev, ptr %901, i32 0, i32 11
  %902 = ptrtoint ptr %dec_base.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %dec_base.i.i.i69.i, align 8
  %add.ptr.i.i.i70.i = getelementptr i8, ptr %903, i32 80
  %904 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i70.i) #5, !srcloc !32
  %905 = tail call i32 @llvm.bswap.i32(i32 %904) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %906 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i71.i = and i32 %906, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i71.i)
  %tobool.not.i.i.i72.i = icmp eq i32 %and.i.i.i71.i, 0
  br i1 %tobool.not.i.i.i72.i, label %hantro_reg_write.exit68.i.vdpu_read_mask.exit.i86.i_crit_edge, label %do.end.i.i.i75.i

hantro_reg_write.exit68.i.vdpu_read_mask.exit.i86.i_crit_edge: ; preds = %hantro_reg_write.exit68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i86.i

do.end.i.i.i75.i:                                 ; preds = %hantro_reg_write.exit68.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 20, i32 noundef %905) #8
  br label %vdpu_read_mask.exit.i86.i

vdpu_read_mask.exit.i86.i:                        ; preds = %do.end.i.i.i75.i, %hantro_reg_write.exit68.i.vdpu_read_mask.exit.i86.i_crit_edge
  %and.i.i80.i = and i32 %905, -268369921
  %add11.i = shl nuw nsw i32 %conv10.i, 14
  %907 = add nuw nsw i32 %add11.i, 114688
  %shl4.i.i82.i = and i32 %907, 268304384
  %or.i.i83.i = or i32 %and.i.i80.i, %shl4.i.i82.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %908 = load i32, ptr @hantro_debug, align 4
  %and.i3.i84.i = and i32 %908, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i84.i)
  %tobool.not.i.i85.i = icmp eq i32 %and.i3.i84.i, 0
  br i1 %tobool.not.i.i85.i, label %vdpu_read_mask.exit.i86.i.hantro_reg_write.exit91.i_crit_edge, label %do.end.i.i89.i

vdpu_read_mask.exit.i86.i.hantro_reg_write.exit91.i_crit_edge: ; preds = %vdpu_read_mask.exit.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit91.i

do.end.i.i89.i:                                   ; preds = %vdpu_read_mask.exit.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 20, i32 noundef %or.i.i83.i) #8
  br label %hantro_reg_write.exit91.i

hantro_reg_write.exit91.i:                        ; preds = %do.end.i.i89.i, %vdpu_read_mask.exit.i86.i.hantro_reg_write.exit91.i_crit_edge
  %909 = tail call i32 @llvm.bswap.i32(i32 %or.i.i83.i) #5
  %910 = ptrtoint ptr %dec_base.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %dec_base.i.i.i69.i, align 8
  %add.ptr.i.i90.i = getelementptr i8, ptr %911, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90.i, i32 %909) #5, !srcloc !31
  %912 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i92.i = getelementptr inbounds %struct.hantro_dev, ptr %913, i32 0, i32 11
  %914 = ptrtoint ptr %dec_base.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %dec_base.i.i.i92.i, align 8
  %add.ptr.i.i.i93.i = getelementptr i8, ptr %915, i32 80
  %916 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i93.i) #5, !srcloc !32
  %917 = tail call i32 @llvm.bswap.i32(i32 %916) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %918 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i94.i = and i32 %918, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i94.i)
  %tobool.not.i.i.i95.i = icmp eq i32 %and.i.i.i94.i, 0
  br i1 %tobool.not.i.i.i95.i, label %hantro_reg_write.exit91.i.vdpu_read_mask.exit.i109.i_crit_edge, label %do.end.i.i.i98.i

hantro_reg_write.exit91.i.vdpu_read_mask.exit.i109.i_crit_edge: ; preds = %hantro_reg_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i109.i

do.end.i.i.i98.i:                                 ; preds = %hantro_reg_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 20, i32 noundef %917) #8
  br label %vdpu_read_mask.exit.i109.i

vdpu_read_mask.exit.i109.i:                       ; preds = %do.end.i.i.i98.i, %hantro_reg_write.exit91.i.vdpu_read_mask.exit.i109.i_crit_edge
  %and.i.i103.i = and i32 %917, -4096
  %and2.i.i104.i = and i32 %div1945.i, 4094
  %or.i.i106.i = or i32 %and.i.i103.i, %and2.i.i104.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %919 = load i32, ptr @hantro_debug, align 4
  %and.i3.i107.i = and i32 %919, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i107.i)
  %tobool.not.i.i108.i = icmp eq i32 %and.i3.i107.i, 0
  br i1 %tobool.not.i.i108.i, label %vdpu_read_mask.exit.i109.i.config_picture_dimensions.exit_crit_edge, label %do.end.i.i112.i

vdpu_read_mask.exit.i109.i.config_picture_dimensions.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_picture_dimensions.exit

do.end.i.i112.i:                                  ; preds = %vdpu_read_mask.exit.i109.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 20, i32 noundef %or.i.i106.i) #8
  br label %config_picture_dimensions.exit

config_picture_dimensions.exit:                   ; preds = %do.end.i.i112.i, %vdpu_read_mask.exit.i109.i.config_picture_dimensions.exit_crit_edge
  %920 = tail call i32 @llvm.bswap.i32(i32 %or.i.i106.i) #5
  %921 = ptrtoint ptr %dec_base.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %dec_base.i.i.i92.i, align 8
  %add.ptr.i.i113.i = getelementptr i8, ptr %922, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i113.i, i32 %920) #5, !srcloc !31
  %923 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %ctx, align 8
  %variant.i848 = getelementptr inbounds %struct.hantro_dev, ptr %924, i32 0, i32 15
  %925 = ptrtoint ptr %variant.i848 to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %variant.i848, align 8
  %legacy_regs.i849 = getelementptr inbounds %struct.hantro_variant, ptr %926, i32 0, i32 19
  %927 = ptrtoint ptr %legacy_regs.i849 to i32
  call void @__asan_load1_noabort(i32 %927)
  %bf.load.i850 = load i8, ptr %legacy_regs.i849, align 4
  %928 = and i8 %bf.load.i850, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %928)
  %tobool.not.i851 = icmp eq i8 %928, 0
  %929 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %929)
  %930 = load i8, ptr %bit_depth.i, align 4
  %dec_base.i.i.i153.i = getelementptr inbounds %struct.hantro_dev, ptr %924, i32 0, i32 11
  %931 = ptrtoint ptr %dec_base.i.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %dec_base.i.i.i153.i, align 8
  %add.ptr.i.i.i154.i = getelementptr i8, ptr %932, i32 32
  %933 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i154.i) #5
  %934 = tail call i32 @llvm.bswap.i32(i32 %933) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %935 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i155.i = and i32 %935, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i155.i)
  %tobool.not.i.i.i156.i = icmp eq i32 %and.i.i.i155.i, 0
  br i1 %tobool.not.i851, label %if.else.i867, label %if.then.i852

if.then.i852:                                     ; preds = %config_picture_dimensions.exit
  br i1 %tobool.not.i.i.i156.i, label %if.then.i852.vdpu_read_mask.exit.i.i861_crit_edge, label %do.end.i.i.i.i854

if.then.i852.vdpu_read_mask.exit.i.i861_crit_edge: ; preds = %if.then.i852
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i861

do.end.i.i.i.i854:                                ; preds = %if.then.i852
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i853 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %934) #8
  br label %vdpu_read_mask.exit.i.i861

vdpu_read_mask.exit.i.i861:                       ; preds = %do.end.i.i.i.i854, %if.then.i852.vdpu_read_mask.exit.i.i861_crit_edge
  %and.i.i.i855 = and i32 %934, -31457281
  %936 = and i8 %930, 15
  %and2.i.i.i856 = zext i8 %936 to i32
  %shl4.i.i.i857 = shl nuw nsw i32 %and2.i.i.i856, 21
  %or.i.i.i858 = or i32 %and.i.i.i855, %shl4.i.i.i857
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %937 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i859 = and i32 %937, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i859)
  %tobool.not.i.i.i860 = icmp eq i32 %and.i3.i.i859, 0
  br i1 %tobool.not.i.i.i860, label %vdpu_read_mask.exit.i.i861.hantro_reg_write.exit.i865_crit_edge, label %do.end.i.i.i863

vdpu_read_mask.exit.i.i861.hantro_reg_write.exit.i865_crit_edge: ; preds = %vdpu_read_mask.exit.i.i861
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i865

do.end.i.i.i863:                                  ; preds = %vdpu_read_mask.exit.i.i861
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i862 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i.i858) #8
  br label %hantro_reg_write.exit.i865

hantro_reg_write.exit.i865:                       ; preds = %do.end.i.i.i863, %vdpu_read_mask.exit.i.i861.hantro_reg_write.exit.i865_crit_edge
  %938 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i858) #5
  %939 = ptrtoint ptr %dec_base.i.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %dec_base.i.i.i153.i, align 8
  %add.ptr.i.i.i864 = getelementptr i8, ptr %940, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i864, i32 %938) #5, !srcloc !31
  %941 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %ctx, align 8
  %943 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %943)
  %944 = load i8, ptr %bit_depth.i, align 4
  %dec_base.i.i.i64.i = getelementptr inbounds %struct.hantro_dev, ptr %942, i32 0, i32 11
  %945 = ptrtoint ptr %dec_base.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %dec_base.i.i.i64.i, align 8
  %add.ptr.i.i.i65.i = getelementptr i8, ptr %946, i32 32
  %947 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i65.i) #5, !srcloc !32
  %948 = tail call i32 @llvm.bswap.i32(i32 %947) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %949 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i66.i = and i32 %949, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i66.i)
  %tobool.not.i.i.i67.i = icmp eq i32 %and.i.i.i66.i, 0
  br i1 %tobool.not.i.i.i67.i, label %hantro_reg_write.exit.i865.vdpu_read_mask.exit.i81.i_crit_edge, label %do.end.i.i.i70.i

hantro_reg_write.exit.i865.vdpu_read_mask.exit.i81.i_crit_edge: ; preds = %hantro_reg_write.exit.i865
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i81.i

do.end.i.i.i70.i:                                 ; preds = %hantro_reg_write.exit.i865
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %948) #8
  br label %vdpu_read_mask.exit.i81.i

vdpu_read_mask.exit.i81.i:                        ; preds = %do.end.i.i.i70.i, %hantro_reg_write.exit.i865.vdpu_read_mask.exit.i81.i_crit_edge
  %and.i.i75.i = and i32 %948, -1966081
  %950 = and i8 %944, 15
  %and2.i.i76.i = zext i8 %950 to i32
  %shl4.i.i77.i = shl nuw nsw i32 %and2.i.i76.i, 17
  %or.i.i78.i = or i32 %and.i.i75.i, %shl4.i.i77.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %951 = load i32, ptr @hantro_debug, align 4
  %and.i3.i79.i = and i32 %951, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i79.i)
  %tobool.not.i.i80.i = icmp eq i32 %and.i3.i79.i, 0
  br i1 %tobool.not.i.i80.i, label %vdpu_read_mask.exit.i81.i.hantro_reg_write.exit86.i_crit_edge, label %do.end.i.i84.i

vdpu_read_mask.exit.i81.i.hantro_reg_write.exit86.i_crit_edge: ; preds = %vdpu_read_mask.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit86.i

do.end.i.i84.i:                                   ; preds = %vdpu_read_mask.exit.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i78.i) #8
  br label %hantro_reg_write.exit86.i

hantro_reg_write.exit86.i:                        ; preds = %do.end.i.i84.i, %vdpu_read_mask.exit.i81.i.hantro_reg_write.exit86.i_crit_edge
  %952 = tail call i32 @llvm.bswap.i32(i32 %or.i.i78.i) #5
  %953 = ptrtoint ptr %dec_base.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %dec_base.i.i.i64.i, align 8
  %add.ptr.i.i85.i = getelementptr i8, ptr %954, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i85.i, i32 %952) #5, !srcloc !31
  %955 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %ctx, align 8
  %957 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %957)
  %958 = load i8, ptr %bit_depth.i, align 4
  %dec_base.i.i.i87.i = getelementptr inbounds %struct.hantro_dev, ptr %956, i32 0, i32 11
  %959 = ptrtoint ptr %dec_base.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %dec_base.i.i.i87.i, align 8
  %add.ptr.i.i.i88.i = getelementptr i8, ptr %960, i32 32
  %961 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i88.i) #5, !srcloc !32
  %962 = tail call i32 @llvm.bswap.i32(i32 %961) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %963 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i89.i = and i32 %963, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89.i)
  %tobool.not.i.i.i90.i = icmp eq i32 %and.i.i.i89.i, 0
  br i1 %tobool.not.i.i.i90.i, label %hantro_reg_write.exit86.i.vdpu_read_mask.exit.i104.i_crit_edge, label %do.end.i.i.i93.i

hantro_reg_write.exit86.i.vdpu_read_mask.exit.i104.i_crit_edge: ; preds = %hantro_reg_write.exit86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i104.i

do.end.i.i.i93.i:                                 ; preds = %hantro_reg_write.exit86.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %962) #8
  br label %vdpu_read_mask.exit.i104.i

vdpu_read_mask.exit.i104.i:                       ; preds = %do.end.i.i.i93.i, %hantro_reg_write.exit86.i.vdpu_read_mask.exit.i104.i_crit_edge
  %and.i.i98.i = and i32 %962, -241
  %964 = shl i8 %958, 4
  %shl4.i.i100.i = zext i8 %964 to i32
  %or.i.i101.i = or i32 %and.i.i98.i, %shl4.i.i100.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %965 = load i32, ptr @hantro_debug, align 4
  %and.i3.i102.i = and i32 %965, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i102.i)
  %tobool.not.i.i103.i = icmp eq i32 %and.i3.i102.i, 0
  br i1 %tobool.not.i.i103.i, label %vdpu_read_mask.exit.i104.i.hantro_reg_write.exit109.i_crit_edge, label %do.end.i.i107.i

vdpu_read_mask.exit.i104.i.hantro_reg_write.exit109.i_crit_edge: ; preds = %vdpu_read_mask.exit.i104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit109.i

do.end.i.i107.i:                                  ; preds = %vdpu_read_mask.exit.i104.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i101.i) #8
  br label %hantro_reg_write.exit109.i

hantro_reg_write.exit109.i:                       ; preds = %do.end.i.i107.i, %vdpu_read_mask.exit.i104.i.hantro_reg_write.exit109.i_crit_edge
  %966 = tail call i32 @llvm.bswap.i32(i32 %or.i.i101.i) #5
  %967 = ptrtoint ptr %dec_base.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %dec_base.i.i.i87.i, align 8
  %add.ptr.i.i108.i = getelementptr i8, ptr %968, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108.i, i32 %966) #5, !srcloc !31
  %969 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %969)
  %970 = load i8, ptr %bit_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %970)
  %cmp.i866 = icmp ugt i8 %970, 8
  %971 = sub i8 0, %970
  %972 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i110.i = getelementptr inbounds %struct.hantro_dev, ptr %973, i32 0, i32 11
  %974 = ptrtoint ptr %dec_base.i.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %dec_base.i.i.i110.i, align 8
  %add.ptr.i.i.i111.i = getelementptr i8, ptr %975, i32 32
  %976 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i111.i) #5, !srcloc !32
  %977 = tail call i32 @llvm.bswap.i32(i32 %976) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %978 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i112.i = and i32 %978, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i112.i)
  %tobool.not.i.i.i113.i = icmp eq i32 %and.i.i.i112.i, 0
  br i1 %tobool.not.i.i.i113.i, label %hantro_reg_write.exit109.i.vdpu_read_mask.exit.i127.i_crit_edge, label %do.end.i.i.i116.i

hantro_reg_write.exit109.i.vdpu_read_mask.exit.i127.i_crit_edge: ; preds = %hantro_reg_write.exit109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i127.i

do.end.i.i.i116.i:                                ; preds = %hantro_reg_write.exit109.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %977) #8
  br label %vdpu_read_mask.exit.i127.i

vdpu_read_mask.exit.i127.i:                       ; preds = %do.end.i.i.i116.i, %hantro_reg_write.exit109.i.vdpu_read_mask.exit.i127.i_crit_edge
  %and.i.i121.i = and i32 %977, -16
  %.op.i = and i8 %971, 15
  %979 = select i1 %cmp.i866, i8 %.op.i, i8 0
  %and2.i.i122.i = zext i8 %979 to i32
  %or.i.i124.i = or i32 %and.i.i121.i, %and2.i.i122.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %980 = load i32, ptr @hantro_debug, align 4
  %and.i3.i125.i = and i32 %980, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i125.i)
  %tobool.not.i.i126.i = icmp eq i32 %and.i3.i125.i, 0
  br i1 %tobool.not.i.i126.i, label %vdpu_read_mask.exit.i127.i.hantro_reg_write.exit132.i_crit_edge, label %do.end.i.i130.i

vdpu_read_mask.exit.i127.i.hantro_reg_write.exit132.i_crit_edge: ; preds = %vdpu_read_mask.exit.i127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit132.i

do.end.i.i130.i:                                  ; preds = %vdpu_read_mask.exit.i127.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i124.i) #8
  br label %hantro_reg_write.exit132.i

hantro_reg_write.exit132.i:                       ; preds = %do.end.i.i130.i, %vdpu_read_mask.exit.i127.i.hantro_reg_write.exit132.i_crit_edge
  %981 = tail call i32 @llvm.bswap.i32(i32 %or.i.i124.i) #5
  %982 = ptrtoint ptr %dec_base.i.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %dec_base.i.i.i110.i, align 8
  %add.ptr.i.i131.i = getelementptr i8, ptr %983, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i131.i, i32 %981) #5, !srcloc !31
  %984 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i133.i = getelementptr inbounds %struct.hantro_dev, ptr %985, i32 0, i32 11
  %986 = ptrtoint ptr %dec_base.i.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %dec_base.i.i.i133.i, align 8
  %add.ptr.i.i.i134.i = getelementptr i8, ptr %987, i32 20
  %988 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i134.i) #5, !srcloc !32
  %989 = tail call i32 @llvm.bswap.i32(i32 %988) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %990 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i135.i = and i32 %990, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i135.i)
  %tobool.not.i.i.i136.i = icmp eq i32 %and.i.i.i135.i, 0
  br i1 %tobool.not.i.i.i136.i, label %hantro_reg_write.exit132.i.vdpu_read_mask.exit.i147.i_crit_edge, label %do.end.i.i.i139.i

hantro_reg_write.exit132.i.vdpu_read_mask.exit.i147.i_crit_edge: ; preds = %hantro_reg_write.exit132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i147.i

do.end.i.i.i139.i:                                ; preds = %hantro_reg_write.exit132.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 5, i32 noundef %989) #8
  br label %vdpu_read_mask.exit.i147.i

vdpu_read_mask.exit.i147.i:                       ; preds = %do.end.i.i.i139.i, %hantro_reg_write.exit132.i.vdpu_read_mask.exit.i147.i_crit_edge
  %and.i.i144.i = and i32 %989, -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %991 = load i32, ptr @hantro_debug, align 4
  %and.i3.i145.i = and i32 %991, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i145.i)
  %tobool.not.i.i146.i = icmp eq i32 %and.i3.i145.i, 0
  br i1 %tobool.not.i.i146.i, label %vdpu_read_mask.exit.i147.i.hantro_reg_write.exit152.i_crit_edge, label %do.end.i.i150.i

vdpu_read_mask.exit.i147.i.hantro_reg_write.exit152.i_crit_edge: ; preds = %vdpu_read_mask.exit.i147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit152.i

do.end.i.i150.i:                                  ; preds = %vdpu_read_mask.exit.i147.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i149.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 5, i32 noundef %and.i.i144.i) #8
  br label %hantro_reg_write.exit152.i

hantro_reg_write.exit152.i:                       ; preds = %do.end.i.i150.i, %vdpu_read_mask.exit.i147.i.hantro_reg_write.exit152.i_crit_edge
  %992 = tail call i32 @llvm.bswap.i32(i32 %and.i.i144.i) #5
  %993 = ptrtoint ptr %dec_base.i.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %dec_base.i.i.i133.i, align 8
  %add.ptr.i.i151.i = getelementptr i8, ptr %994, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i151.i, i32 %992) #5, !srcloc !31
  br label %config_bit_depth.exit

if.else.i867:                                     ; preds = %config_picture_dimensions.exit
  br i1 %tobool.not.i.i.i156.i, label %if.else.i867.vdpu_read_mask.exit.i170.i_crit_edge, label %do.end.i.i.i159.i

if.else.i867.vdpu_read_mask.exit.i170.i_crit_edge: ; preds = %if.else.i867
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i170.i

do.end.i.i.i159.i:                                ; preds = %if.else.i867
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i158.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %934) #8
  br label %vdpu_read_mask.exit.i170.i

vdpu_read_mask.exit.i170.i:                       ; preds = %do.end.i.i.i159.i, %if.else.i867.vdpu_read_mask.exit.i170.i_crit_edge
  %and.i.i164.i = and i32 %934, -193
  %995 = shl i8 %930, 6
  %shl4.i.i166.i = zext i8 %995 to i32
  %or.i.i167.i = or i32 %and.i.i164.i, %shl4.i.i166.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %996 = load i32, ptr @hantro_debug, align 4
  %and.i3.i168.i = and i32 %996, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i168.i)
  %tobool.not.i.i169.i = icmp eq i32 %and.i3.i168.i, 0
  br i1 %tobool.not.i.i169.i, label %vdpu_read_mask.exit.i170.i.hantro_reg_write.exit175.i_crit_edge, label %do.end.i.i173.i

vdpu_read_mask.exit.i170.i.hantro_reg_write.exit175.i_crit_edge: ; preds = %vdpu_read_mask.exit.i170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit175.i

do.end.i.i173.i:                                  ; preds = %vdpu_read_mask.exit.i170.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i172.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i167.i) #8
  br label %hantro_reg_write.exit175.i

hantro_reg_write.exit175.i:                       ; preds = %do.end.i.i173.i, %vdpu_read_mask.exit.i170.i.hantro_reg_write.exit175.i_crit_edge
  %997 = tail call i32 @llvm.bswap.i32(i32 %or.i.i167.i) #5
  %998 = ptrtoint ptr %dec_base.i.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %998)
  %999 = load ptr, ptr %dec_base.i.i.i153.i, align 8
  %add.ptr.i.i174.i = getelementptr i8, ptr %999, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i174.i, i32 %997) #5, !srcloc !31
  %1000 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %ctx, align 8
  %1002 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %1002)
  %1003 = load i8, ptr %bit_depth.i, align 4
  %dec_base.i.i.i176.i = getelementptr inbounds %struct.hantro_dev, ptr %1001, i32 0, i32 11
  %1004 = ptrtoint ptr %dec_base.i.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %dec_base.i.i.i176.i, align 8
  %add.ptr.i.i.i177.i = getelementptr i8, ptr %1005, i32 32
  %1006 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i177.i) #5, !srcloc !32
  %1007 = tail call i32 @llvm.bswap.i32(i32 %1006) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1008 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i178.i = and i32 %1008, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i178.i)
  %tobool.not.i.i.i179.i = icmp eq i32 %and.i.i.i178.i, 0
  br i1 %tobool.not.i.i.i179.i, label %hantro_reg_write.exit175.i.vdpu_read_mask.exit.i193.i_crit_edge, label %do.end.i.i.i182.i

hantro_reg_write.exit175.i.vdpu_read_mask.exit.i193.i_crit_edge: ; preds = %hantro_reg_write.exit175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i193.i

do.end.i.i.i182.i:                                ; preds = %hantro_reg_write.exit175.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i181.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %1007) #8
  br label %vdpu_read_mask.exit.i193.i

vdpu_read_mask.exit.i193.i:                       ; preds = %do.end.i.i.i182.i, %hantro_reg_write.exit175.i.vdpu_read_mask.exit.i193.i_crit_edge
  %and.i.i187.i = and i32 %1007, -49
  %1009 = shl i8 %1003, 4
  %1010 = and i8 %1009, 48
  %shl4.i.i189.i = zext i8 %1010 to i32
  %or.i.i190.i = or i32 %and.i.i187.i, %shl4.i.i189.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1011 = load i32, ptr @hantro_debug, align 4
  %and.i3.i191.i = and i32 %1011, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i191.i)
  %tobool.not.i.i192.i = icmp eq i32 %and.i3.i191.i, 0
  br i1 %tobool.not.i.i192.i, label %vdpu_read_mask.exit.i193.i.hantro_reg_write.exit198.i_crit_edge, label %do.end.i.i196.i

vdpu_read_mask.exit.i193.i.hantro_reg_write.exit198.i_crit_edge: ; preds = %vdpu_read_mask.exit.i193.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit198.i

do.end.i.i196.i:                                  ; preds = %vdpu_read_mask.exit.i193.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i195.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i190.i) #8
  br label %hantro_reg_write.exit198.i

hantro_reg_write.exit198.i:                       ; preds = %do.end.i.i196.i, %vdpu_read_mask.exit.i193.i.hantro_reg_write.exit198.i_crit_edge
  %1012 = tail call i32 @llvm.bswap.i32(i32 %or.i.i190.i) #5
  %1013 = ptrtoint ptr %dec_base.i.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %dec_base.i.i.i176.i, align 8
  %add.ptr.i.i197.i = getelementptr i8, ptr %1014, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i197.i, i32 %1012) #5, !srcloc !31
  br label %config_bit_depth.exit

config_bit_depth.exit:                            ; preds = %hantro_reg_write.exit198.i, %hantro_reg_write.exit152.i
  %1015 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %ctx, align 8
  %delta_q_y_dc.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 1, i32 1
  %1017 = ptrtoint ptr %delta_q_y_dc.i to i32
  call void @__asan_load1_noabort(i32 %1017)
  %1018 = load i8, ptr %delta_q_y_dc.i, align 1
  %dec_base.i.i.i.i869 = getelementptr inbounds %struct.hantro_dev, ptr %1016, i32 0, i32 11
  %1019 = ptrtoint ptr %dec_base.i.i.i.i869 to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load ptr, ptr %dec_base.i.i.i.i869, align 8
  %add.ptr.i.i.i.i870 = getelementptr i8, ptr %1020, i32 52
  %1021 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i870) #5, !srcloc !32
  %1022 = tail call i32 @llvm.bswap.i32(i32 %1021) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1023 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i871 = and i32 %1023, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i871)
  %tobool.not.i.i.i.i872 = icmp eq i32 %and.i.i.i.i871, 0
  br i1 %tobool.not.i.i.i.i872, label %config_bit_depth.exit.vdpu_read_mask.exit.i.i881_crit_edge, label %do.end.i.i.i.i874

config_bit_depth.exit.vdpu_read_mask.exit.i.i881_crit_edge: ; preds = %config_bit_depth.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i881

do.end.i.i.i.i874:                                ; preds = %config_bit_depth.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i873 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %1022) #8
  br label %vdpu_read_mask.exit.i.i881

vdpu_read_mask.exit.i.i881:                       ; preds = %do.end.i.i.i.i874, %config_bit_depth.exit.vdpu_read_mask.exit.i.i881_crit_edge
  %and.i.i.i875 = and i32 %1022, -528482305
  %1024 = and i8 %1018, 63
  %and2.i.i.i876 = zext i8 %1024 to i32
  %shl4.i.i.i877 = shl nuw nsw i32 %and2.i.i.i876, 23
  %or.i.i.i878 = or i32 %and.i.i.i875, %shl4.i.i.i877
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1025 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i879 = and i32 %1025, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i879)
  %tobool.not.i.i.i880 = icmp eq i32 %and.i3.i.i879, 0
  br i1 %tobool.not.i.i.i880, label %vdpu_read_mask.exit.i.i881.hantro_reg_write.exit.i885_crit_edge, label %do.end.i.i.i883

vdpu_read_mask.exit.i.i881.hantro_reg_write.exit.i885_crit_edge: ; preds = %vdpu_read_mask.exit.i.i881
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i885

do.end.i.i.i883:                                  ; preds = %vdpu_read_mask.exit.i.i881
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i882 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i.i878) #8
  br label %hantro_reg_write.exit.i885

hantro_reg_write.exit.i885:                       ; preds = %do.end.i.i.i883, %vdpu_read_mask.exit.i.i881.hantro_reg_write.exit.i885_crit_edge
  %1026 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i878) #5
  %1027 = ptrtoint ptr %dec_base.i.i.i.i869 to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %dec_base.i.i.i.i869, align 8
  %add.ptr.i.i.i884 = getelementptr i8, ptr %1028, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i884, i32 %1026) #5, !srcloc !31
  %1029 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load ptr, ptr %ctx, align 8
  %delta_q_uv_dc.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 1, i32 2
  %1031 = ptrtoint ptr %delta_q_uv_dc.i to i32
  call void @__asan_load1_noabort(i32 %1031)
  %1032 = load i8, ptr %delta_q_uv_dc.i, align 2
  %dec_base.i.i.i28.i = getelementptr inbounds %struct.hantro_dev, ptr %1030, i32 0, i32 11
  %1033 = ptrtoint ptr %dec_base.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %dec_base.i.i.i28.i, align 8
  %add.ptr.i.i.i29.i = getelementptr i8, ptr %1034, i32 52
  %1035 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i29.i) #5, !srcloc !32
  %1036 = tail call i32 @llvm.bswap.i32(i32 %1035) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1037 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i30.i = and i32 %1037, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30.i)
  %tobool.not.i.i.i31.i = icmp eq i32 %and.i.i.i30.i, 0
  br i1 %tobool.not.i.i.i31.i, label %hantro_reg_write.exit.i885.vdpu_read_mask.exit.i45.i_crit_edge, label %do.end.i.i.i34.i

hantro_reg_write.exit.i885.vdpu_read_mask.exit.i45.i_crit_edge: ; preds = %hantro_reg_write.exit.i885
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i45.i

do.end.i.i.i34.i:                                 ; preds = %hantro_reg_write.exit.i885
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %1036) #8
  br label %vdpu_read_mask.exit.i45.i

vdpu_read_mask.exit.i45.i:                        ; preds = %do.end.i.i.i34.i, %hantro_reg_write.exit.i885.vdpu_read_mask.exit.i45.i_crit_edge
  %and.i.i39.i = and i32 %1036, -8257537
  %1038 = and i8 %1032, 63
  %and2.i.i40.i = zext i8 %1038 to i32
  %shl4.i.i41.i = shl nuw nsw i32 %and2.i.i40.i, 17
  %or.i.i42.i = or i32 %and.i.i39.i, %shl4.i.i41.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1039 = load i32, ptr @hantro_debug, align 4
  %and.i3.i43.i = and i32 %1039, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i43.i)
  %tobool.not.i.i44.i = icmp eq i32 %and.i3.i43.i, 0
  br i1 %tobool.not.i.i44.i, label %vdpu_read_mask.exit.i45.i.hantro_reg_write.exit50.i_crit_edge, label %do.end.i.i48.i887

vdpu_read_mask.exit.i45.i.hantro_reg_write.exit50.i_crit_edge: ; preds = %vdpu_read_mask.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit50.i

do.end.i.i48.i887:                                ; preds = %vdpu_read_mask.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i47.i886 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i42.i) #8
  br label %hantro_reg_write.exit50.i

hantro_reg_write.exit50.i:                        ; preds = %do.end.i.i48.i887, %vdpu_read_mask.exit.i45.i.hantro_reg_write.exit50.i_crit_edge
  %1040 = tail call i32 @llvm.bswap.i32(i32 %or.i.i42.i) #5
  %1041 = ptrtoint ptr %dec_base.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %dec_base.i.i.i28.i, align 8
  %add.ptr.i.i49.i888 = getelementptr i8, ptr %1042, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i888, i32 %1040) #5, !srcloc !31
  %1043 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %ctx, align 8
  %delta_q_uv_ac.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 1, i32 3
  %1045 = ptrtoint ptr %delta_q_uv_ac.i to i32
  call void @__asan_load1_noabort(i32 %1045)
  %1046 = load i8, ptr %delta_q_uv_ac.i, align 1
  %dec_base.i.i.i51.i = getelementptr inbounds %struct.hantro_dev, ptr %1044, i32 0, i32 11
  %1047 = ptrtoint ptr %dec_base.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %dec_base.i.i.i51.i, align 8
  %add.ptr.i.i.i52.i = getelementptr i8, ptr %1048, i32 52
  %1049 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i52.i) #5, !srcloc !32
  %1050 = tail call i32 @llvm.bswap.i32(i32 %1049) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1051 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i53.i = and i32 %1051, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i53.i)
  %tobool.not.i.i.i54.i = icmp eq i32 %and.i.i.i53.i, 0
  br i1 %tobool.not.i.i.i54.i, label %hantro_reg_write.exit50.i.vdpu_read_mask.exit.i68.i_crit_edge, label %do.end.i.i.i57.i

hantro_reg_write.exit50.i.vdpu_read_mask.exit.i68.i_crit_edge: ; preds = %hantro_reg_write.exit50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i68.i

do.end.i.i.i57.i:                                 ; preds = %hantro_reg_write.exit50.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %1050) #8
  br label %vdpu_read_mask.exit.i68.i

vdpu_read_mask.exit.i68.i:                        ; preds = %do.end.i.i.i57.i, %hantro_reg_write.exit50.i.vdpu_read_mask.exit.i68.i_crit_edge
  %and.i.i62.i = and i32 %1050, -129025
  %1052 = and i8 %1046, 63
  %and2.i.i63.i = zext i8 %1052 to i32
  %shl4.i.i64.i = shl nuw nsw i32 %and2.i.i63.i, 11
  %or.i.i65.i = or i32 %and.i.i62.i, %shl4.i.i64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1053 = load i32, ptr @hantro_debug, align 4
  %and.i3.i66.i = and i32 %1053, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i66.i)
  %tobool.not.i.i67.i = icmp eq i32 %and.i3.i66.i, 0
  br i1 %tobool.not.i.i67.i, label %vdpu_read_mask.exit.i68.i.hantro_reg_write.exit73.i_crit_edge, label %do.end.i.i71.i

vdpu_read_mask.exit.i68.i.hantro_reg_write.exit73.i_crit_edge: ; preds = %vdpu_read_mask.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit73.i

do.end.i.i71.i:                                   ; preds = %vdpu_read_mask.exit.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i65.i) #8
  br label %hantro_reg_write.exit73.i

hantro_reg_write.exit73.i:                        ; preds = %do.end.i.i71.i, %vdpu_read_mask.exit.i68.i.hantro_reg_write.exit73.i_crit_edge
  %1054 = tail call i32 @llvm.bswap.i32(i32 %or.i.i65.i) #5
  %1055 = ptrtoint ptr %dec_base.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %dec_base.i.i.i51.i, align 8
  %add.ptr.i.i72.i = getelementptr i8, ptr %1056, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72.i, i32 %1054) #5, !srcloc !31
  %1057 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %ctx, align 8
  %1059 = ptrtoint ptr %quant.i to i32
  call void @__asan_load1_noabort(i32 %1059)
  %1060 = load i8, ptr %quant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1060)
  %cmp.i.i889 = icmp eq i8 %1060, 0
  br i1 %cmp.i.i889, label %land.lhs.true.i.i, label %hantro_reg_write.exit73.i.is_lossless.exit.i_crit_edge

hantro_reg_write.exit73.i.is_lossless.exit.i_crit_edge: ; preds = %hantro_reg_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_lossless.exit.i

land.lhs.true.i.i:                                ; preds = %hantro_reg_write.exit73.i
  %1061 = ptrtoint ptr %delta_q_uv_ac.i to i32
  call void @__asan_load1_noabort(i32 %1061)
  %1062 = load i8, ptr %delta_q_uv_ac.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1062)
  %cmp3.i.i = icmp eq i8 %1062, 0
  br i1 %cmp3.i.i, label %land.lhs.true5.i.i, label %land.lhs.true.i.i.is_lossless.exit.i_crit_edge

land.lhs.true.i.i.is_lossless.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_lossless.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %1063 = ptrtoint ptr %delta_q_uv_dc.i to i32
  call void @__asan_load1_noabort(i32 %1063)
  %1064 = load i8, ptr %delta_q_uv_dc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1064)
  %cmp7.i.i890 = icmp eq i8 %1064, 0
  br i1 %cmp7.i.i890, label %land.rhs.i.i, label %land.lhs.true5.i.i.is_lossless.exit.i_crit_edge

land.lhs.true5.i.i.is_lossless.exit.i_crit_edge:  ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_lossless.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %1065 = ptrtoint ptr %delta_q_y_dc.i to i32
  call void @__asan_load1_noabort(i32 %1065)
  %1066 = load i8, ptr %delta_q_y_dc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1066)
  %cmp10.i.i = icmp eq i8 %1066, 0
  %phi.bo.i891 = select i1 %cmp10.i.i, i32 512, i32 0
  br label %is_lossless.exit.i

is_lossless.exit.i:                               ; preds = %land.rhs.i.i, %land.lhs.true5.i.i.is_lossless.exit.i_crit_edge, %land.lhs.true.i.i.is_lossless.exit.i_crit_edge, %hantro_reg_write.exit73.i.is_lossless.exit.i_crit_edge
  %1067 = phi i32 [ 0, %land.lhs.true5.i.i.is_lossless.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i.is_lossless.exit.i_crit_edge ], [ 0, %hantro_reg_write.exit73.i.is_lossless.exit.i_crit_edge ], [ %phi.bo.i891, %land.rhs.i.i ]
  %dec_base.i.i.i74.i = getelementptr inbounds %struct.hantro_dev, ptr %1058, i32 0, i32 11
  %1068 = ptrtoint ptr %dec_base.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %dec_base.i.i.i74.i, align 8
  %add.ptr.i.i.i75.i = getelementptr i8, ptr %1069, i32 52
  %1070 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i75.i) #5, !srcloc !32
  %1071 = tail call i32 @llvm.bswap.i32(i32 %1070) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1072 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i76.i = and i32 %1072, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i76.i)
  %tobool.not.i.i.i77.i = icmp eq i32 %and.i.i.i76.i, 0
  br i1 %tobool.not.i.i.i77.i, label %is_lossless.exit.i.vdpu_read_mask.exit.i91.i_crit_edge, label %do.end.i.i.i80.i

is_lossless.exit.i.vdpu_read_mask.exit.i91.i_crit_edge: ; preds = %is_lossless.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i91.i

do.end.i.i.i80.i:                                 ; preds = %is_lossless.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %1071) #8
  br label %vdpu_read_mask.exit.i91.i

vdpu_read_mask.exit.i91.i:                        ; preds = %do.end.i.i.i80.i, %is_lossless.exit.i.vdpu_read_mask.exit.i91.i_crit_edge
  %and.i.i85.i = and i32 %1071, -513
  %or.i.i88.i = or i32 %and.i.i85.i, %1067
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1073 = load i32, ptr @hantro_debug, align 4
  %and.i3.i89.i = and i32 %1073, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i89.i)
  %tobool.not.i.i90.i = icmp eq i32 %and.i3.i89.i, 0
  br i1 %tobool.not.i.i90.i, label %vdpu_read_mask.exit.i91.i.config_quant.exit_crit_edge, label %do.end.i.i94.i

vdpu_read_mask.exit.i91.i.config_quant.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_quant.exit

do.end.i.i94.i:                                   ; preds = %vdpu_read_mask.exit.i91.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i88.i) #8
  br label %config_quant.exit

config_quant.exit:                                ; preds = %do.end.i.i94.i, %vdpu_read_mask.exit.i91.i.config_quant.exit_crit_edge
  %1074 = tail call i32 @llvm.bswap.i32(i32 %or.i.i88.i) #5
  %1075 = ptrtoint ptr %dec_base.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %dec_base.i.i.i74.i, align 8
  %add.ptr.i.i95.i = getelementptr i8, ptr %1076, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95.i, i32 %1074) #5, !srcloc !31
  %1077 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i892 = getelementptr inbounds %struct.hantro_dev, ptr %1078, i32 0, i32 11
  %1079 = ptrtoint ptr %dec_base.i.i.i.i892 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %dec_base.i.i.i.i892, align 8
  %add.ptr.i.i.i.i893 = getelementptr i8, ptr %1080, i32 32
  %1081 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i893) #5, !srcloc !32
  %1082 = tail call i32 @llvm.bswap.i32(i32 %1081) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1083 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i894 = and i32 %1083, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i894)
  %tobool.not.i.i.i.i895 = icmp eq i32 %and.i.i.i.i894, 0
  br i1 %tobool.not.i.i.i.i895, label %config_quant.exit.vdpu_read_mask.exit.i.i903_crit_edge, label %do.end.i.i.i.i897

config_quant.exit.vdpu_read_mask.exit.i.i903_crit_edge: ; preds = %config_quant.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i903

do.end.i.i.i.i897:                                ; preds = %config_quant.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i896 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 8, i32 noundef %1082) #8
  br label %vdpu_read_mask.exit.i.i903

vdpu_read_mask.exit.i.i903:                       ; preds = %do.end.i.i.i.i897, %config_quant.exit.vdpu_read_mask.exit.i.i903_crit_edge
  %and.i.i.i898 = and i32 %1082, -65537
  %shl4.i.i.i899 = select i1 %tobool5.not1055, i32 0, i32 65536
  %or.i.i.i900 = or i32 %and.i.i.i898, %shl4.i.i.i899
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1084 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i901 = and i32 %1084, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i901)
  %tobool.not.i.i.i902 = icmp eq i32 %and.i3.i.i901, 0
  br i1 %tobool.not.i.i.i902, label %vdpu_read_mask.exit.i.i903.hantro_reg_write.exit.i909_crit_edge, label %do.end.i.i.i905

vdpu_read_mask.exit.i.i903.hantro_reg_write.exit.i909_crit_edge: ; preds = %vdpu_read_mask.exit.i.i903
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i909

do.end.i.i.i905:                                  ; preds = %vdpu_read_mask.exit.i.i903
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i904 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 8, i32 noundef %or.i.i.i900) #8
  br label %hantro_reg_write.exit.i909

hantro_reg_write.exit.i909:                       ; preds = %do.end.i.i.i905, %vdpu_read_mask.exit.i.i903.hantro_reg_write.exit.i909_crit_edge
  %1085 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i900) #5
  %1086 = ptrtoint ptr %dec_base.i.i.i.i892 to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %dec_base.i.i.i.i892, align 8
  %add.ptr.i.i.i906 = getelementptr i8, ptr %1087, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i906, i32 %1085) #5, !srcloc !31
  %1088 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %ctx, align 8
  %1090 = ptrtoint ptr %cur.i to i32
  call void @__asan_load2_noabort(i32 %1090)
  %bf.load.i908 = load i16, ptr %cur.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i908, 8
  %dec_base.i.i.i80.i = getelementptr inbounds %struct.hantro_dev, ptr %1089, i32 0, i32 11
  %1091 = ptrtoint ptr %dec_base.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %dec_base.i.i.i80.i, align 8
  %add.ptr.i.i.i81.i = getelementptr i8, ptr %1092, i32 44
  %1093 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i81.i) #5, !srcloc !32
  %1094 = tail call i32 @llvm.bswap.i32(i32 %1093) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1095 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i82.i = and i32 %1095, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i82.i)
  %tobool.not.i.i.i83.i = icmp eq i32 %and.i.i.i82.i, 0
  br i1 %tobool.not.i.i.i83.i, label %hantro_reg_write.exit.i909.vdpu_read_mask.exit.i97.i_crit_edge, label %do.end.i.i.i86.i

hantro_reg_write.exit.i909.vdpu_read_mask.exit.i97.i_crit_edge: ; preds = %hantro_reg_write.exit.i909
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i97.i

do.end.i.i.i86.i:                                 ; preds = %hantro_reg_write.exit.i909
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 11, i32 noundef %1094) #8
  br label %vdpu_read_mask.exit.i97.i

vdpu_read_mask.exit.i97.i:                        ; preds = %do.end.i.i.i86.i, %hantro_reg_write.exit.i909.vdpu_read_mask.exit.i97.i_crit_edge
  %and.i.i91.i = and i32 %1094, -939524097
  %1096 = and i16 %bf.lshr.i, 7
  %and2.i.i92.i = zext i16 %1096 to i32
  %shl4.i.i93.i = shl nuw nsw i32 %and2.i.i92.i, 27
  %or.i.i94.i = or i32 %and.i.i91.i, %shl4.i.i93.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1097 = load i32, ptr @hantro_debug, align 4
  %and.i3.i95.i = and i32 %1097, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i95.i)
  %tobool.not.i.i96.i = icmp eq i32 %and.i3.i95.i, 0
  br i1 %tobool.not.i.i96.i, label %vdpu_read_mask.exit.i97.i.hantro_reg_write.exit102.i_crit_edge, label %do.end.i.i100.i

vdpu_read_mask.exit.i97.i.hantro_reg_write.exit102.i_crit_edge: ; preds = %vdpu_read_mask.exit.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit102.i

do.end.i.i100.i:                                  ; preds = %vdpu_read_mask.exit.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 11, i32 noundef %or.i.i94.i) #8
  br label %hantro_reg_write.exit102.i

hantro_reg_write.exit102.i:                       ; preds = %do.end.i.i100.i, %vdpu_read_mask.exit.i97.i.hantro_reg_write.exit102.i_crit_edge
  %1098 = tail call i32 @llvm.bswap.i32(i32 %or.i.i94.i) #5
  %1099 = ptrtoint ptr %dec_base.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %dec_base.i.i.i80.i, align 8
  %add.ptr.i.i101.i = getelementptr i8, ptr %1100, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101.i, i32 %1098) #5, !srcloc !31
  %1101 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %ctx, align 8
  br i1 %tobool5.not1055, label %cond.false.i, label %hantro_reg_write.exit102.i.cond.end.i912_crit_edge

hantro_reg_write.exit102.i.cond.end.i912_crit_edge: ; preds = %hantro_reg_write.exit102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i912

cond.false.i:                                     ; preds = %hantro_reg_write.exit102.i
  %1103 = ptrtoint ptr %interpolation_filter.i to i32
  call void @__asan_load1_noabort(i32 %1103)
  %1104 = load i8, ptr %interpolation_filter.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1104)
  %1105 = icmp ult i8 %1104, 5
  br i1 %1105, label %switch.lookup, label %cond.false.i.cond.end.i912_crit_edge

cond.false.i.cond.end.i912_crit_edge:             ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i912

switch.lookup:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %1106 = sext i8 %1104 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.config_registers, i32 0, i32 %1106
  %1107 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1107)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cond.end.i912

cond.end.i912:                                    ; preds = %switch.lookup, %cond.false.i.cond.end.i912_crit_edge, %hantro_reg_write.exit102.i.cond.end.i912_crit_edge
  %cond.i911 = phi i32 [ 0, %hantro_reg_write.exit102.i.cond.end.i912_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %cond.false.i.cond.end.i912_crit_edge ]
  %dec_base.i.i.i103.i = getelementptr inbounds %struct.hantro_dev, ptr %1102, i32 0, i32 11
  %1108 = ptrtoint ptr %dec_base.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %dec_base.i.i.i103.i, align 8
  %add.ptr.i.i.i104.i = getelementptr i8, ptr %1109, i32 44
  %1110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i104.i) #5, !srcloc !32
  %1111 = tail call i32 @llvm.bswap.i32(i32 %1110) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1112 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i105.i = and i32 %1112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105.i)
  %tobool.not.i.i.i106.i = icmp eq i32 %and.i.i.i105.i, 0
  br i1 %tobool.not.i.i.i106.i, label %cond.end.i912.vdpu_read_mask.exit.i120.i_crit_edge, label %do.end.i.i.i109.i

cond.end.i912.vdpu_read_mask.exit.i120.i_crit_edge: ; preds = %cond.end.i912
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i120.i

do.end.i.i.i109.i:                                ; preds = %cond.end.i912
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 11, i32 noundef %1111) #8
  br label %vdpu_read_mask.exit.i120.i

vdpu_read_mask.exit.i120.i:                       ; preds = %do.end.i.i.i109.i, %cond.end.i912.vdpu_read_mask.exit.i120.i_crit_edge
  %and.i.i114.i = and i32 %1111, -1793
  %or.i.i117.i = or i32 %and.i.i114.i, %cond.i911
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1113 = load i32, ptr @hantro_debug, align 4
  %and.i3.i118.i = and i32 %1113, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i118.i)
  %tobool.not.i.i119.i = icmp eq i32 %and.i3.i118.i, 0
  br i1 %tobool.not.i.i119.i, label %vdpu_read_mask.exit.i120.i.hantro_reg_write.exit125.i_crit_edge, label %do.end.i.i123.i

vdpu_read_mask.exit.i120.i.hantro_reg_write.exit125.i_crit_edge: ; preds = %vdpu_read_mask.exit.i120.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit125.i

do.end.i.i123.i:                                  ; preds = %vdpu_read_mask.exit.i120.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 11, i32 noundef %or.i.i117.i) #8
  br label %hantro_reg_write.exit125.i

hantro_reg_write.exit125.i:                       ; preds = %do.end.i.i123.i, %vdpu_read_mask.exit.i120.i.hantro_reg_write.exit125.i_crit_edge
  %1114 = tail call i32 @llvm.bswap.i32(i32 %or.i.i117.i) #5
  %1115 = ptrtoint ptr %dec_base.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %dec_base.i.i.i103.i, align 8
  %add.ptr.i.i124.i = getelementptr i8, ptr %1116, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124.i, i32 %1114) #5, !srcloc !31
  %1117 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %ctx, align 8
  %1119 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load i32, ptr %flags.i, align 8
  %dec_base.i.i.i126.i = getelementptr inbounds %struct.hantro_dev, ptr %1118, i32 0, i32 11
  %1121 = ptrtoint ptr %dec_base.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %dec_base.i.i.i126.i, align 8
  %add.ptr.i.i.i127.i = getelementptr i8, ptr %1122, i32 44
  %1123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i127.i) #5, !srcloc !32
  %1124 = tail call i32 @llvm.bswap.i32(i32 %1123) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1125 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i128.i = and i32 %1125, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i128.i)
  %tobool.not.i.i.i129.i = icmp eq i32 %and.i.i.i128.i, 0
  br i1 %tobool.not.i.i.i129.i, label %hantro_reg_write.exit125.i.vdpu_read_mask.exit.i143.i_crit_edge, label %do.end.i.i.i132.i

hantro_reg_write.exit125.i.vdpu_read_mask.exit.i143.i_crit_edge: ; preds = %hantro_reg_write.exit125.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i143.i

do.end.i.i.i132.i:                                ; preds = %hantro_reg_write.exit125.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 11, i32 noundef %1124) #8
  br label %vdpu_read_mask.exit.i143.i

vdpu_read_mask.exit.i143.i:                       ; preds = %do.end.i.i.i132.i, %hantro_reg_write.exit125.i.vdpu_read_mask.exit.i143.i_crit_edge
  %and.i.i137.i = and i32 %1124, -129
  %1126 = shl i32 %1120, 3
  %shl4.i.i139.i = and i32 %1126, 128
  %or.i.i140.i = or i32 %and.i.i137.i, %shl4.i.i139.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1127 = load i32, ptr @hantro_debug, align 4
  %and.i3.i141.i = and i32 %1127, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i141.i)
  %tobool.not.i.i142.i = icmp eq i32 %and.i3.i141.i, 0
  br i1 %tobool.not.i.i142.i, label %vdpu_read_mask.exit.i143.i.hantro_reg_write.exit148.i_crit_edge, label %do.end.i.i146.i

vdpu_read_mask.exit.i143.i.hantro_reg_write.exit148.i_crit_edge: ; preds = %vdpu_read_mask.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit148.i

do.end.i.i146.i:                                  ; preds = %vdpu_read_mask.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i145.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 11, i32 noundef %or.i.i140.i) #8
  br label %hantro_reg_write.exit148.i

hantro_reg_write.exit148.i:                       ; preds = %do.end.i.i146.i, %vdpu_read_mask.exit.i143.i.hantro_reg_write.exit148.i_crit_edge
  %1128 = tail call i32 @llvm.bswap.i32(i32 %or.i.i140.i) #5
  %1129 = ptrtoint ptr %dec_base.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load ptr, ptr %dec_base.i.i.i126.i, align 8
  %add.ptr.i.i147.i = getelementptr i8, ptr %1130, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147.i, i32 %1128) #5, !srcloc !31
  %1131 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load ptr, ptr %ctx, align 8
  %1133 = ptrtoint ptr %reference_mode.i to i32
  call void @__asan_load1_noabort(i32 %1133)
  %1134 = load i8, ptr %reference_mode.i, align 8
  %dec_base.i.i.i149.i = getelementptr inbounds %struct.hantro_dev, ptr %1132, i32 0, i32 11
  %1135 = ptrtoint ptr %dec_base.i.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %1135)
  %1136 = load ptr, ptr %dec_base.i.i.i149.i, align 8
  %add.ptr.i.i.i150.i = getelementptr i8, ptr %1136, i32 44
  %1137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i150.i) #5, !srcloc !32
  %1138 = tail call i32 @llvm.bswap.i32(i32 %1137) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1139 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i151.i = and i32 %1139, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i151.i)
  %tobool.not.i.i.i152.i = icmp eq i32 %and.i.i.i151.i, 0
  br i1 %tobool.not.i.i.i152.i, label %hantro_reg_write.exit148.i.vdpu_read_mask.exit.i166.i_crit_edge, label %do.end.i.i.i155.i

hantro_reg_write.exit148.i.vdpu_read_mask.exit.i166.i_crit_edge: ; preds = %hantro_reg_write.exit148.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i166.i

do.end.i.i.i155.i:                                ; preds = %hantro_reg_write.exit148.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i154.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 11, i32 noundef %1138) #8
  br label %vdpu_read_mask.exit.i166.i

vdpu_read_mask.exit.i166.i:                       ; preds = %do.end.i.i.i155.i, %hantro_reg_write.exit148.i.vdpu_read_mask.exit.i166.i_crit_edge
  %and.i.i160.i = and i32 %1138, -49
  %1140 = shl i8 %1134, 4
  %1141 = and i8 %1140, 48
  %shl4.i.i162.i = zext i8 %1141 to i32
  %or.i.i163.i = or i32 %and.i.i160.i, %shl4.i.i162.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1142 = load i32, ptr @hantro_debug, align 4
  %and.i3.i164.i = and i32 %1142, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i164.i)
  %tobool.not.i.i165.i = icmp eq i32 %and.i3.i164.i, 0
  br i1 %tobool.not.i.i165.i, label %vdpu_read_mask.exit.i166.i.hantro_reg_write.exit171.i_crit_edge, label %do.end.i.i169.i

vdpu_read_mask.exit.i166.i.hantro_reg_write.exit171.i_crit_edge: ; preds = %vdpu_read_mask.exit.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit171.i

do.end.i.i169.i:                                  ; preds = %vdpu_read_mask.exit.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i168.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 11, i32 noundef %or.i.i163.i) #8
  br label %hantro_reg_write.exit171.i

hantro_reg_write.exit171.i:                       ; preds = %do.end.i.i169.i, %vdpu_read_mask.exit.i166.i.hantro_reg_write.exit171.i_crit_edge
  %1143 = tail call i32 @llvm.bswap.i32(i32 %or.i.i163.i) #5
  %1144 = ptrtoint ptr %dec_base.i.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %dec_base.i.i.i149.i, align 8
  %add.ptr.i.i170.i = getelementptr i8, ptr %1145, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i170.i, i32 %1143) #5, !srcloc !31
  %1146 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %ctx, align 8
  %1148 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load i32, ptr %flags.i, align 8
  %1150 = and i32 %1149, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1150)
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %land.lhs.true39.i, label %hantro_reg_write.exit171.i.land.end.i_crit_edge

hantro_reg_write.exit171.i.land.end.i_crit_edge:  ; preds = %hantro_reg_write.exit171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.lhs.true39.i:                                ; preds = %hantro_reg_write.exit171.i
  %flags40.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 7, i32 1
  %1152 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load i32, ptr %flags40.i, align 4
  %and41.i = and i32 %1153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp ne i32 %and41.i, 0
  %and45.i = and i32 %1149, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp ne i32 %and45.i, 0
  %or.cond79.i = select i1 %tobool42.not.i, i1 true, i1 %tobool46.not.i
  %brmerge.i = or i1 %46, %or.cond79.i
  br i1 %brmerge.i, label %land.lhs.true39.i.land.end.i_crit_edge, label %land.rhs.i

land.lhs.true39.i.land.end.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end.i

land.rhs.i:                                       ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #7
  %1154 = shl i32 %1153, 10
  %phi.bo.i915 = and i32 %1154, 2048
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true39.i.land.end.i_crit_edge, %hantro_reg_write.exit171.i.land.end.i_crit_edge
  %1155 = phi i32 [ 0, %land.lhs.true39.i.land.end.i_crit_edge ], [ 0, %hantro_reg_write.exit171.i.land.end.i_crit_edge ], [ %phi.bo.i915, %land.rhs.i ]
  %dec_base.i.i.i172.i = getelementptr inbounds %struct.hantro_dev, ptr %1147, i32 0, i32 11
  %1156 = ptrtoint ptr %dec_base.i.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %dec_base.i.i.i172.i, align 8
  %add.ptr.i.i.i173.i = getelementptr i8, ptr %1157, i32 20
  %1158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i173.i) #5, !srcloc !32
  %1159 = tail call i32 @llvm.bswap.i32(i32 %1158) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1160 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i174.i = and i32 %1160, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i174.i)
  %tobool.not.i.i.i175.i = icmp eq i32 %and.i.i.i174.i, 0
  br i1 %tobool.not.i.i.i175.i, label %land.end.i.vdpu_read_mask.exit.i189.i_crit_edge, label %do.end.i.i.i178.i

land.end.i.vdpu_read_mask.exit.i189.i_crit_edge:  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i189.i

do.end.i.i.i178.i:                                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 5, i32 noundef %1159) #8
  br label %vdpu_read_mask.exit.i189.i

vdpu_read_mask.exit.i189.i:                       ; preds = %do.end.i.i.i178.i, %land.end.i.vdpu_read_mask.exit.i189.i_crit_edge
  %and.i.i183.i = and i32 %1159, -2049
  %or.i.i186.i = or i32 %and.i.i183.i, %1155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1161 = load i32, ptr @hantro_debug, align 4
  %and.i3.i187.i = and i32 %1161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i187.i)
  %tobool.not.i.i188.i = icmp eq i32 %and.i3.i187.i, 0
  br i1 %tobool.not.i.i188.i, label %vdpu_read_mask.exit.i189.i.hantro_reg_write.exit194.i_crit_edge, label %do.end.i.i192.i

vdpu_read_mask.exit.i189.i.hantro_reg_write.exit194.i_crit_edge: ; preds = %vdpu_read_mask.exit.i189.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit194.i

do.end.i.i192.i:                                  ; preds = %vdpu_read_mask.exit.i189.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i191.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i186.i) #8
  br label %hantro_reg_write.exit194.i

hantro_reg_write.exit194.i:                       ; preds = %do.end.i.i192.i, %vdpu_read_mask.exit.i189.i.hantro_reg_write.exit194.i_crit_edge
  %1162 = tail call i32 @llvm.bswap.i32(i32 %or.i.i186.i) #5
  %1163 = ptrtoint ptr %dec_base.i.i.i172.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load ptr, ptr %dec_base.i.i.i172.i, align 8
  %add.ptr.i.i193.i = getelementptr i8, ptr %1164, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i193.i, i32 %1162) #5, !srcloc !31
  %1165 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load ptr, ptr %ctx, align 8
  %1167 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load i32, ptr %flags.i, align 8
  %dec_base.i.i.i195.i = getelementptr inbounds %struct.hantro_dev, ptr %1166, i32 0, i32 11
  %1169 = ptrtoint ptr %dec_base.i.i.i195.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load ptr, ptr %dec_base.i.i.i195.i, align 8
  %add.ptr.i.i.i196.i = getelementptr i8, ptr %1170, i32 12
  %1171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i196.i) #5, !srcloc !32
  %1172 = tail call i32 @llvm.bswap.i32(i32 %1171) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1173 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i197.i = and i32 %1173, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i197.i)
  %tobool.not.i.i.i198.i = icmp eq i32 %and.i.i.i197.i, 0
  br i1 %tobool.not.i.i.i198.i, label %hantro_reg_write.exit194.i.vdpu_read_mask.exit.i212.i_crit_edge, label %do.end.i.i.i201.i

hantro_reg_write.exit194.i.vdpu_read_mask.exit.i212.i_crit_edge: ; preds = %hantro_reg_write.exit194.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i212.i

do.end.i.i.i201.i:                                ; preds = %hantro_reg_write.exit194.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i200.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 3, i32 noundef %1172) #8
  br label %vdpu_read_mask.exit.i212.i

vdpu_read_mask.exit.i212.i:                       ; preds = %do.end.i.i.i201.i, %hantro_reg_write.exit194.i.vdpu_read_mask.exit.i212.i_crit_edge
  %and.i.i206.i = and i32 %1172, -4097
  %and59.i = shl i32 %1168, 12
  %1174 = and i32 %and59.i, 4096
  %1175 = or i32 %and.i.i206.i, %1174
  %or.i.i209.i = xor i32 %1175, 4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1176 = load i32, ptr @hantro_debug, align 4
  %and.i3.i210.i = and i32 %1176, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i210.i)
  %tobool.not.i.i211.i = icmp eq i32 %and.i3.i210.i, 0
  br i1 %tobool.not.i.i211.i, label %vdpu_read_mask.exit.i212.i.config_others.exit_crit_edge, label %do.end.i.i215.i

vdpu_read_mask.exit.i212.i.config_others.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i212.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_others.exit

do.end.i.i215.i:                                  ; preds = %vdpu_read_mask.exit.i212.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i214.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i209.i) #8
  br label %config_others.exit

config_others.exit:                               ; preds = %do.end.i.i215.i, %vdpu_read_mask.exit.i212.i.config_others.exit_crit_edge
  %1177 = tail call i32 @llvm.bswap.i32(i32 %or.i.i209.i) #5
  %1178 = ptrtoint ptr %dec_base.i.i.i195.i to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load ptr, ptr %dec_base.i.i.i195.i, align 8
  %add.ptr.i.i216.i = getelementptr i8, ptr %1179, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i216.i, i32 %1177) #5, !srcloc !31
  %ref_frame_sign_bias.i916 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 13
  %1180 = ptrtoint ptr %ref_frame_sign_bias.i916 to i32
  call void @__asan_load1_noabort(i32 %1180)
  %1181 = load i8, ptr %ref_frame_sign_bias.i916, align 8
  %conv.i917 = zext i8 %1181 to i32
  %and.i = and i32 %conv.i917, 1
  %and4.i = lshr i32 %conv.i917, 1
  %and4.lobit.i = and i32 %and4.i, 1
  %and9.i = lshr i32 %conv.i917, 2
  %and9.lobit.i = and i32 %and9.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.lobit.i, i32 %and.i)
  %1182 = icmp eq i32 %and4.lobit.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and9.lobit.i, i32 %and.i)
  %1183 = icmp eq i32 %and9.lobit.i, %and.i
  %tobool30.not.i = and i1 %1182, %1183
  %.mux.i = select i1 %tobool30.not.i, i32 0, i32 256
  %not.tobool30.not.i = xor i1 %tobool30.not.i, true
  %.mux129.i = zext i1 %not.tobool30.not.i to i32
  %.mux130.i = select i1 %tobool30.not.i, i32 0, i32 24
  %..i = select i1 %1183, i32 1, i32 2
  %.79.i = select i1 %1183, i32 16, i32 8
  %comp_var_ref.sroa.8.0.i = select i1 %1182, i32 %.mux.i, i32 384
  %comp_var_ref.sroa.0.0.i = select i1 %1182, i32 %.mux129.i, i32 %..i
  %comp_fixed_ref.0.i = select i1 %1182, i32 %.mux130.i, i32 %.79.i
  %1184 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i918 = getelementptr inbounds %struct.hantro_dev, ptr %1185, i32 0, i32 11
  %1186 = ptrtoint ptr %dec_base.i.i.i.i918 to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %dec_base.i.i.i.i918, align 8
  %add.ptr.i.i.i.i919 = getelementptr i8, ptr %1187, i32 52
  %1188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i919) #5, !srcloc !32
  %1189 = tail call i32 @llvm.bswap.i32(i32 %1188) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1190 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i920 = and i32 %1190, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i920)
  %tobool.not.i.i.i.i921 = icmp eq i32 %and.i.i.i.i920, 0
  br i1 %tobool.not.i.i.i.i921, label %config_others.exit.vdpu_read_mask.exit.i.i928_crit_edge, label %do.end.i.i.i.i923

config_others.exit.vdpu_read_mask.exit.i.i928_crit_edge: ; preds = %config_others.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i928

do.end.i.i.i.i923:                                ; preds = %config_others.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i922 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %1189) #8
  br label %vdpu_read_mask.exit.i.i928

vdpu_read_mask.exit.i.i928:                       ; preds = %do.end.i.i.i.i923, %config_others.exit.vdpu_read_mask.exit.i.i928_crit_edge
  %and.i.i.i924 = and i32 %1189, -25
  %or.i.i.i925 = or i32 %comp_fixed_ref.0.i, %and.i.i.i924
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1191 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i926 = and i32 %1191, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i926)
  %tobool.not.i.i.i927 = icmp eq i32 %and.i3.i.i926, 0
  br i1 %tobool.not.i.i.i927, label %vdpu_read_mask.exit.i.i928.hantro_reg_write.exit.i936_crit_edge, label %do.end.i.i.i930

vdpu_read_mask.exit.i.i928.hantro_reg_write.exit.i936_crit_edge: ; preds = %vdpu_read_mask.exit.i.i928
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i936

do.end.i.i.i930:                                  ; preds = %vdpu_read_mask.exit.i.i928
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i929 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i.i925) #8
  br label %hantro_reg_write.exit.i936

hantro_reg_write.exit.i936:                       ; preds = %do.end.i.i.i930, %vdpu_read_mask.exit.i.i928.hantro_reg_write.exit.i936_crit_edge
  %1192 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i925) #5
  %1193 = ptrtoint ptr %dec_base.i.i.i.i918 to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load ptr, ptr %dec_base.i.i.i.i918, align 8
  %add.ptr.i.i.i931 = getelementptr i8, ptr %1194, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i931, i32 %1192) #5, !srcloc !31
  %1195 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1195)
  %1196 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i80.i932 = getelementptr inbounds %struct.hantro_dev, ptr %1196, i32 0, i32 11
  %1197 = ptrtoint ptr %dec_base.i.i.i80.i932 to i32
  call void @__asan_load4_noabort(i32 %1197)
  %1198 = load ptr, ptr %dec_base.i.i.i80.i932, align 8
  %add.ptr.i.i.i81.i933 = getelementptr i8, ptr %1198, i32 52
  %1199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i81.i933) #5, !srcloc !32
  %1200 = tail call i32 @llvm.bswap.i32(i32 %1199) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1201 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i82.i934 = and i32 %1201, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i82.i934)
  %tobool.not.i.i.i83.i935 = icmp eq i32 %and.i.i.i82.i934, 0
  br i1 %tobool.not.i.i.i83.i935, label %hantro_reg_write.exit.i936.vdpu_read_mask.exit.i97.i944_crit_edge, label %do.end.i.i.i86.i938

hantro_reg_write.exit.i936.vdpu_read_mask.exit.i97.i944_crit_edge: ; preds = %hantro_reg_write.exit.i936
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i97.i944

do.end.i.i.i86.i938:                              ; preds = %hantro_reg_write.exit.i936
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i85.i937 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %1200) #8
  br label %vdpu_read_mask.exit.i97.i944

vdpu_read_mask.exit.i97.i944:                     ; preds = %do.end.i.i.i86.i938, %hantro_reg_write.exit.i936.vdpu_read_mask.exit.i97.i944_crit_edge
  %and.i.i91.i939 = and i32 %1200, -97
  %shl4.i.i93.i940 = shl nuw nsw i32 %comp_var_ref.sroa.0.0.i, 5
  %or.i.i94.i941 = or i32 %and.i.i91.i939, %shl4.i.i93.i940
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1202 = load i32, ptr @hantro_debug, align 4
  %and.i3.i95.i942 = and i32 %1202, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i95.i942)
  %tobool.not.i.i96.i943 = icmp eq i32 %and.i3.i95.i942, 0
  br i1 %tobool.not.i.i96.i943, label %vdpu_read_mask.exit.i97.i944.hantro_reg_write.exit102.i952_crit_edge, label %do.end.i.i100.i946

vdpu_read_mask.exit.i97.i944.hantro_reg_write.exit102.i952_crit_edge: ; preds = %vdpu_read_mask.exit.i97.i944
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit102.i952

do.end.i.i100.i946:                               ; preds = %vdpu_read_mask.exit.i97.i944
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i99.i945 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i94.i941) #8
  br label %hantro_reg_write.exit102.i952

hantro_reg_write.exit102.i952:                    ; preds = %do.end.i.i100.i946, %vdpu_read_mask.exit.i97.i944.hantro_reg_write.exit102.i952_crit_edge
  %1203 = tail call i32 @llvm.bswap.i32(i32 %or.i.i94.i941) #5
  %1204 = ptrtoint ptr %dec_base.i.i.i80.i932 to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load ptr, ptr %dec_base.i.i.i80.i932, align 8
  %add.ptr.i.i101.i947 = getelementptr i8, ptr %1205, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101.i947, i32 %1203) #5, !srcloc !31
  %1206 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i103.i948 = getelementptr inbounds %struct.hantro_dev, ptr %1207, i32 0, i32 11
  %1208 = ptrtoint ptr %dec_base.i.i.i103.i948 to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %dec_base.i.i.i103.i948, align 8
  %add.ptr.i.i.i104.i949 = getelementptr i8, ptr %1209, i32 52
  %1210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i104.i949) #5, !srcloc !32
  %1211 = tail call i32 @llvm.bswap.i32(i32 %1210) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1212 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i105.i950 = and i32 %1212, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105.i950)
  %tobool.not.i.i.i106.i951 = icmp eq i32 %and.i.i.i105.i950, 0
  br i1 %tobool.not.i.i.i106.i951, label %hantro_reg_write.exit102.i952.vdpu_read_mask.exit.i120.i959_crit_edge, label %do.end.i.i.i109.i954

hantro_reg_write.exit102.i952.vdpu_read_mask.exit.i120.i959_crit_edge: ; preds = %hantro_reg_write.exit102.i952
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i120.i959

do.end.i.i.i109.i954:                             ; preds = %hantro_reg_write.exit102.i952
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i108.i953 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 13, i32 noundef %1211) #8
  br label %vdpu_read_mask.exit.i120.i959

vdpu_read_mask.exit.i120.i959:                    ; preds = %do.end.i.i.i109.i954, %hantro_reg_write.exit102.i952.vdpu_read_mask.exit.i120.i959_crit_edge
  %and.i.i114.i955 = and i32 %1211, -385
  %or.i.i117.i956 = or i32 %and.i.i114.i955, %comp_var_ref.sroa.8.0.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1213 = load i32, ptr @hantro_debug, align 4
  %and.i3.i118.i957 = and i32 %1213, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i118.i957)
  %tobool.not.i.i119.i958 = icmp eq i32 %and.i3.i118.i957, 0
  br i1 %tobool.not.i.i119.i958, label %vdpu_read_mask.exit.i120.i959.config_compound_reference.exit_crit_edge, label %do.end.i.i123.i961

vdpu_read_mask.exit.i120.i959.config_compound_reference.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i120.i959
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_compound_reference.exit

do.end.i.i123.i961:                               ; preds = %vdpu_read_mask.exit.i120.i959
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i122.i960 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %or.i.i117.i956) #8
  br label %config_compound_reference.exit

config_compound_reference.exit:                   ; preds = %do.end.i.i123.i961, %vdpu_read_mask.exit.i120.i959.config_compound_reference.exit_crit_edge
  %1214 = tail call i32 @llvm.bswap.i32(i32 %or.i.i117.i956) #5
  %1215 = ptrtoint ptr %dec_base.i.i.i103.i948 to i32
  call void @__asan_load4_noabort(i32 %1215)
  %1216 = load ptr, ptr %dec_base.i.i.i103.i948, align 8
  %add.ptr.i.i124.i962 = getelementptr i8, ptr %1216, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124.i962, i32 %1214) #5, !srcloc !31
  %1217 = ptrtoint ptr %misc1.i to i32
  call void @__asan_load4_noabort(i32 %1217)
  %1218 = load ptr, ptr %misc1.i, align 4
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond3.preheader.i.for.cond3.preheader.i_crit_edge, %config_compound_reference.exit
  %i.0359.i = phi i32 [ 0, %config_compound_reference.exit ], [ %inc17.i, %for.cond3.preheader.i.for.cond3.preheader.i_crit_edge ]
  %arrayidx6.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 0
  %arrayidx8.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 0
  %1219 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %1219, i32 8)
  %1220 = load i64, ptr %arrayidx8.i, align 1
  %1221 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %1221, i32 8)
  store i64 %1220, ptr %arrayidx6.i, align 1
  %arrayidx12.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 0, i32 8
  %1222 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %1222)
  %1223 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 0
  %1224 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %1224)
  store i8 %1223, ptr %arrayidx14.i, align 1
  %arrayidx6.1.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 1
  %arrayidx8.1.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 1
  %1225 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_loadN_noabort(i32 %1225, i32 8)
  %1226 = load i64, ptr %arrayidx8.1.i, align 1
  %1227 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_storeN_noabort(i32 %1227, i32 8)
  store i64 %1226, ptr %arrayidx6.1.i, align 1
  %arrayidx12.1.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 1, i32 8
  %1228 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_load1_noabort(i32 %1228)
  %1229 = load i8, ptr %arrayidx12.1.i, align 1
  %arrayidx14.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 1
  %1230 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store1_noabort(i32 %1230)
  store i8 %1229, ptr %arrayidx14.1.i, align 1
  %arrayidx6.2.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 2
  %arrayidx8.2.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 2
  %1231 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_loadN_noabort(i32 %1231, i32 8)
  %1232 = load i64, ptr %arrayidx8.2.i, align 1
  %1233 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_storeN_noabort(i32 %1233, i32 8)
  store i64 %1232, ptr %arrayidx6.2.i, align 1
  %arrayidx12.2.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 2, i32 8
  %1234 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_load1_noabort(i32 %1234)
  %1235 = load i8, ptr %arrayidx12.2.i, align 1
  %arrayidx14.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 2
  %1236 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store1_noabort(i32 %1236)
  store i8 %1235, ptr %arrayidx14.2.i, align 1
  %arrayidx6.3.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 3
  %arrayidx8.3.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 3
  %1237 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_loadN_noabort(i32 %1237, i32 8)
  %1238 = load i64, ptr %arrayidx8.3.i, align 1
  %1239 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_storeN_noabort(i32 %1239, i32 8)
  store i64 %1238, ptr %arrayidx6.3.i, align 1
  %arrayidx12.3.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 3, i32 8
  %1240 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_load1_noabort(i32 %1240)
  %1241 = load i8, ptr %arrayidx12.3.i, align 1
  %arrayidx14.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 3
  %1242 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store1_noabort(i32 %1242)
  store i8 %1241, ptr %arrayidx14.3.i, align 1
  %arrayidx6.4.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 4
  %arrayidx8.4.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 4
  %1243 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_loadN_noabort(i32 %1243, i32 8)
  %1244 = load i64, ptr %arrayidx8.4.i, align 1
  %1245 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_storeN_noabort(i32 %1245, i32 8)
  store i64 %1244, ptr %arrayidx6.4.i, align 1
  %arrayidx12.4.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 4, i32 8
  %1246 = ptrtoint ptr %arrayidx12.4.i to i32
  call void @__asan_load1_noabort(i32 %1246)
  %1247 = load i8, ptr %arrayidx12.4.i, align 1
  %arrayidx14.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 4
  %1248 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_store1_noabort(i32 %1248)
  store i8 %1247, ptr %arrayidx14.4.i, align 1
  %arrayidx6.5.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 5
  %arrayidx8.5.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 5
  %1249 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_loadN_noabort(i32 %1249, i32 8)
  %1250 = load i64, ptr %arrayidx8.5.i, align 1
  %1251 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_storeN_noabort(i32 %1251, i32 8)
  store i64 %1250, ptr %arrayidx6.5.i, align 1
  %arrayidx12.5.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 5, i32 8
  %1252 = ptrtoint ptr %arrayidx12.5.i to i32
  call void @__asan_load1_noabort(i32 %1252)
  %1253 = load i8, ptr %arrayidx12.5.i, align 1
  %arrayidx14.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 5
  %1254 = ptrtoint ptr %arrayidx14.5.i to i32
  call void @__asan_store1_noabort(i32 %1254)
  store i8 %1253, ptr %arrayidx14.5.i, align 1
  %arrayidx6.6.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 6
  %arrayidx8.6.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 6
  %1255 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_loadN_noabort(i32 %1255, i32 8)
  %1256 = load i64, ptr %arrayidx8.6.i, align 1
  %1257 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_storeN_noabort(i32 %1257, i32 8)
  store i64 %1256, ptr %arrayidx6.6.i, align 1
  %arrayidx12.6.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 6, i32 8
  %1258 = ptrtoint ptr %arrayidx12.6.i to i32
  call void @__asan_load1_noabort(i32 %1258)
  %1259 = load i8, ptr %arrayidx12.6.i, align 1
  %arrayidx14.6.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 6
  %1260 = ptrtoint ptr %arrayidx14.6.i to i32
  call void @__asan_store1_noabort(i32 %1260)
  store i8 %1259, ptr %arrayidx14.6.i, align 1
  %arrayidx6.7.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 7
  %arrayidx8.7.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 7
  %1261 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_loadN_noabort(i32 %1261, i32 8)
  %1262 = load i64, ptr %arrayidx8.7.i, align 1
  %1263 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_storeN_noabort(i32 %1263, i32 8)
  store i64 %1262, ptr %arrayidx6.7.i, align 1
  %arrayidx12.7.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 7, i32 8
  %1264 = ptrtoint ptr %arrayidx12.7.i to i32
  call void @__asan_load1_noabort(i32 %1264)
  %1265 = load i8, ptr %arrayidx12.7.i, align 1
  %arrayidx14.7.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 7
  %1266 = ptrtoint ptr %arrayidx14.7.i to i32
  call void @__asan_store1_noabort(i32 %1266)
  store i8 %1265, ptr %arrayidx14.7.i, align 1
  %arrayidx6.8.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 8
  %arrayidx8.8.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 8
  %1267 = ptrtoint ptr %arrayidx8.8.i to i32
  call void @__asan_loadN_noabort(i32 %1267, i32 8)
  %1268 = load i64, ptr %arrayidx8.8.i, align 1
  %1269 = ptrtoint ptr %arrayidx6.8.i to i32
  call void @__asan_storeN_noabort(i32 %1269, i32 8)
  store i64 %1268, ptr %arrayidx6.8.i, align 1
  %arrayidx12.8.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 8, i32 8
  %1270 = ptrtoint ptr %arrayidx12.8.i to i32
  call void @__asan_load1_noabort(i32 %1270)
  %1271 = load i8, ptr %arrayidx12.8.i, align 1
  %arrayidx14.8.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 8
  %1272 = ptrtoint ptr %arrayidx14.8.i to i32
  call void @__asan_store1_noabort(i32 %1272)
  store i8 %1271, ptr %arrayidx14.8.i, align 1
  %arrayidx6.9.i = getelementptr [10 x [10 x [8 x i8]]], ptr %1218, i32 0, i32 %i.0359.i, i32 9
  %arrayidx8.9.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 9
  %1273 = ptrtoint ptr %arrayidx8.9.i to i32
  call void @__asan_loadN_noabort(i32 %1273, i32 8)
  %1274 = load i64, ptr %arrayidx8.9.i, align 1
  %1275 = ptrtoint ptr %arrayidx6.9.i to i32
  call void @__asan_storeN_noabort(i32 %1275, i32 8)
  store i64 %1274, ptr %arrayidx6.9.i, align 1
  %arrayidx12.9.i = getelementptr [10 x [10 x [9 x i8]]], ptr @v4l2_vp9_kf_y_mode_prob, i32 0, i32 %i.0359.i, i32 9, i32 8
  %1276 = ptrtoint ptr %arrayidx12.9.i to i32
  call void @__asan_load1_noabort(i32 %1276)
  %1277 = load i8, ptr %arrayidx12.9.i, align 1
  %arrayidx14.9.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 1, i32 %i.0359.i, i32 9
  %1278 = ptrtoint ptr %arrayidx14.9.i to i32
  call void @__asan_store1_noabort(i32 %1278)
  store i8 %1277, ptr %arrayidx14.9.i, align 1
  %inc17.i = add nuw nsw i32 %i.0359.i, 1
  %exitcond.not.i965 = icmp eq i32 %inc17.i, 10
  br i1 %exitcond.not.i965, label %for.end18.i, label %for.cond3.preheader.i.for.cond3.preheader.i_crit_edge

for.cond3.preheader.i.for.cond3.preheader.i_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader.i

for.end18.i:                                      ; preds = %for.cond3.preheader.i
  %mb_segment_tree_probs.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 3
  %tree_probs.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2, i32 2
  %1279 = call ptr @memcpy(ptr %mb_segment_tree_probs.i, ptr %tree_probs.i, i32 7)
  %segment_pred_probs.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 4
  %pred_probs.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 2, i32 3
  %1280 = call ptr @memcpy(ptr %segment_pred_probs.i, ptr %pred_probs.i, i32 3)
  %arrayidx26.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 0
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @v4l2_vp9_kf_uv_mode_prob to i32), i32 8)
  %1281 = load i64, ptr @v4l2_vp9_kf_uv_mode_prob, align 1
  %1282 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %1282, i32 8)
  store i64 %1281, ptr %arrayidx26.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 0, i32 8) to i32))
  %1283 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 0, i32 8), align 1
  %arrayidx32.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 0
  %1284 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %1284)
  store i8 %1283, ptr %arrayidx32.i, align 1
  %arrayidx26.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 1
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 1) to i32), i32 8)
  %1285 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 1), align 1
  %1286 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_storeN_noabort(i32 %1286, i32 8)
  store i64 %1285, ptr %arrayidx26.1.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 1, i32 8) to i32))
  %1287 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 1, i32 8), align 1
  %arrayidx32.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 1
  %1288 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store1_noabort(i32 %1288)
  store i8 %1287, ptr %arrayidx32.1.i, align 1
  %arrayidx26.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 2
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 2) to i32), i32 8)
  %1289 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 2), align 1
  %1290 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_storeN_noabort(i32 %1290, i32 8)
  store i64 %1289, ptr %arrayidx26.2.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 2, i32 8) to i32))
  %1291 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 2, i32 8), align 1
  %arrayidx32.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 2
  %1292 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_store1_noabort(i32 %1292)
  store i8 %1291, ptr %arrayidx32.2.i, align 1
  %arrayidx26.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 3
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 3) to i32), i32 8)
  %1293 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 3), align 1
  %1294 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_storeN_noabort(i32 %1294, i32 8)
  store i64 %1293, ptr %arrayidx26.3.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 3, i32 8) to i32))
  %1295 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 3, i32 8), align 1
  %arrayidx32.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 3
  %1296 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_store1_noabort(i32 %1296)
  store i8 %1295, ptr %arrayidx32.3.i, align 1
  %arrayidx26.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 4
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 4) to i32), i32 8)
  %1297 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 4), align 1
  %1298 = ptrtoint ptr %arrayidx26.4.i to i32
  call void @__asan_storeN_noabort(i32 %1298, i32 8)
  store i64 %1297, ptr %arrayidx26.4.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 4, i32 8) to i32))
  %1299 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 4, i32 8), align 1
  %arrayidx32.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 4
  %1300 = ptrtoint ptr %arrayidx32.4.i to i32
  call void @__asan_store1_noabort(i32 %1300)
  store i8 %1299, ptr %arrayidx32.4.i, align 1
  %arrayidx26.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 5
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 5) to i32), i32 8)
  %1301 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 5), align 1
  %1302 = ptrtoint ptr %arrayidx26.5.i to i32
  call void @__asan_storeN_noabort(i32 %1302, i32 8)
  store i64 %1301, ptr %arrayidx26.5.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 5, i32 8) to i32))
  %1303 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 5, i32 8), align 1
  %arrayidx32.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 5
  %1304 = ptrtoint ptr %arrayidx32.5.i to i32
  call void @__asan_store1_noabort(i32 %1304)
  store i8 %1303, ptr %arrayidx32.5.i, align 1
  %arrayidx26.6.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 6
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 6) to i32), i32 8)
  %1305 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 6), align 1
  %1306 = ptrtoint ptr %arrayidx26.6.i to i32
  call void @__asan_storeN_noabort(i32 %1306, i32 8)
  store i64 %1305, ptr %arrayidx26.6.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 6, i32 8) to i32))
  %1307 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 6, i32 8), align 1
  %arrayidx32.6.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 6
  %1308 = ptrtoint ptr %arrayidx32.6.i to i32
  call void @__asan_store1_noabort(i32 %1308)
  store i8 %1307, ptr %arrayidx32.6.i, align 1
  %arrayidx26.7.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 7
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 7) to i32), i32 8)
  %1309 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 7), align 1
  %1310 = ptrtoint ptr %arrayidx26.7.i to i32
  call void @__asan_storeN_noabort(i32 %1310, i32 8)
  store i64 %1309, ptr %arrayidx26.7.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 7, i32 8) to i32))
  %1311 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 7, i32 8), align 1
  %arrayidx32.7.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 7
  %1312 = ptrtoint ptr %arrayidx32.7.i to i32
  call void @__asan_store1_noabort(i32 %1312)
  store i8 %1311, ptr %arrayidx32.7.i, align 1
  %arrayidx26.8.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 8
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 8) to i32), i32 8)
  %1313 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 8), align 1
  %1314 = ptrtoint ptr %arrayidx26.8.i to i32
  call void @__asan_storeN_noabort(i32 %1314, i32 8)
  store i64 %1313, ptr %arrayidx26.8.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 8, i32 8) to i32))
  %1315 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 8, i32 8), align 1
  %arrayidx32.8.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 8
  %1316 = ptrtoint ptr %arrayidx32.8.i to i32
  call void @__asan_store1_noabort(i32 %1316)
  store i8 %1315, ptr %arrayidx32.8.i, align 1
  %arrayidx26.9.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 8, i32 9
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 9) to i32), i32 8)
  %1317 = load i64, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 9), align 1
  %1318 = ptrtoint ptr %arrayidx26.9.i to i32
  call void @__asan_storeN_noabort(i32 %1318, i32 8)
  store i64 %1317, ptr %arrayidx26.9.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 9, i32 8) to i32))
  %1319 = load i8, ptr getelementptr inbounds ([10 x [9 x i8]], ptr @v4l2_vp9_kf_uv_mode_prob, i32 0, i32 9, i32 8), align 1
  %arrayidx32.9.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 9, i32 9
  %1320 = ptrtoint ptr %arrayidx32.9.i to i32
  call void @__asan_store1_noabort(i32 %1320)
  store i8 %1319, ptr %arrayidx32.9.i, align 1
  %probs37.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11
  %arrayidx44.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 5, i32 0
  %1321 = call ptr @memcpy(ptr %probs37.i, ptr %arrayidx44.i, i32 3)
  %arrayidx48.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 0, i32 3
  %1322 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %1322)
  store i8 0, ptr %arrayidx48.i, align 1
  %arrayidx41.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 1
  %arrayidx44.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 5, i32 1
  %1323 = call ptr @memcpy(ptr %arrayidx41.1.i, ptr %arrayidx44.1.i, i32 3)
  %arrayidx48.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 1, i32 3
  %1324 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_store1_noabort(i32 %1324)
  store i8 0, ptr %arrayidx48.1.i, align 1
  %arrayidx41.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 2
  %arrayidx44.2.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 5, i32 2
  %1325 = call ptr @memcpy(ptr %arrayidx41.2.i, ptr %arrayidx44.2.i, i32 3)
  %arrayidx48.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 2, i32 3
  %1326 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_store1_noabort(i32 %1326)
  store i8 0, ptr %arrayidx48.2.i, align 1
  %arrayidx41.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 3
  %arrayidx44.3.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 5, i32 3
  %1327 = call ptr @memcpy(ptr %arrayidx41.3.i, ptr %arrayidx44.3.i, i32 3)
  %arrayidx48.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 3, i32 3
  %1328 = ptrtoint ptr %arrayidx48.3.i to i32
  call void @__asan_store1_noabort(i32 %1328)
  store i8 0, ptr %arrayidx48.3.i, align 1
  %arrayidx41.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 4
  %arrayidx44.4.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 5, i32 4
  %1329 = call ptr @memcpy(ptr %arrayidx41.4.i, ptr %arrayidx44.4.i, i32 3)
  %arrayidx48.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 4, i32 3
  %1330 = ptrtoint ptr %arrayidx48.4.i to i32
  call void @__asan_store1_noabort(i32 %1330)
  store i8 0, ptr %arrayidx48.4.i, align 1
  %arrayidx41.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 5
  %arrayidx44.5.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 5, i32 5
  %1331 = call ptr @memcpy(ptr %arrayidx41.5.i, ptr %arrayidx44.5.i, i32 3)
  %arrayidx48.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 5, i32 3
  %1332 = ptrtoint ptr %arrayidx48.5.i to i32
  call void @__asan_store1_noabort(i32 %1332)
  store i8 0, ptr %arrayidx48.5.i, align 1
  %arrayidx41.6.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 6
  %arrayidx44.6.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 5, i32 6
  %1333 = call ptr @memcpy(ptr %arrayidx41.6.i, ptr %arrayidx44.6.i, i32 3)
  %arrayidx48.6.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 0, i32 6, i32 3
  %1334 = ptrtoint ptr %arrayidx48.6.i to i32
  call void @__asan_store1_noabort(i32 %1334)
  store i8 0, ptr %arrayidx48.6.i, align 1
  %is_inter.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 1
  %is_inter53.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 7
  %1335 = ptrtoint ptr %is_inter53.i to i32
  call void @__asan_loadN_noabort(i32 %1335, i32 4)
  %1336 = load i32, ptr %is_inter53.i, align 1
  %1337 = ptrtoint ptr %is_inter.i to i32
  call void @__asan_storeN_noabort(i32 %1337, i32 4)
  store i32 %1336, ptr %is_inter.i, align 1
  %arrayidx58.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 0
  %arrayidx61.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 0
  %1338 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_loadN_noabort(i32 %1338, i32 8)
  %1339 = load i64, ptr %arrayidx61.i, align 1
  %1340 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_storeN_noabort(i32 %1340, i32 8)
  store i64 %1339, ptr %arrayidx58.i, align 1
  %arrayidx65.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 0, i32 8
  %1341 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %1341)
  %1342 = load i8, ptr %arrayidx65.i, align 1
  %arrayidx66.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 0
  %1343 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %1343)
  store i8 %1342, ptr %arrayidx66.i, align 1
  %arrayidx58.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 1
  %arrayidx61.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 1
  %1344 = ptrtoint ptr %arrayidx61.1.i to i32
  call void @__asan_loadN_noabort(i32 %1344, i32 8)
  %1345 = load i64, ptr %arrayidx61.1.i, align 1
  %1346 = ptrtoint ptr %arrayidx58.1.i to i32
  call void @__asan_storeN_noabort(i32 %1346, i32 8)
  store i64 %1345, ptr %arrayidx58.1.i, align 1
  %arrayidx65.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 1, i32 8
  %1347 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load1_noabort(i32 %1347)
  %1348 = load i8, ptr %arrayidx65.1.i, align 1
  %arrayidx66.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 1
  %1349 = ptrtoint ptr %arrayidx66.1.i to i32
  call void @__asan_store1_noabort(i32 %1349)
  store i8 %1348, ptr %arrayidx66.1.i, align 1
  %arrayidx58.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 2
  %arrayidx61.2.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 2
  %1350 = ptrtoint ptr %arrayidx61.2.i to i32
  call void @__asan_loadN_noabort(i32 %1350, i32 8)
  %1351 = load i64, ptr %arrayidx61.2.i, align 1
  %1352 = ptrtoint ptr %arrayidx58.2.i to i32
  call void @__asan_storeN_noabort(i32 %1352, i32 8)
  store i64 %1351, ptr %arrayidx58.2.i, align 1
  %arrayidx65.2.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 2, i32 8
  %1353 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_load1_noabort(i32 %1353)
  %1354 = load i8, ptr %arrayidx65.2.i, align 1
  %arrayidx66.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 2
  %1355 = ptrtoint ptr %arrayidx66.2.i to i32
  call void @__asan_store1_noabort(i32 %1355)
  store i8 %1354, ptr %arrayidx66.2.i, align 1
  %arrayidx58.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 3
  %arrayidx61.3.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 3
  %1356 = ptrtoint ptr %arrayidx61.3.i to i32
  call void @__asan_loadN_noabort(i32 %1356, i32 8)
  %1357 = load i64, ptr %arrayidx61.3.i, align 1
  %1358 = ptrtoint ptr %arrayidx58.3.i to i32
  call void @__asan_storeN_noabort(i32 %1358, i32 8)
  store i64 %1357, ptr %arrayidx58.3.i, align 1
  %arrayidx65.3.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 3, i32 8
  %1359 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_load1_noabort(i32 %1359)
  %1360 = load i8, ptr %arrayidx65.3.i, align 1
  %arrayidx66.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 3
  %1361 = ptrtoint ptr %arrayidx66.3.i to i32
  call void @__asan_store1_noabort(i32 %1361)
  store i8 %1360, ptr %arrayidx66.3.i, align 1
  %arrayidx58.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 4
  %arrayidx61.4.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 4
  %1362 = ptrtoint ptr %arrayidx61.4.i to i32
  call void @__asan_loadN_noabort(i32 %1362, i32 8)
  %1363 = load i64, ptr %arrayidx61.4.i, align 1
  %1364 = ptrtoint ptr %arrayidx58.4.i to i32
  call void @__asan_storeN_noabort(i32 %1364, i32 8)
  store i64 %1363, ptr %arrayidx58.4.i, align 1
  %arrayidx65.4.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 4, i32 8
  %1365 = ptrtoint ptr %arrayidx65.4.i to i32
  call void @__asan_load1_noabort(i32 %1365)
  %1366 = load i8, ptr %arrayidx65.4.i, align 1
  %arrayidx66.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 4
  %1367 = ptrtoint ptr %arrayidx66.4.i to i32
  call void @__asan_store1_noabort(i32 %1367)
  store i8 %1366, ptr %arrayidx66.4.i, align 1
  %arrayidx58.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 5
  %arrayidx61.5.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 5
  %1368 = ptrtoint ptr %arrayidx61.5.i to i32
  call void @__asan_loadN_noabort(i32 %1368, i32 8)
  %1369 = load i64, ptr %arrayidx61.5.i, align 1
  %1370 = ptrtoint ptr %arrayidx58.5.i to i32
  call void @__asan_storeN_noabort(i32 %1370, i32 8)
  store i64 %1369, ptr %arrayidx58.5.i, align 1
  %arrayidx65.5.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 5, i32 8
  %1371 = ptrtoint ptr %arrayidx65.5.i to i32
  call void @__asan_load1_noabort(i32 %1371)
  %1372 = load i8, ptr %arrayidx65.5.i, align 1
  %arrayidx66.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 5
  %1373 = ptrtoint ptr %arrayidx66.5.i to i32
  call void @__asan_store1_noabort(i32 %1373)
  store i8 %1372, ptr %arrayidx66.5.i, align 1
  %arrayidx58.6.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 6
  %arrayidx61.6.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 6
  %1374 = ptrtoint ptr %arrayidx61.6.i to i32
  call void @__asan_loadN_noabort(i32 %1374, i32 8)
  %1375 = load i64, ptr %arrayidx61.6.i, align 1
  %1376 = ptrtoint ptr %arrayidx58.6.i to i32
  call void @__asan_storeN_noabort(i32 %1376, i32 8)
  store i64 %1375, ptr %arrayidx58.6.i, align 1
  %arrayidx65.6.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 6, i32 8
  %1377 = ptrtoint ptr %arrayidx65.6.i to i32
  call void @__asan_load1_noabort(i32 %1377)
  %1378 = load i8, ptr %arrayidx65.6.i, align 1
  %arrayidx66.6.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 6
  %1379 = ptrtoint ptr %arrayidx66.6.i to i32
  call void @__asan_store1_noabort(i32 %1379)
  store i8 %1378, ptr %arrayidx66.6.i, align 1
  %arrayidx58.7.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 7
  %arrayidx61.7.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 7
  %1380 = ptrtoint ptr %arrayidx61.7.i to i32
  call void @__asan_loadN_noabort(i32 %1380, i32 8)
  %1381 = load i64, ptr %arrayidx61.7.i, align 1
  %1382 = ptrtoint ptr %arrayidx58.7.i to i32
  call void @__asan_storeN_noabort(i32 %1382, i32 8)
  store i64 %1381, ptr %arrayidx58.7.i, align 1
  %arrayidx65.7.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 7, i32 8
  %1383 = ptrtoint ptr %arrayidx65.7.i to i32
  call void @__asan_load1_noabort(i32 %1383)
  %1384 = load i8, ptr %arrayidx65.7.i, align 1
  %arrayidx66.7.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 7
  %1385 = ptrtoint ptr %arrayidx66.7.i to i32
  call void @__asan_store1_noabort(i32 %1385)
  store i8 %1384, ptr %arrayidx66.7.i, align 1
  %arrayidx58.8.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 8
  %arrayidx61.8.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 8
  %1386 = ptrtoint ptr %arrayidx61.8.i to i32
  call void @__asan_loadN_noabort(i32 %1386, i32 8)
  %1387 = load i64, ptr %arrayidx61.8.i, align 1
  %1388 = ptrtoint ptr %arrayidx58.8.i to i32
  call void @__asan_storeN_noabort(i32 %1388, i32 8)
  store i64 %1387, ptr %arrayidx58.8.i, align 1
  %arrayidx65.8.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 8, i32 8
  %1389 = ptrtoint ptr %arrayidx65.8.i to i32
  call void @__asan_load1_noabort(i32 %1389)
  %1390 = load i8, ptr %arrayidx65.8.i, align 1
  %arrayidx66.8.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 8
  %1391 = ptrtoint ptr %arrayidx66.8.i to i32
  call void @__asan_store1_noabort(i32 %1391)
  store i8 %1390, ptr %arrayidx66.8.i, align 1
  %arrayidx58.9.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 2, i32 9
  %arrayidx61.9.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 9
  %1392 = ptrtoint ptr %arrayidx61.9.i to i32
  call void @__asan_loadN_noabort(i32 %1392, i32 8)
  %1393 = load i64, ptr %arrayidx61.9.i, align 1
  %1394 = ptrtoint ptr %arrayidx58.9.i to i32
  call void @__asan_storeN_noabort(i32 %1394, i32 8)
  store i64 %1393, ptr %arrayidx58.9.i, align 1
  %arrayidx65.9.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 12, i32 9, i32 8
  %1395 = ptrtoint ptr %arrayidx65.9.i to i32
  call void @__asan_load1_noabort(i32 %1395)
  %1396 = load i8, ptr %arrayidx65.9.i, align 1
  %arrayidx66.9.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 9, i32 9
  %1397 = ptrtoint ptr %arrayidx66.9.i to i32
  call void @__asan_store1_noabort(i32 %1397)
  store i8 %1396, ptr %arrayidx66.9.i, align 1
  %probability_tables.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4
  %tx8.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 3
  %1398 = ptrtoint ptr %probability_tables.i to i32
  call void @__asan_loadN_noabort(i32 %1398, i32 2)
  %1399 = load i16, ptr %probability_tables.i, align 1
  %1400 = ptrtoint ptr %tx8.i to i32
  call void @__asan_storeN_noabort(i32 %1400, i32 2)
  store i16 %1399, ptr %tx8.i, align 1
  %tx16.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 4
  %tx1675.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 1
  %1401 = ptrtoint ptr %tx1675.i to i32
  call void @__asan_loadN_noabort(i32 %1401, i32 4)
  %1402 = load i32, ptr %tx1675.i, align 1
  %1403 = ptrtoint ptr %tx16.i to i32
  call void @__asan_storeN_noabort(i32 %1403, i32 4)
  store i32 %1402, ptr %tx16.i, align 1
  %tx32.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 5
  %tx3278.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 2
  %1404 = call ptr @memcpy(ptr %tx32.i, ptr %tx3278.i, i32 6)
  %arrayidx83.i966 = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 7, i32 0
  %arrayidx86.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 0
  %1405 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_loadN_noabort(i32 %1405, i32 8)
  %1406 = load i64, ptr %arrayidx86.i, align 1
  %1407 = ptrtoint ptr %arrayidx83.i966 to i32
  call void @__asan_storeN_noabort(i32 %1407, i32 8)
  store i64 %1406, ptr %arrayidx83.i966, align 1
  %arrayidx90.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 0, i32 8
  %1408 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %1408)
  %1409 = load i8, ptr %arrayidx90.i, align 1
  %arrayidx91.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 6, i32 0
  %1410 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store1_noabort(i32 %1410)
  store i8 %1409, ptr %arrayidx91.i, align 1
  %arrayidx83.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 7, i32 1
  %arrayidx86.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 1
  %1411 = ptrtoint ptr %arrayidx86.1.i to i32
  call void @__asan_loadN_noabort(i32 %1411, i32 8)
  %1412 = load i64, ptr %arrayidx86.1.i, align 1
  %1413 = ptrtoint ptr %arrayidx83.1.i to i32
  call void @__asan_storeN_noabort(i32 %1413, i32 8)
  store i64 %1412, ptr %arrayidx83.1.i, align 1
  %arrayidx90.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 1, i32 8
  %1414 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_load1_noabort(i32 %1414)
  %1415 = load i8, ptr %arrayidx90.1.i, align 1
  %arrayidx91.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 6, i32 1
  %1416 = ptrtoint ptr %arrayidx91.1.i to i32
  call void @__asan_store1_noabort(i32 %1416)
  store i8 %1415, ptr %arrayidx91.1.i, align 1
  %arrayidx83.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 7, i32 2
  %arrayidx86.2.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 2
  %1417 = ptrtoint ptr %arrayidx86.2.i to i32
  call void @__asan_loadN_noabort(i32 %1417, i32 8)
  %1418 = load i64, ptr %arrayidx86.2.i, align 1
  %1419 = ptrtoint ptr %arrayidx83.2.i to i32
  call void @__asan_storeN_noabort(i32 %1419, i32 8)
  store i64 %1418, ptr %arrayidx83.2.i, align 1
  %arrayidx90.2.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 2, i32 8
  %1420 = ptrtoint ptr %arrayidx90.2.i to i32
  call void @__asan_load1_noabort(i32 %1420)
  %1421 = load i8, ptr %arrayidx90.2.i, align 1
  %arrayidx91.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 6, i32 2
  %1422 = ptrtoint ptr %arrayidx91.2.i to i32
  call void @__asan_store1_noabort(i32 %1422)
  store i8 %1421, ptr %arrayidx91.2.i, align 1
  %arrayidx83.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 7, i32 3
  %arrayidx86.3.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 3
  %1423 = ptrtoint ptr %arrayidx86.3.i to i32
  call void @__asan_loadN_noabort(i32 %1423, i32 8)
  %1424 = load i64, ptr %arrayidx86.3.i, align 1
  %1425 = ptrtoint ptr %arrayidx83.3.i to i32
  call void @__asan_storeN_noabort(i32 %1425, i32 8)
  store i64 %1424, ptr %arrayidx83.3.i, align 1
  %arrayidx90.3.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 11, i32 3, i32 8
  %1426 = ptrtoint ptr %arrayidx90.3.i to i32
  call void @__asan_load1_noabort(i32 %1426)
  %1427 = load i8, ptr %arrayidx90.3.i, align 1
  %arrayidx91.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 6, i32 3
  %1428 = ptrtoint ptr %arrayidx91.3.i to i32
  call void @__asan_store1_noabort(i32 %1428)
  store i8 %1427, ptr %arrayidx91.3.i, align 1
  %partition.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 8
  br label %for.body98.i

for.body98.i:                                     ; preds = %for.body98.i.for.body98.i_crit_edge, %for.end18.i
  %i.5364.i = phi i32 [ 0, %for.end18.i ], [ %inc109.i, %for.body98.i.for.body98.i_crit_edge ]
  %arrayidx100.i = getelementptr [16 x [4 x i8]], ptr %partition.i, i32 0, i32 %i.5364.i
  %arrayidx102.i = getelementptr [16 x [3 x i8]], ptr @v4l2_vp9_kf_partition_probs, i32 0, i32 %i.5364.i
  %1429 = call ptr @memcpy(ptr %arrayidx100.i, ptr %arrayidx102.i, i32 3)
  %arrayidx107.i = getelementptr [16 x [4 x i8]], ptr %partition.i, i32 0, i32 %i.5364.i, i32 3
  %1430 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store1_noabort(i32 %1430)
  store i8 0, ptr %arrayidx107.i, align 1
  %inc109.i = add nuw nsw i32 %i.5364.i, 1
  %exitcond375.not.i = icmp eq i32 %inc109.i, 16
  br i1 %exitcond375.not.i, label %for.body98.i.for.body113.i_crit_edge, label %for.body98.i.for.body98.i_crit_edge

for.body98.i.for.body98.i_crit_edge:              ; preds = %for.body98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body98.i

for.body98.i.for.body113.i_crit_edge:             ; preds = %for.body98.i
  br label %for.body113.i

for.body113.i:                                    ; preds = %for.body113.i.for.body113.i_crit_edge, %for.body98.i.for.body113.i_crit_edge
  %i.6365.i = phi i32 [ %inc126.i, %for.body113.i.for.body113.i_crit_edge ], [ 0, %for.body98.i.for.body113.i_crit_edge ]
  %arrayidx116.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 8, i32 1, i32 %i.6365.i
  %arrayidx119.i967 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 13, i32 %i.6365.i
  %1431 = call ptr @memcpy(ptr %arrayidx116.i, ptr %arrayidx119.i967, i32 3)
  %arrayidx124.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 8, i32 1, i32 %i.6365.i, i32 3
  %1432 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store1_noabort(i32 %1432)
  store i8 0, ptr %arrayidx124.i, align 1
  %inc126.i = add nuw nsw i32 %i.6365.i, 1
  %exitcond376.not.i = icmp eq i32 %inc126.i, 16
  br i1 %exitcond376.not.i, label %for.end127.i, label %for.body113.i.for.body113.i_crit_edge

for.body113.i.for.body113.i_crit_edge:            ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body113.i

for.end127.i:                                     ; preds = %for.body113.i
  %interp_filter.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 10
  %interp_filter129.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 6
  %1433 = ptrtoint ptr %interp_filter129.i to i32
  call void @__asan_loadN_noabort(i32 %1433, i32 8)
  %1434 = load i64, ptr %interp_filter129.i, align 1
  %1435 = ptrtoint ptr %interp_filter.i to i32
  call void @__asan_storeN_noabort(i32 %1435, i32 8)
  store i64 %1434, ptr %interp_filter.i, align 1
  %comp_mode.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 11
  %comp_mode132.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 8
  %1436 = call ptr @memcpy(ptr %comp_mode.i, ptr %comp_mode132.i, i32 5)
  %skip.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 12
  %skip135.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 4
  %1437 = call ptr @memcpy(ptr %skip.i, ptr %skip135.i, i32 3)
  %mv137.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14
  %mv139.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14
  %1438 = call ptr @memcpy(ptr %mv137.i, ptr %mv139.i, i32 3)
  %sign.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 1
  %sign144.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 1
  %1439 = ptrtoint ptr %sign144.i to i32
  call void @__asan_loadN_noabort(i32 %1439, i32 2)
  %1440 = load i16, ptr %sign144.i, align 1
  %1441 = ptrtoint ptr %sign.i to i32
  call void @__asan_storeN_noabort(i32 %1441, i32 2)
  store i16 %1440, ptr %sign.i, align 1
  %class0_bit.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 2
  %class0_bit148.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 3
  %1442 = ptrtoint ptr %class0_bit148.i to i32
  call void @__asan_loadN_noabort(i32 %1442, i32 2)
  %1443 = load i16, ptr %class0_bit148.i, align 1
  %1444 = ptrtoint ptr %class0_bit.i to i32
  call void @__asan_storeN_noabort(i32 %1444, i32 2)
  store i16 %1443, ptr %class0_bit.i, align 1
  %fr.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 3
  %fr152.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 6
  %1445 = call ptr @memcpy(ptr %fr.i, ptr %fr152.i, i32 6)
  %class0_hp.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 4
  %class0_hp156.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 7
  %1446 = ptrtoint ptr %class0_hp156.i to i32
  call void @__asan_loadN_noabort(i32 %1446, i32 2)
  %1447 = load i16, ptr %class0_hp156.i, align 1
  %1448 = ptrtoint ptr %class0_hp.i to i32
  call void @__asan_storeN_noabort(i32 %1448, i32 2)
  store i16 %1447, ptr %class0_hp.i, align 1
  %hp.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 5
  %hp160.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 8
  %1449 = ptrtoint ptr %hp160.i to i32
  call void @__asan_loadN_noabort(i32 %1449, i32 2)
  %1450 = load i16, ptr %hp160.i, align 1
  %1451 = ptrtoint ptr %hp.i to i32
  call void @__asan_storeN_noabort(i32 %1451, i32 2)
  store i16 %1450, ptr %hp.i, align 1
  %classes.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 6
  %classes164.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 2
  %1452 = call ptr @memcpy(ptr %classes.i, ptr %classes164.i, i32 20)
  %class0_fr.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 7
  %class0_fr168.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 5
  %1453 = call ptr @memcpy(ptr %class0_fr.i, ptr %class0_fr168.i, i32 12)
  %bits.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 14, i32 8
  %bits172.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 14, i32 4
  %1454 = call ptr @memcpy(ptr %bits.i, ptr %bits172.i, i32 20)
  %single_ref.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 15
  %single_ref175.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 9
  %1455 = call ptr @memcpy(ptr %single_ref.i, ptr %single_ref175.i, i32 10)
  %comp_ref.i = getelementptr inbounds %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 16
  %comp_ref178.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 10
  %1456 = call ptr @memcpy(ptr %comp_ref.i, ptr %comp_ref178.i, i32 5)
  br label %for.cond183.preheader.i

for.cond183.preheader.i:                          ; preds = %for.inc227.i.for.cond183.preheader.i_crit_edge, %for.end127.i
  %i.7370.i = phi i32 [ 0, %for.end127.i ], [ %inc228.i, %for.inc227.i.for.cond183.preheader.i_crit_edge ]
  br label %for.cond186.preheader.i

for.cond186.preheader.i:                          ; preds = %for.inc221.1.i.for.cond186.preheader.i_crit_edge, %for.cond183.preheader.i
  %j.1369.i = phi i32 [ 0, %for.cond183.preheader.i ], [ %inc225.i, %for.inc221.1.i.for.cond186.preheader.i_crit_edge ]
  br label %for.cond192.preheader.i

for.cond192.preheader.i:                          ; preds = %for.cond192.preheader.i.for.cond192.preheader.i_crit_edge, %for.cond186.preheader.i
  %l.0367.i = phi i32 [ 0, %for.cond186.preheader.i ], [ %inc219.i, %for.cond192.preheader.i.for.cond192.preheader.i_crit_edge ]
  %arrayidx199.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 0
  %arrayidx206.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 0
  %1457 = call ptr @memcpy(ptr %arrayidx199.i, ptr %arrayidx206.i, i32 3)
  %arrayidx214.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 0, i32 3
  %1458 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_store1_noabort(i32 %1458)
  store i8 0, ptr %arrayidx214.i, align 1
  %arrayidx199.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 1
  %arrayidx206.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 1
  %1459 = call ptr @memcpy(ptr %arrayidx199.1.i, ptr %arrayidx206.1.i, i32 3)
  %arrayidx214.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 1, i32 3
  %1460 = ptrtoint ptr %arrayidx214.1.i to i32
  call void @__asan_store1_noabort(i32 %1460)
  store i8 0, ptr %arrayidx214.1.i, align 1
  %arrayidx199.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 2
  %arrayidx206.2.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 2
  %1461 = call ptr @memcpy(ptr %arrayidx199.2.i, ptr %arrayidx206.2.i, i32 3)
  %arrayidx214.2.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 2, i32 3
  %1462 = ptrtoint ptr %arrayidx214.2.i to i32
  call void @__asan_store1_noabort(i32 %1462)
  store i8 0, ptr %arrayidx214.2.i, align 1
  %arrayidx199.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 3
  %arrayidx206.3.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 3
  %1463 = call ptr @memcpy(ptr %arrayidx199.3.i, ptr %arrayidx206.3.i, i32 3)
  %arrayidx214.3.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 3, i32 3
  %1464 = ptrtoint ptr %arrayidx214.3.i to i32
  call void @__asan_store1_noabort(i32 %1464)
  store i8 0, ptr %arrayidx214.3.i, align 1
  %arrayidx199.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 4
  %arrayidx206.4.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 4
  %1465 = call ptr @memcpy(ptr %arrayidx199.4.i, ptr %arrayidx206.4.i, i32 3)
  %arrayidx214.4.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 4, i32 3
  %1466 = ptrtoint ptr %arrayidx214.4.i to i32
  call void @__asan_store1_noabort(i32 %1466)
  store i8 0, ptr %arrayidx214.4.i, align 1
  %arrayidx199.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 5
  %arrayidx206.5.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 5
  %1467 = call ptr @memcpy(ptr %arrayidx199.5.i, ptr %arrayidx206.5.i, i32 3)
  %arrayidx214.5.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 0, i32 %l.0367.i, i32 5, i32 3
  %1468 = ptrtoint ptr %arrayidx214.5.i to i32
  call void @__asan_store1_noabort(i32 %1468)
  store i8 0, ptr %arrayidx214.5.i, align 1
  %inc219.i = add nuw nsw i32 %l.0367.i, 1
  %exitcond378.not.i = icmp eq i32 %inc219.i, 6
  br i1 %exitcond378.not.i, label %for.cond192.preheader.i.for.cond192.preheader.1.i_crit_edge, label %for.cond192.preheader.i.for.cond192.preheader.i_crit_edge

for.cond192.preheader.i.for.cond192.preheader.i_crit_edge: ; preds = %for.cond192.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond192.preheader.i

for.cond192.preheader.i.for.cond192.preheader.1.i_crit_edge: ; preds = %for.cond192.preheader.i
  br label %for.cond192.preheader.1.i

for.cond192.preheader.1.i:                        ; preds = %for.cond192.preheader.1.i.for.cond192.preheader.1.i_crit_edge, %for.cond192.preheader.i.for.cond192.preheader.1.i_crit_edge
  %l.0367.1.i = phi i32 [ %inc219.1.i, %for.cond192.preheader.1.i.for.cond192.preheader.1.i_crit_edge ], [ 0, %for.cond192.preheader.i.for.cond192.preheader.1.i_crit_edge ]
  %arrayidx199.1380.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 0
  %arrayidx206.1381.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 0
  %1469 = call ptr @memcpy(ptr %arrayidx199.1380.i, ptr %arrayidx206.1381.i, i32 3)
  %arrayidx214.1382.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 0, i32 3
  %1470 = ptrtoint ptr %arrayidx214.1382.i to i32
  call void @__asan_store1_noabort(i32 %1470)
  store i8 0, ptr %arrayidx214.1382.i, align 1
  %arrayidx199.1.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 1
  %arrayidx206.1.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 1
  %1471 = call ptr @memcpy(ptr %arrayidx199.1.1.i, ptr %arrayidx206.1.1.i, i32 3)
  %arrayidx214.1.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 1, i32 3
  %1472 = ptrtoint ptr %arrayidx214.1.1.i to i32
  call void @__asan_store1_noabort(i32 %1472)
  store i8 0, ptr %arrayidx214.1.1.i, align 1
  %arrayidx199.2.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 2
  %arrayidx206.2.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 2
  %1473 = call ptr @memcpy(ptr %arrayidx199.2.1.i, ptr %arrayidx206.2.1.i, i32 3)
  %arrayidx214.2.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 2, i32 3
  %1474 = ptrtoint ptr %arrayidx214.2.1.i to i32
  call void @__asan_store1_noabort(i32 %1474)
  store i8 0, ptr %arrayidx214.2.1.i, align 1
  %arrayidx199.3.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 3
  %arrayidx206.3.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 3
  %1475 = call ptr @memcpy(ptr %arrayidx199.3.1.i, ptr %arrayidx206.3.1.i, i32 3)
  %arrayidx214.3.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 3, i32 3
  %1476 = ptrtoint ptr %arrayidx214.3.1.i to i32
  call void @__asan_store1_noabort(i32 %1476)
  store i8 0, ptr %arrayidx214.3.1.i, align 1
  %arrayidx199.4.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 4
  %arrayidx206.4.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 4
  %1477 = call ptr @memcpy(ptr %arrayidx199.4.1.i, ptr %arrayidx206.4.1.i, i32 3)
  %arrayidx214.4.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 4, i32 3
  %1478 = ptrtoint ptr %arrayidx214.4.1.i to i32
  call void @__asan_store1_noabort(i32 %1478)
  store i8 0, ptr %arrayidx214.4.1.i, align 1
  %arrayidx199.5.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 5
  %arrayidx206.5.1.i = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 3, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 5
  %1479 = call ptr @memcpy(ptr %arrayidx199.5.1.i, ptr %arrayidx206.5.1.i, i32 3)
  %arrayidx214.5.1.i = getelementptr %struct.hantro_g2_all_probs, ptr %1218, i32 0, i32 11, i32 18, i32 %i.7370.i, i32 %j.1369.i, i32 1, i32 %l.0367.1.i, i32 5, i32 3
  %1480 = ptrtoint ptr %arrayidx214.5.1.i to i32
  call void @__asan_store1_noabort(i32 %1480)
  store i8 0, ptr %arrayidx214.5.1.i, align 1
  %inc219.1.i = add nuw nsw i32 %l.0367.1.i, 1
  %exitcond378.1.not.i = icmp eq i32 %inc219.1.i, 6
  br i1 %exitcond378.1.not.i, label %for.inc221.1.i, label %for.cond192.preheader.1.i.for.cond192.preheader.1.i_crit_edge

for.cond192.preheader.1.i.for.cond192.preheader.1.i_crit_edge: ; preds = %for.cond192.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond192.preheader.1.i

for.inc221.1.i:                                   ; preds = %for.cond192.preheader.1.i
  %inc225.i = add nuw nsw i32 %j.1369.i, 1
  %exitcond383.not.i = icmp eq i32 %inc225.i, 2
  br i1 %exitcond383.not.i, label %for.inc227.i, label %for.inc221.1.i.for.cond186.preheader.i_crit_edge

for.inc221.1.i.for.cond186.preheader.i_crit_edge: ; preds = %for.inc221.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond186.preheader.i

for.inc227.i:                                     ; preds = %for.inc221.1.i
  %inc228.i = add nuw nsw i32 %i.7370.i, 1
  %exitcond384.not.i = icmp eq i32 %inc228.i, 4
  br i1 %exitcond384.not.i, label %for.end229.i, label %for.inc227.i.for.cond183.preheader.i_crit_edge

for.inc227.i.for.cond183.preheader.i_crit_edge:   ; preds = %for.inc227.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond183.preheader.i

for.end229.i:                                     ; preds = %for.inc227.i
  %1481 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1481)
  %1482 = load ptr, ptr %ctx, align 8
  %1483 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %1483)
  %1484 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1485 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i969 = and i32 %1485, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i969)
  %tobool.not.i.i.i970 = icmp eq i32 %and.i.i.i969, 0
  br i1 %tobool.not.i.i.i970, label %for.end229.i.config_probs.exit_crit_edge, label %do.end.i.i.i972

for.end229.i.config_probs.exit_crit_edge:         ; preds = %for.end229.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_probs.exit

do.end.i.i.i972:                                  ; preds = %for.end229.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i971 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 173, i32 noundef %1484) #8
  br label %config_probs.exit

config_probs.exit:                                ; preds = %do.end.i.i.i972, %for.end229.i.config_probs.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %1486 = tail call i32 @llvm.bswap.i32(i32 %1484) #5
  %dec_base.i.i.i973 = getelementptr inbounds %struct.hantro_dev, ptr %1482, i32 0, i32 11
  %1487 = ptrtoint ptr %dec_base.i.i.i973 to i32
  call void @__asan_load4_noabort(i32 %1487)
  %1488 = load ptr, ptr %dec_base.i.i.i973, align 8
  %add.ptr.i.i.i974 = getelementptr i8, ptr %1488, i32 692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i974, i32 %1486) #5, !srcloc !31
  %1489 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %1489)
  %1490 = load i32, ptr %dma.i, align 4
  %ctx_counters_offset.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 10
  %1491 = ptrtoint ptr %ctx_counters_offset.i to i32
  call void @__asan_load4_noabort(i32 %1491)
  %1492 = load i32, ptr %ctx_counters_offset.i, align 8
  %add.i977 = add i32 %1492, %1490
  %1493 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1493)
  %1494 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1495 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i978 = and i32 %1495, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i978)
  %tobool.not.i.i.i979 = icmp eq i32 %and.i.i.i978, 0
  br i1 %tobool.not.i.i.i979, label %config_probs.exit.config_counts.exit_crit_edge, label %do.end.i.i.i981

config_probs.exit.config_counts.exit_crit_edge:   ; preds = %config_probs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_counts.exit

do.end.i.i.i981:                                  ; preds = %config_probs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i980 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 171, i32 noundef %add.i977) #8
  br label %config_counts.exit

config_counts.exit:                               ; preds = %do.end.i.i.i981, %config_probs.exit.config_counts.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %1496 = tail call i32 @llvm.bswap.i32(i32 %add.i977) #5
  %dec_base.i.i.i982 = getelementptr inbounds %struct.hantro_dev, ptr %1494, i32 0, i32 11
  %1497 = ptrtoint ptr %dec_base.i.i.i982 to i32
  call void @__asan_load4_noabort(i32 %1497)
  %1498 = load ptr, ptr %dec_base.i.i.i982, align 8
  %add.ptr.i.i.i983 = getelementptr i8, ptr %1498, i32 684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i983, i32 %1496) #5, !srcloc !31
  %1499 = ptrtoint ptr %flags.i739 to i32
  call void @__asan_load1_noabort(i32 %1499)
  %1500 = load i8, ptr %flags.i739, align 2
  %1501 = and i8 %1500, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1501)
  %tobool150.not = icmp eq i8 %1501, 0
  %segment_map2.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  br i1 %tobool5.not1055, label %lor.lhs.false.i987, label %config_counts.exit.if.then.i989_crit_edge

config_counts.exit.if.then.i989_crit_edge:        ; preds = %config_counts.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i989

lor.lhs.false.i987:                               ; preds = %config_counts.exit
  %1502 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1502)
  %1503 = load i32, ptr %flags.i, align 8
  %and.i986 = and i32 %1503, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i986)
  %tobool3.not.i = icmp eq i32 %and.i986, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i987.if.end.i994_crit_edge, label %lor.lhs.false.i987.if.then.i989_crit_edge

lor.lhs.false.i987.if.then.i989_crit_edge:        ; preds = %lor.lhs.false.i987
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i989

lor.lhs.false.i987.if.end.i994_crit_edge:         ; preds = %lor.lhs.false.i987
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i994

if.then.i989:                                     ; preds = %lor.lhs.false.i987.if.then.i989_crit_edge, %config_counts.exit.if.then.i989_crit_edge
  %1504 = ptrtoint ptr %segment_map2.i to i32
  call void @__asan_load4_noabort(i32 %1504)
  %1505 = load ptr, ptr %segment_map2.i, align 4
  %size.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %1506 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load i32, ptr %size.i, align 4
  %1508 = call ptr @memset(ptr %1505, i32 0, i32 %1507)
  %1509 = call ptr @memset(ptr %feature_enabled.i, i32 0, i32 72)
  br label %if.end.i994

if.end.i994:                                      ; preds = %if.then.i989, %lor.lhs.false.i987.if.end.i994_crit_edge
  %dma.i990 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %1510 = ptrtoint ptr %dma.i990 to i32
  call void @__asan_load4_noabort(i32 %1510)
  %1511 = load i32, ptr %dma.i990, align 4
  %active_segment.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 18
  %1512 = ptrtoint ptr %active_segment.i to i32
  call void @__asan_load4_noabort(i32 %1512)
  %1513 = load i32, ptr %active_segment.i, align 4
  %segment_map_size.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 9
  %1514 = ptrtoint ptr %segment_map_size.i to i32
  call void @__asan_load4_noabort(i32 %1514)
  %1515 = load i32, ptr %segment_map_size.i, align 4
  %mul.i = mul i32 %1515, %1513
  %add.i991 = add i32 %mul.i, %1511
  %1516 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1516)
  %1517 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1518 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i992 = and i32 %1518, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i992)
  %tobool.not.i.i.i993 = icmp eq i32 %and.i.i.i992, 0
  br i1 %tobool.not.i.i.i993, label %if.end.i994.hantro_write_addr.exit.i999_crit_edge, label %do.end.i.i.i996

if.end.i994.hantro_write_addr.exit.i999_crit_edge: ; preds = %if.end.i994
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i999

do.end.i.i.i996:                                  ; preds = %if.end.i994
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i995 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 81, i32 noundef %add.i991) #8
  br label %hantro_write_addr.exit.i999

hantro_write_addr.exit.i999:                      ; preds = %do.end.i.i.i996, %if.end.i994.hantro_write_addr.exit.i999_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %1519 = tail call i32 @llvm.bswap.i32(i32 %add.i991) #5
  %dec_base.i.i.i997 = getelementptr inbounds %struct.hantro_dev, ptr %1517, i32 0, i32 11
  %1520 = ptrtoint ptr %dec_base.i.i.i997 to i32
  call void @__asan_load4_noabort(i32 %1520)
  %1521 = load ptr, ptr %dec_base.i.i.i997, align 8
  %add.ptr.i.i.i998 = getelementptr i8, ptr %1521, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i998, i32 %1519) #5, !srcloc !31
  %1522 = ptrtoint ptr %dma.i990 to i32
  call void @__asan_load4_noabort(i32 %1522)
  %1523 = load i32, ptr %dma.i990, align 4
  %1524 = ptrtoint ptr %active_segment.i to i32
  call void @__asan_load4_noabort(i32 %1524)
  %1525 = load i32, ptr %active_segment.i, align 4
  %sub.i = sub i32 1, %1525
  %1526 = ptrtoint ptr %segment_map_size.i to i32
  call void @__asan_load4_noabort(i32 %1526)
  %1527 = load i32, ptr %segment_map_size.i, align 4
  %mul8.i = mul i32 %sub.i, %1527
  %add9.i = add i32 %mul8.i, %1523
  %1528 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1528)
  %1529 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1530 = load i32, ptr @hantro_debug, align 4
  %and.i.i31.i = and i32 %1530, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31.i)
  %tobool.not.i.i32.i = icmp eq i32 %and.i.i31.i, 0
  br i1 %tobool.not.i.i32.i, label %hantro_write_addr.exit.i999.hantro_write_addr.exit37.i_crit_edge, label %do.end.i.i34.i

hantro_write_addr.exit.i999.hantro_write_addr.exit37.i_crit_edge: ; preds = %hantro_write_addr.exit.i999
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit37.i

do.end.i.i34.i:                                   ; preds = %hantro_write_addr.exit.i999
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 79, i32 noundef %add9.i) #8
  br label %hantro_write_addr.exit37.i

hantro_write_addr.exit37.i:                       ; preds = %do.end.i.i34.i, %hantro_write_addr.exit.i999.hantro_write_addr.exit37.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %1531 = tail call i32 @llvm.bswap.i32(i32 %add9.i) #5
  %dec_base.i.i35.i = getelementptr inbounds %struct.hantro_dev, ptr %1529, i32 0, i32 11
  %1532 = ptrtoint ptr %dec_base.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %1532)
  %1533 = load ptr, ptr %dec_base.i.i35.i, align 8
  %add.ptr.i.i36.i = getelementptr i8, ptr %1533, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36.i, i32 %1531) #5, !srcloc !31
  br i1 %tobool150.not, label %hantro_write_addr.exit37.i.config_seg_map.exit_crit_edge, label %if.then12.i

hantro_write_addr.exit37.i.config_seg_map.exit_crit_edge: ; preds = %hantro_write_addr.exit37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_seg_map.exit

if.then12.i:                                      ; preds = %hantro_write_addr.exit37.i
  call void @__sanitizer_cov_trace_pc() #7
  %1534 = ptrtoint ptr %active_segment.i to i32
  call void @__asan_load4_noabort(i32 %1534)
  %1535 = load i32, ptr %active_segment.i, align 4
  %sub14.i = sub i32 1, %1535
  store i32 %sub14.i, ptr %active_segment.i, align 4
  br label %config_seg_map.exit

config_seg_map.exit:                              ; preds = %if.then12.i, %hantro_write_addr.exit37.i.config_seg_map.exit_crit_edge
  %uncompressed_header_size.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 5
  %1536 = ptrtoint ptr %uncompressed_header_size.i to i32
  call void @__asan_load2_noabort(i32 %1536)
  %1537 = load i16, ptr %uncompressed_header_size.i, align 2
  %conv.i1000 = zext i16 %1537 to i32
  %compressed_header_size.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 4
  %1538 = ptrtoint ptr %compressed_header_size.i to i32
  call void @__asan_load2_noabort(i32 %1538)
  %1539 = load i16, ptr %compressed_header_size.i, align 4
  %conv1.i = zext i16 %1539 to i32
  %add.i1001 = add nuw nsw i32 %conv1.i, %conv.i1000
  %call.i.i1002 = tail call ptr @vb2_plane_cookie(ptr noundef %vb2_src, i32 noundef 0) #5
  %1540 = ptrtoint ptr %call.i.i1002 to i32
  call void @__asan_load4_noabort(i32 %1540)
  %1541 = load i32, ptr %call.i.i1002, align 4
  %add2.i = add i32 %1541, %add.i1001
  %1542 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load ptr, ptr %ctx, align 8
  %variant.i1003 = getelementptr inbounds %struct.hantro_dev, ptr %1543, i32 0, i32 15
  %1544 = ptrtoint ptr %variant.i1003 to i32
  call void @__asan_load4_noabort(i32 %1544)
  %1545 = load ptr, ptr %variant.i1003, align 8
  %legacy_regs.i1004 = getelementptr inbounds %struct.hantro_variant, ptr %1545, i32 0, i32 19
  %1546 = ptrtoint ptr %legacy_regs.i1004 to i32
  call void @__asan_load1_noabort(i32 %1546)
  %bf.load.i1005 = load i8, ptr %legacy_regs.i1004, align 4
  %1547 = and i8 %bf.load.i1005, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1547)
  %tobool.not.i1006 = icmp eq i8 %1547, 0
  br i1 %tobool.not.i1006, label %if.else.i1016, label %if.then.i1010

if.then.i1010:                                    ; preds = %config_seg_map.exit
  %and.i1007 = and i32 %add2.i, -16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1548 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i1008 = and i32 %1548, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1008)
  %tobool.not.i.i.i1009 = icmp eq i32 %and.i.i.i1008, 0
  br i1 %tobool.not.i.i.i1009, label %if.then.i1010.hantro_write_addr.exit.i1015_crit_edge, label %do.end.i.i.i1012

if.then.i1010.hantro_write_addr.exit.i1015_crit_edge: ; preds = %if.then.i1010
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit.i1015

do.end.i.i.i1012:                                 ; preds = %if.then.i1010
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i1011 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 169, i32 noundef %and.i1007) #8
  br label %hantro_write_addr.exit.i1015

hantro_write_addr.exit.i1015:                     ; preds = %do.end.i.i.i1012, %if.then.i1010.hantro_write_addr.exit.i1015_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %1549 = tail call i32 @llvm.bswap.i32(i32 %and.i1007) #5
  %dec_base.i.i.i1013 = getelementptr inbounds %struct.hantro_dev, ptr %1543, i32 0, i32 11
  %1550 = ptrtoint ptr %dec_base.i.i.i1013 to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load ptr, ptr %dec_base.i.i.i1013, align 8
  %add.ptr.i.i.i1014 = getelementptr i8, ptr %1551, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i1014, i32 %1549) #5, !srcloc !31
  br label %if.end.i1022

if.else.i1016:                                    ; preds = %config_seg_map.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1552 = load i32, ptr @hantro_debug, align 4
  %and.i.i58.i = and i32 %1552, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58.i)
  %tobool.not.i.i59.i = icmp eq i32 %and.i.i58.i, 0
  br i1 %tobool.not.i.i59.i, label %if.else.i1016.hantro_write_addr.exit64.i_crit_edge, label %do.end.i.i61.i

if.else.i1016.hantro_write_addr.exit64.i_crit_edge: ; preds = %if.else.i1016
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit64.i

do.end.i.i61.i:                                   ; preds = %if.else.i1016
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef 169, i32 noundef %1541) #8
  br label %hantro_write_addr.exit64.i

hantro_write_addr.exit64.i:                       ; preds = %do.end.i.i61.i, %if.else.i1016.hantro_write_addr.exit64.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %1553 = tail call i32 @llvm.bswap.i32(i32 %1541) #5
  %dec_base.i.i62.i = getelementptr inbounds %struct.hantro_dev, ptr %1543, i32 0, i32 11
  %1554 = ptrtoint ptr %dec_base.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load ptr, ptr %dec_base.i.i62.i, align 8
  %add.ptr.i.i63.i = getelementptr i8, ptr %1555, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63.i, i32 %1553) #5, !srcloc !31
  br label %if.end.i1022

if.end.i1022:                                     ; preds = %hantro_write_addr.exit64.i, %hantro_write_addr.exit.i1015
  %and5.i = shl i32 %add2.i, 3
  %mul.i1017 = and i32 %and5.i, 120
  %1556 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1556)
  %1557 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i1018 = getelementptr inbounds %struct.hantro_dev, ptr %1557, i32 0, i32 11
  %1558 = ptrtoint ptr %dec_base.i.i.i.i1018 to i32
  call void @__asan_load4_noabort(i32 %1558)
  %1559 = load ptr, ptr %dec_base.i.i.i.i1018, align 8
  %add.ptr.i.i.i.i1019 = getelementptr i8, ptr %1559, i32 20
  %1560 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i1019) #5, !srcloc !32
  %1561 = tail call i32 @llvm.bswap.i32(i32 %1560) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1562 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i1020 = and i32 %1562, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1020)
  %tobool.not.i.i.i.i1021 = icmp eq i32 %and.i.i.i.i1020, 0
  br i1 %tobool.not.i.i.i.i1021, label %if.end.i1022.vdpu_read_mask.exit.i.i1029_crit_edge, label %do.end.i.i.i.i1024

if.end.i1022.vdpu_read_mask.exit.i.i1029_crit_edge: ; preds = %if.end.i1022
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i.i1029

do.end.i.i.i.i1024:                               ; preds = %if.end.i1022
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i.i1023 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 5, i32 noundef %1561) #8
  br label %vdpu_read_mask.exit.i.i1029

vdpu_read_mask.exit.i.i1029:                      ; preds = %do.end.i.i.i.i1024, %if.end.i1022.vdpu_read_mask.exit.i.i1029_crit_edge
  %and.i.i65.i = and i32 %1561, 33554431
  %shl4.i.i.i1025 = shl nuw i32 %mul.i1017, 25
  %or.i.i.i1026 = or i32 %and.i.i65.i, %shl4.i.i.i1025
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1563 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i1027 = and i32 %1563, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i1027)
  %tobool.not.i.i66.i1028 = icmp eq i32 %and.i3.i.i1027, 0
  br i1 %tobool.not.i.i66.i1028, label %vdpu_read_mask.exit.i.i1029.hantro_reg_write.exit.i1030_crit_edge, label %do.end.i.i68.i

vdpu_read_mask.exit.i.i1029.hantro_reg_write.exit.i1030_crit_edge: ; preds = %vdpu_read_mask.exit.i.i1029
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit.i1030

do.end.i.i68.i:                                   ; preds = %vdpu_read_mask.exit.i.i1029
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i.i1026) #8
  br label %hantro_reg_write.exit.i1030

hantro_reg_write.exit.i1030:                      ; preds = %do.end.i.i68.i, %vdpu_read_mask.exit.i.i1029.hantro_reg_write.exit.i1030_crit_edge
  %1564 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i1026) #5
  %1565 = ptrtoint ptr %dec_base.i.i.i.i1018 to i32
  call void @__asan_load4_noabort(i32 %1565)
  %1566 = load ptr, ptr %dec_base.i.i.i.i1018, align 8
  %add.ptr.i.i69.i = getelementptr i8, ptr %1566, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69.i, i32 %1564) #5, !srcloc !31
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2_src, i32 0, i32 4
  %1567 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1568)
  %cmp.not.i.i = icmp eq i32 %1568, 0
  br i1 %cmp.not.i.i, label %hantro_reg_write.exit.i1030.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i1031

hantro_reg_write.exit.i1030.vb2_get_plane_payload.exit.i_crit_edge: ; preds = %hantro_reg_write.exit.i1030
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_get_plane_payload.exit.i

if.then.i.i1031:                                  ; preds = %hantro_reg_write.exit.i1030
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2_src, i32 0, i32 10, i32 0, i32 3
  %1569 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load i32, ptr %bytesused.i.i, align 4
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i1031, %hantro_reg_write.exit.i1030.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i.i1032 = phi i32 [ %1570, %if.then.i.i1031 ], [ 0, %hantro_reg_write.exit.i1030.vb2_get_plane_payload.exit.i_crit_edge ]
  %div57.i = lshr exact i32 %mul.i1017, 3
  %sub.i1033 = sub nsw i32 %div57.i, %add.i1001
  %add9.i1034 = add i32 %retval.0.i.i1032, %sub.i1033
  %1571 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i70.i = getelementptr inbounds %struct.hantro_dev, ptr %1572, i32 0, i32 11
  %1573 = ptrtoint ptr %dec_base.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %1573)
  %1574 = load ptr, ptr %dec_base.i.i.i70.i, align 8
  %add.ptr.i.i.i71.i = getelementptr i8, ptr %1574, i32 24
  %1575 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i71.i) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1576 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i72.i = and i32 %1576, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72.i)
  %tobool.not.i.i.i73.i = icmp eq i32 %and.i.i.i72.i, 0
  br i1 %tobool.not.i.i.i73.i, label %vb2_get_plane_payload.exit.i.vdpu_read_mask.exit.i87.i_crit_edge, label %do.end.i.i.i76.i

vb2_get_plane_payload.exit.i.vdpu_read_mask.exit.i87.i_crit_edge: ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i87.i

do.end.i.i.i76.i:                                 ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %1577 = tail call i32 @llvm.bswap.i32(i32 %1575) #5
  %call4.i.i.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 6, i32 noundef %1577) #8
  br label %vdpu_read_mask.exit.i87.i

vdpu_read_mask.exit.i87.i:                        ; preds = %do.end.i.i.i76.i, %vb2_get_plane_payload.exit.i.vdpu_read_mask.exit.i87.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1578 = load i32, ptr @hantro_debug, align 4
  %and.i3.i85.i = and i32 %1578, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i85.i)
  %tobool.not.i.i86.i = icmp eq i32 %and.i3.i85.i, 0
  br i1 %tobool.not.i.i86.i, label %vdpu_read_mask.exit.i87.i.hantro_reg_write.exit92.i_crit_edge, label %do.end.i.i90.i

vdpu_read_mask.exit.i87.i.hantro_reg_write.exit92.i_crit_edge: ; preds = %vdpu_read_mask.exit.i87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit92.i

do.end.i.i90.i:                                   ; preds = %vdpu_read_mask.exit.i87.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 6, i32 noundef %add9.i1034) #8
  br label %hantro_reg_write.exit92.i

hantro_reg_write.exit92.i:                        ; preds = %do.end.i.i90.i, %vdpu_read_mask.exit.i87.i.hantro_reg_write.exit92.i_crit_edge
  %1579 = tail call i32 @llvm.bswap.i32(i32 %add9.i1034) #5
  %1580 = ptrtoint ptr %dec_base.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %1580)
  %1581 = load ptr, ptr %dec_base.i.i.i70.i, align 8
  %add.ptr.i.i91.i = getelementptr i8, ptr %1581, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91.i, i32 %1579) #5, !srcloc !31
  %1582 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1582)
  %1583 = load ptr, ptr %ctx, align 8
  %variant16.i = getelementptr inbounds %struct.hantro_dev, ptr %1583, i32 0, i32 15
  %1584 = ptrtoint ptr %variant16.i to i32
  call void @__asan_load4_noabort(i32 %1584)
  %1585 = load ptr, ptr %variant16.i, align 8
  %legacy_regs17.i = getelementptr inbounds %struct.hantro_variant, ptr %1585, i32 0, i32 19
  %1586 = ptrtoint ptr %legacy_regs17.i to i32
  call void @__asan_load1_noabort(i32 %1586)
  %bf.load18.i = load i8, ptr %legacy_regs17.i, align 4
  %1587 = and i8 %bf.load18.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1587)
  %tobool22.not.i = icmp eq i8 %1587, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %hantro_reg_write.exit92.i.config_source.exit_crit_edge

hantro_reg_write.exit92.i.config_source.exit_crit_edge: ; preds = %hantro_reg_write.exit92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %config_source.exit

if.then23.i:                                      ; preds = %hantro_reg_write.exit92.i
  %and24.i = and i32 %add2.i, -16
  %sub30.i = sub i32 %and24.i, %1541
  %dec_base.i.i.i93.i = getelementptr inbounds %struct.hantro_dev, ptr %1583, i32 0, i32 11
  %1588 = ptrtoint ptr %dec_base.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %1588)
  %1589 = load ptr, ptr %dec_base.i.i.i93.i, align 8
  %add.ptr.i.i.i94.i = getelementptr i8, ptr %1589, i32 1036
  %1590 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i94.i) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1591 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i95.i = and i32 %1591, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i95.i)
  %tobool.not.i.i.i96.i = icmp eq i32 %and.i.i.i95.i, 0
  br i1 %tobool.not.i.i.i96.i, label %if.then23.i.vdpu_read_mask.exit.i110.i_crit_edge, label %do.end.i.i.i99.i

if.then23.i.vdpu_read_mask.exit.i110.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i110.i

do.end.i.i.i99.i:                                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %1592 = tail call i32 @llvm.bswap.i32(i32 %1590) #5
  %call4.i.i.i98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 259, i32 noundef %1592) #8
  br label %vdpu_read_mask.exit.i110.i

vdpu_read_mask.exit.i110.i:                       ; preds = %do.end.i.i.i99.i, %if.then23.i.vdpu_read_mask.exit.i110.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1593 = load i32, ptr @hantro_debug, align 4
  %and.i3.i108.i = and i32 %1593, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i108.i)
  %tobool.not.i.i109.i = icmp eq i32 %and.i3.i108.i, 0
  br i1 %tobool.not.i.i109.i, label %vdpu_read_mask.exit.i110.i.hantro_reg_write.exit115.i_crit_edge, label %do.end.i.i113.i

vdpu_read_mask.exit.i110.i.hantro_reg_write.exit115.i_crit_edge: ; preds = %vdpu_read_mask.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit115.i

do.end.i.i113.i:                                  ; preds = %vdpu_read_mask.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 259, i32 noundef %sub30.i) #8
  br label %hantro_reg_write.exit115.i

hantro_reg_write.exit115.i:                       ; preds = %do.end.i.i113.i, %vdpu_read_mask.exit.i110.i.hantro_reg_write.exit115.i_crit_edge
  %1594 = tail call i32 @llvm.bswap.i32(i32 %sub30.i) #5
  %1595 = ptrtoint ptr %dec_base.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %1595)
  %1596 = load ptr, ptr %dec_base.i.i.i93.i, align 8
  %add.ptr.i.i114.i = getelementptr i8, ptr %1596, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114.i, i32 %1594) #5, !srcloc !31
  %1597 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %1597)
  %1598 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1598)
  %cmp.not.i117.i = icmp eq i32 %1598, 0
  br i1 %cmp.not.i117.i, label %hantro_reg_write.exit115.i.vb2_plane_size.exit.i_crit_edge, label %if.then.i118.i

hantro_reg_write.exit115.i.vb2_plane_size.exit.i_crit_edge: ; preds = %hantro_reg_write.exit115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_plane_size.exit.i

if.then.i118.i:                                   ; preds = %hantro_reg_write.exit115.i
  call void @__sanitizer_cov_trace_pc() #7
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2_src, i32 0, i32 10, i32 0, i32 4
  %1599 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %1599)
  %1600 = load i32, ptr %length.i.i, align 8
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i118.i, %hantro_reg_write.exit115.i.vb2_plane_size.exit.i_crit_edge
  %retval.0.i119.i = phi i32 [ %1600, %if.then.i118.i ], [ 0, %hantro_reg_write.exit115.i.vb2_plane_size.exit.i_crit_edge ]
  %1601 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1601)
  %1602 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i120.i = getelementptr inbounds %struct.hantro_dev, ptr %1602, i32 0, i32 11
  %1603 = ptrtoint ptr %dec_base.i.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %1603)
  %1604 = load ptr, ptr %dec_base.i.i.i120.i, align 8
  %add.ptr.i.i.i121.i = getelementptr i8, ptr %1604, i32 1032
  %1605 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i121.i) #5, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1606 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i122.i = and i32 %1606, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i122.i)
  %tobool.not.i.i.i123.i = icmp eq i32 %and.i.i.i122.i, 0
  br i1 %tobool.not.i.i.i123.i, label %vb2_plane_size.exit.i.vdpu_read_mask.exit.i137.i_crit_edge, label %do.end.i.i.i126.i

vb2_plane_size.exit.i.vdpu_read_mask.exit.i137.i_crit_edge: ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i137.i

do.end.i.i.i126.i:                                ; preds = %vb2_plane_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %1607 = tail call i32 @llvm.bswap.i32(i32 %1605) #5
  %call4.i.i.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 258, i32 noundef %1607) #8
  br label %vdpu_read_mask.exit.i137.i

vdpu_read_mask.exit.i137.i:                       ; preds = %do.end.i.i.i126.i, %vb2_plane_size.exit.i.vdpu_read_mask.exit.i137.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %1608 = load i32, ptr @hantro_debug, align 4
  %and.i3.i135.i = and i32 %1608, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i135.i)
  %tobool.not.i.i136.i = icmp eq i32 %and.i3.i135.i, 0
  br i1 %tobool.not.i.i136.i, label %vdpu_read_mask.exit.i137.i.hantro_reg_write.exit142.i_crit_edge, label %do.end.i.i140.i

vdpu_read_mask.exit.i137.i.hantro_reg_write.exit142.i_crit_edge: ; preds = %vdpu_read_mask.exit.i137.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit142.i

do.end.i.i140.i:                                  ; preds = %vdpu_read_mask.exit.i137.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 258, i32 noundef %retval.0.i119.i) #8
  br label %hantro_reg_write.exit142.i

hantro_reg_write.exit142.i:                       ; preds = %do.end.i.i140.i, %vdpu_read_mask.exit.i137.i.hantro_reg_write.exit142.i_crit_edge
  %1609 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i119.i) #5
  %1610 = ptrtoint ptr %dec_base.i.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %1610)
  %1611 = load ptr, ptr %dec_base.i.i.i120.i, align 8
  %add.ptr.i.i141.i = getelementptr i8, ptr %1611, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i141.i, i32 %1609) #5, !srcloc !31
  br label %config_source.exit

config_source.exit:                               ; preds = %hantro_reg_write.exit142.i, %hantro_reg_write.exit92.i.config_source.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_g2_vp9_dec_done(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %tx16p = alloca [2 x [4 x i32]], align 4
  %mv_mode = alloca [7 x [4 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 6
  %flags = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_update_last_crit_edge, label %if.end

entry.out_update_last_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_update_last

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %cur, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  %bf.clear = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %bf.clear to i32
  %and4 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end116_crit_edge

if.end.if.end116_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then6:                                         ; preds = %if.end
  %probability_tables = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4
  %and9 = and i32 %1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10 = icmp ne i32 %and9, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tx16p) #5
  %3 = getelementptr inbounds [4 x i32], ptr %tx16p, i32 0, i32 3
  %4 = getelementptr inbounds [2 x [4 x i32]], ptr %tx16p, i32 0, i32 1
  %5 = getelementptr inbounds [2 x [4 x i32]], ptr %tx16p, i32 0, i32 1, i32 3
  br i1 %tobool10, label %do.body27, label %if.end24

if.end24:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 5, i32 %bf.cast
  %6 = call ptr @memcpy(ptr %probability_tables, ptr %arrayidx, i32 2039)
  br label %if.end46

do.body27:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %probability_tables to i32
  call void @__asan_load1_noabort(i32 %7)
  %_tx_skip.sroa.0.0.copyload = load i8, ptr %probability_tables, align 1
  %_tx_skip.sroa.5.0.arraydecay14.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %_tx_skip.sroa.5.0.arraydecay14.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %_tx_skip.sroa.5.0.copyload = load i8, ptr %_tx_skip.sroa.5.0.arraydecay14.sroa_idx, align 1
  %tx1616 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %tx1616 to i32
  call void @__asan_load1_noabort(i32 %9)
  %_tx_skip.sroa.6.2.copyload = load i8, ptr %tx1616, align 1
  %_tx_skip.sroa.9.2.arraydecay17.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %_tx_skip.sroa.9.2.arraydecay17.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %_tx_skip.sroa.9.2.copyload = load i8, ptr %_tx_skip.sroa.9.2.arraydecay17.sroa_idx, align 1
  %_tx_skip.sroa.10.2.arraydecay17.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %_tx_skip.sroa.10.2.arraydecay17.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %_tx_skip.sroa.10.2.copyload = load i8, ptr %_tx_skip.sroa.10.2.arraydecay17.sroa_idx, align 1
  %_tx_skip.sroa.11.2.arraydecay17.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %_tx_skip.sroa.11.2.arraydecay17.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %_tx_skip.sroa.11.2.copyload = load i8, ptr %_tx_skip.sroa.11.2.arraydecay17.sroa_idx, align 1
  %tx3219 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %tx3219 to i32
  call void @__asan_load1_noabort(i32 %13)
  %_tx_skip.sroa.12.6.copyload = load i8, ptr %tx3219, align 1
  %_tx_skip.sroa.15.6.arraydecay20.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %_tx_skip.sroa.15.6.arraydecay20.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %_tx_skip.sroa.15.6.copyload = load i8, ptr %_tx_skip.sroa.15.6.arraydecay20.sroa_idx, align 1
  %_tx_skip.sroa.16.6.arraydecay20.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %_tx_skip.sroa.16.6.arraydecay20.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %_tx_skip.sroa.16.6.copyload = load i8, ptr %_tx_skip.sroa.16.6.arraydecay20.sroa_idx, align 1
  %_tx_skip.sroa.17.6.arraydecay20.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 2, i32 1
  %16 = ptrtoint ptr %_tx_skip.sroa.17.6.arraydecay20.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %_tx_skip.sroa.17.6.copyload = load i8, ptr %_tx_skip.sroa.17.6.arraydecay20.sroa_idx, align 1
  %_tx_skip.sroa.18.6.arraydecay20.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 2, i32 1, i32 1
  %17 = ptrtoint ptr %_tx_skip.sroa.18.6.arraydecay20.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %_tx_skip.sroa.18.6.copyload = load i8, ptr %_tx_skip.sroa.18.6.arraydecay20.sroa_idx, align 1
  %_tx_skip.sroa.19.6.arraydecay20.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 2, i32 1, i32 2
  %18 = ptrtoint ptr %_tx_skip.sroa.19.6.arraydecay20.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %_tx_skip.sroa.19.6.copyload = load i8, ptr %_tx_skip.sroa.19.6.arraydecay20.sroa_idx, align 1
  %skip22 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %skip22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %_tx_skip.sroa.20.12.copyload = load i8, ptr %skip22, align 1
  %_tx_skip.sroa.23.12.arraydecay23.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 4, i32 1
  %20 = ptrtoint ptr %_tx_skip.sroa.23.12.arraydecay23.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %_tx_skip.sroa.23.12.copyload = load i8, ptr %_tx_skip.sroa.23.12.arraydecay23.sroa_idx, align 1
  %_tx_skip.sroa.24.12.arraydecay23.sroa_idx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4, i32 4, i32 2
  %21 = ptrtoint ptr %_tx_skip.sroa.24.12.arraydecay23.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %_tx_skip.sroa.24.12.copyload = load i8, ptr %_tx_skip.sroa.24.12.arraydecay23.sroa_idx, align 1
  %arrayidx212 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 5, i32 %bf.cast
  %22 = call ptr @memcpy(ptr %probability_tables, ptr %arrayidx212, i32 2039)
  store i8 %_tx_skip.sroa.0.0.copyload, ptr %probability_tables, align 1
  store i8 %_tx_skip.sroa.5.0.copyload, ptr %_tx_skip.sroa.5.0.arraydecay14.sroa_idx, align 1
  store i8 %_tx_skip.sroa.6.2.copyload, ptr %tx1616, align 1
  store i8 %_tx_skip.sroa.9.2.copyload, ptr %_tx_skip.sroa.9.2.arraydecay17.sroa_idx, align 1
  store i8 %_tx_skip.sroa.10.2.copyload, ptr %_tx_skip.sroa.10.2.arraydecay17.sroa_idx, align 1
  store i8 %_tx_skip.sroa.11.2.copyload, ptr %_tx_skip.sroa.11.2.arraydecay17.sroa_idx, align 1
  store i8 %_tx_skip.sroa.12.6.copyload, ptr %tx3219, align 1
  store i8 %_tx_skip.sroa.15.6.copyload, ptr %_tx_skip.sroa.15.6.arraydecay20.sroa_idx, align 1
  store i8 %_tx_skip.sroa.16.6.copyload, ptr %_tx_skip.sroa.16.6.arraydecay20.sroa_idx, align 1
  store i8 %_tx_skip.sroa.17.6.copyload, ptr %_tx_skip.sroa.17.6.arraydecay20.sroa_idx, align 1
  store i8 %_tx_skip.sroa.18.6.copyload, ptr %_tx_skip.sroa.18.6.arraydecay20.sroa_idx, align 1
  store i8 %_tx_skip.sroa.19.6.copyload, ptr %_tx_skip.sroa.19.6.arraydecay20.sroa_idx, align 1
  store i8 %_tx_skip.sroa.20.12.copyload, ptr %skip22, align 1
  store i8 %_tx_skip.sroa.23.12.copyload, ptr %_tx_skip.sroa.23.12.arraydecay23.sroa_idx, align 1
  store i8 %_tx_skip.sroa.24.12.copyload, ptr %_tx_skip.sroa.24.12.arraydecay23.sroa_idx, align 1
  br label %if.end46

if.end46:                                         ; preds = %do.body27, %if.end24
  %misc = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2
  %23 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %misc, align 8
  %ctx_counters_offset = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 10
  %25 = ptrtoint ptr %ctx_counters_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctx_counters_offset, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  %tx16x16_count = getelementptr inbounds %struct.symbol_counts, ptr %add.ptr, i32 0, i32 10
  %27 = call ptr @memcpy(ptr %tx16p, ptr %tx16x16_count, i32 12)
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %3, align 4
  %arrayidx49.1 = getelementptr [2 x [3 x i32]], ptr %tx16x16_count, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %4, ptr %arrayidx49.1, i32 12)
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %5, align 4
  %cnts = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3
  %tx16p53 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %tx16p53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %tx16p, ptr %tx16p53, align 4
  %last = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 7
  %32 = ptrtoint ptr %last to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load54 = load i16, ptr %last, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load54)
  %tobool57.not = icmp sgt i16 %bf.load54, -1
  br i1 %tobool57.not, label %if.end46.lor.end_crit_edge, label %lor.rhs

if.end46.lor.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %flags59 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags59, align 4
  %and60 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61 = icmp ne i32 %and60, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end46.lor.end_crit_edge
  %35 = phi i1 [ true, %if.end46.lor.end_crit_edge ], [ %tobool61, %lor.rhs ]
  call void @v4l2_vp9_adapt_coef_probs(ptr noundef %probability_tables, ptr noundef %cnts, i1 noundef zeroext %35, i1 noundef zeroext %tobool10) #5
  br i1 %tobool10, label %lor.end.if.end115_crit_edge, label %if.then64

lor.end.if.end115_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then64:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %mv_mode) #5
  %36 = call ptr @memset(ptr %mv_mode, i32 255, i32 112)
  %arrayidx69 = getelementptr [3 x [2 x i32]], ptr %add.ptr, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx69, align 4
  %39 = ptrtoint ptr %mv_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mv_mode, align 4
  %arrayidx75 = getelementptr [3 x [2 x i32]], ptr %add.ptr, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx75, align 4
  %arrayidx78 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx78, align 4
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr, align 4
  %arrayidx84 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx84, align 4
  %arrayidx88 = getelementptr [3 x [2 x i32]], ptr %add.ptr, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx88, align 4
  %arrayidx90 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx90, align 4
  %arrayidx68.1 = getelementptr [7 x [3 x [2 x i32]]], ptr %add.ptr, i32 0, i32 1
  %arrayidx69.1 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.1, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx69.1, align 4
  %arrayidx71.1 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx71.1, align 4
  %arrayidx75.1 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.1, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx75.1, align 4
  %arrayidx78.1 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx78.1, align 4
  %55 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx68.1, align 4
  %arrayidx84.1 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 1, i32 2
  %57 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx84.1, align 4
  %arrayidx88.1 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.1, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx88.1, align 4
  %arrayidx90.1 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx90.1, align 4
  %arrayidx68.2 = getelementptr [7 x [3 x [2 x i32]]], ptr %add.ptr, i32 0, i32 2
  %arrayidx69.2 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.2, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx69.2, align 4
  %arrayidx71.2 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx71.2, align 4
  %arrayidx75.2 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.2, i32 0, i32 2
  %64 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx75.2, align 4
  %arrayidx78.2 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx78.2, align 4
  %67 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx68.2, align 4
  %arrayidx84.2 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx84.2, align 4
  %arrayidx88.2 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.2, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx88.2, align 4
  %arrayidx90.2 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 2, i32 3
  %72 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx90.2, align 4
  %arrayidx68.3 = getelementptr [7 x [3 x [2 x i32]]], ptr %add.ptr, i32 0, i32 3
  %arrayidx69.3 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.3, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx69.3, align 4
  %arrayidx71.3 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx71.3, align 4
  %arrayidx75.3 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.3, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx75.3, align 4
  %arrayidx78.3 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx78.3, align 4
  %79 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx68.3, align 4
  %arrayidx84.3 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 3, i32 2
  %81 = ptrtoint ptr %arrayidx84.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx84.3, align 4
  %arrayidx88.3 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.3, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx88.3, align 4
  %arrayidx90.3 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 3, i32 3
  %84 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx90.3, align 4
  %arrayidx68.4 = getelementptr [7 x [3 x [2 x i32]]], ptr %add.ptr, i32 0, i32 4
  %arrayidx69.4 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.4, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx69.4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx69.4, align 4
  %arrayidx71.4 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 4
  %87 = ptrtoint ptr %arrayidx71.4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx71.4, align 4
  %arrayidx75.4 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.4, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx75.4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx75.4, align 4
  %arrayidx78.4 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %arrayidx78.4 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx78.4, align 4
  %91 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx68.4, align 4
  %arrayidx84.4 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 4, i32 2
  %93 = ptrtoint ptr %arrayidx84.4 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx84.4, align 4
  %arrayidx88.4 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.4, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx88.4, align 4
  %arrayidx90.4 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 4, i32 3
  %96 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx90.4, align 4
  %arrayidx68.5 = getelementptr [7 x [3 x [2 x i32]]], ptr %add.ptr, i32 0, i32 5
  %arrayidx69.5 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.5, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx69.5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx69.5, align 4
  %arrayidx71.5 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 5
  %99 = ptrtoint ptr %arrayidx71.5 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx71.5, align 4
  %arrayidx75.5 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.5, i32 0, i32 2
  %100 = ptrtoint ptr %arrayidx75.5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx75.5, align 4
  %arrayidx78.5 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 5, i32 1
  %102 = ptrtoint ptr %arrayidx78.5 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx78.5, align 4
  %103 = ptrtoint ptr %arrayidx68.5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx68.5, align 4
  %arrayidx84.5 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 5, i32 2
  %105 = ptrtoint ptr %arrayidx84.5 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx84.5, align 4
  %arrayidx88.5 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.5, i32 0, i32 2, i32 1
  %106 = ptrtoint ptr %arrayidx88.5 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx88.5, align 4
  %arrayidx90.5 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 5, i32 3
  %108 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx90.5, align 4
  %arrayidx68.6 = getelementptr [7 x [3 x [2 x i32]]], ptr %add.ptr, i32 0, i32 6
  %arrayidx69.6 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.6, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx69.6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx69.6, align 4
  %arrayidx71.6 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 6
  %111 = ptrtoint ptr %arrayidx71.6 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx71.6, align 4
  %arrayidx75.6 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.6, i32 0, i32 2
  %112 = ptrtoint ptr %arrayidx75.6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx75.6, align 4
  %arrayidx78.6 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 6, i32 1
  %114 = ptrtoint ptr %arrayidx78.6 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx78.6, align 4
  %115 = ptrtoint ptr %arrayidx68.6 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx68.6, align 4
  %arrayidx84.6 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 6, i32 2
  %117 = ptrtoint ptr %arrayidx84.6 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx84.6, align 4
  %arrayidx88.6 = getelementptr [3 x [2 x i32]], ptr %arrayidx68.6, i32 0, i32 2, i32 1
  %118 = ptrtoint ptr %arrayidx88.6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx88.6, align 4
  %arrayidx90.6 = getelementptr inbounds [7 x [4 x i32]], ptr %mv_mode, i32 0, i32 6, i32 3
  %120 = ptrtoint ptr %arrayidx90.6 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx90.6, align 4
  %mv_mode94 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 11
  %121 = ptrtoint ptr %mv_mode94 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %mv_mode, ptr %mv_mode94, align 4
  %122 = ptrtoint ptr %cur to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load97 = load i16, ptr %cur, align 8
  %bf.lshr98 = lshr i16 %bf.load97, 11
  %123 = trunc i16 %bf.lshr98 to i8
  %conv = and i8 %123, 3
  %124 = trunc i16 %bf.load97 to i8
  %125 = lshr i8 %124, 5
  %bf.lshr109 = lshr i16 %bf.load97, 8
  %126 = trunc i16 %bf.lshr109 to i8
  %conv112 = and i8 %126, 7
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags, align 4
  call void @v4l2_vp9_adapt_noncoef_probs(ptr noundef %probability_tables, ptr noundef %cnts, i8 noundef zeroext %conv, i8 noundef zeroext %125, i8 noundef zeroext %conv112, i32 noundef %128) #5
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %mv_mode) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then64, %lor.end.if.end115_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tx16p) #5
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end.if.end116_crit_edge
  %arrayidx118 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 5, i32 %bf.cast
  %probability_tables119 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 4
  %129 = call ptr @memcpy(ptr %arrayidx118, ptr %probability_tables119, i32 2039)
  br label %out_update_last

out_update_last:                                  ; preds = %if.end116, %entry.out_update_last_crit_edge
  %last120 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 7
  %130 = call ptr @memcpy(ptr %last120, ptr %cur, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_vp9_adapt_coef_probs(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_vp9_adapt_noncoef_probs(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_start_prepare_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @v4l2_vp9_reset_frame_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_vp9_fw_update_probs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_ref(ptr noundef %ctx, ptr noundef %dst, ptr nocapture noundef readonly %ref_reg, ptr nocapture noundef readonly %dec_params, i64 noundef %ref_ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %m2m_ctx1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx1.i, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i, i64 noundef %ref_ts, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.get_ref_buf.exit_crit_edge, label %if.end.i

entry.get_ref_buf.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_ref_buf.exit

if.end.i:                                         ; preds = %entry
  %num_buffers.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call.i)
  %cmp.i.i = icmp ugt i32 %3, %call.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.get_ref_buf.exit_crit_edge

if.end.i.get_ref_buf.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_ref_buf.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i, i32 0, i32 20, i32 %call.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  br label %get_ref_buf.exit

get_ref_buf.exit:                                 ; preds = %if.then.i.i, %if.end.i.get_ref_buf.exit_crit_edge, %entry.get_ref_buf.exit_crit_edge
  %retval.0.i = phi ptr [ %dst, %entry.get_ref_buf.exit_crit_edge ], [ %5, %if.then.i.i ], [ null, %if.end.i.get_ref_buf.exit_crit_edge ]
  %6 = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %conv = zext i16 %8 to i32
  %height = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %height, align 2
  %conv1 = zext i16 %10 to i32
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 8
  %13 = ptrtoint ptr %ref_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_reg, align 4
  %dec_base.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %12, i32 0, i32 11
  %15 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !32
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %19 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %get_ref_buf.exit.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i

get_ref_buf.exit.vdpu_read_mask.exit.i_crit_edge: ; preds = %get_ref_buf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i

do.end.i.i.i:                                     ; preds = %get_ref_buf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i = lshr i32 %14, 2
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i, i32 noundef %18) #8
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i, %get_ref_buf.exit.vdpu_read_mask.exit.i_crit_edge
  %mask.i.i = getelementptr inbounds %struct.hantro_reg, ptr %ref_reg, i32 0, i32 2
  %20 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask.i.i, align 4
  %shift.i.i = getelementptr inbounds %struct.hantro_reg, ptr %ref_reg, i32 0, i32 1
  %22 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shift.i.i, align 4
  %shl.i.i = shl i32 %21, %23
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %18, %neg.i.i
  %and2.i.i = and i32 %21, %conv
  %shl4.i.i = shl i32 %and2.i.i, %23
  %or.i.i = or i32 %and.i.i, %shl4.i.i
  %24 = ptrtoint ptr %ref_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ref_reg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %26 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge, label %do.end.i.i

vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit

do.end.i.i:                                       ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i = lshr i32 %25, 2
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i, i32 noundef %or.i.i) #8
  br label %hantro_reg_write.exit

hantro_reg_write.exit:                            ; preds = %do.end.i.i, %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %28 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %27) #5, !srcloc !31
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 8
  %height4 = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 1
  %32 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height4, align 4
  %dec_base.i.i.i39 = getelementptr inbounds %struct.hantro_dev, ptr %31, i32 0, i32 11
  %34 = ptrtoint ptr %dec_base.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dec_base.i.i.i39, align 8
  %add.ptr.i.i.i40 = getelementptr i8, ptr %35, i32 %33
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i40) #5, !srcloc !32
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %38 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i41 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i41)
  %tobool.not.i.i.i42 = icmp eq i32 %and.i.i.i41, 0
  br i1 %tobool.not.i.i.i42, label %hantro_reg_write.exit.vdpu_read_mask.exit.i56_crit_edge, label %do.end.i.i.i45

hantro_reg_write.exit.vdpu_read_mask.exit.i56_crit_edge: ; preds = %hantro_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i56

do.end.i.i.i45:                                   ; preds = %hantro_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i43 = lshr i32 %33, 2
  %call4.i.i.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i43, i32 noundef %37) #8
  br label %vdpu_read_mask.exit.i56

vdpu_read_mask.exit.i56:                          ; preds = %do.end.i.i.i45, %hantro_reg_write.exit.vdpu_read_mask.exit.i56_crit_edge
  %mask.i.i46 = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %mask.i.i46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask.i.i46, align 4
  %shift.i.i47 = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %shift.i.i47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shift.i.i47, align 4
  %shl.i.i48 = shl i32 %40, %42
  %neg.i.i49 = xor i32 %shl.i.i48, -1
  %and.i.i50 = and i32 %37, %neg.i.i49
  %and2.i.i51 = and i32 %40, %conv1
  %shl4.i.i52 = shl i32 %and2.i.i51, %42
  %or.i.i53 = or i32 %and.i.i50, %shl4.i.i52
  %43 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %45 = load i32, ptr @hantro_debug, align 4
  %and.i3.i54 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i54)
  %tobool.not.i.i55 = icmp eq i32 %and.i3.i54, 0
  br i1 %tobool.not.i.i55, label %vdpu_read_mask.exit.i56.hantro_reg_write.exit61_crit_edge, label %do.end.i.i59

vdpu_read_mask.exit.i56.hantro_reg_write.exit61_crit_edge: ; preds = %vdpu_read_mask.exit.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit61

do.end.i.i59:                                     ; preds = %vdpu_read_mask.exit.i56
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i57 = lshr i32 %44, 2
  %call.i.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i57, i32 noundef %or.i.i53) #8
  br label %hantro_reg_write.exit61

hantro_reg_write.exit61:                          ; preds = %do.end.i.i59, %vdpu_read_mask.exit.i56.hantro_reg_write.exit61_crit_edge
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i53) #5
  %47 = ptrtoint ptr %dec_base.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dec_base.i.i.i39, align 8
  %add.ptr.i.i60 = getelementptr i8, ptr %48, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 %46) #5, !srcloc !31
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctx, align 8
  %hor_scale = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 2
  %shl = shl nuw nsw i32 %conv, 14
  %51 = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %dst, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 8
  %conv7 = zext i16 %53 to i32
  %div = udiv i32 %shl, %conv7
  %54 = ptrtoint ptr %hor_scale to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hor_scale, align 4
  %dec_base.i.i.i62 = getelementptr inbounds %struct.hantro_dev, ptr %50, i32 0, i32 11
  %56 = ptrtoint ptr %dec_base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dec_base.i.i.i62, align 8
  %add.ptr.i.i.i63 = getelementptr i8, ptr %57, i32 %55
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i63) #5, !srcloc !32
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %60 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i64 = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64)
  %tobool.not.i.i.i65 = icmp eq i32 %and.i.i.i64, 0
  br i1 %tobool.not.i.i.i65, label %hantro_reg_write.exit61.vdpu_read_mask.exit.i79_crit_edge, label %do.end.i.i.i68

hantro_reg_write.exit61.vdpu_read_mask.exit.i79_crit_edge: ; preds = %hantro_reg_write.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i79

do.end.i.i.i68:                                   ; preds = %hantro_reg_write.exit61
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i66 = lshr i32 %55, 2
  %call4.i.i.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i66, i32 noundef %59) #8
  br label %vdpu_read_mask.exit.i79

vdpu_read_mask.exit.i79:                          ; preds = %do.end.i.i.i68, %hantro_reg_write.exit61.vdpu_read_mask.exit.i79_crit_edge
  %mask.i.i69 = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %mask.i.i69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask.i.i69, align 4
  %shift.i.i70 = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %shift.i.i70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %shift.i.i70, align 4
  %shl.i.i71 = shl i32 %62, %64
  %neg.i.i72 = xor i32 %shl.i.i71, -1
  %and.i.i73 = and i32 %59, %neg.i.i72
  %and2.i.i74 = and i32 %62, %div
  %shl4.i.i75 = shl i32 %and2.i.i74, %64
  %or.i.i76 = or i32 %and.i.i73, %shl4.i.i75
  %65 = ptrtoint ptr %hor_scale to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hor_scale, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %67 = load i32, ptr @hantro_debug, align 4
  %and.i3.i77 = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i77)
  %tobool.not.i.i78 = icmp eq i32 %and.i3.i77, 0
  br i1 %tobool.not.i.i78, label %vdpu_read_mask.exit.i79.hantro_reg_write.exit84_crit_edge, label %do.end.i.i82

vdpu_read_mask.exit.i79.hantro_reg_write.exit84_crit_edge: ; preds = %vdpu_read_mask.exit.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit84

do.end.i.i82:                                     ; preds = %vdpu_read_mask.exit.i79
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i80 = lshr i32 %66, 2
  %call.i.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i80, i32 noundef %or.i.i76) #8
  br label %hantro_reg_write.exit84

hantro_reg_write.exit84:                          ; preds = %do.end.i.i82, %vdpu_read_mask.exit.i79.hantro_reg_write.exit84_crit_edge
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i.i76) #5
  %69 = ptrtoint ptr %dec_base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dec_base.i.i.i62, align 8
  %add.ptr.i.i83 = getelementptr i8, ptr %70, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83, i32 %68) #5, !srcloc !31
  %71 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx, align 8
  %ver_scale = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 3
  %shl9 = shl nuw nsw i32 %conv1, 14
  %height10 = getelementptr inbounds %struct.hantro_decoded_buffer, ptr %dst, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %height10 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %height10, align 2
  %conv11 = zext i16 %74 to i32
  %div12 = udiv i32 %shl9, %conv11
  %75 = ptrtoint ptr %ver_scale to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ver_scale, align 4
  %dec_base.i.i.i85 = getelementptr inbounds %struct.hantro_dev, ptr %72, i32 0, i32 11
  %77 = ptrtoint ptr %dec_base.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dec_base.i.i.i85, align 8
  %add.ptr.i.i.i86 = getelementptr i8, ptr %78, i32 %76
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i86) #5, !srcloc !32
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %81 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i87 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i87)
  %tobool.not.i.i.i88 = icmp eq i32 %and.i.i.i87, 0
  br i1 %tobool.not.i.i.i88, label %hantro_reg_write.exit84.vdpu_read_mask.exit.i102_crit_edge, label %do.end.i.i.i91

hantro_reg_write.exit84.vdpu_read_mask.exit.i102_crit_edge: ; preds = %hantro_reg_write.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i102

do.end.i.i.i91:                                   ; preds = %hantro_reg_write.exit84
  call void @__sanitizer_cov_trace_pc() #7
  %div9.i.i.i89 = lshr i32 %76, 2
  %call4.i.i.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i89, i32 noundef %80) #8
  br label %vdpu_read_mask.exit.i102

vdpu_read_mask.exit.i102:                         ; preds = %do.end.i.i.i91, %hantro_reg_write.exit84.vdpu_read_mask.exit.i102_crit_edge
  %mask.i.i92 = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 3, i32 2
  %82 = ptrtoint ptr %mask.i.i92 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mask.i.i92, align 4
  %shift.i.i93 = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %shift.i.i93 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %shift.i.i93, align 4
  %shl.i.i94 = shl i32 %83, %85
  %neg.i.i95 = xor i32 %shl.i.i94, -1
  %and.i.i96 = and i32 %80, %neg.i.i95
  %and2.i.i97 = and i32 %83, %div12
  %shl4.i.i98 = shl i32 %and2.i.i97, %85
  %or.i.i99 = or i32 %and.i.i96, %shl4.i.i98
  %86 = ptrtoint ptr %ver_scale to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ver_scale, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %88 = load i32, ptr @hantro_debug, align 4
  %and.i3.i100 = and i32 %88, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i100)
  %tobool.not.i.i101 = icmp eq i32 %and.i3.i100, 0
  br i1 %tobool.not.i.i101, label %vdpu_read_mask.exit.i102.hantro_reg_write.exit107_crit_edge, label %do.end.i.i105

vdpu_read_mask.exit.i102.hantro_reg_write.exit107_crit_edge: ; preds = %vdpu_read_mask.exit.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit107

do.end.i.i105:                                    ; preds = %vdpu_read_mask.exit.i102
  call void @__sanitizer_cov_trace_pc() #7
  %div5.i.i103 = lshr i32 %87, 2
  %call.i.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i103, i32 noundef %or.i.i99) #8
  br label %hantro_reg_write.exit107

hantro_reg_write.exit107:                         ; preds = %do.end.i.i105, %vdpu_read_mask.exit.i102.hantro_reg_write.exit107_crit_edge
  %89 = tail call i32 @llvm.bswap.i32(i32 %or.i.i99) #5
  %90 = ptrtoint ptr %dec_base.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dec_base.i.i.i85, align 8
  %add.ptr.i.i106 = getelementptr i8, ptr %91, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106, i32 %89) #5, !srcloc !31
  %vpu_dst_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %92 = ptrtoint ptr %vpu_dst_fmt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vpu_dst_fmt.i, align 4
  %call.i108 = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %93) #5
  br i1 %call.i108, label %if.then.i, label %if.end.i110

if.then.i:                                        ; preds = %hantro_reg_write.exit107
  call void @__sanitizer_cov_trace_pc() #7
  %postproc.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %retval.0.i, i32 0, i32 1
  %94 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index.i, align 4
  %dma.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i, i32 0, i32 %95, i32 1
  br label %hantro_get_dec_buf_addr.exit

if.end.i110:                                      ; preds = %hantro_reg_write.exit107
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i109 = tail call ptr @vb2_plane_cookie(ptr noundef %retval.0.i, i32 noundef 0) #5
  br label %hantro_get_dec_buf_addr.exit

hantro_get_dec_buf_addr.exit:                     ; preds = %if.end.i110, %if.then.i
  %retval.0.in.i = phi ptr [ %dma.i, %if.then.i ], [ %call.i.i109, %if.end.i110 ]
  %96 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %retval.0.i111 = load i32, ptr %retval.0.in.i, align 4
  %97 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctx, align 8
  %y_base = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 4
  %99 = ptrtoint ptr %y_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %y_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %101 = load i32, ptr @hantro_debug, align 4
  %and.i.i112 = and i32 %101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.not.i.i113 = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.not.i.i113, label %hantro_get_dec_buf_addr.exit.hantro_write_addr.exit_crit_edge, label %do.end.i.i115

hantro_get_dec_buf_addr.exit.hantro_write_addr.exit_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit

do.end.i.i115:                                    ; preds = %hantro_get_dec_buf_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i = lshr i32 %100, 2
  %call.i.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef %div7.i.i, i32 noundef %retval.0.i111) #8
  br label %hantro_write_addr.exit

hantro_write_addr.exit:                           ; preds = %do.end.i.i115, %hantro_get_dec_buf_addr.exit.hantro_write_addr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %102 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i111) #5
  %dec_base.i.i = getelementptr inbounds %struct.hantro_dev, ptr %98, i32 0, i32 11
  %103 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i116 = getelementptr i8, ptr %104, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i116, i32 %102) #5, !srcloc !31
  %bit_depth.i = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %dec_params, i32 0, i32 17
  %105 = ptrtoint ptr %bit_depth.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bit_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %106)
  %cmp.i117 = icmp eq i8 %106, 8
  %cond.i = select i1 %cmp.i117, i32 1, i32 2
  %src_fmt.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6
  %107 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %src_fmt.i, align 4
  %height.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %109 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %110, %108
  %mul3.i = mul i32 %mul.i, %cond.i
  %add = add i32 %mul3.i, %retval.0.i111
  %111 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx, align 8
  %c_base = getelementptr inbounds %struct.hantro_vp9_ref_reg, ptr %ref_reg, i32 0, i32 5
  %113 = ptrtoint ptr %c_base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %c_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %115 = load i32, ptr @hantro_debug, align 4
  %and.i.i118 = and i32 %115, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.not.i.i119 = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.not.i.i119, label %hantro_write_addr.exit.hantro_write_addr.exit125_crit_edge, label %do.end.i.i122

hantro_write_addr.exit.hantro_write_addr.exit125_crit_edge: ; preds = %hantro_write_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit125

do.end.i.i122:                                    ; preds = %hantro_write_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %div7.i.i120 = lshr i32 %114, 2
  %call.i.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 398, i32 noundef %div7.i.i120, i32 noundef %add) #8
  br label %hantro_write_addr.exit125

hantro_write_addr.exit125:                        ; preds = %do.end.i.i122, %hantro_write_addr.exit.hantro_write_addr.exit125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %116 = tail call i32 @llvm.bswap.i32(i32 %add) #5
  %dec_base.i.i123 = getelementptr inbounds %struct.hantro_dev, ptr %112, i32 0, i32 11
  %117 = ptrtoint ptr %dec_base.i.i123 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dec_base.i.i123, align 8
  %add.ptr.i.i124 = getelementptr i8, ptr %118, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124, i32 %116) #5, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_vp9_seg_feat_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_g2_vp9_dec.c", i32 40, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/hantro.h", i32 392, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vdpu_write_relaxed._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vdpu_write_relaxed._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!10 = !{ptr @vdpu_read._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vdpu_read._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @config_ref_registers.ref_regs, !13, !"ref_regs", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/hantro_g2_vp9_dec.c", i32 207, i32 41}
!14 = !{ptr @config_segment.seg_regs, !15, !"seg_regs", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/hantro_g2_vp9_dec.c", i32 412, i32 33}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!18 = !{ptr @vdpu_write._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vdpu_write._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2156579495}
!31 = !{i64 5194199}
!32 = !{i64 5194617}
!33 = !{i64 2156580504}
