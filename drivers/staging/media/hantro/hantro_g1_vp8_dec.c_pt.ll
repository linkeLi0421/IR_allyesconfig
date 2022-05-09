; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_g1_vp8_dec.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_g1_vp8_dec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.v4l2_ctrl_vp8_frame = type { %struct.v4l2_vp8_segment, %struct.v4l2_vp8_loop_filter, %struct.v4l2_vp8_quantization, %struct.v4l2_vp8_entropy, %struct.v4l2_vp8_entropy_coder_state, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [8 x i32], i64, i64, i64, i64 }
%struct.v4l2_vp8_segment = type { [4 x i8], [4 x i8], [3 x i8], i8, i32 }
%struct.v4l2_vp8_loop_filter = type { [4 x i8], [4 x i8], i8, i8, i16, i32 }
%struct.v4l2_vp8_quantization = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_vp8_entropy = type { [4 x [8 x [3 x [11 x i8]]]], [4 x i8], [3 x i8], [2 x [19 x i8]], [3 x i8] }
%struct.v4l2_vp8_entropy_coder_state = type { i8, i8, i8, i8 }
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
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/staging/media/hantro/hantro_g1_vp8_dec.c\00", [47 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdpu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_write_relaxed._entry_ptr = internal global ptr @vdpu_write_relaxed._entry, section ".printk_index", align 4
@vp8_dec_lf_level = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 128, i32 18, i32 63 }, %struct.hantro_reg { i32 128, i32 12, i32 63 }, %struct.hantro_reg { i32 128, i32 6, i32 63 }, %struct.hantro_reg { i32 128, i32 0, i32 63 }], [48 x i8] zeroinitializer }, align 32
@vp8_dec_mb_adj = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 120, i32 21, i32 127 }, %struct.hantro_reg { i32 120, i32 14, i32 127 }, %struct.hantro_reg { i32 120, i32 7, i32 127 }, %struct.hantro_reg { i32 120, i32 0, i32 127 }], [48 x i8] zeroinitializer }, align 32
@vp8_dec_ref_adj = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 124, i32 21, i32 127 }, %struct.hantro_reg { i32 124, i32 14, i32 127 }, %struct.hantro_reg { i32 124, i32 7, i32 127 }, %struct.hantro_reg { i32 124, i32 0, i32 127 }], [48 x i8] zeroinitializer }, align 32
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str.3, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@vp8_dec_quant = internal constant { [4 x %struct.hantro_reg], [48 x i8] } { [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 132, i32 11, i32 2047 }, %struct.hantro_reg { i32 132, i32 0, i32 2047 }, %struct.hantro_reg { i32 184, i32 11, i32 2047 }, %struct.hantro_reg { i32 184, i32 0, i32 2047 }], [48 x i8] zeroinitializer }, align 32
@vp8_dec_dct_base = internal constant { [8 x %struct.hantro_reg], [32 x i8] } { [8 x %struct.hantro_reg] [%struct.hantro_reg { i32 48, i32 0, i32 -1 }, %struct.hantro_reg { i32 88, i32 0, i32 -1 }, %struct.hantro_reg { i32 92, i32 0, i32 -1 }, %struct.hantro_reg { i32 96, i32 0, i32 -1 }, %struct.hantro_reg { i32 100, i32 0, i32 -1 }, %struct.hantro_reg { i32 104, i32 0, i32 -1 }, %struct.hantro_reg { i32 112, i32 0, i32 -1 }, %struct.hantro_reg { i32 116, i32 0, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@vp8_dec_dct_start_bits = internal constant { [8 x %struct.hantro_reg], [32 x i8] } { [8 x %struct.hantro_reg] [%struct.hantro_reg { i32 20, i32 26, i32 63 }, %struct.hantro_reg { i32 28, i32 26, i32 63 }, %struct.hantro_reg { i32 28, i32 20, i32 63 }, %struct.hantro_reg { i32 44, i32 24, i32 63 }, %struct.hantro_reg { i32 44, i32 18, i32 63 }, %struct.hantro_reg { i32 44, i32 12, i32 63 }, %struct.hantro_reg { i32 44, i32 6, i32 63 }, %struct.hantro_reg { i32 44, i32 0, i32 63 }], [32 x i8] zeroinitializer }, align 32
@hantro_vp8_dec_mc_filter = external dso_local local_unnamed_addr constant [8 x [6 x i32]], align 4
@vp8_dec_pred_bc_tap = internal constant { [8 x [4 x %struct.hantro_reg]], [96 x i8] } { [8 x [4 x %struct.hantro_reg]] [[4 x %struct.hantro_reg] [%struct.hantro_reg { i32 196, i32 22, i32 1023 }, %struct.hantro_reg { i32 196, i32 12, i32 1023 }, %struct.hantro_reg { i32 196, i32 2, i32 1023 }, %struct.hantro_reg { i32 136, i32 22, i32 1023 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 136, i32 12, i32 1023 }, %struct.hantro_reg { i32 136, i32 2, i32 1023 }, %struct.hantro_reg { i32 140, i32 22, i32 1023 }, %struct.hantro_reg { i32 140, i32 12, i32 1023 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 140, i32 2, i32 1023 }, %struct.hantro_reg { i32 144, i32 22, i32 1023 }, %struct.hantro_reg { i32 144, i32 12, i32 1023 }, %struct.hantro_reg { i32 144, i32 2, i32 1023 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 148, i32 22, i32 1023 }, %struct.hantro_reg { i32 148, i32 12, i32 1023 }, %struct.hantro_reg { i32 148, i32 2, i32 1023 }, %struct.hantro_reg { i32 152, i32 22, i32 1023 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 152, i32 12, i32 1023 }, %struct.hantro_reg { i32 152, i32 2, i32 1023 }, %struct.hantro_reg { i32 156, i32 22, i32 1023 }, %struct.hantro_reg { i32 156, i32 12, i32 1023 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 156, i32 2, i32 1023 }, %struct.hantro_reg { i32 168, i32 22, i32 1023 }, %struct.hantro_reg { i32 168, i32 12, i32 1023 }, %struct.hantro_reg { i32 168, i32 2, i32 1023 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 172, i32 22, i32 1023 }, %struct.hantro_reg { i32 172, i32 12, i32 1023 }, %struct.hantro_reg { i32 172, i32 2, i32 1023 }, %struct.hantro_reg { i32 176, i32 22, i32 1023 }], [4 x %struct.hantro_reg] [%struct.hantro_reg { i32 176, i32 12, i32 1023 }, %struct.hantro_reg { i32 176, i32 2, i32 1023 }, %struct.hantro_reg { i32 180, i32 22, i32 1023 }, %struct.hantro_reg { i32 180, i32 12, i32 1023 }]], [96 x i8] zeroinitializer }, align 32
@cfg_ref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:%d: failed to find last frame ts=%llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfg_ref\00", [24 x i8] zeroinitializer }, align 32
@cfg_ref._entry_ptr = internal global ptr @cfg_ref._entry, section ".printk_index", align 4
@cfg_ref._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:%d: failed to find golden frame ts=%llu\0A\00", [50 x i8] zeroinitializer }, align 32
@cfg_ref._entry_ptr.9 = internal global ptr @cfg_ref._entry.7, section ".printk_index", align 4
@cfg_ref._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:%d: failed to find alt frame ts=%llu\0A\00", [53 x i8] zeroinitializer }, align 32
@cfg_ref._entry_ptr.12 = internal global ptr @cfg_ref._entry.10, section ".printk_index", align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.13, ptr @.str.3, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 445, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 392, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"vp8_dec_lf_level\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 31, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"vp8_dec_mb_adj\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 39, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"vp8_dec_ref_adj\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 47, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 413, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"vp8_dec_quant\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 55, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"vp8_dec_dct_base\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 19, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"vp8_dec_dct_start_bits\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 72, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"vp8_dec_pred_bc_tap\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 80, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 379, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 387, i32 3 }
@___asan_gen_.75 = private constant [52 x i8] c"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 397, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 398, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @cfg_ref._entry, ptr @cfg_ref._entry.10, ptr @cfg_ref._entry.7, ptr @cfg_ref._entry_ptr, ptr @cfg_ref._entry_ptr.12, ptr @cfg_ref._entry_ptr.9, ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vp8_dec_lf_level, ptr @vp8_dec_mb_adj, ptr @vp8_dec_ref_adj, ptr @.str.4, ptr @vp8_dec_quant, ptr @vp8_dec_dct_base, ptr @vp8_dec_dct_start_bits, ptr @vp8_dec_pred_bc_tap, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_lf_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_mb_adj to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_ref_adj to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_quant to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_dct_base to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_dct_start_bits to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp8_dec_pred_bc_tap to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ref._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_ref._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_g1_vp8_dec_run(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %height1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height1, align 4
  %4 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_fmt, align 8
  tail call void @hantro_start_prepare_run(ptr noundef %ctx) #4
  %call = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10750408) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !54

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 445, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end26:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 21
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags, align 8
  %and = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool27.not = icmp eq i64 %and, 0
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %land.lhs.true

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end26
  %8 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool28.not = icmp eq ptr %10, null
  br i1 %tobool28.not, label %land.lhs.true.if.end33_crit_edge, label %if.then29

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 8
  %13 = call ptr @memset(ptr %10, i32 0, i32 %12)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %land.lhs.true.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  tail call void @hantro_vp8_prob_update(ptr noundef %ctx, ptr noundef nonnull %call) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %14 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end33.vdpu_write_relaxed.exit_crit_edge, label %do.end.i

if.end33.vdpu_write_relaxed.exit_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 2, i32 noundef 16254736) #7
  br label %vdpu_write_relaxed.exit

vdpu_write_relaxed.exit:                          ; preds = %do.end.i, %if.end33.vdpu_write_relaxed.exit_crit_edge
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268957696) #4, !srcloc !55
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flags, align 8
  %and35 = and i64 %18, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  %spec.select = select i1 %tobool36.not, i32 -1609563905, i32 -1610612481
  %and40 = and i64 %18, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  %or43 = or i32 %spec.select, 67108864
  %reg.1 = select i1 %tobool41.not, i32 %or43, i32 %spec.select
  %level = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  %or47 = or i32 %reg.1, 16384
  %reg.2 = select i1 %cmp, i32 %or47, i32 %reg.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %21 = load i32, ptr @hantro_debug, align 4
  %and.i143 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool.not.i144 = icmp eq i32 %and.i143, 0
  br i1 %tobool.not.i144, label %vdpu_write_relaxed.exit.vdpu_write_relaxed.exit149_crit_edge, label %do.end.i146

vdpu_write_relaxed.exit.vdpu_write_relaxed.exit149_crit_edge: ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit149

do.end.i146:                                      ; preds = %vdpu_write_relaxed.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 3, i32 noundef %reg.2) #7
  br label %vdpu_write_relaxed.exit149

vdpu_write_relaxed.exit149:                       ; preds = %do.end.i146, %vdpu_write_relaxed.exit.vdpu_write_relaxed.exit149_crit_edge
  %22 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #4
  %23 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i148 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %22) #4, !srcloc !55
  %sub = add i32 %5, 15
  %sub50 = add i32 %3, 15
  %25 = shl i32 %sub, 19
  %shl = and i32 %25, -8388608
  %26 = shl i32 %sub50, 7
  %shl54 = and i32 %26, 522240
  %27 = lshr i32 %sub, 10
  %shl57 = and i32 %27, 56
  %shr59 = lshr i32 %sub50, 12
  %and60 = and i32 %shr59, 7
  %or55 = or i32 %and60, %shl54
  %or58 = or i32 %or55, %shl
  %or62 = or i32 %or58, %shl57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %28 = load i32, ptr @hantro_debug, align 4
  %and.i150 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %vdpu_write_relaxed.exit149.vdpu_write_relaxed.exit156_crit_edge, label %do.end.i153

vdpu_write_relaxed.exit149.vdpu_write_relaxed.exit156_crit_edge: ; preds = %vdpu_write_relaxed.exit149
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit156

do.end.i153:                                      ; preds = %vdpu_write_relaxed.exit149
  call void @__sanitizer_cov_trace_pc() #6
  %call.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 4, i32 noundef %or62) #7
  br label %vdpu_write_relaxed.exit156

vdpu_write_relaxed.exit156:                       ; preds = %do.end.i153, %vdpu_write_relaxed.exit149.vdpu_write_relaxed.exit156_crit_edge
  %29 = tail call i32 @llvm.bswap.i32(i32 %or62) #4
  %30 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i155 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %29) #4, !srcloc !55
  %coder_state = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 4
  %32 = ptrtoint ptr %coder_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %coder_state, align 8
  %conv63 = zext i8 %33 to i32
  %value = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %value, align 1
  %conv67 = zext i8 %35 to i32
  %shl69 = shl nuw nsw i32 %conv67, 8
  %or70 = or i32 %shl69, %conv63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %36 = load i32, ptr @hantro_debug, align 4
  %and.i157 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool.not.i158, label %vdpu_write_relaxed.exit156.vdpu_write_relaxed.exit163_crit_edge, label %do.end.i160

vdpu_write_relaxed.exit156.vdpu_write_relaxed.exit163_crit_edge: ; preds = %vdpu_write_relaxed.exit156
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit163

do.end.i160:                                      ; preds = %vdpu_write_relaxed.exit156
  call void @__sanitizer_cov_trace_pc() #6
  %call.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 5, i32 noundef %or70) #7
  br label %vdpu_write_relaxed.exit163

vdpu_write_relaxed.exit163:                       ; preds = %do.end.i160, %vdpu_write_relaxed.exit156.vdpu_write_relaxed.exit163_crit_edge
  %37 = tail call i32 @llvm.bswap.i32(i32 %or70) #4
  %38 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i162 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %37) #4, !srcloc !55
  %version = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 9
  %40 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp72.not = icmp eq i8 %41, 3
  %reg.3 = select i1 %cmp72.not, i32 0, i32 8192
  %42 = and i8 %41, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool80.not = icmp eq i8 %42, 0
  %or82 = or i32 %reg.3, 4096
  %reg.4 = select i1 %tobool80.not, i32 %reg.3, i32 %or82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %43 = load i32, ptr @hantro_debug, align 4
  %and.i164 = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.not.i165 = icmp eq i32 %and.i164, 0
  br i1 %tobool.not.i165, label %vdpu_write_relaxed.exit163.vdpu_write_relaxed.exit170_crit_edge, label %do.end.i167

vdpu_write_relaxed.exit163.vdpu_write_relaxed.exit170_crit_edge: ; preds = %vdpu_write_relaxed.exit163
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit170

do.end.i167:                                      ; preds = %vdpu_write_relaxed.exit163
  call void @__sanitizer_cov_trace_pc() #6
  %call.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 7, i32 noundef %reg.4) #7
  br label %vdpu_write_relaxed.exit170

vdpu_write_relaxed.exit170:                       ; preds = %do.end.i167, %vdpu_write_relaxed.exit163.vdpu_write_relaxed.exit170_crit_edge
  %44 = shl nuw nsw i32 %reg.4, 8
  %45 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i169 = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %44) #4, !srcloc !55
  %lf1.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 8
  %flags.i = getelementptr inbounds %struct.v4l2_vp8_segment, ptr %call, i32 0, i32 4
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %and.i171 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171)
  %tobool.not.i172 = icmp eq i32 %and.i171, 0
  br i1 %tobool.not.i172, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %vdpu_write_relaxed.exit170
  %51 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %level, align 1
  %dec_base.i.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %48, i32 0, i32 11
  %53 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %54, i32 128
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #4, !srcloc !56
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %57 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.vdpu_read_mask.exit.i.i_crit_edge, label %do.end.i.i.i.i

if.then.i.vdpu_read_mask.exit.i.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 32, i32 noundef %56) #7
  br label %vdpu_read_mask.exit.i.i

vdpu_read_mask.exit.i.i:                          ; preds = %do.end.i.i.i.i, %if.then.i.vdpu_read_mask.exit.i.i_crit_edge
  %and.i.i.i = and i32 %56, -16515073
  %58 = and i8 %52, 63
  %and2.i.i.i = zext i8 %58 to i32
  %shl4.i.i.i = shl nuw nsw i32 %and2.i.i.i, 18
  %or.i.i.i = or i32 %and.i.i.i, %shl4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %59 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool.not.i.i.i, label %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge, label %do.end.i.i.i

vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge: ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i

do.end.i.i.i:                                     ; preds = %vdpu_read_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 32, i32 noundef %or.i.i.i) #7
  br label %hantro_reg_write.exit.i

hantro_reg_write.exit.i:                          ; preds = %do.end.i.i.i, %vdpu_read_mask.exit.i.i.hantro_reg_write.exit.i_crit_edge
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #4
  %61 = ptrtoint ptr %dec_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dec_base.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %60) #4, !srcloc !55
  br label %if.end32.i

if.else.i:                                        ; preds = %vdpu_write_relaxed.exit170
  %and3.i = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %dec_base.i.i.i108.i = getelementptr inbounds %struct.hantro_dev, ptr %48, i32 0, i32 11
  br i1 %tobool4.not.i, label %if.else.i.for.body24.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.for.body24.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body24.i

for.body.i:                                       ; preds = %hantro_reg_write.exit107.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %i.0178.i = phi i32 [ %inc.i, %hantro_reg_write.exit107.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %63 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %level, align 1
  %conv8.i = zext i8 %64 to i32
  %arrayidx.i = getelementptr %struct.v4l2_vp8_segment, ptr %call, i32 0, i32 1, i32 %i.0178.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = sext i8 %66 to i32
  %add.i = add nsw i32 %conv9.i, %conv8.i
  %67 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 0) #4
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 63) #4
  %arrayidx19.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.0178.i
  %69 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx19.i, align 4
  %71 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i.i92.i = getelementptr i8, ptr %72, i32 %70
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i92.i) #4, !srcloc !56
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %75 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i93.i = and i32 %75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i93.i)
  %tobool.not.i.i.i94.i = icmp eq i32 %and.i.i.i93.i, 0
  br i1 %tobool.not.i.i.i94.i, label %for.body.i.vdpu_read_mask.exit.i103.i_crit_edge, label %do.end.i.i.i96.i

for.body.i.vdpu_read_mask.exit.i103.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i103.i

do.end.i.i.i96.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i.i = lshr i32 %70, 2
  %call4.i.i.i95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i.i, i32 noundef %74) #7
  br label %vdpu_read_mask.exit.i103.i

vdpu_read_mask.exit.i103.i:                       ; preds = %do.end.i.i.i96.i, %for.body.i.vdpu_read_mask.exit.i103.i_crit_edge
  %mask.i.i.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.0178.i, i32 2
  %76 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mask.i.i.i, align 4
  %shift.i.i.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.0178.i, i32 1
  %78 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %shift.i.i.i, align 4
  %shl.i.i.i = shl i32 %77, %79
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i97.i = and i32 %74, %neg.i.i.i
  %and2.i.i98.i = and i32 %77, %68
  %shl4.i.i99.i = shl i32 %and2.i.i98.i, %79
  %or.i.i100.i = or i32 %and.i.i97.i, %shl4.i.i99.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %80 = load i32, ptr @hantro_debug, align 4
  %and.i3.i101.i = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i101.i)
  %tobool.not.i.i102.i = icmp eq i32 %and.i3.i101.i, 0
  br i1 %tobool.not.i.i102.i, label %vdpu_read_mask.exit.i103.i.hantro_reg_write.exit107.i_crit_edge, label %do.end.i.i105.i

vdpu_read_mask.exit.i103.i.hantro_reg_write.exit107.i_crit_edge: ; preds = %vdpu_read_mask.exit.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit107.i

do.end.i.i105.i:                                  ; preds = %vdpu_read_mask.exit.i103.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i.i = lshr i32 %70, 2
  %call.i.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i.i, i32 noundef %or.i.i100.i) #7
  br label %hantro_reg_write.exit107.i

hantro_reg_write.exit107.i:                       ; preds = %do.end.i.i105.i, %vdpu_read_mask.exit.i103.i.hantro_reg_write.exit107.i_crit_edge
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i.i100.i) #4
  %82 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i106.i = getelementptr i8, ptr %83, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106.i, i32 %81) #4, !srcloc !55
  %inc.i = add nuw nsw i32 %i.0178.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %hantro_reg_write.exit107.i.if.end32.i_crit_edge, label %hantro_reg_write.exit107.i.for.body.i_crit_edge

hantro_reg_write.exit107.i.for.body.i_crit_edge:  ; preds = %hantro_reg_write.exit107.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

hantro_reg_write.exit107.i.if.end32.i_crit_edge:  ; preds = %hantro_reg_write.exit107.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

for.body24.i:                                     ; preds = %hantro_reg_write.exit130.i.for.body24.i_crit_edge, %if.else.i.for.body24.i_crit_edge
  %i.1179.i = phi i32 [ %inc30.i, %hantro_reg_write.exit130.i.for.body24.i_crit_edge ], [ 0, %if.else.i.for.body24.i_crit_edge ]
  %arrayidx25.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.1179.i
  %arrayidx27.i = getelementptr %struct.v4l2_vp8_segment, ptr %call, i32 0, i32 1, i32 %i.1179.i
  %84 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = sext i8 %85 to i32
  %86 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx25.i, align 4
  %88 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i.i109.i = getelementptr i8, ptr %89, i32 %87
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i109.i) #4, !srcloc !56
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %92 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i110.i = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i110.i)
  %tobool.not.i.i.i111.i = icmp eq i32 %and.i.i.i110.i, 0
  br i1 %tobool.not.i.i.i111.i, label %for.body24.i.vdpu_read_mask.exit.i125.i_crit_edge, label %do.end.i.i.i114.i

for.body24.i.vdpu_read_mask.exit.i125.i_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i125.i

do.end.i.i.i114.i:                                ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i112.i = lshr i32 %87, 2
  %call4.i.i.i113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i112.i, i32 noundef %91) #7
  br label %vdpu_read_mask.exit.i125.i

vdpu_read_mask.exit.i125.i:                       ; preds = %do.end.i.i.i114.i, %for.body24.i.vdpu_read_mask.exit.i125.i_crit_edge
  %mask.i.i115.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.1179.i, i32 2
  %93 = ptrtoint ptr %mask.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mask.i.i115.i, align 4
  %shift.i.i116.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_lf_level, i32 0, i32 %i.1179.i, i32 1
  %95 = ptrtoint ptr %shift.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %shift.i.i116.i, align 4
  %shl.i.i117.i = shl i32 %94, %96
  %neg.i.i118.i = xor i32 %shl.i.i117.i, -1
  %and.i.i119.i = and i32 %91, %neg.i.i118.i
  %and2.i.i120.i = and i32 %94, %conv28.i
  %shl4.i.i121.i = shl i32 %and2.i.i120.i, %96
  %or.i.i122.i = or i32 %and.i.i119.i, %shl4.i.i121.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %97 = load i32, ptr @hantro_debug, align 4
  %and.i3.i123.i = and i32 %97, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i123.i)
  %tobool.not.i.i124.i = icmp eq i32 %and.i3.i123.i, 0
  br i1 %tobool.not.i.i124.i, label %vdpu_read_mask.exit.i125.i.hantro_reg_write.exit130.i_crit_edge, label %do.end.i.i128.i

vdpu_read_mask.exit.i125.i.hantro_reg_write.exit130.i_crit_edge: ; preds = %vdpu_read_mask.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit130.i

do.end.i.i128.i:                                  ; preds = %vdpu_read_mask.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i126.i = lshr i32 %87, 2
  %call.i.i127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i126.i, i32 noundef %or.i.i122.i) #7
  br label %hantro_reg_write.exit130.i

hantro_reg_write.exit130.i:                       ; preds = %do.end.i.i128.i, %vdpu_read_mask.exit.i125.i.hantro_reg_write.exit130.i_crit_edge
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i.i122.i) #4
  %99 = ptrtoint ptr %dec_base.i.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dec_base.i.i.i108.i, align 8
  %add.ptr.i.i129.i = getelementptr i8, ptr %100, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129.i, i32 %98) #4, !srcloc !55
  %inc30.i = add nuw nsw i32 %i.1179.i, 1
  %exitcond182.not.i = icmp eq i32 %inc30.i, 4
  br i1 %exitcond182.not.i, label %hantro_reg_write.exit130.i.if.end32.i_crit_edge, label %hantro_reg_write.exit130.i.for.body24.i_crit_edge

hantro_reg_write.exit130.i.for.body24.i_crit_edge: ; preds = %hantro_reg_write.exit130.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24.i

hantro_reg_write.exit130.i.if.end32.i_crit_edge:  ; preds = %hantro_reg_write.exit130.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.end32.i:                                       ; preds = %hantro_reg_write.exit130.i.if.end32.i_crit_edge, %hantro_reg_write.exit107.i.if.end32.i_crit_edge, %hantro_reg_write.exit.i
  %sharpness_level.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1, i32 2
  %101 = ptrtoint ptr %sharpness_level.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sharpness_level.i, align 4
  %103 = and i8 %102, 7
  %and34.i = zext i8 %103 to i32
  %shl.i = shl nuw nsw i32 %and34.i, 28
  %flags35.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1, i32 5
  %104 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags35.i, align 4
  %and36.i = shl i32 %105, 29
  %106 = and i32 %and36.i, -2147483648
  %107 = or i32 %106, %shl.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %108 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %108, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end32.i.vdpu_write_relaxed.exit.i_crit_edge, label %do.end.i.i

if.end32.i.vdpu_write_relaxed.exit.i_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i

do.end.i.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 30, i32 noundef %107) #7
  br label %vdpu_write_relaxed.exit.i

vdpu_write_relaxed.exit.i:                        ; preds = %do.end.i.i, %if.end32.i.vdpu_write_relaxed.exit.i_crit_edge
  %109 = lshr exact i32 %107, 24
  %dec_base.i.i = getelementptr inbounds %struct.hantro_dev, ptr %48, i32 0, i32 11
  %110 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %111, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %109) #4, !srcloc !55
  %112 = ptrtoint ptr %flags35.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags35.i, align 4
  %and41.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %vdpu_write_relaxed.exit.i.cfg_lf.exit_crit_edge, label %vdpu_write_relaxed.exit.i.for.body47.i_crit_edge

vdpu_write_relaxed.exit.i.for.body47.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i
  br label %for.body47.i

vdpu_write_relaxed.exit.i.cfg_lf.exit_crit_edge:  ; preds = %vdpu_write_relaxed.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_lf.exit

for.body47.i:                                     ; preds = %hantro_reg_write.exit176.i.for.body47.i_crit_edge, %vdpu_write_relaxed.exit.i.for.body47.i_crit_edge
  %i.2180.i = phi i32 [ %inc55.i, %hantro_reg_write.exit176.i.for.body47.i_crit_edge ], [ 0, %vdpu_write_relaxed.exit.i.for.body47.i_crit_edge ]
  %arrayidx48.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_mb_adj, i32 0, i32 %i.2180.i
  %arrayidx49.i = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 1, i32 1, i32 %i.2180.i
  %114 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = sext i8 %115 to i32
  %116 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx48.i, align 4
  %118 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i.i132.i = getelementptr i8, ptr %119, i32 %117
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i132.i) #4, !srcloc !56
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %122 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i133.i = and i32 %122, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i133.i)
  %tobool.not.i.i.i134.i = icmp eq i32 %and.i.i.i133.i, 0
  br i1 %tobool.not.i.i.i134.i, label %for.body47.i.vdpu_read_mask.exit.i148.i_crit_edge, label %do.end.i.i.i137.i

for.body47.i.vdpu_read_mask.exit.i148.i_crit_edge: ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i148.i

do.end.i.i.i137.i:                                ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i135.i = lshr i32 %117, 2
  %call4.i.i.i136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i135.i, i32 noundef %121) #7
  br label %vdpu_read_mask.exit.i148.i

vdpu_read_mask.exit.i148.i:                       ; preds = %do.end.i.i.i137.i, %for.body47.i.vdpu_read_mask.exit.i148.i_crit_edge
  %mask.i.i138.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_mb_adj, i32 0, i32 %i.2180.i, i32 2
  %123 = ptrtoint ptr %mask.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mask.i.i138.i, align 4
  %shift.i.i139.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_mb_adj, i32 0, i32 %i.2180.i, i32 1
  %125 = ptrtoint ptr %shift.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %shift.i.i139.i, align 4
  %shl.i.i140.i = shl i32 %124, %126
  %neg.i.i141.i = xor i32 %shl.i.i140.i, -1
  %and.i.i142.i = and i32 %121, %neg.i.i141.i
  %and2.i.i143.i = and i32 %124, %conv50.i
  %shl4.i.i144.i = shl i32 %and2.i.i143.i, %126
  %or.i.i145.i = or i32 %and.i.i142.i, %shl4.i.i144.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %127 = load i32, ptr @hantro_debug, align 4
  %and.i3.i146.i = and i32 %127, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i146.i)
  %tobool.not.i.i147.i = icmp eq i32 %and.i3.i146.i, 0
  br i1 %tobool.not.i.i147.i, label %vdpu_read_mask.exit.i148.i.hantro_reg_write.exit153.i_crit_edge, label %do.end.i.i151.i

vdpu_read_mask.exit.i148.i.hantro_reg_write.exit153.i_crit_edge: ; preds = %vdpu_read_mask.exit.i148.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit153.i

do.end.i.i151.i:                                  ; preds = %vdpu_read_mask.exit.i148.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i149.i = lshr i32 %117, 2
  %call.i.i150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i149.i, i32 noundef %or.i.i145.i) #7
  br label %hantro_reg_write.exit153.i

hantro_reg_write.exit153.i:                       ; preds = %do.end.i.i151.i, %vdpu_read_mask.exit.i148.i.hantro_reg_write.exit153.i_crit_edge
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i.i145.i) #4
  %129 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i152.i = getelementptr i8, ptr %130, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i152.i, i32 %128) #4, !srcloc !55
  %arrayidx51.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_ref_adj, i32 0, i32 %i.2180.i
  %arrayidx52.i = getelementptr [4 x i8], ptr %lf1.i, i32 0, i32 %i.2180.i
  %131 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = sext i8 %132 to i32
  %133 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx51.i, align 4
  %135 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i.i155.i = getelementptr i8, ptr %136, i32 %134
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i155.i) #4, !srcloc !56
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %139 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i156.i = and i32 %139, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i156.i)
  %tobool.not.i.i.i157.i = icmp eq i32 %and.i.i.i156.i, 0
  br i1 %tobool.not.i.i.i157.i, label %hantro_reg_write.exit153.i.vdpu_read_mask.exit.i171.i_crit_edge, label %do.end.i.i.i160.i

hantro_reg_write.exit153.i.vdpu_read_mask.exit.i171.i_crit_edge: ; preds = %hantro_reg_write.exit153.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i171.i

do.end.i.i.i160.i:                                ; preds = %hantro_reg_write.exit153.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i158.i = lshr i32 %134, 2
  %call4.i.i.i159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i158.i, i32 noundef %138) #7
  br label %vdpu_read_mask.exit.i171.i

vdpu_read_mask.exit.i171.i:                       ; preds = %do.end.i.i.i160.i, %hantro_reg_write.exit153.i.vdpu_read_mask.exit.i171.i_crit_edge
  %mask.i.i161.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_ref_adj, i32 0, i32 %i.2180.i, i32 2
  %140 = ptrtoint ptr %mask.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mask.i.i161.i, align 4
  %shift.i.i162.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_ref_adj, i32 0, i32 %i.2180.i, i32 1
  %142 = ptrtoint ptr %shift.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %shift.i.i162.i, align 4
  %shl.i.i163.i = shl i32 %141, %143
  %neg.i.i164.i = xor i32 %shl.i.i163.i, -1
  %and.i.i165.i = and i32 %138, %neg.i.i164.i
  %and2.i.i166.i = and i32 %141, %conv53.i
  %shl4.i.i167.i = shl i32 %and2.i.i166.i, %143
  %or.i.i168.i = or i32 %and.i.i165.i, %shl4.i.i167.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %144 = load i32, ptr @hantro_debug, align 4
  %and.i3.i169.i = and i32 %144, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i169.i)
  %tobool.not.i.i170.i = icmp eq i32 %and.i3.i169.i, 0
  br i1 %tobool.not.i.i170.i, label %vdpu_read_mask.exit.i171.i.hantro_reg_write.exit176.i_crit_edge, label %do.end.i.i174.i

vdpu_read_mask.exit.i171.i.hantro_reg_write.exit176.i_crit_edge: ; preds = %vdpu_read_mask.exit.i171.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit176.i

do.end.i.i174.i:                                  ; preds = %vdpu_read_mask.exit.i171.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i172.i = lshr i32 %134, 2
  %call.i.i173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i172.i, i32 noundef %or.i.i168.i) #7
  br label %hantro_reg_write.exit176.i

hantro_reg_write.exit176.i:                       ; preds = %do.end.i.i174.i, %vdpu_read_mask.exit.i171.i.hantro_reg_write.exit176.i_crit_edge
  %145 = tail call i32 @llvm.bswap.i32(i32 %or.i.i168.i) #4
  %146 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i175.i = getelementptr i8, ptr %147, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i175.i, i32 %145) #4, !srcloc !55
  %inc55.i = add nuw nsw i32 %i.2180.i, 1
  %exitcond183.not.i = icmp eq i32 %inc55.i, 4
  br i1 %exitcond183.not.i, label %hantro_reg_write.exit176.i.cfg_lf.exit_crit_edge, label %hantro_reg_write.exit176.i.for.body47.i_crit_edge

hantro_reg_write.exit176.i.for.body47.i_crit_edge: ; preds = %hantro_reg_write.exit176.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body47.i

hantro_reg_write.exit176.i.cfg_lf.exit_crit_edge: ; preds = %hantro_reg_write.exit176.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_lf.exit

cfg_lf.exit:                                      ; preds = %hantro_reg_write.exit176.i.cfg_lf.exit_crit_edge, %vdpu_write_relaxed.exit.i.cfg_lf.exit_crit_edge
  %quant.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2
  %148 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ctx, align 8
  %150 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags.i, align 4
  %and.i174 = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  br i1 %tobool.not.i175, label %if.then.i180, label %if.else.i193

if.then.i180:                                     ; preds = %cfg_lf.exit
  %152 = ptrtoint ptr %quant.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %quant.i, align 2
  %conv.i = zext i8 %153 to i32
  %dec_base.i.i.i.i176 = getelementptr inbounds %struct.hantro_dev, ptr %149, i32 0, i32 11
  %154 = ptrtoint ptr %dec_base.i.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dec_base.i.i.i.i176, align 8
  %add.ptr.i.i.i.i177 = getelementptr i8, ptr %155, i32 132
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i177) #4, !srcloc !56
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %158 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i178 = and i32 %158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i178)
  %tobool.not.i.i.i.i179 = icmp eq i32 %and.i.i.i.i178, 0
  br i1 %tobool.not.i.i.i.i179, label %if.then.i180.vdpu_read_mask.exit.i.i188_crit_edge, label %do.end.i.i.i.i182

if.then.i180.vdpu_read_mask.exit.i.i188_crit_edge: ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i188

do.end.i.i.i.i182:                                ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 33, i32 noundef %157) #7
  br label %vdpu_read_mask.exit.i.i188

vdpu_read_mask.exit.i.i188:                       ; preds = %do.end.i.i.i.i182, %if.then.i180.vdpu_read_mask.exit.i.i188_crit_edge
  %and.i.i.i183 = and i32 %157, -4192257
  %shl4.i.i.i184 = shl nuw nsw i32 %conv.i, 11
  %or.i.i.i185 = or i32 %and.i.i.i183, %shl4.i.i.i184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %159 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i186 = and i32 %159, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i186)
  %tobool.not.i.i.i187 = icmp eq i32 %and.i3.i.i186, 0
  br i1 %tobool.not.i.i.i187, label %vdpu_read_mask.exit.i.i188.hantro_reg_write.exit.i192_crit_edge, label %do.end.i.i.i190

vdpu_read_mask.exit.i.i188.hantro_reg_write.exit.i192_crit_edge: ; preds = %vdpu_read_mask.exit.i.i188
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i192

do.end.i.i.i190:                                  ; preds = %vdpu_read_mask.exit.i.i188
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 33, i32 noundef %or.i.i.i185) #7
  br label %hantro_reg_write.exit.i192

hantro_reg_write.exit.i192:                       ; preds = %do.end.i.i.i190, %vdpu_read_mask.exit.i.i188.hantro_reg_write.exit.i192_crit_edge
  %160 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i185) #4
  %161 = ptrtoint ptr %dec_base.i.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dec_base.i.i.i.i176, align 8
  %add.ptr.i.i.i191 = getelementptr i8, ptr %162, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i191, i32 %160) #4, !srcloc !55
  br label %if.end32.i213

if.else.i193:                                     ; preds = %cfg_lf.exit
  %and2.i = and i32 %151, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %dec_base.i.i.i83.i = getelementptr inbounds %struct.hantro_dev, ptr %149, i32 0, i32 11
  br i1 %tobool3.not.i, label %if.else.i193.for.body24.i211_crit_edge, label %if.else.i193.for.body.i199_crit_edge

if.else.i193.for.body.i199_crit_edge:             ; preds = %if.else.i193
  br label %for.body.i199

if.else.i193.for.body24.i211_crit_edge:           ; preds = %if.else.i193
  br label %for.body24.i211

for.body.i199:                                    ; preds = %hantro_reg_write.exit82.i.for.body.i199_crit_edge, %if.else.i193.for.body.i199_crit_edge
  %i.0197.i = phi i32 [ %inc.i206, %hantro_reg_write.exit82.i.for.body.i199_crit_edge ], [ 0, %if.else.i193.for.body.i199_crit_edge ]
  %163 = ptrtoint ptr %quant.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %quant.i, align 2
  %conv8.i194 = zext i8 %164 to i32
  %arrayidx.i195 = getelementptr [4 x i8], ptr %call, i32 0, i32 %i.0197.i
  %165 = ptrtoint ptr %arrayidx.i195 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx.i195, align 1
  %conv9.i196 = sext i8 %166 to i32
  %add.i197 = add nsw i32 %conv9.i196, %conv8.i194
  %167 = tail call i32 @llvm.smax.i32(i32 %add.i197, i32 0) #4
  %168 = tail call i32 @llvm.umin.i32(i32 %167, i32 127) #4
  %arrayidx19.i198 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.0197.i
  %169 = ptrtoint ptr %arrayidx19.i198 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx19.i198, align 4
  %171 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i.i67.i = getelementptr i8, ptr %172, i32 %170
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i67.i) #4, !srcloc !56
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %175 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i68.i = and i32 %175, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i68.i)
  %tobool.not.i.i.i69.i = icmp eq i32 %and.i.i.i68.i, 0
  br i1 %tobool.not.i.i.i69.i, label %for.body.i199.vdpu_read_mask.exit.i78.i_crit_edge, label %do.end.i.i.i71.i

for.body.i199.vdpu_read_mask.exit.i78.i_crit_edge: ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i78.i

do.end.i.i.i71.i:                                 ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i.i200 = lshr i32 %170, 2
  %call4.i.i.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i.i200, i32 noundef %174) #7
  br label %vdpu_read_mask.exit.i78.i

vdpu_read_mask.exit.i78.i:                        ; preds = %do.end.i.i.i71.i, %for.body.i199.vdpu_read_mask.exit.i78.i_crit_edge
  %mask.i.i.i201 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.0197.i, i32 2
  %176 = ptrtoint ptr %mask.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mask.i.i.i201, align 4
  %shift.i.i.i202 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.0197.i, i32 1
  %178 = ptrtoint ptr %shift.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %shift.i.i.i202, align 4
  %shl.i.i.i203 = shl i32 %177, %179
  %neg.i.i.i204 = xor i32 %shl.i.i.i203, -1
  %and.i.i72.i = and i32 %174, %neg.i.i.i204
  %and2.i.i73.i = and i32 %177, %168
  %shl4.i.i74.i = shl i32 %and2.i.i73.i, %179
  %or.i.i75.i = or i32 %and.i.i72.i, %shl4.i.i74.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %180 = load i32, ptr @hantro_debug, align 4
  %and.i3.i76.i = and i32 %180, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i76.i)
  %tobool.not.i.i77.i = icmp eq i32 %and.i3.i76.i, 0
  br i1 %tobool.not.i.i77.i, label %vdpu_read_mask.exit.i78.i.hantro_reg_write.exit82.i_crit_edge, label %do.end.i.i80.i

vdpu_read_mask.exit.i78.i.hantro_reg_write.exit82.i_crit_edge: ; preds = %vdpu_read_mask.exit.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit82.i

do.end.i.i80.i:                                   ; preds = %vdpu_read_mask.exit.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i.i205 = lshr i32 %170, 2
  %call.i.i79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i.i205, i32 noundef %or.i.i75.i) #7
  br label %hantro_reg_write.exit82.i

hantro_reg_write.exit82.i:                        ; preds = %do.end.i.i80.i, %vdpu_read_mask.exit.i78.i.hantro_reg_write.exit82.i_crit_edge
  %181 = tail call i32 @llvm.bswap.i32(i32 %or.i.i75.i) #4
  %182 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i81.i = getelementptr i8, ptr %183, i32 %170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81.i, i32 %181) #4, !srcloc !55
  %inc.i206 = add nuw nsw i32 %i.0197.i, 1
  %exitcond.not.i207 = icmp eq i32 %inc.i206, 4
  br i1 %exitcond.not.i207, label %hantro_reg_write.exit82.i.if.end32.i213_crit_edge, label %hantro_reg_write.exit82.i.for.body.i199_crit_edge

hantro_reg_write.exit82.i.for.body.i199_crit_edge: ; preds = %hantro_reg_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i199

hantro_reg_write.exit82.i.if.end32.i213_crit_edge: ; preds = %hantro_reg_write.exit82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i213

for.body24.i211:                                  ; preds = %hantro_reg_write.exit105.i.for.body24.i211_crit_edge, %if.else.i193.for.body24.i211_crit_edge
  %i.1198.i = phi i32 [ %inc30.i212, %hantro_reg_write.exit105.i.for.body24.i211_crit_edge ], [ 0, %if.else.i193.for.body24.i211_crit_edge ]
  %arrayidx25.i208 = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.1198.i
  %arrayidx27.i209 = getelementptr [4 x i8], ptr %call, i32 0, i32 %i.1198.i
  %184 = ptrtoint ptr %arrayidx27.i209 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx27.i209, align 1
  %conv28.i210 = sext i8 %185 to i32
  %186 = ptrtoint ptr %arrayidx25.i208 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx25.i208, align 4
  %188 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i.i84.i = getelementptr i8, ptr %189, i32 %187
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i84.i) #4, !srcloc !56
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %192 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i85.i = and i32 %192, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i85.i)
  %tobool.not.i.i.i86.i = icmp eq i32 %and.i.i.i85.i, 0
  br i1 %tobool.not.i.i.i86.i, label %for.body24.i211.vdpu_read_mask.exit.i100.i_crit_edge, label %do.end.i.i.i89.i

for.body24.i211.vdpu_read_mask.exit.i100.i_crit_edge: ; preds = %for.body24.i211
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i100.i

do.end.i.i.i89.i:                                 ; preds = %for.body24.i211
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i87.i = lshr i32 %187, 2
  %call4.i.i.i88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i87.i, i32 noundef %191) #7
  br label %vdpu_read_mask.exit.i100.i

vdpu_read_mask.exit.i100.i:                       ; preds = %do.end.i.i.i89.i, %for.body24.i211.vdpu_read_mask.exit.i100.i_crit_edge
  %mask.i.i90.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.1198.i, i32 2
  %193 = ptrtoint ptr %mask.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mask.i.i90.i, align 4
  %shift.i.i91.i = getelementptr [4 x %struct.hantro_reg], ptr @vp8_dec_quant, i32 0, i32 %i.1198.i, i32 1
  %195 = ptrtoint ptr %shift.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %shift.i.i91.i, align 4
  %shl.i.i92.i = shl i32 %194, %196
  %neg.i.i93.i = xor i32 %shl.i.i92.i, -1
  %and.i.i94.i = and i32 %191, %neg.i.i93.i
  %and2.i.i95.i = and i32 %194, %conv28.i210
  %shl4.i.i96.i = shl i32 %and2.i.i95.i, %196
  %or.i.i97.i = or i32 %and.i.i94.i, %shl4.i.i96.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %197 = load i32, ptr @hantro_debug, align 4
  %and.i3.i98.i = and i32 %197, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i98.i)
  %tobool.not.i.i99.i = icmp eq i32 %and.i3.i98.i, 0
  br i1 %tobool.not.i.i99.i, label %vdpu_read_mask.exit.i100.i.hantro_reg_write.exit105.i_crit_edge, label %do.end.i.i103.i

vdpu_read_mask.exit.i100.i.hantro_reg_write.exit105.i_crit_edge: ; preds = %vdpu_read_mask.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit105.i

do.end.i.i103.i:                                  ; preds = %vdpu_read_mask.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i101.i = lshr i32 %187, 2
  %call.i.i102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i101.i, i32 noundef %or.i.i97.i) #7
  br label %hantro_reg_write.exit105.i

hantro_reg_write.exit105.i:                       ; preds = %do.end.i.i103.i, %vdpu_read_mask.exit.i100.i.hantro_reg_write.exit105.i_crit_edge
  %198 = tail call i32 @llvm.bswap.i32(i32 %or.i.i97.i) #4
  %199 = ptrtoint ptr %dec_base.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dec_base.i.i.i83.i, align 8
  %add.ptr.i.i104.i = getelementptr i8, ptr %200, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104.i, i32 %198) #4, !srcloc !55
  %inc30.i212 = add nuw nsw i32 %i.1198.i, 1
  %exitcond200.not.i = icmp eq i32 %inc30.i212, 4
  br i1 %exitcond200.not.i, label %hantro_reg_write.exit105.i.if.end32.i213_crit_edge, label %hantro_reg_write.exit105.i.for.body24.i211_crit_edge

hantro_reg_write.exit105.i.for.body24.i211_crit_edge: ; preds = %hantro_reg_write.exit105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24.i211

hantro_reg_write.exit105.i.if.end32.i213_crit_edge: ; preds = %hantro_reg_write.exit105.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i213

if.end32.i213:                                    ; preds = %hantro_reg_write.exit105.i.if.end32.i213_crit_edge, %hantro_reg_write.exit82.i.if.end32.i213_crit_edge, %hantro_reg_write.exit.i192
  %y_dc_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 1
  %201 = ptrtoint ptr %y_dc_delta.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %y_dc_delta.i, align 1
  %dec_base.i.i.i106.i = getelementptr inbounds %struct.hantro_dev, ptr %149, i32 0, i32 11
  %203 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i107.i = getelementptr i8, ptr %204, i32 132
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i107.i) #4, !srcloc !56
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %207 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i108.i = and i32 %207, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i108.i)
  %tobool.not.i.i.i109.i = icmp eq i32 %and.i.i.i108.i, 0
  br i1 %tobool.not.i.i.i109.i, label %if.end32.i213.vdpu_read_mask.exit.i118.i_crit_edge, label %do.end.i.i.i111.i

if.end32.i213.vdpu_read_mask.exit.i118.i_crit_edge: ; preds = %if.end32.i213
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i118.i

do.end.i.i.i111.i:                                ; preds = %if.end32.i213
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 33, i32 noundef %206) #7
  br label %vdpu_read_mask.exit.i118.i

vdpu_read_mask.exit.i118.i:                       ; preds = %do.end.i.i.i111.i, %if.end32.i213.vdpu_read_mask.exit.i118.i_crit_edge
  %and.i.i112.i = and i32 %206, 134217727
  %208 = and i8 %202, 31
  %and2.i.i113.i = zext i8 %208 to i32
  %shl4.i.i114.i = shl nuw i32 %and2.i.i113.i, 27
  %or.i.i115.i = or i32 %and.i.i112.i, %shl4.i.i114.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %209 = load i32, ptr @hantro_debug, align 4
  %and.i3.i116.i = and i32 %209, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i116.i)
  %tobool.not.i.i117.i = icmp eq i32 %and.i3.i116.i, 0
  br i1 %tobool.not.i.i117.i, label %vdpu_read_mask.exit.i118.i.hantro_reg_write.exit122.i_crit_edge, label %do.end.i.i120.i

vdpu_read_mask.exit.i118.i.hantro_reg_write.exit122.i_crit_edge: ; preds = %vdpu_read_mask.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit122.i

do.end.i.i120.i:                                  ; preds = %vdpu_read_mask.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 33, i32 noundef %or.i.i115.i) #7
  br label %hantro_reg_write.exit122.i

hantro_reg_write.exit122.i:                       ; preds = %do.end.i.i120.i, %vdpu_read_mask.exit.i118.i.hantro_reg_write.exit122.i_crit_edge
  %210 = tail call i32 @llvm.bswap.i32(i32 %or.i.i115.i) #4
  %211 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i121.i = getelementptr i8, ptr %212, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121.i, i32 %210) #4, !srcloc !55
  %y2_dc_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 2
  %213 = ptrtoint ptr %y2_dc_delta.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %y2_dc_delta.i, align 2
  %215 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i124.i = getelementptr i8, ptr %216, i32 132
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i124.i) #4, !srcloc !56
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %219 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i125.i = and i32 %219, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i125.i)
  %tobool.not.i.i.i126.i = icmp eq i32 %and.i.i.i125.i, 0
  br i1 %tobool.not.i.i.i126.i, label %hantro_reg_write.exit122.i.vdpu_read_mask.exit.i135.i_crit_edge, label %do.end.i.i.i128.i

hantro_reg_write.exit122.i.vdpu_read_mask.exit.i135.i_crit_edge: ; preds = %hantro_reg_write.exit122.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i135.i

do.end.i.i.i128.i:                                ; preds = %hantro_reg_write.exit122.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 33, i32 noundef %218) #7
  br label %vdpu_read_mask.exit.i135.i

vdpu_read_mask.exit.i135.i:                       ; preds = %do.end.i.i.i128.i, %hantro_reg_write.exit122.i.vdpu_read_mask.exit.i135.i_crit_edge
  %and.i.i129.i = and i32 %218, -130023425
  %220 = and i8 %214, 31
  %and2.i.i130.i = zext i8 %220 to i32
  %shl4.i.i131.i = shl nuw nsw i32 %and2.i.i130.i, 22
  %or.i.i132.i = or i32 %and.i.i129.i, %shl4.i.i131.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %221 = load i32, ptr @hantro_debug, align 4
  %and.i3.i133.i = and i32 %221, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i133.i)
  %tobool.not.i.i134.i = icmp eq i32 %and.i3.i133.i, 0
  br i1 %tobool.not.i.i134.i, label %vdpu_read_mask.exit.i135.i.hantro_reg_write.exit139.i_crit_edge, label %do.end.i.i137.i

vdpu_read_mask.exit.i135.i.hantro_reg_write.exit139.i_crit_edge: ; preds = %vdpu_read_mask.exit.i135.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit139.i

do.end.i.i137.i:                                  ; preds = %vdpu_read_mask.exit.i135.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 33, i32 noundef %or.i.i132.i) #7
  br label %hantro_reg_write.exit139.i

hantro_reg_write.exit139.i:                       ; preds = %do.end.i.i137.i, %vdpu_read_mask.exit.i135.i.hantro_reg_write.exit139.i_crit_edge
  %222 = tail call i32 @llvm.bswap.i32(i32 %or.i.i132.i) #4
  %223 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i138.i = getelementptr i8, ptr %224, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138.i, i32 %222) #4, !srcloc !55
  %y2_ac_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 3
  %225 = ptrtoint ptr %y2_ac_delta.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %y2_ac_delta.i, align 1
  %227 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i141.i = getelementptr i8, ptr %228, i32 184
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i141.i) #4, !srcloc !56
  %230 = tail call i32 @llvm.bswap.i32(i32 %229) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %231 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i142.i = and i32 %231, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i142.i)
  %tobool.not.i.i.i143.i = icmp eq i32 %and.i.i.i142.i, 0
  br i1 %tobool.not.i.i.i143.i, label %hantro_reg_write.exit139.i.vdpu_read_mask.exit.i152.i_crit_edge, label %do.end.i.i.i145.i

hantro_reg_write.exit139.i.vdpu_read_mask.exit.i152.i_crit_edge: ; preds = %hantro_reg_write.exit139.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i152.i

do.end.i.i.i145.i:                                ; preds = %hantro_reg_write.exit139.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 46, i32 noundef %230) #7
  br label %vdpu_read_mask.exit.i152.i

vdpu_read_mask.exit.i152.i:                       ; preds = %do.end.i.i.i145.i, %hantro_reg_write.exit139.i.vdpu_read_mask.exit.i152.i_crit_edge
  %and.i.i146.i = and i32 %230, 134217727
  %232 = and i8 %226, 31
  %and2.i.i147.i = zext i8 %232 to i32
  %shl4.i.i148.i = shl nuw i32 %and2.i.i147.i, 27
  %or.i.i149.i = or i32 %and.i.i146.i, %shl4.i.i148.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %233 = load i32, ptr @hantro_debug, align 4
  %and.i3.i150.i = and i32 %233, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i150.i)
  %tobool.not.i.i151.i = icmp eq i32 %and.i3.i150.i, 0
  br i1 %tobool.not.i.i151.i, label %vdpu_read_mask.exit.i152.i.hantro_reg_write.exit156.i_crit_edge, label %do.end.i.i154.i

vdpu_read_mask.exit.i152.i.hantro_reg_write.exit156.i_crit_edge: ; preds = %vdpu_read_mask.exit.i152.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit156.i

do.end.i.i154.i:                                  ; preds = %vdpu_read_mask.exit.i152.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i153.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 46, i32 noundef %or.i.i149.i) #7
  br label %hantro_reg_write.exit156.i

hantro_reg_write.exit156.i:                       ; preds = %do.end.i.i154.i, %vdpu_read_mask.exit.i152.i.hantro_reg_write.exit156.i_crit_edge
  %234 = tail call i32 @llvm.bswap.i32(i32 %or.i.i149.i) #4
  %235 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i155.i = getelementptr i8, ptr %236, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155.i, i32 %234) #4, !srcloc !55
  %uv_dc_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 4
  %237 = ptrtoint ptr %uv_dc_delta.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %uv_dc_delta.i, align 2
  %239 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i158.i = getelementptr i8, ptr %240, i32 184
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i158.i) #4, !srcloc !56
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %243 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i159.i = and i32 %243, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i159.i)
  %tobool.not.i.i.i160.i = icmp eq i32 %and.i.i.i159.i, 0
  br i1 %tobool.not.i.i.i160.i, label %hantro_reg_write.exit156.i.vdpu_read_mask.exit.i169.i_crit_edge, label %do.end.i.i.i162.i

hantro_reg_write.exit156.i.vdpu_read_mask.exit.i169.i_crit_edge: ; preds = %hantro_reg_write.exit156.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i169.i

do.end.i.i.i162.i:                                ; preds = %hantro_reg_write.exit156.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 46, i32 noundef %242) #7
  br label %vdpu_read_mask.exit.i169.i

vdpu_read_mask.exit.i169.i:                       ; preds = %do.end.i.i.i162.i, %hantro_reg_write.exit156.i.vdpu_read_mask.exit.i169.i_crit_edge
  %and.i.i163.i = and i32 %242, -130023425
  %244 = and i8 %238, 31
  %and2.i.i164.i = zext i8 %244 to i32
  %shl4.i.i165.i = shl nuw nsw i32 %and2.i.i164.i, 22
  %or.i.i166.i = or i32 %and.i.i163.i, %shl4.i.i165.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %245 = load i32, ptr @hantro_debug, align 4
  %and.i3.i167.i = and i32 %245, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i167.i)
  %tobool.not.i.i168.i = icmp eq i32 %and.i3.i167.i, 0
  br i1 %tobool.not.i.i168.i, label %vdpu_read_mask.exit.i169.i.hantro_reg_write.exit173.i_crit_edge, label %do.end.i.i171.i

vdpu_read_mask.exit.i169.i.hantro_reg_write.exit173.i_crit_edge: ; preds = %vdpu_read_mask.exit.i169.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit173.i

do.end.i.i171.i:                                  ; preds = %vdpu_read_mask.exit.i169.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 46, i32 noundef %or.i.i166.i) #7
  br label %hantro_reg_write.exit173.i

hantro_reg_write.exit173.i:                       ; preds = %do.end.i.i171.i, %vdpu_read_mask.exit.i169.i.hantro_reg_write.exit173.i_crit_edge
  %246 = tail call i32 @llvm.bswap.i32(i32 %or.i.i166.i) #4
  %247 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i172.i = getelementptr i8, ptr %248, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172.i, i32 %246) #4, !srcloc !55
  %uv_ac_delta.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 2, i32 5
  %249 = ptrtoint ptr %uv_ac_delta.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %uv_ac_delta.i, align 1
  %251 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i.i175.i = getelementptr i8, ptr %252, i32 188
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i175.i) #4, !srcloc !56
  %254 = tail call i32 @llvm.bswap.i32(i32 %253) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %255 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i176.i = and i32 %255, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i176.i)
  %tobool.not.i.i.i177.i = icmp eq i32 %and.i.i.i176.i, 0
  br i1 %tobool.not.i.i.i177.i, label %hantro_reg_write.exit173.i.vdpu_read_mask.exit.i186.i_crit_edge, label %do.end.i.i.i179.i

hantro_reg_write.exit173.i.vdpu_read_mask.exit.i186.i_crit_edge: ; preds = %hantro_reg_write.exit173.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i186.i

do.end.i.i.i179.i:                                ; preds = %hantro_reg_write.exit173.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i178.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 47, i32 noundef %254) #7
  br label %vdpu_read_mask.exit.i186.i

vdpu_read_mask.exit.i186.i:                       ; preds = %do.end.i.i.i179.i, %hantro_reg_write.exit173.i.vdpu_read_mask.exit.i186.i_crit_edge
  %and.i.i180.i = and i32 %254, 134217727
  %256 = and i8 %250, 31
  %and2.i.i181.i = zext i8 %256 to i32
  %shl4.i.i182.i = shl nuw i32 %and2.i.i181.i, 27
  %or.i.i183.i = or i32 %and.i.i180.i, %shl4.i.i182.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %257 = load i32, ptr @hantro_debug, align 4
  %and.i3.i184.i = and i32 %257, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i184.i)
  %tobool.not.i.i185.i = icmp eq i32 %and.i3.i184.i, 0
  br i1 %tobool.not.i.i185.i, label %vdpu_read_mask.exit.i186.i.cfg_qp.exit_crit_edge, label %do.end.i.i188.i

vdpu_read_mask.exit.i186.i.cfg_qp.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i186.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_qp.exit

do.end.i.i188.i:                                  ; preds = %vdpu_read_mask.exit.i186.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i187.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 47, i32 noundef %or.i.i183.i) #7
  br label %cfg_qp.exit

cfg_qp.exit:                                      ; preds = %do.end.i.i188.i, %vdpu_read_mask.exit.i186.i.cfg_qp.exit_crit_edge
  %258 = tail call i32 @llvm.bswap.i32(i32 %or.i.i183.i) #4
  %259 = ptrtoint ptr %dec_base.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dec_base.i.i.i106.i, align 8
  %add.ptr.i.i189.i = getelementptr i8, ptr %260, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i189.i, i32 %258) #4, !srcloc !55
  %261 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ctx, align 8
  %263 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %flags, align 8
  %and.i215 = and i64 %264, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i215)
  %tobool.not.i216 = icmp eq i64 %and.i215, 0
  %cond.i = select i1 %tobool.not.i216, i32 3, i32 10
  %m2m_ctx.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %265 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %m2m_ctx.i.i, align 4
  %out_q_ctx.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %266, i32 0, i32 8
  %call.i.i.i217 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i.i) #4
  %call.i.i218 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i.i217, i32 noundef 0) #4
  %267 = ptrtoint ptr %call.i.i218 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %call.i.i218, align 4
  %mul.i = shl nuw nsw i32 %cond.i, 3
  %first_part_header_bits.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 16
  %269 = ptrtoint ptr %first_part_header_bits.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %first_part_header_bits.i, align 4
  %add.i219 = add nuw nsw i32 %mul.i, 8
  %add3.i = add i32 %add.i219, %270
  %div91.i = lshr i32 %add3.i, 3
  %and4.i = and i32 %div91.i, 536870904
  %first_part_size.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 15
  %271 = ptrtoint ptr %first_part_size.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %first_part_size.i, align 8
  %and8.i = and i32 %div91.i, 7
  %add11.i = add i32 %and4.i, %268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %273 = load i32, ptr @hantro_debug, align 4
  %and.i.i220 = and i32 %273, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i220)
  %tobool.not.i.i221 = icmp eq i32 %and.i.i220, 0
  br i1 %tobool.not.i.i221, label %cfg_qp.exit.vdpu_write_relaxed.exit.i228_crit_edge, label %do.end.i.i222

cfg_qp.exit.vdpu_write_relaxed.exit.i228_crit_edge: ; preds = %cfg_qp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i228

do.end.i.i222:                                    ; preds = %cfg_qp.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 27, i32 noundef %add11.i) #7
  br label %vdpu_write_relaxed.exit.i228

vdpu_write_relaxed.exit.i228:                     ; preds = %do.end.i.i222, %cfg_qp.exit.vdpu_write_relaxed.exit.i228_crit_edge
  %274 = tail call i32 @llvm.bswap.i32(i32 %add11.i) #4
  %dec_base.i.i223 = getelementptr inbounds %struct.hantro_dev, ptr %262, i32 0, i32 11
  %275 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i224 = getelementptr i8, ptr %276, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i224, i32 %274) #4, !srcloc !55
  %277 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i.i.i225 = getelementptr i8, ptr %278, i32 20
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i225) #4, !srcloc !56
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %281 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i226 = and i32 %281, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i226)
  %tobool.not.i.i.i.i227 = icmp eq i32 %and.i.i.i.i226, 0
  br i1 %tobool.not.i.i.i.i227, label %vdpu_write_relaxed.exit.i228.vdpu_read_mask.exit.i.i237_crit_edge, label %do.end.i.i.i.i230

vdpu_write_relaxed.exit.i228.vdpu_read_mask.exit.i.i237_crit_edge: ; preds = %vdpu_write_relaxed.exit.i228
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i237

do.end.i.i.i.i230:                                ; preds = %vdpu_write_relaxed.exit.i228
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i.i229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 5, i32 noundef %280) #7
  br label %vdpu_read_mask.exit.i.i237

vdpu_read_mask.exit.i.i237:                       ; preds = %do.end.i.i.i.i230, %vdpu_write_relaxed.exit.i228.vdpu_read_mask.exit.i.i237_crit_edge
  %and.i.i.i231 = and i32 %280, -16515073
  %and2.i.i.i232 = shl i32 %add3.i, 18
  %shl4.i.i.i233 = and i32 %and2.i.i.i232, 16515072
  %or.i.i.i234 = or i32 %and.i.i.i231, %shl4.i.i.i233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %282 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i235 = and i32 %282, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i235)
  %tobool.not.i.i.i236 = icmp eq i32 %and.i3.i.i235, 0
  br i1 %tobool.not.i.i.i236, label %vdpu_read_mask.exit.i.i237.hantro_reg_write.exit.i240_crit_edge, label %do.end.i.i.i238

vdpu_read_mask.exit.i.i237.hantro_reg_write.exit.i240_crit_edge: ; preds = %vdpu_read_mask.exit.i.i237
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i240

do.end.i.i.i238:                                  ; preds = %vdpu_read_mask.exit.i.i237
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 5, i32 noundef %or.i.i.i234) #7
  br label %hantro_reg_write.exit.i240

hantro_reg_write.exit.i240:                       ; preds = %do.end.i.i.i238, %vdpu_read_mask.exit.i.i237.hantro_reg_write.exit.i240_crit_edge
  %283 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i234) #4
  %284 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i.i239 = getelementptr i8, ptr %285, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i239, i32 %283) #4, !srcloc !55
  %sub6.neg.i = add nuw nsw i32 %cond.i, 1
  %sub7.i = add i32 %sub6.neg.i, %272
  %add9.i = sub i32 %sub7.i, %div91.i
  %add15.i = add i32 %add9.i, %and8.i
  %286 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i.i95.i = getelementptr i8, ptr %287, i32 36
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i95.i) #4, !srcloc !56
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %290 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i96.i = and i32 %290, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i96.i)
  %tobool.not.i.i.i97.i = icmp eq i32 %and.i.i.i96.i, 0
  br i1 %tobool.not.i.i.i97.i, label %hantro_reg_write.exit.i240.vdpu_read_mask.exit.i111.i_crit_edge, label %do.end.i.i.i100.i

hantro_reg_write.exit.i240.vdpu_read_mask.exit.i111.i_crit_edge: ; preds = %hantro_reg_write.exit.i240
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i111.i

do.end.i.i.i100.i:                                ; preds = %hantro_reg_write.exit.i240
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 9, i32 noundef %289) #7
  br label %vdpu_read_mask.exit.i111.i

vdpu_read_mask.exit.i111.i:                       ; preds = %do.end.i.i.i100.i, %hantro_reg_write.exit.i240.vdpu_read_mask.exit.i111.i_crit_edge
  %and.i.i105.i = and i32 %289, -4194304
  %and2.i.i106.i = and i32 %add15.i, 4194303
  %or.i.i108.i = or i32 %and.i.i105.i, %and2.i.i106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %291 = load i32, ptr @hantro_debug, align 4
  %and.i3.i109.i = and i32 %291, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i109.i)
  %tobool.not.i.i110.i = icmp eq i32 %and.i3.i109.i, 0
  br i1 %tobool.not.i.i110.i, label %vdpu_read_mask.exit.i111.i.hantro_reg_write.exit116.i_crit_edge, label %do.end.i.i114.i

vdpu_read_mask.exit.i111.i.hantro_reg_write.exit116.i_crit_edge: ; preds = %vdpu_read_mask.exit.i111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit116.i

do.end.i.i114.i:                                  ; preds = %vdpu_read_mask.exit.i111.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, i32 noundef %or.i.i108.i) #7
  br label %hantro_reg_write.exit116.i

hantro_reg_write.exit116.i:                       ; preds = %do.end.i.i114.i, %vdpu_read_mask.exit.i111.i.hantro_reg_write.exit116.i_crit_edge
  %292 = tail call i32 @llvm.bswap.i32(i32 %or.i.i108.i) #4
  %293 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i115.i = getelementptr i8, ptr %294, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i115.i, i32 %292) #4, !srcloc !55
  %num_dct_parts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 14
  %295 = ptrtoint ptr %num_dct_parts.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %num_dct_parts.i, align 1
  %conv.i241 = zext i8 %296 to i32
  %297 = mul nuw nsw i32 %conv.i241, 3
  %mul17.i = add nsw i32 %297, -3
  %298 = ptrtoint ptr %first_part_size.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %first_part_size.i, align 8
  %add19.i = add i32 %299, %cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %cmp202.not.i = icmp eq i8 %296, 0
  br i1 %cmp202.not.i, label %hantro_reg_write.exit116.i.for.end.i_crit_edge, label %hantro_reg_write.exit116.i.for.body.i245_crit_edge

hantro_reg_write.exit116.i.for.body.i245_crit_edge: ; preds = %hantro_reg_write.exit116.i
  br label %for.body.i245

hantro_reg_write.exit116.i.for.end.i_crit_edge:   ; preds = %hantro_reg_write.exit116.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i245:                                    ; preds = %for.body.i245.for.body.i245_crit_edge, %hantro_reg_write.exit116.i.for.body.i245_crit_edge
  %i.0204.i = phi i32 [ %inc.i243, %for.body.i245.for.body.i245_crit_edge ], [ 0, %hantro_reg_write.exit116.i.for.body.i245_crit_edge ]
  %dct_part_total_len.0203.i = phi i32 [ %add23.i, %for.body.i245.for.body.i245_crit_edge ], [ 0, %hantro_reg_write.exit116.i.for.body.i245_crit_edge ]
  %arrayidx.i242 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 17, i32 %i.0204.i
  %300 = ptrtoint ptr %arrayidx.i242 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx.i242, align 4
  %add23.i = add i32 %301, %dct_part_total_len.0203.i
  %inc.i243 = add nuw nsw i32 %i.0204.i, 1
  %exitcond.not.i244 = icmp eq i32 %inc.i243, %conv.i241
  br i1 %exitcond.not.i244, label %for.body.i245.for.end.i_crit_edge, label %for.body.i245.for.body.i245_crit_edge

for.body.i245.for.body.i245_crit_edge:            ; preds = %for.body.i245
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i245

for.body.i245.for.end.i_crit_edge:                ; preds = %for.body.i245
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i245.for.end.i_crit_edge, %hantro_reg_write.exit116.i.for.end.i_crit_edge
  %dct_part_total_len.0.lcssa.i = phi i32 [ 0, %hantro_reg_write.exit116.i.for.end.i_crit_edge ], [ %add23.i, %for.body.i245.for.end.i_crit_edge ]
  %and25.i = and i32 %add19.i, 7
  %add24.i = add nsw i32 %and25.i, %mul17.i
  %add26.i = add i32 %add24.i, %dct_part_total_len.0.lcssa.i
  %302 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i.i118.i = getelementptr i8, ptr %303, i32 36
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i118.i) #4, !srcloc !56
  %305 = tail call i32 @llvm.bswap.i32(i32 %304) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %306 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i119.i = and i32 %306, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i119.i)
  %tobool.not.i.i.i120.i = icmp eq i32 %and.i.i.i119.i, 0
  br i1 %tobool.not.i.i.i120.i, label %for.end.i.vdpu_read_mask.exit.i134.i_crit_edge, label %do.end.i.i.i123.i

for.end.i.vdpu_read_mask.exit.i134.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i134.i

do.end.i.i.i123.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 9, i32 noundef %305) #7
  br label %vdpu_read_mask.exit.i134.i

vdpu_read_mask.exit.i134.i:                       ; preds = %do.end.i.i.i123.i, %for.end.i.vdpu_read_mask.exit.i134.i_crit_edge
  %and.i.i128.i = and i32 %305, -251658241
  %sub32.i = shl nuw i32 %conv.i241, 24
  %and2.i.i129.i = add i32 %sub32.i, 251658240
  %shl4.i.i130.i = and i32 %and2.i.i129.i, 251658240
  %or.i.i131.i = or i32 %and.i.i128.i, %shl4.i.i130.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %307 = load i32, ptr @hantro_debug, align 4
  %and.i3.i132.i = and i32 %307, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i132.i)
  %tobool.not.i.i133.i = icmp eq i32 %and.i3.i132.i, 0
  br i1 %tobool.not.i.i133.i, label %vdpu_read_mask.exit.i134.i.hantro_reg_write.exit139.i249_crit_edge, label %do.end.i.i137.i247

vdpu_read_mask.exit.i134.i.hantro_reg_write.exit139.i249_crit_edge: ; preds = %vdpu_read_mask.exit.i134.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit139.i249

do.end.i.i137.i247:                               ; preds = %vdpu_read_mask.exit.i134.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i136.i246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, i32 noundef %or.i.i131.i) #7
  br label %hantro_reg_write.exit139.i249

hantro_reg_write.exit139.i249:                    ; preds = %do.end.i.i137.i247, %vdpu_read_mask.exit.i134.i.hantro_reg_write.exit139.i249_crit_edge
  %308 = tail call i32 @llvm.bswap.i32(i32 %or.i.i131.i) #4
  %309 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i138.i248 = getelementptr i8, ptr %310, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138.i248, i32 %308) #4, !srcloc !55
  %and33.i = and i32 %add26.i, 16777215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %311 = load i32, ptr @hantro_debug, align 4
  %and.i140.i = and i32 %311, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140.i)
  %tobool.not.i141.i = icmp eq i32 %and.i140.i, 0
  br i1 %tobool.not.i141.i, label %hantro_reg_write.exit139.i249.vdpu_write_relaxed.exit146.i_crit_edge, label %do.end.i143.i

hantro_reg_write.exit139.i249.vdpu_write_relaxed.exit146.i_crit_edge: ; preds = %hantro_reg_write.exit139.i249
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit146.i

do.end.i143.i:                                    ; preds = %hantro_reg_write.exit139.i249
  call void @__sanitizer_cov_trace_pc() #6
  %call.i142.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 6, i32 noundef %and33.i) #7
  br label %vdpu_write_relaxed.exit146.i

vdpu_write_relaxed.exit146.i:                     ; preds = %do.end.i143.i, %hantro_reg_write.exit139.i249.vdpu_write_relaxed.exit146.i_crit_edge
  %312 = tail call i32 @llvm.bswap.i32(i32 %and33.i) #4
  %313 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i145.i = getelementptr i8, ptr %314, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 %312) #4, !srcloc !55
  %315 = ptrtoint ptr %num_dct_parts.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %num_dct_parts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %cmp37206.not.i = icmp eq i8 %316, 0
  br i1 %cmp37206.not.i, label %vdpu_write_relaxed.exit146.i.cfg_parts.exit_crit_edge, label %for.body39.lr.ph.i

vdpu_write_relaxed.exit146.i.cfg_parts.exit_crit_edge: ; preds = %vdpu_write_relaxed.exit146.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_parts.exit

for.body39.lr.ph.i:                               ; preds = %vdpu_write_relaxed.exit146.i
  %add40.i = add i32 %mul17.i, %add19.i
  br label %for.body39.i

for.body39.i:                                     ; preds = %hantro_reg_write.exit192.i.for.body39.i_crit_edge, %for.body39.lr.ph.i
  %i.1208.i = phi i32 [ 0, %for.body39.lr.ph.i ], [ %inc52.i, %hantro_reg_write.exit192.i.for.body39.i_crit_edge ]
  %count.0207.i = phi i32 [ 0, %for.body39.lr.ph.i ], [ %add50.i, %hantro_reg_write.exit192.i.for.body39.i_crit_edge ]
  %add41.i = add i32 %add40.i, %count.0207.i
  %add42.i = add i32 %add41.i, %268
  %arrayidx43.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_base, i32 0, i32 %i.1208.i
  %and44.i = and i32 %add42.i, -8
  %317 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx43.i, align 4
  %319 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i.i148.i = getelementptr i8, ptr %320, i32 %318
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i148.i) #4, !srcloc !56
  %322 = tail call i32 @llvm.bswap.i32(i32 %321) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %323 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i149.i = and i32 %323, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i149.i)
  %tobool.not.i.i.i150.i = icmp eq i32 %and.i.i.i149.i, 0
  br i1 %tobool.not.i.i.i150.i, label %for.body39.i.vdpu_read_mask.exit.i164.i_crit_edge, label %do.end.i.i.i153.i

for.body39.i.vdpu_read_mask.exit.i164.i_crit_edge: ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i164.i

do.end.i.i.i153.i:                                ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i151.i = lshr i32 %318, 2
  %call4.i.i.i152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i151.i, i32 noundef %322) #7
  br label %vdpu_read_mask.exit.i164.i

vdpu_read_mask.exit.i164.i:                       ; preds = %do.end.i.i.i153.i, %for.body39.i.vdpu_read_mask.exit.i164.i_crit_edge
  %mask.i.i154.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_base, i32 0, i32 %i.1208.i, i32 2
  %324 = ptrtoint ptr %mask.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %mask.i.i154.i, align 4
  %shift.i.i155.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_base, i32 0, i32 %i.1208.i, i32 1
  %326 = ptrtoint ptr %shift.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %shift.i.i155.i, align 4
  %shl.i.i156.i = shl i32 %325, %327
  %neg.i.i157.i = xor i32 %shl.i.i156.i, -1
  %and.i.i158.i = and i32 %322, %neg.i.i157.i
  %and2.i.i159.i = and i32 %and44.i, %325
  %shl4.i.i160.i = shl i32 %and2.i.i159.i, %327
  %or.i.i161.i = or i32 %and.i.i158.i, %shl4.i.i160.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %328 = load i32, ptr @hantro_debug, align 4
  %and.i3.i162.i = and i32 %328, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i162.i)
  %tobool.not.i.i163.i = icmp eq i32 %and.i3.i162.i, 0
  br i1 %tobool.not.i.i163.i, label %vdpu_read_mask.exit.i164.i.hantro_reg_write.exit169.i_crit_edge, label %do.end.i.i167.i

vdpu_read_mask.exit.i164.i.hantro_reg_write.exit169.i_crit_edge: ; preds = %vdpu_read_mask.exit.i164.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit169.i

do.end.i.i167.i:                                  ; preds = %vdpu_read_mask.exit.i164.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i165.i = lshr i32 %318, 2
  %call.i.i166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i165.i, i32 noundef %or.i.i161.i) #7
  br label %hantro_reg_write.exit169.i

hantro_reg_write.exit169.i:                       ; preds = %do.end.i.i167.i, %vdpu_read_mask.exit.i164.i.hantro_reg_write.exit169.i_crit_edge
  %329 = tail call i32 @llvm.bswap.i32(i32 %or.i.i161.i) #4
  %330 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i168.i = getelementptr i8, ptr %331, i32 %318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168.i, i32 %329) #4, !srcloc !55
  %arrayidx45.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_start_bits, i32 0, i32 %i.1208.i
  %and46.i = shl i32 %add41.i, 3
  %mul47.i = and i32 %and46.i, 56
  %332 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx45.i, align 4
  %334 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i.i171.i = getelementptr i8, ptr %335, i32 %333
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i171.i) #4, !srcloc !56
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %338 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i172.i = and i32 %338, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i172.i)
  %tobool.not.i.i.i173.i = icmp eq i32 %and.i.i.i172.i, 0
  br i1 %tobool.not.i.i.i173.i, label %hantro_reg_write.exit169.i.vdpu_read_mask.exit.i187.i_crit_edge, label %do.end.i.i.i176.i

hantro_reg_write.exit169.i.vdpu_read_mask.exit.i187.i_crit_edge: ; preds = %hantro_reg_write.exit169.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i187.i

do.end.i.i.i176.i:                                ; preds = %hantro_reg_write.exit169.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i174.i = lshr i32 %333, 2
  %call4.i.i.i175.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i174.i, i32 noundef %337) #7
  br label %vdpu_read_mask.exit.i187.i

vdpu_read_mask.exit.i187.i:                       ; preds = %do.end.i.i.i176.i, %hantro_reg_write.exit169.i.vdpu_read_mask.exit.i187.i_crit_edge
  %mask.i.i177.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_start_bits, i32 0, i32 %i.1208.i, i32 2
  %339 = ptrtoint ptr %mask.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %mask.i.i177.i, align 4
  %shift.i.i178.i = getelementptr [8 x %struct.hantro_reg], ptr @vp8_dec_dct_start_bits, i32 0, i32 %i.1208.i, i32 1
  %341 = ptrtoint ptr %shift.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %shift.i.i178.i, align 4
  %shl.i.i179.i = shl i32 %340, %342
  %neg.i.i180.i = xor i32 %shl.i.i179.i, -1
  %and.i.i181.i = and i32 %337, %neg.i.i180.i
  %and2.i.i182.i = and i32 %mul47.i, %340
  %shl4.i.i183.i = shl i32 %and2.i.i182.i, %342
  %or.i.i184.i = or i32 %and.i.i181.i, %shl4.i.i183.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %343 = load i32, ptr @hantro_debug, align 4
  %and.i3.i185.i = and i32 %343, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i185.i)
  %tobool.not.i.i186.i = icmp eq i32 %and.i3.i185.i, 0
  br i1 %tobool.not.i.i186.i, label %vdpu_read_mask.exit.i187.i.hantro_reg_write.exit192.i_crit_edge, label %do.end.i.i190.i

vdpu_read_mask.exit.i187.i.hantro_reg_write.exit192.i_crit_edge: ; preds = %vdpu_read_mask.exit.i187.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit192.i

do.end.i.i190.i:                                  ; preds = %vdpu_read_mask.exit.i187.i
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i188.i = lshr i32 %333, 2
  %call.i.i189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i188.i, i32 noundef %or.i.i184.i) #7
  br label %hantro_reg_write.exit192.i

hantro_reg_write.exit192.i:                       ; preds = %do.end.i.i190.i, %vdpu_read_mask.exit.i187.i.hantro_reg_write.exit192.i_crit_edge
  %344 = tail call i32 @llvm.bswap.i32(i32 %or.i.i184.i) #4
  %345 = ptrtoint ptr %dec_base.i.i223 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %dec_base.i.i223, align 8
  %add.ptr.i.i191.i = getelementptr i8, ptr %346, i32 %333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i191.i, i32 %344) #4, !srcloc !55
  %arrayidx49.i250 = getelementptr %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 17, i32 %i.1208.i
  %347 = ptrtoint ptr %arrayidx49.i250 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %arrayidx49.i250, align 4
  %add50.i = add i32 %348, %count.0207.i
  %inc52.i = add nuw nsw i32 %i.1208.i, 1
  %349 = ptrtoint ptr %num_dct_parts.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %num_dct_parts.i, align 1
  %conv36.i = zext i8 %350 to i32
  %cmp37.i = icmp ult i32 %inc52.i, %conv36.i
  br i1 %cmp37.i, label %hantro_reg_write.exit192.i.for.body39.i_crit_edge, label %hantro_reg_write.exit192.i.cfg_parts.exit_crit_edge

hantro_reg_write.exit192.i.cfg_parts.exit_crit_edge: ; preds = %hantro_reg_write.exit192.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_parts.exit

hantro_reg_write.exit192.i.for.body39.i_crit_edge: ; preds = %hantro_reg_write.exit192.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body39.i

cfg_parts.exit:                                   ; preds = %hantro_reg_write.exit192.i.cfg_parts.exit_crit_edge, %vdpu_write_relaxed.exit146.i.cfg_parts.exit_crit_edge
  %351 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %version, align 2
  %353 = and i8 %352, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %cmp.not.i = icmp eq i8 %353, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i252, label %cfg_parts.exit.cfg_tap.exit_crit_edge

cfg_parts.exit.cfg_tap.exit_crit_edge:            ; preds = %cfg_parts.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_tap.exit

for.cond.preheader.i252:                          ; preds = %cfg_parts.exit
  %354 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i.i251 = getelementptr inbounds %struct.hantro_dev, ptr %355, i32 0, i32 11
  br label %for.body.i254

for.body.i254:                                    ; preds = %for.inc19.i.for.body.i254_crit_edge, %for.cond.preheader.i252
  %i.061.i = phi i32 [ 0, %for.cond.preheader.i252 ], [ %inc20.i, %for.inc19.i.for.body.i254_crit_edge ]
  %arrayidx.i253 = getelementptr [8 x [6 x i32]], ptr @hantro_vp8_dec_mc_filter, i32 0, i32 %i.061.i
  %356 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx.i253, align 4
  %arrayidx6.i = getelementptr [8 x [6 x i32]], ptr @hantro_vp8_dec_mc_filter, i32 0, i32 %i.061.i, i32 5
  %358 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx6.i, align 4
  br label %for.body10.i

for.body10.i:                                     ; preds = %hantro_reg_write.exit.i278.for.body10.i_crit_edge, %for.body.i254
  %j.060.i = phi i32 [ 0, %for.body.i254 ], [ %add.i255, %hantro_reg_write.exit.i278.for.body10.i_crit_edge ]
  %arrayidx12.i = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @vp8_dec_pred_bc_tap, i32 0, i32 %i.061.i, i32 %j.060.i
  %add.i255 = add nuw nsw i32 %j.060.i, 1
  %arrayidx14.i = getelementptr [8 x [6 x i32]], ptr @hantro_vp8_dec_mc_filter, i32 0, i32 %i.061.i, i32 %add.i255
  %360 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx14.i, align 4
  %362 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx12.i, align 4
  %364 = ptrtoint ptr %dec_base.i.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dec_base.i.i.i.i251, align 8
  %add.ptr.i.i.i.i256 = getelementptr i8, ptr %365, i32 %363
  %366 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i256) #4, !srcloc !56
  %367 = tail call i32 @llvm.bswap.i32(i32 %366) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %368 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i.i257 = and i32 %368, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i257)
  %tobool.not.i.i.i.i258 = icmp eq i32 %and.i.i.i.i257, 0
  br i1 %tobool.not.i.i.i.i258, label %for.body10.i.vdpu_read_mask.exit.i.i272_crit_edge, label %do.end.i.i.i.i261

for.body10.i.vdpu_read_mask.exit.i.i272_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i.i272

do.end.i.i.i.i261:                                ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #6
  %div9.i.i.i.i259 = lshr i32 %363, 2
  %call4.i.i.i.i260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef %div9.i.i.i.i259, i32 noundef %367) #7
  br label %vdpu_read_mask.exit.i.i272

vdpu_read_mask.exit.i.i272:                       ; preds = %do.end.i.i.i.i261, %for.body10.i.vdpu_read_mask.exit.i.i272_crit_edge
  %mask.i.i.i262 = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @vp8_dec_pred_bc_tap, i32 0, i32 %i.061.i, i32 %j.060.i, i32 2
  %369 = ptrtoint ptr %mask.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %mask.i.i.i262, align 4
  %shift.i.i.i263 = getelementptr [8 x [4 x %struct.hantro_reg]], ptr @vp8_dec_pred_bc_tap, i32 0, i32 %i.061.i, i32 %j.060.i, i32 1
  %371 = ptrtoint ptr %shift.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %shift.i.i.i263, align 4
  %shl.i.i.i264 = shl i32 %370, %372
  %neg.i.i.i265 = xor i32 %shl.i.i.i264, -1
  %and.i.i.i266 = and i32 %367, %neg.i.i.i265
  %and2.i.i.i267 = and i32 %370, %361
  %shl4.i.i.i268 = shl i32 %and2.i.i.i267, %372
  %or.i.i.i269 = or i32 %and.i.i.i266, %shl4.i.i.i268
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %373 = load i32, ptr @hantro_debug, align 4
  %and.i3.i.i270 = and i32 %373, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i270)
  %tobool.not.i.i.i271 = icmp eq i32 %and.i3.i.i270, 0
  br i1 %tobool.not.i.i.i271, label %vdpu_read_mask.exit.i.i272.hantro_reg_write.exit.i278_crit_edge, label %do.end.i.i.i275

vdpu_read_mask.exit.i.i272.hantro_reg_write.exit.i278_crit_edge: ; preds = %vdpu_read_mask.exit.i.i272
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit.i278

do.end.i.i.i275:                                  ; preds = %vdpu_read_mask.exit.i.i272
  call void @__sanitizer_cov_trace_pc() #6
  %div5.i.i.i273 = lshr i32 %363, 2
  %call.i.i.i274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef %div5.i.i.i273, i32 noundef %or.i.i.i269) #7
  br label %hantro_reg_write.exit.i278

hantro_reg_write.exit.i278:                       ; preds = %do.end.i.i.i275, %vdpu_read_mask.exit.i.i272.hantro_reg_write.exit.i278_crit_edge
  %374 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i269) #4
  %375 = ptrtoint ptr %dec_base.i.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dec_base.i.i.i.i251, align 8
  %add.ptr.i.i.i276 = getelementptr i8, ptr %376, i32 %363
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i276, i32 %374) #4, !srcloc !55
  %exitcond.not.i277 = icmp eq i32 %add.i255, 4
  br i1 %exitcond.not.i277, label %for.end.i280, label %hantro_reg_write.exit.i278.for.body10.i_crit_edge

hantro_reg_write.exit.i278.for.body10.i_crit_edge: ; preds = %hantro_reg_write.exit.i278
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10.i

for.end.i280:                                     ; preds = %hantro_reg_write.exit.i278
  %shl.i279 = shl i32 %357, 2
  %or.i = or i32 %shl.i279, %359
  %377 = zext i32 %i.061.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %377, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.061.i, label %for.end.i280.for.inc19.i_crit_edge [
    i32 2, label %for.end.i280.sw.epilog.i_crit_edge
    i32 4, label %sw.bb15.i
    i32 6, label %sw.bb17.i
  ]

for.end.i280.sw.epilog.i_crit_edge:               ; preds = %for.end.i280
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

for.end.i280.for.inc19.i_crit_edge:               ; preds = %for.end.i280
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i

sw.bb15.i:                                        ; preds = %for.end.i280
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %for.end.i280
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb15.i, %for.end.i280.sw.epilog.i_crit_edge
  %reg.sroa.6.0.i = phi i32 [ 0, %sw.bb17.i ], [ 4, %sw.bb15.i ], [ 8, %for.end.i280.sw.epilog.i_crit_edge ]
  %378 = ptrtoint ptr %dec_base.i.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dec_base.i.i.i.i251, align 8
  %add.ptr.i.i.i37.i = getelementptr i8, ptr %379, i32 180
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i37.i) #4, !srcloc !56
  %381 = tail call i32 @llvm.bswap.i32(i32 %380) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %382 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i38.i = and i32 %382, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i38.i)
  %tobool.not.i.i.i39.i = icmp eq i32 %and.i.i.i38.i, 0
  br i1 %tobool.not.i.i.i39.i, label %sw.epilog.i.vdpu_read_mask.exit.i53.i_crit_edge, label %do.end.i.i.i42.i

sw.epilog.i.vdpu_read_mask.exit.i53.i_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read_mask.exit.i53.i

do.end.i.i.i42.i:                                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i.i.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef 413, i32 noundef 45, i32 noundef %381) #7
  br label %vdpu_read_mask.exit.i53.i

vdpu_read_mask.exit.i53.i:                        ; preds = %do.end.i.i.i42.i, %sw.epilog.i.vdpu_read_mask.exit.i53.i_crit_edge
  %shl.i.i45.i = shl nuw nsw i32 15, %reg.sroa.6.0.i
  %neg.i.i46.i = xor i32 %shl.i.i45.i, -1
  %and.i.i47.i = and i32 %381, %neg.i.i46.i
  %and2.i.i48.i = and i32 %or.i, 15
  %shl4.i.i49.i = shl nuw nsw i32 %and2.i.i48.i, %reg.sroa.6.0.i
  %or.i.i50.i = or i32 %and.i.i47.i, %shl4.i.i49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %383 = load i32, ptr @hantro_debug, align 4
  %and.i3.i51.i = and i32 %383, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i51.i)
  %tobool.not.i.i52.i = icmp eq i32 %and.i3.i51.i, 0
  br i1 %tobool.not.i.i52.i, label %vdpu_read_mask.exit.i53.i.hantro_reg_write.exit58.i_crit_edge, label %do.end.i.i56.i

vdpu_read_mask.exit.i53.i.hantro_reg_write.exit58.i_crit_edge: ; preds = %vdpu_read_mask.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hantro_reg_write.exit58.i

do.end.i.i56.i:                                   ; preds = %vdpu_read_mask.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 45, i32 noundef %or.i.i50.i) #7
  br label %hantro_reg_write.exit58.i

hantro_reg_write.exit58.i:                        ; preds = %do.end.i.i56.i, %vdpu_read_mask.exit.i53.i.hantro_reg_write.exit58.i_crit_edge
  %384 = tail call i32 @llvm.bswap.i32(i32 %or.i.i50.i) #4
  %385 = ptrtoint ptr %dec_base.i.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dec_base.i.i.i.i251, align 8
  %add.ptr.i.i57.i = getelementptr i8, ptr %386, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.i, i32 %384) #4, !srcloc !55
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %hantro_reg_write.exit58.i, %for.end.i280.for.inc19.i_crit_edge
  %inc20.i = add nuw nsw i32 %i.061.i, 1
  %exitcond62.not.i = icmp eq i32 %inc20.i, 8
  br i1 %exitcond62.not.i, label %for.inc19.i.cfg_tap.exit_crit_edge, label %for.inc19.i.for.body.i254_crit_edge

for.inc19.i.for.body.i254_crit_edge:              ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i254

for.inc19.i.cfg_tap.exit_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_tap.exit

cfg_tap.exit:                                     ; preds = %for.inc19.i.cfg_tap.exit_crit_edge, %cfg_parts.exit.cfg_tap.exit_crit_edge
  %387 = ptrtoint ptr %m2m_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %m2m_ctx.i.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %388, i32 0, i32 7
  %call.i.i281 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #4
  %389 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ctx, align 8
  %last_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 18
  %391 = ptrtoint ptr %last_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %391)
  %392 = load i64, ptr %last_frame_ts.i, align 8
  %call.i282 = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %392) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool.not.i283 = icmp eq i32 %call.i282, 0
  br i1 %tobool.not.i283, label %do.body.i, label %cfg_tap.exit.if.end9.i_crit_edge

cfg_tap.exit.if.end9.i_crit_edge:                 ; preds = %cfg_tap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

do.body.i:                                        ; preds = %cfg_tap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %393 = load i32, ptr @hantro_debug, align 4
  %and.i284 = and i32 %393, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i284)
  %tobool1.not.i = icmp eq i32 %and.i284, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i285

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7.i

do.end.i285:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %394 = ptrtoint ptr %last_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %last_frame_ts.i, align 8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 380, i64 noundef %395) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i285, %do.body.i.do.end7.i_crit_edge
  %call.i.i286 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i281, i32 noundef 0) #4
  %396 = ptrtoint ptr %call.i.i286 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %call.i.i286, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end7.i, %cfg_tap.exit.if.end9.i_crit_edge
  %ref.0.i = phi i32 [ %call.i282, %cfg_tap.exit.if.end9.i_crit_edge ], [ %397, %do.end7.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %398 = load i32, ptr @hantro_debug, align 4
  %and.i.i287 = and i32 %398, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i287)
  %tobool.not.i.i288 = icmp eq i32 %and.i.i287, 0
  br i1 %tobool.not.i.i288, label %if.end9.i.vdpu_write_relaxed.exit.i292_crit_edge, label %do.end.i.i289

if.end9.i.vdpu_write_relaxed.exit.i292_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i292

do.end.i.i289:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 14, i32 noundef %ref.0.i) #7
  br label %vdpu_write_relaxed.exit.i292

vdpu_write_relaxed.exit.i292:                     ; preds = %do.end.i.i289, %if.end9.i.vdpu_write_relaxed.exit.i292_crit_edge
  %399 = tail call i32 @llvm.bswap.i32(i32 %ref.0.i) #4
  %dec_base.i.i290 = getelementptr inbounds %struct.hantro_dev, ptr %390, i32 0, i32 11
  %400 = ptrtoint ptr %dec_base.i.i290 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dec_base.i.i290, align 8
  %add.ptr.i.i291 = getelementptr i8, ptr %401, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i291, i32 %399) #4, !srcloc !55
  %golden_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 19
  %402 = ptrtoint ptr %golden_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %402)
  %403 = load i64, ptr %golden_frame_ts.i, align 8
  %call10.i = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %403) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i, label %vdpu_write_relaxed.exit.i292.if.end33.i_crit_edge

vdpu_write_relaxed.exit.i292.if.end33.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i292
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %vdpu_write_relaxed.exit.i292
  %404 = ptrtoint ptr %golden_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %golden_frame_ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %405)
  %tobool13.not.i = icmp eq i64 %405, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.then30.i_crit_edge, label %do.body15.i

land.lhs.true.i.if.then30.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30.i

do.body15.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %406 = load i32, ptr @hantro_debug, align 4
  %and16.i = and i32 %406, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.if.then30.i_crit_edge, label %do.end21.i

do.body15.i.if.then30.i_crit_edge:                ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30.i

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 388, i64 noundef %405) #7
  br label %if.then30.i

if.then30.i:                                      ; preds = %do.end21.i, %do.body15.i.if.then30.i_crit_edge, %land.lhs.true.i.if.then30.i_crit_edge
  %call.i101.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i281, i32 noundef 0) #4
  %407 = ptrtoint ptr %call.i101.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %call.i101.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %vdpu_write_relaxed.exit.i292.if.end33.i_crit_edge
  %ref.1.i = phi i32 [ %408, %if.then30.i ], [ %call10.i, %vdpu_write_relaxed.exit.i292.if.end33.i_crit_edge ]
  %409 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %409)
  %410 = load i64, ptr %flags, align 8
  %411 = trunc i64 %410 to i32
  %412 = lshr i32 %411, 4
  %413 = and i32 %412, 1
  %414 = or i32 %413, %ref.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %415 = load i32, ptr @hantro_debug, align 4
  %and.i102.i = and i32 %415, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102.i)
  %tobool.not.i103.i = icmp eq i32 %and.i102.i, 0
  br i1 %tobool.not.i103.i, label %if.end33.i.vdpu_write_relaxed.exit108.i_crit_edge, label %do.end.i105.i

if.end33.i.vdpu_write_relaxed.exit108.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit108.i

do.end.i105.i:                                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 18, i32 noundef %414) #7
  br label %vdpu_write_relaxed.exit108.i

vdpu_write_relaxed.exit108.i:                     ; preds = %do.end.i105.i, %if.end33.i.vdpu_write_relaxed.exit108.i_crit_edge
  %416 = tail call i32 @llvm.bswap.i32(i32 %414) #4
  %417 = ptrtoint ptr %dec_base.i.i290 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %dec_base.i.i290, align 8
  %add.ptr.i107.i = getelementptr i8, ptr %418, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %416) #4, !srcloc !55
  %alt_frame_ts.i = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %call, i32 0, i32 20
  %419 = ptrtoint ptr %alt_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %alt_frame_ts.i, align 8
  %call38.i = tail call i32 @hantro_get_ref(ptr noundef %ctx, i64 noundef %420) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge

vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge: ; preds = %vdpu_write_relaxed.exit108.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62.i

land.lhs.true40.i:                                ; preds = %vdpu_write_relaxed.exit108.i
  %421 = ptrtoint ptr %alt_frame_ts.i to i32
  call void @__asan_load8_noabort(i32 %421)
  %422 = load i64, ptr %alt_frame_ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %422)
  %tobool42.not.i294 = icmp eq i64 %422, 0
  br i1 %tobool42.not.i294, label %land.lhs.true40.i.if.then59.i_crit_edge, label %do.body44.i

land.lhs.true40.i.if.then59.i_crit_edge:          ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59.i

do.body44.i:                                      ; preds = %land.lhs.true40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %423 = load i32, ptr @hantro_debug, align 4
  %and45.i = and i32 %423, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %do.body44.i.if.then59.i_crit_edge, label %do.end50.i

do.body44.i.if.then59.i_crit_edge:                ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59.i

do.end50.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef 398, i64 noundef %422) #7
  br label %if.then59.i

if.then59.i:                                      ; preds = %do.end50.i, %do.body44.i.if.then59.i_crit_edge, %land.lhs.true40.i.if.then59.i_crit_edge
  %call.i109.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i281, i32 noundef 0) #4
  %424 = ptrtoint ptr %call.i109.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %call.i109.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge
  %ref.3.i = phi i32 [ %425, %if.then59.i ], [ %call38.i, %vdpu_write_relaxed.exit108.i.if.end62.i_crit_edge ]
  %426 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %426)
  %427 = load i64, ptr %flags, align 8
  %428 = trunc i64 %427 to i32
  %429 = lshr i32 %428, 5
  %430 = and i32 %429, 1
  %431 = or i32 %430, %ref.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %432 = load i32, ptr @hantro_debug, align 4
  %and.i110.i = and i32 %432, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110.i)
  %tobool.not.i111.i = icmp eq i32 %and.i110.i, 0
  br i1 %tobool.not.i111.i, label %if.end62.i.cfg_ref.exit_crit_edge, label %do.end.i113.i

if.end62.i.cfg_ref.exit_crit_edge:                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_ref.exit

do.end.i113.i:                                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 19, i32 noundef %431) #7
  br label %cfg_ref.exit

cfg_ref.exit:                                     ; preds = %do.end.i113.i, %if.end62.i.cfg_ref.exit_crit_edge
  %433 = tail call i32 @llvm.bswap.i32(i32 %431) #4
  %434 = ptrtoint ptr %dec_base.i.i290 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %dec_base.i.i290, align 8
  %add.ptr.i115.i = getelementptr i8, ptr %435, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %433) #4, !srcloc !55
  %436 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ctx, align 8
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %438 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %dma.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %440 = load i32, ptr @hantro_debug, align 4
  %and.i.i295 = and i32 %440, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i295)
  %tobool.not.i.i296 = icmp eq i32 %and.i.i295, 0
  br i1 %tobool.not.i.i296, label %cfg_ref.exit.vdpu_write_relaxed.exit.i305_crit_edge, label %do.end.i.i298

cfg_ref.exit.vdpu_write_relaxed.exit.i305_crit_edge: ; preds = %cfg_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit.i305

do.end.i.i298:                                    ; preds = %cfg_ref.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i297 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 40, i32 noundef %439) #7
  br label %vdpu_write_relaxed.exit.i305

vdpu_write_relaxed.exit.i305:                     ; preds = %do.end.i.i298, %cfg_ref.exit.vdpu_write_relaxed.exit.i305_crit_edge
  %441 = tail call i32 @llvm.bswap.i32(i32 %439) #4
  %dec_base.i.i299 = getelementptr inbounds %struct.hantro_dev, ptr %437, i32 0, i32 11
  %442 = ptrtoint ptr %dec_base.i.i299 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dec_base.i.i299, align 8
  %add.ptr.i.i300 = getelementptr i8, ptr %443, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i300, i32 %441) #4, !srcloc !55
  %dma1.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %444 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %dma1.i, align 4
  %446 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %flags.i, align 4
  %and.i302 = and i32 %447, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i302)
  %tobool.not.i303 = icmp eq i32 %and.i302, 0
  %and3.i304 = and i32 %447, 2
  %448 = or i32 %445, %and3.i304
  %spec.select.i = or i32 %448, 1
  %reg.0.i = select i1 %tobool.not.i303, i32 %445, i32 %spec.select.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %449 = load i32, ptr @hantro_debug, align 4
  %and.i16.i = and i32 %449, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i17.i, label %vdpu_write_relaxed.exit.i305.vdpu_write_relaxed.exit22.i_crit_edge, label %do.end.i19.i

vdpu_write_relaxed.exit.i305.vdpu_write_relaxed.exit22.i_crit_edge: ; preds = %vdpu_write_relaxed.exit.i305
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write_relaxed.exit22.i

do.end.i19.i:                                     ; preds = %vdpu_write_relaxed.exit.i305
  call void @__sanitizer_cov_trace_pc() #6
  %call.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 10, i32 noundef %reg.0.i) #7
  br label %vdpu_write_relaxed.exit22.i

vdpu_write_relaxed.exit22.i:                      ; preds = %do.end.i19.i, %vdpu_write_relaxed.exit.i305.vdpu_write_relaxed.exit22.i_crit_edge
  %450 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #4
  %451 = ptrtoint ptr %dec_base.i.i299 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dec_base.i.i299, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %452, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %450) #4, !srcloc !55
  %vpu_dst_fmt.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %453 = ptrtoint ptr %vpu_dst_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %vpu_dst_fmt.i.i, align 4
  %call.i23.i = tail call zeroext i1 @hantro_needs_postproc(ptr noundef %ctx, ptr noundef %454) #4
  br i1 %call.i23.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %vdpu_write_relaxed.exit22.i
  call void @__sanitizer_cov_trace_pc() #6
  %postproc.i.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %index.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i.i281, i32 0, i32 1
  %455 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %index.i.i, align 4
  %dma.i.i = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc.i.i, i32 0, i32 %456, i32 1
  br label %hantro_get_dec_buf_addr.exit.i

if.end.i.i:                                       ; preds = %vdpu_write_relaxed.exit22.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i306 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i281, i32 noundef 0) #4
  br label %hantro_get_dec_buf_addr.exit.i

hantro_get_dec_buf_addr.exit.i:                   ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %dma.i.i, %if.then.i.i ], [ %call.i.i.i306, %if.end.i.i ]
  %457 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %458 = load i32, ptr @hantro_debug, align 4
  %and.i24.i = and i32 %458, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.not.i25.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.not.i25.i, label %hantro_get_dec_buf_addr.exit.i.cfg_buffers.exit_crit_edge, label %do.end.i27.i

hantro_get_dec_buf_addr.exit.i.cfg_buffers.exit_crit_edge: ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cfg_buffers.exit

do.end.i27.i:                                     ; preds = %hantro_get_dec_buf_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 13, i32 noundef %retval.0.i.i) #7
  br label %cfg_buffers.exit

cfg_buffers.exit:                                 ; preds = %do.end.i27.i, %hantro_get_dec_buf_addr.exit.i.cfg_buffers.exit_crit_edge
  %459 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #4
  %460 = ptrtoint ptr %dec_base.i.i299 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dec_base.i.i299, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %461, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %459) #4, !srcloc !55
  tail call void @hantro_end_prepare_run(ptr noundef %ctx) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %462 = load i32, ptr @hantro_debug, align 4
  %and.i307 = and i32 %462, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i307)
  %tobool.not.i308 = icmp eq i32 %and.i307, 0
  br i1 %tobool.not.i308, label %cfg_buffers.exit.vdpu_write.exit_crit_edge, label %do.end.i310

cfg_buffers.exit.vdpu_write.exit_crit_edge:       ; preds = %cfg_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i310:                                      ; preds = %cfg_buffers.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef 398, i32 noundef 1, i32 noundef 1) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i310, %cfg_buffers.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %463 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i312 = getelementptr i8, ptr %464, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312, i32 16777216) #4, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %vdpu_write.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %vdpu_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_start_prepare_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hantro_get_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_vp8_prob_update(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_end_prepare_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_get_ref(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hantro_needs_postproc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 445, i32 6}
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
!12 = !{ptr @vp8_dec_lf_level, !13, !"vp8_dec_lf_level", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 31, i32 32}
!14 = !{ptr @vp8_dec_mb_adj, !15, !"vp8_dec_mb_adj", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 39, i32 32}
!16 = !{ptr @vp8_dec_ref_adj, !17, !"vp8_dec_ref_adj", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 47, i32 32}
!18 = !{ptr @vp8_dec_quant, !19, !"vp8_dec_quant", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 55, i32 32}
!20 = distinct !{null, !21, !"vp8_dec_quant_delta", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 63, i32 32}
!22 = !{ptr @vp8_dec_dct_base, !23, !"vp8_dec_dct_base", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 19, i32 32}
!24 = !{ptr @vp8_dec_dct_start_bits, !25, !"vp8_dec_dct_start_bits", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 72, i32 32}
!26 = !{ptr @vp8_dec_pred_bc_tap, !27, !"vp8_dec_pred_bc_tap", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 80, i32 32}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 379, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cfg_ref._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cfg_ref._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 387, i32 3}
!35 = !{ptr @cfg_ref._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cfg_ref._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/hantro/hantro_g1_vp8_dec.c", i32 397, i32 3}
!39 = !{ptr @cfg_ref._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cfg_ref._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!43 = !{ptr @vdpu_write._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vdpu_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 5421309}
!56 = !{i64 5421727}
!57 = !{i64 2156561658}
!58 = !{i64 2156560649}
